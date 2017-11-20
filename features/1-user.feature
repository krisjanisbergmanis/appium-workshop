Feature: 1. Filter feature

Scenario: Create filter
    Given I am on create filter page
    When I open filter params
    Then I submit filter

Scenario: Delete filter
    Given I am on create filter page
    When I select Meklēšanas filtri menu category
    And I delete filter
    
Scenario: Submit empty filter  
    Given I am on create filter page
    When I open filter params
    Then I submit empty filter

Scenario: Open Setting    #works when separate
    Given I am on create filter page
    When I select Iestatījumi menu category