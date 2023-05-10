# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SWF

Background:
  Given I create a client in region 'us-west-2'

  @swf @smoke
  Scenario: Call Aws::SWF::Client#list_domains and expect it to succeed
  When I call the operation 'list_domains' with params:
    """
{"registration_status":"REGISTERED"}
    """
  Then I expect an error was not raised

  @swf @smoke
  Scenario: Call Aws::Aws::SWF::Client#describe_domain and expect it to fail
  When I call the operation 'describe_domain' with params:
    """
{"name":"fake_domain"}
    """
  Then I expect an error was raised
