# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

# language: en
@sqs @messages
Feature: SQS Messages

  I want to be able to send and process messages.

  Scenario: Send an SQS message
    Given I create a queue
    When I send the message "HELLO"
    Then the result should include a message ID
    And the result should have an MD5 digest of "eb61eead90e3b899c6bcbe27ac581660"
    And I should eventually be able to receive "HELLO" from the queue

  Scenario: Visibility timeout
    Given I create a queue
    And I send the message "HELLO"
    When I receive a message with a 60-second visibility timeout
    Then a request should have been made like:
    | TYPE  | NAME              | VALUE          |
    | param | Action            | ReceiveMessage |
    | param | VisibilityTimeout | 60             |

  Scenario: Delete an SQS message
    Given I create a queue
    And I send the message "HELLO"
    And I receive the message "HELLO"
    When I delete the message
    Then a request should have been made like:
    | TYPE        | NAME          | VALUE         |
    | param       | Action        | DeleteMessage |
    | param_match | ReceiptHandle | .+            |

  Scenario: Automatic deletion of SQS messages
    Given I create a queue
    And I send the message "HELLO"
    When I receive a message in a block
    Then a request should have been made like:
    | TYPE  | NAME              | VALUE          |
    | param | Action            | ReceiveMessage |
    And a request should have been made like:
    | TYPE        | NAME          | VALUE         |
    | param       | Action        | DeleteMessage |
    | param_match | ReceiptHandle | .+            |

  @slow
  Scenario: Poll for SQS messages
    Given I create a queue
    And I fork a process to send 50 random numbers to the queue over a period of 30 seconds
    When I poll for messages with an idle timeout of 10 seconds
    Then I should have received all of the messages within 120 seconds
    And each message receipt handle should have been deleted
    And the forked process should have completed without errors

  @long_polling @slow
  Scenario: Long polling for SQS messages
    Given I create a queue
    When I poll for messages with an idle timeout of 5 seconds
    Then I should have received all of the messages within 13-18 seconds
    And exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE          |
    | param | Action | ReceiveMessage |

  @long_polling
  Scenario: Using default long poll value on a queue
    Given I create a queue
    And I set wait time on the queue to 3
    And I poll for mesages with a wait time of "nil"
    Then the queue wait time should eventually be 3
    And I should have received all of the messages within 2-7 seconds

  Scenario: Change message visibility timeout
    Given I create a queue
    And I send the message "HELLO"
    And I receive the message "HELLO"
    When I set the visibility timeout to 60 seconds
    Then a request should have been made like:
    | TYPE        | NAME              | VALUE                   |
    | param       | Action            | ChangeMessageVisibility |
    | param_match | ReceiptHandle     | .+                      |
    | param       | VisibilityTimeout | 60                      |

  Scenario: Receive SQS message with all attributes
    Given I create a queue
    And I send the message "HELLO"
    When I receive the message "HELLO" requesting the following attributes:
    | all |
    Then the message should have the following time fields:
    | sent_at           |
    | first_received_at |
    And the message should have an integer receive count
    And the message should have a string sender ID

  Scenario: Receive SQS message with explicit attributes
    Given I create a queue
    And I send the message "HELLO"
    When I receive the message "HELLO" requesting the following attributes:
    | sender_id         |
    | sent_at           |
    | first_received_at |
    | receive_count     |
    Then the message should have the following time fields:
    | sent_at           |
    | first_received_at |
    And the message should have an integer receive count
    And the message should have a string sender ID
