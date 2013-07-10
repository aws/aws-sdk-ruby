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
@orm @dnamo_db @hash_model
Feature: HashModel Basic Functionality

  @slow
  Scenario: Create table from HashModel class
    Given I set the AWS::Record.table_name_prefix to "ruby-integration-test-"
    And I set the example class shard name to "example-class"
    When I call create_table on the HashModel example class
    Then the table should eventually be active
    And the table should be named "ruby-integration-test-example-class"
    And the table should have the hash key :id => :string
    And I should be able to delete the table
    And I should be able to reset the table prefix

  Scenario: HashModel with a simple string attribute
    Given I configure the HashModel example class with:
    """
    string_attr :first_name
    integer_attr :age
    """
    When I create a model instance with the following values:
    | attribute  | value |
    | first_name | fred  |
    | age        | 40    |
    And I call save on the model instance
    Then a request should have been made like:
    | TYPE         | NAME                        | VALUE        |
    | header_match | x-amz-target                | .+PutItem    |
    | json_match   | ["Item"]["id"]              | .+           |
    | json         | ["Item"]["first_name"]["S"] | fred         |
    | json         | ["Item"]["age"]["N"]        | 40           |
