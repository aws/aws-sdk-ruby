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
@simple_db @items @low_level
Feature: SimpleDB Domains

  As a user of SimpleDB
  I want to query, read, and modify items
  So that I can use SimpleDB

  @put_attributes
  Scenario: Put attributes
    When I replace the values of attribute "color" with "blue" on item "item001"
    Then The "color" attribute of item "item001" should eventually be "blue"

  @put_attributes
  Scenario: Put attributes (with existing value)
    Given I have an item named "item001" whose "color" attribute is "blue"
    When I replace the values of attribute "color" with "red" on item "item001"
    Then The "color" attribute of item "item001" should eventually be "red"

  @put_attributes
  Scenario: Put attributes
    When I replace the values of attribute "color\0" with "blue\0" on item "item001"
    Then The "color\0" attribute of item "item001" should eventually be "blue\0"

  @select
  Scenario: Select
    Given I have an item named "item001" whose "color" attribute is "blue"
    When I perform the select expression "select * from `{domain_name}` where color = 'blue'"
    Then the response should include an item named "item001" with:
    | attribute_name | value |
    | color          | blue  |

  @select @paginate
  Scenario: Select with pagination
    Given I have 2 items with 1024 bytes of attribute data each
    When I perform the select expression "SELECT * FROM `{domain_name}` LIMIT 1"
    Then the response should include a next token
    And making the same request with the next token should yield another page of results

  @delete_attributes
  Scenario: Delete attributes
    Given I have an item named "item001" whose "color" attribute is "blue"
    When I delete the "blue" value of the "color" attribute of item "item001"
    Then the item "item001" should eventually not have a "color" attribute

  @batch_delete_attributes
  Scenario: Delete a batch of attributes
    Given I have 25 items with 3 single-valued attributes each
    When I perform a batch delete of all the attributes
    Then the attributes should no longer exist
