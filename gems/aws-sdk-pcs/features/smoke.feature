# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PCS

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
  Scenario: InstanceArnSuccess
    Given I create a 'Aws::PCS' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_compute_node_group' with params:
      """
{"cluster_identifier":"testCluster","compute_node_group_name":"testNodeGroupName","subnet_ids":["subnet-0cbf727bae9405b47"],"scaling_configuration":{"min_instance_count":1,"max_instance_count":1},"iam_instance_profile_arn":"arn:aws:iam::975050141277:instance-profile/aws-pcs/example-role-2","custom_launch_template":{"id":"lt-0b8f8ee3f92b73dc0","version":"1"},"instance_configs":[{"instance_type":"t3.medium"}]}
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
