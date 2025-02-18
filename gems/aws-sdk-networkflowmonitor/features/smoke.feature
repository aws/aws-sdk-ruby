# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for NetworkFlowMonitor

  @networkflowmonitor @smoke
  Scenario: GetMonitorSuccess
    Given I create a 'Aws::NetworkFlowMonitor' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_monitor' with params:
      """
{"monitor_name":"SmokeTestMonitor"}
      """
    Then I expect an error was raised
