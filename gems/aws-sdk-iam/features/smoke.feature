# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for IAM

Background:
  Given I create a client in region 'us-east-1'

  @iam @smoke
  Scenario: Call Aws::IAM::Client#list_users and expect it to succeed
  When I call the operation 'list_users' with params:
    """
{}
    """
  Then I expect an error was not raised

  @iam @smoke
  Scenario: Call Aws::Aws::IAM::Client#get_user and expect it to fail
  When I call the operation 'get_user' with params:
    """
{"user_name":"fake_user"}
    """
  Then I expect an error was raised
