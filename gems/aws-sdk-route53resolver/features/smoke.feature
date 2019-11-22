# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Route53Resolver

Background:
  Given I create a client in region 'us-west-2'

  @route53resolver @smoke
  Scenario: Call Aws::Route53Resolver::Client#list_resolver_endpoints and expect it to succeed
  When I call the operation 'list_resolver_endpoints' with params:
    """
{}
    """
  Then I expect an error was not raised

  @route53resolver @smoke
  Scenario: Call Aws::Aws::Route53Resolver::Client#get_resolver_rule and expect it to fail
  When I call the operation 'get_resolver_rule' with params:
    """
{"resolver_rule_id":"fake-id"}
    """
  Then I expect an error was raised
