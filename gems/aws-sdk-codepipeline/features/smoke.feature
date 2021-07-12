# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CodePipeline

Background:
  Given I create a client in region 'us-west-2'

  @codepipeline @smoke
  Scenario: Call Aws::CodePipeline::Client#list_pipelines and expect it to succeed
  When I call the operation 'list_pipelines' with params:
    """
{}
    """
  Then I expect an error was not raised

  @codepipeline @smoke
  Scenario: Call Aws::Aws::CodePipeline::Client#get_pipeline and expect it to fail
  When I call the operation 'get_pipeline' with params:
    """
{"name":"fake-pipeline"}
    """
  Then I expect an error was raised
