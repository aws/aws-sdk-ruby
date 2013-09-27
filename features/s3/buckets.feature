# language: en
@s3 @buckets
Feature: S3 Buckets

  Scenario: CRUD buckets using the classic endpoint
    Given I am using the S3 "us-east-1" region
    When I create a bucket
    Then the bucket should exist
    When I delete the bucket
    Then the bucket should not exist

  Scenario: CRUD buckets using a regional endpoint
    Given I am using the S3 "us-west-2" region
    When I create a bucket
    Then the bucket should exist
    When I delete the bucket
    Then the bucket should not exist

  Scenario: Access bucket following 307 redirects
    Given I am using the S3 "us-east-1" region
    When I create a bucket with the location constraint "EU"
    Then the bucket should have a location constraint of "EU"
