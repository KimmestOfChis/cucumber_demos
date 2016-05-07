require 'capybara/cucumber'
require 'selenium-webdriver'

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
  page.has_content?('This report summarizes the current state 
  	of the electronic prior authorization (ePA) industry. 
  	The intent is to quantify current ePA adoption rates, 
  	highlight implementation status by market share leaders, 
  	and outline the keys to success for ePA in the industry.')
end



