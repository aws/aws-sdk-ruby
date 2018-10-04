# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Redshift

Background:
  Given I create a client in region 'us-west-2'

  @redshift @smoke
  Scenario: Call Aws::Redshift::Client#describe_cluster_versions and expect it to succeed
  When I call the operation 'describe_cluster_versions' with params:
    """
{}
    """
  Then I expect an error was not raised

  @redshift @smoke
  Scenario: Call Aws::Aws::Redshift::Client#describe_clusters and expect it to fail
  When I call the operation 'describe_clusters' with params:
    """
{"cluster_identifier":"fake-cluster"}
    """
  Then I expect an error was raised
