# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for S3Files

  @s3files @smoke
  Scenario: GetFileSystemFailure
    Given I create a 'Aws::S3Files' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_file_system' with params:
      """
{"file_system_id":"fs-00000000000000000"}
      """
    Then I expect a 'Aws::S3Files::Errors::ResourceNotFoundException' was raised

  @s3files @smoke
  Scenario: ListFileSystemsSuccess
    Given I create a 'Aws::S3Files' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_file_systems' with params:
      """
{}
      """
    Then I expect an error was not raised
