# frozen_string_literal: true

# This is generated code!

module Aws::Route53RecoveryControlConfig
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AssertionRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#AssertionRule', name: 'AssertionRule')
    AssertionRuleUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#AssertionRuleUpdate', name: 'AssertionRuleUpdate')
    Cluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#Cluster', name: 'Cluster')
    ClusterEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ClusterEndpoint', name: 'ClusterEndpoint')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ControlPanel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ControlPanel', name: 'ControlPanel')
    CreateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#CreateClusterResponse', name: 'CreateClusterResponse')
    CreateControlPanelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#CreateControlPanelRequest', name: 'CreateControlPanelRequest')
    CreateControlPanelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#CreateControlPanelResponse', name: 'CreateControlPanelResponse')
    CreateRoutingControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#CreateRoutingControlRequest', name: 'CreateRoutingControlRequest')
    CreateRoutingControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#CreateRoutingControlResponse', name: 'CreateRoutingControlResponse')
    CreateSafetyRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#CreateSafetyRuleRequest', name: 'CreateSafetyRuleRequest')
    CreateSafetyRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#CreateSafetyRuleResponse', name: 'CreateSafetyRuleResponse')
    DeleteClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DeleteClusterRequest', name: 'DeleteClusterRequest')
    DeleteClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DeleteClusterResponse', name: 'DeleteClusterResponse')
    DeleteControlPanelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DeleteControlPanelRequest', name: 'DeleteControlPanelRequest')
    DeleteControlPanelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DeleteControlPanelResponse', name: 'DeleteControlPanelResponse')
    DeleteRoutingControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DeleteRoutingControlRequest', name: 'DeleteRoutingControlRequest')
    DeleteRoutingControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DeleteRoutingControlResponse', name: 'DeleteRoutingControlResponse')
    DeleteSafetyRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DeleteSafetyRuleRequest', name: 'DeleteSafetyRuleRequest')
    DeleteSafetyRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DeleteSafetyRuleResponse', name: 'DeleteSafetyRuleResponse')
    DescribeClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DescribeClusterRequest', name: 'DescribeClusterRequest')
    DescribeClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DescribeClusterResponse', name: 'DescribeClusterResponse')
    DescribeControlPanelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DescribeControlPanelRequest', name: 'DescribeControlPanelRequest')
    DescribeControlPanelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DescribeControlPanelResponse', name: 'DescribeControlPanelResponse')
    DescribeRoutingControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DescribeRoutingControlRequest', name: 'DescribeRoutingControlRequest')
    DescribeRoutingControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DescribeRoutingControlResponse', name: 'DescribeRoutingControlResponse')
    DescribeSafetyRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DescribeSafetyRuleRequest', name: 'DescribeSafetyRuleRequest')
    DescribeSafetyRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#DescribeSafetyRuleResponse', name: 'DescribeSafetyRuleResponse')
    GatingRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#GatingRule', name: 'GatingRule')
    GatingRuleUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#GatingRuleUpdate', name: 'GatingRuleUpdate')
    GetResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListAssociatedRoute53HealthChecksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListAssociatedRoute53HealthChecksRequest', name: 'ListAssociatedRoute53HealthChecksRequest')
    ListAssociatedRoute53HealthChecksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListAssociatedRoute53HealthChecksResponse', name: 'ListAssociatedRoute53HealthChecksResponse')
    ListClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListClustersRequest', name: 'ListClustersRequest')
    ListClustersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListClustersResponse', name: 'ListClustersResponse')
    ListControlPanelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListControlPanelsRequest', name: 'ListControlPanelsRequest')
    ListControlPanelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListControlPanelsResponse', name: 'ListControlPanelsResponse')
    ListRoutingControlsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListRoutingControlsRequest', name: 'ListRoutingControlsRequest')
    ListRoutingControlsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListRoutingControlsResponse', name: 'ListRoutingControlsResponse')
    ListSafetyRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListSafetyRulesRequest', name: 'ListSafetyRulesRequest')
    ListSafetyRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListSafetyRulesResponse', name: 'ListSafetyRulesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NetworkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#NetworkType', name: 'NetworkType')
    NewAssertionRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#NewAssertionRule', name: 'NewAssertionRule')
    NewGatingRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#NewGatingRule', name: 'NewGatingRule')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoutingControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#RoutingControl', name: 'RoutingControl')
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#Rule', name: 'Rule')
    RuleConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#RuleConfig', name: 'RuleConfig')
    RuleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#RuleType', name: 'RuleType')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#Status', name: 'Status')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#TagResourceResponse', name: 'TagResourceResponse')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UpdateClusterRequest', name: 'UpdateClusterRequest')
    UpdateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UpdateClusterResponse', name: 'UpdateClusterResponse')
    UpdateControlPanelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UpdateControlPanelRequest', name: 'UpdateControlPanelRequest')
    UpdateControlPanelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UpdateControlPanelResponse', name: 'UpdateControlPanelResponse')
    UpdateRoutingControlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UpdateRoutingControlRequest', name: 'UpdateRoutingControlRequest')
    UpdateRoutingControlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UpdateRoutingControlResponse', name: 'UpdateRoutingControlResponse')
    UpdateSafetyRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UpdateSafetyRuleRequest', name: 'UpdateSafetyRuleRequest')
    UpdateSafetyRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#UpdateSafetyRuleResponse', name: 'UpdateSafetyRuleResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__boolean', name: 'Boolean')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__integer', name: 'Integer')
    Listofcluster = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__listOfCluster', name: 'Listofcluster')
    Listofclusterendpoint = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__listOfClusterEndpoint', name: 'Listofclusterendpoint')
    Listofcontrolpanel = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__listOfControlPanel', name: 'Listofcontrolpanel')
    Listofroutingcontrol = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__listOfRoutingControl', name: 'Listofroutingcontrol')
    Listofrule = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__listOfRule', name: 'Listofrule')
    ListofString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__listOf__string', name: 'ListofString')
    ListofStringmax36patterns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__listOf__stringMax36PatternS', name: 'ListofStringmax36patterns')
    ListofStringmin1max256patternazaz09 = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__listOf__stringMin1Max256PatternAZaZ09', name: 'ListofStringmin1max256patternazaz09')
    MapofStringmin0max256patterns = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__mapOf__stringMin0Max256PatternS', name: 'MapofStringmin0max256patterns')
    Policy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 2, "max" => 10240}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]+$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__string', name: 'String')
    Stringmax36patterns = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__stringMax36PatternS', name: 'Stringmax36patterns', traits: {"smithy.api#length" => {"min" => 0, "max" => 36}, "smithy.api#pattern" => "^\\S+$"})
    Stringmin0max256patterns = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__stringMin0Max256PatternS', name: 'Stringmin0max256patterns', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    Stringmin12max12patternd12 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__stringMin12Max12PatternD12', name: 'Stringmin12max12patternd12', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    Stringmin1max128patternazaz09 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__stringMin1Max128PatternAZaZ09', name: 'Stringmin1max128patternazaz09', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9:.\\/_-]*$"})
    Stringmin1max256patternazaz09 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__stringMin1Max256PatternAZaZ09', name: 'Stringmin1max256patternazaz09', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9:\\/_-]*$"})
    Stringmin1max32patterns = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__stringMin1Max32PatternS', name: 'Stringmin1max32patterns', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^\\S+$"})
    Stringmin1max64patterns = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__stringMin1Max64PatternS', name: 'Stringmin1max64patterns', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    Stringmin1max8096patterns = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53recoverycontrolconfig#__stringMin1Max8096PatternS', name: 'Stringmin1max8096patterns', traits: {"smithy.api#length" => {"min" => 1, "max" => 8096}, "smithy.api#pattern" => "^[\\S]*$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AssertionRule.add_member(:asserted_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmin1max256patternazaz09, location_name: 'AssertedControls', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed. For example, you might include three routing controls, one for each of three Amazon Web Services Regions.</p>", "smithy.api#required" => {}}))
    AssertionRule.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ControlPanelArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>", "smithy.api#required" => {}}))
    AssertionRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Name of the assertion rule. You can use any non-white space character in the name.</p>", "smithy.api#required" => {}}))
    AssertionRule.add_member(:rule_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfig, location_name: 'RuleConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria that you set for specific assertion routing controls (AssertedControls) that designate how many routing control states must be ON as the result of a transaction. For example, if you have three assertion routing controls, you might specify ATLEAST 2 for your rule configuration. This means that at least two assertion routing control states must be ON, so that at least two Amazon Web Services Regions have traffic flowing to them.</p>", "smithy.api#required" => {}}))
    AssertionRule.add_member(:safety_rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'SafetyRuleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the assertion rule.</p>", "smithy.api#required" => {}}))
    AssertionRule.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The deployment status of an assertion rule. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>", "smithy.api#required" => {}}))
    AssertionRule.add_member(:wait_period_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'WaitPeriodMs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>", "smithy.api#required" => {}}))
    AssertionRule.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin12max12patternd12, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the assertion rule owner.</p>"}))
    AssertionRule.type = Types::AssertionRule
    AssertionRuleUpdate.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the assertion rule. You can use any non-white space character in the name.</p>", "smithy.api#required" => {}}))
    AssertionRuleUpdate.add_member(:safety_rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'SafetyRuleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the assertion rule.</p>", "smithy.api#required" => {}}))
    AssertionRuleUpdate.add_member(:wait_period_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'WaitPeriodMs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>", "smithy.api#required" => {}}))
    AssertionRuleUpdate.type = Types::AssertionRuleUpdate
    Cluster.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>"}))
    Cluster.add_member(:cluster_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclusterendpoint, location_name: 'ClusterEndpoints', traits: {"smithy.api#documentation" => "<p>Endpoints for a cluster. Specify one of these endpoints when you want to set or retrieve a routing control state in the cluster.</p> <p>To get or update the routing control state, see the Amazon Route 53 Application Recovery Controller Routing Control Actions.</p>"}))
    Cluster.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the cluster.</p>"}))
    Cluster.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Deployment status of a resource. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>"}))
    Cluster.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin12max12patternd12, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the cluster owner.</p>"}))
    Cluster.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>The network type of the cluster. NetworkType can be one of the following: IPV4, DUALSTACK.</p>"}))
    Cluster.type = Types::Cluster
    ClusterEndpoint.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128patternazaz09, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>A cluster endpoint. Specify an endpoint and Amazon Web Services Region when you want to set or retrieve a routing control state in the cluster.</p> <p>To get or update the routing control state, see the Amazon Route 53 Application Recovery Controller Routing Control Actions.</p>"}))
    ClusterEndpoint.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max32patterns, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region for a cluster endpoint.</p>"}))
    ClusterEndpoint.type = Types::ClusterEndpoint
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ControlPanel.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster that includes the control panel.</p>"}))
    ControlPanel.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>"}))
    ControlPanel.add_member(:default_control_panel, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultControlPanel', traits: {"smithy.api#documentation" => "<p>A flag that Amazon Route 53 Application Recovery Controller sets to true to designate the default control panel for a cluster. When you create a cluster, Amazon Route 53 Application Recovery Controller creates a control panel, and sets this flag for that control panel. If you create a control panel yourself, this flag is set to false.</p>"}))
    ControlPanel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the control panel. You can use any non-white space character in the name.</p>"}))
    ControlPanel.add_member(:routing_control_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RoutingControlCount', traits: {"smithy.api#documentation" => "<p>The number of routing controls in the control panel.</p>"}))
    ControlPanel.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The deployment status of control panel. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>"}))
    ControlPanel.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin12max12patternd12, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the control panel owner.</p>"}))
    ControlPanel.type = Types::ControlPanel
    CreateClusterRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'ClusterName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the cluster.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofStringmin0max256patterns, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the cluster.</p>"}))
    CreateClusterRequest.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>The network type of the cluster. NetworkType can be one of the following: IPV4, DUALSTACK.</p>"}))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>The cluster that was created.</p>"}))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateControlPanelRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateControlPanelRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster for the control panel.</p>", "smithy.api#required" => {}}))
    CreateControlPanelRequest.add_member(:control_panel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'ControlPanelName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the control panel.</p>", "smithy.api#required" => {}}))
    CreateControlPanelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofStringmin0max256patterns, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the control panel.</p>"}))
    CreateControlPanelRequest.type = Types::CreateControlPanelRequest
    CreateControlPanelResponse.add_member(:control_panel, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlPanel, location_name: 'ControlPanel', traits: {"smithy.api#documentation" => "<p>Information about a control panel.</p>"}))
    CreateControlPanelResponse.type = Types::CreateControlPanelResponse
    CreateRoutingControlRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRoutingControlRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster that includes the routing control.</p>", "smithy.api#required" => {}}))
    CreateRoutingControlRequest.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel that includes the routing control.</p>"}))
    CreateRoutingControlRequest.add_member(:routing_control_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'RoutingControlName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the routing control.</p>", "smithy.api#required" => {}}))
    CreateRoutingControlRequest.type = Types::CreateRoutingControlRequest
    CreateRoutingControlResponse.add_member(:routing_control, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControl, location_name: 'RoutingControl', traits: {"smithy.api#documentation" => "<p>The routing control that is created.</p>"}))
    CreateRoutingControlResponse.type = Types::CreateRoutingControlResponse
    CreateSafetyRuleRequest.add_member(:assertion_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: NewAssertionRule, location_name: 'AssertionRule', traits: {"smithy.api#documentation" => "<p>The assertion rule requested.</p>"}))
    CreateSafetyRuleRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSafetyRuleRequest.add_member(:gating_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: NewGatingRule, location_name: 'GatingRule', traits: {"smithy.api#documentation" => "<p>The gating rule requested.</p>"}))
    CreateSafetyRuleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofStringmin0max256patterns, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the safety rule.</p>"}))
    CreateSafetyRuleRequest.type = Types::CreateSafetyRuleRequest
    CreateSafetyRuleResponse.add_member(:assertion_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionRule, location_name: 'AssertionRule', traits: {"smithy.api#documentation" => "<p>The assertion rule created.</p>"}))
    CreateSafetyRuleResponse.add_member(:gating_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: GatingRule, location_name: 'GatingRule', traits: {"smithy.api#documentation" => "<p>The gating rule created.</p>"}))
    CreateSafetyRuleResponse.type = Types::CreateSafetyRuleResponse
    DeleteClusterRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster that you're deleting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteControlPanelRequest.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteControlPanelRequest.type = Types::DeleteControlPanelRequest
    DeleteControlPanelResponse.type = Types::DeleteControlPanelResponse
    DeleteRoutingControlRequest.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the routing control that you're deleting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRoutingControlRequest.type = Types::DeleteRoutingControlRequest
    DeleteRoutingControlResponse.type = Types::DeleteRoutingControlResponse
    DeleteSafetyRuleRequest.add_member(:safety_rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SafetyRuleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the safety rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSafetyRuleRequest.type = Types::DeleteSafetyRuleRequest
    DeleteSafetyRuleResponse.type = Types::DeleteSafetyRuleResponse
    DescribeClusterRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterRequest.type = Types::DescribeClusterRequest
    DescribeClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>The cluster for the DescribeCluster request.</p>"}))
    DescribeClusterResponse.type = Types::DescribeClusterResponse
    DescribeControlPanelRequest.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeControlPanelRequest.type = Types::DescribeControlPanelRequest
    DescribeControlPanelResponse.add_member(:control_panel, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlPanel, location_name: 'ControlPanel', traits: {"smithy.api#documentation" => "<p>Information about the control panel.</p>"}))
    DescribeControlPanelResponse.type = Types::DescribeControlPanelResponse
    DescribeRoutingControlRequest.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the routing control.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRoutingControlRequest.type = Types::DescribeRoutingControlRequest
    DescribeRoutingControlResponse.add_member(:routing_control, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControl, location_name: 'RoutingControl', traits: {"smithy.api#documentation" => "<p>Information about the routing control.</p>"}))
    DescribeRoutingControlResponse.type = Types::DescribeRoutingControlResponse
    DescribeSafetyRuleRequest.add_member(:safety_rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SafetyRuleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the safety rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSafetyRuleRequest.type = Types::DescribeSafetyRuleRequest
    DescribeSafetyRuleResponse.add_member(:assertion_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionRule, location_name: 'AssertionRule', traits: {"smithy.api#documentation" => "<p>The assertion rule in the response.</p>"}))
    DescribeSafetyRuleResponse.add_member(:gating_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: GatingRule, location_name: 'GatingRule', traits: {"smithy.api#documentation" => "<p>The gating rule in the response.</p>"}))
    DescribeSafetyRuleResponse.type = Types::DescribeSafetyRuleResponse
    GatingRule.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ControlPanelArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>", "smithy.api#required" => {}}))
    GatingRule.add_member(:gating_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmin1max256patternazaz09, location_name: 'GatingControls', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of gating routing control Amazon Resource Names (ARNs). For a simple \"on/off\" switch, specify the ARN for one routing control. The gating routing controls are evaluated by the rule configuration that you specify to determine if the target routing control states can be changed.</p>", "smithy.api#required" => {}}))
    GatingRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name for the gating rule. You can use any non-white space character in the name.</p>", "smithy.api#required" => {}}))
    GatingRule.add_member(:rule_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfig, location_name: 'RuleConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria that you set for gating routing controls that designate how many of the routing control states must be ON to allow you to update target routing control states.</p>", "smithy.api#required" => {}}))
    GatingRule.add_member(:safety_rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'SafetyRuleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gating rule.</p>", "smithy.api#required" => {}}))
    GatingRule.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The deployment status of a gating rule. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>", "smithy.api#required" => {}}))
    GatingRule.add_member(:target_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmin1max256patternazaz09, location_name: 'TargetControls', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of target routing control Amazon Resource Names (ARNs) for which the states can only be updated if the rule configuration that you specify evaluates to true for the gating routing control. As a simple example, if you have a single gating control, it acts as an overall \"on/off\" switch for a set of target routing controls. You can use this to manually override automated failover, for example.</p>", "smithy.api#required" => {}}))
    GatingRule.add_member(:wait_period_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'WaitPeriodMs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>", "smithy.api#required" => {}}))
    GatingRule.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin12max12patternd12, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the gating rule owner.</p>"}))
    GatingRule.type = Types::GatingRule
    GatingRuleUpdate.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name for the gating rule. You can use any non-white space character in the name.</p>", "smithy.api#required" => {}}))
    GatingRuleUpdate.add_member(:safety_rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'SafetyRuleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the gating rule.</p>", "smithy.api#required" => {}}))
    GatingRuleUpdate.add_member(:wait_period_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'WaitPeriodMs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>", "smithy.api#required" => {}}))
    GatingRuleUpdate.type = Types::GatingRuleUpdate
    GetResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The resource policy.</p>"}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListAssociatedRoute53HealthChecksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of objects that you want to return with this call.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListAssociatedRoute53HealthChecksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListAssociatedRoute53HealthChecksRequest.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the routing control.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedRoute53HealthChecksRequest.type = Types::ListAssociatedRoute53HealthChecksRequest
    ListAssociatedRoute53HealthChecksResponse.add_member(:health_check_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax36patterns, location_name: 'HealthCheckIds', traits: {"smithy.api#documentation" => "<p>Identifiers for the health checks.</p>"}))
    ListAssociatedRoute53HealthChecksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max8096patterns, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Next token for listing health checks.</p>"}))
    ListAssociatedRoute53HealthChecksResponse.type = Types::ListAssociatedRoute53HealthChecksResponse
    ListClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of objects that you want to return with this call.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcluster, location_name: 'Clusters', traits: {"smithy.api#documentation" => "<p>An array of the clusters in an account.</p>"}))
    ListClustersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max8096patterns, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>"}))
    ListClustersResponse.type = Types::ListClustersResponse
    ListControlPanelsRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a cluster.</p>", "smithy.api#httpQuery" => "ClusterArn"}))
    ListControlPanelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of objects that you want to return with this call.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListControlPanelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListControlPanelsRequest.type = Types::ListControlPanelsRequest
    ListControlPanelsResponse.add_member(:control_panels, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcontrolpanel, location_name: 'ControlPanels', traits: {"smithy.api#documentation" => "<p>The result of a successful ListControlPanel request.</p>"}))
    ListControlPanelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max8096patterns, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>"}))
    ListControlPanelsResponse.type = Types::ListControlPanelsResponse
    ListRoutingControlsRequest.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutingControlsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of objects that you want to return with this call.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListRoutingControlsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListRoutingControlsRequest.type = Types::ListRoutingControlsRequest
    ListRoutingControlsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max8096patterns, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>"}))
    ListRoutingControlsResponse.add_member(:routing_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofroutingcontrol, location_name: 'RoutingControls', traits: {"smithy.api#documentation" => "<p>An array of routing controls.</p>"}))
    ListRoutingControlsResponse.type = Types::ListRoutingControlsResponse
    ListSafetyRulesRequest.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSafetyRulesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of objects that you want to return with this call.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListSafetyRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListSafetyRulesRequest.type = Types::ListSafetyRulesRequest
    ListSafetyRulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max8096patterns, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that identifies which batch of results you want to see.</p>"}))
    ListSafetyRulesResponse.add_member(:safety_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofrule, location_name: 'SafetyRules', traits: {"smithy.api#documentation" => "<p>The list of safety rules in a control panel.</p>"}))
    ListSafetyRulesResponse.type = Types::ListSafetyRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofStringmin0max256patterns, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NetworkType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:dualstack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    NewAssertionRule.add_member(:asserted_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmin1max256patternazaz09, location_name: 'AssertedControls', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed. For example, you might include three routing controls, one for each of three Amazon Web Services Regions.</p>", "smithy.api#required" => {}}))
    NewAssertionRule.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ControlPanelArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the control panel.</p>", "smithy.api#required" => {}}))
    NewAssertionRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the assertion rule. You can use any non-white space character in the name.</p>", "smithy.api#required" => {}}))
    NewAssertionRule.add_member(:rule_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfig, location_name: 'RuleConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria that you set for specific assertion controls (routing controls) that designate how many control states must be ON as the result of a transaction. For example, if you have three assertion controls, you might specify ATLEAST 2 for your rule configuration. This means that at least two assertion controls must be ON, so that at least two Amazon Web Services Regions have traffic flowing to them.</p>", "smithy.api#required" => {}}))
    NewAssertionRule.add_member(:wait_period_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'WaitPeriodMs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>", "smithy.api#required" => {}}))
    NewAssertionRule.type = Types::NewAssertionRule
    NewGatingRule.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ControlPanelArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>", "smithy.api#required" => {}}))
    NewGatingRule.add_member(:gating_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmin1max256patternazaz09, location_name: 'GatingControls', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.</p>", "smithy.api#required" => {}}))
    NewGatingRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name for the new gating rule.</p>", "smithy.api#required" => {}}))
    NewGatingRule.add_member(:rule_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfig, location_name: 'RuleConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria that you set for specific gating controls (routing controls) that designate how many control states must be ON to allow you to change (set or unset) the target control states.</p>", "smithy.api#required" => {}}))
    NewGatingRule.add_member(:target_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmin1max256patternazaz09, location_name: 'TargetControls', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Routing controls that can only be set or unset if the specified RuleConfig evaluates to true for the specified GatingControls. For example, say you have three gating controls, one for each of three Amazon Web Services Regions. Now you specify ATLEAST 2 as your RuleConfig. With these settings, you can only change (set or unset) the routing controls that you have specified as TargetControls if that rule evaluates to true.</p> <p>In other words, your ability to change the routing controls that you have specified as TargetControls is gated by the rule that you set for the routing controls in GatingControls.</p>", "smithy.api#required" => {}}))
    NewGatingRule.add_member(:wait_period_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'WaitPeriodMs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>", "smithy.api#required" => {}}))
    NewGatingRule.type = Types::NewGatingRule
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoutingControl.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ControlPanelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel that includes the routing control.</p>"}))
    RoutingControl.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the routing control.</p>"}))
    RoutingControl.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'RoutingControlArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the routing control.</p>"}))
    RoutingControl.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The deployment status of a routing control. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>"}))
    RoutingControl.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin12max12patternd12, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the routing control owner.</p>"}))
    RoutingControl.type = Types::RoutingControl
    Rule.add_member(:assertion, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionRule, location_name: 'ASSERTION', traits: {"smithy.api#documentation" => "<p>An assertion rule enforces that, when a routing control state is changed, the criteria set by the rule configuration is met. Otherwise, the change to the routing control state is not accepted. For example, the criteria might be that at least one routing control state is On after the transaction so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario.</p>"}))
    Rule.add_member(:gating, Smithy::Schema::Shapes::ShapeRef.new(shape: GatingRule, location_name: 'GATING', traits: {"smithy.api#documentation" => "<p>A gating rule verifies that a gating routing control or set of gating routing controls, evaluates as true, based on a rule configuration that you specify, which allows a set of routing control state changes to complete.</p> <p>For example, if you specify one gating routing control and you set the Type in the rule configuration to OR, that indicates that you must set the gating routing control to On for the rule to evaluate as true; that is, for the gating control \"switch\" to be \"On\". When you do that, then you can update the routing control states for the target routing controls that you specify in the gating rule.</p>"}))
    Rule.type = Types::Rule
    RuleConfig.add_member(:inverted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Inverted', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Logical negation of the rule. If the rule would usually evaluate true, it's evaluated as false, and vice versa.</p>", "smithy.api#required" => {}}))
    RuleConfig.add_member(:threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Threshold', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value of N, when you specify an ATLEAST rule type. That is, Threshold is the number of controls that must be set when you specify an ATLEAST type.</p>", "smithy.api#required" => {}}))
    RuleConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleType, location_name: 'Type', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A rule can be one of the following: ATLEAST, AND, or OR.</p>", "smithy.api#required" => {}}))
    RuleConfig.type = Types::RuleConfig
    RuleType.add_member(:atleast, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATLEAST', traits: {"smithy.api#enumValue" => "ATLEAST"}))
    RuleType.add_member(:and, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AND', traits: {"smithy.api#enumValue" => "AND"}))
    RuleType.add_member(:or, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OR', traits: {"smithy.api#enumValue" => "OR"}))
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Status.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    Status.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYED', traits: {"smithy.api#enumValue" => "DEPLOYED"}))
    Status.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DELETION', traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofStringmin0max256patterns, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The tags associated with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Keys for the tags to be removed.</p>", "smithy.api#httpQuery" => "TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateClusterRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The network type of the cluster. NetworkType can be one of the following: IPV4, DUALSTACK.</p>", "smithy.api#required" => {}}))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>The cluster that was updated.</p>"}))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateControlPanelRequest.add_member(:control_panel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'ControlPanelArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the control panel.</p>", "smithy.api#required" => {}}))
    UpdateControlPanelRequest.add_member(:control_panel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'ControlPanelName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the control panel.</p>", "smithy.api#required" => {}}))
    UpdateControlPanelRequest.type = Types::UpdateControlPanelRequest
    UpdateControlPanelResponse.add_member(:control_panel, Smithy::Schema::Shapes::ShapeRef.new(shape: ControlPanel, location_name: 'ControlPanel', traits: {"smithy.api#documentation" => "<p>The control panel to update.</p>"}))
    UpdateControlPanelResponse.type = Types::UpdateControlPanelResponse
    UpdateRoutingControlRequest.add_member(:routing_control_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09, location_name: 'RoutingControlArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the routing control.</p>", "smithy.api#required" => {}}))
    UpdateRoutingControlRequest.add_member(:routing_control_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patterns, location_name: 'RoutingControlName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the routing control.</p>", "smithy.api#required" => {}}))
    UpdateRoutingControlRequest.type = Types::UpdateRoutingControlRequest
    UpdateRoutingControlResponse.add_member(:routing_control, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControl, location_name: 'RoutingControl', traits: {"smithy.api#documentation" => "<p>The routing control that was updated.</p>"}))
    UpdateRoutingControlResponse.type = Types::UpdateRoutingControlResponse
    UpdateSafetyRuleRequest.add_member(:assertion_rule_update, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionRuleUpdate, location_name: 'AssertionRuleUpdate', traits: {"smithy.api#documentation" => "<p>The assertion rule to update.</p>"}))
    UpdateSafetyRuleRequest.add_member(:gating_rule_update, Smithy::Schema::Shapes::ShapeRef.new(shape: GatingRuleUpdate, location_name: 'GatingRuleUpdate', traits: {"smithy.api#documentation" => "<p>The gating rule to update.</p>"}))
    UpdateSafetyRuleRequest.type = Types::UpdateSafetyRuleRequest
    UpdateSafetyRuleResponse.add_member(:assertion_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionRule, location_name: 'AssertionRule', traits: {"smithy.api#documentation" => "<p>The assertion rule updated.</p>"}))
    UpdateSafetyRuleResponse.add_member(:gating_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: GatingRule, location_name: 'GatingRule', traits: {"smithy.api#documentation" => "<p>The gating rule updated.</p>"}))
    UpdateSafetyRuleResponse.type = Types::UpdateSafetyRuleResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    Listofcluster.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster)
    Listofclusterendpoint.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterEndpoint)
    Listofcontrolpanel.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ControlPanel)
    Listofroutingcontrol.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControl)
    Listofrule.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    ListofString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListofStringmax36patterns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmax36patterns)
    ListofStringmin1max256patternazaz09.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max256patternazaz09)
    MapofStringmin0max256patterns.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofStringmin0max256patterns.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max256patterns)

    Route53RecoveryControlConfig = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53recoverycontrolconfig#Route53RecoveryControlConfig"
      service.name = "Route53RecoveryControlConfig"
      service.version = "2020-11-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53 Recovery Control Config", "arnNamespace" => "route53-recovery-control-config", "cloudFormationName" => "Route53RecoveryControlConfig", "cloudTrailEventSource" => "route53recoverycontrolconfig.amazonaws.com", "endpointPrefix" => "route53-recovery-control-config"}, "aws.auth#sigv4" => {"name" => "route53-recovery-control-config"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AWS Route53 Recovery Control Config"}
      service.add_operation(:create_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cluster", "code" => 200}}
      end)
      service.add_operation(:create_control_panel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#CreateControlPanel"
        operation.name = "CreateControlPanel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlPanelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateControlPanelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/controlpanel", "code" => 200}}
      end)
      service.add_operation(:create_routing_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#CreateRoutingControl"
        operation.name = "CreateRoutingControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRoutingControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRoutingControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/routingcontrol", "code" => 200}}
      end)
      service.add_operation(:create_safety_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#CreateSafetyRule"
        operation.name = "CreateSafetyRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSafetyRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSafetyRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/safetyrule", "code" => 200}}
      end)
      service.add_operation(:delete_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/cluster/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:delete_control_panel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DeleteControlPanel"
        operation.name = "DeleteControlPanel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteControlPanelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteControlPanelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/controlpanel/{ControlPanelArn}", "code" => 200}}
      end)
      service.add_operation(:delete_routing_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DeleteRoutingControl"
        operation.name = "DeleteRoutingControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRoutingControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRoutingControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/routingcontrol/{RoutingControlArn}", "code" => 200}}
      end)
      service.add_operation(:delete_safety_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DeleteSafetyRule"
        operation.name = "DeleteSafetyRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSafetyRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSafetyRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/safetyrule/{SafetyRuleArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cluster/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:describe_control_panel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DescribeControlPanel"
        operation.name = "DescribeControlPanel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeControlPanelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeControlPanelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controlpanel/{ControlPanelArn}", "code" => 200}}
      end)
      service.add_operation(:describe_routing_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DescribeRoutingControl"
        operation.name = "DescribeRoutingControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRoutingControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRoutingControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/routingcontrol/{RoutingControlArn}", "code" => 200}}
      end)
      service.add_operation(:describe_safety_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#DescribeSafetyRule"
        operation.name = "DescribeSafetyRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSafetyRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSafetyRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/safetyrule/{SafetyRuleArn}", "code" => 200}}
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resourcePolicy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_associated_route53_health_checks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListAssociatedRoute53HealthChecks"
        operation.name = "ListAssociatedRoute53HealthChecks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedRoute53HealthChecksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedRoute53HealthChecksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/routingcontrol/{RoutingControlArn}/associatedRoute53HealthChecks", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedRoute53HealthChecks.new
      end)
      service.add_operation(:list_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListClusters"
        operation.name = "ListClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cluster", "code" => 200}}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_control_panels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListControlPanels"
        operation.name = "ListControlPanels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlPanelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListControlPanelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controlpanels", "code" => 200}}
        operation[:paginator] = Paginators::ListControlPanels.new
      end)
      service.add_operation(:list_routing_controls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListRoutingControls"
        operation.name = "ListRoutingControls"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoutingControlsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoutingControlsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controlpanel/{ControlPanelArn}/routingcontrols", "code" => 200}}
        operation[:paginator] = Paginators::ListRoutingControls.new
      end)
      service.add_operation(:list_safety_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListSafetyRules"
        operation.name = "ListSafetyRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSafetyRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSafetyRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/controlpanel/{ControlPanelArn}/safetyrules", "code" => 200}}
        operation[:paginator] = Paginators::ListSafetyRules.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/cluster", "code" => 200}}
      end)
      service.add_operation(:update_control_panel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UpdateControlPanel"
        operation.name = "UpdateControlPanel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateControlPanelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateControlPanelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/controlpanel", "code" => 200}}
      end)
      service.add_operation(:update_routing_control, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UpdateRoutingControl"
        operation.name = "UpdateRoutingControl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoutingControlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRoutingControlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/routingcontrol", "code" => 200}}
      end)
      service.add_operation(:update_safety_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoverycontrolconfig#UpdateSafetyRule"
        operation.name = "UpdateSafetyRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSafetyRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSafetyRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/safetyrule", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
