# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for S3

  @s3 @smoke
  Scenario: ListBucketsSuccess
    Given I create a 'Aws::S3' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_buckets' with params:
      """
{}
      """
    Then I expect an error was not raised
