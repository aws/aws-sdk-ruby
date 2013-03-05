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
@iam @access_keys
Feature: IAM Signing Certificates

  As an AWS account holder
  I want to manage IAM access keys for the account and users

  @create
  Scenario: Create access keys
    When I create an access key
    Then the access key should have a secret
    And a request should have been made like:
    | TYPE        | NAME             | VALUE           |
    | param       | Action           | CreateAccessKey |

  @secret
  Scenario: Get secret from a new access key
    When I create an access key
    Then the access key should have a secret

  @secret
  Scenario: Get secret from a new access key
    Given I create an access key
    When I get a reference to that access key
    Then accessing the secret should raise an error

  @users @create
  Scenario: Create access keys
    Given I create an IAM user
    When I create an access key for the user
    Then the access key should have a secret
    And a request should have been made like:
    | TYPE        | NAME             | VALUE                       |
    | param       | Action           | CreateAccessKey             |
    | param_match | UserName         | ruby-integreation-test-\d+  |

  @users @secret
  Scenario: Get secret from a new access key
    Given I create an IAM user
    And I create an access key for the user
    When I get a reference to that access key
    Then accessing the secret should raise an error

  @status
  Scenario: Working with access key status
    When I create an access key
    Then the access key status should be "active"
    When I deactivate the access key
    Then the access key status should be "inactive"
    And 2 requests should have been made like:
    | TYPE  | NAME   | VALUE          |
    | param | Action | ListAccessKeys |
    And 1 request should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | UpdateAccessKey |
    | param | Status | Inactive        |

  @memoized
  Scenario: Working with memoized access keys
    Given I start a memoization block
    When I create an access key
    Then the access key status should be "active"
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE          |
    | param | Action | ListAccessKeys |
