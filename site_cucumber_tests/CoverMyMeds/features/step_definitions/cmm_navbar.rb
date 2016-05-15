require 'capybara/cucumber'

Capybara.default_driver = :selenium


window = Capybara.current_session.driver.browser.manage.window

Given(/^I am on the CoverMyMeds Site$/) do
  visit('https://www.covermymeds.com/main/')
 window.resize_to(1280, 720)
end

When(/^I click the "([^"]*)" Button$/) do |link|
  click_link('ePA SCORECARD')
end

Then(/^I will see electronic prior authorization report$/) do
  page.has_content('Matt Johnson is great.')
end