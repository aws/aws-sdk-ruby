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
@iam @users @policy
Feature: IAM User Policies

  I want to be able to add and remove policies from an IAM user.

  Scenario: Add an IAM user policy
    Given I create an IAM user
    When I add a policy named "ReadOnly" to the user
    Then the user should have a policy named "ReadOnly"
    And the user's "ReadOnly" policy should be the same document that I added
    And a request should have been made like:
    | TYPE        | NAME           | VALUE         |
    | param       | Action         | PutUserPolicy |
    | param       | PolicyName     | ReadOnly      |
    | param_match | PolicyDocument | .+            |

  Scenario: List IAM user policies
    Given I create an IAM user
    And I add a policy named "ReadOnly" to the user
    When I list the policies in the user
    Then the result should include the policy I created
    And a request should have been made like:
    | TYPE  | NAME   | VALUE            |
    | param | Action | ListUserPolicies |

  Scenario: Remove an IAM user policy
    Given I create an IAM user
    And I add a policy named "ReadOnly" to the user
    When I remove the "ReadOnly" policy from the user
    Then the user should not have a policy named "ReadOnly"
    And a request should have been made like:
    | TYPE  | NAME       | VALUE            |
    | param | Action     | DeleteUserPolicy |
    | param | PolicyName | ReadOnly         |

  Scenario: Remove an IAM user policy (idempotent)
    Given I create an IAM user
    When I remove the "ReadOnly" policy from the user
    Then the user should not have a policy named "ReadOnly"
    And a request should have been made like:
    | TYPE  | NAME       | VALUE            |
    | param | Action     | DeleteUserPolicy |
    | param | PolicyName | ReadOnly         |
