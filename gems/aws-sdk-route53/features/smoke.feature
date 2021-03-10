# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Route53

Background:
  Given I create a client in region 'us-east-1'

  @route53 @smoke
  Scenario: Call Aws::Route53::Client#list_hosted_zones and expect it to succeed
  When I call the operation 'list_hosted_zones' with params:
    """
{}
    """
  Then I expect an error was not raised

  @route53 @smoke
  Scenario: Call Aws::Aws::Route53::Client#get_hosted_zone and expect it to fail
  When I call the operation 'get_hosted_zone' with params:
    """
{"id":"fake-zone"}
    """
  Then I expect an error was raised
