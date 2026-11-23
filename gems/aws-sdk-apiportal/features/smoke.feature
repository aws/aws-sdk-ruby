# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for APIPortal

  @apiportal @smoke
  Scenario: ListPortalsSuccess
    Given I create a 'Aws::APIPortal' client with config:
      """
{"region":"us-west-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_portals' with params:
      """
{}
      """
    Then I expect an error was not raised
