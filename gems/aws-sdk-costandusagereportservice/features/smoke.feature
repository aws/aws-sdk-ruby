# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CostandUsageReportService

Background:
  Given I create a client in region 'us-east-1'

  @costandusagereportservice @smoke
  Scenario: Call Aws::CostandUsageReportService::Client#describe_report_definitions and expect it to succeed
  When I call the operation 'describe_report_definitions' with params:
    """
{}
    """
  Then I expect an error was not raised
