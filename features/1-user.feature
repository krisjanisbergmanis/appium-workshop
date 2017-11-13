Feature: 1. Filter feature

Scenario: Signup
    Given I am on create filter page
    When I open on Transports category
    Then I open sub cat Vieglie auto
    Then I open sub cat Audi
    Then I open sub cat Audi A1
    Then I open sub cat Visi
    Then I am on parameters page
    And I set filter parameters

Scenario: Open filter
    Given I am on create filter page
    When I select menu
    And I select Meklēšanas filtri menu category
    #And I select Favorīti menu category
    