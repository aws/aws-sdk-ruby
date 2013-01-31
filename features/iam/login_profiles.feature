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
@iam @login_profiles
Feature: IAM Login Profiles

  As an AWS account holder
  I want to manage IAM login profiles
  So that I can control access to the AWS Management Console

  Scenario: Create IAM login profile
    Given I create an IAM user
    When I set the password for the user's login profile
    Then the IAM user should have a login profile
    And a request should have been made like:
    | TYPE  | NAME   | VALUE              |
    | param | Action | CreateLoginProfile |

  @memoized
  Scenario: Memoized IAM login profile create date
    Given I create an IAM user
    And I start a memoization block
    And I set the password for the user's login profile
    When I get the create date for the user's login profile
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE           |
    | param | Action | GetLoginProfile |

  Scenario: Update IAM login profile
    Given I create an IAM user
    And I set the password for the user's login profile
    When I set the password for the user's login profile
    Then a request should have been made like:
    | TYPE  | NAME   | VALUE              |
    | param | Action | UpdateLoginProfile |
