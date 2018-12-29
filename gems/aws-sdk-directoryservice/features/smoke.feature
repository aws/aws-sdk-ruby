# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DirectoryService

Background:
  Given I create a client in region 'us-west-2'

  @directoryservice @smoke
  Scenario: Call Aws::DirectoryService::Client#describe_directories and expect it to succeed
  When I call the operation 'describe_directories' with params:
    """
{}
    """
  Then I expect an error was not raised

  @directoryservice @smoke
  Scenario: Call Aws::Aws::DirectoryService::Client#create_directory and expect it to fail
  When I call the operation 'create_directory' with params:
    """
{"name":"","password":"","size":""}
    """
  Then I expect an error was raised
