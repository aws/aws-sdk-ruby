# frozen_string_literal: true

# This is generated code!

module Aws::RTBFabric
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#AcceptLinkRequest", name: "AcceptLinkRequest")
    AcceptLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#AcceptLinkResponse", name: "AcceptLinkResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AcmCertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#AcmCertificateArn", name: "AcmCertificateArn", traits: {"smithy.api#length" => {"min" => 75, "max" => 256}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):acm:[a-z0-9-]+:[0-9]{12}:certificate/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    Action = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.rtbfabric#Action", name: "Action")
    AssociateCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#AssociateCertificateRequest", name: "AssociateCertificateRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#ResponderGateway"}]})
    AssociateCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#AssociateCertificateResponse", name: "AssociateCertificateResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#ResponderGateway"}]})
    AutoScalingGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#AutoScalingGroupName", name: "AutoScalingGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AutoScalingGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#AutoScalingGroupNameList", name: "AutoScalingGroupNameList")
    AutoScalingGroupsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#AutoScalingGroupsConfiguration", name: "AutoScalingGroupsConfiguration")
    Base64EncodedCertificateChain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#Base64EncodedCertificateChain", name: "Base64EncodedCertificateChain", traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}, "smithy.api#sensitive" => {}})
    CertificateAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#CertificateAssociationStatus", name: "CertificateAssociationStatus")
    CertificateAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CertificateAssociationSummary", name: "CertificateAssociationSummary")
    CertificateAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#CertificateAssociationSummaryList", name: "CertificateAssociationSummaryList")
    CertificateAuthorityCertificates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#CertificateAuthorityCertificates", name: "CertificateAuthorityCertificates", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ClientRoutingPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#ClientRoutingPolicy", name: "ClientRoutingPolicy")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectivityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#ConnectivityType", name: "ConnectivityType")
    CreateInboundExternalLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateInboundExternalLinkRequest", name: "CreateInboundExternalLinkRequest")
    CreateInboundExternalLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateInboundExternalLinkResponse", name: "CreateInboundExternalLinkResponse")
    CreateLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateLinkRequest", name: "CreateLinkRequest")
    CreateLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateLinkResponse", name: "CreateLinkResponse")
    CreateLinkRoutingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateLinkRoutingRuleRequest", name: "CreateLinkRoutingRuleRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#Gateway"}, {"resource" => "com.amazonaws.rtbfabric#Link"}]})
    CreateLinkRoutingRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateLinkRoutingRuleResponse", name: "CreateLinkRoutingRuleResponse")
    CreateOutboundExternalLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateOutboundExternalLinkRequest", name: "CreateOutboundExternalLinkRequest")
    CreateOutboundExternalLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateOutboundExternalLinkResponse", name: "CreateOutboundExternalLinkResponse")
    CreateRequesterGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateRequesterGatewayRequest", name: "CreateRequesterGatewayRequest")
    CreateRequesterGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateRequesterGatewayResponse", name: "CreateRequesterGatewayResponse")
    CreateResponderGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateResponderGatewayRequest", name: "CreateResponderGatewayRequest")
    CreateResponderGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#CreateResponderGatewayResponse", name: "CreateResponderGatewayResponse")
    CustomerProvidedId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#CustomerProvidedId", name: "CustomerProvidedId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    DeleteInboundExternalLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteInboundExternalLinkRequest", name: "DeleteInboundExternalLinkRequest")
    DeleteInboundExternalLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteInboundExternalLinkResponse", name: "DeleteInboundExternalLinkResponse")
    DeleteLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteLinkRequest", name: "DeleteLinkRequest")
    DeleteLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteLinkResponse", name: "DeleteLinkResponse")
    DeleteLinkRoutingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteLinkRoutingRuleRequest", name: "DeleteLinkRoutingRuleRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#Gateway"}, {"resource" => "com.amazonaws.rtbfabric#Link"}]})
    DeleteLinkRoutingRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteLinkRoutingRuleResponse", name: "DeleteLinkRoutingRuleResponse")
    DeleteOutboundExternalLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteOutboundExternalLinkRequest", name: "DeleteOutboundExternalLinkRequest")
    DeleteOutboundExternalLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteOutboundExternalLinkResponse", name: "DeleteOutboundExternalLinkResponse")
    DeleteRequesterGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteRequesterGatewayRequest", name: "DeleteRequesterGatewayRequest")
    DeleteRequesterGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteRequesterGatewayResponse", name: "DeleteRequesterGatewayResponse")
    DeleteResponderGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteResponderGatewayRequest", name: "DeleteResponderGatewayRequest")
    DeleteResponderGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DeleteResponderGatewayResponse", name: "DeleteResponderGatewayResponse")
    DisassociateCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DisassociateCertificateRequest", name: "DisassociateCertificateRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#ResponderGateway"}]})
    DisassociateCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#DisassociateCertificateResponse", name: "DisassociateCertificateResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#ResponderGateway"}]})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?)(?:\\.(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?))+$"})
    EksEndpointsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#EksEndpointsConfiguration", name: "EksEndpointsConfiguration")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#Filter", name: "Filter")
    FilterConfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#FilterConfiguration", name: "FilterConfiguration")
    FilterCriteria = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#FilterCriteria", name: "FilterCriteria")
    FilterCriterion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#FilterCriterion", name: "FilterCriterion")
    FilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#FilterType", name: "FilterType")
    FlowModuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#FlowModuleName", name: "FlowModuleName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9 -]+$"})
    FlowModuleNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#FlowModuleNameList", name: "FlowModuleNameList")
    GatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#GatewayId", name: "GatewayId", traits: {"smithy.api#length" => {"min" => 8, "max" => 32}, "smithy.api#pattern" => "^rtb-gw-[a-z0-9-]{1,25}$"})
    GatewayIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#GatewayIdList", name: "GatewayIdList")
    GatewayType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#GatewayType", name: "GatewayType")
    GetCertificateAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetCertificateAssociationRequest", name: "GetCertificateAssociationRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#ResponderGateway"}]})
    GetCertificateAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetCertificateAssociationResponse", name: "GetCertificateAssociationResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#ResponderGateway"}]})
    GetInboundExternalLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetInboundExternalLinkRequest", name: "GetInboundExternalLinkRequest")
    GetInboundExternalLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetInboundExternalLinkResponse", name: "GetInboundExternalLinkResponse")
    GetLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetLinkRequest", name: "GetLinkRequest")
    GetLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetLinkResponse", name: "GetLinkResponse")
    GetLinkRoutingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetLinkRoutingRuleRequest", name: "GetLinkRoutingRuleRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#Gateway"}, {"resource" => "com.amazonaws.rtbfabric#Link"}]})
    GetLinkRoutingRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetLinkRoutingRuleResponse", name: "GetLinkRoutingRuleResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#Gateway"}, {"resource" => "com.amazonaws.rtbfabric#Link"}]})
    GetOutboundExternalLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetOutboundExternalLinkRequest", name: "GetOutboundExternalLinkRequest")
    GetOutboundExternalLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetOutboundExternalLinkResponse", name: "GetOutboundExternalLinkResponse")
    GetRequesterGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetRequesterGatewayRequest", name: "GetRequesterGatewayRequest")
    GetRequesterGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetRequesterGatewayResponse", name: "GetRequesterGatewayResponse")
    GetResponderGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetResponderGatewayRequest", name: "GetResponderGatewayRequest")
    GetResponderGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#GetResponderGatewayResponse", name: "GetResponderGatewayResponse")
    HeaderTagAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#HeaderTagAction", name: "HeaderTagAction")
    HealthCheckConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#HealthCheckConfig", name: "HealthCheckConfig")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KubernetesClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#KubernetesClusterName", name: "KubernetesClusterName", traits: {"smithy.api#length" => {"min" => 2, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"})
    KubernetesEndpointsResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#KubernetesEndpointsResourceName", name: "KubernetesEndpointsResourceName", traits: {"smithy.api#length" => {"min" => 2, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"})
    KubernetesNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#KubernetesNamespace", name: "KubernetesNamespace", traits: {"smithy.api#length" => {"min" => 2, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9]$"})
    LinkApplicationLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#LinkApplicationLogConfiguration", name: "LinkApplicationLogConfiguration")
    LinkApplicationLogSampling = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#LinkApplicationLogSampling", name: "LinkApplicationLogSampling")
    LinkAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#LinkAttributes", name: "LinkAttributes")
    LinkDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#LinkDirection", name: "LinkDirection")
    LinkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#LinkId", name: "LinkId", traits: {"smithy.api#length" => {"min" => 6, "max" => 30}, "smithy.api#pattern" => "^link-[a-z0-9-]{1,25}$"})
    LinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#LinkList", name: "LinkList")
    LinkLogSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#LinkLogSettings", name: "LinkLogSettings")
    LinkRoutingRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#LinkRoutingRuleList", name: "LinkRoutingRuleList")
    LinkRoutingRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#LinkRoutingRuleSummary", name: "LinkRoutingRuleSummary")
    LinkStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#LinkStatus", name: "LinkStatus")
    LinkTimeoutInMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rtbfabric#LinkTimeoutInMillis", name: "LinkTimeoutInMillis", traits: {"smithy.api#range" => {"min" => 100, "max" => 5000}})
    ListCertificateAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListCertificateAssociationsRequest", name: "ListCertificateAssociationsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#ResponderGateway"}]})
    ListCertificateAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListCertificateAssociationsResponse", name: "ListCertificateAssociationsResponse")
    ListLinkRoutingRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListLinkRoutingRulesRequest", name: "ListLinkRoutingRulesRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#Gateway"}, {"resource" => "com.amazonaws.rtbfabric#Link"}]})
    ListLinkRoutingRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListLinkRoutingRulesResponse", name: "ListLinkRoutingRulesResponse")
    ListLinksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListLinksRequest", name: "ListLinksRequest")
    ListLinksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListLinksResponse", name: "ListLinksResponse")
    ListLinksResponseStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListLinksResponseStructure", name: "ListLinksResponseStructure")
    ListRequesterGatewaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListRequesterGatewaysRequest", name: "ListRequesterGatewaysRequest")
    ListRequesterGatewaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListRequesterGatewaysResponse", name: "ListRequesterGatewaysResponse")
    ListResponderGatewaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListResponderGatewaysRequest", name: "ListResponderGatewaysRequest")
    ListResponderGatewaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListResponderGatewaysResponse", name: "ListResponderGatewaysResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListenerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ListenerConfig", name: "ListenerConfig")
    ManagedEndpointConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.rtbfabric#ManagedEndpointConfiguration", name: "ManagedEndpointConfiguration")
    ModuleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ModuleConfiguration", name: "ModuleConfiguration")
    ModuleConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#ModuleConfigurationList", name: "ModuleConfigurationList")
    ModuleParameters = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.rtbfabric#ModuleParameters", name: "ModuleParameters")
    NoBidAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#NoBidAction", name: "NoBidAction")
    NoBidModuleParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#NoBidModuleParameters", name: "NoBidModuleParameters")
    OpenRtbAttributeModuleParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#OpenRtbAttributeModuleParameters", name: "OpenRtbAttributeModuleParameters")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#Protocol", name: "Protocol")
    ProtocolList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#ProtocolList", name: "ProtocolList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    QueryStringKeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#QueryStringKeyValuePair", name: "QueryStringKeyValuePair")
    RateLimiterModuleParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#RateLimiterModuleParameters", name: "RateLimiterModuleParameters")
    RejectLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#RejectLinkRequest", name: "RejectLinkRequest")
    RejectLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#RejectLinkResponse", name: "RejectLinkResponse")
    RequesterGatewayStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#RequesterGatewayStatus", name: "RequesterGatewayStatus")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponderErrorMasking = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#ResponderErrorMasking", name: "ResponderErrorMasking", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResponderErrorMaskingAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#ResponderErrorMaskingAction", name: "ResponderErrorMaskingAction")
    ResponderErrorMaskingForHttpCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ResponderErrorMaskingForHttpCode", name: "ResponderErrorMaskingForHttpCode")
    ResponderErrorMaskingLoggingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#ResponderErrorMaskingLoggingType", name: "ResponderErrorMaskingLoggingType")
    ResponderErrorMaskingLoggingTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#ResponderErrorMaskingLoggingTypes", name: "ResponderErrorMaskingLoggingTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ResponderGatewayStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#ResponderGatewayStatus", name: "ResponderGatewayStatus")
    RtbTaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#RtbTaggableResourceArn", name: "RtbTaggableResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws:rtbfabric:[a-zA-Z0-9_-]+:[0-9]{12}:gateway/[a-zA-Z0-9-]+(/link/[a-zA-Z0-9-]+(/routing-rule/[a-zA-Z0-9-]+)?)?$"})
    RuleCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#RuleCondition", name: "RuleCondition")
    RuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#RuleId", name: "RuleId", traits: {"smithy.api#length" => {"min" => 6, "max" => 30}, "smithy.api#pattern" => "^rule-[a-z0-9-]{1,25}$"})
    RulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rtbfabric#RulePriority", name: "RulePriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    RuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rtbfabric#RuleStatus", name: "RuleStatus")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 11, "max" => 43}, "smithy.api#pattern" => "^sg-[0-9a-f]{8,40}$"})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#SecurityGroupIdList", name: "SecurityGroupIdList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StatusCodeMatcher = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#StatusCodeMatcher", name: "StatusCodeMatcher", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-\\w{8,17}$"})
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#SubnetIdList", name: "SubnetIdList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(resourceArn|internalId|[a-zA-Z0-9+\\-=._:/@]+)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.rtbfabric#TagsMap", name: "TagsMap")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TrustStoreConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#TrustStoreConfiguration", name: "TrustStoreConfiguration")
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#URI", name: "URI", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(https|http)://(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)(?:\\.(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?))+$"})
    URL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#URL", name: "URL", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(https|http)://.+$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateLinkModuleFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateLinkModuleFlowRequest", name: "UpdateLinkModuleFlowRequest")
    UpdateLinkModuleFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateLinkModuleFlowResponse", name: "UpdateLinkModuleFlowResponse")
    UpdateLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateLinkRequest", name: "UpdateLinkRequest")
    UpdateLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateLinkResponse", name: "UpdateLinkResponse")
    UpdateLinkRoutingRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateLinkRoutingRuleRequest", name: "UpdateLinkRoutingRuleRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.rtbfabric#Gateway"}, {"resource" => "com.amazonaws.rtbfabric#Link"}]})
    UpdateLinkRoutingRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateLinkRoutingRuleResponse", name: "UpdateLinkRoutingRuleResponse")
    UpdateRequesterGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateRequesterGatewayRequest", name: "UpdateRequesterGatewayRequest")
    UpdateRequesterGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateRequesterGatewayResponse", name: "UpdateRequesterGatewayResponse")
    UpdateResponderGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateResponderGatewayRequest", name: "UpdateResponderGatewayRequest")
    UpdateResponderGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#UpdateResponderGatewayResponse", name: "UpdateResponderGatewayResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rtbfabric#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rtbfabric#ValueList", name: "ValueList")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^[a-z0-9-]{1,25}$"})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rtbfabric#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-[a-f0-9]{8,17}$"})

    AcceptLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptLinkRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    AcceptLinkRequest.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings", traits: {"smithy.api#required" => {}}))
    AcceptLinkRequest.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkTimeoutInMillis, name: "timeoutInMillis"))
    AcceptLinkRequest.type = Types::AcceptLinkRequest
    AcceptLinkResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    AcceptLinkResponse.add_member(:peer_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "peerGatewayId", traits: {"smithy.api#required" => {}}))
    AcceptLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AcceptLinkResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AcceptLinkResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AcceptLinkResponse.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkDirection, name: "direction"))
    AcceptLinkResponse.add_member(:flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "flowModules"))
    AcceptLinkResponse.add_member(:pending_flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "pendingFlowModules"))
    AcceptLinkResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    AcceptLinkResponse.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings"))
    AcceptLinkResponse.add_member(:connectivity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityType, name: "connectivityType"))
    AcceptLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    AcceptLinkResponse.type = Types::AcceptLinkResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:no_bid, Types::Action::NoBid, ::Smithy::Schema::Shapes::MemberShape.new(target: NoBidAction, name: "noBid"))
    Action.add_member(:header_tag, Types::Action::HeaderTag, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderTagAction, name: "headerTag"))
    Action.add_member(:unknown, Types::Action::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Action.type = Types::Action
    AssociateCertificateRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateCertificateRequest.add_member(:acm_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateArn, name: "acmCertificateArn", traits: {"smithy.api#required" => {}}))
    AssociateCertificateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    AssociateCertificateRequest.type = Types::AssociateCertificateRequest
    AssociateCertificateResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    AssociateCertificateResponse.add_member(:acm_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateArn, name: "acmCertificateArn", traits: {"smithy.api#required" => {}}))
    AssociateCertificateResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssociateCertificateResponse.type = Types::AssociateCertificateResponse
    AutoScalingGroupNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupName, name: "member"))
    AutoScalingGroupsConfiguration.add_member(:auto_scaling_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupNameList, name: "autoScalingGroupNames", traits: {"smithy.api#required" => {}}))
    AutoScalingGroupsConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "roleArn", traits: {"smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/.{1,2048}$", "smithy.api#required" => {}}))
    AutoScalingGroupsConfiguration.add_member(:health_check_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfig, name: "healthCheckConfig"))
    AutoScalingGroupsConfiguration.type = Types::AutoScalingGroupsConfiguration
    CertificateAssociationStatus.add_member(:pending_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ASSOCIATION", traits: {"smithy.api#enumValue" => "PENDING_ASSOCIATION"}))
    CertificateAssociationStatus.add_member(:associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATED", traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    CertificateAssociationStatus.add_member(:pending_disassociation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DISASSOCIATION", traits: {"smithy.api#enumValue" => "PENDING_DISASSOCIATION"}))
    CertificateAssociationStatus.add_member(:disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISASSOCIATED", traits: {"smithy.api#enumValue" => "DISASSOCIATED"}))
    CertificateAssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateAssociationSummary.add_member(:acm_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateArn, name: "acmCertificateArn", traits: {"smithy.api#required" => {}}))
    CertificateAssociationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CertificateAssociationSummary.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "associatedAt"))
    CertificateAssociationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    CertificateAssociationSummary.type = Types::CertificateAssociationSummary
    CertificateAssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAssociationSummary, name: "member"))
    CertificateAuthorityCertificates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64EncodedCertificateChain, name: "member"))
    ClientRoutingPolicy.add_member(:availability_zone_affinity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABILITY_ZONE_AFFINITY", traits: {"smithy.api#enumValue" => "AVAILABILITY_ZONE_AFFINITY"}))
    ClientRoutingPolicy.add_member(:any_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY_AVAILABILITY_ZONE", traits: {"smithy.api#enumValue" => "ANY_AVAILABILITY_ZONE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectivityType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ConnectivityType.add_member(:public_ingress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_INGRESS", traits: {"smithy.api#enumValue" => "PUBLIC_INGRESS"}))
    ConnectivityType.add_member(:public_egress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_EGRESS", traits: {"smithy.api#enumValue" => "PUBLIC_EGRESS"}))
    ConnectivityType.add_member(:external_inbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL_INBOUND", traits: {"smithy.api#enumValue" => "EXTERNAL_INBOUND"}))
    CreateInboundExternalLinkRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateInboundExternalLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInboundExternalLinkRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    CreateInboundExternalLinkRequest.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings", traits: {"smithy.api#required" => {}}))
    CreateInboundExternalLinkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateInboundExternalLinkRequest.type = Types::CreateInboundExternalLinkRequest
    CreateInboundExternalLinkResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    CreateInboundExternalLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    CreateInboundExternalLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateInboundExternalLinkResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateInboundExternalLinkResponse.type = Types::CreateInboundExternalLinkResponse
    CreateLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:peer_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "peerGatewayId", traits: {"smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    CreateLinkRequest.add_member(:http_responder_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "httpResponderAllowed"))
    CreateLinkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateLinkRequest.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings", traits: {"smithy.api#required" => {}}))
    CreateLinkRequest.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkTimeoutInMillis, name: "timeoutInMillis"))
    CreateLinkRequest.type = Types::CreateLinkRequest
    CreateLinkResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    CreateLinkResponse.add_member(:peer_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "peerGatewayId", traits: {"smithy.api#required" => {}}))
    CreateLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateLinkResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateLinkResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateLinkResponse.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkDirection, name: "direction"))
    CreateLinkResponse.add_member(:flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "flowModules"))
    CreateLinkResponse.add_member(:pending_flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "pendingFlowModules"))
    CreateLinkResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    CreateLinkResponse.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings"))
    CreateLinkResponse.add_member(:connectivity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityType, name: "connectivityType"))
    CreateLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    CreateLinkResponse.add_member(:customer_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "customerProvidedId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]{5,50}$"}))
    CreateLinkResponse.type = Types::CreateLinkResponse
    CreateLinkRoutingRuleRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLinkRoutingRuleRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLinkRoutingRuleRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLinkRoutingRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreateLinkRoutingRuleRequest.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCondition, name: "conditions", traits: {"smithy.api#required" => {}}))
    CreateLinkRoutingRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateLinkRoutingRuleRequest.type = Types::CreateLinkRoutingRuleRequest
    CreateLinkRoutingRuleResponse.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    CreateLinkRoutingRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateLinkRoutingRuleResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateLinkRoutingRuleResponse.type = Types::CreateLinkRoutingRuleResponse
    CreateOutboundExternalLinkRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateOutboundExternalLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateOutboundExternalLinkRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    CreateOutboundExternalLinkRequest.add_member(:public_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "publicEndpoint", traits: {"smithy.api#required" => {}}))
    CreateOutboundExternalLinkRequest.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings", traits: {"smithy.api#required" => {}}))
    CreateOutboundExternalLinkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateOutboundExternalLinkRequest.type = Types::CreateOutboundExternalLinkRequest
    CreateOutboundExternalLinkResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    CreateOutboundExternalLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    CreateOutboundExternalLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateOutboundExternalLinkResponse.type = Types::CreateOutboundExternalLinkResponse
    CreateRequesterGatewayRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    CreateRequesterGatewayRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    CreateRequesterGatewayRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    CreateRequesterGatewayRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateRequesterGatewayRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"}))
    CreateRequesterGatewayRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateRequesterGatewayRequest.type = Types::CreateRequesterGatewayRequest
    CreateRequesterGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    CreateRequesterGatewayResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateRequesterGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RequesterGatewayStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateRequesterGatewayResponse.type = Types::CreateRequesterGatewayResponse
    CreateResponderGatewayRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    CreateResponderGatewayRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    CreateResponderGatewayRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    CreateResponderGatewayRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    CreateResponderGatewayRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}, "smithy.api#required" => {}}))
    CreateResponderGatewayRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    CreateResponderGatewayRequest.add_member(:listener_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerConfig, name: "listenerConfig"))
    CreateResponderGatewayRequest.add_member(:trust_store_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreConfiguration, name: "trustStoreConfiguration"))
    CreateResponderGatewayRequest.add_member(:managed_endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedEndpointConfiguration, name: "managedEndpointConfiguration"))
    CreateResponderGatewayRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateResponderGatewayRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"}))
    CreateResponderGatewayRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateResponderGatewayRequest.add_member(:gateway_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayType, name: "gatewayType"))
    CreateResponderGatewayRequest.add_member(:client_routing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRoutingPolicy, name: "clientRoutingPolicy"))
    CreateResponderGatewayRequest.type = Types::CreateResponderGatewayRequest
    CreateResponderGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    CreateResponderGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderGatewayStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateResponderGatewayResponse.add_member(:listener_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerConfig, name: "listenerConfig"))
    CreateResponderGatewayResponse.add_member(:external_inbound_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "externalInboundEndpoint"))
    CreateResponderGatewayResponse.add_member(:client_routing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRoutingPolicy, name: "clientRoutingPolicy"))
    CreateResponderGatewayResponse.type = Types::CreateResponderGatewayResponse
    DeleteInboundExternalLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInboundExternalLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInboundExternalLinkRequest.type = Types::DeleteInboundExternalLinkRequest
    DeleteInboundExternalLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    DeleteInboundExternalLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteInboundExternalLinkResponse.type = Types::DeleteInboundExternalLinkResponse
    DeleteLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRequest.type = Types::DeleteLinkRequest
    DeleteLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    DeleteLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteLinkResponse.type = Types::DeleteLinkResponse
    DeleteLinkRoutingRuleRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRoutingRuleRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRoutingRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLinkRoutingRuleRequest.type = Types::DeleteLinkRoutingRuleRequest
    DeleteLinkRoutingRuleResponse.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    DeleteLinkRoutingRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteLinkRoutingRuleResponse.type = Types::DeleteLinkRoutingRuleResponse
    DeleteOutboundExternalLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOutboundExternalLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteOutboundExternalLinkRequest.type = Types::DeleteOutboundExternalLinkRequest
    DeleteOutboundExternalLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    DeleteOutboundExternalLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteOutboundExternalLinkResponse.type = Types::DeleteOutboundExternalLinkResponse
    DeleteRequesterGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRequesterGatewayRequest.type = Types::DeleteRequesterGatewayRequest
    DeleteRequesterGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    DeleteRequesterGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RequesterGatewayStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteRequesterGatewayResponse.type = Types::DeleteRequesterGatewayResponse
    DeleteResponderGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResponderGatewayRequest.type = Types::DeleteResponderGatewayRequest
    DeleteResponderGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    DeleteResponderGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderGatewayStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteResponderGatewayResponse.type = Types::DeleteResponderGatewayResponse
    DisassociateCertificateRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateCertificateRequest.add_member(:acm_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateArn, name: "acmCertificateArn", traits: {"smithy.api#httpQuery" => "acmCertificateArn", "smithy.api#required" => {}}))
    DisassociateCertificateRequest.type = Types::DisassociateCertificateRequest
    DisassociateCertificateResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    DisassociateCertificateResponse.add_member(:acm_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateArn, name: "acmCertificateArn", traits: {"smithy.api#required" => {}}))
    DisassociateCertificateResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DisassociateCertificateResponse.type = Types::DisassociateCertificateResponse
    EksEndpointsConfiguration.add_member(:endpoints_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesEndpointsResourceName, name: "endpointsResourceName", traits: {"smithy.api#required" => {}}))
    EksEndpointsConfiguration.add_member(:endpoints_resource_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesNamespace, name: "endpointsResourceNamespace", traits: {"smithy.api#required" => {}}))
    EksEndpointsConfiguration.add_member(:cluster_api_server_endpoint_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "clusterApiServerEndpointUri", traits: {"smithy.api#required" => {}}))
    EksEndpointsConfiguration.add_member(:cluster_api_server_ca_certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64EncodedCertificateChain, name: "clusterApiServerCaCertificateChain", traits: {"smithy.api#required" => {}}))
    EksEndpointsConfiguration.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesClusterName, name: "clusterName", traits: {"smithy.api#required" => {}}))
    EksEndpointsConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "roleArn", traits: {"smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/.{1,2048}$", "smithy.api#required" => {}}))
    EksEndpointsConfiguration.type = Types::EksEndpointsConfiguration
    Filter.add_member(:criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "criteria", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterConfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterCriteria.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriterion, name: "member"))
    FilterCriterion.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#required" => {}}))
    FilterCriterion.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueList, name: "values", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    FilterCriterion.type = Types::FilterCriterion
    FilterType.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDE", traits: {"smithy.api#enumValue" => "INCLUDE"}))
    FilterType.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDE", traits: {"smithy.api#enumValue" => "EXCLUDE"}))
    FlowModuleNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowModuleName, name: "member"))
    GatewayIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "member"))
    GatewayType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    GatewayType.add_member(:internal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL", traits: {"smithy.api#enumValue" => "INTERNAL"}))
    GetCertificateAssociationRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCertificateAssociationRequest.add_member(:acm_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateArn, name: "acmCertificateArn", traits: {"smithy.api#httpQuery" => "acmCertificateArn", "smithy.api#required" => {}}))
    GetCertificateAssociationRequest.type = Types::GetCertificateAssociationRequest
    GetCertificateAssociationResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    GetCertificateAssociationResponse.add_member(:acm_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateArn, name: "acmCertificateArn", traits: {"smithy.api#required" => {}}))
    GetCertificateAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetCertificateAssociationResponse.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "associatedAt"))
    GetCertificateAssociationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetCertificateAssociationResponse.type = Types::GetCertificateAssociationResponse
    GetInboundExternalLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInboundExternalLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInboundExternalLinkRequest.type = Types::GetInboundExternalLinkRequest
    GetInboundExternalLinkResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    GetInboundExternalLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    GetInboundExternalLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetInboundExternalLinkResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    GetInboundExternalLinkResponse.add_member(:flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "flowModules"))
    GetInboundExternalLinkResponse.add_member(:pending_flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "pendingFlowModules"))
    GetInboundExternalLinkResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    GetInboundExternalLinkResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetInboundExternalLinkResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetInboundExternalLinkResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    GetInboundExternalLinkResponse.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings"))
    GetInboundExternalLinkResponse.add_member(:connectivity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityType, name: "connectivityType"))
    GetInboundExternalLinkResponse.type = Types::GetInboundExternalLinkResponse
    GetLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinkRequest.type = Types::GetLinkRequest
    GetLinkResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    GetLinkResponse.add_member(:peer_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "peerGatewayId", traits: {"smithy.api#required" => {}}))
    GetLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetLinkResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetLinkResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetLinkResponse.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkDirection, name: "direction"))
    GetLinkResponse.add_member(:flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "flowModules"))
    GetLinkResponse.add_member(:pending_flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "pendingFlowModules"))
    GetLinkResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    GetLinkResponse.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings"))
    GetLinkResponse.add_member(:connectivity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityType, name: "connectivityType"))
    GetLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    GetLinkResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetLinkResponse.add_member(:http_responder_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "httpResponderAllowed"))
    GetLinkResponse.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkTimeoutInMillis, name: "timeoutInMillis"))
    GetLinkResponse.type = Types::GetLinkResponse
    GetLinkRoutingRuleRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinkRoutingRuleRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinkRoutingRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLinkRoutingRuleRequest.type = Types::GetLinkRoutingRuleRequest
    GetLinkRoutingRuleResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    GetLinkRoutingRuleResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    GetLinkRoutingRuleResponse.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    GetLinkRoutingRuleResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    GetLinkRoutingRuleResponse.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCondition, name: "conditions", traits: {"smithy.api#required" => {}}))
    GetLinkRoutingRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetLinkRoutingRuleResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetLinkRoutingRuleResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetLinkRoutingRuleResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetLinkRoutingRuleResponse.type = Types::GetLinkRoutingRuleResponse
    GetOutboundExternalLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutboundExternalLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOutboundExternalLinkRequest.type = Types::GetOutboundExternalLinkRequest
    GetOutboundExternalLinkResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    GetOutboundExternalLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    GetOutboundExternalLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetOutboundExternalLinkResponse.add_member(:public_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "publicEndpoint", traits: {"smithy.api#required" => {}}))
    GetOutboundExternalLinkResponse.add_member(:flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "flowModules"))
    GetOutboundExternalLinkResponse.add_member(:pending_flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "pendingFlowModules"))
    GetOutboundExternalLinkResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    GetOutboundExternalLinkResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetOutboundExternalLinkResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetOutboundExternalLinkResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    GetOutboundExternalLinkResponse.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings"))
    GetOutboundExternalLinkResponse.add_member(:connectivity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityType, name: "connectivityType"))
    GetOutboundExternalLinkResponse.type = Types::GetOutboundExternalLinkResponse
    GetRequesterGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRequesterGatewayRequest.type = Types::GetRequesterGatewayRequest
    GetRequesterGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RequesterGatewayStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetRequesterGatewayResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    GetRequesterGatewayResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#pattern" => "^[A-Za-z0-9 ]+$"}))
    GetRequesterGatewayResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetRequesterGatewayResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetRequesterGatewayResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    GetRequesterGatewayResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    GetRequesterGatewayResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    GetRequesterGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    GetRequesterGatewayResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetRequesterGatewayResponse.add_member(:active_links_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "activeLinksCount"))
    GetRequesterGatewayResponse.add_member(:total_links_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalLinksCount"))
    GetRequesterGatewayResponse.type = Types::GetRequesterGatewayResponse
    GetResponderGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResponderGatewayRequest.type = Types::GetResponderGatewayRequest
    GetResponderGatewayResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    GetResponderGatewayResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    GetResponderGatewayResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    GetResponderGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderGatewayStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetResponderGatewayResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#pattern" => "^[A-Za-z0-9 ]+$"}))
    GetResponderGatewayResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetResponderGatewayResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetResponderGatewayResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    GetResponderGatewayResponse.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}, "smithy.api#required" => {}}))
    GetResponderGatewayResponse.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    GetResponderGatewayResponse.add_member(:listener_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerConfig, name: "listenerConfig"))
    GetResponderGatewayResponse.add_member(:trust_store_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreConfiguration, name: "trustStoreConfiguration"))
    GetResponderGatewayResponse.add_member(:managed_endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedEndpointConfiguration, name: "managedEndpointConfiguration"))
    GetResponderGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    GetResponderGatewayResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetResponderGatewayResponse.add_member(:active_links_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "activeLinksCount"))
    GetResponderGatewayResponse.add_member(:total_links_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalLinksCount"))
    GetResponderGatewayResponse.add_member(:links_requested_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "linksRequestedCount"))
    GetResponderGatewayResponse.add_member(:gateway_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayType, name: "gatewayType"))
    GetResponderGatewayResponse.add_member(:external_inbound_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "externalInboundEndpoint"))
    GetResponderGatewayResponse.add_member(:client_routing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRoutingPolicy, name: "clientRoutingPolicy"))
    GetResponderGatewayResponse.type = Types::GetResponderGatewayResponse
    HeaderTagAction.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    HeaderTagAction.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#required" => {}}))
    HeaderTagAction.type = Types::HeaderTagAction
    HealthCheckConfig.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port", traits: {"smithy.api#range" => {"min" => 80, "max" => 65535}, "smithy.api#required" => {}}))
    HealthCheckConfig.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^/.*$", "smithy.api#required" => {}}))
    HealthCheckConfig.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "protocol"))
    HealthCheckConfig.add_member(:timeout_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "timeoutMs", traits: {"smithy.api#range" => {"min" => 100, "max" => 5000}}))
    HealthCheckConfig.add_member(:interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "intervalSeconds", traits: {"smithy.api#range" => {"min" => 5, "max" => 60}}))
    HealthCheckConfig.add_member(:status_code_matcher, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCodeMatcher, name: "statusCodeMatcher"))
    HealthCheckConfig.add_member(:healthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "healthyThresholdCount", traits: {"smithy.api#range" => {"min" => 2, "max" => 10}}))
    HealthCheckConfig.add_member(:unhealthy_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "unhealthyThresholdCount", traits: {"smithy.api#range" => {"min" => 2, "max" => 10}}))
    HealthCheckConfig.type = Types::HealthCheckConfig
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LinkApplicationLogConfiguration.add_member(:sampling, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkApplicationLogSampling, name: "sampling", traits: {"smithy.api#required" => {}}))
    LinkApplicationLogConfiguration.type = Types::LinkApplicationLogConfiguration
    LinkApplicationLogSampling.add_member(:error_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "errorLog", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}, "smithy.api#required" => {}}))
    LinkApplicationLogSampling.add_member(:filter_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "filterLog", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}, "smithy.api#required" => {}}))
    LinkApplicationLogSampling.type = Types::LinkApplicationLogSampling
    LinkAttributes.add_member(:responder_error_masking, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderErrorMasking, name: "responderErrorMasking"))
    LinkAttributes.add_member(:customer_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerProvidedId, name: "customerProvidedId"))
    LinkAttributes.type = Types::LinkAttributes
    LinkDirection.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE", traits: {"smithy.api#enumValue" => "RESPONSE"}))
    LinkDirection.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST", traits: {"smithy.api#enumValue" => "REQUEST"}))
    LinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLinksResponseStructure, name: "member"))
    LinkLogSettings.add_member(:application_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkApplicationLogConfiguration, name: "applicationLogs", traits: {"smithy.api#required" => {}}))
    LinkLogSettings.type = Types::LinkLogSettings
    LinkRoutingRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkRoutingRuleSummary, name: "member"))
    LinkRoutingRuleSummary.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    LinkRoutingRuleSummary.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    LinkRoutingRuleSummary.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCondition, name: "conditions", traits: {"smithy.api#required" => {}}))
    LinkRoutingRuleSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status", traits: {"smithy.api#required" => {}}))
    LinkRoutingRuleSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    LinkRoutingRuleSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    LinkRoutingRuleSummary.type = Types::LinkRoutingRuleSummary
    LinkStatus.add_member(:pending_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CREATION", traits: {"smithy.api#enumValue" => "PENDING_CREATION"}))
    LinkStatus.add_member(:pending_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_REQUEST", traits: {"smithy.api#enumValue" => "PENDING_REQUEST"}))
    LinkStatus.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "REQUESTED"}))
    LinkStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    LinkStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    LinkStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    LinkStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LinkStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    LinkStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    LinkStatus.add_member(:pending_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_UPDATE", traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    LinkStatus.add_member(:pending_isolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ISOLATION", traits: {"smithy.api#enumValue" => "PENDING_ISOLATION"}))
    LinkStatus.add_member(:isolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISOLATED", traits: {"smithy.api#enumValue" => "ISOLATED"}))
    LinkStatus.add_member(:pending_restoration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_RESTORATION", traits: {"smithy.api#enumValue" => "PENDING_RESTORATION"}))
    ListCertificateAssociationsRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCertificateAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCertificateAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 5, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListCertificateAssociationsRequest.type = Types::ListCertificateAssociationsRequest
    ListCertificateAssociationsResponse.add_member(:certificate_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAssociationSummaryList, name: "certificateAssociations", traits: {"smithy.api#required" => {}}))
    ListCertificateAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCertificateAssociationsResponse.type = Types::ListCertificateAssociationsResponse
    ListLinkRoutingRulesRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLinkRoutingRulesRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLinkRoutingRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLinkRoutingRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListLinkRoutingRulesRequest.type = Types::ListLinkRoutingRulesRequest
    ListLinkRoutingRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkRoutingRuleList, name: "rules"))
    ListLinkRoutingRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListLinkRoutingRulesResponse.type = Types::ListLinkRoutingRulesResponse
    ListLinksRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLinksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLinksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLinksRequest.type = Types::ListLinksRequest
    ListLinksResponse.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkList, name: "links"))
    ListLinksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListLinksResponse.type = Types::ListLinksResponse
    ListLinksResponseStructure.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    ListLinksResponseStructure.add_member(:peer_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "peerGatewayId", traits: {"smithy.api#required" => {}}))
    ListLinksResponseStructure.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ListLinksResponseStructure.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ListLinksResponseStructure.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ListLinksResponseStructure.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkDirection, name: "direction"))
    ListLinksResponseStructure.add_member(:flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "flowModules"))
    ListLinksResponseStructure.add_member(:pending_flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "pendingFlowModules"))
    ListLinksResponseStructure.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    ListLinksResponseStructure.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings"))
    ListLinksResponseStructure.add_member(:connectivity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityType, name: "connectivityType"))
    ListLinksResponseStructure.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    ListLinksResponseStructure.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListLinksResponseStructure.add_member(:public_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: URL, name: "publicEndpoint"))
    ListLinksResponseStructure.type = Types::ListLinksResponseStructure
    ListRequesterGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListRequesterGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRequesterGatewaysRequest.type = Types::ListRequesterGatewaysRequest
    ListRequesterGatewaysResponse.add_member(:gateway_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayIdList, name: "gatewayIds"))
    ListRequesterGatewaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListRequesterGatewaysResponse.type = Types::ListRequesterGatewaysResponse
    ListResponderGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListResponderGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResponderGatewaysRequest.type = Types::ListResponderGatewaysRequest
    ListResponderGatewaysResponse.add_member(:gateway_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayIdList, name: "gatewayIds"))
    ListResponderGatewaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListResponderGatewaysResponse.type = Types::ListResponderGatewaysResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RtbTaggableResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListenerConfig.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolList, name: "protocols", traits: {"smithy.api#required" => {}}))
    ListenerConfig.type = Types::ListenerConfig
    ManagedEndpointConfiguration.add_member(:auto_scaling_groups, Types::ManagedEndpointConfiguration::AutoScalingGroups, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupsConfiguration, name: "autoScalingGroups"))
    ManagedEndpointConfiguration.add_member(:eks_endpoints, Types::ManagedEndpointConfiguration::EksEndpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: EksEndpointsConfiguration, name: "eksEndpoints"))
    ManagedEndpointConfiguration.add_member(:unknown, Types::ManagedEndpointConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ManagedEndpointConfiguration.type = Types::ManagedEndpointConfiguration
    ModuleConfiguration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version"))
    ModuleConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowModuleName, name: "name", traits: {"smithy.api#required" => {}}))
    ModuleConfiguration.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowModuleNameList, name: "dependsOn"))
    ModuleConfiguration.add_member(:module_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleParameters, name: "moduleParameters"))
    ModuleConfiguration.type = Types::ModuleConfiguration
    ModuleConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfiguration, name: "member"))
    ModuleParameters.add_member(:no_bid, Types::ModuleParameters::NoBid, ::Smithy::Schema::Shapes::MemberShape.new(target: NoBidModuleParameters, name: "noBid"))
    ModuleParameters.add_member(:open_rtb_attribute, Types::ModuleParameters::OpenRtbAttribute, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenRtbAttributeModuleParameters, name: "openRtbAttribute"))
    ModuleParameters.add_member(:rate_limiter, Types::ModuleParameters::RateLimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: RateLimiterModuleParameters, name: "rateLimiter"))
    ModuleParameters.add_member(:unknown, Types::ModuleParameters::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ModuleParameters.type = Types::ModuleParameters
    NoBidAction.add_member(:no_bid_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "noBidReasonCode", traits: {"smithy.api#range" => {"min" => 0}}))
    NoBidAction.type = Types::NoBidAction
    NoBidModuleParameters.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"}))
    NoBidModuleParameters.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "reasonCode", traits: {"smithy.api#range" => {"min" => 0, "max" => 10}}))
    NoBidModuleParameters.add_member(:pass_through_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "passThroughPercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}}))
    NoBidModuleParameters.type = Types::NoBidModuleParameters
    OpenRtbAttributeModuleParameters.add_member(:filter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterType, name: "filterType", traits: {"smithy.api#required" => {}}))
    OpenRtbAttributeModuleParameters.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, name: "filterConfiguration", traits: {"smithy.api#required" => {}}))
    OpenRtbAttributeModuleParameters.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "action", traits: {"smithy.api#required" => {}}))
    OpenRtbAttributeModuleParameters.add_member(:holdback_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "holdbackPercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}, "smithy.api#required" => {}}))
    OpenRtbAttributeModuleParameters.type = Types::OpenRtbAttributeModuleParameters
    Protocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    Protocol.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    ProtocolList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "member"))
    QueryStringKeyValuePair.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9._~-]+$", "smithy.api#required" => {}}))
    QueryStringKeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9._~-]+$", "smithy.api#required" => {}}))
    QueryStringKeyValuePair.type = Types::QueryStringKeyValuePair
    RateLimiterModuleParameters.add_member(:tps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "tps"))
    RateLimiterModuleParameters.type = Types::RateLimiterModuleParameters
    RejectLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectLinkRequest.type = Types::RejectLinkRequest
    RejectLinkResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    RejectLinkResponse.add_member(:peer_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "peerGatewayId", traits: {"smithy.api#required" => {}}))
    RejectLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RejectLinkResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RejectLinkResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RejectLinkResponse.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkDirection, name: "direction"))
    RejectLinkResponse.add_member(:flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "flowModules"))
    RejectLinkResponse.add_member(:pending_flow_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "pendingFlowModules"))
    RejectLinkResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkAttributes, name: "attributes"))
    RejectLinkResponse.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings"))
    RejectLinkResponse.add_member(:connectivity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityType, name: "connectivityType"))
    RejectLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    RejectLinkResponse.type = Types::RejectLinkResponse
    RequesterGatewayStatus.add_member(:pending_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CREATION", traits: {"smithy.api#enumValue" => "PENDING_CREATION"}))
    RequesterGatewayStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RequesterGatewayStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    RequesterGatewayStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    RequesterGatewayStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    RequesterGatewayStatus.add_member(:pending_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_UPDATE", traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    RequesterGatewayStatus.add_member(:isolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISOLATED", traits: {"smithy.api#enumValue" => "ISOLATED"}))
    RequesterGatewayStatus.add_member(:pending_isolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ISOLATION", traits: {"smithy.api#enumValue" => "PENDING_ISOLATION"}))
    RequesterGatewayStatus.add_member(:pending_restoration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_RESTORATION", traits: {"smithy.api#enumValue" => "PENDING_RESTORATION"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponderErrorMasking.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderErrorMaskingForHttpCode, name: "member"))
    ResponderErrorMaskingAction.add_member(:no_bid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_BID", traits: {"smithy.api#enumValue" => "NO_BID"}))
    ResponderErrorMaskingAction.add_member(:passthrough, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSTHROUGH", traits: {"smithy.api#enumValue" => "PASSTHROUGH"}))
    ResponderErrorMaskingForHttpCode.add_member(:http_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "httpCode", traits: {"smithy.api#length" => {"min" => 3, "max" => 7}, "smithy.api#pattern" => "^DEFAULT|4XX|5XX|\\d{3}$", "smithy.api#required" => {}}))
    ResponderErrorMaskingForHttpCode.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderErrorMaskingAction, name: "action", traits: {"smithy.api#required" => {}}))
    ResponderErrorMaskingForHttpCode.add_member(:logging_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderErrorMaskingLoggingTypes, name: "loggingTypes", traits: {"smithy.api#required" => {}}))
    ResponderErrorMaskingForHttpCode.add_member(:response_logging_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "responseLoggingPercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}}))
    ResponderErrorMaskingForHttpCode.type = Types::ResponderErrorMaskingForHttpCode
    ResponderErrorMaskingLoggingType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ResponderErrorMaskingLoggingType.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRIC", traits: {"smithy.api#enumValue" => "METRIC"}))
    ResponderErrorMaskingLoggingType.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE", traits: {"smithy.api#enumValue" => "RESPONSE"}))
    ResponderErrorMaskingLoggingTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderErrorMaskingLoggingType, name: "member"))
    ResponderGatewayStatus.add_member(:pending_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CREATION", traits: {"smithy.api#enumValue" => "PENDING_CREATION"}))
    ResponderGatewayStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResponderGatewayStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    ResponderGatewayStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ResponderGatewayStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ResponderGatewayStatus.add_member(:pending_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_UPDATE", traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    ResponderGatewayStatus.add_member(:isolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISOLATED", traits: {"smithy.api#enumValue" => "ISOLATED"}))
    ResponderGatewayStatus.add_member(:pending_isolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ISOLATION", traits: {"smithy.api#enumValue" => "PENDING_ISOLATION"}))
    ResponderGatewayStatus.add_member(:pending_restoration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_RESTORATION", traits: {"smithy.api#enumValue" => "PENDING_RESTORATION"}))
    RuleCondition.add_member(:host_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9._~-]+$"}))
    RuleCondition.add_member(:host_header_wildcard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hostHeaderWildcard", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9._~*-]+$"}))
    RuleCondition.add_member(:path_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pathPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^/[A-Za-z0-9._~/-]*$"}))
    RuleCondition.add_member(:path_exact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pathExact", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^/[A-Za-z0-9._~/-]*$"}))
    RuleCondition.add_member(:query_string_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStringKeyValuePair, name: "queryStringEquals"))
    RuleCondition.add_member(:query_string_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "queryStringExists", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9._~-]+$"}))
    RuleCondition.type = Types::RuleCondition
    RuleStatus.add_member(:creation_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATION_IN_PROGRESS"}))
    RuleStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RuleStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    RuleStatus.add_member(:deletion_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETION_IN_PROGRESS"}))
    RuleStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    RuleStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SubnetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RtbTaggableResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TrustStoreConfiguration.add_member(:certificate_authority_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityCertificates, name: "certificateAuthorityCertificates", traits: {"smithy.api#required" => {}}))
    TrustStoreConfiguration.type = Types::TrustStoreConfiguration
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RtbTaggableResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateLinkModuleFlowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateLinkModuleFlowRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkModuleFlowRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkModuleFlowRequest.add_member(:modules, ::Smithy::Schema::Shapes::MemberShape.new(target: ModuleConfigurationList, name: "modules", traits: {"smithy.api#required" => {}}))
    UpdateLinkModuleFlowRequest.type = Types::UpdateLinkModuleFlowRequest
    UpdateLinkModuleFlowResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    UpdateLinkModuleFlowResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    UpdateLinkModuleFlowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateLinkModuleFlowResponse.type = Types::UpdateLinkModuleFlowResponse
    UpdateLinkRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRequest.add_member(:log_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkLogSettings, name: "logSettings"))
    UpdateLinkRequest.add_member(:timeout_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkTimeoutInMillis, name: "timeoutInMillis"))
    UpdateLinkRequest.type = Types::UpdateLinkRequest
    UpdateLinkResponse.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#required" => {}}))
    UpdateLinkResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateLinkResponse.type = Types::UpdateLinkResponse
    UpdateLinkRoutingRuleRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRoutingRuleRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, name: "linkId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRoutingRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLinkRoutingRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    UpdateLinkRoutingRuleRequest.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCondition, name: "conditions", traits: {"smithy.api#required" => {}}))
    UpdateLinkRoutingRuleRequest.type = Types::UpdateLinkRoutingRuleRequest
    UpdateLinkRoutingRuleResponse.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    UpdateLinkRoutingRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateLinkRoutingRuleResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateLinkRoutingRuleResponse.type = Types::UpdateLinkRoutingRuleResponse
    UpdateRequesterGatewayRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateRequesterGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRequesterGatewayRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#pattern" => "^[A-Za-z0-9 ]+$"}))
    UpdateRequesterGatewayRequest.type = Types::UpdateRequesterGatewayRequest
    UpdateRequesterGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    UpdateRequesterGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RequesterGatewayStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateRequesterGatewayResponse.type = Types::UpdateRequesterGatewayResponse
    UpdateResponderGatewayRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    UpdateResponderGatewayRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}, "smithy.api#required" => {}}))
    UpdateResponderGatewayRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    UpdateResponderGatewayRequest.add_member(:listener_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerConfig, name: "listenerConfig"))
    UpdateResponderGatewayRequest.add_member(:trust_store_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustStoreConfiguration, name: "trustStoreConfiguration"))
    UpdateResponderGatewayRequest.add_member(:managed_endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedEndpointConfiguration, name: "managedEndpointConfiguration"))
    UpdateResponderGatewayRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateResponderGatewayRequest.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResponderGatewayRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#pattern" => "^[A-Za-z0-9 ]+$"}))
    UpdateResponderGatewayRequest.add_member(:client_routing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRoutingPolicy, name: "clientRoutingPolicy"))
    UpdateResponderGatewayRequest.type = Types::UpdateResponderGatewayRequest
    UpdateResponderGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayId, name: "gatewayId", traits: {"smithy.api#required" => {}}))
    UpdateResponderGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponderGatewayStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateResponderGatewayResponse.add_member(:client_routing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRoutingPolicy, name: "clientRoutingPolicy"))
    UpdateResponderGatewayResponse.type = Types::UpdateResponderGatewayResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))

    RTBFabric = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rtbfabric#RTBFabric"
      service.name = "RTBFabric"
      service.version = "2023-05-15"
      service.traits = {"aws.api#service" => {"sdkId" => "RTBFabric", "arnNamespace" => "rtbfabric", "cloudTrailEventSource" => "rtbfabric.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "rtbfabric"}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "RTBFabric", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://rtbfabric-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rtbfabric-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rtbfabric.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rtbfabric.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:accept_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#AcceptLink"
        operation.name = "AcceptLink"
        operation.input = AcceptLinkRequest
        operation.output = AcceptLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/gateway/{gatewayId}/link/{linkId}/accept"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "AcceptLink", "params" => {"gatewayId" => "rtb-gw-12345", "linkId" => "link-12345", "logSettings" => {"applicationLogs" => {"sampling" => {"errorLog" => 100.0, "filterLog" => 0.0}}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:associate_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#AssociateCertificate"
        operation.name = "AssociateCertificate"
        operation.input = AssociateCertificateRequest
        operation.output = AssociateCertificateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/responder-gateway/{gatewayId}/certificate"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_inbound_external_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#CreateInboundExternalLink"
        operation.name = "CreateInboundExternalLink"
        operation.input = CreateInboundExternalLinkRequest
        operation.output = CreateInboundExternalLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/responder-gateway/{gatewayId}/inbound-external-link"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateInboundExternalLink", "params" => {"gatewayId" => "rtb-gw-12345", "clientToken" => "abc123def456", "logSettings" => {"applicationLogs" => {"sampling" => {"errorLog" => 100.0, "filterLog" => 0.0}}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:create_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#CreateLink"
        operation.name = "CreateLink"
        operation.input = CreateLinkRequest
        operation.output = CreateLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/gateway/{gatewayId}/create-link"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateLink", "params" => {"gatewayId" => "rtb-gw-12345", "peerGatewayId" => "rtb-gw-67890", "logSettings" => {"applicationLogs" => {"sampling" => {"errorLog" => 100.0, "filterLog" => 0.0}}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:create_link_routing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#CreateLinkRoutingRule"
        operation.name = "CreateLinkRoutingRule"
        operation.input = CreateLinkRoutingRuleRequest
        operation.output = CreateLinkRoutingRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/responder-gateway/{gatewayId}/link/{linkId}/routing-rule"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_outbound_external_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#CreateOutboundExternalLink"
        operation.name = "CreateOutboundExternalLink"
        operation.input = CreateOutboundExternalLinkRequest
        operation.output = CreateOutboundExternalLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/requester-gateway/{gatewayId}/outbound-external-link"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateOutboundExternalLink", "params" => {"gatewayId" => "rtb-gw-12345", "publicEndpoint" => "https://example.com", "clientToken" => "mno345pqr678", "logSettings" => {"applicationLogs" => {"sampling" => {"errorLog" => 100.0, "filterLog" => 0.0}}}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:create_requester_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#CreateRequesterGateway"
        operation.name = "CreateRequesterGateway"
        operation.input = CreateRequesterGatewayRequest
        operation.output = CreateRequesterGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/requester-gateway"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateRequesterGateway", "params" => {"description" => "Test gateway", "vpcId" => "vpc-12345678", "subnetIds" => ["subnet-12345678"], "securityGroupIds" => ["sg-12345678"], "clientToken" => "ghi901jkl234"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:create_responder_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#CreateResponderGateway"
        operation.name = "CreateResponderGateway"
        operation.input = CreateResponderGatewayRequest
        operation.output = CreateResponderGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/responder-gateway"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "CreateResponderGateway", "params" => {"description" => "Test gateway", "vpcId" => "vpc-12345678", "subnetIds" => ["subnet-12345678"], "securityGroupIds" => ["sg-12345678"], "port" => 443, "protocol" => "HTTPS", "clientToken" => "stu567vwx890"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:delete_inbound_external_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#DeleteInboundExternalLink"
        operation.name = "DeleteInboundExternalLink"
        operation.input = DeleteInboundExternalLinkRequest
        operation.output = DeleteInboundExternalLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/responder-gateway/{gatewayId}/inbound-external-link/{linkId}"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DeleteInboundExternalLink", "params" => {"gatewayId" => "rtb-gw-12345", "linkId" => "link-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:delete_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#DeleteLink"
        operation.name = "DeleteLink"
        operation.input = DeleteLinkRequest
        operation.output = DeleteLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/gateway/{gatewayId}/link/{linkId}"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DeleteLink", "params" => {"gatewayId" => "rtb-gw-12345", "linkId" => "link-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:delete_link_routing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#DeleteLinkRoutingRule"
        operation.name = "DeleteLinkRoutingRule"
        operation.input = DeleteLinkRoutingRuleRequest
        operation.output = DeleteLinkRoutingRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/responder-gateway/{gatewayId}/link/{linkId}/routing-rule/{ruleId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_outbound_external_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#DeleteOutboundExternalLink"
        operation.name = "DeleteOutboundExternalLink"
        operation.input = DeleteOutboundExternalLinkRequest
        operation.output = DeleteOutboundExternalLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/requester-gateway/{gatewayId}/outbound-external-link/{linkId}"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DeleteOutboundExternalLink", "params" => {"gatewayId" => "rtb-gw-12345", "linkId" => "link-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:delete_requester_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#DeleteRequesterGateway"
        operation.name = "DeleteRequesterGateway"
        operation.input = DeleteRequesterGatewayRequest
        operation.output = DeleteRequesterGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/requester-gateway/{gatewayId}"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DeleteRequesterGateway", "params" => {"gatewayId" => "rtb-gw-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:delete_responder_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#DeleteResponderGateway"
        operation.name = "DeleteResponderGateway"
        operation.input = DeleteResponderGatewayRequest
        operation.output = DeleteResponderGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/responder-gateway/{gatewayId}"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "DeleteResponderGateway", "params" => {"gatewayId" => "rtb-gw-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:disassociate_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#DisassociateCertificate"
        operation.name = "DisassociateCertificate"
        operation.input = DisassociateCertificateRequest
        operation.output = DisassociateCertificateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/responder-gateway/{gatewayId}/certificate"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_certificate_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#GetCertificateAssociation"
        operation.name = "GetCertificateAssociation"
        operation.input = GetCertificateAssociationRequest
        operation.output = GetCertificateAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/responder-gateway/{gatewayId}/certificate"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_inbound_external_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#GetInboundExternalLink"
        operation.name = "GetInboundExternalLink"
        operation.input = GetInboundExternalLinkRequest
        operation.output = GetInboundExternalLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/responder-gateway/{gatewayId}/inbound-external-link/{linkId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetInboundExternalLink", "params" => {"gatewayId" => "rtb-gw-12345", "linkId" => "link-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#GetLink"
        operation.name = "GetLink"
        operation.input = GetLinkRequest
        operation.output = GetLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/gateway/{gatewayId}/link/{linkId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetLink", "params" => {"linkId" => "link-12345", "gatewayId" => "rtb-gw-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_link_routing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#GetLinkRoutingRule"
        operation.name = "GetLinkRoutingRule"
        operation.input = GetLinkRoutingRuleRequest
        operation.output = GetLinkRoutingRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/responder-gateway/{gatewayId}/link/{linkId}/routing-rule/{ruleId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_outbound_external_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#GetOutboundExternalLink"
        operation.name = "GetOutboundExternalLink"
        operation.input = GetOutboundExternalLinkRequest
        operation.output = GetOutboundExternalLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/requester-gateway/{gatewayId}/outbound-external-link/{linkId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetOutboundExternalLink", "params" => {"gatewayId" => "rtb-gw-12345", "linkId" => "link-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_requester_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#GetRequesterGateway"
        operation.name = "GetRequesterGateway"
        operation.input = GetRequesterGatewayRequest
        operation.output = GetRequesterGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/requester-gateway/{gatewayId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetRequesterGateway", "params" => {"gatewayId" => "rtb-gw-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:get_responder_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#GetResponderGateway"
        operation.name = "GetResponderGateway"
        operation.input = GetResponderGatewayRequest
        operation.output = GetResponderGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/responder-gateway/{gatewayId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetResponderGateway", "params" => {"gatewayId" => "rtb-gw-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:list_certificate_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#ListCertificateAssociations"
        operation.name = "ListCertificateAssociations"
        operation.input = ListCertificateAssociationsRequest
        operation.output = ListCertificateAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/responder-gateway/{gatewayId}/certificates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCertificateAssociations.new
      end)
      service.add_operation(:list_link_routing_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#ListLinkRoutingRules"
        operation.name = "ListLinkRoutingRules"
        operation.input = ListLinkRoutingRulesRequest
        operation.output = ListLinkRoutingRulesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/responder-gateway/{gatewayId}/link/{linkId}/routing-rules"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLinkRoutingRules.new
      end)
      service.add_operation(:list_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#ListLinks"
        operation.name = "ListLinks"
        operation.input = ListLinksRequest
        operation.output = ListLinksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/gateway/{gatewayId}/links/"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListLinks", "params" => {"gatewayId" => "rtb-gw-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListLinks.new
      end)
      service.add_operation(:list_requester_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#ListRequesterGateways"
        operation.name = "ListRequesterGateways"
        operation.input = ListRequesterGatewaysRequest
        operation.output = ListRequesterGatewaysResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/requester-gateways"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRequesterGateways.new
      end)
      service.add_operation(:list_responder_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#ListResponderGateways"
        operation.name = "ListResponderGateways"
        operation.input = ListResponderGatewaysRequest
        operation.output = ListResponderGatewaysResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/responder-gateways"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResponderGateways.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTagsForResource_GatewayOnly", "params" => {"resourceArn" => "arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}, {"id" => "ListTagsForResource_GatewayWithLink", "params" => {"resourceArn" => "arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp/link/link-nonexistent"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:reject_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#RejectLink"
        operation.name = "RejectLink"
        operation.input = RejectLinkRequest
        operation.output = RejectLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/gateway/{gatewayId}/link/{linkId}/reject"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "RejectLink", "params" => {"gatewayId" => "rtb-gw-12345", "linkId" => "link-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "TagResource_GatewayOnly", "params" => {"resourceArn" => "arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp", "tags" => {"Environment" => "test", "Owner" => "test-team"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}, {"id" => "TagResource_GatewayWithLink", "params" => {"resourceArn" => "arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp/link/link-nonexistent", "tags" => {"Environment" => "test", "Owner" => "test-team"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UntagResource_GatewayOnly", "params" => {"resourceArn" => "arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp", "tagKeys" => ["Environment"]}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}, {"id" => "UntagResource_GatewayWithLink", "params" => {"resourceArn" => "arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp/link/link-nonexistent", "tagKeys" => ["Environment"]}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:update_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#UpdateLink"
        operation.name = "UpdateLink"
        operation.input = UpdateLinkRequest
        operation.output = UpdateLinkResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/gateway/{gatewayId}/link/{linkId}"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UpdateLink", "params" => {"linkId" => "link-12345", "gatewayId" => "rtb-gw-12345"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:update_link_module_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#UpdateLinkModuleFlow"
        operation.name = "UpdateLinkModuleFlow"
        operation.input = UpdateLinkModuleFlowRequest
        operation.output = UpdateLinkModuleFlowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/gateway/{gatewayId}/link/{linkId}/module-flow"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UpdateLinkModuleFlow", "params" => {"linkId" => "link-12345", "gatewayId" => "rtb-gw-12345", "clientToken" => "xyz789uvw012", "modules" => [{"name" => "module-name", "version" => "version"}]}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:update_link_routing_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#UpdateLinkRoutingRule"
        operation.name = "UpdateLinkRoutingRule"
        operation.input = UpdateLinkRoutingRuleRequest
        operation.output = UpdateLinkRoutingRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/responder-gateway/{gatewayId}/link/{linkId}/routing-rule/{ruleId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_requester_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#UpdateRequesterGateway"
        operation.name = "UpdateRequesterGateway"
        operation.input = UpdateRequesterGatewayRequest
        operation.output = UpdateRequesterGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/requester-gateway/{gatewayId}/update"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UpdateRequesterGateway", "params" => {"gatewayId" => "rtb-gw-12345", "description" => "Updated test gateway", "clientToken" => "xyz789uvw012"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:update_responder_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rtbfabric#UpdateResponderGateway"
        operation.name = "UpdateResponderGateway"
        operation.input = UpdateResponderGatewayRequest
        operation.output = UpdateResponderGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/responder-gateway/{gatewayId}/update"}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UpdateResponderGateway", "params" => {"gatewayId" => "rtb-gw-12345", "description" => "Updated test gateway", "protocol" => "HTTPS", "port" => 433, "clientToken" => "xyz789uvw012"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
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
