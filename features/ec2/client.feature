# language: en
@ec2 @client
Feature: Amazon Elastic Compute Cloud

  Scenario: Making a basic request
    When I call "describe_regions" on "ec2" with:
    """
    { region_names: ['us-west-2'] }
    """
    Then the response "regions" should be an array

  Scenario: Error handling
    Given I call "describe_instances" on "ec2" with:
    """
    { instance_ids: ['i-12345678'] }
    """
    Then I expect the response error code to be "InvalidInstanceIDNotFound"
    And I expect the response error message to include:
    """
    The instance ID 'i-12345678' does not exist
    """
