# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ECR

  @ecr @smoke
  Scenario: DescribeRepositoriesSuccess
    Given I create a 'Aws::ECR' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_repositories' with params:
      """
{}
      """
    Then I expect an error was not raised

  @ecr @smoke
  Scenario: ListImagesFailure
    Given I create a 'Aws::ECR' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_images' with params:
      """
{"repository_name":"not-a-real-repository"}
      """
    Then I expect an error was raised
