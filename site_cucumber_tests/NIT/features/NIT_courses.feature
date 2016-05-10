Feature: Displaying a Course Catalog

Scenario: Clicking on the Business Skills Button
	Given I am on the NIS homepage
	When I click on the training button
	And I click the business skills button
	Then I should see the business skills course catalog