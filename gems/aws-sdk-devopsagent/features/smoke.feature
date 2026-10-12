# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DevOpsAgent

  @devopsagent @smoke
  Scenario: ListAgentSpacesSuccess
    Given I create a 'Aws::DevOpsAgent' client with config:
      """
{"region":"ap-southeast-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_agent_spaces' with params:
      """
{}
      """
    Then I expect an error was not raised

  @devopsagent @smoke
  Scenario: GetAccountUsageSuccess
    Given I create a 'Aws::DevOpsAgent' client with config:
      """
{"region":"ap-southeast-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_account_usage' with params:
      """
{}
      """
    Then I expect an error was not raised
