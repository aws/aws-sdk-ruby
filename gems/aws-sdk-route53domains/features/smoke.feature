# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Route53Domains

Background:
  Given I create a client in region 'us-east-1'

  @route53domains @smoke
  Scenario: Call Aws::Route53Domains::Client#list_domains and expect it to succeed
  When I call the operation 'list_domains' with params:
    """
{}
    """
  Then I expect an error was not raised

  @route53domains @smoke
  Scenario: Call Aws::Aws::Route53Domains::Client#get_domain_detail and expect it to fail
  When I call the operation 'get_domain_detail' with params:
    """
{"domain_name":"fake-domain-name"}
    """
  Then I expect an error was raised
