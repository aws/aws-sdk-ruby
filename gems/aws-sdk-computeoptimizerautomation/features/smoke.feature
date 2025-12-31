# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ComputeOptimizerAutomation

  @computeoptimizerautomation @smoke
  Scenario: StartAutomationEvent
    Given I create a 'Aws::ComputeOptimizerAutomation' client with config:
      """
{"region":"us-east-1","endpoint":"https://aco-automation.us-east-1.amazonaws.com","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'start_automation_event' with params:
      """
{"recommended_action_id":"DummyId123456789"}
      """
    Then I expect an error was raised
