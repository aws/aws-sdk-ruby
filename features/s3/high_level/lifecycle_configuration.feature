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
@s3 @lifecycle_configuration
Feature: Bucket Lifecycle Configuration

  Scenario:
    Given I create a new bucket
    Then the lifecycle configuration should have 0 rules

  Scenario: Adding expiration rule
    Given I create a new bucket
    When I add a rule with the prefix "abc" that expires in 10 days
    And I add a rule with the prefix "xyz" that expires in 5 days
    And I update the lifecycle configuration
    Then 1 request should have been made like:
    | TYPE   | NAME          | VALUE       |
    | http   | verb          | GET         |
    | http   | uri           | /?lifecycle |
    And 1 request should have been made like:
    | TYPE   | NAME          | VALUE       |
    | http   | verb          | PUT         |
    | http   | uri           | /?lifecycle |

  @expiration_date
  Scenario: Adding expiration rule with date time
    Given I create a new bucket
    When I update the lifecycle configuration like:
    """
      @bucket.lifecycle_configuration.update do
        add_rule 'prefix/a', :id => 'id-1',
          :expiration_time => Date.new(2013, 01, 03)
      end
    """
    Then the lifecycle configuration should have the following rules:
    | ID   | PREFIX   | EXP        | STATUS   |
    | id-1 | prefix/a | 2013-01-03 | Enabled  |
    And 1 request should have been made like:
    | TYPE   | NAME          | VALUE       |
    | http   | verb          | PUT         |
    | http   | uri           | /?lifecycle |

  @tiered_storage
  Scenario: Adding Amazon Glacier transition rule
    Given I create a new bucket
    When I update the lifecycle configuration like:
    """
      @bucket.lifecycle_configuration.update do
        add_rule 'prefix/a', :id => 'id-1',
          :glacier_transition_time => Date.new(2013, 01, 03)
        add_rule 'prefix/b', :id => 'id-2',
          :glacier_transition_time => 15
      end
    """
    Then the lifecycle configuration should have the following rules:
    | ID   | PREFIX   | GLACIER    | STATUS   |
    | id-1 | prefix/a | 2013-01-03 | Enabled  |
    | id-2 | prefix/b | 15         | Enabled  |
    And 1 request should have been made like:
    | TYPE   | NAME          | VALUE       |
    | http   | verb          | PUT         |
    | http   | uri           | /?lifecycle |

  Scenario: Updating a lifecycle configuration (block style)
    Given I create a new bucket
    When I update the lifecycle configuration like:
    """
      @bucket.lifecycle_configuration.update do
        add_rule 'prefix/a', 4, :id => 'id-1'
        add_rule 'prefix/b', 5, :id => 'id-2', :disabled => true
      end
    """
    Then the lifecycle configuration should have the following rules:
    | ID   | PREFIX   | EXP | STATUS   |
    | id-1 | prefix/a | 4   | Enabled  |
    | id-2 | prefix/b | 5   | Disabled |
    And 1 request should have been made like:
    | TYPE   | NAME          | VALUE       |
    | http   | verb          | PUT         |
    | http   | uri           | /?lifecycle |

  Scenario: Removing a rule
    Given I create a new bucket
    When I update the lifecycle configuration like:
    """
      @bucket.lifecycle_configuration.update do
        add_rule 'prefix/a', 4, :id => 'id-1'
        add_rule 'prefix/b', 5, :id => 'id-2', :disabled => true
        add_rule 'prefix/c', 6, :id => 'id-3', :disabled => true
      end
    """
    When I remove the rule with the id "id-2"
    And I update the lifecycle configuration
    Then the lifecycle configuration should have the following rules:
    | ID   | PREFIX   | EXP | STATUS   |
    | id-1 | prefix/a | 4   | Enabled  |
    | id-3 | prefix/c | 6   | Disabled |

  Scenario: Replacing a lifecycle configuration
    Given I create a new bucket
    And I update the lifecycle configuration like:
    """
      @bucket.lifecycle_configuration.update do
        add_rule 'prefix/a', 4, :id => 'id-1'
        add_rule 'prefix/b', 5, :id => 'id-2'
      end
    """
    # NOTE: this calls replace instead of update
    When I update the lifecycle configuration like:
    """
      @bucket.lifecycle_configuration.replace do
        add_rule 'prefix/c', 6, :id => 'id-3'
      end
    """
    Then the lifecycle configuration should have the following rules:
    | ID   | PREFIX   | EXP | STATUS   |
    | id-3 | prefix/c | 6   | Enabled  |
