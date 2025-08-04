# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Evs

  @evs @smoke
  Scenario: GetEnvironment_ResourceNotFoundException
    Given I create a 'Aws::Evs' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_environment' with params:
      """
{"environment_id":"env-a1B2c3D4e5"}
      """
    Then I expect a 'Aws::Evs::Errors::ResourceNotFoundException' was raised

  @evs @smoke
  Scenario: ListEnvironmentHosts_ResourceNotFoundException
    Given I create a 'Aws::Evs' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_environment_hosts' with params:
      """
{"environment_id":"env-a1B2c3D4e5"}
      """
    Then I expect a 'Aws::Evs::Errors::ResourceNotFoundException' was raised

  @evs @smoke
  Scenario: ListEnvironmentVlans_ResourceNotFoundException
    Given I create a 'Aws::Evs' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_environment_vlans' with params:
      """
{"environment_id":"env-a1B2c3D4e5"}
      """
    Then I expect a 'Aws::Evs::Errors::ResourceNotFoundException' was raised
