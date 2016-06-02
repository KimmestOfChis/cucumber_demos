Feature: Gameplay
	Background: Simon's Electronic game dates from 1978... 

Scenario: Pressing the right buttons
	Given that I am on the Simon game page
	When I press "start"
	Then I should see a button light
