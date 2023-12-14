# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudFront

  @cloudfront @smoke
  Scenario: ListCloudFrontOriginAccessIdentitiesSuccess
    Given I create a 'Aws::CloudFront' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'list_cloud_front_origin_access_identities' with params:
      """
{"max_items":"1"}
      """
    Then I expect an error was not raised

  @cloudfront @smoke
  Scenario: GetDistributionFailure
    Given I create a 'Aws::CloudFront' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'get_distribution' with params:
      """
{"id":"fake-id"}
      """
    Then I expect an error was raised
