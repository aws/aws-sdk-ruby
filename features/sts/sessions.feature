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
@sts @sessions
Feature: Temporary Security Credentials

  I want to be able to get short-lived credentials for AWS requests.

  @static
  Scenario: Get temporary security credentials
    When I ask for temporary security credentials
    Then the result should contain credentials
    And I should be able to use the returned credentials to make EC2 requests
    And I should be able to use the returned credentials to make SNS requests
    And I should be able to use the returned credentials to make SQS requests
    And I should be able to use the returned credentials to make S3 requests

  @static @wip
  Scenario: Get temporary security credentials with an explicit duration
    When I ask for temporary security credentials that expire in 1 hour
    Then the result should contain credentials
    And I should be able to use the returned credentials to make EC2 requests
    And I should be able to use the returned credentials to make SNS requests
    And I should be able to use the returned credentials to make SQS requests
    And I should be able to use the returned credentials to make S3 requests

  @federated
  Scenario: Get federated session credentials
    When I ask for federated session credentials
    Then the result should contain credentials
    And the result should include an ARN for the federated user
    And I should be able to use the returned credentials to make EC2 requests
    And I should be able to use the returned credentials to make SNS requests
    And I should be able to use the returned credentials to make SQS requests
    And I should be able to use the returned credentials to make S3 requests

  @federated @policy
  Scenario: Get federated session credentials with a policy
    When I ask for federated session credentials only allowing access to SNS
    Then the result should contain credentials
    And I should be able to use the returned credentials to make SNS requests
    And I should not be able to use the returned credentials to make SQS requests
    And the result should include an indication of how big the policy is
