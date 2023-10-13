# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SES

  @ses @smoke
  Scenario: ListIdentitiesSuccess
    Given I create a 'Aws::SES' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_identities' with params:
      """
{}
      """
    Then I expect an error was not raised

  @ses @smoke
  Scenario: VerifyEmailIdentityFailure
    Given I create a 'Aws::SES' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'verify_email_identity' with params:
      """
{"email_address":"fake_email"}
      """
    Then I expect an error was raised
