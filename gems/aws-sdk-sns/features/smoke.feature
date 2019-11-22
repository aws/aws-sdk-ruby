# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SNS

Background:
  Given I create a client in region 'us-west-2'

  @sns @smoke
  Scenario: Call Aws::SNS::Client#list_topics and expect it to succeed
  When I call the operation 'list_topics' with params:
    """
{}
    """
  Then I expect an error was not raised

  @sns @smoke
  Scenario: Call Aws::Aws::SNS::Client#publish and expect it to fail
  When I call the operation 'publish' with params:
    """
{"message":"hello","topic_arn":"fake_topic"}
    """
  Then I expect an error was raised
