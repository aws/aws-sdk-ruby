# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Glacier

Background:
  Given I create a client in region 'us-west-2'

  @glacier @smoke
  Scenario: Call Aws::Glacier::Client#list_vaults and expect it to succeed
  When I call the operation 'list_vaults' with params:
    """
{}
    """
  Then I expect an error was not raised

  @glacier @smoke
  Scenario: Call Aws::Aws::Glacier::Client#list_vaults and expect it to fail
  When I call the operation 'list_vaults' with params:
    """
{"account_id":"abcmnoxyz"}
    """
  Then I expect an error was raised
