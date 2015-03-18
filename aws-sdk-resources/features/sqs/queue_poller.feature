# language: en
@sqs @queue_poller
Feature: Amazon SQS Queue Poller

  @slow
  Scenario: Making a basic request
    Given I have have a queue
    And I send 10 messages to the queue
    When I poll 5 messages at a time with a 2 second idle timeout
    Then I should have received all 10 messages
