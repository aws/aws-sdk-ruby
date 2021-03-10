# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudSearch

Background:
  Given I create a client in region 'us-west-2'

  @cloudsearch @smoke
  Scenario: Call Aws::CloudSearch::Client#describe_domains and expect it to succeed
  When I call the operation 'describe_domains' with params:
    """
{}
    """
  Then I expect an error was not raised

  @cloudsearch @smoke
  Scenario: Call Aws::Aws::CloudSearch::Client#describe_index_fields and expect it to fail
  When I call the operation 'describe_index_fields' with params:
    """
{"domain_name":"fakedomain"}
    """
  Then I expect an error was raised
