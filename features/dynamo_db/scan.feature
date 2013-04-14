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
@dynamo_db @scan
Feature: DynamoDB Scan

  As a customer of DynamoDB
  I want to conduct full table scans of my items with potentially complex conditions

  Scenario: Scan DynamoDB items with equality conditions
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "1",
      "name" => "Scruffy",
      "age" => 3 }
    """
    And I put an item with the following attributes:
    """
    { "id" => "2",
      "name" => "Rufus",
      "age" => 5 }
    """
    And I put an item with the following attributes:
    """
    { "id" => "3",
      "name" => "Rufus",
      "age" => 1 }
    """
    When I scan the table as follows:
    """
    where(:name => "Rufus",
          :age => 1)
    """
    Then the result should include an item with the following attributes:
    """
    { "id" => "3",
      "name" => "Rufus",
      "age" => 1 }
    """
    And a request should have been made like:
    | TYPE         | NAME                                                    | VALUE     |
    | header_match | x-amz-target                                            | .+\.Scan$ |
    | json         | ["ScanFilter"]["name"]["ComparisonOperator"]            | EQ        |
    | json         | ["ScanFilter"]["name"]["AttributeValueList"].first["S"] | Rufus     |
    | json         | ["ScanFilter"]["age"]["ComparisonOperator"]             | EQ        |
    | json         | ["ScanFilter"]["age"]["AttributeValueList"].first["N"]  | 1         |

  Scenario: Scan DynamoDB items with various conditions
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    When I scan the table as follows:
    """
    where(:a).less_than(1000).
      and(:b).greater_than(2.5).
      and(:c).lte(1).
      and(:d).gte(12).
      and(:e).not_equal_to(5).
      and(:f).not_null.
      and(:g).is_null.
      and(:h).contains("something").
      and(:i).does_not_contain("something else").
      and(:j).begins_with("prefix").
      and(:k).in("a", "b", "c").
      and(:l).between(0, 100)
    """
    Then a request should have been made like:
    | TYPE         | NAME                                                 | VALUE          |
    | header_match | x-amz-target                                         | .+\.Scan$      |
    | json         | ["ScanFilter"]["a"]["ComparisonOperator"]            | LT             |
    | json         | ["ScanFilter"]["a"]["AttributeValueList"].first["N"] | 1000           |
    | json         | ["ScanFilter"]["b"]["ComparisonOperator"]            | GT             |
    | json         | ["ScanFilter"]["b"]["AttributeValueList"].first["N"] | 2.5            |
    | json         | ["ScanFilter"]["c"]["ComparisonOperator"]            | LE             |
    | json         | ["ScanFilter"]["c"]["AttributeValueList"].first["N"] | 1              |
    | json         | ["ScanFilter"]["d"]["ComparisonOperator"]            | GE             |
    | json         | ["ScanFilter"]["d"]["AttributeValueList"].first["N"] | 12             |
    | json         | ["ScanFilter"]["e"]["ComparisonOperator"]            | NE             |
    | json         | ["ScanFilter"]["e"]["AttributeValueList"].first["N"] | 5              |
    | json         | ["ScanFilter"]["f"]["ComparisonOperator"]            | NOT_NULL       |
    | json         | ["ScanFilter"]["f"]["AttributeValueList"].size       | 0              |
    | json         | ["ScanFilter"]["g"]["ComparisonOperator"]            | NULL           |
    | json         | ["ScanFilter"]["g"]["AttributeValueList"].size       | 0              |
    | json         | ["ScanFilter"]["h"]["ComparisonOperator"]            | CONTAINS       |
    | json         | ["ScanFilter"]["h"]["AttributeValueList"].first["S"] | something      |
    | json         | ["ScanFilter"]["i"]["ComparisonOperator"]            | NOT_CONTAINS   |
    | json         | ["ScanFilter"]["i"]["AttributeValueList"].first["S"] | something else |
    | json         | ["ScanFilter"]["j"]["ComparisonOperator"]            | BEGINS_WITH    |
    | json         | ["ScanFilter"]["j"]["AttributeValueList"].first["S"] | prefix         |
    | json         | ["ScanFilter"]["k"]["ComparisonOperator"]            | IN             |
    | json         | ["ScanFilter"]["k"]["AttributeValueList"].size       | 3              |
    | json         | ["ScanFilter"]["k"]["AttributeValueList"][0]["S"]    | a              |
    | json         | ["ScanFilter"]["k"]["AttributeValueList"][1]["S"]    | b              |
    | json         | ["ScanFilter"]["k"]["AttributeValueList"][2]["S"]    | c              |
    | json         | ["ScanFilter"]["l"]["ComparisonOperator"]            | BETWEEN        |
    | json         | ["ScanFilter"]["l"]["AttributeValueList"].size       | 2              |
    | json         | ["ScanFilter"]["l"]["AttributeValueList"][0]["N"]    | 0              |
    | json         | ["ScanFilter"]["l"]["AttributeValueList"][1]["N"]    | 100            |

  Scenario: Count DynamoDB items using Scan
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "1",
      "name" => "Scruffy",
      "age" => 3 }
    """
    And I put an item with the following attributes:
    """
    { "id" => "2",
      "name" => "Rufus",
      "age" => 5 }
    """
    And I put an item with the following attributes:
    """
    { "id" => "3",
      "name" => "Rufus",
      "age" => 1 }
    """
    When I count the items in the table with the following conditions:
    """
    where(:name => "Rufus",
          :age => 1)
    """
    Then the result should be 1
    And a request should have been made like:
    | TYPE         | NAME         | VALUE     |
    | header_match | x-amz-target | .+\.Scan$ |
    | json         | ["Count"]    | true      |
