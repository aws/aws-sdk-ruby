# language: en
@opsworks @client
Feature: Amazon Elastic Compute Cloud

  Scenario: Making a basic request
    When I call "describe_stacks" on "opsworks"
    Then the response "stacks" should be an array

  Scenario: Error handling
    Given I call "describe_layers" on "opsworks" with:
    """
    { stack_id: 'fake_stack' }
    """
    Then I expect the response error code to be "ResourceNotFoundException"
    And I expect the response error message to include:
    """
    Unable to find stack with ID fake_stack
    """
