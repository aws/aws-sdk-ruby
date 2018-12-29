# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ECR

Background:
  Given I create a client in region 'us-west-2'

  @ecr @smoke
  Scenario: Call Aws::ECR::Client#describe_repositories and expect it to succeed
  When I call the operation 'describe_repositories' with params:
    """
{}
    """
  Then I expect an error was not raised

  @ecr @smoke
  Scenario: Call Aws::Aws::ECR::Client#list_images and expect it to fail
  When I call the operation 'list_images' with params:
    """
{"repository_name":"not-a-real-repository"}
    """
  Then I expect an error was raised
