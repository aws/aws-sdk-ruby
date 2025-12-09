# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PartnerCentralBenefits

  @partnercentralbenefits @smoke
  Scenario: ListBenefitsSuccess
    Given I create a 'Aws::PartnerCentralBenefits' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_benefits' with params:
      """
{"catalog":"AWS","max_results":10}
      """
    Then I expect an error was not raised
