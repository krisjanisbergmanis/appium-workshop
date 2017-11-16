Feature: 1. Filter feature

Scenario: Create filter
    Given I am on create filter page
    When I open filter params
    The I submit filter

Scenario: Delete filter
    Given I am on create filter page
    When I select menu
    And I select Meklēšanas filtri menu category
    And I select existing filter
    And I delete filter
    