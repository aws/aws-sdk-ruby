# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53RecoveryControlConfig
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssertionRule = Shapes::StructureShape.new(name: 'AssertionRule')
    AssertionRuleUpdate = Shapes::StructureShape.new(name: 'AssertionRuleUpdate')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterEndpoint = Shapes::StructureShape.new(name: 'ClusterEndpoint')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ControlPanel = Shapes::StructureShape.new(name: 'ControlPanel')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateControlPanelRequest = Shapes::StructureShape.new(name: 'CreateControlPanelRequest')
    CreateControlPanelResponse = Shapes::StructureShape.new(name: 'CreateControlPanelResponse')
    CreateRoutingControlRequest = Shapes::StructureShape.new(name: 'CreateRoutingControlRequest')
    CreateRoutingControlResponse = Shapes::StructureShape.new(name: 'CreateRoutingControlResponse')
    CreateSafetyRuleRequest = Shapes::StructureShape.new(name: 'CreateSafetyRuleRequest')
    CreateSafetyRuleResponse = Shapes::StructureShape.new(name: 'CreateSafetyRuleResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteControlPanelRequest = Shapes::StructureShape.new(name: 'DeleteControlPanelRequest')
    DeleteControlPanelResponse = Shapes::StructureShape.new(name: 'DeleteControlPanelResponse')
    DeleteRoutingControlRequest = Shapes::StructureShape.new(name: 'DeleteRoutingControlRequest')
    DeleteRoutingControlResponse = Shapes::StructureShape.new(name: 'DeleteRoutingControlResponse')
    DeleteSafetyRuleRequest = Shapes::StructureShape.new(name: 'DeleteSafetyRuleRequest')
    DeleteSafetyRuleResponse = Shapes::StructureShape.new(name: 'DeleteSafetyRuleResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeControlPanelRequest = Shapes::StructureShape.new(name: 'DescribeControlPanelRequest')
    DescribeControlPanelResponse = Shapes::StructureShape.new(name: 'DescribeControlPanelResponse')
    DescribeRoutingControlRequest = Shapes::StructureShape.new(name: 'DescribeRoutingControlRequest')
    DescribeRoutingControlResponse = Shapes::StructureShape.new(name: 'DescribeRoutingControlResponse')
    DescribeSafetyRuleRequest = Shapes::StructureShape.new(name: 'DescribeSafetyRuleRequest')
    DescribeSafetyRuleResponse = Shapes::StructureShape.new(name: 'DescribeSafetyRuleResponse')
    GatingRule = Shapes::StructureShape.new(name: 'GatingRule')
    GatingRuleUpdate = Shapes::StructureShape.new(name: 'GatingRuleUpdate')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAssociatedRoute53HealthChecksRequest = Shapes::StructureShape.new(name: 'ListAssociatedRoute53HealthChecksRequest')
    ListAssociatedRoute53HealthChecksResponse = Shapes::StructureShape.new(name: 'ListAssociatedRoute53HealthChecksResponse')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListControlPanelsRequest = Shapes::StructureShape.new(name: 'ListControlPanelsRequest')
    ListControlPanelsResponse = Shapes::StructureShape.new(name: 'ListControlPanelsResponse')
    ListRoutingControlsRequest = Shapes::StructureShape.new(name: 'ListRoutingControlsRequest')
    ListRoutingControlsResponse = Shapes::StructureShape.new(name: 'ListRoutingControlsResponse')
    ListSafetyRulesRequest = Shapes::StructureShape.new(name: 'ListSafetyRulesRequest')
    ListSafetyRulesResponse = Shapes::StructureShape.new(name: 'ListSafetyRulesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NewAssertionRule = Shapes::StructureShape.new(name: 'NewAssertionRule')
    NewGatingRule = Shapes::StructureShape.new(name: 'NewGatingRule')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoutingControl = Shapes::StructureShape.new(name: 'RoutingControl')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleConfig = Shapes::StructureShape.new(name: 'RuleConfig')
    RuleType = Shapes::StringShape.new(name: 'RuleType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Status = Shapes::StringShape.new(name: 'Status')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateControlPanelRequest = Shapes::StructureShape.new(name: 'UpdateControlPanelRequest')
    UpdateControlPanelResponse = Shapes::StructureShape.new(name: 'UpdateControlPanelResponse')
    UpdateRoutingControlRequest = Shapes::StructureShape.new(name: 'UpdateRoutingControlRequest')
    UpdateRoutingControlResponse = Shapes::StructureShape.new(name: 'UpdateRoutingControlResponse')
    UpdateSafetyRuleRequest = Shapes::StructureShape.new(name: 'UpdateSafetyRuleRequest')
    UpdateSafetyRuleResponse = Shapes::StructureShape.new(name: 'UpdateSafetyRuleResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfCluster = Shapes::ListShape.new(name: '__listOfCluster')
    __listOfClusterEndpoint = Shapes::ListShape.new(name: '__listOfClusterEndpoint')
    __listOfControlPanel = Shapes::ListShape.new(name: '__listOfControlPanel')
    __listOfRoutingControl = Shapes::ListShape.new(name: '__listOfRoutingControl')
    __listOfRule = Shapes::ListShape.new(name: '__listOfRule')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __listOf__stringMax36PatternS = Shapes::ListShape.new(name: '__listOf__stringMax36PatternS')
    __listOf__stringMin1Max256PatternAZaZ09 = Shapes::ListShape.new(name: '__listOf__stringMin1Max256PatternAZaZ09')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__stringMin0Max256PatternS = Shapes::MapShape.new(name: '__mapOf__stringMin0Max256PatternS')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMax36PatternS = Shapes::StringShape.new(name: '__stringMax36PatternS')
    __stringMin0Max256PatternS = Shapes::StringShape.new(name: '__stringMin0Max256PatternS')
    __stringMin1Max128PatternAZaZ09 = Shapes::StringShape.new(name: '__stringMin1Max128PatternAZaZ09')
    __stringMin1Max256PatternAZaZ09 = Shapes::StringShape.new(name: '__stringMin1Max256PatternAZaZ09')
    __stringMin1Max32PatternS = Shapes::StringShape.new(name: '__stringMin1Max32PatternS')
    __stringMin1Max64PatternS = Shapes::StringShape.new(name: '__stringMin1Max64PatternS')
    __stringMin1Max8096PatternS = Shapes::StringShape.new(name: '__stringMin1Max8096PatternS')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssertionRule.add_member(:asserted_controls, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max256PatternAZaZ09, required: true, location_name: "AssertedControls"))
    AssertionRule.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "ControlPanelArn"))
    AssertionRule.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "Name"))
    AssertionRule.add_member(:rule_config, Shapes::ShapeRef.new(shape: RuleConfig, required: true, location_name: "RuleConfig"))
    AssertionRule.add_member(:safety_rule_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "SafetyRuleArn"))
    AssertionRule.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "Status"))
    AssertionRule.add_member(:wait_period_ms, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "WaitPeriodMs"))
    AssertionRule.struct_class = Types::AssertionRule

    AssertionRuleUpdate.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "Name"))
    AssertionRuleUpdate.add_member(:safety_rule_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "SafetyRuleArn"))
    AssertionRuleUpdate.add_member(:wait_period_ms, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "WaitPeriodMs"))
    AssertionRuleUpdate.struct_class = Types::AssertionRuleUpdate

    Cluster.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, location_name: "ClusterArn"))
    Cluster.add_member(:cluster_endpoints, Shapes::ShapeRef.new(shape: __listOfClusterEndpoint, location_name: "ClusterEndpoints"))
    Cluster.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, location_name: "Name"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    Cluster.struct_class = Types::Cluster

    ClusterEndpoint.add_member(:endpoint, Shapes::ShapeRef.new(shape: __stringMin1Max128PatternAZaZ09, location_name: "Endpoint"))
    ClusterEndpoint.add_member(:region, Shapes::ShapeRef.new(shape: __stringMin1Max32PatternS, location_name: "Region"))
    ClusterEndpoint.struct_class = Types::ClusterEndpoint

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ControlPanel.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, location_name: "ClusterArn"))
    ControlPanel.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, location_name: "ControlPanelArn"))
    ControlPanel.add_member(:default_control_panel, Shapes::ShapeRef.new(shape: __boolean, location_name: "DefaultControlPanel"))
    ControlPanel.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, location_name: "Name"))
    ControlPanel.add_member(:routing_control_count, Shapes::ShapeRef.new(shape: __integer, location_name: "RoutingControlCount"))
    ControlPanel.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    ControlPanel.struct_class = Types::ControlPanel

    CreateClusterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "ClusterName"))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__stringMin0Max256PatternS, location_name: "Tags"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateControlPanelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateControlPanelRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "ClusterArn"))
    CreateControlPanelRequest.add_member(:control_panel_name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "ControlPanelName"))
    CreateControlPanelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__stringMin0Max256PatternS, location_name: "Tags"))
    CreateControlPanelRequest.struct_class = Types::CreateControlPanelRequest

    CreateControlPanelResponse.add_member(:control_panel, Shapes::ShapeRef.new(shape: ControlPanel, location_name: "ControlPanel"))
    CreateControlPanelResponse.struct_class = Types::CreateControlPanelResponse

    CreateRoutingControlRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateRoutingControlRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "ClusterArn"))
    CreateRoutingControlRequest.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, location_name: "ControlPanelArn"))
    CreateRoutingControlRequest.add_member(:routing_control_name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "RoutingControlName"))
    CreateRoutingControlRequest.struct_class = Types::CreateRoutingControlRequest

    CreateRoutingControlResponse.add_member(:routing_control, Shapes::ShapeRef.new(shape: RoutingControl, location_name: "RoutingControl"))
    CreateRoutingControlResponse.struct_class = Types::CreateRoutingControlResponse

    CreateSafetyRuleRequest.add_member(:assertion_rule, Shapes::ShapeRef.new(shape: NewAssertionRule, location_name: "AssertionRule"))
    CreateSafetyRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateSafetyRuleRequest.add_member(:gating_rule, Shapes::ShapeRef.new(shape: NewGatingRule, location_name: "GatingRule"))
    CreateSafetyRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__stringMin0Max256PatternS, location_name: "Tags"))
    CreateSafetyRuleRequest.struct_class = Types::CreateSafetyRuleRequest

    CreateSafetyRuleResponse.add_member(:assertion_rule, Shapes::ShapeRef.new(shape: AssertionRule, location_name: "AssertionRule"))
    CreateSafetyRuleResponse.add_member(:gating_rule, Shapes::ShapeRef.new(shape: GatingRule, location_name: "GatingRule"))
    CreateSafetyRuleResponse.struct_class = Types::CreateSafetyRuleResponse

    DeleteClusterRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ClusterArn"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteControlPanelRequest.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ControlPanelArn"))
    DeleteControlPanelRequest.struct_class = Types::DeleteControlPanelRequest

    DeleteControlPanelResponse.struct_class = Types::DeleteControlPanelResponse

    DeleteRoutingControlRequest.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RoutingControlArn"))
    DeleteRoutingControlRequest.struct_class = Types::DeleteRoutingControlRequest

    DeleteRoutingControlResponse.struct_class = Types::DeleteRoutingControlResponse

    DeleteSafetyRuleRequest.add_member(:safety_rule_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SafetyRuleArn"))
    DeleteSafetyRuleRequest.struct_class = Types::DeleteSafetyRuleRequest

    DeleteSafetyRuleResponse.struct_class = Types::DeleteSafetyRuleResponse

    DescribeClusterRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ClusterArn"))
    DescribeClusterRequest.struct_class = Types::DescribeClusterRequest

    DescribeClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DescribeClusterResponse.struct_class = Types::DescribeClusterResponse

    DescribeControlPanelRequest.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ControlPanelArn"))
    DescribeControlPanelRequest.struct_class = Types::DescribeControlPanelRequest

    DescribeControlPanelResponse.add_member(:control_panel, Shapes::ShapeRef.new(shape: ControlPanel, location_name: "ControlPanel"))
    DescribeControlPanelResponse.struct_class = Types::DescribeControlPanelResponse

    DescribeRoutingControlRequest.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RoutingControlArn"))
    DescribeRoutingControlRequest.struct_class = Types::DescribeRoutingControlRequest

    DescribeRoutingControlResponse.add_member(:routing_control, Shapes::ShapeRef.new(shape: RoutingControl, location_name: "RoutingControl"))
    DescribeRoutingControlResponse.struct_class = Types::DescribeRoutingControlResponse

    DescribeSafetyRuleRequest.add_member(:safety_rule_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SafetyRuleArn"))
    DescribeSafetyRuleRequest.struct_class = Types::DescribeSafetyRuleRequest

    DescribeSafetyRuleResponse.add_member(:assertion_rule, Shapes::ShapeRef.new(shape: AssertionRule, location_name: "AssertionRule"))
    DescribeSafetyRuleResponse.add_member(:gating_rule, Shapes::ShapeRef.new(shape: GatingRule, location_name: "GatingRule"))
    DescribeSafetyRuleResponse.struct_class = Types::DescribeSafetyRuleResponse

    GatingRule.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "ControlPanelArn"))
    GatingRule.add_member(:gating_controls, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max256PatternAZaZ09, required: true, location_name: "GatingControls"))
    GatingRule.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "Name"))
    GatingRule.add_member(:rule_config, Shapes::ShapeRef.new(shape: RuleConfig, required: true, location_name: "RuleConfig"))
    GatingRule.add_member(:safety_rule_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "SafetyRuleArn"))
    GatingRule.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "Status"))
    GatingRule.add_member(:target_controls, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max256PatternAZaZ09, required: true, location_name: "TargetControls"))
    GatingRule.add_member(:wait_period_ms, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "WaitPeriodMs"))
    GatingRule.struct_class = Types::GatingRule

    GatingRuleUpdate.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "Name"))
    GatingRuleUpdate.add_member(:safety_rule_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "SafetyRuleArn"))
    GatingRuleUpdate.add_member(:wait_period_ms, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "WaitPeriodMs"))
    GatingRuleUpdate.struct_class = Types::GatingRuleUpdate

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAssociatedRoute53HealthChecksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListAssociatedRoute53HealthChecksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListAssociatedRoute53HealthChecksRequest.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "RoutingControlArn"))
    ListAssociatedRoute53HealthChecksRequest.struct_class = Types::ListAssociatedRoute53HealthChecksRequest

    ListAssociatedRoute53HealthChecksResponse.add_member(:health_check_ids, Shapes::ShapeRef.new(shape: __listOf__stringMax36PatternS, location_name: "HealthCheckIds"))
    ListAssociatedRoute53HealthChecksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max8096PatternS, location_name: "NextToken"))
    ListAssociatedRoute53HealthChecksResponse.struct_class = Types::ListAssociatedRoute53HealthChecksResponse

    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: __listOfCluster, location_name: "Clusters"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max8096PatternS, location_name: "NextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListControlPanelsRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "ClusterArn"))
    ListControlPanelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListControlPanelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListControlPanelsRequest.struct_class = Types::ListControlPanelsRequest

    ListControlPanelsResponse.add_member(:control_panels, Shapes::ShapeRef.new(shape: __listOfControlPanel, location_name: "ControlPanels"))
    ListControlPanelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max8096PatternS, location_name: "NextToken"))
    ListControlPanelsResponse.struct_class = Types::ListControlPanelsResponse

    ListRoutingControlsRequest.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ControlPanelArn"))
    ListRoutingControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListRoutingControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListRoutingControlsRequest.struct_class = Types::ListRoutingControlsRequest

    ListRoutingControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max8096PatternS, location_name: "NextToken"))
    ListRoutingControlsResponse.add_member(:routing_controls, Shapes::ShapeRef.new(shape: __listOfRoutingControl, location_name: "RoutingControls"))
    ListRoutingControlsResponse.struct_class = Types::ListRoutingControlsResponse

    ListSafetyRulesRequest.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ControlPanelArn"))
    ListSafetyRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListSafetyRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListSafetyRulesRequest.struct_class = Types::ListSafetyRulesRequest

    ListSafetyRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max8096PatternS, location_name: "NextToken"))
    ListSafetyRulesResponse.add_member(:safety_rules, Shapes::ShapeRef.new(shape: __listOfRule, location_name: "SafetyRules"))
    ListSafetyRulesResponse.struct_class = Types::ListSafetyRulesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__stringMin0Max256PatternS, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NewAssertionRule.add_member(:asserted_controls, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max256PatternAZaZ09, required: true, location_name: "AssertedControls"))
    NewAssertionRule.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "ControlPanelArn"))
    NewAssertionRule.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "Name"))
    NewAssertionRule.add_member(:rule_config, Shapes::ShapeRef.new(shape: RuleConfig, required: true, location_name: "RuleConfig"))
    NewAssertionRule.add_member(:wait_period_ms, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "WaitPeriodMs"))
    NewAssertionRule.struct_class = Types::NewAssertionRule

    NewGatingRule.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "ControlPanelArn"))
    NewGatingRule.add_member(:gating_controls, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max256PatternAZaZ09, required: true, location_name: "GatingControls"))
    NewGatingRule.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "Name"))
    NewGatingRule.add_member(:rule_config, Shapes::ShapeRef.new(shape: RuleConfig, required: true, location_name: "RuleConfig"))
    NewGatingRule.add_member(:target_controls, Shapes::ShapeRef.new(shape: __listOf__stringMin1Max256PatternAZaZ09, required: true, location_name: "TargetControls"))
    NewGatingRule.add_member(:wait_period_ms, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "WaitPeriodMs"))
    NewGatingRule.struct_class = Types::NewGatingRule

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoutingControl.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, location_name: "ControlPanelArn"))
    RoutingControl.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, location_name: "Name"))
    RoutingControl.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, location_name: "RoutingControlArn"))
    RoutingControl.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    RoutingControl.struct_class = Types::RoutingControl

    Rule.add_member(:assertion, Shapes::ShapeRef.new(shape: AssertionRule, location_name: "ASSERTION"))
    Rule.add_member(:gating, Shapes::ShapeRef.new(shape: GatingRule, location_name: "GATING"))
    Rule.struct_class = Types::Rule

    RuleConfig.add_member(:inverted, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "Inverted"))
    RuleConfig.add_member(:threshold, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "Threshold"))
    RuleConfig.add_member(:type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "Type"))
    RuleConfig.struct_class = Types::RuleConfig

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__stringMin0Max256PatternS, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateControlPanelRequest.add_member(:control_panel_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "ControlPanelArn"))
    UpdateControlPanelRequest.add_member(:control_panel_name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "ControlPanelName"))
    UpdateControlPanelRequest.struct_class = Types::UpdateControlPanelRequest

    UpdateControlPanelResponse.add_member(:control_panel, Shapes::ShapeRef.new(shape: ControlPanel, location_name: "ControlPanel"))
    UpdateControlPanelResponse.struct_class = Types::UpdateControlPanelResponse

    UpdateRoutingControlRequest.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09, required: true, location_name: "RoutingControlArn"))
    UpdateRoutingControlRequest.add_member(:routing_control_name, Shapes::ShapeRef.new(shape: __stringMin1Max64PatternS, required: true, location_name: "RoutingControlName"))
    UpdateRoutingControlRequest.struct_class = Types::UpdateRoutingControlRequest

    UpdateRoutingControlResponse.add_member(:routing_control, Shapes::ShapeRef.new(shape: RoutingControl, location_name: "RoutingControl"))
    UpdateRoutingControlResponse.struct_class = Types::UpdateRoutingControlResponse

    UpdateSafetyRuleRequest.add_member(:assertion_rule_update, Shapes::ShapeRef.new(shape: AssertionRuleUpdate, location_name: "AssertionRuleUpdate"))
    UpdateSafetyRuleRequest.add_member(:gating_rule_update, Shapes::ShapeRef.new(shape: GatingRuleUpdate, location_name: "GatingRuleUpdate"))
    UpdateSafetyRuleRequest.struct_class = Types::UpdateSafetyRuleRequest

    UpdateSafetyRuleResponse.add_member(:assertion_rule, Shapes::ShapeRef.new(shape: AssertionRule, location_name: "AssertionRule"))
    UpdateSafetyRuleResponse.add_member(:gating_rule, Shapes::ShapeRef.new(shape: GatingRule, location_name: "GatingRule"))
    UpdateSafetyRuleResponse.struct_class = Types::UpdateSafetyRuleResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    __listOfCluster.member = Shapes::ShapeRef.new(shape: Cluster)

    __listOfClusterEndpoint.member = Shapes::ShapeRef.new(shape: ClusterEndpoint)

    __listOfControlPanel.member = Shapes::ShapeRef.new(shape: ControlPanel)

    __listOfRoutingControl.member = Shapes::ShapeRef.new(shape: RoutingControl)

    __listOfRule.member = Shapes::ShapeRef.new(shape: Rule)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __listOf__stringMax36PatternS.member = Shapes::ShapeRef.new(shape: __stringMax36PatternS)

    __listOf__stringMin1Max256PatternAZaZ09.member = Shapes::ShapeRef.new(shape: __stringMin1Max256PatternAZaZ09)

    __mapOf__stringMin0Max256PatternS.key = Shapes::ShapeRef.new(shape: __string)
    __mapOf__stringMin0Max256PatternS.value = Shapes::ShapeRef.new(shape: __stringMin0Max256PatternS)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-02"

      api.metadata = {
        "apiVersion" => "2020-11-02",
        "endpointPrefix" => "route53-recovery-control-config",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Route53 Recovery Control Config",
        "serviceId" => "Route53 Recovery Control Config",
        "signatureVersion" => "v4",
        "signingName" => "route53-recovery-control-config",
        "uid" => "route53-recovery-control-config-2020-11-02",
      }

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/cluster"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_control_panel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateControlPanel"
        o.http_method = "POST"
        o.http_request_uri = "/controlpanel"
        o.input = Shapes::ShapeRef.new(shape: CreateControlPanelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateControlPanelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_routing_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoutingControl"
        o.http_method = "POST"
        o.http_request_uri = "/routingcontrol"
        o.input = Shapes::ShapeRef.new(shape: CreateRoutingControlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoutingControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_safety_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSafetyRule"
        o.http_method = "POST"
        o.http_request_uri = "/safetyrule"
        o.input = Shapes::ShapeRef.new(shape: CreateSafetyRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSafetyRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/cluster/{ClusterArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_control_panel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteControlPanel"
        o.http_method = "DELETE"
        o.http_request_uri = "/controlpanel/{ControlPanelArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteControlPanelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteControlPanelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_routing_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoutingControl"
        o.http_method = "DELETE"
        o.http_request_uri = "/routingcontrol/{RoutingControlArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoutingControlRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRoutingControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_safety_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSafetyRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/safetyrule/{SafetyRuleArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSafetyRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSafetyRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCluster"
        o.http_method = "GET"
        o.http_request_uri = "/cluster/{ClusterArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_control_panel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeControlPanel"
        o.http_method = "GET"
        o.http_request_uri = "/controlpanel/{ControlPanelArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeControlPanelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeControlPanelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_routing_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRoutingControl"
        o.http_method = "GET"
        o.http_request_uri = "/routingcontrol/{RoutingControlArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRoutingControlRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRoutingControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_safety_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSafetyRule"
        o.http_method = "GET"
        o.http_request_uri = "/safetyrule/{SafetyRuleArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeSafetyRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSafetyRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_associated_route_53_health_checks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedRoute53HealthChecks"
        o.http_method = "GET"
        o.http_request_uri = "/routingcontrol/{RoutingControlArn}/associatedRoute53HealthChecks"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedRoute53HealthChecksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedRoute53HealthChecksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "GET"
        o.http_request_uri = "/cluster"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_control_panels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControlPanels"
        o.http_method = "GET"
        o.http_request_uri = "/controlpanels"
        o.input = Shapes::ShapeRef.new(shape: ListControlPanelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListControlPanelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_routing_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoutingControls"
        o.http_method = "GET"
        o.http_request_uri = "/controlpanel/{ControlPanelArn}/routingcontrols"
        o.input = Shapes::ShapeRef.new(shape: ListRoutingControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoutingControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_safety_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSafetyRules"
        o.http_method = "GET"
        o.http_request_uri = "/controlpanel/{ControlPanelArn}/safetyrules"
        o.input = Shapes::ShapeRef.new(shape: ListSafetyRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSafetyRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_control_panel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateControlPanel"
        o.http_method = "PUT"
        o.http_request_uri = "/controlpanel"
        o.input = Shapes::ShapeRef.new(shape: UpdateControlPanelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateControlPanelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_routing_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoutingControl"
        o.http_method = "PUT"
        o.http_request_uri = "/routingcontrol"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoutingControlRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoutingControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_safety_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSafetyRule"
        o.http_method = "PUT"
        o.http_request_uri = "/safetyrule"
        o.input = Shapes::ShapeRef.new(shape: UpdateSafetyRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSafetyRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
