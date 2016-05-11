require 'capybara/cucumber'

Capybara.default_driver = :selenium

window = Capybara.current_session.driver.browser.manage.window



