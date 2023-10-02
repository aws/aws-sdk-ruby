# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ACM

  @smoke @acm @connection
  Scenario: FailureExample
    Given I create a 'Aws::ACM' client with config:
      """
{"region":"moon-dark-1"}
      """
    When I call the operation 'test_operation' with params:
      """
{"message":"foo"}
      """
    Then I expect an error was raised

  @smoke @acm 
  Scenario: ErrorExample
    Given I create a 'Aws::ACM' client with config:
      """
{"region":"eu-central-1"}
      """
    When I call the operation 'test_operation' with params:
      """
{"message":"föö"}
      """
    Then I expect a 'Aws::ACM::Errors::InvalidMessageError' was raised

  @smoke @acm 
  Scenario: SuccessExample
    Given I create a 'Aws::ACM' client with config:
      """
{"region":"eu-central-1"}
      """
    When I call the operation 'test_operation' with params:
      """
{"message":"bar"}
      """
    Then I expect an error was not raised
