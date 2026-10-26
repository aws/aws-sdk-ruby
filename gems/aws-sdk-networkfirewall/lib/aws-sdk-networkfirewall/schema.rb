# frozen_string_literal: true

# This is generated code!

module Aws::NetworkFirewall
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#AWSAccountId", name: "AWSAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AZSyncState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AZSyncState", name: "AZSyncState")
    AcceptNetworkFirewallTransitGatewayAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AcceptNetworkFirewallTransitGatewayAttachmentRequest", name: "AcceptNetworkFirewallTransitGatewayAttachmentRequest")
    AcceptNetworkFirewallTransitGatewayAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AcceptNetworkFirewallTransitGatewayAttachmentResponse", name: "AcceptNetworkFirewallTransitGatewayAttachmentResponse")
    ActionDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ActionDefinition", name: "ActionDefinition")
    ActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ActionName", name: "ActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Address", name: "Address")
    AddressDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#AddressDefinition", name: "AddressDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([a-fA-F\\d:\\.]+($|/\\d{1,3}))$"})
    Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Addresses", name: "Addresses")
    Age = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#Age", name: "Age")
    AnalysisReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AnalysisReport", name: "AnalysisReport")
    AnalysisReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#AnalysisReportId", name: "AnalysisReportId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    AnalysisReportNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#AnalysisReportNextToken", name: "AnalysisReportNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    AnalysisReportResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#AnalysisReportResults", name: "AnalysisReportResults")
    AnalysisReports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#AnalysisReports", name: "AnalysisReports")
    AnalysisResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AnalysisResult", name: "AnalysisResult")
    AnalysisResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#AnalysisResultList", name: "AnalysisResultList")
    AnalysisTypeReportResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AnalysisTypeReportResult", name: "AnalysisTypeReportResult")
    AssociateAvailabilityZonesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AssociateAvailabilityZonesRequest", name: "AssociateAvailabilityZonesRequest")
    AssociateAvailabilityZonesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AssociateAvailabilityZonesResponse", name: "AssociateAvailabilityZonesResponse")
    AssociateFirewallPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AssociateFirewallPolicyRequest", name: "AssociateFirewallPolicyRequest")
    AssociateFirewallPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AssociateFirewallPolicyResponse", name: "AssociateFirewallPolicyResponse")
    AssociateSubnetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AssociateSubnetsRequest", name: "AssociateSubnetsRequest")
    AssociateSubnetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AssociateSubnetsResponse", name: "AssociateSubnetsResponse")
    AssociationSyncState = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#AssociationSyncState", name: "AssociationSyncState")
    AttachRuleGroupsToProxyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AttachRuleGroupsToProxyConfigurationRequest", name: "AttachRuleGroupsToProxyConfigurationRequest")
    AttachRuleGroupsToProxyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AttachRuleGroupsToProxyConfigurationResponse", name: "AttachRuleGroupsToProxyConfigurationResponse")
    Attachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Attachment", name: "Attachment")
    AttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#AttachmentId", name: "AttachmentId")
    AttachmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#AttachmentStatus", name: "AttachmentStatus")
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZoneMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AvailabilityZoneMapping", name: "AvailabilityZoneMapping")
    AvailabilityZoneMappingString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#AvailabilityZoneMappingString", name: "AvailabilityZoneMappingString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\S+$"})
    AvailabilityZoneMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#AvailabilityZoneMappings", name: "AvailabilityZoneMappings")
    AvailabilityZoneMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#AvailabilityZoneMetadata", name: "AvailabilityZoneMetadata")
    AzSubnet = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#AzSubnet", name: "AzSubnet", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^subnet-[0-9a-f]+$"})
    AzSubnets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#AzSubnets", name: "AzSubnets")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networkfirewall#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ByteCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#ByteCount", name: "ByteCount", traits: {"smithy.api#default" => 0})
    CIDRCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#CIDRCount", name: "CIDRCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    CIDRSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CIDRSummary", name: "CIDRSummary")
    CapacityUsageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CapacityUsageSummary", name: "CapacityUsageSummary")
    Certificates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Certificates", name: "Certificates")
    CheckCertificateRevocationStatusActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CheckCertificateRevocationStatusActions", name: "CheckCertificateRevocationStatusActions")
    CollectionMemberString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#CollectionMember_String", name: "CollectionMemberString")
    ConditionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ConditionKey", name: "ConditionKey")
    ConditionOperator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ConditionOperator", name: "ConditionOperator")
    ConfigurationSyncState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ConfigurationSyncState", name: "ConfigurationSyncState")
    ContainerAssociationLastUpdatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#ContainerAssociationLastUpdatedTime", name: "ContainerAssociationLastUpdatedTime")
    ContainerAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ContainerAssociationStatus", name: "ContainerAssociationStatus")
    ContainerAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ContainerAssociationSummary", name: "ContainerAssociationSummary")
    ContainerAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ContainerAssociations", name: "ContainerAssociations")
    ContainerAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ContainerAttribute", name: "ContainerAttribute")
    ContainerAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ContainerAttributeKey", name: "ContainerAttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ContainerAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ContainerAttributeValue", name: "ContainerAttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ContainerAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ContainerAttributes", name: "ContainerAttributes")
    ContainerMonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ContainerMonitoringConfiguration", name: "ContainerMonitoringConfiguration")
    ContainerMonitoringConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ContainerMonitoringConfigurations", name: "ContainerMonitoringConfigurations")
    ContainerMonitoringType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ContainerMonitoringType", name: "ContainerMonitoringType")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#Count", name: "Count", traits: {"smithy.api#default" => 0})
    CreateContainerAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateContainerAssociationRequest", name: "CreateContainerAssociationRequest")
    CreateContainerAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateContainerAssociationResponse", name: "CreateContainerAssociationResponse")
    CreateFirewallPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateFirewallPolicyRequest", name: "CreateFirewallPolicyRequest")
    CreateFirewallPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateFirewallPolicyResponse", name: "CreateFirewallPolicyResponse")
    CreateFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateFirewallRequest", name: "CreateFirewallRequest")
    CreateFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateFirewallResponse", name: "CreateFirewallResponse")
    CreateProxyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyConfigurationRequest", name: "CreateProxyConfigurationRequest")
    CreateProxyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyConfigurationResponse", name: "CreateProxyConfigurationResponse")
    CreateProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyRequest", name: "CreateProxyRequest")
    CreateProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyResponse", name: "CreateProxyResponse")
    CreateProxyRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyRule", name: "CreateProxyRule")
    CreateProxyRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyRuleGroupRequest", name: "CreateProxyRuleGroupRequest")
    CreateProxyRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyRuleGroupResponse", name: "CreateProxyRuleGroupResponse")
    CreateProxyRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#CreateProxyRuleList", name: "CreateProxyRuleList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    CreateProxyRulesByRequestPhase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyRulesByRequestPhase", name: "CreateProxyRulesByRequestPhase")
    CreateProxyRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyRulesRequest", name: "CreateProxyRulesRequest")
    CreateProxyRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateProxyRulesResponse", name: "CreateProxyRulesResponse")
    CreateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateRuleGroupRequest", name: "CreateRuleGroupRequest")
    CreateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateRuleGroupResponse", name: "CreateRuleGroupResponse")
    CreateTLSInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateTLSInspectionConfigurationRequest", name: "CreateTLSInspectionConfigurationRequest")
    CreateTLSInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateTLSInspectionConfigurationResponse", name: "CreateTLSInspectionConfigurationResponse")
    CreateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#CreateTime", name: "CreateTime")
    CreateVpcEndpointAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateVpcEndpointAssociationRequest", name: "CreateVpcEndpointAssociationRequest")
    CreateVpcEndpointAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateVpcEndpointAssociationResponse", name: "CreateVpcEndpointAssociationResponse")
    CustomAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CustomAction", name: "CustomAction")
    CustomActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#CustomActions", name: "CustomActions")
    DeepThreatInspection = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networkfirewall#DeepThreatInspection", name: "DeepThreatInspection")
    DeleteContainerAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteContainerAssociationRequest", name: "DeleteContainerAssociationRequest")
    DeleteContainerAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteContainerAssociationResponse", name: "DeleteContainerAssociationResponse")
    DeleteFirewallPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteFirewallPolicyRequest", name: "DeleteFirewallPolicyRequest")
    DeleteFirewallPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteFirewallPolicyResponse", name: "DeleteFirewallPolicyResponse")
    DeleteFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteFirewallRequest", name: "DeleteFirewallRequest")
    DeleteFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteFirewallResponse", name: "DeleteFirewallResponse")
    DeleteNetworkFirewallTransitGatewayAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteNetworkFirewallTransitGatewayAttachmentRequest", name: "DeleteNetworkFirewallTransitGatewayAttachmentRequest")
    DeleteNetworkFirewallTransitGatewayAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteNetworkFirewallTransitGatewayAttachmentResponse", name: "DeleteNetworkFirewallTransitGatewayAttachmentResponse")
    DeleteProxyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteProxyConfigurationRequest", name: "DeleteProxyConfigurationRequest")
    DeleteProxyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteProxyConfigurationResponse", name: "DeleteProxyConfigurationResponse")
    DeleteProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteProxyRequest", name: "DeleteProxyRequest")
    DeleteProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteProxyResponse", name: "DeleteProxyResponse")
    DeleteProxyRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteProxyRuleGroupRequest", name: "DeleteProxyRuleGroupRequest")
    DeleteProxyRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteProxyRuleGroupResponse", name: "DeleteProxyRuleGroupResponse")
    DeleteProxyRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteProxyRulesRequest", name: "DeleteProxyRulesRequest")
    DeleteProxyRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteProxyRulesResponse", name: "DeleteProxyRulesResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteRuleGroupRequest", name: "DeleteRuleGroupRequest")
    DeleteRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteRuleGroupResponse", name: "DeleteRuleGroupResponse")
    DeleteTLSInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteTLSInspectionConfigurationRequest", name: "DeleteTLSInspectionConfigurationRequest")
    DeleteTLSInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteTLSInspectionConfigurationResponse", name: "DeleteTLSInspectionConfigurationResponse")
    DeleteTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#DeleteTime", name: "DeleteTime")
    DeleteVpcEndpointAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteVpcEndpointAssociationRequest", name: "DeleteVpcEndpointAssociationRequest")
    DeleteVpcEndpointAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteVpcEndpointAssociationResponse", name: "DeleteVpcEndpointAssociationResponse")
    DescribeContainerAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeContainerAssociationRequest", name: "DescribeContainerAssociationRequest")
    DescribeContainerAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeContainerAssociationResponse", name: "DescribeContainerAssociationResponse")
    DescribeFirewallMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeFirewallMetadataRequest", name: "DescribeFirewallMetadataRequest")
    DescribeFirewallMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeFirewallMetadataResponse", name: "DescribeFirewallMetadataResponse")
    DescribeFirewallPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeFirewallPolicyRequest", name: "DescribeFirewallPolicyRequest")
    DescribeFirewallPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeFirewallPolicyResponse", name: "DescribeFirewallPolicyResponse")
    DescribeFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeFirewallRequest", name: "DescribeFirewallRequest")
    DescribeFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeFirewallResponse", name: "DescribeFirewallResponse")
    DescribeFlowOperationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeFlowOperationRequest", name: "DescribeFlowOperationRequest")
    DescribeFlowOperationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeFlowOperationResponse", name: "DescribeFlowOperationResponse")
    DescribeLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeLoggingConfigurationRequest", name: "DescribeLoggingConfigurationRequest")
    DescribeLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeLoggingConfigurationResponse", name: "DescribeLoggingConfigurationResponse")
    DescribeProxyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyConfigurationRequest", name: "DescribeProxyConfigurationRequest")
    DescribeProxyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyConfigurationResponse", name: "DescribeProxyConfigurationResponse")
    DescribeProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyRequest", name: "DescribeProxyRequest")
    DescribeProxyResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyResource", name: "DescribeProxyResource")
    DescribeProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyResponse", name: "DescribeProxyResponse")
    DescribeProxyRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyRuleGroupRequest", name: "DescribeProxyRuleGroupRequest")
    DescribeProxyRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyRuleGroupResponse", name: "DescribeProxyRuleGroupResponse")
    DescribeProxyRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyRuleRequest", name: "DescribeProxyRuleRequest")
    DescribeProxyRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeProxyRuleResponse", name: "DescribeProxyRuleResponse")
    DescribeResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeResourcePolicyRequest", name: "DescribeResourcePolicyRequest")
    DescribeResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeResourcePolicyResponse", name: "DescribeResourcePolicyResponse")
    DescribeRuleGroupMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeRuleGroupMetadataRequest", name: "DescribeRuleGroupMetadataRequest")
    DescribeRuleGroupMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeRuleGroupMetadataResponse", name: "DescribeRuleGroupMetadataResponse")
    DescribeRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeRuleGroupRequest", name: "DescribeRuleGroupRequest")
    DescribeRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeRuleGroupResponse", name: "DescribeRuleGroupResponse")
    DescribeRuleGroupSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeRuleGroupSummaryRequest", name: "DescribeRuleGroupSummaryRequest")
    DescribeRuleGroupSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeRuleGroupSummaryResponse", name: "DescribeRuleGroupSummaryResponse")
    DescribeTLSInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeTLSInspectionConfigurationRequest", name: "DescribeTLSInspectionConfigurationRequest")
    DescribeTLSInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeTLSInspectionConfigurationResponse", name: "DescribeTLSInspectionConfigurationResponse")
    DescribeVpcEndpointAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeVpcEndpointAssociationRequest", name: "DescribeVpcEndpointAssociationRequest")
    DescribeVpcEndpointAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DescribeVpcEndpointAssociationResponse", name: "DescribeVpcEndpointAssociationResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^.*$"})
    Destination = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#Destination", name: "Destination", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    DetachRuleGroupsFromProxyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DetachRuleGroupsFromProxyConfigurationRequest", name: "DetachRuleGroupsFromProxyConfigurationRequest")
    DetachRuleGroupsFromProxyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DetachRuleGroupsFromProxyConfigurationResponse", name: "DetachRuleGroupsFromProxyConfigurationResponse")
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Dimension", name: "Dimension")
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#DimensionValue", name: "DimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_ ]+$"})
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Dimensions", name: "Dimensions", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DisassociateAvailabilityZonesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DisassociateAvailabilityZonesRequest", name: "DisassociateAvailabilityZonesRequest")
    DisassociateAvailabilityZonesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DisassociateAvailabilityZonesResponse", name: "DisassociateAvailabilityZonesResponse")
    DisassociateSubnetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DisassociateSubnetsRequest", name: "DisassociateSubnetsRequest")
    DisassociateSubnetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DisassociateSubnetsResponse", name: "DisassociateSubnetsResponse")
    DnsName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#DnsName", name: "DnsName")
    Domain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#Domain", name: "Domain")
    EnableMonitoringDashboard = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networkfirewall#EnableMonitoringDashboard", name: "EnableMonitoringDashboard")
    EnableTLSSessionHolding = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networkfirewall#EnableTLSSessionHolding", name: "EnableTLSSessionHolding")
    EnabledAnalysisType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#EnabledAnalysisType", name: "EnabledAnalysisType")
    EnabledAnalysisTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#EnabledAnalysisTypes", name: "EnabledAnalysisTypes")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#EncryptionType", name: "EncryptionType")
    EndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#EndTime", name: "EndTime")
    EndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#EndpointId", name: "EndpointId")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ErrorMessage", name: "ErrorMessage")
    FailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#FailureCode", name: "FailureCode")
    FailureMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#FailureMessage", name: "FailureMessage")
    Firewall = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Firewall", name: "Firewall")
    FirewallMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FirewallMetadata", name: "FirewallMetadata")
    FirewallPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#FirewallPolicies", name: "FirewallPolicies")
    FirewallPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FirewallPolicy", name: "FirewallPolicy")
    FirewallPolicyMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FirewallPolicyMetadata", name: "FirewallPolicyMetadata")
    FirewallPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FirewallPolicyResponse", name: "FirewallPolicyResponse")
    FirewallStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FirewallStatus", name: "FirewallStatus")
    FirewallStatusValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#FirewallStatusValue", name: "FirewallStatusValue")
    Firewalls = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Firewalls", name: "Firewalls")
    FirstAccessed = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#FirstAccessed", name: "FirstAccessed")
    Flags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Flags", name: "Flags")
    Flow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Flow", name: "Flow")
    FlowFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FlowFilter", name: "FlowFilter")
    FlowFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#FlowFilters", name: "FlowFilters")
    FlowOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FlowOperation", name: "FlowOperation")
    FlowOperationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#FlowOperationId", name: "FlowOperationId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$"})
    FlowOperationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FlowOperationMetadata", name: "FlowOperationMetadata")
    FlowOperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#FlowOperationStatus", name: "FlowOperationStatus")
    FlowOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#FlowOperationType", name: "FlowOperationType")
    FlowOperations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#FlowOperations", name: "FlowOperations")
    FlowRequestTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#FlowRequestTimestamp", name: "FlowRequestTimestamp")
    FlowTimeouts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#FlowTimeouts", name: "FlowTimeouts")
    Flows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Flows", name: "Flows")
    GeneratedRulesType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#GeneratedRulesType", name: "GeneratedRulesType")
    GetAnalysisReportResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#GetAnalysisReportResultsRequest", name: "GetAnalysisReportResultsRequest")
    GetAnalysisReportResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#GetAnalysisReportResultsResponse", name: "GetAnalysisReportResultsResponse")
    HashMapKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#HashMapKey", name: "HashMapKey", traits: {"smithy.api#length" => {"min" => 3, "max" => 50}, "smithy.api#pattern" => "^[0-9A-Za-z.\\-_@\\/]+$"})
    HashMapValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#HashMapValue", name: "HashMapValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Header = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Header", name: "Header")
    Hits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Hits", name: "Hits")
    IPAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#IPAddressType", name: "IPAddressType")
    IPSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#IPSet", name: "IPSet")
    IPSetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#IPSetArn", name: "IPSetArn")
    IPSetMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#IPSetMetadata", name: "IPSetMetadata")
    IPSetMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#IPSetMetadataMap", name: "IPSetMetadataMap")
    IPSetReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#IPSetReference", name: "IPSetReference")
    IPSetReferenceMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#IPSetReferenceMap", name: "IPSetReferenceMap")
    IPSetReferenceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#IPSetReferenceName", name: "IPSetReferenceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_]*$"})
    IPSets = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#IPSets", name: "IPSets")
    IdentifiedType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#IdentifiedType", name: "IdentifiedType")
    InsertPosition = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#InsertPosition", name: "InsertPosition")
    InsufficientCapacityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#InsufficientCapacityException", name: "InsufficientCapacityException", traits: {"smithy.api#error" => "server"})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#InvalidOperationException", name: "InvalidOperationException", traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    InvalidResourcePolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#InvalidResourcePolicyException", name: "InvalidResourcePolicyException", traits: {"smithy.api#error" => "client"})
    InvalidTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#InvalidTokenException", name: "InvalidTokenException", traits: {"smithy.api#error" => "client"})
    KeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#KeyId", name: "KeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "\\S"})
    Keyword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#Keyword", name: "Keyword", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    LastAccessed = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#LastAccessed", name: "LastAccessed")
    LastUpdateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#LastUpdateTime", name: "LastUpdateTime")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAnalysisReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListAnalysisReportsRequest", name: "ListAnalysisReportsRequest")
    ListAnalysisReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListAnalysisReportsResponse", name: "ListAnalysisReportsResponse")
    ListContainerAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListContainerAssociationsRequest", name: "ListContainerAssociationsRequest")
    ListContainerAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListContainerAssociationsResponse", name: "ListContainerAssociationsResponse")
    ListFirewallPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFirewallPoliciesRequest", name: "ListFirewallPoliciesRequest")
    ListFirewallPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFirewallPoliciesResponse", name: "ListFirewallPoliciesResponse")
    ListFirewallsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFirewallsRequest", name: "ListFirewallsRequest")
    ListFirewallsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFirewallsResponse", name: "ListFirewallsResponse")
    ListFlowOperationResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFlowOperationResultsRequest", name: "ListFlowOperationResultsRequest")
    ListFlowOperationResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFlowOperationResultsResponse", name: "ListFlowOperationResultsResponse")
    ListFlowOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFlowOperationsRequest", name: "ListFlowOperationsRequest")
    ListFlowOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFlowOperationsResponse", name: "ListFlowOperationsResponse")
    ListProxiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListProxiesRequest", name: "ListProxiesRequest")
    ListProxiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListProxiesResponse", name: "ListProxiesResponse")
    ListProxyConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListProxyConfigurationsRequest", name: "ListProxyConfigurationsRequest")
    ListProxyConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListProxyConfigurationsResponse", name: "ListProxyConfigurationsResponse")
    ListProxyRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListProxyRuleGroupsRequest", name: "ListProxyRuleGroupsRequest")
    ListProxyRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListProxyRuleGroupsResponse", name: "ListProxyRuleGroupsResponse")
    ListRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListRuleGroupsRequest", name: "ListRuleGroupsRequest")
    ListRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListRuleGroupsResponse", name: "ListRuleGroupsResponse")
    ListTLSInspectionConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListTLSInspectionConfigurationsRequest", name: "ListTLSInspectionConfigurationsRequest")
    ListTLSInspectionConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListTLSInspectionConfigurationsResponse", name: "ListTLSInspectionConfigurationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListVpcEndpointAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListVpcEndpointAssociationsRequest", name: "ListVpcEndpointAssociationsRequest")
    ListVpcEndpointAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListVpcEndpointAssociationsResponse", name: "ListVpcEndpointAssociationsResponse")
    ListenerProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ListenerProperties", name: "ListenerProperties")
    ListenerPropertiesRequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ListenerPropertiesRequest", name: "ListenerPropertiesRequest", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ListenerProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListenerProperty", name: "ListenerProperty")
    ListenerPropertyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListenerPropertyRequest", name: "ListenerPropertyRequest")
    ListenerPropertyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ListenerPropertyType", name: "ListenerPropertyType")
    ListingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ListingName", name: "ListingName")
    LogDestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#LogDestinationConfig", name: "LogDestinationConfig")
    LogDestinationConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#LogDestinationConfigs", name: "LogDestinationConfigs")
    LogDestinationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#LogDestinationMap", name: "LogDestinationMap")
    LogDestinationPermissionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#LogDestinationPermissionException", name: "LogDestinationPermissionException", traits: {"smithy.api#error" => "client"})
    LogDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#LogDestinationType", name: "LogDestinationType", traits: {"smithy.api#length" => {"min" => 2, "max" => 30}, "smithy.api#pattern" => "^[0-9A-Za-z]+$"})
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#LogType", name: "LogType")
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#LoggingConfiguration", name: "LoggingConfiguration")
    MatchAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#MatchAttributes", name: "MatchAttributes")
    NatGatewayAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#NatGatewayAttachment", name: "NatGatewayAttachment")
    NatGatewayAttachmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#NatGatewayAttachmentStatus", name: "NatGatewayAttachmentStatus")
    NatGatewayAttachmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#NatGatewayAttachmentsList", name: "NatGatewayAttachmentsList")
    NatGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#NatGatewayId", name: "NatGatewayId", traits: {"smithy.api#length" => {"min" => 1}})
    NatGatewayMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#NatGatewayMapping", name: "NatGatewayMapping")
    NatGatewayMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#NatGatewayMappingsList", name: "NatGatewayMappingsList")
    NatGatewayPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#NatGatewayPort", name: "NatGatewayPort")
    NumberOfAssociations = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#NumberOfAssociations", name: "NumberOfAssociations")
    OverrideAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#OverrideAction", name: "OverrideAction")
    PacketCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#PacketCount", name: "PacketCount")
    PaginationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#PaginationMaxResults", name: "PaginationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[0-9A-Za-z:\\/+=]+$"})
    PerObjectStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PerObjectStatus", name: "PerObjectStatus")
    PerObjectSyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#PerObjectSyncStatus", name: "PerObjectSyncStatus")
    PolicyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#PolicyString", name: "PolicyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 395000}, "smithy.api#pattern" => "\\S"})
    PolicyVariables = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PolicyVariables", name: "PolicyVariables")
    Port = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#Port", name: "Port", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    PortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PortRange", name: "PortRange")
    PortRangeBound = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#PortRangeBound", name: "PortRangeBound", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 65535}})
    PortRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#PortRanges", name: "PortRanges")
    PortSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PortSet", name: "PortSet")
    PortSets = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#PortSets", name: "PortSets")
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#Priority", name: "Priority", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PrivateDNSName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#PrivateDNSName", name: "PrivateDNSName")
    ProductId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ProductId", name: "ProductId")
    ProtocolNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#ProtocolNumber", name: "ProtocolNumber", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 255}})
    ProtocolNumbers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProtocolNumbers", name: "ProtocolNumbers")
    ProtocolString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ProtocolString", name: "ProtocolString", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^.*$"})
    ProtocolStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProtocolStrings", name: "ProtocolStrings")
    Proxies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Proxies", name: "Proxies")
    Proxy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Proxy", name: "Proxy")
    ProxyConditionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ProxyConditionValue", name: "ProxyConditionValue")
    ProxyConditionValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyConditionValueList", name: "ProxyConditionValueList")
    ProxyConfigDefaultRulePhaseActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyConfigDefaultRulePhaseActionsRequest", name: "ProxyConfigDefaultRulePhaseActionsRequest")
    ProxyConfigRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyConfigRuleGroup", name: "ProxyConfigRuleGroup")
    ProxyConfigRuleGroupPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#ProxyConfigRuleGroupPriority", name: "ProxyConfigRuleGroupPriority")
    ProxyConfigRuleGroupSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyConfigRuleGroupSet", name: "ProxyConfigRuleGroupSet")
    ProxyConfigRuleGroupType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ProxyConfigRuleGroupType", name: "ProxyConfigRuleGroupType")
    ProxyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyConfiguration", name: "ProxyConfiguration")
    ProxyConfigurationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyConfigurationMetadata", name: "ProxyConfigurationMetadata")
    ProxyConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyConfigurations", name: "ProxyConfigurations")
    ProxyMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyMetadata", name: "ProxyMetadata")
    ProxyModifyState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ProxyModifyState", name: "ProxyModifyState")
    ProxyRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRule", name: "ProxyRule")
    ProxyRuleCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleCondition", name: "ProxyRuleCondition")
    ProxyRuleConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleConditionList", name: "ProxyRuleConditionList")
    ProxyRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroup", name: "ProxyRuleGroup")
    ProxyRuleGroupAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroupAttachment", name: "ProxyRuleGroupAttachment")
    ProxyRuleGroupAttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroupAttachmentList", name: "ProxyRuleGroupAttachmentList")
    ProxyRuleGroupMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroupMetadata", name: "ProxyRuleGroupMetadata")
    ProxyRuleGroupPriority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroupPriority", name: "ProxyRuleGroupPriority")
    ProxyRuleGroupPriorityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroupPriorityList", name: "ProxyRuleGroupPriorityList")
    ProxyRuleGroupPriorityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroupPriorityResult", name: "ProxyRuleGroupPriorityResult")
    ProxyRuleGroupPriorityResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroupPriorityResultList", name: "ProxyRuleGroupPriorityResultList")
    ProxyRuleGroupPriorityResultPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroupPriorityResultPriority", name: "ProxyRuleGroupPriorityResultPriority")
    ProxyRuleGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleGroups", name: "ProxyRuleGroups")
    ProxyRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyRuleList", name: "ProxyRuleList")
    ProxyRulePhaseAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ProxyRulePhaseAction", name: "ProxyRulePhaseAction")
    ProxyRulePriority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRulePriority", name: "ProxyRulePriority")
    ProxyRulePriorityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProxyRulePriorityList", name: "ProxyRulePriorityList")
    ProxyRulesByRequestPhase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxyRulesByRequestPhase", name: "ProxyRulesByRequestPhase")
    ProxySettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ProxySettings", name: "ProxySettings")
    ProxyState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ProxyState", name: "ProxyState")
    PublishMetricAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PublishMetricAction", name: "PublishMetricAction")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    ReferenceSets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ReferenceSets", name: "ReferenceSets")
    RejectNetworkFirewallTransitGatewayAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RejectNetworkFirewallTransitGatewayAttachmentRequest", name: "RejectNetworkFirewallTransitGatewayAttachmentRequest")
    RejectNetworkFirewallTransitGatewayAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RejectNetworkFirewallTransitGatewayAttachmentResponse", name: "RejectNetworkFirewallTransitGatewayAttachmentResponse")
    ReportTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#ReportTime", name: "ReportTime")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws"})
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ResourceArnList", name: "ResourceArnList")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$"})
    ResourceManagedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ResourceManagedStatus", name: "ResourceManagedStatus")
    ResourceManagedType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ResourceManagedType", name: "ResourceManagedType")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ResourceNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ResourceNameList", name: "ResourceNameList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceOwnerCheckException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ResourceOwnerCheckException", name: "ResourceOwnerCheckException", traits: {"smithy.api#error" => "client"})
    ResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ResourceStatus", name: "ResourceStatus")
    RevocationCheckAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#RevocationCheckAction", name: "RevocationCheckAction")
    RuleCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#RuleCapacity", name: "RuleCapacity")
    RuleDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleDefinition", name: "RuleDefinition")
    RuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleGroup", name: "RuleGroup")
    RuleGroupMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleGroupMetadata", name: "RuleGroupMetadata")
    RuleGroupRequestPhase = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#RuleGroupRequestPhase", name: "RuleGroupRequestPhase")
    RuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleGroupResponse", name: "RuleGroupResponse")
    RuleGroupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#RuleGroupType", name: "RuleGroupType")
    RuleGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#RuleGroups", name: "RuleGroups")
    RuleIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#RuleIdList", name: "RuleIdList")
    RuleOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleOption", name: "RuleOption")
    RuleOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#RuleOptions", name: "RuleOptions")
    RuleOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#RuleOrder", name: "RuleOrder")
    RuleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#RuleSummaries", name: "RuleSummaries")
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleSummary", name: "RuleSummary")
    RuleTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#RuleTargets", name: "RuleTargets")
    RuleVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#RuleVariableName", name: "RuleVariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_]*$"})
    RuleVariables = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleVariables", name: "RuleVariables")
    RulesSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RulesSource", name: "RulesSource")
    RulesSourceList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RulesSourceList", name: "RulesSourceList")
    RulesString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#RulesString", name: "RulesString", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000000}})
    ServerCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ServerCertificate", name: "ServerCertificate")
    ServerCertificateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ServerCertificateConfiguration", name: "ServerCertificateConfiguration")
    ServerCertificateConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ServerCertificateConfigurations", name: "ServerCertificateConfigurations")
    ServerCertificateScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ServerCertificateScope", name: "ServerCertificateScope")
    ServerCertificateScopes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ServerCertificateScopes", name: "ServerCertificateScopes")
    ServerCertificates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ServerCertificates", name: "ServerCertificates")
    Setting = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#Setting", name: "Setting", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => ".*"})
    Settings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Settings", name: "Settings")
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#Source", name: "Source", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    SourceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#SourceMetadata", name: "SourceMetadata")
    StartAnalysisReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StartAnalysisReportRequest", name: "StartAnalysisReportRequest")
    StartAnalysisReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StartAnalysisReportResponse", name: "StartAnalysisReportResponse")
    StartFlowCaptureRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StartFlowCaptureRequest", name: "StartFlowCaptureRequest")
    StartFlowCaptureResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StartFlowCaptureResponse", name: "StartFlowCaptureResponse")
    StartFlowFlushRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StartFlowFlushRequest", name: "StartFlowFlushRequest")
    StartFlowFlushResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StartFlowFlushResponse", name: "StartFlowFlushResponse")
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#StartTime", name: "StartTime")
    StatefulAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#StatefulAction", name: "StatefulAction")
    StatefulActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#StatefulActions", name: "StatefulActions")
    StatefulEngineOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StatefulEngineOptions", name: "StatefulEngineOptions")
    StatefulRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StatefulRule", name: "StatefulRule")
    StatefulRuleDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#StatefulRuleDirection", name: "StatefulRuleDirection")
    StatefulRuleGroupOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StatefulRuleGroupOverride", name: "StatefulRuleGroupOverride")
    StatefulRuleGroupReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StatefulRuleGroupReference", name: "StatefulRuleGroupReference")
    StatefulRuleGroupReferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#StatefulRuleGroupReferences", name: "StatefulRuleGroupReferences")
    StatefulRuleOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StatefulRuleOptions", name: "StatefulRuleOptions")
    StatefulRuleProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#StatefulRuleProtocol", name: "StatefulRuleProtocol")
    StatefulRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#StatefulRules", name: "StatefulRules")
    StatelessActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#StatelessActions", name: "StatelessActions")
    StatelessRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StatelessRule", name: "StatelessRule")
    StatelessRuleGroupReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StatelessRuleGroupReference", name: "StatelessRuleGroupReference")
    StatelessRuleGroupReferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#StatelessRuleGroupReferences", name: "StatelessRuleGroupReferences")
    StatelessRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#StatelessRules", name: "StatelessRules")
    StatelessRulesAndCustomActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#StatelessRulesAndCustomActions", name: "StatelessRulesAndCustomActions")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#Status", name: "Status")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#StatusMessage", name: "StatusMessage")
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#StatusReason", name: "StatusReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9- ]+$"})
    StreamExceptionPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#StreamExceptionPolicy", name: "StreamExceptionPolicy")
    SubnetMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#SubnetMapping", name: "SubnetMapping")
    SubnetMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#SubnetMappings", name: "SubnetMappings")
    SubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#SubscriptionStatus", name: "SubscriptionStatus")
    Summary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Summary", name: "Summary")
    SummaryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#SummaryConfiguration", name: "SummaryConfiguration")
    SummaryRuleOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#SummaryRuleOption", name: "SummaryRuleOption")
    SummaryRuleOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#SummaryRuleOptions", name: "SummaryRuleOptions")
    SupportedAvailabilityZones = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#SupportedAvailabilityZones", name: "SupportedAvailabilityZones")
    SyncState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#SyncState", name: "SyncState")
    SyncStateConfig = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#SyncStateConfig", name: "SyncStateConfig")
    SyncStates = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#SyncStates", name: "SyncStates")
    TCPFlag = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#TCPFlag", name: "TCPFlag")
    TCPFlagField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TCPFlagField", name: "TCPFlagField")
    TCPFlags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#TCPFlags", name: "TCPFlags")
    TLSInspectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TLSInspectionConfiguration", name: "TLSInspectionConfiguration")
    TLSInspectionConfigurationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TLSInspectionConfigurationMetadata", name: "TLSInspectionConfigurationMetadata")
    TLSInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TLSInspectionConfigurationResponse", name: "TLSInspectionConfigurationResponse")
    TLSInspectionConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#TLSInspectionConfigurations", name: "TLSInspectionConfigurations")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^.*$"})
    TagsPaginationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#TagsPaginationMaxResults", name: "TagsPaginationMaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#TargetType", name: "TargetType")
    TargetTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#TargetTypes", name: "TargetTypes")
    TcpIdleTimeoutRangeBound = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#TcpIdleTimeoutRangeBound", name: "TcpIdleTimeoutRangeBound")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    TlsCertificateData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TlsCertificateData", name: "TlsCertificateData")
    TlsInterceptMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#TlsInterceptMode", name: "TlsInterceptMode")
    TlsInterceptProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TlsInterceptProperties", name: "TlsInterceptProperties")
    TlsInterceptPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TlsInterceptPropertiesRequest", name: "TlsInterceptPropertiesRequest")
    TransitGatewayAttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#TransitGatewayAttachmentId", name: "TransitGatewayAttachmentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^tgw-attach-[0-9a-z]+$"})
    TransitGatewayAttachmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#TransitGatewayAttachmentStatus", name: "TransitGatewayAttachmentStatus")
    TransitGatewayAttachmentSyncState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#TransitGatewayAttachmentSyncState", name: "TransitGatewayAttachmentSyncState")
    TransitGatewayAttachmentSyncStateMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#TransitGatewayAttachmentSyncStateMessage", name: "TransitGatewayAttachmentSyncStateMessage")
    TransitGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#TransitGatewayId", name: "TransitGatewayId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^tgw-[0-9a-z]+$"})
    UniqueSources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UniqueSources", name: "UniqueSources")
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAvailabilityZoneChangeProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateAvailabilityZoneChangeProtectionRequest", name: "UpdateAvailabilityZoneChangeProtectionRequest")
    UpdateAvailabilityZoneChangeProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateAvailabilityZoneChangeProtectionResponse", name: "UpdateAvailabilityZoneChangeProtectionResponse")
    UpdateContainerAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateContainerAssociationRequest", name: "UpdateContainerAssociationRequest")
    UpdateContainerAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateContainerAssociationResponse", name: "UpdateContainerAssociationResponse")
    UpdateFirewallAnalysisSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallAnalysisSettingsRequest", name: "UpdateFirewallAnalysisSettingsRequest")
    UpdateFirewallAnalysisSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallAnalysisSettingsResponse", name: "UpdateFirewallAnalysisSettingsResponse")
    UpdateFirewallDeleteProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallDeleteProtectionRequest", name: "UpdateFirewallDeleteProtectionRequest")
    UpdateFirewallDeleteProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallDeleteProtectionResponse", name: "UpdateFirewallDeleteProtectionResponse")
    UpdateFirewallDescriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallDescriptionRequest", name: "UpdateFirewallDescriptionRequest")
    UpdateFirewallDescriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallDescriptionResponse", name: "UpdateFirewallDescriptionResponse")
    UpdateFirewallEncryptionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallEncryptionConfigurationRequest", name: "UpdateFirewallEncryptionConfigurationRequest")
    UpdateFirewallEncryptionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallEncryptionConfigurationResponse", name: "UpdateFirewallEncryptionConfigurationResponse")
    UpdateFirewallPolicyChangeProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallPolicyChangeProtectionRequest", name: "UpdateFirewallPolicyChangeProtectionRequest")
    UpdateFirewallPolicyChangeProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallPolicyChangeProtectionResponse", name: "UpdateFirewallPolicyChangeProtectionResponse")
    UpdateFirewallPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallPolicyRequest", name: "UpdateFirewallPolicyRequest")
    UpdateFirewallPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateFirewallPolicyResponse", name: "UpdateFirewallPolicyResponse")
    UpdateLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateLoggingConfigurationRequest", name: "UpdateLoggingConfigurationRequest")
    UpdateLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateLoggingConfigurationResponse", name: "UpdateLoggingConfigurationResponse")
    UpdateProxyConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyConfigurationRequest", name: "UpdateProxyConfigurationRequest")
    UpdateProxyConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyConfigurationResponse", name: "UpdateProxyConfigurationResponse")
    UpdateProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyRequest", name: "UpdateProxyRequest")
    UpdateProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyResponse", name: "UpdateProxyResponse")
    UpdateProxyRuleGroupPrioritiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyRuleGroupPrioritiesRequest", name: "UpdateProxyRuleGroupPrioritiesRequest")
    UpdateProxyRuleGroupPrioritiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyRuleGroupPrioritiesResponse", name: "UpdateProxyRuleGroupPrioritiesResponse")
    UpdateProxyRulePrioritiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyRulePrioritiesRequest", name: "UpdateProxyRulePrioritiesRequest")
    UpdateProxyRulePrioritiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyRulePrioritiesResponse", name: "UpdateProxyRulePrioritiesResponse")
    UpdateProxyRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyRuleRequest", name: "UpdateProxyRuleRequest")
    UpdateProxyRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxyRuleResponse", name: "UpdateProxyRuleResponse")
    UpdateProxySettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxySettingsRequest", name: "UpdateProxySettingsRequest")
    UpdateProxySettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateProxySettingsResponse", name: "UpdateProxySettingsResponse")
    UpdateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateRuleGroupRequest", name: "UpdateRuleGroupRequest")
    UpdateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateRuleGroupResponse", name: "UpdateRuleGroupResponse")
    UpdateSubnetChangeProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateSubnetChangeProtectionRequest", name: "UpdateSubnetChangeProtectionRequest")
    UpdateSubnetChangeProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateSubnetChangeProtectionResponse", name: "UpdateSubnetChangeProtectionResponse")
    UpdateTLSInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateTLSInspectionConfigurationRequest", name: "UpdateTLSInspectionConfigurationRequest")
    UpdateTLSInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateTLSInspectionConfigurationResponse", name: "UpdateTLSInspectionConfigurationResponse")
    UpdateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#UpdateTime", name: "UpdateTime")
    UpdateToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#UpdateToken", name: "UpdateToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$"})
    VariableDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#VariableDefinition", name: "VariableDefinition", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^.*$"})
    VariableDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#VariableDefinitionList", name: "VariableDefinitionList")
    VendorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#VendorName", name: "VendorName")
    VpcEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#VpcEndpoint", name: "VpcEndpoint")
    VpcEndpointAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointAssociation", name: "VpcEndpointAssociation")
    VpcEndpointAssociationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointAssociationMetadata", name: "VpcEndpointAssociationMetadata")
    VpcEndpointAssociationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointAssociationStatus", name: "VpcEndpointAssociationStatus")
    VpcEndpointAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointAssociations", name: "VpcEndpointAssociations")
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointId", name: "VpcEndpointId", traits: {"smithy.api#length" => {"min" => 5, "max" => 256}, "smithy.api#pattern" => "^vpce-[a-zA-Z0-9]*$"})
    VpcEndpointServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointServiceName", name: "VpcEndpointServiceName")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^vpc-[0-9a-f]+$"})
    VpcIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#VpcIds", name: "VpcIds")

    AZSyncState.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    AZSyncState.type = Types::AZSyncState
    AcceptNetworkFirewallTransitGatewayAttachmentRequest.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    AcceptNetworkFirewallTransitGatewayAttachmentRequest.type = Types::AcceptNetworkFirewallTransitGatewayAttachmentRequest
    AcceptNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    AcceptNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentStatus, name: "TransitGatewayAttachmentStatus", traits: {"smithy.api#required" => {}}))
    AcceptNetworkFirewallTransitGatewayAttachmentResponse.type = Types::AcceptNetworkFirewallTransitGatewayAttachmentResponse
    ActionDefinition.add_member(:publish_metric_action, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishMetricAction, name: "PublishMetricAction"))
    ActionDefinition.type = Types::ActionDefinition
    Address.add_member(:address_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressDefinition, name: "AddressDefinition", traits: {"smithy.api#required" => {}}))
    Address.type = Types::Address
    Addresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "member"))
    AnalysisReport.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportId, name: "AnalysisReportId"))
    AnalysisReport.add_member(:analysis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledAnalysisType, name: "AnalysisType"))
    AnalysisReport.add_member(:report_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportTime, name: "ReportTime"))
    AnalysisReport.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    AnalysisReport.type = Types::AnalysisReport
    AnalysisReportResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTypeReportResult, name: "member"))
    AnalysisReports.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReport, name: "member"))
    AnalysisResult.add_member(:identified_rule_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdList, name: "IdentifiedRuleIds"))
    AnalysisResult.add_member(:identified_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifiedType, name: "IdentifiedType"))
    AnalysisResult.add_member(:analysis_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "AnalysisDetail"))
    AnalysisResult.type = Types::AnalysisResult
    AnalysisResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisResult, name: "member"))
    AnalysisTypeReportResult.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "Protocol"))
    AnalysisTypeReportResult.add_member(:first_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstAccessed, name: "FirstAccessed"))
    AnalysisTypeReportResult.add_member(:last_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: LastAccessed, name: "LastAccessed"))
    AnalysisTypeReportResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain"))
    AnalysisTypeReportResult.add_member(:hits, ::Smithy::Schema::Shapes::MemberShape.new(target: Hits, name: "Hits"))
    AnalysisTypeReportResult.add_member(:unique_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueSources, name: "UniqueSources"))
    AnalysisTypeReportResult.type = Types::AnalysisTypeReportResult
    AssociateAvailabilityZonesRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    AssociateAvailabilityZonesRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    AssociateAvailabilityZonesRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    AssociateAvailabilityZonesRequest.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMappings, name: "AvailabilityZoneMappings", traits: {"smithy.api#required" => {}}))
    AssociateAvailabilityZonesRequest.type = Types::AssociateAvailabilityZonesRequest
    AssociateAvailabilityZonesResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    AssociateAvailabilityZonesResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    AssociateAvailabilityZonesResponse.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMappings, name: "AvailabilityZoneMappings"))
    AssociateAvailabilityZonesResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    AssociateAvailabilityZonesResponse.type = Types::AssociateAvailabilityZonesResponse
    AssociateFirewallPolicyRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    AssociateFirewallPolicyRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    AssociateFirewallPolicyRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    AssociateFirewallPolicyRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn", traits: {"smithy.api#required" => {}}))
    AssociateFirewallPolicyRequest.type = Types::AssociateFirewallPolicyRequest
    AssociateFirewallPolicyResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    AssociateFirewallPolicyResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    AssociateFirewallPolicyResponse.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn"))
    AssociateFirewallPolicyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    AssociateFirewallPolicyResponse.type = Types::AssociateFirewallPolicyResponse
    AssociateSubnetsRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    AssociateSubnetsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    AssociateSubnetsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    AssociateSubnetsRequest.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMappings, name: "SubnetMappings", traits: {"smithy.api#required" => {}}))
    AssociateSubnetsRequest.type = Types::AssociateSubnetsRequest
    AssociateSubnetsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    AssociateSubnetsResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    AssociateSubnetsResponse.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMappings, name: "SubnetMappings"))
    AssociateSubnetsResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    AssociateSubnetsResponse.type = Types::AssociateSubnetsResponse
    AssociationSyncState.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "key"))
    AssociationSyncState.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AZSyncState, name: "value"))
    AttachRuleGroupsToProxyConfigurationRequest.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    AttachRuleGroupsToProxyConfigurationRequest.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    AttachRuleGroupsToProxyConfigurationRequest.add_member(:rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroupAttachmentList, name: "RuleGroups", traits: {"smithy.api#required" => {}}))
    AttachRuleGroupsToProxyConfigurationRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    AttachRuleGroupsToProxyConfigurationRequest.type = Types::AttachRuleGroupsToProxyConfigurationRequest
    AttachRuleGroupsToProxyConfigurationResponse.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "ProxyConfiguration"))
    AttachRuleGroupsToProxyConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    AttachRuleGroupsToProxyConfigurationResponse.type = Types::AttachRuleGroupsToProxyConfigurationResponse
    Attachment.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AzSubnet, name: "SubnetId"))
    Attachment.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, name: "EndpointId"))
    Attachment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStatus, name: "Status"))
    Attachment.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    Attachment.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, name: "DnsName"))
    Attachment.type = Types::Attachment
    AttachmentStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AttachmentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AttachmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AttachmentStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    AttachmentStatus.add_member(:scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCALING", traits: {"smithy.api#enumValue" => "SCALING"}))
    AttachmentStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    AvailabilityZoneMapping.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMappingString, name: "AvailabilityZone", traits: {"smithy.api#required" => {}}))
    AvailabilityZoneMapping.type = Types::AvailabilityZoneMapping
    AvailabilityZoneMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMapping, name: "member"))
    AvailabilityZoneMetadata.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressType, name: "IPAddressType"))
    AvailabilityZoneMetadata.type = Types::AvailabilityZoneMetadata
    AzSubnets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AzSubnet, name: "member"))
    CIDRSummary.add_member(:available_cidr_count, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDRCount, name: "AvailableCIDRCount"))
    CIDRSummary.add_member(:utilized_cidr_count, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDRCount, name: "UtilizedCIDRCount"))
    CIDRSummary.add_member(:ip_set_references, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetMetadataMap, name: "IPSetReferences"))
    CIDRSummary.type = Types::CIDRSummary
    CapacityUsageSummary.add_member(:cid_rs, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDRSummary, name: "CIDRs"))
    CapacityUsageSummary.type = Types::CapacityUsageSummary
    Certificates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsCertificateData, name: "member"))
    CheckCertificateRevocationStatusActions.add_member(:revoked_status_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationCheckAction, name: "RevokedStatusAction"))
    CheckCertificateRevocationStatusActions.add_member(:unknown_status_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationCheckAction, name: "UnknownStatusAction"))
    CheckCertificateRevocationStatusActions.type = Types::CheckCertificateRevocationStatusActions
    ConfigurationSyncState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ConfigurationSyncState.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    ConfigurationSyncState.add_member(:capacity_constrained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_CONSTRAINED", traits: {"smithy.api#enumValue" => "CAPACITY_CONSTRAINED"}))
    ContainerAssociationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerAssociationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ContainerAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ContainerAssociationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ContainerAssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    ContainerAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    ContainerAssociationSummary.type = Types::ContainerAssociationSummary
    ContainerAssociations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAssociationSummary, name: "member"))
    ContainerAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAttributeKey, name: "Key", traits: {"smithy.api#required" => {}}))
    ContainerAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAttributeValue, name: "Value", traits: {"smithy.api#required" => {}}))
    ContainerAttribute.type = Types::ContainerAttribute
    ContainerAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAttribute, name: "member"))
    ContainerMonitoringConfiguration.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ClusterArn", traits: {"smithy.api#required" => {}}))
    ContainerMonitoringConfiguration.add_member(:attribute_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAttributes, name: "AttributeFilters"))
    ContainerMonitoringConfiguration.type = Types::ContainerMonitoringConfiguration
    ContainerMonitoringConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringConfiguration, name: "member"))
    ContainerMonitoringType.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    ContainerMonitoringType.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS", traits: {"smithy.api#enumValue" => "EKS"}))
    CreateContainerAssociationRequest.add_member(:container_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ContainerAssociationName", traits: {"smithy.api#required" => {}}))
    CreateContainerAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateContainerAssociationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateContainerAssociationRequest.add_member(:container_monitoring_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringConfigurations, name: "ContainerMonitoringConfigurations", traits: {"smithy.api#required" => {}}))
    CreateContainerAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateContainerAssociationRequest.type = Types::CreateContainerAssociationRequest
    CreateContainerAssociationResponse.add_member(:container_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ContainerAssociationName"))
    CreateContainerAssociationResponse.add_member(:container_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ContainerAssociationArn"))
    CreateContainerAssociationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateContainerAssociationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringType, name: "Type"))
    CreateContainerAssociationResponse.add_member(:container_monitoring_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringConfigurations, name: "ContainerMonitoringConfigurations"))
    CreateContainerAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAssociationStatus, name: "Status"))
    CreateContainerAssociationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateContainerAssociationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    CreateContainerAssociationResponse.type = Types::CreateContainerAssociationResponse
    CreateFirewallPolicyRequest.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallPolicyName", traits: {"smithy.api#required" => {}}))
    CreateFirewallPolicyRequest.add_member(:firewall_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicy, name: "FirewallPolicy", traits: {"smithy.api#required" => {}}))
    CreateFirewallPolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateFirewallPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFirewallPolicyRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    CreateFirewallPolicyRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    CreateFirewallPolicyRequest.type = Types::CreateFirewallPolicyRequest
    CreateFirewallPolicyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    CreateFirewallPolicyResponse.add_member(:firewall_policy_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicyResponse, name: "FirewallPolicyResponse", traits: {"smithy.api#required" => {}}))
    CreateFirewallPolicyResponse.type = Types::CreateFirewallPolicyResponse
    CreateFirewallRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName", traits: {"smithy.api#required" => {}}))
    CreateFirewallRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn", traits: {"smithy.api#required" => {}}))
    CreateFirewallRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    CreateFirewallRequest.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMappings, name: "SubnetMappings"))
    CreateFirewallRequest.add_member(:delete_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteProtection", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.add_member(:subnet_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SubnetChangeProtection", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.add_member(:firewall_policy_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FirewallPolicyChangeProtection", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateFirewallRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFirewallRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    CreateFirewallRequest.add_member(:enabled_analysis_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledAnalysisTypes, name: "EnabledAnalysisTypes"))
    CreateFirewallRequest.add_member(:transit_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayId, name: "TransitGatewayId"))
    CreateFirewallRequest.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMappings, name: "AvailabilityZoneMappings"))
    CreateFirewallRequest.add_member(:availability_zone_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AvailabilityZoneChangeProtection", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.add_member(:nat_gateway_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayMappingsList, name: "NatGatewayMappings"))
    CreateFirewallRequest.add_member(:proxy_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySettings, name: "ProxySettings"))
    CreateFirewallRequest.add_member(:no_source_preservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "NoSourcePreservation", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "VpcEndpoint"))
    CreateFirewallRequest.type = Types::CreateFirewallRequest
    CreateFirewallResponse.add_member(:firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: Firewall, name: "Firewall"))
    CreateFirewallResponse.add_member(:firewall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallStatus, name: "FirewallStatus"))
    CreateFirewallResponse.type = Types::CreateFirewallResponse
    CreateProxyConfigurationRequest.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName", traits: {"smithy.api#required" => {}}))
    CreateProxyConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateProxyConfigurationRequest.add_member(:rule_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameList, name: "RuleGroupNames"))
    CreateProxyConfigurationRequest.add_member(:rule_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "RuleGroupArns"))
    CreateProxyConfigurationRequest.add_member(:default_rule_phase_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigDefaultRulePhaseActionsRequest, name: "DefaultRulePhaseActions", traits: {"smithy.api#required" => {}}))
    CreateProxyConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateProxyConfigurationRequest.type = Types::CreateProxyConfigurationRequest
    CreateProxyConfigurationResponse.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "ProxyConfiguration"))
    CreateProxyConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    CreateProxyConfigurationResponse.type = Types::CreateProxyConfigurationResponse
    CreateProxyRequest.add_member(:proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyName", traits: {"smithy.api#required" => {}}))
    CreateProxyRequest.add_member(:nat_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayId, name: "NatGatewayId", traits: {"smithy.api#required" => {}}))
    CreateProxyRequest.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    CreateProxyRequest.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    CreateProxyRequest.add_member(:listener_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPropertiesRequest, name: "ListenerProperties"))
    CreateProxyRequest.add_member(:tls_intercept_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsInterceptPropertiesRequest, name: "TlsInterceptProperties", traits: {"smithy.api#required" => {}}))
    CreateProxyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateProxyRequest.type = Types::CreateProxyRequest
    CreateProxyResponse.add_member(:proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: Proxy, name: "Proxy"))
    CreateProxyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    CreateProxyResponse.type = Types::CreateProxyResponse
    CreateProxyRule.add_member(:proxy_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleName"))
    CreateProxyRule.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateProxyRule.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePhaseAction, name: "Action"))
    CreateProxyRule.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleConditionList, name: "Conditions"))
    CreateProxyRule.add_member(:insert_position, ::Smithy::Schema::Shapes::MemberShape.new(target: InsertPosition, name: "InsertPosition"))
    CreateProxyRule.type = Types::CreateProxyRule
    CreateProxyRuleGroupRequest.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName", traits: {"smithy.api#required" => {}}))
    CreateProxyRuleGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateProxyRuleGroupRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulesByRequestPhase, name: "Rules"))
    CreateProxyRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateProxyRuleGroupRequest.type = Types::CreateProxyRuleGroupRequest
    CreateProxyRuleGroupResponse.add_member(:proxy_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroup, name: "ProxyRuleGroup"))
    CreateProxyRuleGroupResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    CreateProxyRuleGroupResponse.type = Types::CreateProxyRuleGroupResponse
    CreateProxyRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateProxyRule, name: "member"))
    CreateProxyRulesByRequestPhase.add_member(:pre_dns, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateProxyRuleList, name: "PreDNS"))
    CreateProxyRulesByRequestPhase.add_member(:pre_request, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateProxyRuleList, name: "PreREQUEST"))
    CreateProxyRulesByRequestPhase.add_member(:post_response, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateProxyRuleList, name: "PostRESPONSE"))
    CreateProxyRulesByRequestPhase.type = Types::CreateProxyRulesByRequestPhase
    CreateProxyRulesRequest.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    CreateProxyRulesRequest.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    CreateProxyRulesRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateProxyRulesByRequestPhase, name: "Rules", traits: {"smithy.api#required" => {}}))
    CreateProxyRulesRequest.type = Types::CreateProxyRulesRequest
    CreateProxyRulesResponse.add_member(:proxy_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroup, name: "ProxyRuleGroup"))
    CreateProxyRulesResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    CreateProxyRulesResponse.type = Types::CreateProxyRulesResponse
    CreateRuleGroupRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroup, name: "RuleGroup"))
    CreateRuleGroupRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesString, name: "Rules"))
    CreateRuleGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateRuleGroupRequest.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCapacity, name: "Capacity", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRuleGroupRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    CreateRuleGroupRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    CreateRuleGroupRequest.add_member(:source_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceMetadata, name: "SourceMetadata"))
    CreateRuleGroupRequest.add_member(:analyze_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AnalyzeRuleGroup", traits: {"smithy.api#default" => false}))
    CreateRuleGroupRequest.add_member(:summary_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryConfiguration, name: "SummaryConfiguration"))
    CreateRuleGroupRequest.type = Types::CreateRuleGroupRequest
    CreateRuleGroupResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupResponse.add_member(:rule_group_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupResponse, name: "RuleGroupResponse", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupResponse.type = Types::CreateRuleGroupResponse
    CreateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TLSInspectionConfigurationName", traits: {"smithy.api#required" => {}}))
    CreateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfiguration, name: "TLSInspectionConfiguration", traits: {"smithy.api#required" => {}}))
    CreateTLSInspectionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateTLSInspectionConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTLSInspectionConfigurationRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    CreateTLSInspectionConfigurationRequest.type = Types::CreateTLSInspectionConfigurationRequest
    CreateTLSInspectionConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    CreateTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfigurationResponse, name: "TLSInspectionConfigurationResponse", traits: {"smithy.api#required" => {}}))
    CreateTLSInspectionConfigurationResponse.type = Types::CreateTLSInspectionConfigurationResponse
    CreateVpcEndpointAssociationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointAssociationRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointAssociationRequest.add_member(:subnet_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMapping, name: "SubnetMapping", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateVpcEndpointAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateVpcEndpointAssociationRequest.type = Types::CreateVpcEndpointAssociationRequest
    CreateVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointAssociation, name: "VpcEndpointAssociation"))
    CreateVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointAssociationStatus, name: "VpcEndpointAssociationStatus"))
    CreateVpcEndpointAssociationResponse.type = Types::CreateVpcEndpointAssociationResponse
    CustomAction.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "ActionName", traits: {"smithy.api#required" => {}}))
    CustomAction.add_member(:action_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDefinition, name: "ActionDefinition", traits: {"smithy.api#required" => {}}))
    CustomAction.type = Types::CustomAction
    CustomActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAction, name: "member"))
    DeleteContainerAssociationRequest.add_member(:container_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ContainerAssociationName"))
    DeleteContainerAssociationRequest.add_member(:container_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ContainerAssociationArn"))
    DeleteContainerAssociationRequest.type = Types::DeleteContainerAssociationRequest
    DeleteContainerAssociationResponse.add_member(:container_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ContainerAssociationName"))
    DeleteContainerAssociationResponse.add_member(:container_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ContainerAssociationArn"))
    DeleteContainerAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAssociationStatus, name: "Status"))
    DeleteContainerAssociationResponse.type = Types::DeleteContainerAssociationResponse
    DeleteFirewallPolicyRequest.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallPolicyName"))
    DeleteFirewallPolicyRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn"))
    DeleteFirewallPolicyRequest.type = Types::DeleteFirewallPolicyRequest
    DeleteFirewallPolicyResponse.add_member(:firewall_policy_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicyResponse, name: "FirewallPolicyResponse", traits: {"smithy.api#required" => {}}))
    DeleteFirewallPolicyResponse.type = Types::DeleteFirewallPolicyResponse
    DeleteFirewallRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    DeleteFirewallRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DeleteFirewallRequest.type = Types::DeleteFirewallRequest
    DeleteFirewallResponse.add_member(:firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: Firewall, name: "Firewall"))
    DeleteFirewallResponse.add_member(:firewall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallStatus, name: "FirewallStatus"))
    DeleteFirewallResponse.type = Types::DeleteFirewallResponse
    DeleteNetworkFirewallTransitGatewayAttachmentRequest.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    DeleteNetworkFirewallTransitGatewayAttachmentRequest.type = Types::DeleteNetworkFirewallTransitGatewayAttachmentRequest
    DeleteNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    DeleteNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentStatus, name: "TransitGatewayAttachmentStatus", traits: {"smithy.api#required" => {}}))
    DeleteNetworkFirewallTransitGatewayAttachmentResponse.type = Types::DeleteNetworkFirewallTransitGatewayAttachmentResponse
    DeleteProxyConfigurationRequest.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    DeleteProxyConfigurationRequest.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    DeleteProxyConfigurationRequest.type = Types::DeleteProxyConfigurationRequest
    DeleteProxyConfigurationResponse.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    DeleteProxyConfigurationResponse.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    DeleteProxyConfigurationResponse.type = Types::DeleteProxyConfigurationResponse
    DeleteProxyRequest.add_member(:nat_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayId, name: "NatGatewayId", traits: {"smithy.api#required" => {}}))
    DeleteProxyRequest.add_member(:proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyName"))
    DeleteProxyRequest.add_member(:proxy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyArn"))
    DeleteProxyRequest.type = Types::DeleteProxyRequest
    DeleteProxyResponse.add_member(:nat_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayId, name: "NatGatewayId"))
    DeleteProxyResponse.add_member(:proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyName"))
    DeleteProxyResponse.add_member(:proxy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyArn"))
    DeleteProxyResponse.type = Types::DeleteProxyResponse
    DeleteProxyRuleGroupRequest.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    DeleteProxyRuleGroupRequest.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    DeleteProxyRuleGroupRequest.type = Types::DeleteProxyRuleGroupRequest
    DeleteProxyRuleGroupResponse.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    DeleteProxyRuleGroupResponse.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    DeleteProxyRuleGroupResponse.type = Types::DeleteProxyRuleGroupResponse
    DeleteProxyRulesRequest.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    DeleteProxyRulesRequest.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    DeleteProxyRulesRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameList, name: "Rules", traits: {"smithy.api#required" => {}}))
    DeleteProxyRulesRequest.type = Types::DeleteProxyRulesRequest
    DeleteProxyRulesResponse.add_member(:proxy_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroup, name: "ProxyRuleGroup"))
    DeleteProxyRulesResponse.type = Types::DeleteProxyRulesResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteRuleGroupRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName"))
    DeleteRuleGroupRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleGroupArn"))
    DeleteRuleGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type"))
    DeleteRuleGroupRequest.type = Types::DeleteRuleGroupRequest
    DeleteRuleGroupResponse.add_member(:rule_group_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupResponse, name: "RuleGroupResponse", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupResponse.type = Types::DeleteRuleGroupResponse
    DeleteTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "TLSInspectionConfigurationArn"))
    DeleteTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TLSInspectionConfigurationName"))
    DeleteTLSInspectionConfigurationRequest.type = Types::DeleteTLSInspectionConfigurationRequest
    DeleteTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfigurationResponse, name: "TLSInspectionConfigurationResponse", traits: {"smithy.api#required" => {}}))
    DeleteTLSInspectionConfigurationResponse.type = Types::DeleteTLSInspectionConfigurationResponse
    DeleteVpcEndpointAssociationRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn", traits: {"smithy.api#required" => {}}))
    DeleteVpcEndpointAssociationRequest.type = Types::DeleteVpcEndpointAssociationRequest
    DeleteVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointAssociation, name: "VpcEndpointAssociation"))
    DeleteVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointAssociationStatus, name: "VpcEndpointAssociationStatus"))
    DeleteVpcEndpointAssociationResponse.type = Types::DeleteVpcEndpointAssociationResponse
    DescribeContainerAssociationRequest.add_member(:container_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ContainerAssociationName"))
    DescribeContainerAssociationRequest.add_member(:container_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ContainerAssociationArn"))
    DescribeContainerAssociationRequest.type = Types::DescribeContainerAssociationRequest
    DescribeContainerAssociationResponse.add_member(:container_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ContainerAssociationName"))
    DescribeContainerAssociationResponse.add_member(:container_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ContainerAssociationArn"))
    DescribeContainerAssociationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeContainerAssociationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringType, name: "Type"))
    DescribeContainerAssociationResponse.add_member(:container_monitoring_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringConfigurations, name: "ContainerMonitoringConfigurations"))
    DescribeContainerAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAssociationStatus, name: "Status"))
    DescribeContainerAssociationResponse.add_member(:resolved_cidr_count, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDRCount, name: "ResolvedCidrCount"))
    DescribeContainerAssociationResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAssociationLastUpdatedTime, name: "LastUpdatedTime"))
    DescribeContainerAssociationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    DescribeContainerAssociationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DescribeContainerAssociationResponse.type = Types::DescribeContainerAssociationResponse
    DescribeFirewallMetadataRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DescribeFirewallMetadataRequest.type = Types::DescribeFirewallMetadataRequest
    DescribeFirewallMetadataResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DescribeFirewallMetadataResponse.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn"))
    DescribeFirewallMetadataResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeFirewallMetadataResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallStatusValue, name: "Status"))
    DescribeFirewallMetadataResponse.add_member(:supported_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedAvailabilityZones, name: "SupportedAvailabilityZones"))
    DescribeFirewallMetadataResponse.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId"))
    DescribeFirewallMetadataResponse.type = Types::DescribeFirewallMetadataResponse
    DescribeFirewallPolicyRequest.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallPolicyName"))
    DescribeFirewallPolicyRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn"))
    DescribeFirewallPolicyRequest.type = Types::DescribeFirewallPolicyRequest
    DescribeFirewallPolicyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    DescribeFirewallPolicyResponse.add_member(:firewall_policy_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicyResponse, name: "FirewallPolicyResponse", traits: {"smithy.api#required" => {}}))
    DescribeFirewallPolicyResponse.add_member(:firewall_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicy, name: "FirewallPolicy"))
    DescribeFirewallPolicyResponse.type = Types::DescribeFirewallPolicyResponse
    DescribeFirewallRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    DescribeFirewallRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DescribeFirewallRequest.type = Types::DescribeFirewallRequest
    DescribeFirewallResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DescribeFirewallResponse.add_member(:firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: Firewall, name: "Firewall"))
    DescribeFirewallResponse.add_member(:firewall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallStatus, name: "FirewallStatus"))
    DescribeFirewallResponse.type = Types::DescribeFirewallResponse
    DescribeFlowOperationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    DescribeFlowOperationRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    DescribeFlowOperationRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn"))
    DescribeFlowOperationRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    DescribeFlowOperationRequest.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationId, name: "FlowOperationId", traits: {"smithy.api#required" => {}}))
    DescribeFlowOperationRequest.type = Types::DescribeFlowOperationRequest
    DescribeFlowOperationResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DescribeFlowOperationResponse.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    DescribeFlowOperationResponse.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn"))
    DescribeFlowOperationResponse.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    DescribeFlowOperationResponse.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationId, name: "FlowOperationId"))
    DescribeFlowOperationResponse.add_member(:flow_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationType, name: "FlowOperationType"))
    DescribeFlowOperationResponse.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationStatus, name: "FlowOperationStatus"))
    DescribeFlowOperationResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "StatusMessage"))
    DescribeFlowOperationResponse.add_member(:flow_request_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowRequestTimestamp, name: "FlowRequestTimestamp"))
    DescribeFlowOperationResponse.add_member(:flow_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperation, name: "FlowOperation"))
    DescribeFlowOperationResponse.type = Types::DescribeFlowOperationResponse
    DescribeLoggingConfigurationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DescribeLoggingConfigurationRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    DescribeLoggingConfigurationRequest.type = Types::DescribeLoggingConfigurationRequest
    DescribeLoggingConfigurationResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DescribeLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    DescribeLoggingConfigurationResponse.add_member(:enable_monitoring_dashboard, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableMonitoringDashboard, name: "EnableMonitoringDashboard"))
    DescribeLoggingConfigurationResponse.type = Types::DescribeLoggingConfigurationResponse
    DescribeProxyConfigurationRequest.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    DescribeProxyConfigurationRequest.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    DescribeProxyConfigurationRequest.type = Types::DescribeProxyConfigurationRequest
    DescribeProxyConfigurationResponse.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "ProxyConfiguration"))
    DescribeProxyConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DescribeProxyConfigurationResponse.type = Types::DescribeProxyConfigurationResponse
    DescribeProxyRequest.add_member(:proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyName"))
    DescribeProxyRequest.add_member(:proxy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyArn"))
    DescribeProxyRequest.type = Types::DescribeProxyRequest
    DescribeProxyResource.add_member(:proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyName"))
    DescribeProxyResource.add_member(:proxy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyArn"))
    DescribeProxyResource.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    DescribeProxyResource.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    DescribeProxyResource.add_member(:nat_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayId, name: "NatGatewayId"))
    DescribeProxyResource.add_member(:proxy_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyState, name: "ProxyState"))
    DescribeProxyResource.add_member(:proxy_modify_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyModifyState, name: "ProxyModifyState"))
    DescribeProxyResource.add_member(:listener_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProperties, name: "ListenerProperties"))
    DescribeProxyResource.add_member(:tls_intercept_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsInterceptProperties, name: "TlsInterceptProperties"))
    DescribeProxyResource.add_member(:vpc_endpoint_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointServiceName, name: "VpcEndpointServiceName"))
    DescribeProxyResource.add_member(:private_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateDNSName, name: "PrivateDNSName"))
    DescribeProxyResource.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTime, name: "CreateTime"))
    DescribeProxyResource.add_member(:delete_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteTime, name: "DeleteTime"))
    DescribeProxyResource.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, name: "UpdateTime"))
    DescribeProxyResource.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "FailureCode"))
    DescribeProxyResource.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "FailureMessage"))
    DescribeProxyResource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    DescribeProxyResource.type = Types::DescribeProxyResource
    DescribeProxyResponse.add_member(:proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeProxyResource, name: "Proxy"))
    DescribeProxyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DescribeProxyResponse.type = Types::DescribeProxyResponse
    DescribeProxyRuleGroupRequest.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    DescribeProxyRuleGroupRequest.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    DescribeProxyRuleGroupRequest.type = Types::DescribeProxyRuleGroupRequest
    DescribeProxyRuleGroupResponse.add_member(:proxy_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroup, name: "ProxyRuleGroup"))
    DescribeProxyRuleGroupResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DescribeProxyRuleGroupResponse.type = Types::DescribeProxyRuleGroupResponse
    DescribeProxyRuleRequest.add_member(:proxy_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleName", traits: {"smithy.api#required" => {}}))
    DescribeProxyRuleRequest.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    DescribeProxyRuleRequest.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    DescribeProxyRuleRequest.type = Types::DescribeProxyRuleRequest
    DescribeProxyRuleResponse.add_member(:proxy_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRule, name: "ProxyRule"))
    DescribeProxyRuleResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DescribeProxyRuleResponse.type = Types::DescribeProxyRuleResponse
    DescribeResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DescribeResourcePolicyRequest.type = Types::DescribeResourcePolicyRequest
    DescribeResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "Policy"))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeRuleGroupMetadataRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName"))
    DescribeRuleGroupMetadataRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleGroupArn"))
    DescribeRuleGroupMetadataRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type"))
    DescribeRuleGroupMetadataRequest.type = Types::DescribeRuleGroupMetadataRequest
    DescribeRuleGroupMetadataResponse.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleGroupArn", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupMetadataResponse.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupMetadataResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeRuleGroupMetadataResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type"))
    DescribeRuleGroupMetadataResponse.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCapacity, name: "Capacity"))
    DescribeRuleGroupMetadataResponse.add_member(:stateful_rule_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleOptions, name: "StatefulRuleOptions"))
    DescribeRuleGroupMetadataResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateTime, name: "LastModifiedTime"))
    DescribeRuleGroupMetadataResponse.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName"))
    DescribeRuleGroupMetadataResponse.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductId, name: "ProductId"))
    DescribeRuleGroupMetadataResponse.add_member(:listing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListingName, name: "ListingName"))
    DescribeRuleGroupMetadataResponse.type = Types::DescribeRuleGroupMetadataResponse
    DescribeRuleGroupRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName"))
    DescribeRuleGroupRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleGroupArn"))
    DescribeRuleGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type"))
    DescribeRuleGroupRequest.add_member(:analyze_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AnalyzeRuleGroup", traits: {"smithy.api#default" => false}))
    DescribeRuleGroupRequest.type = Types::DescribeRuleGroupRequest
    DescribeRuleGroupResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupResponse.add_member(:rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroup, name: "RuleGroup"))
    DescribeRuleGroupResponse.add_member(:rule_group_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupResponse, name: "RuleGroupResponse", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupResponse.type = Types::DescribeRuleGroupResponse
    DescribeRuleGroupSummaryRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName"))
    DescribeRuleGroupSummaryRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleGroupArn"))
    DescribeRuleGroupSummaryRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type"))
    DescribeRuleGroupSummaryRequest.type = Types::DescribeRuleGroupSummaryRequest
    DescribeRuleGroupSummaryResponse.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupSummaryResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeRuleGroupSummaryResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: Summary, name: "Summary"))
    DescribeRuleGroupSummaryResponse.type = Types::DescribeRuleGroupSummaryResponse
    DescribeTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "TLSInspectionConfigurationArn"))
    DescribeTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TLSInspectionConfigurationName"))
    DescribeTLSInspectionConfigurationRequest.type = Types::DescribeTLSInspectionConfigurationRequest
    DescribeTLSInspectionConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    DescribeTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfiguration, name: "TLSInspectionConfiguration"))
    DescribeTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfigurationResponse, name: "TLSInspectionConfigurationResponse", traits: {"smithy.api#required" => {}}))
    DescribeTLSInspectionConfigurationResponse.type = Types::DescribeTLSInspectionConfigurationResponse
    DescribeVpcEndpointAssociationRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn", traits: {"smithy.api#required" => {}}))
    DescribeVpcEndpointAssociationRequest.type = Types::DescribeVpcEndpointAssociationRequest
    DescribeVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointAssociation, name: "VpcEndpointAssociation"))
    DescribeVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointAssociationStatus, name: "VpcEndpointAssociationStatus"))
    DescribeVpcEndpointAssociationResponse.type = Types::DescribeVpcEndpointAssociationResponse
    DetachRuleGroupsFromProxyConfigurationRequest.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    DetachRuleGroupsFromProxyConfigurationRequest.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    DetachRuleGroupsFromProxyConfigurationRequest.add_member(:rule_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameList, name: "RuleGroupNames"))
    DetachRuleGroupsFromProxyConfigurationRequest.add_member(:rule_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "RuleGroupArns"))
    DetachRuleGroupsFromProxyConfigurationRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    DetachRuleGroupsFromProxyConfigurationRequest.type = Types::DetachRuleGroupsFromProxyConfigurationRequest
    DetachRuleGroupsFromProxyConfigurationResponse.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "ProxyConfiguration"))
    DetachRuleGroupsFromProxyConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DetachRuleGroupsFromProxyConfigurationResponse.type = Types::DetachRuleGroupsFromProxyConfigurationResponse
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    Dimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member"))
    DisassociateAvailabilityZonesRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DisassociateAvailabilityZonesRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DisassociateAvailabilityZonesRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    DisassociateAvailabilityZonesRequest.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMappings, name: "AvailabilityZoneMappings", traits: {"smithy.api#required" => {}}))
    DisassociateAvailabilityZonesRequest.type = Types::DisassociateAvailabilityZonesRequest
    DisassociateAvailabilityZonesResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DisassociateAvailabilityZonesResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    DisassociateAvailabilityZonesResponse.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMappings, name: "AvailabilityZoneMappings"))
    DisassociateAvailabilityZonesResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DisassociateAvailabilityZonesResponse.type = Types::DisassociateAvailabilityZonesResponse
    DisassociateSubnetsRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DisassociateSubnetsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DisassociateSubnetsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    DisassociateSubnetsRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AzSubnets, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    DisassociateSubnetsRequest.type = Types::DisassociateSubnetsRequest
    DisassociateSubnetsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    DisassociateSubnetsResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    DisassociateSubnetsResponse.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMappings, name: "SubnetMappings"))
    DisassociateSubnetsResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    DisassociateSubnetsResponse.type = Types::DisassociateSubnetsResponse
    EnabledAnalysisType.add_member(:tls_sni, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_SNI", traits: {"smithy.api#enumValue" => "TLS_SNI"}))
    EnabledAnalysisType.add_member(:http_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_HOST", traits: {"smithy.api#enumValue" => "HTTP_HOST"}))
    EnabledAnalysisTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledAnalysisType, name: "member"))
    EncryptionConfiguration.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId"))
    EncryptionConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "Type", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionType.add_member(:customer_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_KMS", traits: {"smithy.api#enumValue" => "CUSTOMER_KMS"}))
    EncryptionType.add_member(:aws_owned_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_KMS_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    Firewall.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    Firewall.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    Firewall.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn", traits: {"smithy.api#required" => {}}))
    Firewall.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    Firewall.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMappings, name: "SubnetMappings", traits: {"smithy.api#required" => {}}))
    Firewall.add_member(:delete_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteProtection", traits: {"smithy.api#default" => false}))
    Firewall.add_member(:subnet_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SubnetChangeProtection", traits: {"smithy.api#default" => false}))
    Firewall.add_member(:firewall_policy_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FirewallPolicyChangeProtection", traits: {"smithy.api#default" => false}))
    Firewall.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Firewall.add_member(:firewall_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallId", traits: {"smithy.api#required" => {}}))
    Firewall.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Firewall.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    Firewall.add_member(:number_of_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociations, name: "NumberOfAssociations"))
    Firewall.add_member(:enabled_analysis_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledAnalysisTypes, name: "EnabledAnalysisTypes"))
    Firewall.add_member(:transit_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayId, name: "TransitGatewayId"))
    Firewall.add_member(:transit_gateway_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "TransitGatewayOwnerAccountId"))
    Firewall.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMappings, name: "AvailabilityZoneMappings"))
    Firewall.add_member(:availability_zone_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AvailabilityZoneChangeProtection", traits: {"smithy.api#default" => false}))
    Firewall.add_member(:nat_gateway_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayMappingsList, name: "NatGatewayMappings"))
    Firewall.add_member(:proxy_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySettings, name: "ProxySettings"))
    Firewall.add_member(:no_source_preservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "NoSourcePreservation", traits: {"smithy.api#default" => false}))
    Firewall.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "VpcEndpoint"))
    Firewall.type = Types::Firewall
    FirewallMetadata.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    FirewallMetadata.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    FirewallMetadata.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId"))
    FirewallMetadata.type = Types::FirewallMetadata
    FirewallPolicies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicyMetadata, name: "member"))
    FirewallPolicy.add_member(:stateless_rule_group_references, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessRuleGroupReferences, name: "StatelessRuleGroupReferences"))
    FirewallPolicy.add_member(:stateless_default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessActions, name: "StatelessDefaultActions", traits: {"smithy.api#required" => {}}))
    FirewallPolicy.add_member(:stateless_fragment_default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessActions, name: "StatelessFragmentDefaultActions", traits: {"smithy.api#required" => {}}))
    FirewallPolicy.add_member(:stateless_custom_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomActions, name: "StatelessCustomActions"))
    FirewallPolicy.add_member(:stateful_rule_group_references, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleGroupReferences, name: "StatefulRuleGroupReferences"))
    FirewallPolicy.add_member(:stateful_default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulActions, name: "StatefulDefaultActions"))
    FirewallPolicy.add_member(:stateful_engine_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulEngineOptions, name: "StatefulEngineOptions"))
    FirewallPolicy.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "TLSInspectionConfigurationArn"))
    FirewallPolicy.add_member(:policy_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVariables, name: "PolicyVariables"))
    FirewallPolicy.add_member(:enable_tls_session_holding, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableTLSSessionHolding, name: "EnableTLSSessionHolding"))
    FirewallPolicy.type = Types::FirewallPolicy
    FirewallPolicyMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    FirewallPolicyMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    FirewallPolicyMetadata.type = Types::FirewallPolicyMetadata
    FirewallPolicyResponse.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallPolicyName", traits: {"smithy.api#required" => {}}))
    FirewallPolicyResponse.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn", traits: {"smithy.api#required" => {}}))
    FirewallPolicyResponse.add_member(:firewall_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallPolicyId", traits: {"smithy.api#required" => {}}))
    FirewallPolicyResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    FirewallPolicyResponse.add_member(:firewall_policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "FirewallPolicyStatus"))
    FirewallPolicyResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    FirewallPolicyResponse.add_member(:consumed_stateless_rule_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCapacity, name: "ConsumedStatelessRuleCapacity"))
    FirewallPolicyResponse.add_member(:consumed_stateful_rule_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCapacity, name: "ConsumedStatefulRuleCapacity"))
    FirewallPolicyResponse.add_member(:consumed_stateful_domain_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCapacity, name: "ConsumedStatefulDomainCapacity"))
    FirewallPolicyResponse.add_member(:number_of_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociations, name: "NumberOfAssociations"))
    FirewallPolicyResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    FirewallPolicyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateTime, name: "LastModifiedTime"))
    FirewallPolicyResponse.type = Types::FirewallPolicyResponse
    FirewallStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallStatusValue, name: "Status", traits: {"smithy.api#required" => {}}))
    FirewallStatus.add_member(:configuration_sync_state_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSyncState, name: "ConfigurationSyncStateSummary", traits: {"smithy.api#required" => {}}))
    FirewallStatus.add_member(:sync_states, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncStates, name: "SyncStates"))
    FirewallStatus.add_member(:capacity_usage_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUsageSummary, name: "CapacityUsageSummary"))
    FirewallStatus.add_member(:transit_gateway_attachment_sync_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentSyncState, name: "TransitGatewayAttachmentSyncState"))
    FirewallStatus.type = Types::FirewallStatus
    FirewallStatusValue.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    FirewallStatusValue.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallStatusValue.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    FirewallStatusValue.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Firewalls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallMetadata, name: "member"))
    Flags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TCPFlag, name: "member"))
    Flow.add_member(:source_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "SourceAddress"))
    Flow.add_member(:destination_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "DestinationAddress"))
    Flow.add_member(:source_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "SourcePort"))
    Flow.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "DestinationPort"))
    Flow.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolString, name: "Protocol"))
    Flow.add_member(:age, ::Smithy::Schema::Shapes::MemberShape.new(target: Age, name: "Age"))
    Flow.add_member(:packet_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PacketCount, name: "PacketCount"))
    Flow.add_member(:byte_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ByteCount, name: "ByteCount", traits: {"smithy.api#default" => 0}))
    Flow.type = Types::Flow
    FlowFilter.add_member(:source_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "SourceAddress"))
    FlowFilter.add_member(:destination_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "DestinationAddress"))
    FlowFilter.add_member(:source_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "SourcePort"))
    FlowFilter.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "DestinationPort"))
    FlowFilter.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolStrings, name: "Protocols"))
    FlowFilter.type = Types::FlowFilter
    FlowFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowFilter, name: "member"))
    FlowOperation.add_member(:minimum_flow_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Age, name: "MinimumFlowAgeInSeconds"))
    FlowOperation.add_member(:flow_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowFilters, name: "FlowFilters"))
    FlowOperation.type = Types::FlowOperation
    FlowOperationMetadata.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationId, name: "FlowOperationId"))
    FlowOperationMetadata.add_member(:flow_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationType, name: "FlowOperationType"))
    FlowOperationMetadata.add_member(:flow_request_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowRequestTimestamp, name: "FlowRequestTimestamp"))
    FlowOperationMetadata.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationStatus, name: "FlowOperationStatus"))
    FlowOperationMetadata.type = Types::FlowOperationMetadata
    FlowOperationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    FlowOperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    FlowOperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FlowOperationStatus.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    FlowOperationType.add_member(:flow_flush, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_FLUSH", traits: {"smithy.api#enumValue" => "FLOW_FLUSH"}))
    FlowOperationType.add_member(:flow_capture, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_CAPTURE", traits: {"smithy.api#enumValue" => "FLOW_CAPTURE"}))
    FlowOperations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationMetadata, name: "member"))
    FlowTimeouts.add_member(:tcp_idle_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TcpIdleTimeoutRangeBound, name: "TcpIdleTimeoutSeconds"))
    FlowTimeouts.type = Types::FlowTimeouts
    Flows.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Flow, name: "member"))
    GeneratedRulesType.add_member(:allowlist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOWLIST", traits: {"smithy.api#enumValue" => "ALLOWLIST"}))
    GeneratedRulesType.add_member(:denylist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENYLIST", traits: {"smithy.api#enumValue" => "DENYLIST"}))
    GeneratedRulesType.add_member(:rejectlist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTLIST", traits: {"smithy.api#enumValue" => "REJECTLIST"}))
    GeneratedRulesType.add_member(:alertlist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALERTLIST", traits: {"smithy.api#enumValue" => "ALERTLIST"}))
    GetAnalysisReportResultsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    GetAnalysisReportResultsRequest.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportId, name: "AnalysisReportId", traits: {"smithy.api#required" => {}}))
    GetAnalysisReportResultsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    GetAnalysisReportResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportNextToken, name: "NextToken"))
    GetAnalysisReportResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    GetAnalysisReportResultsRequest.type = Types::GetAnalysisReportResultsRequest
    GetAnalysisReportResultsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    GetAnalysisReportResultsResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "StartTime"))
    GetAnalysisReportResultsResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, name: "EndTime"))
    GetAnalysisReportResultsResponse.add_member(:report_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportTime, name: "ReportTime"))
    GetAnalysisReportResultsResponse.add_member(:analysis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledAnalysisType, name: "AnalysisType"))
    GetAnalysisReportResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportNextToken, name: "NextToken"))
    GetAnalysisReportResultsResponse.add_member(:analysis_report_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportResults, name: "AnalysisReportResults"))
    GetAnalysisReportResultsResponse.type = Types::GetAnalysisReportResultsResponse
    Header.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleProtocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    Header.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "Source", traits: {"smithy.api#required" => {}}))
    Header.add_member(:source_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "SourcePort", traits: {"smithy.api#required" => {}}))
    Header.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleDirection, name: "Direction", traits: {"smithy.api#required" => {}}))
    Header.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    Header.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "DestinationPort", traits: {"smithy.api#required" => {}}))
    Header.type = Types::Header
    Hits.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "Count", traits: {"smithy.api#default" => 0}))
    Hits.type = Types::Hits
    IPAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUALSTACK", traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    IPAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IPAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    IPSet.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableDefinitionList, name: "Definition", traits: {"smithy.api#required" => {}}))
    IPSet.type = Types::IPSet
    IPSetMetadata.add_member(:resolved_cidr_count, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDRCount, name: "ResolvedCIDRCount"))
    IPSetMetadata.type = Types::IPSetMetadata
    IPSetMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetArn, name: "key"))
    IPSetMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetMetadata, name: "value"))
    IPSetReference.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ReferenceArn"))
    IPSetReference.type = Types::IPSetReference
    IPSetReferenceMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetReferenceName, name: "key"))
    IPSetReferenceMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetReference, name: "value"))
    IPSets.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVariableName, name: "key"))
    IPSets.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSet, name: "value"))
    IdentifiedType.add_member(:stateless_rule_forwarding_asymmetrically, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATELESS_RULE_FORWARDING_ASYMMETRICALLY", traits: {"smithy.api#enumValue" => "STATELESS_RULE_FORWARDING_ASYMMETRICALLY"}))
    IdentifiedType.add_member(:stateless_rule_contains_tcp_flags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATELESS_RULE_CONTAINS_TCP_FLAGS", traits: {"smithy.api#enumValue" => "STATELESS_RULE_CONTAINS_TCP_FLAGS"}))
    InsufficientCapacityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerError.type = Types::InternalServerError
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidResourcePolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidResourcePolicyException.type = Types::InvalidResourcePolicyException
    InvalidTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidTokenException.type = Types::InvalidTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAnalysisReportsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    ListAnalysisReportsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    ListAnalysisReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAnalysisReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListAnalysisReportsRequest.type = Types::ListAnalysisReportsRequest
    ListAnalysisReportsResponse.add_member(:analysis_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReports, name: "AnalysisReports"))
    ListAnalysisReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAnalysisReportsResponse.type = Types::ListAnalysisReportsResponse
    ListContainerAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListContainerAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListContainerAssociationsRequest.type = Types::ListContainerAssociationsRequest
    ListContainerAssociationsResponse.add_member(:container_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAssociations, name: "ContainerAssociations"))
    ListContainerAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListContainerAssociationsResponse.type = Types::ListContainerAssociationsResponse
    ListFirewallPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListFirewallPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListFirewallPoliciesRequest.type = Types::ListFirewallPoliciesRequest
    ListFirewallPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListFirewallPoliciesResponse.add_member(:firewall_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicies, name: "FirewallPolicies"))
    ListFirewallPoliciesResponse.type = Types::ListFirewallPoliciesResponse
    ListFirewallsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListFirewallsRequest.add_member(:vpc_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIds, name: "VpcIds"))
    ListFirewallsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListFirewallsRequest.type = Types::ListFirewallsRequest
    ListFirewallsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListFirewallsResponse.add_member(:firewalls, ::Smithy::Schema::Shapes::MemberShape.new(target: Firewalls, name: "Firewalls"))
    ListFirewallsResponse.type = Types::ListFirewallsResponse
    ListFlowOperationResultsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    ListFlowOperationResultsRequest.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationId, name: "FlowOperationId", traits: {"smithy.api#required" => {}}))
    ListFlowOperationResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListFlowOperationResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListFlowOperationResultsRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    ListFlowOperationResultsRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    ListFlowOperationResultsRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn"))
    ListFlowOperationResultsRequest.type = Types::ListFlowOperationResultsRequest
    ListFlowOperationResultsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    ListFlowOperationResultsResponse.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    ListFlowOperationResultsResponse.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn"))
    ListFlowOperationResultsResponse.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    ListFlowOperationResultsResponse.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationId, name: "FlowOperationId"))
    ListFlowOperationResultsResponse.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationStatus, name: "FlowOperationStatus"))
    ListFlowOperationResultsResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "StatusMessage"))
    ListFlowOperationResultsResponse.add_member(:flow_request_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowRequestTimestamp, name: "FlowRequestTimestamp"))
    ListFlowOperationResultsResponse.add_member(:flows, ::Smithy::Schema::Shapes::MemberShape.new(target: Flows, name: "Flows"))
    ListFlowOperationResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListFlowOperationResultsResponse.type = Types::ListFlowOperationResultsResponse
    ListFlowOperationsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    ListFlowOperationsRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    ListFlowOperationsRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn"))
    ListFlowOperationsRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    ListFlowOperationsRequest.add_member(:flow_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationType, name: "FlowOperationType"))
    ListFlowOperationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListFlowOperationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListFlowOperationsRequest.type = Types::ListFlowOperationsRequest
    ListFlowOperationsResponse.add_member(:flow_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperations, name: "FlowOperations"))
    ListFlowOperationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListFlowOperationsResponse.type = Types::ListFlowOperationsResponse
    ListProxiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProxiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListProxiesRequest.type = Types::ListProxiesRequest
    ListProxiesResponse.add_member(:proxies, ::Smithy::Schema::Shapes::MemberShape.new(target: Proxies, name: "Proxies"))
    ListProxiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProxiesResponse.type = Types::ListProxiesResponse
    ListProxyConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProxyConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListProxyConfigurationsRequest.type = Types::ListProxyConfigurationsRequest
    ListProxyConfigurationsResponse.add_member(:proxy_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigurations, name: "ProxyConfigurations"))
    ListProxyConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProxyConfigurationsResponse.type = Types::ListProxyConfigurationsResponse
    ListProxyRuleGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProxyRuleGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListProxyRuleGroupsRequest.type = Types::ListProxyRuleGroupsRequest
    ListProxyRuleGroupsResponse.add_member(:proxy_rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroups, name: "ProxyRuleGroups"))
    ListProxyRuleGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProxyRuleGroupsResponse.type = Types::ListProxyRuleGroupsResponse
    ListRuleGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListRuleGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListRuleGroupsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceManagedStatus, name: "Scope"))
    ListRuleGroupsRequest.add_member(:managed_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceManagedType, name: "ManagedType"))
    ListRuleGroupsRequest.add_member(:subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, name: "SubscriptionStatus"))
    ListRuleGroupsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type"))
    ListRuleGroupsRequest.type = Types::ListRuleGroupsRequest
    ListRuleGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListRuleGroupsResponse.add_member(:rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroups, name: "RuleGroups"))
    ListRuleGroupsResponse.type = Types::ListRuleGroupsResponse
    ListTLSInspectionConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListTLSInspectionConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListTLSInspectionConfigurationsRequest.type = Types::ListTLSInspectionConfigurationsRequest
    ListTLSInspectionConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListTLSInspectionConfigurationsResponse.add_member(:tls_inspection_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfigurations, name: "TLSInspectionConfigurations"))
    ListTLSInspectionConfigurationsResponse.type = Types::ListTLSInspectionConfigurationsResponse
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsPaginationMaxResults, name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVpcEndpointAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListVpcEndpointAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListVpcEndpointAssociationsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    ListVpcEndpointAssociationsRequest.type = Types::ListVpcEndpointAssociationsRequest
    ListVpcEndpointAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListVpcEndpointAssociationsResponse.add_member(:vpc_endpoint_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointAssociations, name: "VpcEndpointAssociations"))
    ListVpcEndpointAssociationsResponse.type = Types::ListVpcEndpointAssociationsResponse
    ListenerProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProperty, name: "member"))
    ListenerPropertiesRequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPropertyRequest, name: "member"))
    ListenerProperty.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayPort, name: "Port"))
    ListenerProperty.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPropertyType, name: "Type"))
    ListenerProperty.type = Types::ListenerProperty
    ListenerPropertyRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayPort, name: "Port", traits: {"smithy.api#required" => {}}))
    ListenerPropertyRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPropertyType, name: "Type", traits: {"smithy.api#required" => {}}))
    ListenerPropertyRequest.type = Types::ListenerPropertyRequest
    ListenerPropertyType.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    ListenerPropertyType.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    LogDestinationConfig.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType", traits: {"smithy.api#required" => {}}))
    LogDestinationConfig.add_member(:log_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationType, name: "LogDestinationType", traits: {"smithy.api#required" => {}}))
    LogDestinationConfig.add_member(:log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationMap, name: "LogDestination", traits: {"smithy.api#required" => {}}))
    LogDestinationConfig.type = Types::LogDestinationConfig
    LogDestinationConfigs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationConfig, name: "member"))
    LogDestinationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashMapKey, name: "key"))
    LogDestinationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HashMapValue, name: "value"))
    LogDestinationPermissionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LogDestinationPermissionException.type = Types::LogDestinationPermissionException
    LogDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    LogDestinationType.add_member(:cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDWATCH_LOGS", traits: {"smithy.api#enumValue" => "CloudWatchLogs"}))
    LogDestinationType.add_member(:kinesis_data_firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_DATA_FIREHOSE", traits: {"smithy.api#enumValue" => "KinesisDataFirehose"}))
    LogType.add_member(:alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    LogType.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW", traits: {"smithy.api#enumValue" => "FLOW"}))
    LogType.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    LoggingConfiguration.add_member(:log_destination_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationConfigs, name: "LogDestinationConfigs", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.type = Types::LoggingConfiguration
    MatchAttributes.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Addresses, name: "Sources"))
    MatchAttributes.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Addresses, name: "Destinations"))
    MatchAttributes.add_member(:source_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRanges, name: "SourcePorts"))
    MatchAttributes.add_member(:destination_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRanges, name: "DestinationPorts"))
    MatchAttributes.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolNumbers, name: "Protocols"))
    MatchAttributes.add_member(:tcp_flags, ::Smithy::Schema::Shapes::MemberShape.new(target: TCPFlags, name: "TCPFlags"))
    MatchAttributes.type = Types::MatchAttributes
    NatGatewayAttachment.add_member(:nat_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayId, name: "NatGatewayId", traits: {"smithy.api#required" => {}}))
    NatGatewayAttachment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayAttachmentStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    NatGatewayAttachment.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "StatusMessage"))
    NatGatewayAttachment.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, name: "DnsName"))
    NatGatewayAttachment.type = Types::NatGatewayAttachment
    NatGatewayAttachmentStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    NatGatewayAttachmentStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    NatGatewayAttachmentStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    NatGatewayAttachmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    NatGatewayAttachmentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    NatGatewayAttachmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayAttachment, name: "member"))
    NatGatewayMapping.add_member(:nat_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayId, name: "NatGatewayId", traits: {"smithy.api#required" => {}}))
    NatGatewayMapping.type = Types::NatGatewayMapping
    NatGatewayMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayMapping, name: "member"))
    OverrideAction.add_member(:drop_to_alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP_TO_ALERT", traits: {"smithy.api#enumValue" => "DROP_TO_ALERT"}))
    PerObjectStatus.add_member(:sync_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PerObjectSyncStatus, name: "SyncStatus"))
    PerObjectStatus.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    PerObjectStatus.type = Types::PerObjectStatus
    PerObjectSyncStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    PerObjectSyncStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    PerObjectSyncStatus.add_member(:capacity_constrained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_CONSTRAINED", traits: {"smithy.api#enumValue" => "CAPACITY_CONSTRAINED"}))
    PerObjectSyncStatus.add_member(:not_subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_SUBSCRIBED", traits: {"smithy.api#enumValue" => "NOT_SUBSCRIBED"}))
    PerObjectSyncStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    PolicyVariables.add_member(:rule_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSets, name: "RuleVariables"))
    PolicyVariables.type = Types::PolicyVariables
    PortRange.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeBound, name: "FromPort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PortRange.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRangeBound, name: "ToPort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PortRange.type = Types::PortRange
    PortRanges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRange, name: "member"))
    PortSet.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableDefinitionList, name: "Definition"))
    PortSet.type = Types::PortSet
    PortSets.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVariableName, name: "key"))
    PortSets.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PortSet, name: "value"))
    ProtocolNumbers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolNumber, name: "member"))
    ProtocolStrings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolString, name: "member"))
    Proxies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyMetadata, name: "member"))
    Proxy.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTime, name: "CreateTime"))
    Proxy.add_member(:delete_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteTime, name: "DeleteTime"))
    Proxy.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, name: "UpdateTime"))
    Proxy.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "FailureCode"))
    Proxy.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "FailureMessage"))
    Proxy.add_member(:proxy_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyState, name: "ProxyState"))
    Proxy.add_member(:proxy_modify_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyModifyState, name: "ProxyModifyState"))
    Proxy.add_member(:nat_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayId, name: "NatGatewayId"))
    Proxy.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    Proxy.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    Proxy.add_member(:proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyName"))
    Proxy.add_member(:proxy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyArn"))
    Proxy.add_member(:listener_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProperties, name: "ListenerProperties"))
    Proxy.add_member(:tls_intercept_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsInterceptProperties, name: "TlsInterceptProperties"))
    Proxy.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Proxy.type = Types::Proxy
    ProxyConditionValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConditionValue, name: "member"))
    ProxyConfigDefaultRulePhaseActionsRequest.add_member(:pre_dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePhaseAction, name: "PreDNS"))
    ProxyConfigDefaultRulePhaseActionsRequest.add_member(:pre_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePhaseAction, name: "PreREQUEST"))
    ProxyConfigDefaultRulePhaseActionsRequest.add_member(:post_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePhaseAction, name: "PostRESPONSE"))
    ProxyConfigDefaultRulePhaseActionsRequest.type = Types::ProxyConfigDefaultRulePhaseActionsRequest
    ProxyConfigRuleGroup.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    ProxyConfigRuleGroup.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    ProxyConfigRuleGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigRuleGroupType, name: "Type"))
    ProxyConfigRuleGroup.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigRuleGroupPriority, name: "Priority"))
    ProxyConfigRuleGroup.type = Types::ProxyConfigRuleGroup
    ProxyConfigRuleGroupSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigRuleGroup, name: "member"))
    ProxyConfiguration.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    ProxyConfiguration.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    ProxyConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ProxyConfiguration.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTime, name: "CreateTime"))
    ProxyConfiguration.add_member(:delete_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteTime, name: "DeleteTime"))
    ProxyConfiguration.add_member(:rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigRuleGroupSet, name: "RuleGroups"))
    ProxyConfiguration.add_member(:default_rule_phase_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigDefaultRulePhaseActionsRequest, name: "DefaultRulePhaseActions"))
    ProxyConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ProxyConfiguration.type = Types::ProxyConfiguration
    ProxyConfigurationMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    ProxyConfigurationMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    ProxyConfigurationMetadata.type = Types::ProxyConfigurationMetadata
    ProxyConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigurationMetadata, name: "member"))
    ProxyMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    ProxyMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    ProxyMetadata.type = Types::ProxyMetadata
    ProxyModifyState.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ProxyModifyState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ProxyModifyState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ProxyRule.add_member(:proxy_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleName"))
    ProxyRule.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ProxyRule.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePhaseAction, name: "Action"))
    ProxyRule.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleConditionList, name: "Conditions"))
    ProxyRule.type = Types::ProxyRule
    ProxyRuleCondition.add_member(:condition_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionOperator, name: "ConditionOperator"))
    ProxyRuleCondition.add_member(:condition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKey, name: "ConditionKey"))
    ProxyRuleCondition.add_member(:condition_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConditionValueList, name: "ConditionValues"))
    ProxyRuleCondition.type = Types::ProxyRuleCondition
    ProxyRuleConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleCondition, name: "member"))
    ProxyRuleGroup.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    ProxyRuleGroup.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    ProxyRuleGroup.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTime, name: "CreateTime"))
    ProxyRuleGroup.add_member(:delete_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteTime, name: "DeleteTime"))
    ProxyRuleGroup.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulesByRequestPhase, name: "Rules"))
    ProxyRuleGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ProxyRuleGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ProxyRuleGroup.type = Types::ProxyRuleGroup
    ProxyRuleGroupAttachment.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    ProxyRuleGroupAttachment.add_member(:insert_position, ::Smithy::Schema::Shapes::MemberShape.new(target: InsertPosition, name: "InsertPosition"))
    ProxyRuleGroupAttachment.type = Types::ProxyRuleGroupAttachment
    ProxyRuleGroupAttachmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroupAttachment, name: "member"))
    ProxyRuleGroupMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    ProxyRuleGroupMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    ProxyRuleGroupMetadata.type = Types::ProxyRuleGroupMetadata
    ProxyRuleGroupPriority.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    ProxyRuleGroupPriority.add_member(:new_position, ::Smithy::Schema::Shapes::MemberShape.new(target: InsertPosition, name: "NewPosition"))
    ProxyRuleGroupPriority.type = Types::ProxyRuleGroupPriority
    ProxyRuleGroupPriorityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroupPriority, name: "member"))
    ProxyRuleGroupPriorityResult.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    ProxyRuleGroupPriorityResult.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroupPriorityResultPriority, name: "Priority"))
    ProxyRuleGroupPriorityResult.type = Types::ProxyRuleGroupPriorityResult
    ProxyRuleGroupPriorityResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroupPriorityResult, name: "member"))
    ProxyRuleGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroupMetadata, name: "member"))
    ProxyRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRule, name: "member"))
    ProxyRulePhaseAction.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    ProxyRulePhaseAction.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    ProxyRulePhaseAction.add_member(:alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    ProxyRulePriority.add_member(:proxy_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleName"))
    ProxyRulePriority.add_member(:new_position, ::Smithy::Schema::Shapes::MemberShape.new(target: InsertPosition, name: "NewPosition"))
    ProxyRulePriority.type = Types::ProxyRulePriority
    ProxyRulePriorityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePriority, name: "member"))
    ProxyRulesByRequestPhase.add_member(:pre_dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleList, name: "PreDNS"))
    ProxyRulesByRequestPhase.add_member(:pre_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleList, name: "PreREQUEST"))
    ProxyRulesByRequestPhase.add_member(:post_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleList, name: "PostRESPONSE"))
    ProxyRulesByRequestPhase.type = Types::ProxyRulesByRequestPhase
    ProxySettings.add_member(:listener_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerProperties, name: "ListenerProperties", traits: {"smithy.api#required" => {}}))
    ProxySettings.type = Types::ProxySettings
    ProxyState.add_member(:attaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHING", traits: {"smithy.api#enumValue" => "ATTACHING"}))
    ProxyState.add_member(:attached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHED", traits: {"smithy.api#enumValue" => "ATTACHED"}))
    ProxyState.add_member(:detaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACHING", traits: {"smithy.api#enumValue" => "DETACHING"}))
    ProxyState.add_member(:detached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACHED", traits: {"smithy.api#enumValue" => "DETACHED"}))
    ProxyState.add_member(:attach_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACH_FAILED", traits: {"smithy.api#enumValue" => "ATTACH_FAILED"}))
    ProxyState.add_member(:detach_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACH_FAILED", traits: {"smithy.api#enumValue" => "DETACH_FAILED"}))
    PublishMetricAction.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions", traits: {"smithy.api#required" => {}}))
    PublishMetricAction.type = Types::PublishMetricAction
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyString, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    ReferenceSets.add_member(:ip_set_references, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSetReferenceMap, name: "IPSetReferences"))
    ReferenceSets.type = Types::ReferenceSets
    RejectNetworkFirewallTransitGatewayAttachmentRequest.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    RejectNetworkFirewallTransitGatewayAttachmentRequest.type = Types::RejectNetworkFirewallTransitGatewayAttachmentRequest
    RejectNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentId, name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    RejectNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentStatus, name: "TransitGatewayAttachmentStatus", traits: {"smithy.api#required" => {}}))
    RejectNetworkFirewallTransitGatewayAttachmentResponse.type = Types::RejectNetworkFirewallTransitGatewayAttachmentResponse
    ResourceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ResourceManagedStatus.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    ResourceManagedStatus.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ResourceManagedType.add_member(:aws_managed_threat_signatures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED_THREAT_SIGNATURES", traits: {"smithy.api#enumValue" => "AWS_MANAGED_THREAT_SIGNATURES"}))
    ResourceManagedType.add_member(:aws_managed_domain_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED_DOMAIN_LISTS", traits: {"smithy.api#enumValue" => "AWS_MANAGED_DOMAIN_LISTS"}))
    ResourceManagedType.add_member(:active_threat_defense, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_THREAT_DEFENSE", traits: {"smithy.api#enumValue" => "ACTIVE_THREAT_DEFENSE"}))
    ResourceManagedType.add_member(:partner_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_MANAGED", traits: {"smithy.api#enumValue" => "PARTNER_MANAGED"}))
    ResourceNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceOwnerCheckException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceOwnerCheckException.type = Types::ResourceOwnerCheckException
    ResourceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResourceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResourceStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    RevocationCheckAction.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    RevocationCheckAction.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    RevocationCheckAction.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    RuleDefinition.add_member(:match_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAttributes, name: "MatchAttributes", traits: {"smithy.api#required" => {}}))
    RuleDefinition.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessActions, name: "Actions", traits: {"smithy.api#required" => {}}))
    RuleDefinition.type = Types::RuleDefinition
    RuleGroup.add_member(:rule_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleVariables, name: "RuleVariables"))
    RuleGroup.add_member(:reference_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceSets, name: "ReferenceSets"))
    RuleGroup.add_member(:rules_source, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesSource, name: "RulesSource", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:stateful_rule_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleOptions, name: "StatefulRuleOptions"))
    RuleGroup.type = Types::RuleGroup
    RuleGroupMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    RuleGroupMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    RuleGroupMetadata.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName"))
    RuleGroupMetadata.type = Types::RuleGroupMetadata
    RuleGroupRequestPhase.add_member(:pre_dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_DNS", traits: {"smithy.api#enumValue" => "PRE_DNS"}))
    RuleGroupRequestPhase.add_member(:pre_req, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_REQ", traits: {"smithy.api#enumValue" => "PRE_REQ"}))
    RuleGroupRequestPhase.add_member(:post_res, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_RES", traits: {"smithy.api#enumValue" => "POST_RES"}))
    RuleGroupResponse.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleGroupArn", traits: {"smithy.api#required" => {}}))
    RuleGroupResponse.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName", traits: {"smithy.api#required" => {}}))
    RuleGroupResponse.add_member(:rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    RuleGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    RuleGroupResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type"))
    RuleGroupResponse.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCapacity, name: "Capacity"))
    RuleGroupResponse.add_member(:rule_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "RuleGroupStatus"))
    RuleGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RuleGroupResponse.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCapacity, name: "ConsumedCapacity"))
    RuleGroupResponse.add_member(:number_of_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociations, name: "NumberOfAssociations"))
    RuleGroupResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    RuleGroupResponse.add_member(:source_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceMetadata, name: "SourceMetadata"))
    RuleGroupResponse.add_member(:sns_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SnsTopic"))
    RuleGroupResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateTime, name: "LastModifiedTime"))
    RuleGroupResponse.add_member(:analysis_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisResultList, name: "AnalysisResults"))
    RuleGroupResponse.add_member(:summary_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryConfiguration, name: "SummaryConfiguration"))
    RuleGroupResponse.type = Types::RuleGroupResponse
    RuleGroupType.add_member(:stateless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATELESS", traits: {"smithy.api#enumValue" => "STATELESS"}))
    RuleGroupType.add_member(:stateful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATEFUL", traits: {"smithy.api#enumValue" => "STATEFUL"}))
    RuleGroupType.add_member(:stateful_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATEFUL_DOMAIN", traits: {"smithy.api#enumValue" => "STATEFUL_DOMAIN"}))
    RuleGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupMetadata, name: "member"))
    RuleIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "member"))
    RuleOption.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "Keyword", traits: {"smithy.api#required" => {}}))
    RuleOption.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Settings, name: "Settings"))
    RuleOption.type = Types::RuleOption
    RuleOptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOption, name: "member"))
    RuleOrder.add_member(:default_action_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_ACTION_ORDER", traits: {"smithy.api#enumValue" => "DEFAULT_ACTION_ORDER"}))
    RuleOrder.add_member(:strict_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRICT_ORDER", traits: {"smithy.api#enumValue" => "STRICT_ORDER"}))
    RuleSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummary, name: "member"))
    RuleSummary.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "SID"))
    RuleSummary.add_member(:msg, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "Msg"))
    RuleSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "Metadata"))
    RuleSummary.type = Types::RuleSummary
    RuleTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "member"))
    RuleVariables.add_member(:ip_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: IPSets, name: "IPSets"))
    RuleVariables.add_member(:port_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: PortSets, name: "PortSets"))
    RuleVariables.type = Types::RuleVariables
    RulesSource.add_member(:rules_string, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesString, name: "RulesString"))
    RulesSource.add_member(:rules_source_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesSourceList, name: "RulesSourceList"))
    RulesSource.add_member(:stateful_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRules, name: "StatefulRules"))
    RulesSource.add_member(:stateless_rules_and_custom_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessRulesAndCustomActions, name: "StatelessRulesAndCustomActions"))
    RulesSource.type = Types::RulesSource
    RulesSourceList.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTargets, name: "Targets", traits: {"smithy.api#required" => {}}))
    RulesSourceList.add_member(:target_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTypes, name: "TargetTypes", traits: {"smithy.api#required" => {}}))
    RulesSourceList.add_member(:generated_rules_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedRulesType, name: "GeneratedRulesType", traits: {"smithy.api#required" => {}}))
    RulesSourceList.type = Types::RulesSourceList
    ServerCertificate.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    ServerCertificate.type = Types::ServerCertificate
    ServerCertificateConfiguration.add_member(:server_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificates, name: "ServerCertificates"))
    ServerCertificateConfiguration.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateScopes, name: "Scopes"))
    ServerCertificateConfiguration.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "CertificateAuthorityArn"))
    ServerCertificateConfiguration.add_member(:check_certificate_revocation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckCertificateRevocationStatusActions, name: "CheckCertificateRevocationStatus"))
    ServerCertificateConfiguration.type = Types::ServerCertificateConfiguration
    ServerCertificateConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateConfiguration, name: "member"))
    ServerCertificateScope.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Addresses, name: "Sources"))
    ServerCertificateScope.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Addresses, name: "Destinations"))
    ServerCertificateScope.add_member(:source_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRanges, name: "SourcePorts"))
    ServerCertificateScope.add_member(:destination_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRanges, name: "DestinationPorts"))
    ServerCertificateScope.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolNumbers, name: "Protocols"))
    ServerCertificateScope.type = Types::ServerCertificateScope
    ServerCertificateScopes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateScope, name: "member"))
    ServerCertificates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificate, name: "member"))
    Settings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "member"))
    SourceMetadata.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SourceArn"))
    SourceMetadata.add_member(:source_update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "SourceUpdateToken"))
    SourceMetadata.type = Types::SourceMetadata
    StartAnalysisReportRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    StartAnalysisReportRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    StartAnalysisReportRequest.add_member(:analysis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledAnalysisType, name: "AnalysisType", traits: {"smithy.api#required" => {}}))
    StartAnalysisReportRequest.type = Types::StartAnalysisReportRequest
    StartAnalysisReportResponse.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisReportId, name: "AnalysisReportId", traits: {"smithy.api#required" => {}}))
    StartAnalysisReportResponse.type = Types::StartAnalysisReportResponse
    StartFlowCaptureRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    StartFlowCaptureRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    StartFlowCaptureRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn"))
    StartFlowCaptureRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    StartFlowCaptureRequest.add_member(:minimum_flow_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Age, name: "MinimumFlowAgeInSeconds"))
    StartFlowCaptureRequest.add_member(:flow_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowFilters, name: "FlowFilters", traits: {"smithy.api#required" => {}}))
    StartFlowCaptureRequest.type = Types::StartFlowCaptureRequest
    StartFlowCaptureResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    StartFlowCaptureResponse.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationId, name: "FlowOperationId"))
    StartFlowCaptureResponse.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationStatus, name: "FlowOperationStatus"))
    StartFlowCaptureResponse.type = Types::StartFlowCaptureResponse
    StartFlowFlushRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    StartFlowFlushRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "AvailabilityZone"))
    StartFlowFlushRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn"))
    StartFlowFlushRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    StartFlowFlushRequest.add_member(:minimum_flow_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Age, name: "MinimumFlowAgeInSeconds"))
    StartFlowFlushRequest.add_member(:flow_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowFilters, name: "FlowFilters", traits: {"smithy.api#required" => {}}))
    StartFlowFlushRequest.type = Types::StartFlowFlushRequest
    StartFlowFlushResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    StartFlowFlushResponse.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationId, name: "FlowOperationId"))
    StartFlowFlushResponse.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOperationStatus, name: "FlowOperationStatus"))
    StartFlowFlushResponse.type = Types::StartFlowFlushResponse
    StatefulAction.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    StatefulAction.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    StatefulAction.add_member(:alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    StatefulAction.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    StatefulActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "member"))
    StatefulEngineOptions.add_member(:rule_order, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOrder, name: "RuleOrder"))
    StatefulEngineOptions.add_member(:stream_exception_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamExceptionPolicy, name: "StreamExceptionPolicy"))
    StatefulEngineOptions.add_member(:flow_timeouts, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTimeouts, name: "FlowTimeouts"))
    StatefulEngineOptions.type = Types::StatefulEngineOptions
    StatefulRule.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulAction, name: "Action", traits: {"smithy.api#required" => {}}))
    StatefulRule.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "Header", traits: {"smithy.api#required" => {}}))
    StatefulRule.add_member(:rule_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOptions, name: "RuleOptions", traits: {"smithy.api#required" => {}}))
    StatefulRule.type = Types::StatefulRule
    StatefulRuleDirection.add_member(:forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORWARD", traits: {"smithy.api#enumValue" => "FORWARD"}))
    StatefulRuleDirection.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    StatefulRuleGroupOverride.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideAction, name: "Action"))
    StatefulRuleGroupOverride.type = Types::StatefulRuleGroupOverride
    StatefulRuleGroupReference.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    StatefulRuleGroupReference.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    StatefulRuleGroupReference.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleGroupOverride, name: "Override"))
    StatefulRuleGroupReference.add_member(:deep_threat_inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeepThreatInspection, name: "DeepThreatInspection"))
    StatefulRuleGroupReference.type = Types::StatefulRuleGroupReference
    StatefulRuleGroupReferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleGroupReference, name: "member"))
    StatefulRuleOptions.add_member(:rule_order, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOrder, name: "RuleOrder"))
    StatefulRuleOptions.type = Types::StatefulRuleOptions
    StatefulRuleProtocol.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "IP"}))
    StatefulRuleProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    StatefulRuleProtocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    StatefulRuleProtocol.add_member(:icmp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICMP", traits: {"smithy.api#enumValue" => "ICMP"}))
    StatefulRuleProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    StatefulRuleProtocol.add_member(:ftp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FTP", traits: {"smithy.api#enumValue" => "FTP"}))
    StatefulRuleProtocol.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    StatefulRuleProtocol.add_member(:smb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMB", traits: {"smithy.api#enumValue" => "SMB"}))
    StatefulRuleProtocol.add_member(:dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS", traits: {"smithy.api#enumValue" => "DNS"}))
    StatefulRuleProtocol.add_member(:dcerpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DCERPC", traits: {"smithy.api#enumValue" => "DCERPC"}))
    StatefulRuleProtocol.add_member(:ssh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSH", traits: {"smithy.api#enumValue" => "SSH"}))
    StatefulRuleProtocol.add_member(:smtp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMTP", traits: {"smithy.api#enumValue" => "SMTP"}))
    StatefulRuleProtocol.add_member(:imap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAP", traits: {"smithy.api#enumValue" => "IMAP"}))
    StatefulRuleProtocol.add_member(:msn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSN", traits: {"smithy.api#enumValue" => "MSN"}))
    StatefulRuleProtocol.add_member(:krb5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KRB5", traits: {"smithy.api#enumValue" => "KRB5"}))
    StatefulRuleProtocol.add_member(:ikev2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IKEV2", traits: {"smithy.api#enumValue" => "IKEV2"}))
    StatefulRuleProtocol.add_member(:tftp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TFTP", traits: {"smithy.api#enumValue" => "TFTP"}))
    StatefulRuleProtocol.add_member(:ntp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NTP", traits: {"smithy.api#enumValue" => "NTP"}))
    StatefulRuleProtocol.add_member(:dhcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DHCP", traits: {"smithy.api#enumValue" => "DHCP"}))
    StatefulRuleProtocol.add_member(:http2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP2", traits: {"smithy.api#enumValue" => "HTTP2"}))
    StatefulRuleProtocol.add_member(:quic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUIC", traits: {"smithy.api#enumValue" => "QUIC"}))
    StatefulRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRule, name: "member"))
    StatelessActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "member"))
    StatelessRule.add_member(:rule_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDefinition, name: "RuleDefinition", traits: {"smithy.api#required" => {}}))
    StatelessRule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority", traits: {"smithy.api#required" => {}}))
    StatelessRule.type = Types::StatelessRule
    StatelessRuleGroupReference.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    StatelessRuleGroupReference.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority", traits: {"smithy.api#required" => {}}))
    StatelessRuleGroupReference.type = Types::StatelessRuleGroupReference
    StatelessRuleGroupReferences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessRuleGroupReference, name: "member"))
    StatelessRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessRule, name: "member"))
    StatelessRulesAndCustomActions.add_member(:stateless_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessRules, name: "StatelessRules", traits: {"smithy.api#required" => {}}))
    StatelessRulesAndCustomActions.add_member(:custom_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomActions, name: "CustomActions"))
    StatelessRulesAndCustomActions.type = Types::StatelessRulesAndCustomActions
    StreamExceptionPolicy.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    StreamExceptionPolicy.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    StreamExceptionPolicy.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    SubnetMapping.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "SubnetId", traits: {"smithy.api#required" => {}}))
    SubnetMapping.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressType, name: "IPAddressType"))
    SubnetMapping.type = Types::SubnetMapping
    SubnetMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMapping, name: "member"))
    SubscriptionStatus.add_member(:not_subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_SUBSCRIBED", traits: {"smithy.api#enumValue" => "NOT_SUBSCRIBED"}))
    SubscriptionStatus.add_member(:subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSCRIBED", traits: {"smithy.api#enumValue" => "SUBSCRIBED"}))
    Summary.add_member(:rule_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaries, name: "RuleSummaries"))
    Summary.type = Types::Summary
    SummaryConfiguration.add_member(:rule_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryRuleOptions, name: "RuleOptions"))
    SummaryConfiguration.type = Types::SummaryConfiguration
    SummaryRuleOption.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SID", traits: {"smithy.api#enumValue" => "SID"}))
    SummaryRuleOption.add_member(:msg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSG", traits: {"smithy.api#enumValue" => "MSG"}))
    SummaryRuleOption.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METADATA", traits: {"smithy.api#enumValue" => "METADATA"}))
    SummaryRuleOptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryRuleOption, name: "member"))
    SupportedAvailabilityZones.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "key"))
    SupportedAvailabilityZones.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneMetadata, name: "value"))
    SyncState.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "Attachment"))
    SyncState.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncStateConfig, name: "Config"))
    SyncState.add_member(:nat_gateway_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayAttachmentsList, name: "NatGatewayAttachments"))
    SyncState.type = Types::SyncState
    SyncStateConfig.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "key"))
    SyncStateConfig.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PerObjectStatus, name: "value"))
    SyncStates.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "key"))
    SyncStates.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncState, name: "value"))
    TCPFlag.add_member(:fin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIN", traits: {"smithy.api#enumValue" => "FIN"}))
    TCPFlag.add_member(:syn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYN", traits: {"smithy.api#enumValue" => "SYN"}))
    TCPFlag.add_member(:rst, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RST", traits: {"smithy.api#enumValue" => "RST"}))
    TCPFlag.add_member(:psh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PSH", traits: {"smithy.api#enumValue" => "PSH"}))
    TCPFlag.add_member(:ack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACK", traits: {"smithy.api#enumValue" => "ACK"}))
    TCPFlag.add_member(:urg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URG", traits: {"smithy.api#enumValue" => "URG"}))
    TCPFlag.add_member(:ece, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECE", traits: {"smithy.api#enumValue" => "ECE"}))
    TCPFlag.add_member(:cwr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CWR", traits: {"smithy.api#enumValue" => "CWR"}))
    TCPFlagField.add_member(:flags, ::Smithy::Schema::Shapes::MemberShape.new(target: Flags, name: "Flags", traits: {"smithy.api#required" => {}}))
    TCPFlagField.add_member(:masks, ::Smithy::Schema::Shapes::MemberShape.new(target: Flags, name: "Masks"))
    TCPFlagField.type = Types::TCPFlagField
    TCPFlags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TCPFlagField, name: "member"))
    TLSInspectionConfiguration.add_member(:server_certificate_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCertificateConfigurations, name: "ServerCertificateConfigurations"))
    TLSInspectionConfiguration.type = Types::TLSInspectionConfiguration
    TLSInspectionConfigurationMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    TLSInspectionConfigurationMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    TLSInspectionConfigurationMetadata.type = Types::TLSInspectionConfigurationMetadata
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "TLSInspectionConfigurationArn", traits: {"smithy.api#required" => {}}))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TLSInspectionConfigurationName", traits: {"smithy.api#required" => {}}))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "TLSInspectionConfigurationId", traits: {"smithy.api#required" => {}}))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "TLSInspectionConfigurationStatus"))
    TLSInspectionConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    TLSInspectionConfigurationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    TLSInspectionConfigurationResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateTime, name: "LastModifiedTime"))
    TLSInspectionConfigurationResponse.add_member(:number_of_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAssociations, name: "NumberOfAssociations"))
    TLSInspectionConfigurationResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    TLSInspectionConfigurationResponse.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificates, name: "Certificates"))
    TLSInspectionConfigurationResponse.add_member(:certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsCertificateData, name: "CertificateAuthority"))
    TLSInspectionConfigurationResponse.type = Types::TLSInspectionConfigurationResponse
    TLSInspectionConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfigurationMetadata, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetType.add_member(:tls_sni, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_SNI", traits: {"smithy.api#enumValue" => "TLS_SNI"}))
    TargetType.add_member(:http_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_HOST", traits: {"smithy.api#enumValue" => "HTTP_HOST"}))
    TargetTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TlsCertificateData.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "CertificateArn"))
    TlsCertificateData.add_member(:certificate_serial, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "CertificateSerial"))
    TlsCertificateData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionMemberString, name: "Status"))
    TlsCertificateData.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "StatusMessage"))
    TlsCertificateData.type = Types::TlsCertificateData
    TlsInterceptMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    TlsInterceptMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TlsInterceptProperties.add_member(:pca_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "PcaArn"))
    TlsInterceptProperties.add_member(:tls_intercept_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsInterceptMode, name: "TlsInterceptMode"))
    TlsInterceptProperties.type = Types::TlsInterceptProperties
    TlsInterceptPropertiesRequest.add_member(:pca_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "PcaArn"))
    TlsInterceptPropertiesRequest.add_member(:tls_intercept_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsInterceptMode, name: "TlsInterceptMode"))
    TlsInterceptPropertiesRequest.type = Types::TlsInterceptPropertiesRequest
    TransitGatewayAttachmentStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TransitGatewayAttachmentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    TransitGatewayAttachmentStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    TransitGatewayAttachmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TransitGatewayAttachmentStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TransitGatewayAttachmentStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    TransitGatewayAttachmentStatus.add_member(:pending_acceptance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_ACCEPTANCE", traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    TransitGatewayAttachmentStatus.add_member(:rejecting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTING", traits: {"smithy.api#enumValue" => "REJECTING"}))
    TransitGatewayAttachmentStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    TransitGatewayAttachmentSyncState.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "AttachmentId"))
    TransitGatewayAttachmentSyncState.add_member(:transit_gateway_attachment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentStatus, name: "TransitGatewayAttachmentStatus"))
    TransitGatewayAttachmentSyncState.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitGatewayAttachmentSyncStateMessage, name: "StatusMessage"))
    TransitGatewayAttachmentSyncState.type = Types::TransitGatewayAttachmentSyncState
    UniqueSources.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "Count", traits: {"smithy.api#default" => 0}))
    UniqueSources.type = Types::UniqueSources
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAvailabilityZoneChangeProtectionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateAvailabilityZoneChangeProtectionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateAvailabilityZoneChangeProtectionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateAvailabilityZoneChangeProtectionRequest.add_member(:availability_zone_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AvailabilityZoneChangeProtection", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateAvailabilityZoneChangeProtectionRequest.type = Types::UpdateAvailabilityZoneChangeProtectionRequest
    UpdateAvailabilityZoneChangeProtectionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateAvailabilityZoneChangeProtectionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateAvailabilityZoneChangeProtectionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateAvailabilityZoneChangeProtectionResponse.add_member(:availability_zone_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AvailabilityZoneChangeProtection", traits: {"smithy.api#default" => false}))
    UpdateAvailabilityZoneChangeProtectionResponse.type = Types::UpdateAvailabilityZoneChangeProtectionResponse
    UpdateContainerAssociationRequest.add_member(:container_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ContainerAssociationName"))
    UpdateContainerAssociationRequest.add_member(:container_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ContainerAssociationArn"))
    UpdateContainerAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateContainerAssociationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringType, name: "Type", traits: {"smithy.api#required" => {}}))
    UpdateContainerAssociationRequest.add_member(:container_monitoring_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringConfigurations, name: "ContainerMonitoringConfigurations", traits: {"smithy.api#required" => {}}))
    UpdateContainerAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    UpdateContainerAssociationRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateContainerAssociationRequest.type = Types::UpdateContainerAssociationRequest
    UpdateContainerAssociationResponse.add_member(:container_association_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ContainerAssociationName"))
    UpdateContainerAssociationResponse.add_member(:container_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ContainerAssociationArn"))
    UpdateContainerAssociationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateContainerAssociationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringType, name: "Type"))
    UpdateContainerAssociationResponse.add_member(:container_monitoring_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMonitoringConfigurations, name: "ContainerMonitoringConfigurations"))
    UpdateContainerAssociationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAssociationStatus, name: "Status"))
    UpdateContainerAssociationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    UpdateContainerAssociationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateContainerAssociationResponse.type = Types::UpdateContainerAssociationResponse
    UpdateFirewallAnalysisSettingsRequest.add_member(:enabled_analysis_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledAnalysisTypes, name: "EnabledAnalysisTypes"))
    UpdateFirewallAnalysisSettingsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallAnalysisSettingsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallAnalysisSettingsRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallAnalysisSettingsRequest.type = Types::UpdateFirewallAnalysisSettingsRequest
    UpdateFirewallAnalysisSettingsResponse.add_member(:enabled_analysis_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledAnalysisTypes, name: "EnabledAnalysisTypes"))
    UpdateFirewallAnalysisSettingsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallAnalysisSettingsResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallAnalysisSettingsResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallAnalysisSettingsResponse.type = Types::UpdateFirewallAnalysisSettingsResponse
    UpdateFirewallDeleteProtectionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallDeleteProtectionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallDeleteProtectionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallDeleteProtectionRequest.add_member(:delete_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteProtection", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateFirewallDeleteProtectionRequest.type = Types::UpdateFirewallDeleteProtectionRequest
    UpdateFirewallDeleteProtectionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallDeleteProtectionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallDeleteProtectionResponse.add_member(:delete_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteProtection", traits: {"smithy.api#default" => false}))
    UpdateFirewallDeleteProtectionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallDeleteProtectionResponse.type = Types::UpdateFirewallDeleteProtectionResponse
    UpdateFirewallDescriptionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallDescriptionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallDescriptionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallDescriptionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateFirewallDescriptionRequest.type = Types::UpdateFirewallDescriptionRequest
    UpdateFirewallDescriptionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallDescriptionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallDescriptionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateFirewallDescriptionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallDescriptionResponse.type = Types::UpdateFirewallDescriptionResponse
    UpdateFirewallEncryptionConfigurationRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    UpdateFirewallEncryptionConfigurationRequest.type = Types::UpdateFirewallEncryptionConfigurationRequest
    UpdateFirewallEncryptionConfigurationResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    UpdateFirewallEncryptionConfigurationResponse.type = Types::UpdateFirewallEncryptionConfigurationResponse
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_policy_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FirewallPolicyChangeProtection", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateFirewallPolicyChangeProtectionRequest.type = Types::UpdateFirewallPolicyChangeProtectionRequest
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_policy_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FirewallPolicyChangeProtection", traits: {"smithy.api#default" => false}))
    UpdateFirewallPolicyChangeProtectionResponse.type = Types::UpdateFirewallPolicyChangeProtectionResponse
    UpdateFirewallPolicyRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallPolicyArn"))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallPolicyName"))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicy, name: "FirewallPolicy", traits: {"smithy.api#required" => {}}))
    UpdateFirewallPolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateFirewallPolicyRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    UpdateFirewallPolicyRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    UpdateFirewallPolicyRequest.type = Types::UpdateFirewallPolicyRequest
    UpdateFirewallPolicyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateFirewallPolicyResponse.add_member(:firewall_policy_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicyResponse, name: "FirewallPolicyResponse", traits: {"smithy.api#required" => {}}))
    UpdateFirewallPolicyResponse.type = Types::UpdateFirewallPolicyResponse
    UpdateLoggingConfigurationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateLoggingConfigurationRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateLoggingConfigurationRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    UpdateLoggingConfigurationRequest.add_member(:enable_monitoring_dashboard, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableMonitoringDashboard, name: "EnableMonitoringDashboard"))
    UpdateLoggingConfigurationRequest.type = Types::UpdateLoggingConfigurationRequest
    UpdateLoggingConfigurationResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateLoggingConfigurationResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "LoggingConfiguration"))
    UpdateLoggingConfigurationResponse.add_member(:enable_monitoring_dashboard, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableMonitoringDashboard, name: "EnableMonitoringDashboard"))
    UpdateLoggingConfigurationResponse.type = Types::UpdateLoggingConfigurationResponse
    UpdateProxyConfigurationRequest.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    UpdateProxyConfigurationRequest.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    UpdateProxyConfigurationRequest.add_member(:default_rule_phase_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigDefaultRulePhaseActionsRequest, name: "DefaultRulePhaseActions", traits: {"smithy.api#required" => {}}))
    UpdateProxyConfigurationRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateProxyConfigurationRequest.type = Types::UpdateProxyConfigurationRequest
    UpdateProxyConfigurationResponse.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "ProxyConfiguration"))
    UpdateProxyConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateProxyConfigurationResponse.type = Types::UpdateProxyConfigurationResponse
    UpdateProxyRequest.add_member(:nat_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NatGatewayId, name: "NatGatewayId", traits: {"smithy.api#required" => {}}))
    UpdateProxyRequest.add_member(:proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyName"))
    UpdateProxyRequest.add_member(:proxy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyArn"))
    UpdateProxyRequest.add_member(:listener_properties_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPropertiesRequest, name: "ListenerPropertiesToAdd"))
    UpdateProxyRequest.add_member(:listener_properties_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPropertiesRequest, name: "ListenerPropertiesToRemove"))
    UpdateProxyRequest.add_member(:tls_intercept_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsInterceptPropertiesRequest, name: "TlsInterceptProperties"))
    UpdateProxyRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateProxyRequest.type = Types::UpdateProxyRequest
    UpdateProxyResponse.add_member(:proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: Proxy, name: "Proxy"))
    UpdateProxyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateProxyResponse.type = Types::UpdateProxyResponse
    UpdateProxyRuleGroupPrioritiesRequest.add_member(:proxy_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyConfigurationName"))
    UpdateProxyRuleGroupPrioritiesRequest.add_member(:proxy_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyConfigurationArn"))
    UpdateProxyRuleGroupPrioritiesRequest.add_member(:rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroupPriorityList, name: "RuleGroups", traits: {"smithy.api#required" => {}}))
    UpdateProxyRuleGroupPrioritiesRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateProxyRuleGroupPrioritiesRequest.type = Types::UpdateProxyRuleGroupPrioritiesRequest
    UpdateProxyRuleGroupPrioritiesResponse.add_member(:proxy_rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleGroupPriorityResultList, name: "ProxyRuleGroups"))
    UpdateProxyRuleGroupPrioritiesResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateProxyRuleGroupPrioritiesResponse.type = Types::UpdateProxyRuleGroupPrioritiesResponse
    UpdateProxyRulePrioritiesRequest.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    UpdateProxyRulePrioritiesRequest.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    UpdateProxyRulePrioritiesRequest.add_member(:rule_group_request_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupRequestPhase, name: "RuleGroupRequestPhase", traits: {"smithy.api#required" => {}}))
    UpdateProxyRulePrioritiesRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePriorityList, name: "Rules", traits: {"smithy.api#required" => {}}))
    UpdateProxyRulePrioritiesRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateProxyRulePrioritiesRequest.type = Types::UpdateProxyRulePrioritiesRequest
    UpdateProxyRulePrioritiesResponse.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    UpdateProxyRulePrioritiesResponse.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    UpdateProxyRulePrioritiesResponse.add_member(:rule_group_request_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupRequestPhase, name: "RuleGroupRequestPhase"))
    UpdateProxyRulePrioritiesResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePriorityList, name: "Rules"))
    UpdateProxyRulePrioritiesResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateProxyRulePrioritiesResponse.type = Types::UpdateProxyRulePrioritiesResponse
    UpdateProxyRuleRequest.add_member(:proxy_rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleGroupName"))
    UpdateProxyRuleRequest.add_member(:proxy_rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProxyRuleGroupArn"))
    UpdateProxyRuleRequest.add_member(:proxy_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ProxyRuleName", traits: {"smithy.api#required" => {}}))
    UpdateProxyRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateProxyRuleRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRulePhaseAction, name: "Action"))
    UpdateProxyRuleRequest.add_member(:add_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleConditionList, name: "AddConditions"))
    UpdateProxyRuleRequest.add_member(:remove_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleConditionList, name: "RemoveConditions"))
    UpdateProxyRuleRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateProxyRuleRequest.type = Types::UpdateProxyRuleRequest
    UpdateProxyRuleResponse.add_member(:proxy_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRule, name: "ProxyRule"))
    UpdateProxyRuleResponse.add_member(:removed_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyRuleConditionList, name: "RemovedConditions"))
    UpdateProxyRuleResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateProxyRuleResponse.type = Types::UpdateProxyRuleResponse
    UpdateProxySettingsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateProxySettingsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateProxySettingsRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateProxySettingsRequest.add_member(:proxy_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySettings, name: "ProxySettings"))
    UpdateProxySettingsRequest.type = Types::UpdateProxySettingsRequest
    UpdateProxySettingsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateProxySettingsResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateProxySettingsResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateProxySettingsResponse.add_member(:proxy_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxySettings, name: "ProxySettings"))
    UpdateProxySettingsResponse.type = Types::UpdateProxySettingsResponse
    UpdateRuleGroupRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "RuleGroupArn"))
    UpdateRuleGroupRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "RuleGroupName"))
    UpdateRuleGroupRequest.add_member(:rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroup, name: "RuleGroup"))
    UpdateRuleGroupRequest.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RulesString, name: "Rules"))
    UpdateRuleGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupType, name: "Type"))
    UpdateRuleGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateRuleGroupRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    UpdateRuleGroupRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    UpdateRuleGroupRequest.add_member(:source_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceMetadata, name: "SourceMetadata"))
    UpdateRuleGroupRequest.add_member(:analyze_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AnalyzeRuleGroup", traits: {"smithy.api#default" => false}))
    UpdateRuleGroupRequest.add_member(:summary_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryConfiguration, name: "SummaryConfiguration"))
    UpdateRuleGroupRequest.type = Types::UpdateRuleGroupRequest
    UpdateRuleGroupResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupResponse.add_member(:rule_group_response, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleGroupResponse, name: "RuleGroupResponse", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupResponse.type = Types::UpdateRuleGroupResponse
    UpdateSubnetChangeProtectionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateSubnetChangeProtectionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateSubnetChangeProtectionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateSubnetChangeProtectionRequest.add_member(:subnet_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SubnetChangeProtection", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateSubnetChangeProtectionRequest.type = Types::UpdateSubnetChangeProtectionRequest
    UpdateSubnetChangeProtectionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    UpdateSubnetChangeProtectionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn"))
    UpdateSubnetChangeProtectionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "FirewallName"))
    UpdateSubnetChangeProtectionResponse.add_member(:subnet_change_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SubnetChangeProtection", traits: {"smithy.api#default" => false}))
    UpdateSubnetChangeProtectionResponse.type = Types::UpdateSubnetChangeProtectionResponse
    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "TLSInspectionConfigurationArn"))
    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "TLSInspectionConfigurationName"))
    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfiguration, name: "TLSInspectionConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateTLSInspectionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateTLSInspectionConfigurationRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    UpdateTLSInspectionConfigurationRequest.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateTLSInspectionConfigurationRequest.type = Types::UpdateTLSInspectionConfigurationRequest
    UpdateTLSInspectionConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSInspectionConfigurationResponse, name: "TLSInspectionConfigurationResponse", traits: {"smithy.api#required" => {}}))
    UpdateTLSInspectionConfigurationResponse.type = Types::UpdateTLSInspectionConfigurationResponse
    VariableDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableDefinition, name: "member"))
    VpcEndpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcEndpoint.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMappings, name: "SubnetMappings", traits: {"smithy.api#required" => {}}))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointAssociation.add_member(:vpc_endpoint_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcEndpointAssociationId"))
    VpcEndpointAssociation.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociation.add_member(:firewall_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociation.add_member(:subnet_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetMapping, name: "SubnetMapping", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    VpcEndpointAssociation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    VpcEndpointAssociation.type = Types::VpcEndpointAssociation
    VpcEndpointAssociationMetadata.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "VpcEndpointAssociationArn"))
    VpcEndpointAssociationMetadata.type = Types::VpcEndpointAssociationMetadata
    VpcEndpointAssociationStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallStatusValue, name: "Status", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociationStatus.add_member(:association_sync_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationSyncState, name: "AssociationSyncState"))
    VpcEndpointAssociationStatus.type = Types::VpcEndpointAssociationStatus
    VpcEndpointAssociations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointAssociationMetadata, name: "member"))
    VpcIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "member"))

    NetworkFirewall20201112 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.networkfirewall#NetworkFirewall_20201112"
      service.name = "NetworkFirewall20201112"
      service.version = "2020-11-12"
      service.traits = {"aws.api#service" => {"sdkId" => "Network Firewall", "arnNamespace" => "network-firewall", "cloudFormationName" => "NetworkFirewall", "cloudTrailEventSource" => "networkfirewall.amazonaws.com", "endpointPrefix" => "network-firewall"}, "aws.auth#sigv4" => {"name" => "network-firewall"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Network Firewall", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://network-firewall-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://network-firewall-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://network-firewall.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://network-firewall.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:accept_network_firewall_transit_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AcceptNetworkFirewallTransitGatewayAttachment"
        operation.name = "AcceptNetworkFirewallTransitGatewayAttachment"
        operation.input = AcceptNetworkFirewallTransitGatewayAttachmentRequest
        operation.output = AcceptNetworkFirewallTransitGatewayAttachmentResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:associate_availability_zones, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AssociateAvailabilityZones"
        operation.name = "AssociateAvailabilityZones"
        operation.input = AssociateAvailabilityZonesRequest
        operation.output = AssociateAvailabilityZonesResponse
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:associate_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AssociateFirewallPolicy"
        operation.name = "AssociateFirewallPolicy"
        operation.input = AssociateFirewallPolicyRequest
        operation.output = AssociateFirewallPolicyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:associate_subnets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AssociateSubnets"
        operation.name = "AssociateSubnets"
        operation.input = AssociateSubnetsRequest
        operation.output = AssociateSubnetsResponse
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:attach_rule_groups_to_proxy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AttachRuleGroupsToProxyConfiguration"
        operation.name = "AttachRuleGroupsToProxyConfiguration"
        operation.input = AttachRuleGroupsToProxyConfigurationRequest
        operation.output = AttachRuleGroupsToProxyConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_container_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateContainerAssociation"
        operation.name = "CreateContainerAssociation"
        operation.input = CreateContainerAssociationRequest
        operation.output = CreateContainerAssociationResponse
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateFirewall"
        operation.name = "CreateFirewall"
        operation.input = CreateFirewallRequest
        operation.output = CreateFirewallResponse
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateFirewallPolicy"
        operation.name = "CreateFirewallPolicy"
        operation.input = CreateFirewallPolicyRequest
        operation.output = CreateFirewallPolicyResponse
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateProxy"
        operation.name = "CreateProxy"
        operation.input = CreateProxyRequest
        operation.output = CreateProxyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:create_proxy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateProxyConfiguration"
        operation.name = "CreateProxyConfiguration"
        operation.input = CreateProxyConfigurationRequest
        operation.output = CreateProxyConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_proxy_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateProxyRuleGroup"
        operation.name = "CreateProxyRuleGroup"
        operation.input = CreateProxyRuleGroupRequest
        operation.output = CreateProxyRuleGroupResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_proxy_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateProxyRules"
        operation.name = "CreateProxyRules"
        operation.input = CreateProxyRulesRequest
        operation.output = CreateProxyRulesResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateRuleGroup"
        operation.name = "CreateRuleGroup"
        operation.input = CreateRuleGroupRequest
        operation.output = CreateRuleGroupResponse
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_tls_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateTLSInspectionConfiguration"
        operation.name = "CreateTLSInspectionConfiguration"
        operation.input = CreateTLSInspectionConfigurationRequest
        operation.output = CreateTLSInspectionConfigurationResponse
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_vpc_endpoint_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateVpcEndpointAssociation"
        operation.name = "CreateVpcEndpointAssociation"
        operation.input = CreateVpcEndpointAssociationRequest
        operation.output = CreateVpcEndpointAssociationResponse
        operation.errors << InsufficientCapacityException
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_container_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteContainerAssociation"
        operation.name = "DeleteContainerAssociation"
        operation.input = DeleteContainerAssociationRequest
        operation.output = DeleteContainerAssociationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteFirewall"
        operation.name = "DeleteFirewall"
        operation.input = DeleteFirewallRequest
        operation.output = DeleteFirewallResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteFirewallPolicy"
        operation.name = "DeleteFirewallPolicy"
        operation.input = DeleteFirewallPolicyRequest
        operation.output = DeleteFirewallPolicyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_network_firewall_transit_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteNetworkFirewallTransitGatewayAttachment"
        operation.name = "DeleteNetworkFirewallTransitGatewayAttachment"
        operation.input = DeleteNetworkFirewallTransitGatewayAttachmentRequest
        operation.output = DeleteNetworkFirewallTransitGatewayAttachmentResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteProxy"
        operation.name = "DeleteProxy"
        operation.input = DeleteProxyRequest
        operation.output = DeleteProxyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_proxy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteProxyConfiguration"
        operation.name = "DeleteProxyConfiguration"
        operation.input = DeleteProxyConfigurationRequest
        operation.output = DeleteProxyConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_proxy_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteProxyRuleGroup"
        operation.name = "DeleteProxyRuleGroup"
        operation.input = DeleteProxyRuleGroupRequest
        operation.output = DeleteProxyRuleGroupResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_proxy_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteProxyRules"
        operation.name = "DeleteProxyRules"
        operation.input = DeleteProxyRulesRequest
        operation.output = DeleteProxyRulesResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidResourcePolicyException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteRuleGroup"
        operation.name = "DeleteRuleGroup"
        operation.input = DeleteRuleGroupRequest
        operation.output = DeleteRuleGroupResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_tls_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteTLSInspectionConfiguration"
        operation.name = "DeleteTLSInspectionConfiguration"
        operation.input = DeleteTLSInspectionConfigurationRequest
        operation.output = DeleteTLSInspectionConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_vpc_endpoint_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteVpcEndpointAssociation"
        operation.name = "DeleteVpcEndpointAssociation"
        operation.input = DeleteVpcEndpointAssociationRequest
        operation.output = DeleteVpcEndpointAssociationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_container_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeContainerAssociation"
        operation.name = "DescribeContainerAssociation"
        operation.input = DescribeContainerAssociationRequest
        operation.output = DescribeContainerAssociationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeFirewall"
        operation.name = "DescribeFirewall"
        operation.input = DescribeFirewallRequest
        operation.output = DescribeFirewallResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_firewall_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeFirewallMetadata"
        operation.name = "DescribeFirewallMetadata"
        operation.input = DescribeFirewallMetadataRequest
        operation.output = DescribeFirewallMetadataResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeFirewallPolicy"
        operation.name = "DescribeFirewallPolicy"
        operation.input = DescribeFirewallPolicyRequest
        operation.output = DescribeFirewallPolicyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_flow_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeFlowOperation"
        operation.name = "DescribeFlowOperation"
        operation.input = DescribeFlowOperationRequest
        operation.output = DescribeFlowOperationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeLoggingConfiguration"
        operation.name = "DescribeLoggingConfiguration"
        operation.input = DescribeLoggingConfigurationRequest
        operation.output = DescribeLoggingConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeProxy"
        operation.name = "DescribeProxy"
        operation.input = DescribeProxyRequest
        operation.output = DescribeProxyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_proxy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeProxyConfiguration"
        operation.name = "DescribeProxyConfiguration"
        operation.input = DescribeProxyConfigurationRequest
        operation.output = DescribeProxyConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_proxy_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeProxyRule"
        operation.name = "DescribeProxyRule"
        operation.input = DescribeProxyRuleRequest
        operation.output = DescribeProxyRuleResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_proxy_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeProxyRuleGroup"
        operation.name = "DescribeProxyRuleGroup"
        operation.input = DescribeProxyRuleGroupRequest
        operation.output = DescribeProxyRuleGroupResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = DescribeResourcePolicyRequest
        operation.output = DescribeResourcePolicyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeRuleGroup"
        operation.name = "DescribeRuleGroup"
        operation.input = DescribeRuleGroupRequest
        operation.output = DescribeRuleGroupResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_rule_group_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeRuleGroupMetadata"
        operation.name = "DescribeRuleGroupMetadata"
        operation.input = DescribeRuleGroupMetadataRequest
        operation.output = DescribeRuleGroupMetadataResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_rule_group_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeRuleGroupSummary"
        operation.name = "DescribeRuleGroupSummary"
        operation.input = DescribeRuleGroupSummaryRequest
        operation.output = DescribeRuleGroupSummaryResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_tls_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeTLSInspectionConfiguration"
        operation.name = "DescribeTLSInspectionConfiguration"
        operation.input = DescribeTLSInspectionConfigurationRequest
        operation.output = DescribeTLSInspectionConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_vpc_endpoint_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeVpcEndpointAssociation"
        operation.name = "DescribeVpcEndpointAssociation"
        operation.input = DescribeVpcEndpointAssociationRequest
        operation.output = DescribeVpcEndpointAssociationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:detach_rule_groups_from_proxy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DetachRuleGroupsFromProxyConfiguration"
        operation.name = "DetachRuleGroupsFromProxyConfiguration"
        operation.input = DetachRuleGroupsFromProxyConfigurationRequest
        operation.output = DetachRuleGroupsFromProxyConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_availability_zones, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DisassociateAvailabilityZones"
        operation.name = "DisassociateAvailabilityZones"
        operation.input = DisassociateAvailabilityZonesRequest
        operation.output = DisassociateAvailabilityZonesResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_subnets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DisassociateSubnets"
        operation.name = "DisassociateSubnets"
        operation.input = DisassociateSubnetsRequest
        operation.output = DisassociateSubnetsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_analysis_report_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#GetAnalysisReportResults"
        operation.name = "GetAnalysisReportResults"
        operation.input = GetAnalysisReportResultsRequest
        operation.output = GetAnalysisReportResultsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::GetAnalysisReportResults.new
      end)
      service.add_operation(:list_analysis_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListAnalysisReports"
        operation.name = "ListAnalysisReports"
        operation.input = ListAnalysisReportsRequest
        operation.output = ListAnalysisReportsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAnalysisReports.new
      end)
      service.add_operation(:list_container_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListContainerAssociations"
        operation.name = "ListContainerAssociations"
        operation.input = ListContainerAssociationsRequest
        operation.output = ListContainerAssociationsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListContainerAssociations.new
      end)
      service.add_operation(:list_firewall_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListFirewallPolicies"
        operation.name = "ListFirewallPolicies"
        operation.input = ListFirewallPoliciesRequest
        operation.output = ListFirewallPoliciesResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallPolicies.new
      end)
      service.add_operation(:list_firewalls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListFirewalls"
        operation.name = "ListFirewalls"
        operation.input = ListFirewallsRequest
        operation.output = ListFirewallsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewalls.new
      end)
      service.add_operation(:list_flow_operation_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListFlowOperationResults"
        operation.name = "ListFlowOperationResults"
        operation.input = ListFlowOperationResultsRequest
        operation.output = ListFlowOperationResultsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFlowOperationResults.new
      end)
      service.add_operation(:list_flow_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListFlowOperations"
        operation.name = "ListFlowOperations"
        operation.input = ListFlowOperationsRequest
        operation.output = ListFlowOperationsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFlowOperations.new
      end)
      service.add_operation(:list_proxies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListProxies"
        operation.name = "ListProxies"
        operation.input = ListProxiesRequest
        operation.output = ListProxiesResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProxies.new
      end)
      service.add_operation(:list_proxy_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListProxyConfigurations"
        operation.name = "ListProxyConfigurations"
        operation.input = ListProxyConfigurationsRequest
        operation.output = ListProxyConfigurationsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProxyConfigurations.new
      end)
      service.add_operation(:list_proxy_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListProxyRuleGroups"
        operation.name = "ListProxyRuleGroups"
        operation.input = ListProxyRuleGroupsRequest
        operation.output = ListProxyRuleGroupsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProxyRuleGroups.new
      end)
      service.add_operation(:list_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListRuleGroups"
        operation.name = "ListRuleGroups"
        operation.input = ListRuleGroupsRequest
        operation.output = ListRuleGroupsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRuleGroups.new
      end)
      service.add_operation(:list_tls_inspection_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListTLSInspectionConfigurations"
        operation.name = "ListTLSInspectionConfigurations"
        operation.input = ListTLSInspectionConfigurationsRequest
        operation.output = ListTLSInspectionConfigurationsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTLSInspectionConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_vpc_endpoint_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListVpcEndpointAssociations"
        operation.name = "ListVpcEndpointAssociations"
        operation.input = ListVpcEndpointAssociationsRequest
        operation.output = ListVpcEndpointAssociationsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListVpcEndpointAssociations.new
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidResourcePolicyException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:reject_network_firewall_transit_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#RejectNetworkFirewallTransitGatewayAttachment"
        operation.name = "RejectNetworkFirewallTransitGatewayAttachment"
        operation.input = RejectNetworkFirewallTransitGatewayAttachmentRequest
        operation.output = RejectNetworkFirewallTransitGatewayAttachmentResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:start_analysis_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#StartAnalysisReport"
        operation.name = "StartAnalysisReport"
        operation.input = StartAnalysisReportRequest
        operation.output = StartAnalysisReportResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:start_flow_capture, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#StartFlowCapture"
        operation.name = "StartFlowCapture"
        operation.input = StartFlowCaptureRequest
        operation.output = StartFlowCaptureResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:start_flow_flush, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#StartFlowFlush"
        operation.name = "StartFlowFlush"
        operation.input = StartFlowFlushRequest
        operation.output = StartFlowFlushResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_availability_zone_change_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateAvailabilityZoneChangeProtection"
        operation.name = "UpdateAvailabilityZoneChangeProtection"
        operation.input = UpdateAvailabilityZoneChangeProtectionRequest
        operation.output = UpdateAvailabilityZoneChangeProtectionResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceOwnerCheckException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_container_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateContainerAssociation"
        operation.name = "UpdateContainerAssociation"
        operation.input = UpdateContainerAssociationRequest
        operation.output = UpdateContainerAssociationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_analysis_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallAnalysisSettings"
        operation.name = "UpdateFirewallAnalysisSettings"
        operation.input = UpdateFirewallAnalysisSettingsRequest
        operation.output = UpdateFirewallAnalysisSettingsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_delete_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallDeleteProtection"
        operation.name = "UpdateFirewallDeleteProtection"
        operation.input = UpdateFirewallDeleteProtectionRequest
        operation.output = UpdateFirewallDeleteProtectionResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceOwnerCheckException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_description, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallDescription"
        operation.name = "UpdateFirewallDescription"
        operation.input = UpdateFirewallDescriptionRequest
        operation.output = UpdateFirewallDescriptionResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_encryption_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallEncryptionConfiguration"
        operation.name = "UpdateFirewallEncryptionConfiguration"
        operation.input = UpdateFirewallEncryptionConfigurationRequest
        operation.output = UpdateFirewallEncryptionConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceOwnerCheckException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallPolicy"
        operation.name = "UpdateFirewallPolicy"
        operation.input = UpdateFirewallPolicyRequest
        operation.output = UpdateFirewallPolicyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_policy_change_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallPolicyChangeProtection"
        operation.name = "UpdateFirewallPolicyChangeProtection"
        operation.input = UpdateFirewallPolicyChangeProtectionRequest
        operation.output = UpdateFirewallPolicyChangeProtectionResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceOwnerCheckException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateLoggingConfiguration"
        operation.name = "UpdateLoggingConfiguration"
        operation.input = UpdateLoggingConfigurationRequest
        operation.output = UpdateLoggingConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << LogDestinationPermissionException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateProxy"
        operation.name = "UpdateProxy"
        operation.input = UpdateProxyRequest
        operation.output = UpdateProxyResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:update_proxy_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateProxyConfiguration"
        operation.name = "UpdateProxyConfiguration"
        operation.input = UpdateProxyConfigurationRequest
        operation.output = UpdateProxyConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_proxy_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateProxyRule"
        operation.name = "UpdateProxyRule"
        operation.input = UpdateProxyRuleRequest
        operation.output = UpdateProxyRuleResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_proxy_rule_group_priorities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateProxyRuleGroupPriorities"
        operation.name = "UpdateProxyRuleGroupPriorities"
        operation.input = UpdateProxyRuleGroupPrioritiesRequest
        operation.output = UpdateProxyRuleGroupPrioritiesResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_proxy_rule_priorities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateProxyRulePriorities"
        operation.name = "UpdateProxyRulePriorities"
        operation.input = UpdateProxyRulePrioritiesRequest
        operation.output = UpdateProxyRulePrioritiesResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_proxy_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateProxySettings"
        operation.name = "UpdateProxySettings"
        operation.input = UpdateProxySettingsRequest
        operation.output = UpdateProxySettingsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidOperationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceOwnerCheckException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateRuleGroup"
        operation.name = "UpdateRuleGroup"
        operation.input = UpdateRuleGroupRequest
        operation.output = UpdateRuleGroupResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_subnet_change_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateSubnetChangeProtection"
        operation.name = "UpdateSubnetChangeProtection"
        operation.input = UpdateSubnetChangeProtectionRequest
        operation.output = UpdateSubnetChangeProtectionResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceOwnerCheckException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_tls_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateTLSInspectionConfiguration"
        operation.name = "UpdateTLSInspectionConfiguration"
        operation.input = UpdateTLSInspectionConfigurationRequest
        operation.output = UpdateTLSInspectionConfigurationResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.errors << InvalidTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
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
