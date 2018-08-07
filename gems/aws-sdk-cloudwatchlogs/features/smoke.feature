# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudWatchLogs

Background:
  Given I create a client in region 'us-west-2'

  @cloudwatchlogs @smoke
  Scenario: Call Aws::CloudWatchLogs::Client#describe_log_groups and expect it to succeed
  When I call the operation 'describe_log_groups' with params:
    """
{}
    """
  Then I expect an error was not raised

  @cloudwatchlogs @smoke
  Scenario: Call Aws::Aws::CloudWatchLogs::Client#get_log_events and expect it to fail
  When I call the operation 'get_log_events' with params:
    """
{"log_group_name":"fakegroup","log_stream_name":"fakestream"}
    """
  Then I expect an error was raised
