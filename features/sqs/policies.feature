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

  I want to manage policies on SQS queues.

  @policy
  Scenario: Set a queue policy
    Given I create a queue
    When I set the queue policy
    Then the queue policy should match
    And a request should have been made like:
    | TYPE  | NAME             | VALUE              |
    | param | Action           | GetQueueAttributes |
    | param | AttributeName.1  | Policy             |
    | param | AttributeName.2  | QueueArn           |
