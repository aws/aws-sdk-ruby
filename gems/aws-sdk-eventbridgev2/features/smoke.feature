# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for EventBridgeV2

  @eventbridgev2 @smoke
  Scenario: ListEventBusesSuccess
    Given I create a 'Aws::EventBridgeV2' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_event_buses' with params:
      """
{}
      """
    Then I expect an error was not raised
