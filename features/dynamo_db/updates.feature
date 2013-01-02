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
@dynamo_db @updates
Feature: Updating DynamoDB items

  Scenario: Change the value of a single attribute in a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 3 }
    """
    When I update the item as follows:
    """
    attributes["age"] = 4
    """
    Then the item should have the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 4 }
    """

  Scenario: Set multiple attributes on a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 3 }
    """
    When I update the item as follows:
    """
    attributes.set(:name => "Scruffy 2",
                   :age => 1)
    """
    Then the item should have the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy 2",
      "age" => 1 }
    """

  Scenario: Return data while updating a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 3 }
    """
    When I update the item as follows:
    """
    attributes.set({ :name => "Scruffy 2",
                     :age => 1 },
                   :return => :updated_old)
    """
    Then the result should be:
    """
    { "name" => "Scruffy",
      "age" => 3 }
    """

  Scenario: Add to an attribute on a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 3 }
    """
    When I update the item as follows:
    """
    attributes.add(:age => 1)
    """
    Then the item should have the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => BigDecimal("4") }
    """

  Scenario: Return data while adding to an attribute on a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 3 }
    """
    When I update the item as follows:
    """
    attributes.add({ :age => 1 }, :return => :all_new)
    """
    Then the result should be:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => BigDecimal("4") }
    """

  Scenario: Delete attributes from a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 3 }
    """
    When I update the item as follows:
    """
    attributes.delete(:age)
    """
    Then the item should have the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy" }
    """

  Scenario: Delete specific attribute values from a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "colors" => ["black", "white"] }
    """
    When I update the item as follows:
    """
    attributes.delete(:colors => "white")
    """
    Then the item should have the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "colors" => Set["black"] }
    """

  Scenario: Return data while deleting attributes from a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 3 }
    """
    When I update the item as follows:
    """
    attributes.delete(:age, :return => :updated_old)
    """
    Then the result should be:
    """
    { "age" => 3 }
    """

  Scenario: Perform a mixed update on a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "colors" => ["black", "white"],
      "favorite_food" => "tuna",
      "status" => "sleeping",
      "age" => 3 }
    """
    When I update the item as follows:
    """
    attributes.update(:return => :updated_new) do |u|
      u.add(:age => 1)
      u.delete(:favorite_food)
      u.delete(:colors => "white")
      u.set(:status => "prowling")
    end
    """
    Then the result should be:
    """
    { "colors" => Set["black"],
      "status" => "prowling",
      "age" => BigDecimal("4") }
    """
    And the item should have the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "colors" => Set["black"],
      "status" => "prowling",
      "age" => BigDecimal("4") }
    """

  Scenario Outline: Perform a conditional update on a DynamoDB item
    Given I have an empty DynamoDB table with options:
    """
    { :hash_key => { :id => :string } }
    """
    And I put an item with the following attributes:
    """
    { "id" => "Cat",
      "name" => "Scruffy",
      "age" => 3 }
    """
    When I update the item as follows rescuing "<class>":
    """
    attributes.add({ :age =>1 }, :if => { :name => "Binky" })
    """
    Then I should rescue the error with code "<code>"

  Examples:
    | class                                             | code                            |
    | DynamoDB::Errors::ConditionalCheckFailedException | ConditionalCheckFailedException |
    | Errors::ClientError                               | ConditionalCheckFailedException |
