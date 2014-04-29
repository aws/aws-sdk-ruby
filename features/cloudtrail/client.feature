# language: en
@cloudtrail @client
Feature: AWS CloudTrail

  Scenario: Making a basic request
    When I call the "DescribeTrails" API
    Then the response should contain a "trailList"

  Scenario: Error handling
    When I attempt to call the "CreateTrail" API with:
    | Name         | example           |
    | S3BucketName | not-my-bucket-123 |
    Then I expect the response error code to be "S3BucketDoesNotExistException"
    And I expect the response error message to include:
    """
    S3 bucket does not exist!
    """
