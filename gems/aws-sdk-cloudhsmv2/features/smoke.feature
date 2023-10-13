# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudHSMV2

  @cloudhsmv2 @smoke
  Scenario: DescribeClustersSuccess
    Given I create a 'Aws::CloudHSMV2' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_clusters' with params:
      """
{}
      """
    Then I expect an error was not raised

  @cloudhsmv2 @smoke
  Scenario: ListTagsFailure
    Given I create a 'Aws::CloudHSMV2' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_tags' with params:
      """
{"resource_id":"bogus-arn"}
      """
    Then I expect an error was raised
