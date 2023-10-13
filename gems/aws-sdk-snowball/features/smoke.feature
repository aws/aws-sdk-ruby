# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Snowball

  @snowball @smoke
  Scenario: DescribeAddressesSuccess
    Given I create a 'Aws::Snowball' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_addresses' with params:
      """
{}
      """
    Then I expect an error was not raised
