# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SES

Background:
  Given I create a client in region 'us-west-2'

  @ses @smoke
  Scenario: Call Aws::SES::Client#list_identities and expect it to succeed
  When I call the operation 'list_identities' with params:
    """
{}
    """
  Then I expect an error was not raised

  @ses @smoke
  Scenario: Call Aws::Aws::SES::Client#verify_email_identity and expect it to fail
  When I call the operation 'verify_email_identity' with params:
    """
{"email_address":"fake_email"}
    """
  Then I expect an error was raised
