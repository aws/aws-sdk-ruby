# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SSM

Background:
  Given I create a client in region 'us-west-2'

  @ssm @smoke
  Scenario: Call Aws::SSM::Client#list_documents and expect it to succeed
  When I call the operation 'list_documents' with params:
    """
{}
    """
  Then I expect an error was not raised

  @ssm @smoke
  Scenario: Call Aws::Aws::SSM::Client#get_document and expect it to fail
  When I call the operation 'get_document' with params:
    """
{"name":"'fake-name'"}
    """
  Then I expect an error was raised
