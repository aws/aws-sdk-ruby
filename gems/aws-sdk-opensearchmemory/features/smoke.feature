# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for OpenSearchMemory

  @opensearchmemory @smoke
  Scenario: ListSpacesSuccess
    Given I create a 'Aws::OpenSearchMemory' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_spaces' with params:
      """
{"max_results":1}
      """
    Then I expect an error was not raised

  @opensearchmemory @smoke
  Scenario: GetSpaceNotFound
    Given I create a 'Aws::OpenSearchMemory' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_space' with params:
      """
{"space_id":"sp-000000000000"}
      """
    Then I expect a 'Aws::OpenSearchMemory::Errors::ResourceNotFoundException' was raised
