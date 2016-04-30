Feature: Sending a clean, readable email to a manager of web page performance data

Background:	
	Given I have an automated test
	And it has run successfully
	And it has not violated Robots Exclusion Protocol

Scenario: I want to send a clean formatted email that addresses the recipient by name
	When I enter my email address
	And I enter the recipient's email address
	And I enter the recipient's name
	Then my email should send the results in a preformatted layout
	And it should start with the text "Hey <Recipient's Name>, here are the web page performance data results you asked for:"