# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CostandUsageReportService

  @costandusagereportservice @smoke
  Scenario: DescribeReportDefinitionsSuccess
    Given I create a 'Aws::CostandUsageReportService' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'describe_report_definitions' with params:
      """
{}
      """
    Then I expect an error was not raised
