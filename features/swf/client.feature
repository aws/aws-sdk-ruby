# language: en
@swf @client
Feature: Amazon Simple Workflow Service

  Scenario: Making a basic request
    When I call "list_domains" on "swf" with:
    """
    { registration_status: 'REGISTERED' }
    """
    Then the response "domain_infos" should be an array

  Scenario: Error handling
    Given I call "describe_domain" on "swf" with:
    """
    { name: 'fake_domain' }
    """
    Then I expect the response error code to be "UnknownResourceFault"
    And I expect the response error message to include:
    """
    Unknown domain: fake_domain
    """
