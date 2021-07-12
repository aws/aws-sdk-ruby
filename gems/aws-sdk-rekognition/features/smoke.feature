# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Rekognition

Background:
  Given I create a client in region 'us-west-2'

  @rekognition @smoke
  Scenario: Call Aws::Rekognition::Client#list_collections and expect it to succeed
  When I call the operation 'list_collections' with params:
    """
{}
    """
  Then I expect an error was not raised
