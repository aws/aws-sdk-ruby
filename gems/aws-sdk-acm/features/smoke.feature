# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ACM

Background:
  Given I create a client in region 'us-west-2'

  @acm @smoke
  Scenario: Call Aws::ACM::Client#list_certificates and expect it to succeed
  When I call the operation 'list_certificates' with params:
    """
{}
    """
  Then I expect an error was not raised

  @acm @smoke
  Scenario: Call Aws::Aws::ACM::Client#get_certificate and expect it to fail
  When I call the operation 'get_certificate' with params:
    """
{"certificate_arn":"arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012"}
    """
  Then I expect an error was raised
