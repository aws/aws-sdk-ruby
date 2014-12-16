# language: en
@s3 @client-side-encryption
Feature: S3 Objects

 Background:
    Given I create a bucket

  Scenario: Encrypting client-side with GET and PUT
    Given I have an encryption client
    When I perform an encrypted PUT of the value "secret"
    And I GET the object with a non-encyrption client
    Then the object data should be encrypted
    When I GET the object with an encryption client
    Then the object data should be "secret"

  Scenario: Using instruction file for storing the encryption envelope
    Given I have an encryption client configured for :instruction_file
    When I perform an encrypted PUT of the value "secret"
    Then the instruction file should exist
    When I GET the object with an encryption client
    Then the object data should be "secret"
