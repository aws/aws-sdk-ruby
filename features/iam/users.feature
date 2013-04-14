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
@iam @users
Feature: IAM Users

  As an AWS account holder
  I want to manage IAM users
  So that I can control account access

  @create
  Scenario: Create a user
    When I create an IAM user
    Then a request should have been made like:
    | TYPE        | NAME     | VALUE                      |
    | param       | Action   | CreateUser                 |
    | param_match | UserName | ruby-integreation-test-\d+ |

  @delete
  Scenario: Delete a user
    Given I create an IAM user
    When I delete the IAM user
    Then a request should have been made like:
    | TYPE        | NAME     | VALUE                      |
    | param       | Action   | DeleteUser                 |
    | param_match | UserName | ruby-integreation-test-\d+ |

  @get
  Scenario: Getting user details
    Given I create an IAM user
    When I get a reference to that user
    Then the user created_at dates should match
    And the user paths should match
    And the user arns should match
    And a request should have been made like:
    | TYPE        | NAME     | VALUE   |
    | param       | Action   | GetUser |

  @update
  Scenario: Update user details
    Given I create an IAM user
    When I change the path on the user to "/new/path/"
    Then the user arn should contain the path
    And a request should have been made like:
    | TYPE   | NAME    | VALUE      |
    | param  | Action  | UpdateUser |
    | param  | NewPath | /new/path/ |

  @list
  Scenario: List users
    Given I create an IAM user
    When I list IAM users
    Then the IAM user should be in the list
    And a request should have been made like:
    | TYPE  | NAME   | VALUE     |
    | param | Action | ListUsers |

  @list
  Scenario: Paging users
    Given I create 4 IAM users
    When I list IAM users with a limit of 3 and batch_size of 2
    Then a request should have been made like:
    | TYPE        | NAME     | VALUE     |
    | param       | Action   | ListUsers |
    | param       | MaxItems | 2         |
    And a request should have been made like:
    | TYPE        | NAME     | VALUE     |
    | param       | Action   | ListUsers |
    | param_match | Marker   | .+        |
    | param       | MaxItems | 1         |

  @ses
  Scenario: Creating a user, granting them credentials and making a request
    Given I create an IAM user
    And I create an access key for the user
    And I create an IAM group
    And I add the user to the group
    And I create an access key for the user
    And I add policy to the group that allows listing verified email addresses
    And I wait 5 seconds for eventual consistency
    When I create a new SES interface object with the new access keys
    And I enumerate verified email addresses
    Then a request should have been made like:
    | TYPE  | NAME         | VALUE                      |
    | param | Action       | ListVerifiedEmailAddresses |
    And an error should be raised if I try to verify an email address
