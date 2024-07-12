# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CodeBuild

  @codebuild @smoke
  Scenario: ListBuildsSuccess
    Given I create a 'Aws::CodeBuild' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_builds' with params:
      """
{}
      """
    Then I expect an error was not raised
