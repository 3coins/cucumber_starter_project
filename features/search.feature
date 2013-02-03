Feature: Search

    Scenario: Keyword search should return results
        Given I am on google website
        When I search for "India"
        Then I should see results
