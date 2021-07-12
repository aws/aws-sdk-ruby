# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudWatchEvents

Background:
  Given I create a client in region 'us-west-2'

  @cloudwatchevents @smoke
  Scenario: Call Aws::CloudWatchEvents::Client#list_rules and expect it to succeed
  When I call the operation 'list_rules' with params:
    """
{}
    """
  Then I expect an error was not raised

  @cloudwatchevents @smoke
  Scenario: Call Aws::Aws::CloudWatchEvents::Client#describe_rule and expect it to fail
  When I call the operation 'describe_rule' with params:
    """
{"name":"fake-rule"}
    """
  Then I expect an error was raised
