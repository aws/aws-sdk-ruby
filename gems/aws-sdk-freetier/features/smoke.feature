# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for FreeTier

  @freetier @smoke
  Scenario: ListAccountActivitiesSuccess
    Given I create a 'Aws::FreeTier' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_account_activities' with params:
      """
{"language_code":"en-US"}
      """
    Then I expect an error was not raised

  @freetier @smoke
  Scenario: GetAccountActivitySuccess
    Given I create a 'Aws::FreeTier' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_account_activity' with params:
      """
{"activity_id":"d622f48bf4014286a2686ab10cacfb2e","language_code":"en-US"}
      """
    Then I expect an error was not raised
