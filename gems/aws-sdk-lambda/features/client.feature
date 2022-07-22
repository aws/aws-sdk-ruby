# language: en
@lambda @client
Feature: Amazon Lambda

  Scenario: Making a basic request
    When I call the "ListEventSourceMappings" API
    Then the response should contain a list of "EventSourceMappings"

  Scenario: Error handling
    When I attempt to call the "GetEventSourceMapping" API with:
    | UUID | fake-uuid |
    Then I expect the response error code to be "ValidationException"
    And I expect the response error message to include:
    """
    does not exist
    """
