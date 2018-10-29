# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SQS

Background:
  Given I create a client in region 'us-west-2'

  @sqs @smoke
  Scenario: Call Aws::SQS::Client#list_queues and expect it to succeed
  When I call the operation 'list_queues' with params:
    """
{}
    """
  Then I expect an error was not raised

  @sqs @smoke
  Scenario: Call Aws::Aws::SQS::Client#get_queue_url and expect it to fail
  When I call the operation 'get_queue_url' with params:
    """
{"queue_name":"fake_queue"}
    """
  Then I expect an error was raised
