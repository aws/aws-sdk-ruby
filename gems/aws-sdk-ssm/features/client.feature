# language: en
@ssm @client
Feature: Amazon SSM

  Scenario: Making a basic request
    When I call the "ListDocuments" API
    Then the response should contain a list of "DocumentIdentifiers"

  Scenario: Error handling
    When I attempt to call the "GetDocument" API with:
    | name | 'fake-name' |
    Then I expect the response error code to be "ValidationException"
    And I expect the response error message to include:
    """
    validation error detected
    """
