#encoding: UTF-8
require 'pry'
require 'cucumber'
require 'rspec'
require 'capybara'
require 'site_prism'
require 'selenium-webdriver'
require 'capybara/dsl'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.default_max_wait_time = 15

World(Capybara::DSL)
