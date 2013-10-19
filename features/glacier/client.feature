# language: en
@ec2 @glacier
Feature: Amazon Glacier

  Scenario: Listing vaults
    When I call "list_vaults" on "glacier" with the following params:
    """
    { account_id: '-' }
    """
    Then the response data should include a "vault_list"
    And the response "vault_list" should be an array

  Scenario: Error handling
    When I call "list_vaults" on "glacier" with the following params:
    """
    { account_id: 'abcmnoxyz' }
    """
    Then a "AccessDeniedException" error should be raised
