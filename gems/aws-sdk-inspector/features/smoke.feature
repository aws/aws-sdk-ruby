# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Inspector

Background:
  Given I create a client in region 'us-west-2'

  @inspector @smoke
  Scenario: Call Aws::Inspector::Client#list_assessment_templates and expect it to succeed
  When I call the operation 'list_assessment_templates' with params:
    """
{}
    """
  Then I expect an error was not raised

  @inspector @smoke
  Scenario: Call Aws::Aws::Inspector::Client#list_tags_for_resource and expect it to fail
  When I call the operation 'list_tags_for_resource' with params:
    """
{"resource_arn":"fake-arn"}
    """
  Then I expect an error was raised
