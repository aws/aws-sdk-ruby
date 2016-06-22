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

  Scenario: Using server-side-encryption with customer-provided key
    When I put "hello" to the key "test" with an aes key
    Then I can download the key "test" with the aes key

  Scenario: Reading an object from S3
    Given I put "hello" to the key "test"
    When I get the object with the key "test"
    Then the body should be an IO object
    And the body#read method should return "hello"

  Scenario: Using block mode with GET object and errors
    When I get an object that doesn't exist with a read block
    Then an error should be raise and the block should not yield

  Scenario: URL decoding Keys
    Given I put "data1" to the key "a b"
    And I put "data2" to the key "a+b"
    Then the keys in my bucket should be
    | keys |
    | a b  |
    | a+b  |

  @paging
  Scenario: Paging responses
    Given I put nothing to the key "photos/camping/cascades.jpg"
    Given I put nothing to the key "photos/skiing/stevens.jpg"
    And I put nothing to the key "photos/family.jpg"
    And I put nothing to the key "photos/friends.jpg"
    When I page s3 objects prefixed "photos/" delimited "/" limit 1
    Then I should have received 4 responses

  # Previously, this was causing an issue as S3 was closing the socket
  # as the Ruby SDK was not sending Expect: 100-continue. This also
  # exercises the patch that fixes the faulty net/http implementation
  # of 100-continue.
  @100continue
  Scenario: Expect 100 continue
    When I put a large object with a broken content-md5
    Then I should receive an invalid digest error
