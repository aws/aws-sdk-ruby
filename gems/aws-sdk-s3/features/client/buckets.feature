# language: en
@s3 @client @buckets
Feature: S3 Buckets

  Scenario: CRUD buckets using the classic endpoint
    Given I am using the S3 "us-east-1" region
    When I create a bucket
    Then the bucket should exist
    When I delete the bucket
    Then the bucket should not exist

  Scenario: HEAD bucket works with improper region
    Given I am using the S3 "us-west-2" region
    And I create a bucket
    When I am using the S3 "us-east-1" region
    Then I should be able to HEAD the bucket

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

  Scenario: Working with bucket names that contain '.' using HTTPS
    Given I am using the S3 "https://s3.amazonaws.com" endpoint
    When I create a bucket with a DNS compatible name that contains a dot
    Then I should be able to delete the bucket

  Scenario: Working with bucket names that contain '.' using HTTP
    Given I am using the S3 "http://s3.amazonaws.com" endpoint
    When I create a bucket with a DNS compatible name that contains a dot
    Then I should be able to delete the bucket

  @force_path_style
  Scenario: Operating on a bucket/object using path style
    Given I force path style requests
    And I create a DNS compatible bucket
    When I put "abc" to the key "object-key"
    Then the bucket name should be in the request path
    And the bucket name should not be in the request host

  # Putting an object to a newly created bucket causes a 307 redirect,
  # that requires you to support Expect: 100-continue for large object
  # put requests.
  @100continue
  Scenario: Follow 307 redirect on new buckets
    Given I am using the S3 "http://s3.amazonaws.com" endpoint
    When I create a bucket with the location constraint "us-west-2"
    When I put a large object
    Then the object should exist

  Scenario: Get location of DNS-compatible bucket in nonstandard region
    Given I am using the S3 "us-west-2" region
    And I create a DNS compatible bucket
    When I am using the S3 "us-east-1" region
    When I get the bucket location
    Then the bucket name should be in the request path
    And the bucket name should not be in the request host
    And the location constraint should be "us-west-2"
