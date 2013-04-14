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
@s3 @high_level @objects @cse
Feature: Amazon S3 Client Side Encryption

  As a customer of Amazon S3
  I want my data to be envelope encrypted within Amazon S3
  So that I can store my private data securely while managing my own key

  @cse_asym @cse_write
  Scenario: Write an object with CSE
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify no CSE material location
    When  I write the string "HELLO" to it using CSE
    And   I specify metadata CSE material location
    Then  the object should eventually have encrypted "HELLO" as its body
    And   the object CSE data should be stored with metadata
    And   the object should have unencrypted_content_length

  @cse_asym @cse_read
  Scenario: Read an object with CSE
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify no CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I specify metadata CSE material location
    And   I read it with the CSE key
    Then  the result should be "HELLO"

  @cse_asym @cse_read
  Scenario: Read an object with CSE with metadata specified
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify metadata CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I read it with the CSE key
    And   I specify metadata CSE material location
    Then  the result should be "HELLO"

  @cse_asym @cse_write
  Scenario: Write an object with CSE with instruction file material location
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify instruction file CSE material location
    When  I write the string "HELLO" to it using CSE
    And   I specify instruction file CSE material location
    Then  the object should eventually have encrypted "HELLO" as its body
    And   the object CSE data should be stored with an instruction file
    And   the object should have unencrypted_content_length

#  @cse_asym @cse_read
#  Scenario: Read an object with CSE with instruction file material location when not specified
#    Given I ask for the object with key "foo"
#    And   I have an asymmetric CSE key
#    And   I specify instruction file CSE material location
#    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
#    When  I read it with the CSE key
#    And   I specify no CSE material location
#    Then  the result should be "HELLO"

  @cse_asym @cse_read
  Scenario: Read an object with CSE with instruction file material location when specified
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify instruction file CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I read it with the CSE key
    Then  the result should be "HELLO"

  @cse_sym @cse_write
  Scenario: Write an object with CSE symmetric
    Given I ask for the object with key "foo"
    And   I have a symmetric "128" CSE key
    And   I specify no CSE material location
    When  I write the string "HELLO" to it using CSE
    Then  the object should eventually have encrypted "HELLO" as its body
    And   the object CSE data should be stored with metadata
    And   the object should have unencrypted_content_length

  @cse_sym @cse_read
  Scenario: Read an object with CSE symmetric
    Given I ask for the object with key "foo"
    And   I have a symmetric "192" CSE key
    And   I specify no CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I specify metadata CSE material location
    And   I read it with the CSE key
    Then  the result should be "HELLO"

  @cse_sym @cse_read
  Scenario: Read an object with CSE symmetric with metadata specified
    Given I ask for the object with key "foo"
    And   I have a symmetric "256" CSE key
    And   I specify metadata CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I read it with the CSE key
    And   I specify metadata CSE material location
    Then  the result should be "HELLO"

  @cse_sym @cse_write
  Scenario: Write an object with CSE symmetric with instruction file material location
    Given I ask for the object with key "foo"
    And   I have a symmetric "192" CSE key
    And   I specify instruction file CSE material location
    When  I write the string "HELLO" to it using CSE
    And   I specify instruction file CSE material location
    Then  the object should eventually have encrypted "HELLO" as its body
    And   the object CSE data should be stored with an instruction file
    And   the object should have unencrypted_content_length

  @cse_sym @cse_read
  Scenario: Read an object with CSE symmetric with metadata specified on both ends
    Given I ask for the object with key "foo"
    And   I have a symmetric "128" CSE key
    And   I specify metadata CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I read it with the CSE key
    And   I specify metadata CSE material location
    Then  the result should be "HELLO"

  @cse_sym @cse_write
  Scenario: Write an object with CSE symmetric with instruction file material location on both ends
    Given I ask for the object with key "foo"
    And   I have a symmetric "256" CSE key
    And   I specify instruction file CSE material location
    When  I write the string "HELLO" to it using CSE
    And   I specify instruction file CSE material location
    Then  the object should eventually have encrypted "HELLO" as its body
    And   the object CSE data should be stored with an instruction file
    And   the object should have unencrypted_content_length

