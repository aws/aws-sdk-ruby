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
@s3 @buckets
Feature: S3 Buckets

  Scenario: CRUD buckets using the classic endpoint
    Given I am using the S3 "us-east-1" region
    When I create a bucket
    Then the bucket should exist
    When I delete the bucket
    Then the bucket should not exist

  Scenario: CRUD buckets using a regional endpoint
    Given I am using the S3 "us-west-2" region
    When I create a bucket
    Then the bucket should exist
    When I delete the bucket
    Then the bucket should not exist

  Scenario: Access bucket following 307 redirects
    Given I am using the S3 "us-east-1" region
    When I create a bucket with the location constraint "EU"
    Then the bucket should have a location constraint of "EU"
