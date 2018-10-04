# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Lambda

Background:
  Given I create a client in region 'us-west-2'

  @lambda @smoke
  Scenario: Call Aws::Lambda::Client#list_functions and expect it to succeed
  When I call the operation 'list_functions' with params:
    """
{}
    """
  Then I expect an error was not raised

  @lambda @smoke
  Scenario: Call Aws::Aws::Lambda::Client#invoke and expect it to fail
  When I call the operation 'invoke' with params:
    """
{"function_name":"bogus-function"}
    """
  Then I expect an error was raised
