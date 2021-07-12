# language: en
@s3 @resources @objects
Feature: Aws::S3::Object

 Background:
    Given I create a bucket resource

  @slow
  Scenario: Uploading a large file
    Given I have a 115MB file
    When I upload the file to the "large" object
    Then the file should have been uploaded as a multipart upload

  @slow
  Scenario: Uploading chunks as multipart upload
    Given I have 11 1MB chunks
    When I upload the chunks to the "large" object
    Then the chunks should have been uploaded as a multipart upload

  @slow
  Scenario: Uploading chunks with correct content
    Given I have 6 1MB chunks
    When I upload the chunks to the "medium" object
    Then the "medium" object should contained the chunks joined

  @slow
  Scenario: Uploading stream with custom part size
    Given I have a 7MB stream
    When I upload the stream with the custom part size of 6MB to the "stream" object
    Then the "stream" object should contained the stream

  Scenario: Uploading empty stream with custom part size
    Given I have a 0MB stream
    When I upload the stream with the custom part size of 6MB to the "stream" object
    Then the "stream" object should contained the stream

  @slow
  Scenario: Uploading chunks with using temporary files
    Given I have 6 1MB chunks
    When I upload the chunks using tempfile to the "medium" object
    Then the "medium" object should contained the chunks joined

  @slow
  Scenario: Uploading chunks with serverside encryption
    Given I have 2 3MB chunks
    When I upload the chunks to the "encrypted" object with SSE/CPK
    Then the file should have been uploaded as a multipart upload

  @slow
  Scenario: Uploading a large single chunk
    Given I have 1 7MB chunks
    When I upload the chunks to the "single" object
    Then the "single" object should contained the chunks joined

  @slow
  Scenario: Uploading a large file
    Given I have a 115MB file
    When I upload the file to the "large" object with SSE/CPK
    Then the file should have been uploaded as a multipart upload

  Scenario: Support object streaming
    Given I put "hello world" to the object with key "hello"
    Then I can streaming download object with key "hello"
