
# language: en
@importexport @client
Feature: AWS Import/Export

  Scenario: Making a basic request
    When I call "list_jobs" on "importexport"
    Then the response "jobs" should be an array

  Scenario: Error handling
    Given I call "get_status" on "importexport" with:
    """
    { job_id: 'fake_job' }
    """
    Then I expect the response error code to be "InvalidJobIdException"
    And I expect the response error message to include:
    """
    No such job fake_job for your account
    """
