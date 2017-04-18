# language: en
@s3 @resources @downloadfile
Feature: Managed file download

 Background:
    Given I create a bucket

  @get
  Scenario: Download a small object
    Given I have a 1M file
    And I upload the file using put_object
    When I download the file with mode "auto"
    And 1 get_object request should have been made
    And the downloaded file should match the uploaded file
    And this test file has been cleaned up

  # Any object uploaded in parts, is downloaded in parts
  @get-part @large-file
  Scenario: Download a large object using part numbers
    Given I have a 16M file
    And I upload the file
    When I download the file with mode "auto"
    Then 4 upload_part requests should have been made
    And 4 get_object requests should have been made
    And the downloaded file should match the uploaded file
    And this test file has been cleaned up

  # "larger" objects (exceeding 15MB) are downloaded in chunks,
  # using RANGE requests, even if the it was not uploaded in parts
  @get-range @large-file
  Scenario: Download a large object using ranges
    Given I have a 16M file
    And I upload the file using put_object
    When I download the file with mode "auto"
    Then 4 get_object requests should have been made
    And the downloaded file should match the uploaded file
    And this test file has been cleaned up

  # "auto" mode helps computes an approach when
  # range option and parts option are both available
  # for "larger" objects (exceeding 15MB)
  @auto @large-file
  Scenario: Download a large object in auto mode
    Given I have a 16M file
    And I upload the file
    When I download the file with mode "auto" with 3M chunk size
    Then 6 get_object requests should have been made
    And the downloaded file should match the uploaded file
    And this test file has been cleaned up

  # Users can specify mode: 'single-request' to force the object
  # to download in 1 request, this avoids the HEAD object request
  # penalty, especially useful for small objects.
  @mode
  Scenario: Download a large object using single_request
    Given I have a 1M file
    And I upload the file
    When I download the file with mode "single_request"
    Then 0 head_object request should have been made
    And 1 get_object request should have been made
    And the downloaded file should match the uploaded file
    And this test file has been cleaned up

  # It is possible for the user to control the chunk size of each
  # part downloaded, by specifing a mode "get-range" and also
  # an option to define how large each chunk is.
  @mode @get_range @large-file
  Scenario: Download a large object using chunk size
    Given I have a 16M file
    And I upload the file
    When I download the file with mode "get_range" with 8M chunk size
    Then 2 get_object requests should have been made
    And the downloaded file should match the uploaded file
    And this test file has been cleaned up
