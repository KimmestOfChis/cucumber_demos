Feature: Tell File Size
	Scenario: Sending a file to check its size
	Given that I'm on Dan's Site
	When I select a file
	And click "Upload"
	Then I should get a file size returned