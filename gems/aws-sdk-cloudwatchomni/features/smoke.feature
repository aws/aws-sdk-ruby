# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudWatchOmni

  @cloudwatchomni @smoke
  Scenario: ListDomainsSuccess
    Given I create a 'Aws::CloudWatchOmni' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_domains' with params:
      """
{}
      """
    Then I expect an error was not raised

  @cloudwatchomni @smoke
  Scenario: GetSpaceNotFound
    Given I create a 'Aws::CloudWatchOmni' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_space' with params:
      """
{"space_id":"00000000-0000-4000-8000-000000000000"}
      """
    Then I expect an error was raised

  @cloudwatchomni @smoke
  Scenario: ListSpacesSuccess
    Given I create a 'Aws::CloudWatchOmni' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_spaces' with params:
      """
{}
      """
    Then I expect an error was not raised
