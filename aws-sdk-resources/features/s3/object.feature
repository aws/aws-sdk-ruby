# language: en
@s3 @resources @objects
Feature: Aws::S3::Object

 Background:
    Given I create a bucket

  @slow
  Scenario: Uploading a large file
    Given I have a 15MB file
    When I upload the file to the "large" object
    Then the file should have been uploaded as a multipart upload

