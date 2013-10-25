# language: en
@emr @client
Feature: Amazon EMR

  Scenario: Making a basic request
    When I call "describe_job_flows" on "emr"
    Then the response "job_flows" should be an array

  Scenario: Error handling
    Given I call "describe_job_flows" on "emr" with:
    """
    { job_flow_ids: ['fake_job_flow'] }
    """
    Then I expect the response error code to be "ValidationException"
    And I expect the response error message to include:
    """
    Specified job flow ID not valid
    """
