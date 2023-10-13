# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for EMR

  @emr @smoke
  Scenario: ListClustersSuccess
    Given I create a 'Aws::EMR' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_clusters' with params:
      """
{}
      """
    Then I expect an error was not raised

  @emr @smoke
  Scenario: DescribeClusterFailure
    Given I create a 'Aws::EMR' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_cluster' with params:
      """
{"cluster_id":"fake_cluster"}
      """
    Then I expect an error was raised
