# language: en
@glacier @client
Feature: Amazon Glacier

  Scenario: Making a basic request
    When I call the "ListVaults" API with:
    | AccountId | - |
    Then the response should contain a "VaultList"

  Scenario: Error handling
    When I attempt to call the "ListVaults" API with:
    | AccountId | abcmnoxyz |
    Then the request should fail
