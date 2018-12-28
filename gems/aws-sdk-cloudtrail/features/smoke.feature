# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudTrail

Background:
  Given I create a client in region 'us-west-2'

  @cloudtrail @smoke
  Scenario: Call Aws::CloudTrail::Client#describe_trails and expect it to succeed
  When I call the operation 'describe_trails' with params:
    """
{}
    """
  Then I expect an error was not raised

  @cloudtrail @smoke
  Scenario: Call Aws::Aws::CloudTrail::Client#delete_trail and expect it to fail
  When I call the operation 'delete_trail' with params:
    """
{"name":"faketrail"}
    """
  Then I expect an error was raised
