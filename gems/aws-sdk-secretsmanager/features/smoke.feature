# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SecretsManager

Background:
  Given I create a client in region 'us-west-2'

  @secretsmanager @smoke
  Scenario: Call Aws::SecretsManager::Client#list_secrets and expect it to succeed
  When I call the operation 'list_secrets' with params:
    """
{}
    """
  Then I expect an error was not raised

  @secretsmanager @smoke
  Scenario: Call Aws::Aws::SecretsManager::Client#describe_secret and expect it to fail
  When I call the operation 'describe_secret' with params:
    """
{"secret_id":"fake-secret-id"}
    """
  Then I expect an error was raised