#  @cse_sym @cse_read
#  Scenario: Read an object with incorrect material location at runtime (will not find encryption materials)
#    Given I ask for the object with key "foo"
#    And   I have a symmetric "192" CSE key
#    And   I specify metadata CSE material location
#    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
#    When  I specify instruction file CSE material location
#    And   I read it with the CSE key
#    Then  the result should not be "HELLO"


  @cse_asym @cse_read @cse_multipart
  Scenario: Perform a multipart upload with CSE
    Given the multipart upload threshold is 5mb
    And   I have a 7mb file
    And   I have an asymmetric CSE key
    And   I specify metadata CSE material location
    When  I write the file to the object "foo" with CSE and the following metadata:
    | color | red    |
    | shape | circle |
    Then the metadata of object "foo" should eventually include:
    | color | red    |
    | shape | circle |
    Then the file at key "foo" should eventually be encrypted
    And  the contents of CSE object "foo" should eventually match the file
    And  the object CSE data should be stored with metadata
    And  the object should have unencrypted_content_length

  @cse_asym @cse_read @cse_block
  Scenario: Performing a streaming read with a block and CSE
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify metadata CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I read it with the CSE key and a block into a variable
    Then  the result should be "HELLO"
    And   the object CSE data should be stored with metadata
    And   the object should have unencrypted_content_length

  @cse_asym @cse_read @cse_multipart @cse_block
  Scenario: Performing a streaming read with a block and CSE and a large file uploaded with multipart
    Given the multipart upload threshold is 5mb
    And   I have a 7mb file
    And   I have an asymmetric CSE key
    And   I specify metadata CSE material location
    And   in the bucket the object with key "foo" has the CSE encrypted file
    When  I read it with the CSE key
    Then  the contents of CSE object "foo" should eventually match the file
    And   the object CSE data should be stored with metadata
    And   the object should have unencrypted_content_length

  @cse_sym @cse_read @cse_multipart @cse_block
  Scenario: Performing a streaming read with a block and CSE and a large file uploaded with multipart and instruction file material location using a symmetric key
    Given the multipart upload threshold is 5mb
    And   I have a 7mb file
    And   I have a symmetric "256" CSE key
    And   I specify instruction file CSE material location
    And   in the bucket the object with key "foo" has the CSE encrypted file
    When  I specify instruction file CSE material location
    And   I read it with the CSE key
    Then  the contents of CSE object "foo" should eventually match the file
    And   the object CSE data should be stored with an instruction file
    And   the object should have unencrypted_content_length

  @cse_asym @cse_copy
  Scenario: Copy an object with CSE
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify metadata CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I copy "foo" to "foo2" with CSE enabled
    And   I ask for the object with key "foo2"
    Then  the object should eventually have encrypted "HELLO" as its body
    And   the object CSE data should be stored with metadata
    And   the object should have unencrypted_content_length

  @cse_asym @cse_copy
  Scenario: Copy an object with CSE and decrypt
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify metadata CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I copy "foo" to "foo2" with CSE enabled
    And   I specify metadata CSE material location
    And   I read it with the CSE key
    Then  the result should be "HELLO"

  @cse_asym @cse_copy
  Scenario: Copy an object with CSE and decrypt with instruction filematerial location
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify instruction file CSE material location
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I copy "foo" to "foo2" with CSE enabled
    And   I specify instruction file CSE material location
    And   I read it with the CSE key
    Then  the result should be "HELLO"
    And   the object CSE data should be stored with an instruction file


  @cse_asym @cse_copy
  Scenario: Move an object with CSE and decrypt with instruction filematerial location and md5
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify instruction file CSE material location
    And   I specify "blah blah" as the md5
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I move "foo" to "foo2" with CSE enabled
    And   I specify instruction file CSE material location
    And   I read it with the CSE key
    Then  the result should be "HELLO"
    And   the object CSE data should be stored with an instruction file

  @cse_asym @cse_copy
  Scenario: Copy an object with CSE and decrypt with instruction filematerial location and no md5
    Given I ask for the object with key "foo"
    And   I have an asymmetric CSE key
    And   I specify instruction file CSE material location
    And   I specify no md5
    And   in the bucket the object with key "foo" has the contents CSE encrypted "HELLO"
    When  I copy "foo" to "foo2" with CSE enabled
    And   I specify instruction file CSE material location
    And   I read it with the CSE key
    Then  the result should be "HELLO"
    And   the object CSE data should be stored with an instruction file


#  @cse_read
#  Scenario: Read a file with CSE that wasn't encrypted (will produce error)
#    Given I ask for the object with key "foo"
#    And   I have an asymmetric CSE key
#    And   I write the string "HELLO" to it
#    Then  I specify metadata CSE material location
#    And   I read it with the CSE key
#    And   the result should be "HELLO"

  @cse_write
  Scenario: Write a file using an IO-like object
    Given the multipart upload threshold is 5mb
    And   I have a 2mb file
    And   I put the file in an IO object
    And   I have an asymmetric CSE key
    And   I ask for the object with key "foo"
    When  I specify metadata CSE material location
    And   I write the IO object
    Then  the contents of CSE object "foo" should eventually match the file

  @cse_write
  Scenario: Write a file using an IO-like object multipart
    Given the multipart upload threshold is 5mb
    And   I have a 7mb file
    And   I put the file in an IO object
    And   I have an asymmetric CSE key
    And   I ask for the object with key "foo"
    When  I specify metadata CSE material location
    And   I write the IO object
    Then  the contents of CSE object "foo" should eventually match the file


  @cse_write @test
  Scenario: Write an IO like object with an estimated length of 5mb
    Given the multipart upload threshold is 10mb
    And   I have a 7mb file
    And   I have an asymmetric CSE key
    And   I ask for the object with key "foo"
    And   I specify metadata CSE material location
    When  I write the file using an IO-like object and an estimated length of 5mb
    Then  the contents of CSE object "foo" should eventually match the file

  @cse_delete
  Scenario: Delete an object uploaded with CSE and an instruction file
    Given the multipart upload threshold is 5mb
    And   I have a 7mb file
    And   I put the file in an IO object
    And   I have an asymmetric CSE key
    And   I ask for the object with key "foo"
    And   I specify metadata CSE material location
    And   I write the IO object
    When  I delete the CSE object with :delete_instruction_file
    Then  No instruction file remains


