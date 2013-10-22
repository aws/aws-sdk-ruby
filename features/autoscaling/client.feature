# language: en
@autoscaling @client
Feature: Auto Scaling

  Scenario: Managing auto scaling groups
    When I call "describe_scaling_process_types" on "autoscaling"
    Then the response "processes" should be an array

  Scenario: Error handling
    Given I call "create_launch_configuration" on "autoscaling" with:
    """
    {
      launch_configuration_name: "",
      image_id: "ami-12345678",
      instance_type: "m1.small",
    }
    """
    Then I expect the response error code to be "ValidationError"
    And I expect the response error message to include:
    """
    Member must have length greater than or equal to 1
    """
