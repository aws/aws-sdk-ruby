# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Route53

  @route53 @smoke
  Scenario: ListHostedZonesSuccess
    Given I create a 'Aws::Route53' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'list_hosted_zones' with params:
      """
{}
      """
    Then I expect an error was not raised

  @route53 @smoke
  Scenario: GetHostedZoneFailure
    Given I create a 'Aws::Route53' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'get_hosted_zone' with params:
      """
{"id":"fake-zone"}
      """
    Then I expect an error was raised
