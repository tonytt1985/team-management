FROM ruby:2.4.0
ENV APP_ROOT /usr/src/app
RUN apt-get update && \
    apt-get install -y nodejs \
                       mysql-client \
                       --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /tmp/* /var/tmp/*
# Configure the main working directory. This is the base
# directory used in any further RUN, COPY, and ENTRYPOINT
# commands.
WORKDIR $APP_ROOT
# Copy the Gemfile as well as the Gemfile.lock
COPY Gemfile Gemfile.lock $APP_ROOT/
RUN \
  echo 'gem: --no-document' >> ~/.gemrc && \
  cp ~/.gemrc /etc/gemrc && \
  chmod uog+r /etc/gemrc && \
  bundle config --global build.nokogiri --use-system-libraries && \
  bundle config --global jobs 4 && \
  bundle install && \
  rm -rf ~/.gem
# Copy the main application.
COPY . $APP_ROOT
# Precompile Rails assets (plus Webpack)
RUN bundle exec rake assets:precompile
# Will run on port 3000 by default
EXPOSE  3000
# Start puma
CMD bundle exec puma -C config/puma.rb