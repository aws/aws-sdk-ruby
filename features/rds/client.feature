# language: en
@rds @client
Feature: Amazon RDS

  Scenario: Making a basic request
    When I call "describe_db_engine_versions" on "rds"
    Then the response "db_engine_versions" should be an array

  Scenario: Error handling
    Given I call "describe_db_instances" on "rds" with:
    """
    { db_instance_identifier: 'fake-id' }
    """
    Then I expect the response error code to be "DBInstanceNotFound"
    And I expect the response error message to include:
    """
    DBInstance fake-id not found.
    """
