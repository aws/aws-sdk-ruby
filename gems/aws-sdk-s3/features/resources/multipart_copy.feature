# language: en
@s3 @resources @multipart-copy
Feature: Managed multipart copies

 Background:
    Given I create a bucket resource

  @slow
  Scenario: Copy-to across buckets
    Given I create a 10MB source object in a different bucket
    Then I should be able to multipart copy the object to a different bucket
    And the copied object should match the source object

  @slow
  Scenario: Copy object with space character
    Given I create a bucket resource
    And I have a 10MB file
    And I upload the file to the "test object" object
    Then I should be able to multipart copy the object
