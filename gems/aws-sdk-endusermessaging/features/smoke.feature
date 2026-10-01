# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for EndUserMessaging

  @endusermessaging @smoke
  Scenario: ListBrandProfilesSmokeTest
    Given I create a 'Aws::EndUserMessaging' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_brand_profiles' with params:
      """
{}
      """
    Then I expect an error was raised
