# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for IAM

  @iam @smoke
  Scenario: ListUsersSuccess
    Given I create a 'Aws::IAM' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'list_users' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iam @smoke
  Scenario: GetUserFailure
    Given I create a 'Aws::IAM' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'get_user' with params:
      """
{"user_name":"fake_user"}
      """
    Then I expect an error was raised
