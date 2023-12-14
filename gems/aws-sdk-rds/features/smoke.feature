# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for RDS

  @rds @smoke
  Scenario: DescribeDBEngineVersionsSuccess
    Given I create a 'Aws::RDS' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_db_engine_versions' with params:
      """
{}
      """
    Then I expect an error was not raised

  @rds @smoke
  Scenario: DescribeDBInstancesFailure
    Given I create a 'Aws::RDS' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_db_instances' with params:
      """
{"db_instance_identifier":"fake-id"}
      """
    Then I expect an error was raised
