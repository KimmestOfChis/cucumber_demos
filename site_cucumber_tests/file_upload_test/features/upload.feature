Feature: Tell File Size
	Scenario: Sending a file to check its size
	Given that I'm on Dan's Site
	When I upload a file
	Then I should get a file size returned