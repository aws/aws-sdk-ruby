# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PricingPlanManager

  @pricingplanmanager @smoke
  Scenario: ListSubscriptionsSuccess
    Given I create a 'Aws::PricingPlanManager' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_subscriptions' with params:
      """
{}
      """
    Then I expect an error was not raised

  @pricingplanmanager @smoke
  Scenario: GetSubscriptionFailure
    Given I create a 'Aws::PricingPlanManager' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_subscription' with params:
      """
{"arn":"arn:aws:pricingplanmanager::123456789012:subscription/non-existent"}
      """
    Then I expect a 'Aws::PricingPlanManager::Errors::ResourceNotFoundException' was raised
