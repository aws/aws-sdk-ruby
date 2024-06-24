# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for WAF

  @waf @smoke
  Scenario: ListRulesSuccess
    Given I create a 'Aws::WAF' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'list_rules' with params:
      """
{"limit":20}
      """
    Then I expect an error was not raised
