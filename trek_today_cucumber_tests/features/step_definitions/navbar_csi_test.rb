require 'capybara/cucumber'

Capybara.default_driver = :selenium

page = 'http://www.trektoday.com'

Given(/^that I am on the TrekToday Homepage$/) do
  visit(page)
end

When(/^I click on "([^"]*)"$/) do |link|
click_link(#needs figuring out)
end

Then(/^I should be on the CSI Files site$/) do
  page.should have_content("T'Bonz")
end