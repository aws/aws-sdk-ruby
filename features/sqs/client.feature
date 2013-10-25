# language: en
@sqs @client
Feature: Amazon Simple Queue Service

  Scenario: Making a basic request
    When I call "list_queues" on "sqs"
    Then the response "queue_urls" should be an array

  Scenario: Error handling
    Given I call "get_queue_url" on "sqs" with:
    """
    { queue_name: 'fake_queue' }
    """
    Then I expect the response error code to be "AWSSimpleQueueServiceNonExistentQueue"
    And I expect the response error message to include:
    """
    The specified queue does not exist for this wsdl version.
    """
