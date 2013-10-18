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
@sns
Feature: SNS Message

  As a user of SNS
  I need to be able to verify the authenticity of an SNS message

  @sqs
  Scenario: AWS::SNS::Message verifies message authenticity
    Given I create a queue
    And I create an SNS topic
    And I subscribe the queue to the topic
    And I publish a message to the topic
    And I receive a message from the queue
    When I use the SQS message to construct an SNS message
    Then the message should be authentic

  @sqs
  Scenario: AWS::SNS::Message reject non-authentic messages
    Given I create a queue
    And I create an SNS topic
    And I subscribe the queue to the topic
    And I publish a message to the topic
    And I receive a message from the queue
    When I tamper with the message body
    And I use the SQS message to construct an SNS message
    Then the message should not be authentic
