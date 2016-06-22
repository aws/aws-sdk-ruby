# language: en
@route53_domains @client
Feature: Amazon Route53 Domains

  Scenario: Making a basic request
    When I call the "ListDomains" API
    Then the response should contain a list of "Domains"

  Scenario: Error handling
    When I attempt to call the "GetDomainDetail" API with:
    | DomainName | fake-domain-name |
    Then I expect the response error code to be "InvalidInput"
    And I expect the response error message to include:
    """
    Errors
    """
