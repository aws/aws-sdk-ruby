# language: en
@cloudsearch @client
Feature: Amazon CloudSearch

  Scenario: Making a basic request
    When I call "describe_domains" on "cloudsearch"
    Then the response "domain_status_list" should be an array

  Scenario: Error handling
    Given I call "describe_index_fields" on "cloudsearch" with:
    """
    { domain_name: "fakedomain" }
    """
    Then I expect the response error code to be "ResourceNotFound"
    And I expect the response error message to include:
    """
    Domain not found: fakedomain
    """
