# language: en
@cloudfront @client
Feature: Amazon CloudFront

  Scenario: Making a basic request
    When I call the "ListDistributions" API with:
    | MaxItems | 1 |
    Then the response should contain a "DistributionList" with a list of "Items"

  Scenario: Error handling
    When I attempt to call the "GetDistribution" API with:
    | Id | fake-id |
    Then I expect the response error code to be "NoSuchDistribution"
    And I expect the response error message to include:
    """
    The specified distribution does not exist.
    """
