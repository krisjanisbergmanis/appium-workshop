Feature: 1. Filter feature

Scenario: Create Transports filter
    Given I am on create filter page
    When I open Transports filter params
    Then I submit Transports filter
    
Scenario: Create Nekustamie īpašumi filter
    Given I am on create filter page
    When I open Nekustamie īpašumi filter params
    Then I submit Nekustamie īpašumi filter

Scenario: Create Vakances filter
    Given I am on create filter page
    When I open Vakances filter params
    Then I submit Vakances filter

 Scenario: Delete Vakances filter
    Given I am on create filter page
    When I select Meklēšanas filtri menu category
    And I delete Vakances filter