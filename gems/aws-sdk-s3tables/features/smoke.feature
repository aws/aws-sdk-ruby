# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for S3Tables

  @s3tables @smoke
  Scenario: GetTableBucket_AccessDeniedException
    Given I create a 'Aws::S3Tables' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_table_bucket' with params:
      """
{"table_bucket_arn":"arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}
      """
    Then I expect a 'Aws::S3Tables::Errors::AccessDeniedException' was raised

  @s3tables @smoke
  Scenario: ListTableBuckets_Success
    Given I create a 'Aws::S3Tables' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_table_buckets' with params:
      """
{}
      """
    Then I expect an error was not raised

  @s3tables @smoke
  Scenario: ListNamespaces_AccessDeniedException
    Given I create a 'Aws::S3Tables' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_namespaces' with params:
      """
{"table_bucket_arn":"arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}
      """
    Then I expect a 'Aws::S3Tables::Errors::AccessDeniedException' was raised

  @s3tables @smoke
  Scenario: GetTable_AccessDeniedException
    Given I create a 'Aws::S3Tables' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_table' with params:
      """
{"table_bucket_arn":"arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist","namespace":"doesnotexist","name":"doesnotexist"}
      """
    Then I expect a 'Aws::S3Tables::Errors::AccessDeniedException' was raised

  @s3tables @smoke
  Scenario: GetTableArn_AccessDeniedException
    Given I create a 'Aws::S3Tables' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_table' with params:
      """
{"table_arn":"arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist/table/f577d6ca-c1dd-4686-9f41-62130a40e91b"}
      """
    Then I expect a 'Aws::S3Tables::Errors::AccessDeniedException' was raised

  @s3tables @smoke
  Scenario: GetNamespace_AccessDeniedException
    Given I create a 'Aws::S3Tables' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_namespace' with params:
      """
{"table_bucket_arn":"arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist","namespace":"doesnotexist"}
      """
    Then I expect a 'Aws::S3Tables::Errors::AccessDeniedException' was raised

  @s3tables @smoke
  Scenario: ListTables_AccessDeniedException
    Given I create a 'Aws::S3Tables' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tables' with params:
      """
{"table_bucket_arn":"arn:aws:s3tables:us-east-1:123456789012:bucket/does-not-exist"}
      """
    Then I expect a 'Aws::S3Tables::Errors::AccessDeniedException' was raised
