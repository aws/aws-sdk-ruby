# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Route53GlobalResolver

  @route53globalresolver @smoke
  Scenario: GetGlobalResolverFailure
    Given I create a 'Aws::Route53GlobalResolver' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_global_resolver' with params:
      """
{"global_resolver_id":"gr-doesnotexist1111"}
      """
    Then I expect a 'Aws::Route53GlobalResolver::Errors::ResourceNotFoundException' was raised

  @route53globalresolver @smoke
  Scenario: GetHostedZoneAssociationFailure
    Given I create a 'Aws::Route53GlobalResolver' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_hosted_zone_association' with params:
      """
{"hosted_zone_association_id":"phza-doesnotexist1111"}
      """
    Then I expect a 'Aws::Route53GlobalResolver::Errors::ResourceNotFoundException' was raised

  @route53globalresolver @smoke
  Scenario: GetAccessTokenFailure
    Given I create a 'Aws::Route53GlobalResolver' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_access_token' with params:
      """
{"access_token_id":"at-doesnotexist1111"}
      """
    Then I expect a 'Aws::Route53GlobalResolver::Errors::ResourceNotFoundException' was raised

  @route53globalresolver @smoke
  Scenario: GetManagedFirewallDomainListFailure
    Given I create a 'Aws::Route53GlobalResolver' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_managed_firewall_domain_list' with params:
      """
{"managed_firewall_domain_list_id":"aws-managed-fdl-99919"}
      """
    Then I expect a 'Aws::Route53GlobalResolver::Errors::ResourceNotFoundException' was raised

  @route53globalresolver @smoke
  Scenario: GetFirewallDomainListFailure
    Given I create a 'Aws::Route53GlobalResolver' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_firewall_domain_list' with params:
      """
{"firewall_domain_list_id":"fdl-doesnotexist1111"}
      """
    Then I expect a 'Aws::Route53GlobalResolver::Errors::ResourceNotFoundException' was raised

  @route53globalresolver @smoke
  Scenario: GetDNSViewFailure
    Given I create a 'Aws::Route53GlobalResolver' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_dns_view' with params:
      """
{"dns_view_id":"dnsv-doesnotexist1111"}
      """
    Then I expect a 'Aws::Route53GlobalResolver::Errors::ResourceNotFoundException' was raised

  @route53globalresolver @smoke
  Scenario: GetFirewallRuleFailure
    Given I create a 'Aws::Route53GlobalResolver' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_firewall_rule' with params:
      """
{"firewall_rule_id":"fr-doesnotexist1111"}
      """
    Then I expect a 'Aws::Route53GlobalResolver::Errors::ResourceNotFoundException' was raised

  @route53globalresolver @smoke
  Scenario: GetAccessSourceFailure
    Given I create a 'Aws::Route53GlobalResolver' client with config:
      """
{"region":"us-east-2","use_fips_endpoint":false,"use_dualstack_endpoint":true}
      """
    When I call the operation 'get_access_source' with params:
      """
{"access_source_id":"as-doesnotexist1111"}
      """
    Then I expect a 'Aws::Route53GlobalResolver::Errors::ResourceNotFoundException' was raised
