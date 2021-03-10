# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for EFS

Background:
  Given I create a client in region 'us-west-2'

  @efs @smoke
  Scenario: Call Aws::EFS::Client#describe_file_systems and expect it to succeed
  When I call the operation 'describe_file_systems' with params:
    """
{}
    """
  Then I expect an error was not raised

  @efs @smoke
  Scenario: Call Aws::Aws::EFS::Client#delete_file_system and expect it to fail
  When I call the operation 'delete_file_system' with params:
    """
{"file_system_id":"fs-c5a1446c"}
    """
  Then I expect an error was raised
