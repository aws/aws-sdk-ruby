# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CognitoIdentityProvider

Background:
  Given I create a client in region 'us-west-2'

  @cognitoidentityprovider @smoke
  Scenario: Call Aws::CognitoIdentityProvider::Client#list_user_pools and expect it to succeed
  When I call the operation 'list_user_pools' with params:
    """
{"max_results":10}
    """
  Then I expect an error was not raised

  @cognitoidentityprovider @smoke
  Scenario: Call Aws::Aws::CognitoIdentityProvider::Client#describe_user_pool and expect it to fail
  When I call the operation 'describe_user_pool' with params:
    """
{"user_pool_id":"us-east-1:aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"}
    """
  Then I expect an error was raised
