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
@s3 @high_level @objects @urls
Feature: Pre-signed URLs

  As a user of the S3 high-level interface
  I want to be able to get pre-signed URLs for objects
  so that I can deliver my private data securely to a wide variety of clients

  Scenario: Pre-signed GET
    Given the object "foo" has the contents "HELLO"
    When I generate a pre-signed GET URL for the object "foo"
    And I use a regular HTTP client to GET the URL
    Then the response body should be "HELLO"

  Scenario: Pre-signed PUT
    When I generate a pre-signed PUT URL for the object "foo"
    And I use a regular HTTP client to PUT "HELLO" to the URL
    Then the contents of object "foo" should eventually be "HELLO"

  Scenario: Pre-signed PUT with Content-Type and Content-MD5
    When I generate a pre-signed PUT URL for the object "foo" with content info
    And I use a regular HTTP client to PUT "HELLO" to the URL with content info
    Then the contents of object "foo" should eventually be "HELLO"

  Scenario: Pre-signed DELETE
    Given the object "foo" has the contents "HELLO"
    When I generate a pre-signed DELETE URL for the object "foo"
    And I use a regular HTTP client to DELETE the URL
    Then The object with key "foo" should eventually not exist

  Scenario: Pre-signed GET overriding response headers
    Given the object "foo" has the contents "{}"
    When I generate a pre-signed GET URL for the object "foo" with the following parameters:
    | response_content_type        | application/json |
    | response_content_language    | en               |
    | response_expires             | tomorrow         |
    | response_cache_control       | foobla           |
    | response_content_disposition | attachment       |
    | response_content_encoding    | gzip             |
    And I use a regular HTTP client to GET the URL
    Then the response headers should include:
    | content-type        | application/json |
    | content-language    | en               |
    | expires             | tomorrow         |
    | cache-control       | foobla           |
    | content-disposition | attachment       |
    | content-encoding    | gzip             |

  Scenario: Public URL for an object
    Given the object "foo" has the contents "HELLO" and a :public_read acl
    When I ask for the public URL of object "foo"
    And I use a regular HTTP client to GET the URL
    Then the response body should be "HELLO"
