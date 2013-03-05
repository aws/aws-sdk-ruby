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
@s3 @low_level @versions
Feature: Low-Level Bucket and Object Versioning

  As a user of the low-level S3 client
  I want to enable and suspend versioning on buckets
  So that I can store multiple versions of objects

  @buckets @unversioned
  Scenario: Bucket with versioning never enabled
    Given I call create_bucket
    Then get_bucket_versioning should return "unversioned"

  @buckets @enable
  Scenario: Enable bucket versioning
    Given I call create_bucket
    When I call set_bucket_versioning with "enabled"
    Then get_bucket_versioning should return "enabled"

  @buckets @suspend
  Scenario: Suspend bucket versioning
    Given I call create_bucket
    And I call set_bucket_versioning with "enabled"
    When I call set_bucket_versioning with "suspended"
    Then get_bucket_versioning should return "suspended"
