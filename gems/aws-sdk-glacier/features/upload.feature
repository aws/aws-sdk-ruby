# language: en
@glacier @upload
Feature: Amazon Glacier

  Background:
    Given I have a vault ready to receive uploads

  Scenario: Uploading an archive from a string
    When I upload an archive with the contents "Hello World!"
    Then I should be able to delete the archive

  @slow
  Scenario: Uploading and deleting an archive
    When I upload an archive from a 5.5MB large file
    Then I should be able to delete the archive

  @multipart @slow
  Scenario: Using multipart upload interface
    When I multipart-upload a 15.5MB file in 1048576 byte chunks
    Then I should be able to delete the archive

  # There was an issue where the client would fail attempting to compute
  # a checksum of an empty body, this step ensures that the checksum
  # computation does not hang.
  Scenario: Attempting to upload an empty archive
    When I upload an archive with the contents ""
    Then I expect the response error code to be "InvalidParameterValueException"
