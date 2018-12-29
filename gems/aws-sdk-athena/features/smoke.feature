# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Athena

Background:
  Given I create a client in region 'us-west-2'

  @athena @smoke
  Scenario: Call Aws::Athena::Client#list_named_queries and expect it to succeed
  When I call the operation 'list_named_queries' with params:
    """
{}
    """
  Then I expect an error was not raised
