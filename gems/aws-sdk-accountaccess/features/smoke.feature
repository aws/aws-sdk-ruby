# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for AccountAccess

  @accountaccess @smoke
  Scenario: ListEntitlementsWithFilters
    Given I create a 'Aws::AccountAccess' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_entitlements' with params:
      """
{"application_arn":"arn:aws:account-access:us-east-1:123456789012:application/test-app-1234567890abcdef","filter":{"principal_role":{"account":"123456789012","principal":{"identity_center":{"user_id":"12345678-1234-1234-1234-123456789012"}}}},"max_results":10}
      """
    Then I expect a 'Aws::AccountAccess::Errors::AccessDeniedException' was raised

  @accountaccess @smoke
  Scenario: GetApplicationUnauthorized
    Given I create a 'Aws::AccountAccess' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_application' with params:
      """
{"application_arn":"arn:aws:account-access:us-east-1:123456789012:application/unauthorized-app-0123"}
      """
    Then I expect a 'Aws::AccountAccess::Errors::AccessDeniedException' was raised

  @accountaccess @smoke
  Scenario: GetEntitlementUnauthorized
    Given I create a 'Aws::AccountAccess' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_entitlement' with params:
      """
{"application_arn":"arn:aws:account-access:us-east-1:123456789012:application/test-app-1234567890abcdef","entitlement_id":"entitlement-smoke-test-id"}
      """
    Then I expect a 'Aws::AccountAccess::Errors::AccessDeniedException' was raised

  @accountaccess @smoke
  Scenario: ListApplicationsSuccess
    Given I create a 'Aws::AccountAccess' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_applications' with params:
      """
{"max_results":1}
      """
    Then I expect an error was not raised
