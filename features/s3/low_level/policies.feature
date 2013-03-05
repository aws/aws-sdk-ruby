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
@s3 @low_level @bucket_policy
Feature: Bucket Policies
  As a user of the S3 low-level client
  I want to be able to manipulate bucket policies
  So that I can control access to my S3 resources

  @set
  Scenario: Set bucket policy
    Given I call create_bucket
    When I ask the client to set a bucket policy
    Then the result should be a successful response
    And the client should have made a "PUT" request to the bucket

  @set
  Scenario: Set bucket policy (OO interface)
    Given I call create_bucket
    When I ask the client to set a bucket policy using the OO interface
    Then the result should be a successful response
    And the client should have made a "PUT" request to the bucket
    And the bucket policy should resemble the one I set

  @get @roundtrip
  Scenario: Change bucket policy
    Given I call create_bucket
    And the bucket has a policy
    When I produce a modified bucket policy using the OO interface
    And I ask the client to set the modified policy
    Then the result should be a successful response
    And the bucket policy should resemble the one I set

  @get
  Scenario: Get bucket policy
    Given I call create_bucket
    And the bucket has a policy
    When I ask the client to get the bucket policy
    Then the result should be a successful response
    And the client should have made a "GET" request to the bucket

  @delete
  Scenario: Delete bucket policy
    Given I call create_bucket
    And the bucket has a policy
    When I ask the client to delete the bucket policy
    Then the result should be a successful response
    And the client should have made a "DELETE" request to the bucket
    And the policy should not exist
