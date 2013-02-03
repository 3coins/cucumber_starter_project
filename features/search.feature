Feature: Search

    Scenario: Keyword search should return results
        Given I am on google website
        When I search for "india"
        Then I should see results
