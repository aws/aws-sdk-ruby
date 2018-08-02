# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for OpsWorks

Background:
  Given I create a client in region 'us-west-2'

  @opsworks @smoke
  Scenario: Call Aws::OpsWorks::Client#describe_stacks and expect it to succeed
  When I call the operation 'describe_stacks' with params:
    """
{}
    """
  Then I expect an error was not raised

  @opsworks @smoke
  Scenario: Call Aws::Aws::OpsWorks::Client#describe_layers and expect it to fail
  When I call the operation 'describe_layers' with params:
    """
{"stack_id":"fake_stack"}
    """
  Then I expect an error was raised
