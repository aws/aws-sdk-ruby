# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CodeDeploy

Background:
  Given I create a client in region 'us-west-2'

  @codedeploy @smoke
  Scenario: Call Aws::CodeDeploy::Client#list_applications and expect it to succeed
  When I call the operation 'list_applications' with params:
    """
{}
    """
  Then I expect an error was not raised

  @codedeploy @smoke
  Scenario: Call Aws::Aws::CodeDeploy::Client#get_deployment and expect it to fail
  When I call the operation 'get_deployment' with params:
    """
{"deployment_id":"d-USUAELQEX"}
    """
  Then I expect an error was raised
