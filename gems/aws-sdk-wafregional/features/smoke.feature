# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for WAFRegional

Background:
  Given I create a client in region 'us-east-1'

  @wafregional @smoke
  Scenario: Call Aws::WAFRegional::Client#list_rules and expect it to succeed
  When I call the operation 'list_rules' with params:
    """
{"limit":20}
    """
  Then I expect an error was not raised

  @wafregional @smoke
  Scenario: Call Aws::Aws::WAFRegional::Client#create_sql_injection_match_set and expect it to fail
  When I call the operation 'create_sql_injection_match_set' with params:
    """
{"name":"fake_name","change_token":"fake_token"}
    """
  Then I expect an error was raised
