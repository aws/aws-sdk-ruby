# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DirectConnect

  @directconnect @smoke
  Scenario: DescribeConnectionsSuccess
    Given I create a 'Aws::DirectConnect' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_connections' with params:
      """
{}
      """
    Then I expect an error was not raised

  @directconnect @smoke
  Scenario: DescribeConnectionsFailure
    Given I create a 'Aws::DirectConnect' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_connections' with params:
      """
{"connection_id":"fake-connection"}
      """
    Then I expect an error was raised
