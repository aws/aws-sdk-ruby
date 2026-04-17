# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Interconnect

  @interconnect @smoke
  Scenario: ListEnvironmentSuccess
    Given I create a 'Aws::Interconnect' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'list_environments' with params:
      """
{}
      """
    Then I expect an error was not raised

  @interconnect @smoke
  Scenario: GetEnvironmentFailure
    Given I create a 'Aws::Interconnect' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_environment' with params:
      """
{"id":"mce-nonexistent"}
      """
    Then I expect an error was raised
