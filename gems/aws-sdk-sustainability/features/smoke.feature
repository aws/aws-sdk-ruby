# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Sustainability

  @sustainability @smoke
  Scenario: GetEstimatedWaterAllocationDimensionValuesSuccess
    Given I create a 'Aws::Sustainability' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_estimated_water_allocation_dimension_values' with params:
      """
{"time_period":{"start":1735689600,"end":1767225600},"dimensions":["REGION","SERVICE"]}
      """
    Then I expect an error was not raised

  @sustainability @smoke
  Scenario: GetEstimatedWaterAllocationDimensionValuesFailure
    Given I create a 'Aws::Sustainability' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_estimated_water_allocation_dimension_values' with params:
      """
{"time_period":{"start":1767225600,"end":1735689600},"dimensions":["REGION","SERVICE"]}
      """
    Then I expect a 'Aws::Sustainability::Errors::ValidationException' was raised

  @sustainability @smoke
  Scenario: GetEstimatedWaterAllocationSuccess
    Given I create a 'Aws::Sustainability' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_estimated_water_allocation' with params:
      """
{"time_period":{"start":1735689600,"end":1767225600}}
      """
    Then I expect an error was not raised

  @sustainability @smoke
  Scenario: GetEstimatedWaterAllocationFailure
    Given I create a 'Aws::Sustainability' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_estimated_water_allocation' with params:
      """
{"time_period":{"start":1767225600,"end":1735689600}}
      """
    Then I expect a 'Aws::Sustainability::Errors::ValidationException' was raised

  @sustainability @smoke
  Scenario: GetEstimatedCarbonEmissionsSuccess
    Given I create a 'Aws::Sustainability' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_estimated_carbon_emissions' with params:
      """
{"time_period":{"start":1735689600,"end":1767225599}}
      """
    Then I expect an error was not raised

  @sustainability @smoke
  Scenario: GetEstimatedCarbonEmissionsFailure
    Given I create a 'Aws::Sustainability' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_estimated_carbon_emissions' with params:
      """
{"time_period":{"start":1767225599,"end":1735689600}}
      """
    Then I expect a 'Aws::Sustainability::Errors::ValidationException' was raised

  @sustainability @smoke
  Scenario: GetEstimatedCarbonEmissionsDimensionValuesSuccess
    Given I create a 'Aws::Sustainability' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_estimated_carbon_emissions_dimension_values' with params:
      """
{"time_period":{"start":1735689600,"end":1767225599},"dimensions":["REGION","SERVICE"]}
      """
    Then I expect an error was not raised

  @sustainability @smoke
  Scenario: GetEstimatedCarbonEmissionsDimensionValuesFailure
    Given I create a 'Aws::Sustainability' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_estimated_carbon_emissions_dimension_values' with params:
      """
{"time_period":{"start":1767225599,"end":1735689600},"dimensions":["REGION","SERVICE"]}
      """
    Then I expect a 'Aws::Sustainability::Errors::ValidationException' was raised
