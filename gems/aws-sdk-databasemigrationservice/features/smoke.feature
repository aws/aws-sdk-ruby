# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DatabaseMigrationService

Background:
  Given I create a client in region 'us-west-2'

  @databasemigrationservice @smoke
  Scenario: Call Aws::DatabaseMigrationService::Client#describe_endpoints and expect it to succeed
  When I call the operation 'describe_endpoints' with params:
    """
{}
    """
  Then I expect an error was not raised

  @databasemigrationservice @smoke
  Scenario: Call Aws::Aws::DatabaseMigrationService::Client#describe_table_statistics and expect it to fail
  When I call the operation 'describe_table_statistics' with params:
    """
{"replication_task_arn":"arn:aws:acm:region:123456789012"}
    """
  Then I expect an error was raised
