# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for WorkSpaces

Background:
  Given I create a client in region 'us-west-2'

  @workspaces @smoke
  Scenario: Call Aws::WorkSpaces::Client#describe_workspaces and expect it to succeed
  When I call the operation 'describe_workspaces' with params:
    """
{}
    """
  Then I expect an error was not raised

  @workspaces @smoke
  Scenario: Call Aws::Aws::WorkSpaces::Client#describe_workspaces and expect it to fail
  When I call the operation 'describe_workspaces' with params:
    """
{"directory_id":"fake-id"}
    """
  Then I expect an error was raised
