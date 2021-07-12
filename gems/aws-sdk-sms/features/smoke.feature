# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SMS

Background:
  Given I create a client in region 'us-west-2'

  @sms @smoke
  Scenario: Call Aws::SMS::Client#get_connectors and expect it to succeed
  When I call the operation 'get_connectors' with params:
    """
{}
    """
  Then I expect an error was not raised

  @sms @smoke
  Scenario: Call Aws::Aws::SMS::Client#delete_replication_job and expect it to fail
  When I call the operation 'delete_replication_job' with params:
    """
{"replication_job_id":"invalidId"}
    """
  Then I expect an error was raised
