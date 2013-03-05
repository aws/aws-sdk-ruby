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
@dynamo_db @batch_get
Feature: DynamoDB Tables

  Scenario: Batch get items
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    When I batch put 25 items to the table
    Then I should be able to batch get the same 25 items

  Scenario: Batch get with consistent reads
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    When I batch put 25 items to the table
    Then I should be able to batch get the same 25 items consistently
