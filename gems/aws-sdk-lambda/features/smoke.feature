# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Lambda

  @lambda @smoke
  Scenario: ListFunctionsSuccess
    Given I create a 'Aws::Lambda' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_functions' with params:
      """
{}
      """
    Then I expect an error was not raised

  @lambda @smoke
  Scenario: ErrorInvalidFunctionName
    Given I create a 'Aws::Lambda' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'invoke' with params:
      """
{"function_name":"bogus-function"}
      """
    Then I expect a 'Aws::Lambda::Errors::ResourceNotFoundException' was raised
