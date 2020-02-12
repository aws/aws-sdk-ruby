# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for S3

Background:
  Given I create a client in region 'us-west-2'

  @s3 @smoke
  Scenario: Call Aws::S3::Client#list_buckets and expect it to succeed
  When I call the operation 'list_buckets' with params:
    """
{}
    """
  Then I expect an error was not raised
