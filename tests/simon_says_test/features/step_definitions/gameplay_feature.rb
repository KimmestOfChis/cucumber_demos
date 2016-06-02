require 'capybara/cucumber'

Capybara.default_driver = :selenium
capyDrive = Capybara.current_session.driver.browser

Given(/^that I am on the Simon game page$/) do
  visit('http://www.kellyking.me/projects/simon/')
end

When(/^I press "([^"]*)"$/) do |arg1|
  click_button 'Start'
end

Then(/^I should see a button light$/) do
  expect(page).to have_element? "blue hoverable"
end
