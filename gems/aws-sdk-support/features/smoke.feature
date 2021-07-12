# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Support

Background:
  Given I create a client in region 'us-east-1'

  @support @smoke
  Scenario: Call Aws::Support::Client#describe_services and expect it to succeed
  When I call the operation 'describe_services' with params:
    """
{}
    """
  Then I expect an error was not raised

  @support @smoke
  Scenario: Call Aws::Aws::Support::Client#create_case and expect it to fail
  When I call the operation 'create_case' with params:
    """
{"subject":"subject","communication_body":"communication","category_code":"category","service_code":"amazon-dynamodb","severity_code":"low"}
    """
  Then I expect an error was raised
