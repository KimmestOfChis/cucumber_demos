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
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I press that button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the next level should start$/) do
  pending # Write code here that turns the phrase above into concrete actions
end