# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for IoTDataPlane

  @iotdataplane @smoke
  Scenario: GetThingShadowFailure
    Given I create a 'Aws::IoTDataPlane' client with config:
      """
{"region":"us-west-2","endpoint":"https://data-ats.iot.us-west-2.amazonaws.com"}
      """
    When I call the operation 'get_thing_shadow' with params:
      """
{"thing_name":"fake-thing"}
      """
    Then I expect an error was raised
