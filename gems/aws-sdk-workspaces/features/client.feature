# language: en
@workspaces @client
Feature: Amazon WorkSpaces

  Scenario: Making a basic request
    When I call the "DescribeWorkspaces" API
    Then the response should contain a list of "Workspaces"

  Scenario: Error handling
    When I attempt to call the "DescribeWorkspaces" API with:
    | DirectoryId | fake-id |
    Then I expect the response error code to be "ValidationException"
    And I expect the response error message to include:
    """
    request is invalid
    """
