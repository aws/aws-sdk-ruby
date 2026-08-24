# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for AgentRegistry

  @agentregistry @smoke
  Scenario: SearchDiscoverableRegistryRecordsNonexistentFailure
    Given I create a 'Aws::AgentRegistry' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'search_discoverable_registry_records' with params:
      """
{"search_query":"smoke-test","registry_ids":["aaaaaaaaaaaa"]}
      """
    Then I expect an error was raised

  @agentregistry @smoke
  Scenario: ListDiscoverableRegistryRecordsNonexistentFailure
    Given I create a 'Aws::AgentRegistry' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_discoverable_registry_records' with params:
      """
{"registry_id":"aaaaaaaaaaaa"}
      """
    Then I expect an error was raised

  @agentregistry @smoke
  Scenario: BatchGetDiscoverableRegistryRecordNonexistentFailure
    Given I create a 'Aws::AgentRegistry' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'batch_get_discoverable_registry_record' with params:
      """
{"entries":[{"registry_id":"aaaaaaaaaaaa","record_ids":["bbbbbbbbbbbb"]}]}
      """
    Then I expect an error was raised
