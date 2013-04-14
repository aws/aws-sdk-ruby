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
@s3 @low_level @buckets
Feature: Working with Buckets

  As a user of the S3 low-level client
  I want to be able to perform basic CRUD operations on buckets

  @create_bucket
  Scenario: Create a bucket
    When I call create_bucket
    Then the result should be a successful response
    And the bucket should exist
    And the client should have made a PUT request to the bucket

  @create_bucket
  Scenario: Invalid bucket name
    When I ask the client to create a bucket with an invalid name
    Then the client should raise an argument error
    And the client should not make any requests

  # this should raise an error instead of actually creating the bucket
  @create_bucket
  Scenario: DNS-incompatible bucket name
    When I ask the client to create a dns incompatible bucket
    Then the bucket should exist
    Then a request should have been made like:
    | TYPE  | NAME      | VALUE                      |
    | http  | verb      | PUT                        |
    | http  | host      | s3.amazonaws.com           |
    | http  | uri_match | /ruby_integration_test_\d+ |

  @create_bucket
  Scenario: Mixed case bucket name
    When I ask the client to create a bucket named "miXedCase"
    Then the bucket should exist
    Then a request should have been made like:
    | TYPE  | NAME      | VALUE                      |
    | http  | verb      | PUT                        |
    | http  | host      | s3.amazonaws.com           |
    | http  | uri_match | /miXedCase |

  @create_bucket @endpoint
  Scenario: Create a bucket in a different region
    When I ask the client to create a bucket in "s3-us-west-1.amazonaws.com"
    Then a request should have been made like:
    | TYPE  | NAME       | VALUE                                               |
    | http  | verb       | PUT                                                 |
    | http  | host_match | ruby-integration-test-.*.s3-us-west-1.amazonaws.com |

  @delete_bucket
  Scenario: Delete bucket
    Given I call create_bucket
    When I ask the client to delete the bucket
    Then the result should be a successful response
    And the bucket should not exist
    And the client should have made a DELETE request to the bucket

  @delete_bucket
  Scenario: Delete bucket that does not exist
    When I ask the client to delete a bucket that does not exist
    Then the client should raise a client error
    And the client should have made a DELETE request to the bucket

  @list_buckets
  Scenario: List buckets
    Given I call create_bucket
    When I ask the client to list buckets
    Then the bucket should be in the response
    And the client should have made a GET request to the service

  Scenario: Forcing path style
    Given I force s3 to use path style requests
    Given I call create_bucket
    When I call get_bucket
    Then a request should have been made like:
    | TYPE   | NAME       | VALUE              |
    | http   | verb       | GET                |
    | http   | host       | s3.amazonaws.com   |
    | http   | path_match | /ruby-test-\d+-\d+ |

  @create_bucket
  Scenario: Invalid bucket name
    When I ask the client to create a bucket with an invalid name
    Then the client should raise an argument error
    And the client should not make any requests

  # this should raise an error instead of actually creating the bucket
  @create_bucket
  Scenario: DNS-incompatible bucket name
    When I ask the client to create a dns incompatible bucket
    Then the bucket should exist
    Then a request should have been made like:
    | TYPE  | NAME      | VALUE                      |
    | http  | verb      | PUT                        |
    | http  | host      | s3.amazonaws.com           |
    | http  | uri_match | /ruby_integration_test_\d+ |

  @create_bucket @endpoint
  Scenario: Create a bucket in a different region
    When I ask the client to create a bucket in "s3-us-west-1.amazonaws.com"
    Then a request should have been made like:
    | TYPE  | NAME       | VALUE                                               |
    | http  | verb       | PUT                                                 |
    | http  | host_match | ruby-integration-test-.*.s3-us-west-1.amazonaws.com |

  @delete_bucket
  Scenario: Delete bucket
    Given I call create_bucket
    When I ask the client to delete the bucket
    Then the result should be a successful response
    And the bucket should not exist
    And the client should have made a DELETE request to the bucket

  @delete_bucket
  Scenario: Delete bucket that does not exist
    When I ask the client to delete a bucket that does not exist
    Then the client should raise a client error
    And the client should have made a DELETE request to the bucket

  @list_buckets
  Scenario: List buckets
    Given I call create_bucket
    When I ask the client to list buckets
    Then the bucket should be in the response
    And the client should have made a GET request to the service

  Scenario: Forcing path style requests
    When I ask the client to create a bucket in "s3-us-west-1.amazonaws.com"
    Then a request should have been made like:
    | TYPE  | NAME       | VALUE                                               |
    | http  | verb       | PUT                                                 |
    | http  | host_match | ruby-integration-test-.*.s3-us-west-1.amazonaws.com |
    When I ask the client to create a bucket in "s3-us-west-1.amazonaws.com"
    Then a request should have been made like:
    | TYPE  | NAME       | VALUE                                               |
    | http  | verb       | PUT                                                 |
    | http  | host_match | ruby-integration-test-.*.s3-us-west-1.amazonaws.com |
