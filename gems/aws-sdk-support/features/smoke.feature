# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Support

  @support @smoke
  Scenario: DescribeServicesSuccess
    Given I create a 'Aws::Support' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'describe_services' with params:
      """
{}
      """
    Then I expect an error was not raised

  @support @smoke
  Scenario: CreateCaseFailure
    Given I create a 'Aws::Support' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'create_case' with params:
      """
{"subject":"subject","communication_body":"communication","category_code":"category","service_code":"amazon-dynamodb","severity_code":"low"}
      """
    Then I expect an error was raised
