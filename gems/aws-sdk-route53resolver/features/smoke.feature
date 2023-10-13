# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Route53Resolver

  @route53resolver @smoke
  Scenario: ListResolverEndpointsSuccess
    Given I create a 'Aws::Route53Resolver' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_resolver_endpoints' with params:
      """
{}
      """
    Then I expect an error was not raised

  @route53resolver @smoke
  Scenario: GetResolverRuleFailure
    Given I create a 'Aws::Route53Resolver' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'get_resolver_rule' with params:
      """
{"resolver_rule_id":"fake-id"}
      """
    Then I expect an error was raised
