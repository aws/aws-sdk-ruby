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
@s3 @high_level @objects @sse
Feature: Amazon S3 Server Side Encryption

  As a customer of Amazon S3
  I want my data to be encrypted when stored at rest within Amazon S3
  So that I can store my private data securely without managing my own keys

  Scenario: Write an object with SSE
    Given I ask for the object with key "foo"
    When I write the string "HELLO" to it using server side encryption
    Then the object should eventually have "HELLO" as its body
    And the object should be stored with server side encryption

  Scenario: Write an object with an Amazon S3 interface configured to use SSE
    Given I have an Amazon S3 interface configured to use server side encryption
    And I ask for the object with key "foo"
    When I write the string "HELLO" to it
    Then the object should eventually have "HELLO" as its body
    And the object should be stored with server side encryption

  Scenario: Copy an object with SSE
    Given I ask for the object with key "foo"
    And I write the string "HELLO" to it
    When I copy "foo" to "foo2" with SSE enabled
    And I ask for the object with key "foo2"
    Then the object should eventually have "HELLO" as its body
    And the object should be stored with server side encryption

  Scenario: Copy an object with an Amazon S3 interface configured to use SSE
    Given I have an Amazon S3 interface configured to use server side encryption
    And I ask for the object with key "foo"
    And I write the string "HELLO" to it
    When I copy "foo" to "foo2"
    And I ask for the object with key "foo2"
    Then the object should eventually have "HELLO" as its body
    And the object should be stored with server side encryption

  Scenario: Perform a multipart upload with SSE
    When I start an upload to object "foo" with SSE enabled
    And I add a part to the upload with data "HELLO"
    And I complete the upload with the parts uploaded using the object
    And I ask for the object with key "foo"
    Then the object should eventually have "HELLO" as its body
    And the object should be stored with server side encryption

  Scenario: Perform a multipart upload with an Amazon S3 interface configured to use SSE
    Given I have an Amazon S3 interface configured to use server side encryption
    When I start an upload to object "foo"
    And I add a part to the upload with data "HELLO"
    And I complete the upload with the parts uploaded using the object
    And I ask for the object with key "foo"
    Then the object should eventually have "HELLO" as its body
    And the object should be stored with server side encryption

  Scenario: Pre-signed POST with SSE
    When I generate pre-signed form fields for the object "foo" with the following parameters:
    | acl                    | public_read |
    | server_side_encryption | aes256      |
    And I use a regular HTTP client to POST the data "HELLO"
    And I ask for the object with key "foo"
    Then the object should eventually have "HELLO" as its body
    And the object should be stored with server side encryption

  Scenario: Pre-signed POST with an Amazon S3 interface configured to use SSE
    Given I have an Amazon S3 interface configured to use server side encryption
    When I generate pre-signed form fields for the object "foo"
    And I use a regular HTTP client to POST the data "HELLO"
    And I ask for the object with key "foo"
    Then the object should eventually have "HELLO" as its body
    And the object should be stored with server side encryption
