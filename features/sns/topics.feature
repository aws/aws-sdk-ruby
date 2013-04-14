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
@sns @topics
Feature: Managing SNS Topics

  I want to be able to create, list and delete SNS topics.

  Scenario: Create a new topic
    When I create an SNS topic
    Then the topic should have an ARN
    And the topic should have the correct display name
    And a request should have been made like:
    | TYPE  | NAME   | VALUE       |
    | param | Action | CreateTopic |

  Scenario: Create a new topic and find it
    When I create an SNS topic
    Then it should appear in the topic list
    And a request should have been made like:
    | TYPE  | NAME   | VALUE      |
    | param | Action | ListTopics |

  Scenario: Delete a topic
    Given I create an SNS topic
    When I delete the topic
    Then it should not appear in the topic list
    And a request should have been made like:
    | TYPE  | NAME   | VALUE       |
    | param | Action | DeleteTopic |

  Scenario: Setting a topic display name
    Given I create an SNS topic
    When I set the topic display name to "My Topic"
    Then the topic #to_h should look like:
    | KEY          | VALUE    |
    | display_name | My Topic |

  @policy
  Scenario: Set an SNS topic policy
    Given I create an SNS topic
    When I set the topic policy
    Then the topic policy should match
    And a request should have been made like:
    | TYPE  | NAME           | VALUE              |
    | param | Action         | SetTopicAttributes |
    | param | AttributeName  | Policy             |
    And a request should have been made like:
    | TYPE  | NAME           | VALUE              |
    | param | Action         | GetTopicAttributes |

  @sqs
  Scenario: Publish a message to a topic
    Given I create an SNS topic
    And I create a queue
    And I subscribe to the topic with the queue
    When I publish a message to the topic
    Then The queue should eventually have the message

  @delivery_policies
  Scenario:
    Given I create an SNS topic
    And I set the delivery policy to:
    """
    {
      "http" => {
        "disableSubscriptionOverrides" => true,
        "defaultHealthyRetryPolicy" => {
          "minDelayTarget" => 20,
          "numRetries" => 3,
          "numNoDelayRetries" => 0,
          "backoffFunction" => "linear",
          "numMaxDelayRetries" => 0,
          "numMinDelayRetries" => 0,
          "maxDelayTarget" => 20
        }
      }
    }
    """
    Then the delivery policy should be what was passed
    And a request should have been made like:
    | TYPE   | NAME             | VALUE              |
    | param  | Action           | SetTopicAttributes |
    | param  | AttributeName    | DeliveryPolicy     |
    And a request should have been made like:
    | TYPE  | NAME           | VALUE              |
    | param | Action         | GetTopicAttributes |
