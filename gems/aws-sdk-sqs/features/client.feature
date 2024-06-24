# language: en
@sqs @client
Feature: Amazon Simple Queue Service

  Scenario: Making a basic request
    When I call the "ListQueues" API
    Then the response should contain a list of "QueueUrls"

  Scenario: Cross Region Queue Operatoins
    Given I create a queue in "us-west-1"
    When I operate on that queue in "us-east-1"
    Then the request should be made against "us-west-1"

  Scenario: Error handling
    When I attempt to call the "GetQueueUrl" API with:
    | QueueName | fake_queue |
    Then I expect the response error code to be "NonExistentQueue"
    And I expect the response error message to include:
    """
    The specified queue does not exist.
    """
