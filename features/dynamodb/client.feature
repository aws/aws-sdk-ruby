# language: en
@dynamodb @client
Feature: Amazon DynamoDB

  Scenario: Making a basic request
    When I call "list_tables" on "dynamodb" with:
    """
    { limit: 1 }
    """
    Then the response "table_names" should be an array

  Scenario: Error handling
    Given I call "describe_table" on "dynamodb" with:
    """
    { table_name: 'fake_table' }
    """
    Then I expect the response error code to be "ResourceNotFoundException"
    And I expect the response error message to include:
    """
    Requested resource not found: Table: fake_table not found
    """
