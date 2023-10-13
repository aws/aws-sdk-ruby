# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for WAFRegional

  @wafregional @smoke
  Scenario: ListRulesSuccess
    Given I create a 'Aws::WAFRegional' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'list_rules' with params:
      """
{"limit":20}
      """
    Then I expect an error was not raised

  @wafregional @smoke
  Scenario: CreateSqlInjectionMatchSetFailure
    Given I create a 'Aws::WAFRegional' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'create_sql_injection_match_set' with params:
      """
{"name":"fake_name","change_token":"fake_token"}
      """
    Then I expect an error was raised
