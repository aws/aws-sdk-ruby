# language: en
@redshift @client
Feature: Amazon Redshift

  Scenario: Making a basic request
    When I call "describe_cluster_versions" on "redshift"
    Then the response "cluster_versions" should be an array

  Scenario: Error handling
    Given I call "describe_clusters" on "redshift" with:
    """
    { cluster_identifier: 'fake-cluster' }
    """
    Then I expect the response error code to be "ClusterNotFound"
    And I expect the response error message to include:
    """
    Cluster fake-cluster not found.
    """
