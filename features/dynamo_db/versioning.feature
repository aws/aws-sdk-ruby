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
@dynamo_db
Feature: DynamoDB Client API Versioning

  The DynamoDB high-level abstraction currently is only compatible with
  the legacy version of the DynamoDB client.

  Scenario: Fall Back to Legacy API Version for High-Level Abstraction
    Given I have configured DynamoDB to use the 2012-08-10 API Version
    When I create a new DynamoDB high-level abstraction object
    Then its client should use the 2011-12-05 API Version

  Scenario: Do Not Fall Back to Legacy API Version for Low-Level Client
    Given I have configured DynamoDB to use the 2012-08-10 API Version
    When I create a new DynamoDB low-level client object
    Then it should use the 2012-08-10 API Version
