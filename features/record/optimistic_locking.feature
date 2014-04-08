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
@orm @optimistic_locking
Feature: Optimistic Locking

  Allows multiple users to access the same record for edits
  Assumes a minimum of conflicts with the data.
  It does this by checking whether another process has made changes to a
  record since it was opened, a SimpleModel::StaleObjectError is thrown
  if that has occurred and the update is ignored.

  Scenario: Optimistic locking ads version tracking column
    Given I configure the example class with:
    """
    string_attr :name
    optimistic_locking :version_id
    """
    And I create a model instance with the following values:
    | attribute | value |
    | name      | abc   |
    When I call save on the model instance
    Then a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Attribute.2.Name    | version_id    |
    | param | Attribute.2.Value   | 1             |
    | param | Attribute.2.Replace | false         |
    | param | Expected.Name       | version_id    |
    | param | Expected.Exists     | false         |

  Scenario: Updating Adding optimstic locking after records have already been saved
    Given I configure the example class with:
    """
    string_attr :name
    optimistic_locking :version_id
    """
    And I create a model instance with the following values:
    | attribute | value    |
    | name      | old name |
    And I call save on the model instance
    When I set the model instance "name" to "new name"
    And I call save on the model instance
    Then a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Expected.Name       | version_id    |
    | param | Expected.Value      | 1             |
    | param | Attribute.2.Name    | version_id    |
    | param | Attribute.2.Value   | 2             |
    | param | Attribute.2.Replace | true          |

  Scenario: Adding optimstic locking after records have already been saved
    Given I configure the example class with:
    """
    string_attr :name
    """
    And I create a model instance with the following values:
    | attribute | value |
    | name      | abc   |
    And I call save on the model instance
    When I enable optimistic locking for the example class
    And I reload the model instance
    And I set the model instance "name" to "new name"
    And I call save on the model instance
    Then a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Expected.Name       | version_id    |
    | param | Expected.Exists     | false         |
    | param | Attribute.2.Replace | true          |
    | param | Attribute.2.Value   | 1             |
    | param | Attribute.2.Name    | version_id    |
