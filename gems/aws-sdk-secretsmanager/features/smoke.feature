# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SecretsManager

  @secretsmanager @smoke
  Scenario: ListSecretsSuccess
    Given I create a 'Aws::SecretsManager' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_secrets' with params:
      """
{}
      """
    Then I expect an error was not raised

  @secretsmanager @smoke
  Scenario: DescribeSecretFailure
    Given I create a 'Aws::SecretsManager' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_secret' with params:
      """
{"secret_id":"fake-secret-id"}
      """
    Then I expect an error was raised
