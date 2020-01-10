# language: en
@simpledb @client
Feature: Amazon SimpleDB

  Scenario: Making a basic request
    When I call the "ListDomains" API
    Then the response should contain a list of "DomainNames"

  Scenario: Error handling
    When I attempt to call the "DomainMetadata" API with:
    | DomainName | fake-domain |
    Then I expect the response error code to be "NoSuchDomain"
    And I expect the response error message to include:
    """
    The specified domain does not exist.
    """
