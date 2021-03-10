# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for KMS

Background:
  Given I create a client in region 'us-west-2'

  @kms @smoke
  Scenario: Call Aws::KMS::Client#list_aliases and expect it to succeed
  When I call the operation 'list_aliases' with params:
    """
{}
    """
  Then I expect an error was not raised

  @kms @smoke
  Scenario: Call Aws::Aws::KMS::Client#get_key_policy and expect it to fail
  When I call the operation 'get_key_policy' with params:
    """
{"key_id":"12345678-1234-1234-1234-123456789012","policy_name":"fakePolicy"}
    """
  Then I expect an error was raised
