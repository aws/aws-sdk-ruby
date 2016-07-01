# language: en
@machinelearning @client
Feature: Amazon Machine Learning

  Scenario: Making a basic request
    When I call the "DescribeMLModels" API
    Then the response should contain a list of "Results"

  Scenario: Error handling
    When I attempt to call the "GetMLModel" API with:
    | MLModelId | fake-model |
    Then I expect the response error code to be "ResourceNotFoundException"
    And I expect the response error message to include:
    """
    No MLModel with id fake-model exists
    """
