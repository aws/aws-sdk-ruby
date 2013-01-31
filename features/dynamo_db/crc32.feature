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
@dynamo_db @crc32
Feature: CRC32 response validation

  Background:
    Given I have an empty DynamoDB table

  Scenario: Retry on corrupted request
    Given my first request is corrupted with CRC checking ON
    When I list all tables
    Then the request should be retried
    And the response should contain the table

  Scenario: Failed retries on corrupted request
    Given all of my requests are corrupted with CRC checking ON
    When I list all tables
    And the request is retried the maximum number of times
    Then the request should fail with a CRC checking error

  Scenario: Ignore corrupted request with CRC checking OFF
    Given my first request is corrupted with CRC checking OFF
    When I list all tables
    Then the request should not be retried
    And the response should not contain the table

  Scenario: Handling large data responses
    Given I have a large item "LargeItem" in the table
    And I get the attribute "data" from the key "LargeItem"
    Then the attribute length should be greater than 4096
