# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudFront

Background:
  Given I create a client in region 'us-east-1'

  @cloudfront @smoke
  Scenario: Call Aws::CloudFront::Client#list_cloud_front_origin_access_identities and expect it to succeed
  When I call the operation 'list_cloud_front_origin_access_identities' with params:
    """
{"max_items":"1"}
    """
  Then I expect an error was not raised

  @cloudfront @smoke
  Scenario: Call Aws::Aws::CloudFront::Client#get_distribution and expect it to fail
  When I call the operation 'get_distribution' with params:
    """
{"id":"fake-id"}
    """
  Then I expect an error was raised
