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
@support @client
Feature: AWS Support client

  Scenario: Describe services
    When I use the client to describe services
    Then the result should contain service "DynamoDB" with code "amazon-dynamodb"
    And a request should have been made like:
    | TYPE   | NAME         | VALUE                                |
    | header | x-amz-target | AWSSupport_20130415.DescribeServices |

  Scenario: Errors
    When I use the client to create a case
    Then I should receive an error with:
    | code                | message                                                                                                                                                           |
    | ValidationException | 1 validation error detected: Value 'INVALID-CODE' at 'serviceCode' failed to satisfy constraint: Member must satisfy regular expression pattern: [0-9a-z\-_]+ |
