# language: en
@directconnect @client
Feature: AWS Direct Connect

  Scenario: Making a basic request
    When I call "describe_offerings" on "directconnect"
    Then the response "offerings" should be an array

  Scenario: Error handling
    Given I call "describe_offering_detail" on "directconnect" with:
    """
    { offering_id: 'fake_offering' }
    """
    Then I expect the response error code to be "DirectConnectClientException"
    And I expect the response error message to include:
    """
    Offering not found: fake_offering
    """
