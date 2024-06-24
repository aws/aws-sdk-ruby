# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for WAFV2

  @wafv2 @smoke
  Scenario: ListWebACLsSuccess
    Given I create a 'Aws::WAFV2' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'list_web_acls' with params:
      """
{"scope":"REGIONAL","limit":20}
      """
    Then I expect an error was not raised
