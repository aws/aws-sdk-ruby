# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudFormation

Background:
  Given I create a client in region 'us-west-2'

  @cloudformation @smoke
  Scenario: Call Aws::CloudFormation::Client#list_stacks and expect it to succeed
  When I call the operation 'list_stacks' with params:
    """
{}
    """
  Then I expect an error was not raised

  @cloudformation @smoke
  Scenario: Call Aws::Aws::CloudFormation::Client#create_stack and expect it to fail
  When I call the operation 'create_stack' with params:
    """
{"stack_name":"fakestack","template_url":"http://s3.amazonaws.com/foo/bar"}
    """
  Then I expect an error was raised
