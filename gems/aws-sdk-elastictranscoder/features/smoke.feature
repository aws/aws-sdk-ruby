# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ElasticTranscoder

Background:
  Given I create a client in region 'us-west-2'

  @elastictranscoder @smoke
  Scenario: Call Aws::ElasticTranscoder::Client#list_presets and expect it to succeed
  When I call the operation 'list_presets' with params:
    """
{}
    """
  Then I expect an error was not raised

  @elastictranscoder @smoke
  Scenario: Call Aws::Aws::ElasticTranscoder::Client#read_job and expect it to fail
  When I call the operation 'read_job' with params:
    """
{"id":"fake_job"}
    """
  Then I expect an error was raised
