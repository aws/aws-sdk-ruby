# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ApplicationDiscoveryService

Background:
  Given I create a client in region 'us-west-2'

  @applicationdiscoveryservice @smoke
  Scenario: Call Aws::ApplicationDiscoveryService::Client#describe_agents and expect it to succeed
  When I call the operation 'describe_agents' with params:
    """
{}
    """
  Then I expect an error was not raised
