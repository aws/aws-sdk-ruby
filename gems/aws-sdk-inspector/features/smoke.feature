# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Inspector

  @inspector @smoke
  Scenario: ListAssessmentTemplatesSuccess
    Given I create a 'Aws::Inspector' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_assessment_templates' with params:
      """
{}
      """
    Then I expect an error was not raised

  @inspector @smoke
  Scenario: ListTagsForResourceFailure
    Given I create a 'Aws::Inspector' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"fake-arn"}
      """
    Then I expect an error was raised
