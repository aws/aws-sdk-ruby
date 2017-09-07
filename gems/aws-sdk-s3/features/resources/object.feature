# language: en
@s3 @resources @objects
Feature: Aws::S3::Object

 Background:
    Given I create a bucket resource

  @slow
  Scenario: Uploading a large file
    Given I have a 15MB file
    When I upload the file to the "large" object
    Then the file should have been uploaded as a multipart upload

  @slow
  Scenario: Uploading a large file
    Given I have a 15MB file
    When I upload the file to the "large" object with SSE/CPK
    Then the file should have been uploaded as a multipart upload

   Scenario: Support object streaming
    Given I put "hello world" to the object with key "hello"
    Then I can streaming download object with key "hello"
