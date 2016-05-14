require 'capybara/cucumber'

Capybara.default_driver = :selenium


window = Capybara.current_session.driver.browser.manage.window

Given(/^that I am on the Great Migrations Homepage$/) do
  visit('https://www.greatmigrations.com/en/about/')
  window.resize_to(1280, 720)
end

When(/^I click the "([^"]*)" link$/) do |arg1|
  click_link('About')
end

Then(/^I should see the about page$/) do
  page.has_content('Matt Johnson is the greatest!')
end