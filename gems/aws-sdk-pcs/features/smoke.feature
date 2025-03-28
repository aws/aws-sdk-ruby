# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PCS

  @pcs @smoke
  Scenario: ListClustersSuccess
    Given I create a 'Aws::PCS' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_clusters' with params:
      """
{}
      """
    Then I expect an error was not raised

  @pcs @smoke
  Scenario: GetComputeNodeGroup_AccessDeniedException
    Given I create a 'Aws::PCS' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_compute_node_group' with params:
      """
{"cluster_identifier":"pcs_donotexist","compute_node_group_identifier":"pcs_donotexist"}
      """
    Then I expect a 'Aws::PCS::Errors::AccessDeniedException' was raised

  @pcs @smoke
  Scenario: ListComputeNodeGroups_AccessDeniedException
    Given I create a 'Aws::PCS' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_compute_node_groups' with params:
      """
{"cluster_identifier":"pcs_donotexist"}
      """
    Then I expect a 'Aws::PCS::Errors::AccessDeniedException' was raised

  @pcs @smoke
  Scenario: ListQueueFailure_AccessDeniedException
    Given I create a 'Aws::PCS' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_queues' with params:
      """
{"cluster_identifier":"pcs_donotexist"}
      """
    Then I expect a 'Aws::PCS::Errors::AccessDeniedException' was raised

  @pcs @smoke
  Scenario: GetQueueFailure_AccessDeniedException
    Given I create a 'Aws::PCS' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_queue' with params:
      """
{"cluster_identifier":"pcs_donotexist","queue_identifier":"pcs_donotexist"}
      """
    Then I expect a 'Aws::PCS::Errors::AccessDeniedException' was raised

  @pcs @smoke
  Scenario: GetCluster_AccessDeniedException
    Given I create a 'Aws::PCS' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_cluster' with params:
      """
{"cluster_identifier":"pcs_donotexist"}
      """
    Then I expect a 'Aws::PCS::Errors::AccessDeniedException' was raised
