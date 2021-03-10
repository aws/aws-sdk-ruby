# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ElastiCache

Background:
  Given I create a client in region 'us-west-2'

  @elasticache @smoke
  Scenario: Call Aws::ElastiCache::Client#describe_events and expect it to succeed
  When I call the operation 'describe_events' with params:
    """
{}
    """
  Then I expect an error was not raised

  @elasticache @smoke
  Scenario: Call Aws::Aws::ElastiCache::Client#describe_cache_clusters and expect it to fail
  When I call the operation 'describe_cache_clusters' with params:
    """
{"cache_cluster_id":"fake_cluster"}
    """
  Then I expect an error was raised
