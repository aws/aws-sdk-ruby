# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for DirectConnect

Background:
  Given I create a client in region 'us-west-2'

  @directconnect @smoke
  Scenario: Call Aws::DirectConnect::Client#describe_connections and expect it to succeed
  When I call the operation 'describe_connections' with params:
    """
{}
    """
  Then I expect an error was not raised

  @directconnect @smoke
  Scenario: Call Aws::Aws::DirectConnect::Client#describe_connections and expect it to fail
  When I call the operation 'describe_connections' with params:
    """
{"connection_id":"fake-connection"}
    """
  Then I expect an error was raised
