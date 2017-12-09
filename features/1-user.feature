Feature: 1. Filter feature

Scenario: Create Transports filter
    Given I am on create filter page
    When I open transports filter params
    Then I submit transports filter
    
Scenario: Create Nekustamie īpašumi filter
    Given I am on create filter page
    When I open ipasumi filter params
    Then I submit  ipasumi filter

Scenario: Create Vakances filter
    Given I am on create filter page
    When I open vakances filter params
    Then I submit vakances filter

 Scenario: Delete Vakances filter
    Given I am on create filter page
    When I select Meklēšanas filtri menu category
    And I delete Vakances filter