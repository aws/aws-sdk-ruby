# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for OpenSearchService

Background:
  Given I create a client in region 'us-west-2'

  @opensearchservice @smoke
  Scenario: Call Aws::OpenSearchService::Client#list_domain_names and expect it to succeed
  When I call the operation 'list_domain_names' with params:
    """
{}
    """
  Then I expect an error was not raised

  @opensearchservice @smoke
  Scenario: Call Aws::Aws::OpenSearchService::Client#describe_domain and expect it to fail
  When I call the operation 'describe_domain' with params:
    """
{"domain_name":"not-a-domain"}
    """
  Then I expect an error was raised
