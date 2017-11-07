source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# MomentJS
gem 'momentjs-rails'
## Gemfile for Rails 3+, Sinatra, and Merb
gem 'will_paginate', '~> 3.1.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# seed-fu
gem 'seed-fu', '~> 2.3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use Unicorn as the app server
#gem 'unicorn'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# material
gem 'material_design_lite-sass'

# Slack
gem 'slack-notifier'
# jwt decode (CASSO)
gem 'jwt'
# google api
gem 'google-api-client', '~> 0.11'

# Seach
gem 'ransack'

# soft-delete
gem 'kakurenbo-puti'

# 並列処理
gem 'parallel'

# bulk-insert
gem 'activerecord-import'

# バックグラウンドで非同期処理
gem 'delayed_job_active_record'
gem 'daemons'

gem 'listen', '~> 3.1.5'
gem 'dotenv-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rails-erd'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # コードスタイルチェック
  gem 'rubocop'
  # コードのセキュリティ問題チェック
  gem 'brakeman'
  # gemのセキュリティ問題チェック
  gem 'bundler-audit'
  # リクエストの所要時間などを表示
  gem 'rack-mini-profiler'
  # Railsのエラー画面をリッチに変更
  gem 'better_errors'
  gem 'binding_of_caller'
  # N+1問題検出
  gem 'bullet'
  # capistrano
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
end

group :production do
  gem 'newrelic_rpm'
  gem 'google-analytics-rails'
  gem 'sentry-raven'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
