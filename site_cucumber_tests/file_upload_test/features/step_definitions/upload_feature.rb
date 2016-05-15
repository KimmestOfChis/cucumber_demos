require 'capybara/cucumber'

Capybara.default_driver = :selenium

window = Capybara.current_session.driver.browser.manage.window

Given(/^that I'm on Dan's Site$/) do
  visit('https://still-everglades-45219.herokuapp.com/')
  window.resize_to(1280, 720)
end

When(/^I upload a file$/) do
  attach_file("the-file" , File.expand_path('/Users/matthewjohnson/Documents/projects/quote_machine/random_tester.rb'))
end

Then(/^I should get a file size returned$/) do
click_button('Upload')
end