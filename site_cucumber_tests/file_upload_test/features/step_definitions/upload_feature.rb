require 'capybara/cucumber'

Capybara.default_driver = :selenium


window = Capybara.current_session.driver.browser.manage.window

Given(/^that I'm on Dan's Site$/) do
  visit('https://still-everglades-45219.herokuapp.com/')
  window.resize_to(1280, 720)
end

When(/^I click upload without selecting a file$/) do
  click_button('Upload')
end

Then(/^I should return an invalid file size message$/) do
 	pending
end