require "capybara/rspec"
require "selenium-webdriver"

Capybara.default_driver = :selenium_chrome
Capybara.app_host = "https://demowebshop.tricentis.com"
Capybara.run_server = false
Capybara.default_max_wait_time = 10

RSpec.configure do |config|
  config.formatter = :documentation

  config.after do
    Capybara.reset_sessions!
  end
end