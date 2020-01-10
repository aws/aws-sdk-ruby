# language: en
@emr @client
Feature: Amazon EMR

  Scenario: Making a basic request
    When I call the "ListClusters" API
    Then the response should contain a list of "Clusters"

  Scenario: Error handling
    When I attempt to call the "ListClusters" API with:
    | ClusterStates | ['bogus-state'] |
    Then I expect the response error code to be "InvalidRequestException"
    And I expect the response error message to include:
    """
    not valid
    """
