# language: en
@elasticache @client
Feature: ElastiCache

  Scenario: Making a basic request
    When I call "describe_events" on "elasticache"
    Then the response "events" should be an array

  Scenario: Error handling
    Given I call "describe_cache_clusters" on "elasticache" with:
    """
    { cache_cluster_id: 'fake_cluster' }
    """
    Then I expect the response error code to be "InvalidParameterValue"
    And I expect the response error message to include:
    """
    The parameter CacheClusterIdentifier is not a valid identifier.
    """
