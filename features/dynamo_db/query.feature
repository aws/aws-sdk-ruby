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
@dynamo_db @query
Feature: DynamoDB Query

  As a customer of DynamoDB
  I want to be able to efficiently query items that have the same hash key

  Scenario: Query DynamoDB items by hash key
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "A",
      "range" => 1,
      "name" => "Scruffy" }
    """
    And I put an item with the following attributes:
    """
    { "id" => "A",
      "range" => 2,
      "name" => "Rufus" }
    """
    And I put an item with the following attributes:
    """
    { "id" => "B",
      "range" => 3,
      "name" => "Max" }
    """
    When I query the table with the following options:
    """
    { :hash_value => "A",
      :range_greater_than => 1 }
    """
    Then the result should include an item with the following attributes:
    """
    { "id" => "A",
      "range" => 2,
      "name" => "Rufus" }
    """
    And a request should have been made like:
    | TYPE         | NAME                                                   | VALUE      |
    | header_match | x-amz-target                                           | .+\.Query$ |
    | json         | ["HashKeyValue"]["S"]                                  | A          |
    | json         | ["RangeKeyCondition"]["ComparisonOperator"]            | GT         |
    | json         | ["RangeKeyCondition"]["AttributeValueList"].first["N"] | 1          |

  Scenario: Query DynamoDB items with a range key equality condition
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    When I query the table with the following options:
    """
    { :hash_value => "A",
      :range_value => 1 }
    """
    Then a request should have been made like:
    | TYPE         | NAME                                                   | VALUE      |
    | header_match | x-amz-target                                           | .+\.Query$ |
    | json         | ["HashKeyValue"]["S"]                                  | A          |
    | json         | ["RangeKeyCondition"]["ComparisonOperator"]            | EQ         |
    | json         | ["RangeKeyCondition"]["AttributeValueList"].first["N"] | 1          |

  Scenario: Query DynamoDB items with a range key BETWEEN condition
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    When I query the table with the following options:
    """
    { :hash_value => "A",
      :range_value => 1..100 }
    """
    Then a request should have been made like:
    | TYPE         | NAME                                                | VALUE      |
    | header_match | x-amz-target                                        | .+\.Query$ |
    | json         | ["HashKeyValue"]["S"]                               | A          |
    | json         | ["RangeKeyCondition"]["ComparisonOperator"]         | BETWEEN    |
    | json         | ["RangeKeyCondition"]["AttributeValueList"].size    | 2          |
    | json         | ["RangeKeyCondition"]["AttributeValueList"][0]["N"] | 1          |
    | json         | ["RangeKeyCondition"]["AttributeValueList"][1]["N"] | 100        |

  Scenario: Query DynamoDB items with a range key less than condition
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    When I query the table with the following options:
    """
    { :hash_value => "A",
      :range_less_than => 100 }
    """
    Then a request should have been made like:
    | TYPE         | NAME                                                   | VALUE      |
    | header_match | x-amz-target                                           | .+\.Query$ |
    | json         | ["HashKeyValue"]["S"]                                  | A          |
    | json         | ["RangeKeyCondition"]["ComparisonOperator"]            | LT         |
    | json         | ["RangeKeyCondition"]["AttributeValueList"].first["N"] | 100        |

  Scenario: Query DynamoDB items with a range key greater than or equal to condition
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    When I query the table with the following options:
    """
    { :hash_value => "A",
      :range_gte => 100 }
    """
    Then a request should have been made like:
    | TYPE         | NAME                                                   | VALUE      |
    | header_match | x-amz-target                                           | .+\.Query$ |
    | json         | ["HashKeyValue"]["S"]                                  | A          |
    | json         | ["RangeKeyCondition"]["ComparisonOperator"]            | GE         |
    | json         | ["RangeKeyCondition"]["AttributeValueList"].first["N"] | 100        |

  Scenario: Query DynamoDB items with a range key less than or equal to condition
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    When I query the table with the following options:
    """
    { :hash_value => "A",
      :range_lte => 100 }
    """
    Then a request should have been made like:
    | TYPE         | NAME                                                   | VALUE      |
    | header_match | x-amz-target                                           | .+\.Query$ |
    | json         | ["HashKeyValue"]["S"]                                  | A          |
    | json         | ["RangeKeyCondition"]["ComparisonOperator"]            | LE         |
    | json         | ["RangeKeyCondition"]["AttributeValueList"].first["N"] | 100        |

  Scenario: Query DynamoDB items with a range key begins with condition
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :string } }
    """
    When I query the table with the following options:
    """
    { :hash_value => "A",
      :range_begins_with => "foo" }
    """
    Then a request should have been made like:
    | TYPE         | NAME                                                   | VALUE       |
    | header_match | x-amz-target                                           | .+\.Query$  |
    | json         | ["HashKeyValue"]["S"]                                  | A           |
    | json         | ["RangeKeyCondition"]["ComparisonOperator"]            | BEGINS_WITH |
    | json         | ["RangeKeyCondition"]["AttributeValueList"].first["S"] | foo         |
