# language: en
@ses @client
Feature: Amazon Simple Email Service

  Scenario: Making a basic request
    When I call "list_identities" on "ses"
    Then the response "identities" should be an array

  Scenario: Error handling
    Given I call "verify_email_identity" on "ses" with:
    """
    { email_address: 'fake_email' }
    """
    Then I expect the response error code to be "InvalidParameterValue"
    And I expect the response error message to include:
    """
    Invalid email address<fake_email>.
    """
