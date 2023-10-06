# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ACM

  @smoke @acm 
  Scenario: ListCertificatesSuccess
    Given I create a 'Aws::ACM' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_certificates' with params:
      """
{}
      """
    Then I expect an error was not raised

  @smoke @acm 
  Scenario: GetCertificateFailure
    Given I create a 'Aws::ACM' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'get_certificate' with params:
      """
{"certificate_arn":"arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012"}
      """
    Then I expect an error was raised
