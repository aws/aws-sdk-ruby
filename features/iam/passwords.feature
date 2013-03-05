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
@iam @passwords
Feature: IAM Account Password Policies

  Scenario: Setting the account password policy
    When I set the account password policy to:
    | OPT                          | VALUE |
    | minimum_password_length      | 12    |
    | require_symbols              | false |
    | require_numbers              | true  |
    | require_uppercase_characters | false |
    | require_lowercase_characters | true  |
    Then the account password policy eventually should be:
    | OPT                          | VALUE |
    | minimum_password_length      | 12    |
    | require_symbols              | false |
    | require_numbers              | true  |
    | require_uppercase_characters | false |
    | require_lowercase_characters | true  |

  Scenario: Deleting account password policy
    Given my account does not have a password policy
    When I set the account password policy to:
    | OPT                          | VALUE |
    | minimum_password_length      | 12    |
    | require_symbols              | false |
    | require_numbers              | true  |
    | require_uppercase_characters | false |
    | require_lowercase_characters | true  |
    And I delete the account password policy
    Then the account password policy should be nil
