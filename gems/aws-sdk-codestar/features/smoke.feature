# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CodeStar

Background:
  Given I create a client in region 'us-west-2'

  @codestar @smoke
  Scenario: Call Aws::CodeStar::Client#list_projects and expect it to succeed
  When I call the operation 'list_projects' with params:
    """
{}
    """
  Then I expect an error was not raised
