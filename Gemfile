# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'neat'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'pg'
gem 'rails', '~> 5.2.2'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'font-awesome-rails'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.8'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'decent_exposure', '3.0.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'administrate'
gem 'administrate-field-nested_has_many'
gem 'administrate-field-simple_mde_markdown'
gem 'aws-sdk-s3', require: false
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'dotenv-rails'
gem 'draper'
gem 'fabrication'
gem 'friendly_id', '~> 5.2.5'
gem 'haml-rails', '~> 1.0'
gem 'kramdown'
gem 'twitter'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'brakeman'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'capybara-selenium'
  gem 'chromedriver-helper'
  gem 'coveralls', require: false
  gem 'ffaker'
  gem 'i18n-debug'
  gem 'launchy'
  gem 'rspec-html-matchers'
  gem 'rspec-rails'
  gem 'rubocop', '~> 1.18.1', require: false
  gem 'turnip'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'pry'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
