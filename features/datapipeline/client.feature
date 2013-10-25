# language: en
@datapipeline @client @pending
Feature: AWS Data Pipeline

  Scenario: Making a basic request
    When I call "list_pipelines" on "datapipeline"
    Then the response "pipeline_id_list" should be an array

  Scenario: Error handling
    Given I call "describe_pipelines" on "datapipeline" with:
    """
    { pipeline_ids: ['fake_pipeline'] }
    """
    Then I expect the response error code to be "PipelineNotFoundException"
    And I expect the response error message to include:
    """
    fake_pipeline pipeline does not exist
    """
