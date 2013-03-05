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
@simple_db @high_level @items @count
Feature: SimpleDB Count Items

  As a user of SimpleDB
  I want to count items

  Scenario: Count items
    Given I have 3 items in a domain
    When I count the items in the domain
    Then the result should be 3
    And a select should have been performed like:
    | PART        | VALUE    |
    | output_list | count(*) |

  Scenario Outline: Count items with a limit
    Given I have <count> items in a domain
    When I count the items in the domain with limit <limit>
    Then the result should be <result>
    And a select should have been performed like:
    | PART  | VALUE   |
    | limit | <limit> |

  Examples:
    | count | limit | result |
    |     5 |     3 |      3 |
    |     2 |     3 |      2 |

  Scenario: Count items with conditions
    Given I add the following attributes to "car"
    | name   | value |
    | size   | small |
    And I add the following attributes to "semi truck"
    | name | value |
    | size | large |
    When I count the items in the domain where "size" is "large"
    Then the result should be 1

  @wip
  Scenario: Count items with order
    Given I add the following attributes to "car"
    | name   | value |
    | size   | small |
    And I add the following attributes to "semi truck"
    | name | value |
    | size | large |
    When I count the items in the domain ordering by size
    Then the result should be 2
