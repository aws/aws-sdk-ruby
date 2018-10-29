# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Shield

Background:
  Given I create a client in region 'us-east-1'

  @shield @smoke
  Scenario: Call Aws::Shield::Client#list_attacks and expect it to succeed
  When I call the operation 'list_attacks' with params:
    """
{}
    """
  Then I expect an error was not raised
