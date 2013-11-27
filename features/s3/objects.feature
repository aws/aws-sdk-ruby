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

  @paging
  Scenario: Paging responses
    Given I put nothing to the key "photos/camping/cascades.jpg"
    Given I put nothing to the key "photos/skiing/stevens.jpg"
    And I put nothing to the key "photos/family.jpg"
    And I put nothing to the key "photos/friends.jpg"
    When I page s3 objects prefixed "photos/" delimited "/" limit 1
    Then I should have received 4 responses
