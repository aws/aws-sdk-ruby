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
@orm @dirty_tracking
Feature: Dirty Tracking

  As an ORM user
  I want to be able to introspect changes to my model

  Scenario: New instances should have no changes
    Given I configure the example class with:
    """
    string_attr :name
    """
    When I create a model instance
    Then the instance should have no changes

  Scenario: Changing attributes
    Given I configure the example class with:
    """
    string_attr :name
    string_attr :tags, :set => true
    """
    When I create a model instance with the following values:
    | attribute | value   |
    | name      | my book |
    | tags      | fiction |
    | tags      | popular |
    Then the following attributes should be changed:
    | attribute |
    | name      |
    | tags      |

  Scenario: partial updates
    Given I configure the example class with:
    """
    string_attr :name
    integer_attr :age, :precision => 3
    """
    And I create a model instance with the following values:
    | attribute | value    |
    | name      | john doe |
    | age       | 40       |
    And I call save on the model instance
    And I set the model instance "name" to "new name"
    When I call save on the model instance
    Then a request should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Attribute.1.Replace | true          |
    | param | Attribute.1.Value   | new name      |
    | param | Attribute.1.Name    | name          |
    And no requests should have been made like:
    | TYPE  | NAME                | VALUE         |
    | param | Action              | PutAttributes |
    | param | Attribute.2.Replace | true          |
    | param | Attribute.2.Value   | 040           |
    | param | Attribute.2.Name    | age           |
