Feature: Displaying a Course Catalog

Scenario: Clicking buttons leading to course catalogs	
	Given I am on the NIS training page
	When I click on the <course> button
	Then I should see the <expected_content>

Examples: 
| course | expected_content |
| BUSINESSSKILLS | Course Catalog - Business Skills |
| ITIL | Course Catalog - ITIL |
| MICROSOFT | Course Catalog - Microsoft |
| CISCO | Course Catalog - CISCO |
| CITRIX | Course Catalog - CITRIX |