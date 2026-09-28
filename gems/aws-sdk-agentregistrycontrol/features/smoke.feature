# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for AgentRegistryControl

  @agentregistrycontrol @smoke
  Scenario: GetRegistryFailure
    Given I create a 'Aws::AgentRegistryControl' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_registry' with params:
      """
{"registry_id":"000000000000"}
      """
    Then I expect a 'Aws::AgentRegistryControl::Errors::ResourceNotFoundException' was raised

  @agentregistrycontrol @smoke
  Scenario: ListRegistriesSuccess
    Given I create a 'Aws::AgentRegistryControl' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_registries' with params:
      """
{}
      """
    Then I expect an error was not raised
