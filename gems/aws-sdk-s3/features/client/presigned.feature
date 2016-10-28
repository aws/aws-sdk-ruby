# language: en
@s3 @client @presigned
Feature: S3 Presigned Operations

  Background:
    Given I create a bucket

  Scenario: Presigning a HTTPS get object request
    When I put "signed" to the key "retrieve_me"
    And I create a presigned url for "get_object" with:
    | key  | retrieve_me |
    And I send an HTTP get request for the presigned url
    Then the response should be "signed"

  Scenario: Presinging a HTTP get object request
    When I put "signed" to the key "retrieve_me"
    And I create a non-secure presigned url for "get_object" with:
    | key  | retrieve_me |
    And I send an HTTP get request for the presigned url
    Then the response should be "signed"

  Scenario: Presigning a put object request
    When I create a presigned url for "put_object" with:
    | key | test        |
    | acl | public-read |
    And I send an HTTP put request for the presigned url with body "hello"
    Then I make an unauthenticated HTTPS GET request for key "test"
    And the response should be "hello"

  Scenario: Presigned GET with virtual-hosted bucket
    Given I have a bucket configured with a virtual hosted CNAME
    When I create a presigned url for "put_object" with:
    | key | test        |
    | acl | public-read |
    And I send an HTTP put request for the presigned url with body "hello"
    Then I make an unauthenticated HTTP GET request for key "test"
    And the response should be "hello"

  Scenario: Presigning a put object request with x-amz-*
    When I create a presigned url for "put_object" with:
    | key           | test               |
    | acl           | public-read        |
    | storage_class | REDUCED_REDUNDANCY |
    And I send an HTTP put request for the presigned url with body "hello"
    Then the object "test" should have a "REDUCED_REDUNDANCY" storage class
    Then I make an unauthenticated HTTPS GET request for key "test"
    And the response should be "hello"

  Scenario: Presigned PUT with content-type
    When I create a presigned url for "put_object" with:
    | key          | test        |
    | acl          | public-read |
    | content_type | text/plain  |
    When I send an HTTP put request with the content type as "text/plain"
    Then the response should have a 200 status code

  Scenario: Presigned PUT with wrong content-type
    Given I create a presigned url for "put_object" with:
    | key          | test        |
    | acl          | public-read |
    | content_type | text/plain  |
    When I send an HTTP put request with the content type as "image/jpg"
    And the response should have a 403 status code
