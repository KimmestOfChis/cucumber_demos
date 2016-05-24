Feature: Displaying a Course Catalog

Scenario: Clicking buttons leading to course catalogs	
	Given I am on the NIS training page
	When I click on the training button
	And I click the business skills button
	Then I should see the business skills course catalog