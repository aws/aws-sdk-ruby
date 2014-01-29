# language: en
@directconnect @client
Feature: AWS Direct Connect

  Scenario: Making a basic request
    When I call the "DescribeOfferings" API
    Then the response should contain a list of "Offerings"

  Scenario: Error handling
    When I attempt to call the "DescribeOfferingDetail" API with:
    | OfferingId | fake-offering |
    Then I expect the response error code to be "DirectConnectClientException"
    And I expect the response error message to include:
    """
    Offering not found: fake-offering
    """
