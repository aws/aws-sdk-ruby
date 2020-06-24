# language: en
@s3 @resources @client-side-encryption-v2
Feature: S3 Objects

  Background:
    Given I create a bucket resource

  Scenario: Encrypting client-side with GET and PUT
    Given I have a V2 encryption client
    When I perform an encrypted PUT of the value "secret"
    And I GET the object with a non-encryption client
    Then the object data should be encrypted
    When I GET the object with an encryption client
    Then the object data should be "secret"

  Scenario: Decrypting legacy (V1) objects
    Given I have an encryption client
    When I perform an encrypted PUT of the value "secret"
    When I GET the object with a V2 encryption client
    Then the object data should be "secret"

  Scenario: Using instruction file for storing the encryption envelope
    Given I have a V2 encryption client configured for :instruction_file
    When I perform an encrypted PUT of the value "secret"
    Then the instruction file should exist
    When I GET the object with an encryption client
    Then the object data should be "secret"

  @kms
  Scenario: Using KMS Encryption Using instruction file for storing the encryption envelope
    Given a "kms_key_id" is set in cfg["cse_kms"]["kms_key_id"]
    And I have a V2 encryption client configured to use KMS
    When I perform an encrypted PUT of the value "secret"
    And I GET the object with a non-encryption client
    Then the object data should be encrypted
    When I GET the object with an encryption client
    Then the object data should be "secret"

  @kms
  Scenario: Decrypting objects encrypted using the Java SDK
    Given a "kms_key_id" is set in cfg["java_cse_kms"]["kms_key_id"]
    And a "profile" is set in cfg["java_cse_kms"]["profile"]
    And a "bucket_name" is set in cfg["java_cse_kms"]["bucket_name"]
    And a "key" is set in cfg["java_cse_kms"]["key"]
    And Given I have a V2 encryption client configured to read a Java encrypted object
    When I GET the object with an encryption client
    Then the object data should be "raw-body"
