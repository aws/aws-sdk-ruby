# language: en
@dynamodb @client
Feature: Amazon DynamoDB

  Scenario: Making a basic request
    When I call the "ListTables" API with:
    | Limit | 1 |
    Then the response should contain a list of "TableNames"

  Scenario: Error handling
    When I attempt to call the "DescribeTable" API with:
    | TableName | fake-table |
    Then I expect the response error code to be "ResourceNotFoundException"
    And I expect the response error message to include:
    """
    Requested resource not found: Table: fake-table not found
    """

  @endpointdiscovery
  Scenario: Endpoint Discovery
    When I enable endpoint discovery at client
    And I make describe_limits call
    Then I expect describe_endpoints is called first
    And I expect API call is made through discovered endpoint
    And discovered endpoint is cached
