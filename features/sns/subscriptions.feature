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
@sns @subscriptions @sqs
Feature: SNS subscriptions

  I want to be able to create, confirm, delete, and list subscriptions.

  Scenario: Subscribe an SQS queue to an SNS topic
    Given I create a queue
    And I create an SNS topic
    When I subscribe the queue to the topic
    Then the result should be a subscription
    And the subscription should be in the list of subscriptions for the topic

  Scenario: List SNS subscriptions by topic
    Given I create an SNS topic
    And I subscribe the following HTTP endpoints to the topic:
    | http://aws.amazon.com/sns-test-one/ |
    | http://aws.amazon.com/sns-test-two/ |
    When I ask for the list of subscriptions in my account
    Then the result should contain the subscriptions I created

  Scenario: Unsubscribe from an SNS topic
    Given I create a queue
    And I create an SNS topic
    And I subscribe the queue to the topic
    When I unsubscribe the queue from the topic
    Then the subscription should not be in the list of subscriptions for the topic

  # FIXME: write a test that can successfully confirm an actual subscription
  Scenario: Confirm subscription
    Given I create an SNS topic
    When I confirm a subscription with token "FOO" and ask that unsubscribe requests be authenticated, ignoring errors
    Then a request should have been made like:
    | TYPE  | NAME                      | VALUE               |
    | param | Action                    | ConfirmSubscription |
    | param | Token                     | FOO                 |
    | param | AuthenticateOnUnsubscribe | true                |

  Scenario: Ask if an SNS subscription exists (does not exist)
    Given I ask for the SNS subscription with ARN "foo"
    When I ask if the subscription exists
    Then the result should be false

  Scenario: Ask if an SNS subscription exists (exists)
    Given I create a queue
    And I create an SNS topic
    And I subscribe the queue to the topic
    When I ask if the subscription exists
    Then the result should be true
