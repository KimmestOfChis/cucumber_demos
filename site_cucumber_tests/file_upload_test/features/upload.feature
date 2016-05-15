Feature: Tell File Size
	Scenario: Sending a file to check its size
	Given that I'm on Dan's Site
	When I click upload without selecting a file
	Then I should return an invalid file size message