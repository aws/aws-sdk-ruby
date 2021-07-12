# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for IoTDataPlane

Background:
  Given I create a client in region 'us-west-2'

  @iotdataplane @smoke
  Scenario: Call Aws::Aws::IoTDataPlane::Client#get_thing_shadow and expect it to fail
  When I call the operation 'get_thing_shadow' with params:
    """
{"thing_name":"fake-thing"}
    """
  Then I expect an error was raised
