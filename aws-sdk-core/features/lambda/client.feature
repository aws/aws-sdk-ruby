# language: en
@lambda @client
Feature: Amazon Lambda

  Scenario: Making a basic request
    When I call the "ListEventSources" API
    Then the response should contain a list of "EventSources"

  Scenario: Error handling
    When I attempt to call the "GetEventSource" API with:
    | UUID | fake-uuid |
    Then I expect the response error code to be "ResourceNotFoundException"
    And I expect the response error message to include:
    """
    does not exist
    """
