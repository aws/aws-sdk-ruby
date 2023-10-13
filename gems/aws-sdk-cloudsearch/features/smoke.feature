# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudSearch

  @cloudsearch @smoke
  Scenario: DescribeDomainsSuccess
    Given I create a 'Aws::CloudSearch' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_domains' with params:
      """
{}
      """
    Then I expect an error was not raised

  @cloudsearch @smoke
  Scenario: DescribeIndexFieldsFailure
    Given I create a 'Aws::CloudSearch' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_index_fields' with params:
      """
{"domain_name":"fakedomain"}
      """
    Then I expect an error was raised
