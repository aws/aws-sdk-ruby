# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for EventBridge

  @eventbridge @smoke
  Scenario: ListRulesSuccess
    Given I create a 'Aws::EventBridge' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_rules' with params:
      """
{}
      """
    Then I expect an error was not raised

  @eventbridge @smoke
  Scenario: DescribeRuleFailure
    Given I create a 'Aws::EventBridge' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_rule' with params:
      """
{"name":"fake-rule"}
      """
    Then I expect an error was raised
