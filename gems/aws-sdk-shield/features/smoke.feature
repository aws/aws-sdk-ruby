# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Shield

  @shield @smoke
  Scenario: ListAttacksSuccess
    Given I create a 'Aws::Shield' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'list_attacks' with params:
      """
{}
      """
    Then I expect an error was not raised
