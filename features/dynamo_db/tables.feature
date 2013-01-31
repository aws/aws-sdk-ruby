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
@dynamo_db @tables
Feature: DynamoDB Tables

  As a user of DynamoDB
  I want to create, list and delete tables
  So that I can store and query data in them

  @slow
  Scenario: Create a DynamoDB Table
    When I create a DynamoDB table
    Then the result should be a DynamoDB table
    And the table should exist
    And the list of all DynamoDB tables should include the table
    And the table should eventually be active
    And a request should have been made like:
    | TYPE         | NAME         | VALUE            |
    | header_match | x-amz-target | .+\.CreateTable$ |

  @slow
  Scenario: Create a DynamoDB Table with a range key
    When I create a DynamoDB table with a range key
    Then the result should be a DynamoDB table
    And the table should eventually be active
    And the table should have a range key

  @slow
  Scenario: Provisioning Throughput
    Given I create a DynamoDB table
    And the table should eventually be active
    When I update the provisioning throughput to 20 rcu and 15 wcu
    And the table should eventually be active
    Then the table should support 20 read capacity units
    Then the table should support 15 write capacity units
