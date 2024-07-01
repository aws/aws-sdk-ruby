# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CognitoIdentity

  @cognitoidentity @smoke
  Scenario: ListIdentityPoolsSuccess
    Given I create a 'Aws::CognitoIdentity' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_identity_pools' with params:
      """
{"max_results":10}
      """
    Then I expect an error was not raised
