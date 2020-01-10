# language: en
@autoscaling @client
Feature: Auto Scaling

  Scenario: Making a basic request
    When I call the "DescribeScalingProcessTypes" API
    Then the response should contain a list of "Processes"

  Scenario: Error handling
    When I attempt to call the "CreateLaunchConfiguration" API with:
    | LaunchConfigurationName |              |
    | ImageId                 | ami-12345678 |
    | InstanceType            | m1.small     |
    Then I expect the response error code to be "ValidationError"
    And I expect the response error message to include:
    """
    Member must have length greater than or equal to 1
    """
