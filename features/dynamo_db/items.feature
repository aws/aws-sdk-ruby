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
@dynamo_db @items
Feature: DynamoDB items

  As a user of DynamoDB
  I want to create, update, list and delete items
  So that I can manage the data I store with DynamoDB

  Scenario: DynamoDB Put Item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    When I put an item with the following attributes:
    """
    { "id" => "A",
      "title" => "Cat" }
    """
    Then the result should be a DynamoDB item
    And the item should have the following attributes:
    """
    { "id" => "A",
      "title" => "Cat" }
    """

  Scenario: DynamoDB Put Item with composite key
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    When I put an item with the following attributes:
    """
    { "id" => "A",
      "range" => 3,
      "title" => "Cat" }
    """
    Then the result should be a DynamoDB item
    And the item should have the following attributes:
    """
    { "id" => "A",
      "range" => 3,
      "title" => "Cat" }
    """

  Scenario: Put an item with a binary key
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :binary } }
    """
    When I put an item with the following attributes:
    """
    {
      "id" => "abc",
      "range" => AWS::DynamoDB::Binary.new('abc'),
      "data" => AWS::DynamoDB::Binary.new('data'),
    }
    """
    Then the result should be a DynamoDB item
    And the item should have the following attributes:
    """
    {
      "id" => "abc",
      "range" => AWS::DynamoDB::Binary.new('abc'),
      "data" => AWS::DynamoDB::Binary.new('data'),
    }
    """

  Scenario: DynamoDB Put Item with set-valued attributes
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    When I put an item with the following attributes:
    """
    {
      "id" => "Cat",
      "features" => ["tail", "night vision"],
      "ranks" => [12.3, BigDecimal("21.4179232578941663312")],
      "data" => [
        AWS::DynamoDB::Binary.new('a' * 200),
        AWS::DynamoDB::Binary.new('b'),
      ],
    }
    """
    Then the result should be a DynamoDB item
    And the item should have the following attributes:
    """
    {
      "id" => "Cat",
      "features" => Set.new(["tail", "night vision"]),
      "ranks" => Set.new([
        BigDecimal("12.3"),
        BigDecimal("21.4179232578941663312"),
      ]),
      "data" => Set.new([
        AWS::DynamoDB::Binary.new('a' * 200),
        AWS::DynamoDB::Binary.new('b'),
      ]),
    }
    """

  Scenario: Uploading a small image as a binary attribute
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    When I put an item with an image as a binary attribute
    Then the item's binary attribute should match the image.

  Scenario: Disabling BigDecimal conversion for number attributes
    Given I configure dynamo DB to not convert numbers to big decimal
    And I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    When I put an item with the following attributes:
    """
    {
      "id" => "id",
      "range" => 123.456,
      "sizes" => [1.2, 3.4, 5.6],
    }
    """
    Then the result should be a DynamoDB item
    And the item should have the following attributes:
    """
    {
      "id" => "id",
      "range" => 123.456,
      "sizes" => Set.new([1.2, 3.4, 5.6]),
    }
    """

  Scenario: DynamoDB Put Item returning overwritten data
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "eye color" => "green" }
    """
    When I put an item with the following arguments:
    """
    [{ "id" => "Cat",
       "eye color" => "blue" },
     { :return => :all_old }]
    """
    Then the result should be:
    """
    { "id" => "Cat",
      "eye color" => "green" }
    """

  Scenario Outline: DynamoDB Put Item with expected attribute values
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "version" => 1 }
    """
    When I put an item with the following arguments rescuing "<class>":
    """
    [{ "id" => "Cat",
       "version" => 21 },
     { :if => { "version" => 20 } }]
    """
    Then I should rescue the error with code "<code>"

  Examples:
    | class                                             | code                            |
    | DynamoDB::Errors::ConditionalCheckFailedException | ConditionalCheckFailedException |
    | Errors::ClientError                               | ConditionalCheckFailedException |

  Scenario Outline: DynamoDB Put Item expecting attributes not to exist
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "version" => 1 }
    """
    When I put an item with the following arguments rescuing "<class>":
    """
    [{ "id" => "Cat",
       "version" => 1 },
     { :unless_exists => "version" }]
    """
    Then I should rescue the error with code "<code>"

  Examples:
    | class                                             | code                            |
    | DynamoDB::Errors::ConditionalCheckFailedException | ConditionalCheckFailedException |
    | Errors::ClientError                               | ConditionalCheckFailedException |

  Scenario: Delete a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat" }
    """
    When I delete the item
    Then the item should not exist

  Scenario: Returning old values when deleting a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat" }
    """
    When I delete the item with the following arguments:
    """
    [{ :return => :all_old }]
    """
    Then the result should be:
    """
    { "id" => "Cat" }
    """
    And the item should not exist

  Scenario Outline: Conditionally delete a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "version" => 1 }
    """
    When I delete the item with the following arguments rescuing "<class>":
    """
    [{ :if => { :version => 2 } }]
    """
    Then I should rescue the error with code "<code>"

  Examples:
    | class                                             | code                            |
    | DynamoDB::Errors::ConditionalCheckFailedException | ConditionalCheckFailedException |
    | Errors::ClientError                               | ConditionalCheckFailedException |

  Scenario Outline: Conditionally delete a DynamoDB item, expecting an attribute not to exist
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "version" => 1 }
    """
    When I delete the item with the following arguments rescuing "<class>":
    """
    [{ :unless_exists => :version }]
    """
    Then I should rescue the error with code "<code>"

  Examples:
    | class                                             | code                            |
    | DynamoDB::Errors::ConditionalCheckFailedException | ConditionalCheckFailedException |
    | Errors::ClientError                               | ConditionalCheckFailedException |

  Scenario: Check if a DynamoDB item exists (exists)
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "version" => 1 }
    """
    When I ask if the DynamoDB item exists
    Then the result should be true

  Scenario: Check if a DynamoDB item exists (does not exist)
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I ask for the item with the hash key value "Cat"
    When I ask if the DynamoDB item exists
    Then the result should be false

  Scenario: Check if a DynamoDB item with a range key exists (does not exist)
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string },
      :range_key => { :range => :number } }
    """
    And I ask for the item with the hash key value "Cat" and range key value 12
    When I ask if the DynamoDB item exists
    Then the result should be false

  @list
  Scenario: Paging DynamoDB items
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I create 4 DynamoDB items
    When I list DynamoDB items with a limit of 3 and batch_size of 2
    Then a request should have been made like:
    | TYPE         | NAME         | VALUE    |
    | header_match | x-amz-target | .+\.Scan |
    | json         | ["Limit"]    | 2        |
    And a request should have been made like:
    | TYPE         | NAME                  | VALUE    |
    | header_match | x-amz-target          | .+\.Scan |
    | json         | ["Limit"]             | 1        |
    | json_match   | ["ExclusiveStartKey"] | .+       |
