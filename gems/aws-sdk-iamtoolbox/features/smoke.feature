# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for IAMToolbox

  @iamtoolbox @smoke
  Scenario: GetRequestAuthorizationDetailsInvalidId
    Given I create a 'Aws::IAMToolbox' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_request_authorization_details' with params:
      """
{"authorization_id":"aaaaaaaaaaaaaaaaaaaa"}
      """
    Then I expect a 'Aws::IAMToolbox::Errors::ValidationException' was raised
