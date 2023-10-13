# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudWatchLogs

  @cloudwatchlogs @smoke
  Scenario: DescribeLogGroupsSuccess
    Given I create a 'Aws::CloudWatchLogs' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_log_groups' with params:
      """
{}
      """
    Then I expect an error was not raised

  @cloudwatchlogs @smoke
  Scenario: GetLogEventsFailure
    Given I create a 'Aws::CloudWatchLogs' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'get_log_events' with params:
      """
{"log_group_name":"fakegroup","log_stream_name":"fakestream"}
      """
    Then I expect an error was raised
