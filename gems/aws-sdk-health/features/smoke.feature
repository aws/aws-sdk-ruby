# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Health

Background:
  Given I create a client in region 'us-east-1'

  @health @smoke
  Scenario: Call Aws::Health::Client#describe_entity_aggregates and expect it to succeed
  When I call the operation 'describe_entity_aggregates' with params:
    """
{}
    """
  Then I expect an error was not raised
