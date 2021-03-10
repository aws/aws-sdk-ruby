# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Lightsail

Background:
  Given I create a client in region 'us-west-2'

  @lightsail @smoke
  Scenario: Call Aws::Lightsail::Client#get_active_names and expect it to succeed
  When I call the operation 'get_active_names' with params:
    """
{}
    """
  Then I expect an error was not raised
