# language: en
@s3 @presigned
Feature: S3 Presigned Operations

  Background:
    Given I create a bucket

  Scenario: Presigning a get object request
    When I put "signed" to the key "retrieve_me"
    And I create a presigned url for "get_object" with:
    | key  | retrieve_me |
    And I send an HTTP get request for the presigned url
    Then the response should be "signed"

  Scenario: Presigning a put object request
    When I create a presigned url for "put_object" with:
    | key | test        |
    | acl | public-read |
    And I send an HTTP put request for the presigned url with body "hello"
    Then I make an unauthenticated HTTP request for key "test"
    And the response should be "hello"
