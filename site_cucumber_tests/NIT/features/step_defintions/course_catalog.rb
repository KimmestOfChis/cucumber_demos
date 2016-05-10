require 'capybara/cucumber'

Capybara.default_driver = :selenium

window = Capybara.current_session.driver.browser.manage.window

Given(/^I am on the NIS homepage$/) do
  visit('http://www.nationwideitservices.com/index.html')
 window.resize_to(1280, 720)
end

When(/^I click on the training button$/) do
  click_link('Training')
end

When(/^I click the business skills button$/) do
  click_link('BUSINESS SKILLS')
end

Then(/^I should see the business skills course catalog$/) do
  page.has_content?('Course Catalog - Business Skills')
end
