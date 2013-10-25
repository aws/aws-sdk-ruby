# language: en
@sts @client
Feature: AWS STS

  Scenario: Making a basic request
    When I call "get_session_token" on "sts"
    Then the response data should include "credentials"

  Scenario: Error handling
    Given I call "get_federation_token" on "sts" with:
    """
    { name: 'temp', policy: '' }
    """
    Then I expect the response error code to be "ValidationError"
    And I expect the response error message to include:
    """
    Value '' at 'policy' failed to satisfy constraint
    """
