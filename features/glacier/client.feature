# language: en
@glacier
Feature: Amazon Glacier

  Scenario: Listing vaults
    When I call "list_vaults" on "glacier" with:
    """
    { account_id: '-' }
    """
    Then the response data should include "vault_list"
    And the response "vault_list" should be an array

  @upload
  Scenario: Uploading an archive from a string
    When I upload an archive with the contents "Hello World!"
    Then I should be able to delete the archive

  @upload @slow
  Scenario: Uploading and deleting an archive
    When I upload an archive from a 5.5MB large file
    Then I should be able to delete the archive

  Scenario: Error handling
    When I call "list_vaults" on "glacier" with:
    """
    { account_id: 'abcmnoxyz' }
    """
    Then a "AccessDeniedException" error should be raised
