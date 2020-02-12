# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Kinesis

Background:
  Given I create a client in region 'us-west-2'

  @kinesis @smoke
  Scenario: Call Aws::Kinesis::Client#list_streams and expect it to succeed
  When I call the operation 'list_streams' with params:
    """
{}
    """
  Then I expect an error was not raised

  @kinesis @smoke
  Scenario: Call Aws::Aws::Kinesis::Client#describe_stream and expect it to fail
  When I call the operation 'describe_stream' with params:
    """
{"stream_name":"bogus-stream-name"}
    """
  Then I expect an error was raised
