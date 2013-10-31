# language: en
@route53 @client
Feature: Amazon Route 53

  Scenario: Making a basic request
    When I call "list_hosted_zones" on "route53"
    Then the response "hosted_zones" should be an array

  Scenario: Error handling
    Given I call "get_hosted_zone" on "route53" with:
    """
    { id: 'fake-zone' }
    """
    Then I expect the response error code to be "NoSuchHostedZone"
    And I expect the response error message to include:
    """
    No hosted zone found with ID: fake-zone
    """
