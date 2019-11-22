# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudWatch

Background:
  Given I create a client in region 'us-west-2'

  @cloudwatch @smoke
  Scenario: Call Aws::CloudWatch::Client#list_metrics and expect it to succeed
  When I call the operation 'list_metrics' with params:
    """
{"namespace":"AWS/EC2"}
    """
  Then I expect an error was not raised

  @cloudwatch @smoke
  Scenario: Call Aws::Aws::CloudWatch::Client#set_alarm_state and expect it to fail
  When I call the operation 'set_alarm_state' with params:
    """
{"alarm_name":"abc","state_value":"mno","state_reason":"xyz"}
    """
  Then I expect an error was raised
