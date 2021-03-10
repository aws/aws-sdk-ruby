# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DynamoDB

Background:
  Given I create a client in region 'us-west-2'

  @dynamodb @smoke
  Scenario: Call Aws::DynamoDB::Client#list_tables and expect it to succeed
  When I call the operation 'list_tables' with params:
    """
{"limit":1}
    """
  Then I expect an error was not raised

  @dynamodb @smoke
  Scenario: Call Aws::Aws::DynamoDB::Client#describe_table and expect it to fail
  When I call the operation 'describe_table' with params:
    """
{"table_name":"fake-table"}
    """
  Then I expect an error was raised
