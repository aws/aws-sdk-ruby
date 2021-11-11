# language: en
@ses @client
Feature: Amazon Simple Email Service

  Scenario: Making a basic request
    When I call the "ListIdentities" API
    Then the response should contain a list of "Identities"

  Scenario: Error handling
    When I attempt to call the "VerifyEmailIdentity" API with:
    | EmailAddress | fake_email |
    Then I expect the response error code to be "InvalidParameterValue"
    And I expect the response error message to include:
    """
    Invalid email address fake_email.
    """
