# language: en
@s3 @resources @presigend_post
Feature: Aws::S3::PresignedPost

  Background:
    Given I create a bucket resource

  Scenario: Using a presigned-post form to upload an object via POST
    When I create a presigned post
    Then I should be able to POST an object to the form url
