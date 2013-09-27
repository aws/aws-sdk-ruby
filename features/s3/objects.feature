# language: en
@s3 @objects
Feature: S3 Objects

 Background:
    Given I create a bucket

  Scenario: Putting nothing to an object
    When I put nothing to the key "blank"
    Then the object with the key "blank" should have a content length of 0

  Scenario: Putting a multi-byte string to an object
    When I put "åß∂ƒ©" to the key "multi"
    Then the object with the key "multi" should have a content length of 11

  Scenario: Putting a file to an object
    When I put the test png to the key "img"
    Then the object with the key "img" should have a content length of 976
