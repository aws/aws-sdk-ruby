# frozen_string_literal: true

# This is generated code!

module Aws::Route53RecoveryControlConfig
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AssertionRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#AssertionRule", name: "AssertionRule")
    AssertionRuleUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#AssertionRuleUpdate", name: "AssertionRuleUpdate")
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#Cluster", name: "Cluster")
    ClusterEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ClusterEndpoint", name: "ClusterEndpoint")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ControlPanel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ControlPanel", name: "ControlPanel")
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#CreateClusterResponse", name: "CreateClusterResponse")
    CreateControlPanelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#CreateControlPanelRequest", name: "CreateControlPanelRequest")
    CreateControlPanelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#CreateControlPanelResponse", name: "CreateControlPanelResponse")
    CreateRoutingControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#CreateRoutingControlRequest", name: "CreateRoutingControlRequest")
    CreateRoutingControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#CreateRoutingControlResponse", name: "CreateRoutingControlResponse")
    CreateSafetyRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#CreateSafetyRuleRequest", name: "CreateSafetyRuleRequest")
    CreateSafetyRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#CreateSafetyRuleResponse", name: "CreateSafetyRuleResponse")
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DeleteClusterRequest", name: "DeleteClusterRequest")
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DeleteClusterResponse", name: "DeleteClusterResponse")
    DeleteControlPanelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DeleteControlPanelRequest", name: "DeleteControlPanelRequest")
    DeleteControlPanelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DeleteControlPanelResponse", name: "DeleteControlPanelResponse")
    DeleteRoutingControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DeleteRoutingControlRequest", name: "DeleteRoutingControlRequest")
    DeleteRoutingControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DeleteRoutingControlResponse", name: "DeleteRoutingControlResponse")
    DeleteSafetyRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DeleteSafetyRuleRequest", name: "DeleteSafetyRuleRequest")
    DeleteSafetyRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DeleteSafetyRuleResponse", name: "DeleteSafetyRuleResponse")
    DescribeClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DescribeClusterRequest", name: "DescribeClusterRequest")
    DescribeClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DescribeClusterResponse", name: "DescribeClusterResponse")
    DescribeControlPanelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DescribeControlPanelRequest", name: "DescribeControlPanelRequest")
    DescribeControlPanelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DescribeControlPanelResponse", name: "DescribeControlPanelResponse")
    DescribeRoutingControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DescribeRoutingControlRequest", name: "DescribeRoutingControlRequest")
    DescribeRoutingControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DescribeRoutingControlResponse", name: "DescribeRoutingControlResponse")
    DescribeSafetyRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DescribeSafetyRuleRequest", name: "DescribeSafetyRuleRequest")
    DescribeSafetyRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#DescribeSafetyRuleResponse", name: "DescribeSafetyRuleResponse")
    GatingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#GatingRule", name: "GatingRule")
    GatingRuleUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#GatingRuleUpdate", name: "GatingRuleUpdate")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListAssociatedRoute53HealthChecksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListAssociatedRoute53HealthChecksRequest", name: "ListAssociatedRoute53HealthChecksRequest")
    ListAssociatedRoute53HealthChecksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListAssociatedRoute53HealthChecksResponse", name: "ListAssociatedRoute53HealthChecksResponse")
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListClustersRequest", name: "ListClustersRequest")
    ListClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListClustersResponse", name: "ListClustersResponse")
    ListControlPanelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListControlPanelsRequest", name: "ListControlPanelsRequest")
    ListControlPanelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListControlPanelsResponse", name: "ListControlPanelsResponse")
    ListRoutingControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListRoutingControlsRequest", name: "ListRoutingControlsRequest")
    ListRoutingControlsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListRoutingControlsResponse", name: "ListRoutingControlsResponse")
    ListSafetyRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListSafetyRulesRequest", name: "ListSafetyRulesRequest")
    ListSafetyRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListSafetyRulesResponse", name: "ListSafetyRulesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53recoverycontrolconfig#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53recoverycontrolconfig#NetworkType", name: "NetworkType")
    NewAssertionRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#NewAssertionRule", name: "NewAssertionRule")
    NewGatingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#NewGatingRule", name: "NewGatingRule")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoutingControl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#RoutingControl", name: "RoutingControl")
    Rule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#Rule", name: "Rule")
    RuleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#RuleConfig", name: "RuleConfig")
    RuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53recoverycontrolconfig#RuleType", name: "RuleType")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53recoverycontrolconfig#Status", name: "Status")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#TagResourceResponse", name: "TagResourceResponse")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UpdateClusterRequest", name: "UpdateClusterRequest")
    UpdateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UpdateClusterResponse", name: "UpdateClusterResponse")
    UpdateControlPanelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UpdateControlPanelRequest", name: "UpdateControlPanelRequest")
    UpdateControlPanelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UpdateControlPanelResponse", name: "UpdateControlPanelResponse")
    UpdateRoutingControlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UpdateRoutingControlRequest", name: "UpdateRoutingControlRequest")
    UpdateRoutingControlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UpdateRoutingControlResponse", name: "UpdateRoutingControlResponse")
    UpdateSafetyRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UpdateSafetyRuleRequest", name: "UpdateSafetyRuleRequest")
    UpdateSafetyRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#UpdateSafetyRuleResponse", name: "UpdateSafetyRuleResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoverycontrolconfig#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__boolean", name: "Boolean")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__integer", name: "Integer")
    Listofcluster = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__listOfCluster", name: "Listofcluster")
    Listofclusterendpoint = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__listOfClusterEndpoint", name: "Listofclusterendpoint")
    Listofcontrolpanel = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__listOfControlPanel", name: "Listofcontrolpanel")
    Listofroutingcontrol = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__listOfRoutingControl", name: "Listofroutingcontrol")
    Listofrule = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__listOfRule", name: "Listofrule")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__listOf__string", name: "ListofString")
    ListofStringmax36patterns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__listOf__stringMax36PatternS", name: "ListofStringmax36patterns")
    ListofStringmin1max256patternazaz09 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__listOf__stringMin1Max256PatternAZaZ09", name: "ListofStringmin1max256patternazaz09")
    MapofStringmin0max256patterns = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__mapOf__stringMin0Max256PatternS", name: "MapofStringmin0max256patterns")
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__policy", name: "Policy", traits: {"smithy.api#length" => {"min" => 2, "max" => 10240}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]+$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__string", name: "String")
    Stringmax36patterns = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__stringMax36PatternS", name: "Stringmax36patterns", traits: {"smithy.api#length" => {"min" => 0, "max" => 36}, "smithy.api#pattern" => "^\\S+$"})
    Stringmin0max256patterns = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__stringMin0Max256PatternS", name: "Stringmin0max256patterns", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    Stringmin12max12patternd12 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__stringMin12Max12PatternD12", name: "Stringmin12max12patternd12", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    Stringmin1max128patternazaz09 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__stringMin1Max128PatternAZaZ09", name: "Stringmin1max128patternazaz09", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9:.\\/_-]*$"})
    Stringmin1max256patternazaz09 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__stringMin1Max256PatternAZaZ09", name: "Stringmin1max256patternazaz09", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9:\\/_-]*$"})
    Stringmin1max32patterns = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__stringMin1Max32PatternS", name: "Stringmin1max32patterns", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^\\S+$"})
    Stringmin1max64patterns = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__stringMin1Max64PatternS", name: "Stringmin1max64patterns", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    Stringmin1max8096patterns = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoverycontrolconfig#__stringMin1Max8096PatternS", name: "Stringmin1max8096patterns", traits: {"smithy.api#length" => {"min" => 1, "max" => 8096}, "smithy.api#pattern" => "^[\\S]*$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AssertionRule.add_member(:asserted_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmin1max256patternazaz09, name: "AssertedControls", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRule.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ControlPanelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRule.add_member(:rule_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfig, name: "RuleConfig", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRule.add_member(:safety_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "SafetyRuleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRule.add_member(:wait_period_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "WaitPeriodMs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRule.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin12max12patternd12, name: "Owner"))
    AssertionRule.type = Types::AssertionRule
    AssertionRuleUpdate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRuleUpdate.add_member(:safety_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "SafetyRuleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRuleUpdate.add_member(:wait_period_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "WaitPeriodMs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssertionRuleUpdate.type = Types::AssertionRuleUpdate
    Cluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ClusterArn"))
    Cluster.add_member(:cluster_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofclusterendpoint, name: "ClusterEndpoints"))
    Cluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name"))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    Cluster.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin12max12patternd12, name: "Owner"))
    Cluster.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    Cluster.type = Types::Cluster
    ClusterEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max128patternazaz09, name: "Endpoint"))
    ClusterEndpoint.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max32patterns, name: "Region"))
    ClusterEndpoint.type = Types::ClusterEndpoint
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ControlPanel.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ClusterArn"))
    ControlPanel.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ControlPanelArn"))
    ControlPanel.add_member(:default_control_panel, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultControlPanel"))
    ControlPanel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name"))
    ControlPanel.add_member(:routing_control_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RoutingControlCount"))
    ControlPanel.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    ControlPanel.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin12max12patternd12, name: "Owner"))
    ControlPanel.type = Types::ControlPanel
    CreateClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "ClusterName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofStringmin0max256patterns, name: "Tags"))
    CreateClusterRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateControlPanelRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateControlPanelRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ClusterArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateControlPanelRequest.add_member(:control_panel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "ControlPanelName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateControlPanelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofStringmin0max256patterns, name: "Tags"))
    CreateControlPanelRequest.type = Types::CreateControlPanelRequest
    CreateControlPanelResponse.add_member(:control_panel, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlPanel, name: "ControlPanel"))
    CreateControlPanelResponse.type = Types::CreateControlPanelResponse
    CreateRoutingControlRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRoutingControlRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ClusterArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRoutingControlRequest.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ControlPanelArn"))
    CreateRoutingControlRequest.add_member(:routing_control_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "RoutingControlName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRoutingControlRequest.type = Types::CreateRoutingControlRequest
    CreateRoutingControlResponse.add_member(:routing_control, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControl, name: "RoutingControl"))
    CreateRoutingControlResponse.type = Types::CreateRoutingControlResponse
    CreateSafetyRuleRequest.add_member(:assertion_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: NewAssertionRule, name: "AssertionRule"))
    CreateSafetyRuleRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSafetyRuleRequest.add_member(:gating_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: NewGatingRule, name: "GatingRule"))
    CreateSafetyRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofStringmin0max256patterns, name: "Tags"))
    CreateSafetyRuleRequest.type = Types::CreateSafetyRuleRequest
    CreateSafetyRuleResponse.add_member(:assertion_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionRule, name: "AssertionRule"))
    CreateSafetyRuleResponse.add_member(:gating_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: GatingRule, name: "GatingRule"))
    CreateSafetyRuleResponse.type = Types::CreateSafetyRuleResponse
    DeleteClusterRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteControlPanelRequest.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ControlPanelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteControlPanelRequest.type = Types::DeleteControlPanelRequest
    DeleteControlPanelResponse.type = Types::DeleteControlPanelResponse
    DeleteRoutingControlRequest.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoutingControlArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoutingControlRequest.type = Types::DeleteRoutingControlRequest
    DeleteRoutingControlResponse.type = Types::DeleteRoutingControlResponse
    DeleteSafetyRuleRequest.add_member(:safety_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SafetyRuleArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSafetyRuleRequest.type = Types::DeleteSafetyRuleRequest
    DeleteSafetyRuleResponse.type = Types::DeleteSafetyRuleResponse
    DescribeClusterRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterRequest.type = Types::DescribeClusterRequest
    DescribeClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    DescribeClusterResponse.type = Types::DescribeClusterResponse
    DescribeControlPanelRequest.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ControlPanelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeControlPanelRequest.type = Types::DescribeControlPanelRequest
    DescribeControlPanelResponse.add_member(:control_panel, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlPanel, name: "ControlPanel"))
    DescribeControlPanelResponse.type = Types::DescribeControlPanelResponse
    DescribeRoutingControlRequest.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoutingControlArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRoutingControlRequest.type = Types::DescribeRoutingControlRequest
    DescribeRoutingControlResponse.add_member(:routing_control, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControl, name: "RoutingControl"))
    DescribeRoutingControlResponse.type = Types::DescribeRoutingControlResponse
    DescribeSafetyRuleRequest.add_member(:safety_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SafetyRuleArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSafetyRuleRequest.type = Types::DescribeSafetyRuleRequest
    DescribeSafetyRuleResponse.add_member(:assertion_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionRule, name: "AssertionRule"))
    DescribeSafetyRuleResponse.add_member(:gating_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: GatingRule, name: "GatingRule"))
    DescribeSafetyRuleResponse.type = Types::DescribeSafetyRuleResponse
    GatingRule.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ControlPanelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRule.add_member(:gating_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmin1max256patternazaz09, name: "GatingControls", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRule.add_member(:rule_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfig, name: "RuleConfig", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRule.add_member(:safety_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "SafetyRuleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRule.add_member(:target_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmin1max256patternazaz09, name: "TargetControls", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRule.add_member(:wait_period_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "WaitPeriodMs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRule.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin12max12patternd12, name: "Owner"))
    GatingRule.type = Types::GatingRule
    GatingRuleUpdate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRuleUpdate.add_member(:safety_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "SafetyRuleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRuleUpdate.add_member(:wait_period_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "WaitPeriodMs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GatingRuleUpdate.type = Types::GatingRuleUpdate
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListAssociatedRoute53HealthChecksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListAssociatedRoute53HealthChecksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListAssociatedRoute53HealthChecksRequest.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoutingControlArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedRoute53HealthChecksRequest.type = Types::ListAssociatedRoute53HealthChecksRequest
    ListAssociatedRoute53HealthChecksResponse.add_member(:health_check_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax36patterns, name: "HealthCheckIds"))
    ListAssociatedRoute53HealthChecksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max8096patterns, name: "NextToken"))
    ListAssociatedRoute53HealthChecksResponse.type = Types::ListAssociatedRoute53HealthChecksResponse
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcluster, name: "Clusters"))
    ListClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max8096patterns, name: "NextToken"))
    ListClustersResponse.type = Types::ListClustersResponse
    ListControlPanelsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpQuery" => "ClusterArn"}))
    ListControlPanelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListControlPanelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListControlPanelsRequest.type = Types::ListControlPanelsRequest
    ListControlPanelsResponse.add_member(:control_panels, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcontrolpanel, name: "ControlPanels"))
    ListControlPanelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max8096patterns, name: "NextToken"))
    ListControlPanelsResponse.type = Types::ListControlPanelsResponse
    ListRoutingControlsRequest.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ControlPanelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutingControlsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRoutingControlsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRoutingControlsRequest.type = Types::ListRoutingControlsRequest
    ListRoutingControlsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max8096patterns, name: "NextToken"))
    ListRoutingControlsResponse.add_member(:routing_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofroutingcontrol, name: "RoutingControls"))
    ListRoutingControlsResponse.type = Types::ListRoutingControlsResponse
    ListSafetyRulesRequest.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ControlPanelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSafetyRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListSafetyRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSafetyRulesRequest.type = Types::ListSafetyRulesRequest
    ListSafetyRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max8096patterns, name: "NextToken"))
    ListSafetyRulesResponse.add_member(:safety_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofrule, name: "SafetyRules"))
    ListSafetyRulesResponse.type = Types::ListSafetyRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofStringmin0max256patterns, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUALSTACK", traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    NewAssertionRule.add_member(:asserted_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmin1max256patternazaz09, name: "AssertedControls", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewAssertionRule.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ControlPanelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewAssertionRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewAssertionRule.add_member(:rule_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfig, name: "RuleConfig", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewAssertionRule.add_member(:wait_period_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "WaitPeriodMs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewAssertionRule.type = Types::NewAssertionRule
    NewGatingRule.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ControlPanelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewGatingRule.add_member(:gating_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmin1max256patternazaz09, name: "GatingControls", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewGatingRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewGatingRule.add_member(:rule_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfig, name: "RuleConfig", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewGatingRule.add_member(:target_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmin1max256patternazaz09, name: "TargetControls", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewGatingRule.add_member(:wait_period_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "WaitPeriodMs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NewGatingRule.type = Types::NewGatingRule
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoutingControl.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ControlPanelArn"))
    RoutingControl.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "Name"))
    RoutingControl.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "RoutingControlArn"))
    RoutingControl.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    RoutingControl.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin12max12patternd12, name: "Owner"))
    RoutingControl.type = Types::RoutingControl
    Rule.add_member(:assertion, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionRule, name: "ASSERTION"))
    Rule.add_member(:gating, ::Smithy::Schema::Shapes::MemberShape.new(target: GatingRule, name: "GATING"))
    Rule.type = Types::Rule
    RuleConfig.add_member(:inverted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Inverted", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RuleConfig.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Threshold", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RuleConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RuleConfig.type = Types::RuleConfig
    RuleType.add_member(:atleast, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATLEAST", traits: {"smithy.api#enumValue" => "ATLEAST"}))
    RuleType.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AND", traits: {"smithy.api#enumValue" => "AND"}))
    RuleType.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OR", traits: {"smithy.api#enumValue" => "OR"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Status.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    Status.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYED", traits: {"smithy.api#enumValue" => "DEPLOYED"}))
    Status.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofStringmin0max256patterns, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateClusterRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ClusterArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateControlPanelRequest.add_member(:control_panel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "ControlPanelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateControlPanelRequest.add_member(:control_panel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "ControlPanelName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateControlPanelRequest.type = Types::UpdateControlPanelRequest
    UpdateControlPanelResponse.add_member(:control_panel, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlPanel, name: "ControlPanel"))
    UpdateControlPanelResponse.type = Types::UpdateControlPanelResponse
    UpdateRoutingControlRequest.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "RoutingControlArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateRoutingControlRequest.add_member(:routing_control_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64patterns, name: "RoutingControlName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateRoutingControlRequest.type = Types::UpdateRoutingControlRequest
    UpdateRoutingControlResponse.add_member(:routing_control, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControl, name: "RoutingControl"))
    UpdateRoutingControlResponse.type = Types::UpdateRoutingControlResponse
    UpdateSafetyRuleRequest.add_member(:assertion_rule_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionRuleUpdate, name: "AssertionRuleUpdate"))
    UpdateSafetyRuleRequest.add_member(:gating_rule_update, ::Smithy::Schema::Shapes::MemberShape.new(target: GatingRuleUpdate, name: "GatingRuleUpdate"))
    UpdateSafetyRuleRequest.type = Types::UpdateSafetyRuleRequest
    UpdateSafetyRuleResponse.add_member(:assertion_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionRule, name: "AssertionRule"))
    UpdateSafetyRuleResponse.add_member(:gating_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: GatingRule, name: "GatingRule"))
    UpdateSafetyRuleResponse.type = Types::UpdateSafetyRuleResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    Listofcluster.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "member")
    Listofclusterendpoint.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterEndpoint, name: "member")
    Listofcontrolpanel.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ControlPanel, name: "member")
    Listofroutingcontrol.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingControl, name: "member")
    Listofrule.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "member")
    ListofString.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    ListofStringmax36patterns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax36patterns, name: "member")
    ListofStringmin1max256patternazaz09.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max256patternazaz09, name: "member")
    MapofStringmin0max256patterns.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    MapofStringmin0max256patterns.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max256patterns, name: "value")

    Route53RecoveryControlConfig = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53recoverycontrolconfig#Route53RecoveryControlConfig"
      service.name = "Route53RecoveryControlConfig"
      service.version = "2020-11-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53 Recovery Control Config", "arnNamespace" => "route53-recovery-control-config", "cloudFormationName" => "Route53RecoveryControlConfig", "cloudTrailEventSource" => "route53recoverycontrolconfig.amazonaws.com", "endpointPrefix" => "route53-recovery-control-config"}, "aws.auth#sigv4" => {"name" => "route53-recovery-control-config"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AWS Route53 Recovery Control Config"}
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cluster", "code" => 200}}
      end)
      service.add_operation(:create_control_panel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#CreateControlPanel"
        operation.name = "CreateControlPanel"
        operation.input = CreateControlPanelRequest
        operation.output = CreateControlPanelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/controlpanel", "code" => 200}}
      end)
      service.add_operation(:create_routing_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#CreateRoutingControl"
        operation.name = "CreateRoutingControl"
        operation.input = CreateRoutingControlRequest
        operation.output = CreateRoutingControlResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/routingcontrol", "code" => 200}}
      end)
      service.add_operation(:create_safety_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#CreateSafetyRule"
        operation.name = "CreateSafetyRule"
        operation.input = CreateSafetyRuleRequest
        operation.output = CreateSafetyRuleResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/safetyrule", "code" => 200}}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterRequest
        operation.output = DeleteClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/cluster/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:delete_control_panel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DeleteControlPanel"
        operation.name = "DeleteControlPanel"
        operation.input = DeleteControlPanelRequest
        operation.output = DeleteControlPanelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/controlpanel/{ControlPanelArn}", "code" => 200}}
      end)
      service.add_operation(:delete_routing_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DeleteRoutingControl"
        operation.name = "DeleteRoutingControl"
        operation.input = DeleteRoutingControlRequest
        operation.output = DeleteRoutingControlResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/routingcontrol/{RoutingControlArn}", "code" => 200}}
      end)
      service.add_operation(:delete_safety_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DeleteSafetyRule"
        operation.name = "DeleteSafetyRule"
        operation.input = DeleteSafetyRuleRequest
        operation.output = DeleteSafetyRuleResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/safetyrule/{SafetyRuleArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = DescribeClusterRequest
        operation.output = DescribeClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cluster/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:describe_control_panel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DescribeControlPanel"
        operation.name = "DescribeControlPanel"
        operation.input = DescribeControlPanelRequest
        operation.output = DescribeControlPanelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controlpanel/{ControlPanelArn}", "code" => 200}}
      end)
      service.add_operation(:describe_routing_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DescribeRoutingControl"
        operation.name = "DescribeRoutingControl"
        operation.input = DescribeRoutingControlRequest
        operation.output = DescribeRoutingControlResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/routingcontrol/{RoutingControlArn}", "code" => 200}}
      end)
      service.add_operation(:describe_safety_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DescribeSafetyRule"
        operation.name = "DescribeSafetyRule"
        operation.input = DescribeSafetyRuleRequest
        operation.output = DescribeSafetyRuleResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/safetyrule/{SafetyRuleArn}", "code" => 200}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resourcePolicy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_associated_route53_health_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListAssociatedRoute53HealthChecks"
        operation.name = "ListAssociatedRoute53HealthChecks"
        operation.input = ListAssociatedRoute53HealthChecksRequest
        operation.output = ListAssociatedRoute53HealthChecksResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/routingcontrol/{RoutingControlArn}/associatedRoute53HealthChecks", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedRoute53HealthChecks.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersRequest
        operation.output = ListClustersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cluster", "code" => 200}}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_control_panels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListControlPanels"
        operation.name = "ListControlPanels"
        operation.input = ListControlPanelsRequest
        operation.output = ListControlPanelsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controlpanels", "code" => 200}}
        operation[:paginator] = Paginators::ListControlPanels.new
      end)
      service.add_operation(:list_routing_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListRoutingControls"
        operation.name = "ListRoutingControls"
        operation.input = ListRoutingControlsRequest
        operation.output = ListRoutingControlsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controlpanel/{ControlPanelArn}/routingcontrols", "code" => 200}}
        operation[:paginator] = Paginators::ListRoutingControls.new
      end)
      service.add_operation(:list_safety_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListSafetyRules"
        operation.name = "ListSafetyRules"
        operation.input = ListSafetyRulesRequest
        operation.output = ListSafetyRulesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controlpanel/{ControlPanelArn}/safetyrules", "code" => 200}}
        operation[:paginator] = Paginators::ListSafetyRules.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = UpdateClusterRequest
        operation.output = UpdateClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/cluster", "code" => 200}}
      end)
      service.add_operation(:update_control_panel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UpdateControlPanel"
        operation.name = "UpdateControlPanel"
        operation.input = UpdateControlPanelRequest
        operation.output = UpdateControlPanelResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/controlpanel", "code" => 200}}
      end)
      service.add_operation(:update_routing_control, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UpdateRoutingControl"
        operation.name = "UpdateRoutingControl"
        operation.input = UpdateRoutingControlRequest
        operation.output = UpdateRoutingControlResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/routingcontrol", "code" => 200}}
      end)
      service.add_operation(:update_safety_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UpdateSafetyRule"
        operation.name = "UpdateSafetyRule"
        operation.input = UpdateSafetyRuleRequest
        operation.output = UpdateSafetyRuleResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/safetyrule", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
