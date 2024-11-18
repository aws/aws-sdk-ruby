# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Billing

  @billing @smoke
  Scenario: ListBillingViewsSuccess
    Given I create a 'Aws::Billing' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_billing_views' with params:
      """
{"active_time_range":{"active_after_inclusive":1719792000,"active_before_inclusive":1722470399.999}}
      """
    Then I expect an error was not raised
