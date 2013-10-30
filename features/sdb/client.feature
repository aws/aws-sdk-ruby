# language: en
@sdb @client
Feature: Amazon SimpleDB

  Scenario: Making a basic request
    When I call "list_domains" on "sdb"
    Then the response "domain_names" should be an array

  Scenario: Error handling
    Given I call "domain_metadata" on "sdb" with:
    """
    { domain_name: 'fake-domain' }
    """
    Then I expect the response error code to be "NoSuchDomain"
    And I expect the response error message to include:
    """
    The specified domain does not exist.
    """
