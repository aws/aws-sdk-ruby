# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for AbuseSignal

  @abusesignal @smoke
  Scenario: ListAbuseReportStatusesSuccess
    Given I create a 'Aws::AbuseSignal' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_abuse_report_statuses' with params:
      """
{}
      """
    Then I expect an error was not raised

  @abusesignal @smoke
  Scenario: GetAbuseReportStatusFailure
    Given I create a 'Aws::AbuseSignal' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_abuse_report_status' with params:
      """
{"report_id":"nonexistent00000000000"}
      """
    Then I expect a 'Aws::AbuseSignal::Errors::ResourceNotFoundException' was raised
