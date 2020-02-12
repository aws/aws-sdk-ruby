# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CodeBuild

Background:
  Given I create a client in region 'us-west-2'

  @codebuild @smoke
  Scenario: Call Aws::CodeBuild::Client#list_builds and expect it to succeed
  When I call the operation 'list_builds' with params:
    """
{}
    """
  Then I expect an error was not raised
