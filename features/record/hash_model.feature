# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

  @wip
  Scenario: HashModel with a simple string attribute
    Given I configure the HashModel example class with:
    """
    string_attr :first_name
    """
    When I create a model instance with the following values:
    | attribute  | value |
    | first_name | fred  |
    And I call save on the model instance
    Then a request should have been made like:
    | TYPE         | NAME                         | VALUE        |
    | header_match | x-amz-target                 | .+\.PutItem  |
    | json         | ["Attributes"]["first_name"] | fred         |
    | json         | ["TableName"]                | ExampleClass |
    | json_match   | ["Attributes"]["id"]         | .+           |
