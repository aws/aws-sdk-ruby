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
@s3 @high_level @buckets
Feature: CRUD Buckets (High Level)
  As a user of the S3 high-level interface
  I want to be able to perform basic CRUD operations on buckets

  @create_bucket
  Scenario: Create a bucket
    When I create a new bucket
    Then I should receive a bucket
    And the client should have made a PUT request to the bucket

  @create_bucket
  Scenario: Create a bucket with a dns compat name with sub-domains
    When I create a bucket named "ruby.integration.test"
    Then a request should have been made like:
    | TYPE   | NAME | VALUE                  |
    | http   | verb | PUT                    |
    | http   | host | s3.amazonaws.com       |
    | http   | path | /ruby.integration.test |

  @get_bucket
  Scenario: Get a bucket
    When I ask for the bucket named "foo"
    Then I should receive a bucket named "foo"
    And the client should not have been called

  @get_bucket
  Scenario: Get a bucket using a symbol
    When I ask for the bucket named "foo" using a symbol
    Then I should receive a bucket named "foo"
    And the client should not have been called

  @delete_bucket
  Scenario: Delete bucket
    Given I call create_bucket
    When I delete the bucket
    Then the bucket should not exist
    And the client should have made a DELETE request to the bucket

  @delete_bucket
  Scenario: Delete versioned bucket with object versions
    Given I create a new bucket
    And I enable versioning on the bucket
    And I write "foo1" to the key "key1"
    And I write "foo2" to the key "key1"
    And I write "bar1" to the key "key2"
    When I force delete the bucket
    Then the bucket should not exist

  @list_buckets
  Scenario: List all my buckets
    Given I call create_bucket
    When I ask for the list of buckets as an array
    Then the result should contain the bucket
    And the client should have made a GET request to the service

  @list_buckets
  Scenario: Get bucket owner information
    Given I call create_bucket
    When I ask for the bucket owner
    Then the result should be an object with owner ID and name
    And the client should have made a GET request to the service

  @list_buckets
  Scenario: Get bucket owner information while listing buckets
    Given I call create_bucket
    And I ask for the list of buckets as an array
    When I ask for the bucket owner of the first item in the array
    Then the result should be an object with owner ID and name
    And the client should have made a GET request to the service

  @create_bucket
  Scenario: Creating a bucket with a location constraint
    When I create a bucket with the location constraint "EU"
    Then the bucket should have the location constraint of "EU"

  @tagging
  Scenario: Setting bucket tags
    Given I create a new bucket
    When I set the bucket tags to
    | TAG | VALUE |
    | foo | bar   |
    | abc | xyz   |
    Then the tags should be
    | TAG | VALUE |
    | foo | bar   |
    | abc | xyz   |

  @tagging
  Scenario: Deleting bucket tags
    Given I create a new bucket
    When I set the bucket tags to
    | TAG | VALUE |
    | foo | bar   |
    | abc | xyz   |
    When I set the bucket tags to an empty hash
    Then the bucket tags should be empty

  @cors
  Scenario: Setting bucket CORS rules
    Given I create a new bucket
    When I set the bucket rules
    Then the bucket rules should match

  @cors
  Scenario: Adding bucket CORS rules
    Given I create a new bucket
    And I set the bucket rules
    When I add a rule
    Then the bucket rules should match

  @cors
  Scenario: Deleting bucket CORS rules
    Given I create a new bucket
    And I set the bucket rules
    When I clear the bucket rules
    Then the bucket should have no rules

  @website
  Scenario: Enable bucket website hosting
    When I create a new bucket
    Then the bucket should not be a website
    When I enable website hosting
    Then the bucket be a website
