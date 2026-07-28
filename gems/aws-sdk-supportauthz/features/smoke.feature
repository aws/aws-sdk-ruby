# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SupportAuthZ

  @supportauthz @smoke
  Scenario: ListSupportPermitRequestsSuccess
    Given I create a 'Aws::SupportAuthZ' client with config:
      """
{"region":"ap-northeast-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_support_permit_requests' with params:
      """
{}
      """
    Then I expect an error was not raised

  @supportauthz @smoke
  Scenario: ListActionsSuccess
    Given I create a 'Aws::SupportAuthZ' client with config:
      """
{"region":"ap-northeast-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_actions' with params:
      """
{"service":"myservice"}
      """
    Then I expect an error was not raised

  @supportauthz @smoke
  Scenario: GetActionFailure
    Given I create a 'Aws::SupportAuthZ' client with config:
      """
{"region":"ap-northeast-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_action' with params:
      """
{"action":"myservice:NonExistentAction"}
      """
    Then I expect a 'Aws::SupportAuthZ::Errors::ResourceNotFoundException' was raised

  @supportauthz @smoke
  Scenario: ListSupportPermitsSuccess
    Given I create a 'Aws::SupportAuthZ' client with config:
      """
{"region":"ap-northeast-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_support_permits' with params:
      """
{}
      """
    Then I expect an error was not raised

  @supportauthz @smoke
  Scenario: GetSupportPermitFailure
    Given I create a 'Aws::SupportAuthZ' client with config:
      """
{"region":"ap-northeast-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_support_permit' with params:
      """
{"support_permit_identifier":"non-existent-permit-id"}
      """
    Then I expect a 'Aws::SupportAuthZ::Errors::ResourceNotFoundException' was raised
