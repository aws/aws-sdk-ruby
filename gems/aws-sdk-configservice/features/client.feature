# language: en
@configservice @client
Feature: AWS Config

  Scenario: Making a basic request
    When I call the "DescribeConfigurationRecorders" API
    Then the response should contain a list of "ConfigurationRecorders"

  Scenario: Error handling
    When I attempt to call the "GetResourceConfigHistory" API with:
    | resourceType | fake-type |
    | resourceId   | fake-id   |
    And I expect the response error message to include:
    """
    failed to satisfy constraint
    """
