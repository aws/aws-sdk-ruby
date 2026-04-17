# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ElementalInference

  @elementalinference @smoke
  Scenario: ListFeedsSuccess
    Given I create a 'Aws::ElementalInference' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_feeds' with params:
      """
{}
      """
    Then I expect an error was not raised
