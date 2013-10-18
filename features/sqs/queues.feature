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
@sqs @queues
Feature: SQS Queues

  I want to be able to create, list, and delete queues

  Scenario: Create SQS Queue
    When I create a queue
    Then the result should be a queue object
    And the queue should be in the list of all queues

  Scenario Outline: List SQS Queues
    Given I create a queue with a name that starts with "<create prefix>"
    When I ask for the list of queues starting with "<list prefix>"
    Then the result <expectation> include the queue I created

  Examples:
    | create prefix | list prefix | expectation |
    | fred          | fred        | should      |
    | freddy        | fred        | should      |
    | bob           | fred        | should not  |

  Scenario: Ask if SQS queue exists (does not exist)
    Given I ask for the queue with URL "http://sqs.us-east-1.amazonaws.com/123456781234/does-not-exist"
    When I ask if the queue exists
    Then the result should be false

  Scenario: Delete Queue
    Given I create a queue
    When I delete the queue
    Then the queue should eventually not exist

  Scenario: Ask if SQS queue exists (exists)
    Given I create a queue
    And I wait for it to be in the list of all queues
    When I ask if the queue exists
    Then the result should be true

  Scenario: Get queue attributes
    Given I create a queue
    Then the following integer fields should be present:
    | visible_messages         |
    | invisible_messages       |
    | visibility_timeout       |
    | maximum_message_size     |
    | message_retention_period |
    | wait_time_seconds        |
    And the following date/time fields should contain values within the last hour:
    | created_timestamp       |
    | last_modified_timestamp |
    And the queue ARN should end with the queue name

  Scenario: Set queue attributes should use a flattened map
    Given I create a queue
    And I set the "delay_seconds" attribute to 10
    # notice the flattened map (no .entry.)
    Then a request should have been made like:
    | TYPE   | NAME              | VALUE              |
    | param  | Action            | SetQueueAttributes |
    | param  | Attribute.1.Name  | DelaySeconds       |
    | param  | Attribute.1.Value | 10                 |

  Scenario: Set SQS message visibility timeout
    Given I create a queue
    When I set the queue's visibility timeout to 42
    Then the queue's visibility timeout should eventually be 42

  Scenario: Set SQS max. message size
    Given I create a queue
    When I set the queue's maximum message size to 1024
    Then the queue's maximum message size should eventually be 1024

  Scenario: Set SQS message retention period
    Given I create a queue
    When I set the queue's message retention period to 3600
    Then the queue's message retention period should eventually be 3600

  Scenario: Set SQS wait time seconds
    Given I create a queue
    When I set wait time on the queue to 7
    Then the queue wait time should eventually be 7

  Scenario: Getting a queue by its name
    Given I create a queue
    When I access the queue by name
    Then a request should have been made like:
    | TYPE        | NAME      | VALUE                     |
    | param       | Action    | GetQueueUrl               |
    | param_match | QueueName | ruby-integration-test-\d+ |

  Scenario: Sending messages in a batch
    Given I create a queue
    When I send the following messages in a batch:
    | MESSAGE |
    | abc     |
    | mno     |
    | xyz     |
    | 123     |
    Then 4 sent messages should have been returned with the correct md5:
    | MD5                              |
    | 900150983cd24fb0d6963f7d28e17f72 |
    | d1cf6a6090003989122c4483ed135d55 |
    | d16fb36f0911f878998c136191af705e |
    | 202cb962ac59075b964b07152d234b70 |

  Scenario: Sending messages in a batch with failures
    Given I create a queue
    When I send the following messages in a batch:
    | MESSAGE |
    | abc     |
    | mno     |
    |         |
    | 123     |
    Then 3 sent messages should have been returned with the correct md5:
    | MD5                              |
    | 900150983cd24fb0d6963f7d28e17f72 |
    | d1cf6a6090003989122c4483ed135d55 |
    | 202cb962ac59075b964b07152d234b70 |
    And 1 message should have failed

  Scenario: Deleting messages in a batch
    Given I create a queue
    And I send the following messages in a batch:
    | MESSAGE |
    | abc     |
    | mno     |
    | xyz     |
    When I receive 3 messages
    And I delete the messages
    Then a request should have been made like:
    | TYPE  | NAME   | VALUE              |
    | param | Action | DeleteMessageBatch |

  Scenario: Making a queue request across regions
    When I create a queue in "us-west-1"
    Then I should be able to send a message using a "us-east-1" client
