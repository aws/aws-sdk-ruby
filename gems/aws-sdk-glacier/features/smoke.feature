# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Glacier

  @glacier @smoke
  Scenario: ListVaultsSuccess
    Given I create a 'Aws::Glacier' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_vaults' with params:
      """
{}
      """
    Then I expect an error was not raised

  @glacier @smoke
  Scenario: ListVaultsFailure
    Given I create a 'Aws::Glacier' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_vaults' with params:
      """
{"account_id":"abcmnoxyz"}
      """
    Then I expect an error was raised
