# language: en
@iam @client
Feature: AWS Identity and Access Management

  Scenario: Making a basic request
    When I call "list_users" on "iam"
    Then the response "users" should be an array

  Scenario: Error handling
    Given I call "get_user" on "iam" with:
    """
    { user_name: 'fake_user' }
    """
    Then I expect the response error code to be "NoSuchEntity"
    And I expect the response error message to include:
    """
    The user with name fake_user cannot be found.
    """
