# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Neptune

Background:
  Given I create a client in region 'us-west-2'

  @neptune @smoke
  Scenario: Call Aws::Neptune::Client#describe_db_engine_versions and expect it to succeed
  When I call the operation 'describe_db_engine_versions' with params:
    """
{}
    """
  Then I expect an error was not raised

  @neptune @smoke
  Scenario: Call Aws::Aws::Neptune::Client#describe_db_instances and expect it to fail
  When I call the operation 'describe_db_instances' with params:
    """
{"db_instance_identifier":"fake-id"}
    """
  Then I expect an error was raised
