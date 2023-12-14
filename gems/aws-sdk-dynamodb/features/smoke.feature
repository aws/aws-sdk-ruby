# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DynamoDB

  @dynamodb @smoke
  Scenario: ListTablesSuccess
    Given I create a 'Aws::DynamoDB' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_tables' with params:
      """
{"limit":1}
      """
    Then I expect an error was not raised

  @dynamodb @smoke
  Scenario: DescribeTableFailure
    Given I create a 'Aws::DynamoDB' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_table' with params:
      """
{"table_name":"fake-table"}
      """
    Then I expect an error was raised
