# language: en
@s3 @presigned_request
Feature: Enhanced presigned request interface

  Background:
    Given I create a bucket

  Scenario: Presigning a put object request
    When I create a presigned request for "put_object" with:
      | key | test        |
      | acl | public-read |
    And I send an HTTP put request with uri headers and body "hello"
    And I make an unauthenticated HTTPS GET request for key "test"
    Then the response should be "hello"

  Scenario: Presigning a HTTPS get object request
    When I put "signed" to the key "retrieve_me"
    And I create a presigned request for "get_object" with:
      | key | retrieve_me |
    And I send an HTTP "get" request with uri and headers
    Then the response should be "signed"

  Scenario: Presigning a HTTP get object request
    When I put "signed" to the key "retrieve_me"
    And I create a non-secure presigned request for "get_object" with:
      | key | retrieve_me |
    And I send an HTTP "get" request with uri and headers
    Then the response should be "signed"

  @headers
  Scenario: Presigning a put object request with custom headers
    Given I have a header hash to sign:
      | foo | bar |
    When I create a presigned request for "put_object" with the hash and:
      | key     | test        |
      | acl     | public-read |
    And I send an HTTP "put" request with uri and headers 
    Then Signed headers should be:
      | x-amz-acl | public-read |
      | x-amz-foo | bar         |
    Then the response should have a 200 status code

  @headers
  Scenario: Presigning a put object request with whitelist headers
    Given I have a header hash to sign:
      | cache-control | max-age=20000 |
    When I create a presigned request for "put_object" with the hash and:
      | key           | test          |
      | cache-control | max-age=20000 |
    And I send an HTTP "put" request with uri and headers 
    Then Signed headers should be:
      | x-amz-cache-control | max-age=20000 |
    Then the response should have a 200 status code
