# language: en
@elasticbeanstalk @client
Feature: AWS Elastic Beanstalk

  Scenario: Making a basic request
    When I call the "ListAvailableSolutionStacks" API
    Then the response should contain a list of "SolutionStacks"

  Scenario: Error handling
    When I attempt to call the "DescribeEnvironmentResources" API with:
    | EnvironmentId | fake_environment |
    Then I expect the response error code to be "InvalidParameterValue"
    And I expect the response error message to include:
    """
    No Environment found for EnvironmentId = 'fake_environment'.
    """
