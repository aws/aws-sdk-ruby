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
@iam @aliases
Feature: IAM Account Aliases

  As an AWS account holder
  I want to manage IAM account aliases

  @set
  Scenario: Set the account alias
    When I set the account alias
    Then a request should have been made like:
    | TYPE        | NAME         | VALUE                  |
    | param       | Action       | CreateAccountAlias     |
    | param_match | AccountAlias | rubyintegrationtest\d+ |

  @get
  Scenario: Get the account alias
    Given I set the account alias
    Then the account alias should match the one I set
    And a request should have been made like:
    | TYPE        | NAME     | VALUE              |
    | param       | Action   | ListAccountAliases |

  @delete
  Scenario: Get the account alias
    Given I set the account alias
    When I remove the account alias
    Then a request should have been made like:
    | TYPE        | NAME     | VALUE              |
    | param       | Action   | ListAccountAliases |
    And a request should have been made like:
    | TYPE        | NAME         | VALUE                  |
    | param       | Action       | DeleteAccountAlias     |
    | param_match | AccountAlias | rubyintegrationtest\d+ |

  @collection @create
  Scenario: Create an account alias
    When I create an account alias
    Then a request should have been made like:
    | TYPE        | NAME         | VALUE                  |
    | param       | Action       | CreateAccountAlias     |
    | param_match | AccountAlias | rubyintegrationtest\d+ |


  @collection @delete
  Scenario: Delete an account alias
    Given I create an account alias
    When I delete the account alias
    Then a request should have been made like:
    | TYPE        | NAME     | VALUE                      |
    | param       | Action       | DeleteAccountAlias     |
    | param_match | AccountAlias | rubyintegrationtest\d+ |

  @collection @list
  Scenario: Paging account aliases
    Given I create 4 account aliases
    When I list account aliases with a limit of 4 and batch_size of 2
    Then 1 request should have been made like:
    | TYPE        | NAME     | VALUE              |
    | param       | Action   | ListAccountAliases |
    | param       | MaxItems | 2                  |
