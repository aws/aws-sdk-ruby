# language: en
@cloudfront @client
Feature: Amazon CloudFront

  Scenario: Making a basic request
    When I call "list_distributions" on "cloudfront" with:
    """
    { max_items: 1 }
    """
    Then the response "distribution_list.items" should be an array

  Scenario: Error handling
    Given I call "get_distribution" on "cloudfront" with:
    """
    { id: '123' }
    """
    Then I expect the response error code to be "NoSuchDistribution"
    And I expect the response error message to include:
    """
    The specified distribution does not exist.
    """
