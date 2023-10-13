# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Firehose

  @firehose @smoke
  Scenario: ListDeliveryStreamsSuccess
    Given I create a 'Aws::Firehose' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_delivery_streams' with params:
      """
{}
      """
    Then I expect an error was not raised

  @firehose @smoke
  Scenario: DescribeDeliveryStreamFailure
    Given I create a 'Aws::Firehose' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_delivery_stream' with params:
      """
{"delivery_stream_name":"bogus-stream-name"}
      """
    Then I expect an error was raised
