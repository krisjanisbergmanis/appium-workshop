Feature: 1. Filter feature

Scenario: Signup
    Given I am on create filter page
    When I open Transports
    And I open Vieglie auto page_sub_category
    And I scroll to Volvo page_sub_category
    And I open Volvo page_sub_category
    And I scroll to Volvo V70 page_sub_category
    And I open Volvo V70 page_sub_category
    And I open Pērk page_sub_category
    Then I check if visible