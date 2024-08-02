# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Kinesis

  @kinesis @smoke
  Scenario: ListStreamsSuccess
    Given I create a 'Aws::Kinesis' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_streams' with params:
      """
{}
      """
    Then I expect an error was not raised

  @kinesis @smoke
  Scenario: DescribeStreamFailure
    Given I create a 'Aws::Kinesis' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_stream' with params:
      """
{"stream_name":"bogus-stream-name"}
      """
    Then I expect an error was raised
