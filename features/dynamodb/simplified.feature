# language: en
@dynamodb @raw_json
Feature: Amazon DynamoDB without translation

  As a user of Amazon DynamoDB
  I want to disable extra translation of request and responses
  So that I can use the API without extra overhead

  Background:
    Given I disable translation features Aws::DynamoDB

  Scenario: Sending a request with a simplified hash structure
    When I call "list_tables" on "dynamodb" with:
    """
    { 'Limit' => 1 }
    """
    Then the HTTP request body should be:
    """
    {"Limit":1}
    """

  Scenario: Receiving a response with a simplified hash structure
    When I call "list_tables" on "dynamodb"
    Then I expect response data to be a hash
    And I expect response data["TableNames"] to be an array

  Scenario: Using simple mode does not disable error handling
    When I call "describe_table" on "dynamodb" with:
    """
    { 'TableName' => 'fake-table' }
    """
    Then I expect the response error code to be "ResourceNotFoundException"
