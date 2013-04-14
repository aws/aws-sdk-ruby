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
@s3 @low_level @async
Feature: CRUD Buckets (async)
  As a user of the S3 low-level client
  I want to be able to perform basic CRUD operations on buckets in an asynchronous fashion

  @create_bucket
  Scenario: Create a bucket
    When I call create_bucket asynchronously
    Then the result should be a response handle
    And the bucket should exist on completion

  @create_bucket
  Scenario: Invalid bucket name
    When I ask the client to asynchronously create a bucket with an invalid name
    Then the client should raise an argument error

  @create_bucket
  Scenario: DNS-incompatible bucket name
    When I ask the client to asynchronously create a bucket named "my_bucket"
    Then the result should be a response handle
    And the bucket should exist on completion

  @delete_bucket
  Scenario: Delete bucket
    Given I call create_bucket
    When I ask the client to asynchronously delete the bucket
    Then the result should be a response handle
    And the bucket should not exist on completion

  @delete_bucket
  Scenario: Delete bucket that does not exist
    When I ask the client to asynchronously delete a bucket that does not exist
    Then the result should be a response handle
    And a client error should be available on failure

  @list_buckets
  Scenario: List buckets
    Given I call create_bucket
    When I ask the client to asynchronously list buckets
    Then the result should be a response handle
    And the bucket should be in the response on completion
