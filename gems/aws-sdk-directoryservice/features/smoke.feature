# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DirectoryService

  @directoryservice @smoke
  Scenario: DescribeDirectoriesSuccess
    Given I create a 'Aws::DirectoryService' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_directories' with params:
      """
{}
      """
    Then I expect an error was not raised

  @directoryservice @smoke
  Scenario: CreateDirectoryFailure
    Given I create a 'Aws::DirectoryService' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'create_directory' with params:
      """
{"name":"","password":"","size":""}
      """
    Then I expect a 'Aws::DirectoryService::Errors::ValidationException' was raised
