# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for AutoScaling

  @autoscaling @smoke
  Scenario: DescribeScalingProcessTypesSuccess
    Given I create a 'Aws::AutoScaling' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_scaling_process_types' with params:
      """
{}
      """
    Then I expect an error was not raised
