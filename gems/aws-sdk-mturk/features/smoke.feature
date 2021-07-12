# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for MTurk

Background:
  Given I create a client in region 'us-east-1'

  @mturk @smoke
  Scenario: Call Aws::MTurk::Client#get_account_balance and expect it to succeed
  When I call the operation 'get_account_balance' with params:
    """
{}
    """
  Then I expect an error was not raised
