

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
@ops_works @client
Feature: OpsWorks Client

  @iam
  Scenario: Creating and deleting user profiles
    Given I create an IAM user
    And I create an OpsWorks user profile
    When I call #describe_user_profiles with the IAM user arn
    Then the response should contain the user profile I created

  Scenario: Error handling
    Given I call create stack with an invalid service role arn
    Then the error code should be "ValidationException"
    Then the error message should be:
    """
    Invalid Service Role Arn
    """
