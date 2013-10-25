# language: en
@elasticbeanstalk @client
Feature: AWS Elastic Beanstalk

  Scenario: Making a basic request
    When I call "list_available_solution_stacks" on "elasticbeanstalk"
    Then the response "solution_stacks" should be an array

  Scenario: Error handling
    Given I call "describe_environment_resources" on "elasticbeanstalk" with:
    """
    { environment_id: 'fake_environment' }
    """
    Then I expect the response error code to be "InvalidParameterValue"
    And I expect the response error message to include:
    """
    No Environment found for EnvironmentId = 'fake_environment'.
    """
