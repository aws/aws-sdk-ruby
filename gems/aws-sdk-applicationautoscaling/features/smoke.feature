# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ApplicationAutoScaling

Background:
  Given I create a client in region 'us-west-2'

  @applicationautoscaling @smoke
  Scenario: Call Aws::ApplicationAutoScaling::Client#describe_scalable_targets and expect it to succeed
  When I call the operation 'describe_scalable_targets' with params:
    """
{"service_namespace":"ec2"}
    """
  Then I expect an error was not raised
