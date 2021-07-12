# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for EC2

Background:
  Given I create a client in region 'us-west-2'

  @ec2 @smoke
  Scenario: Call Aws::EC2::Client#describe_regions and expect it to succeed
  When I call the operation 'describe_regions' with params:
    """
{}
    """
  Then I expect an error was not raised

  @ec2 @smoke
  Scenario: Call Aws::Aws::EC2::Client#describe_instances and expect it to fail
  When I call the operation 'describe_instances' with params:
    """
{"instance_ids":["i-12345678"]}
    """
  Then I expect an error was raised
