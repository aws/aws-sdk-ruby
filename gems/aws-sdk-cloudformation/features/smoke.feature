# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudFormation

  @cloudformation @smoke
  Scenario: ListStacksSuccess
    Given I create a 'Aws::CloudFormation' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_stacks' with params:
      """
{}
      """
    Then I expect an error was not raised

  @cloudformation @smoke
  Scenario: CreateStackFailure
    Given I create a 'Aws::CloudFormation' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'create_stack' with params:
      """
{"stack_name":"fakestack","template_url":"http://s3.amazonaws.com/foo/bar"}
      """
    Then I expect an error was raised
