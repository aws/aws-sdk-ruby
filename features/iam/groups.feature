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
@iam @groups
Feature: IAM Groups

  I want to be able to create, modify, and list IAM groups.

  Scenario: Create IAM group
    When I create an IAM group named "RubyDevelopers"
    Then the result should be a group
    And a request should have been made like:
    | TYPE  | NAME      | VALUE          |
    | param | Action    | CreateGroup    |
    | param | GroupName | RubyDevelopers |

  Scenario: Create IAM group with path
    When I create an IAM group named "RubyDevelopers" with the path "foo/bar"
    Then the result should be a group
    And a request should have been made like:
    | TYPE  | NAME      | VALUE          |
    | param | Action    | CreateGroup    |
    | param | GroupName | RubyDevelopers |
    | param | Path      | /foo/bar/      |

  @memoized
  Scenario: Memoized IAM group attributes from create
    Given I start a memoization block
    When I create an IAM group
    And I access the following attributes of the group:
    | arn         |
    | path        |
    | id          |
    | create_date |
    Then no requests should have been made like:
    | TYPE  | NAME   | VALUE    |
    | param | Action | GetGroup |

  @update
  Scenario: Update group details
    Given I create an IAM group
    When I change the path on the group to "/new/path/"
    Then the group arn should contain the path
    And a request should have been made like:
    | TYPE  | NAME    | VALUE       |
    | param | Action  | UpdateGroup |
    | param | NewPath | /new/path/  |

  Scenario: Delete IAM group
    Given I create an IAM group named "RubyDevelopers"
    When I delete the group
    Then a request should have been made like:
    | TYPE  | NAME      | VALUE          |
    | param | Action    | DeleteGroup    |
    | param | GroupName | RubyDevelopers |

  Scenario: Ask if an IAM group exists (exists)
    Given I create an IAM group named "RubyDevelopers"
    When I ask if the group exists
    Then the result should be true

  Scenario: Ask if an IAM group exists (doesn't exist)
    Given I ask for the group named "DoesNotExist"
    When I ask if the group exists
    Then the result should be false

  Scenario: Add an IAM user to a group
    Given I create an IAM group
    And I create an IAM user
    When I add the user to the group
    Then the user should be in the group
    And the group should be in the list of groups for the user
    And a request should have been made like:
    | TYPE  | NAME      | VALUE          |
    | param | Action    | AddUserToGroup |

  Scenario: Remove an IAM user from a group
    Given I create an IAM group
    And I create an IAM user
    And I add the user to the group
    When I remove the user from the group
    Then the user should not be in the group
    And the group should not be in the list of groups for the user
    And a request should have been made like:
    | TYPE  | NAME      | VALUE          |
    | param | Action    | RemoveUserFromGroup |

  @policy
  Scenario: Add an IAM group policy
    Given I create an IAM group
    When I add a policy named "ReadOnly" to the group
    Then the group should have a policy named "ReadOnly"
    And the group's "ReadOnly" policy should be the same document that I added
    And a request should have been made like:
    | TYPE        | NAME           | VALUE          |
    | param       | Action         | PutGroupPolicy |
    | param       | PolicyName     | ReadOnly       |
    | param_match | PolicyDocument | .+             |

  @policy
  Scenario: List IAM group policies
    Given I create an IAM group
    And I add a policy named "ReadOnly" to the group
    When I list the policies in the group
    Then the result should include the policy I created
    And a request should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | ListGroupPolicies |

  @policy
  Scenario: Remove an IAM group policy
    Given I create an IAM group
    And I add a policy named "ReadOnly" to the group
    When I remove the "ReadOnly" policy from the group
    Then the group should not have a policy named "ReadOnly"
    And a request should have been made like:
    | TYPE  | NAME       | VALUE             |
    | param | Action     | DeleteGroupPolicy |
    | param | PolicyName | ReadOnly          |

  @policy
  Scenario: Remove an IAM group policy (idempotent)
    Given I create an IAM group
    When I remove the "ReadOnly" policy from the group
    Then the group should not have a policy named "ReadOnly"
    And a request should have been made like:
    | TYPE  | NAME       | VALUE             |
    | param | Action     | DeleteGroupPolicy |
    | param | PolicyName | ReadOnly          |

  @list
  Scenario: List IAM groups
    Given I create an IAM group
    When I list IAM groups
    Then the result should include the group I created
    And a request should have been made like:
    | TYPE  | NAME   | VALUE      |
    | param | Action | ListGroups |

  @list
  Scenario Outline: List IAM groups with a path prefix
    Given I create IAM group number 1 with the path "foo/bar"
    And I create IAM group number 2 with the path "foo/baz"
    And I create IAM group number 3 with the path "something/else"
    When I list IAM groups with the path prefix "<prefix>"
    Then the result should include <count> groups
    And the result should include group <group number>
    And a request should have been made like:
    | TYPE  | NAME       | VALUE      |
    | param | Action     | ListGroups |
    | param | PathPrefix | /<prefix>  |

  Examples:
    | prefix    | count | group number |
    | foo       |     2 |            1 |
    | foo       |     2 |            2 |
    | foo/ba    |     2 |            1 |
    | foo/ba    |     2 |            2 |
    | foo/bar   |     1 |            1 |
    | something |     1 |            3 |

  @list
  Scenario: Paging groups
    Given I create 4 IAM groups
    When I list IAM groups with a limit of 3 and batch_size of 2
    Then a request should have been made like:
    | TYPE  | NAME     | VALUE      |
    | param | Action   | ListGroups |
    | param | MaxItems | 2          |
    And a request should have been made like:
    | TYPE        | NAME     | VALUE      |
    | param       | Action   | ListGroups |
    | param_match | Marker   | .+         |
    | param       | MaxItems | 1          |

  @memoized
  Scenario: List groups memoization
    Given I create 4 IAM groups
    And I start a memoization block
    When I compute a hash mapping ARN to group name
    And I compute the list of unique path names among my groups
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE      |
    | param | Action | ListGroups |
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE    |
    | param | Action | GetGroup |

  @memoized
  Scenario: Memoization for listing users in a group
    Given I create an IAM group
    And I create an IAM user
    And I add the user to the group
    And I start a memoization block
    When I compute a hash mapping user ID to user name for users in the group
    And I compute the list of unique path names among users in the group
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE    |
    | param | Action | GetGroup |
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE   |
    | param | Action | GetUser |

  @memoized
  Scenario: Memoization for listing groups for a user
    Given I create an IAM group
    And I create an IAM user
    And I add the user to the group
    And I start a memoization block
    When I compute a hash mapping group ID to group name for groups the user belongs to
    And I compute the list of unique path names for groups the user belongs to
    Then exactly 1 request should have been made like:
    | TYPE  | NAME   | VALUE             |
    | param | Action | ListGroupsForUser |
    And no requests should have been made like:
    | TYPE  | NAME   | VALUE    |
    | param | Action | GetGroup |
