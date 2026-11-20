# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for AgentDiscovery

  @agentdiscovery @smoke
  Scenario: SearchPublicRecordsSuccess
    Given I create a 'Aws::AgentDiscovery' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'search_public_records' with params:
      """
{"search_query":"agent","max_results":1}
      """
    Then I expect an error was not raised

  @agentdiscovery @smoke
  Scenario: SearchPublicRecordsSuccessEuWest1
    Given I create a 'Aws::AgentDiscovery' client with config:
      """
{"region":"eu-west-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'search_public_records' with params:
      """
{"search_query":"agent","max_results":1}
      """
    Then I expect an error was not raised

  @agentdiscovery @smoke
  Scenario: SearchPublicRecordsSuccessApNortheast1
    Given I create a 'Aws::AgentDiscovery' client with config:
      """
{"region":"ap-northeast-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'search_public_records' with params:
      """
{"search_query":"agent","max_results":1}
      """
    Then I expect an error was not raised
