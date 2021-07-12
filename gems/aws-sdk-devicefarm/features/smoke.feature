# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DeviceFarm

Background:
  Given I create a client in region 'us-west-2'

  @devicefarm @smoke
  Scenario: Call Aws::DeviceFarm::Client#list_devices and expect it to succeed
  When I call the operation 'list_devices' with params:
    """
{}
    """
  Then I expect an error was not raised

  @devicefarm @smoke
  Scenario: Call Aws::Aws::DeviceFarm::Client#get_device and expect it to fail
  When I call the operation 'get_device' with params:
    """
{"arn":"arn:aws:devicefarm:us-west-2::device:000000000000000000000000fake-arn"}
    """
  Then I expect an error was raised
