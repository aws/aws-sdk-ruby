# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SQS

  @sqs @smoke
  Scenario: ListQueuesSuccess
    Given I create a 'Aws::SQS' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_queues' with params:
      """
{}
      """
    Then I expect an error was not raised

  @sqs @smoke
  Scenario: GetQueueUrlFailure
    Given I create a 'Aws::SQS' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'get_queue_url' with params:
      """
{"queue_name":"fake_queue"}
      """
    Then I expect an error was raised
