# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for IoT

Background:
  Given I create a client in region 'us-west-2'

  @iot @smoke
  Scenario: Call Aws::IoT::Client#list_policies and expect it to succeed
  When I call the operation 'list_policies' with params:
    """
{}
    """
  Then I expect an error was not raised

  @iot @smoke
  Scenario: Call Aws::Aws::IoT::Client#describe_thing and expect it to fail
  When I call the operation 'describe_thing' with params:
    """
{"thing_name":"fake-thing"}
    """
  Then I expect an error was raised
