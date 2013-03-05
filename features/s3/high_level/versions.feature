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
@s3 @high_level @versions
Feature: High-Level Bucket and Object Versioning

  As a user of the high-level S3 interface
  I want to work with versioned buckets and objects
  So that I can store multiple versions of objects

  @bucket
  Scenario: A new bucket with no versioning
    When I create a new bucket
    Then the bucket should not be versioned
    And the bucket versioning state should be "unversioned"

  @bucket
  Scenario: Enable bucket versioning
    Given I create a new bucket
    When I enable versioning on the bucket
    Then the bucket should be versioned
    And the bucket versioning state should be "enabled"

  @bucket
  Scenario: Disable bucket versioning
    Given I create a new bucket
    And I enable versioning on the bucket
    When I suspend versioning on the bucket
    Then the bucket should not be versioned
    And the bucket versioning state should be "suspended"

  @bucket
  Scenario: Tracking versioned objects in a bucket
    Given I create a new bucket
    And I enable versioning on the bucket
    When I write "foo1" to the key "bar"
    And I delete the object with key "bar"
    And I write "foo2" to the key "bar"
    Then the bucket should have 3 versions
    And the latest bucket version should contain "foo2"
    And version 0 should contain "foo2"
    And version 1 should be a delete marker
    And version 2 should contain "foo1"

  @bucket
  Scenario: Deleting versioned objects
    Given I create a new bucket
    And I enable versioning on the bucket
    And I write "foo1" to the key "bar"
    And I write "foo2" to the key "bar"
    And I write "foo3" to the key "bar"
    And I write "foo4" to the key "bar"
    When I delete the latest bucket version
    Then the bucket should have 3 versions
    And the latest bucket version should contain "foo3"

  @object
  Scenario: Version from write
    Given I create a new bucket
    And I enable versioning on the bucket
    When I write "foo1" to the key "key1"
    Then the result should be the latest version for the key "key1"

  @object
  Scenario: Tracking object versions
    Given I create a new bucket
    And I enable versioning on the bucket
    When I write "foo1" to the key "key1"
    And I delete the object with key "key1"
    And I write "foo2" to the key "key1"
    And I write "bar1" to the key "key2"
    And I write "bar2" to the key "key2"
    Then the bucket should have 5 versions
    And the object "key1" should have 3 versions
    And version 0 should contain "foo2"
    And version 1 should be a delete marker
    And version 2 should contain "foo1"

#  Scenario: Tracking object versions
#    Given I create a new bucket
#    And I enable versioning on the bucket
#    And I write "foo1" to the key "bar"
#    And I write "foo2" to the key "bar"
#    And I write "foo3" to the key "bar"
#    When I get the latest object version
#    Then I should get the same version by version_id
