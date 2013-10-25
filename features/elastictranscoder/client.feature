# language: en
@elastictranscoder @client
Feature: Amazon Elastic Transcoder

  Scenario: Making a basic request
    When I call "list_presets" on "elastictranscoder"
    Then the response "presets" should be an array

  Scenario: Error handling
    Given I call "read_job" on "elastictranscoder" with:
    """
    { id: 'fake_job' }
    """
    Then I expect the response error code to be "ValidationException"
    And I expect the response error message to include:
    """
    Value 'fake_job' at 'id' failed to satisfy constraint
    """
