# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SimpleDBv2

  @simpledbv2 @smoke
  Scenario: ListExportsSuccess
    Given I create a 'Aws::SimpleDBv2' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_exports' with params:
      """
{}
      """
    Then I expect an error was not raised

  @simpledbv2 @smoke
  Scenario: ListExportsWithInvalidDomain
    Given I create a 'Aws::SimpleDBv2' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_exports' with params:
      """
{"domain_name":"non-existent-domain-12345"}
      """
    Then I expect a 'Aws::SimpleDBv2::Errors::NoSuchDomainException' was raised

  @simpledbv2 @smoke
  Scenario: GetExportFailure
    Given I create a 'Aws::SimpleDBv2' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_export' with params:
      """
{"export_arn":"arn:aws:sdb:us-east-1:123456789012:domain/testDomain/export/3eb4eaed-872b-4e08-b4b6-ff6999a83e01"}
      """
    Then I expect a 'Aws::SimpleDBv2::Errors::NoSuchExportException' was raised

  @simpledbv2 @smoke
  Scenario: StartDomainExportWithInvalidDomain
    Given I create a 'Aws::SimpleDBv2' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'start_domain_export' with params:
      """
{"domain_name":"non-existent-domain-12345","s3_bucket":"test-bucket"}
      """
    Then I expect a 'Aws::SimpleDBv2::Errors::NoSuchDomainException' was raised
