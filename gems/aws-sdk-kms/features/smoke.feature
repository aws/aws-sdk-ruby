# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for KMS

  @kms @smoke
  Scenario: ListAliasesSuccess
    Given I create a 'Aws::KMS' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_aliases' with params:
      """
{}
      """
    Then I expect an error was not raised

  @kms @smoke
  Scenario: GetKeyPolicyFailure
    Given I create a 'Aws::KMS' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'get_key_policy' with params:
      """
{"key_id":"12345678-1234-1234-1234-123456789012","policy_name":"fakePolicy"}
      """
    Then I expect an error was raised
