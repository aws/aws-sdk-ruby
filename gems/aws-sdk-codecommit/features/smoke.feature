# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CodeCommit

Background:
  Given I create a client in region 'us-west-2'

  @codecommit @smoke
  Scenario: Call Aws::CodeCommit::Client#list_repositories and expect it to succeed
  When I call the operation 'list_repositories' with params:
    """
{}
    """
  Then I expect an error was not raised

  @codecommit @smoke
  Scenario: Call Aws::Aws::CodeCommit::Client#list_branches and expect it to fail
  When I call the operation 'list_branches' with params:
    """
{"repository_name":"fake-repo"}
    """
  Then I expect an error was raised
