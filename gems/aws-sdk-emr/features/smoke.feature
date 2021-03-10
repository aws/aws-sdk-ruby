# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for EMR

Background:
  Given I create a client in region 'us-west-2'

  @emr @smoke
  Scenario: Call Aws::EMR::Client#list_clusters and expect it to succeed
  When I call the operation 'list_clusters' with params:
    """
{}
    """
  Then I expect an error was not raised

  @emr @smoke
  Scenario: Call Aws::Aws::EMR::Client#describe_cluster and expect it to fail
  When I call the operation 'describe_cluster' with params:
    """
{"cluster_id":"fake_cluster"}
    """
  Then I expect an error was raised
