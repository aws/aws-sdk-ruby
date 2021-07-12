# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for WAFV2

Background:
  Given I create a client in region 'us-east-1'

  @wafv2 @smoke
  Scenario: Call Aws::WAFV2::Client#list_web_acls and expect it to succeed
  When I call the operation 'list_web_acls' with params:
    """
{"scope":"REGIONAL","limit":20}
    """
  Then I expect an error was not raised

  @wafv2 @smoke
  Scenario: Call Aws::Aws::WAFV2::Client#create_regex_pattern_set and expect it to fail
  When I call the operation 'create_regex_pattern_set' with params:
    """
{"name":"fake_name","scope":"fake_scope"}
    """
  Then I expect an error was raised
