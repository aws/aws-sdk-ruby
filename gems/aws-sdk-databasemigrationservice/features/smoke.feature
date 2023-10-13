# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DatabaseMigrationService

  @databasemigrationservice @smoke
  Scenario: DescribeEndpointsSuccess
    Given I create a 'Aws::DatabaseMigrationService' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_endpoints' with params:
      """
{}
      """
    Then I expect an error was not raised

  @databasemigrationservice @smoke
  Scenario: DescribeTableStatisticsFailure
    Given I create a 'Aws::DatabaseMigrationService' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_table_statistics' with params:
      """
{"replication_task_arn":"arn:aws:acm:region:123456789012"}
      """
    Then I expect an error was raised
