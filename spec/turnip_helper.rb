# frozen_string_literal: true

require 'turnip/capybara'
require 'selenium/webdriver'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = if ENV['CIRCLECI'] || ENV['HEADLESS']
                   Selenium::WebDriver::Remote::Capabilities.chrome(
                     chromeOptions: { args: %w[headless disable-gpu] }
                   )
                 else
                   Selenium::WebDriver::Remote::Capabilities.chrome
                 end

  Capybara::Selenium::Driver.new app,
                                 browser: :chrome,
                                 desired_capabilities: capabilities
end

Capybara.javascript_driver = :headless_chrome
Capybara.raise_server_errors = false

Dir.glob('spec/features/steps/*_steps.rb') { |f| load f, true }
