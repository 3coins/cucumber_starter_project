require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec-expectations'

#load all pages and sections
Dir["sections/*.rb"].each {|file| require_relative "../../#{file}" }
Dir["pages/*.rb"].each {|file| require_relative "../../#{file}" }

Capybara.configure do |config|
    config.run_server = false
    config.app_host = 'http://www.google.com'
    config.default_driver = :selenium
    config.default_wait_time = 5
end

