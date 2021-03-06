# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CognitoSync

Background:
  Given I create a client in region 'us-west-2'

  @cognitosync @smoke
  Scenario: Call Aws::CognitoSync::Client#list_identity_pool_usage and expect it to succeed
  When I call the operation 'list_identity_pool_usage' with params:
    """
{}
    """
  Then I expect an error was not raised

  @cognitosync @smoke
  Scenario: Call Aws::Aws::CognitoSync::Client#describe_identity_pool_usage and expect it to fail
  When I call the operation 'describe_identity_pool_usage' with params:
    """
{"identity_pool_id":"us-east-1:aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"}
    """
  Then I expect an error was raised
