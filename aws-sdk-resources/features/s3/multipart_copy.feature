# language: en
@s3 @resources @multipart-copy
Feature: Managed multipart copies

 Background:
    Given I create a bucket

  @slow
  Scenario: Copy-to across buckets
    Given a "source_bucket" is set in cfg["s3"]["large_object"]["bucket"]
    And a "source_key" is set in cfg["s3"]["large_object"]["key"]
    Then I should be able to multipart copy the object to a different bucket
