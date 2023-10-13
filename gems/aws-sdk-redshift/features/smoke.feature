# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Redshift

  @redshift @smoke
  Scenario: DescribeClusterVersionsSuccess
    Given I create a 'Aws::Redshift' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_cluster_versions' with params:
      """
{}
      """
    Then I expect an error was not raised

  @redshift @smoke
  Scenario: DescribeClustersFailure
    Given I create a 'Aws::Redshift' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_clusters' with params:
      """
{"cluster_identifier":"fake-cluster"}
      """
    Then I expect an error was raised
