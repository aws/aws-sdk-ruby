# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudHSMV2

Background:
  Given I create a client in region 'us-west-2'

  @cloudhsmv2 @smoke
  Scenario: Call Aws::CloudHSMV2::Client#describe_clusters and expect it to succeed
  When I call the operation 'describe_clusters' with params:
    """
{}
    """
  Then I expect an error was not raised

  @cloudhsmv2 @smoke
  Scenario: Call Aws::Aws::CloudHSMV2::Client#list_tags and expect it to fail
  When I call the operation 'list_tags' with params:
    """
{"resource_id":"bogus-arn"}
    """
  Then I expect an error was raised
