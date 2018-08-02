# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ElasticsearchService

Background:
  Given I create a client in region 'us-west-2'

  @elasticsearchservice @smoke
  Scenario: Call Aws::ElasticsearchService::Client#list_domain_names and expect it to succeed
  When I call the operation 'list_domain_names' with params:
    """
{}
    """
  Then I expect an error was not raised

  @elasticsearchservice @smoke
  Scenario: Call Aws::Aws::ElasticsearchService::Client#describe_elasticsearch_domain and expect it to fail
  When I call the operation 'describe_elasticsearch_domain' with params:
    """
{"domain_name":"not-a-domain"}
    """
  Then I expect an error was raised
