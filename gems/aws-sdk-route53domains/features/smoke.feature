# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Route53Domains

  @route53domains @smoke
  Scenario: ListDomainsSuccess
    Given I create a 'Aws::Route53Domains' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'list_domains' with params:
      """
{}
      """
    Then I expect an error was not raised

  @route53domains @smoke
  Scenario: GetDomainDetailFailure
    Given I create a 'Aws::Route53Domains' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'get_domain_detail' with params:
      """
{"domain_name":"fake-domain-name"}
      """
    Then I expect an error was raised
