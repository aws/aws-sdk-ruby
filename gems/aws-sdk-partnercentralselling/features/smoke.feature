# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PartnerCentralSelling

  @partnercentralselling @smoke
  Scenario: ListOpportunitiesError
    Given I create a 'Aws::PartnerCentralSelling' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_opportunities' with params:
      """
{"catalog":null}
      """
    Then I expect a 'Aws::PartnerCentralSelling::Errors::ValidationException' was raised
