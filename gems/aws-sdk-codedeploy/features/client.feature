# language: en
@codedeploy @client
Feature: Amazon CodeDeploy

  Scenario: Making a basic request
    When I call the "ListApplications" API
    Then the response should contain a list of "applications"

  Scenario: Error handling
    When I attempt to call the "GetApplication" API with:
    | applicationName | bogus-app |
    Then I expect the response error code to be "ApplicationDoesNotExistException"
