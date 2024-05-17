# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ApplicationAutoScaling

  @applicationautoscaling @smoke
  Scenario: DescribeScalableTargetsSuccess
    Given I create a 'Aws::ApplicationAutoScaling' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_scalable_targets' with params:
      """
{"service_namespace":"ec2"}
      """
    Then I expect an error was not raised
