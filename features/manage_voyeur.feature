Feature: Manage voyeur home page
	As a voyeur
	I want to be able to see the call-in number on the home page
	So that I know the number to call
	
  Scenario: Voyeur visit
    Given I am on the home page
    Then I should see "(415) 889-8608"
    And show me the page