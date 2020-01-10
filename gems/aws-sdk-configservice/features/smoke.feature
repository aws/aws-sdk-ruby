# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ConfigService

Background:
  Given I create a client in region 'us-west-2'

  @configservice @smoke
  Scenario: Call Aws::ConfigService::Client#describe_configuration_recorders and expect it to succeed
  When I call the operation 'describe_configuration_recorders' with params:
    """
{}
    """
  Then I expect an error was not raised

  @configservice @smoke
  Scenario: Call Aws::Aws::ConfigService::Client#get_resource_config_history and expect it to fail
  When I call the operation 'get_resource_config_history' with params:
    """
{"resource_type":"fake-type","resource_id":"fake-id"}
    """
  Then I expect an error was raised
