# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CognitoIdentityProvider

  @cognitoidentityprovider @smoke
  Scenario: ListUserPoolsSuccess
    Given I create a 'Aws::CognitoIdentityProvider' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_user_pools' with params:
      """
{"max_results":10}
      """
    Then I expect an error was not raised
