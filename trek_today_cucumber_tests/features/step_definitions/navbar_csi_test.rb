require 'capybara/cucumber'
require'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

Capybara.default_driver = :selenium

Given(/^that I am on the TrekToday Homepage$/) do
	driver.navigate.to 'http://www.trektoday.com'
	driver.manage.window.maximize
end

When(/^I click on "([^"]*)"$/) do |link|
driver.find_element(:id, 'menu-item-41291').click
end

Then(/^I should be on the CSI Files site$/) do
  driver.find_element(:id, 'menu-item-63473').displayed?
  driver.quit
end