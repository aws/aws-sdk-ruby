# language: en
@kms @client
Feature: Amazon Key Management Service

  Scenario: Making a basic request
    When I call the "ListAliases" API
    Then the response should contain a list of "Aliases"

  Scenario: Error handling
    When I attempt to call the "GetKeyPolicy" API with:
    | KeyId      | fake-key    |
    | PolicyName | fake-policy |
    Then I expect the response error code to be "ValidationException"
    And I expect the response error message to include:
    """
    validation error
    """
