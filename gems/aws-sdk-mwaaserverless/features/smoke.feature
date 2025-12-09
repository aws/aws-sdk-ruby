# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for MWAAServerless

  @mwaaserverless @smoke
  Scenario: ListWorkflowsSuccess
    Given I create a 'Aws::MWAAServerless' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_workflows' with params:
      """
{}
      """
    Then I expect an error was not raised

  @mwaaserverless @smoke
  Scenario: ListWorkflowsWithMaxResultsSuccess
    Given I create a 'Aws::MWAAServerless' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_workflows' with params:
      """
{"max_results":10}
      """
    Then I expect an error was not raised

  @mwaaserverless @smoke
  Scenario: ListWorkflowsInvalidPaginationToken
    Given I create a 'Aws::MWAAServerless' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_workflows' with params:
      """
{"next_token":"123"}
      """
    Then I expect a 'Aws::MWAAServerless::Errors::ValidationException' was raised
