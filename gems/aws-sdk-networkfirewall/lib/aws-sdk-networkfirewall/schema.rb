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
    ConfigurationSyncState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ConfigurationSyncState", name: "ConfigurationSyncState")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#Count", name: "Count", traits: {"smithy.api#default" => 0})
    CreateFirewallPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateFirewallPolicyRequest", name: "CreateFirewallPolicyRequest")
    CreateFirewallPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateFirewallPolicyResponse", name: "CreateFirewallPolicyResponse")
    CreateFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateFirewallRequest", name: "CreateFirewallRequest")
    CreateFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateFirewallResponse", name: "CreateFirewallResponse")
    CreateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateRuleGroupRequest", name: "CreateRuleGroupRequest")
    CreateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateRuleGroupResponse", name: "CreateRuleGroupResponse")
    CreateTLSInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateTLSInspectionConfigurationRequest", name: "CreateTLSInspectionConfigurationRequest")
    CreateTLSInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateTLSInspectionConfigurationResponse", name: "CreateTLSInspectionConfigurationResponse")
    CreateVpcEndpointAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateVpcEndpointAssociationRequest", name: "CreateVpcEndpointAssociationRequest")
    CreateVpcEndpointAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CreateVpcEndpointAssociationResponse", name: "CreateVpcEndpointAssociationResponse")
    CustomAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#CustomAction", name: "CustomAction")
    CustomActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#CustomActions", name: "CustomActions")
    DeepThreatInspection = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networkfirewall#DeepThreatInspection", name: "DeepThreatInspection")
    DeleteFirewallPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteFirewallPolicyRequest", name: "DeleteFirewallPolicyRequest")
    DeleteFirewallPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteFirewallPolicyResponse", name: "DeleteFirewallPolicyResponse")
    DeleteFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteFirewallRequest", name: "DeleteFirewallRequest")
    DeleteFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteFirewallResponse", name: "DeleteFirewallResponse")
    DeleteNetworkFirewallTransitGatewayAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteNetworkFirewallTransitGatewayAttachmentRequest", name: "DeleteNetworkFirewallTransitGatewayAttachmentRequest")
    DeleteNetworkFirewallTransitGatewayAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteNetworkFirewallTransitGatewayAttachmentResponse", name: "DeleteNetworkFirewallTransitGatewayAttachmentResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DeleteRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteRuleGroupRequest", name: "DeleteRuleGroupRequest")
    DeleteRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteRuleGroupResponse", name: "DeleteRuleGroupResponse")
    DeleteTLSInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteTLSInspectionConfigurationRequest", name: "DeleteTLSInspectionConfigurationRequest")
    DeleteTLSInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteTLSInspectionConfigurationResponse", name: "DeleteTLSInspectionConfigurationResponse")
    DeleteVpcEndpointAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteVpcEndpointAssociationRequest", name: "DeleteVpcEndpointAssociationRequest")
    DeleteVpcEndpointAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DeleteVpcEndpointAssociationResponse", name: "DeleteVpcEndpointAssociationResponse")
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
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#Dimension", name: "Dimension")
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#DimensionValue", name: "DimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_ ]+$"})
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#Dimensions", name: "Dimensions", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DisassociateAvailabilityZonesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DisassociateAvailabilityZonesRequest", name: "DisassociateAvailabilityZonesRequest")
    DisassociateAvailabilityZonesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DisassociateAvailabilityZonesResponse", name: "DisassociateAvailabilityZonesResponse")
    DisassociateSubnetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DisassociateSubnetsRequest", name: "DisassociateSubnetsRequest")
    DisassociateSubnetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#DisassociateSubnetsResponse", name: "DisassociateSubnetsResponse")
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
    ListFirewallPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFirewallPoliciesRequest", name: "ListFirewallPoliciesRequest")
    ListFirewallPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFirewallPoliciesResponse", name: "ListFirewallPoliciesResponse")
    ListFirewallsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFirewallsRequest", name: "ListFirewallsRequest")
    ListFirewallsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFirewallsResponse", name: "ListFirewallsResponse")
    ListFlowOperationResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFlowOperationResultsRequest", name: "ListFlowOperationResultsRequest")
    ListFlowOperationResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFlowOperationResultsResponse", name: "ListFlowOperationResultsResponse")
    ListFlowOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFlowOperationsRequest", name: "ListFlowOperationsRequest")
    ListFlowOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListFlowOperationsResponse", name: "ListFlowOperationsResponse")
    ListRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListRuleGroupsRequest", name: "ListRuleGroupsRequest")
    ListRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListRuleGroupsResponse", name: "ListRuleGroupsResponse")
    ListTLSInspectionConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListTLSInspectionConfigurationsRequest", name: "ListTLSInspectionConfigurationsRequest")
    ListTLSInspectionConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListTLSInspectionConfigurationsResponse", name: "ListTLSInspectionConfigurationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListVpcEndpointAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListVpcEndpointAssociationsRequest", name: "ListVpcEndpointAssociationsRequest")
    ListVpcEndpointAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ListVpcEndpointAssociationsResponse", name: "ListVpcEndpointAssociationsResponse")
    LogDestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#LogDestinationConfig", name: "LogDestinationConfig")
    LogDestinationConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#LogDestinationConfigs", name: "LogDestinationConfigs")
    LogDestinationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkfirewall#LogDestinationMap", name: "LogDestinationMap")
    LogDestinationPermissionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#LogDestinationPermissionException", name: "LogDestinationPermissionException", traits: {"smithy.api#error" => "client"})
    LogDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#LogDestinationType", name: "LogDestinationType", traits: {"smithy.api#length" => {"min" => 2, "max" => 30}, "smithy.api#pattern" => "^[0-9A-Za-z]+$"})
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#LogType", name: "LogType")
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#LoggingConfiguration", name: "LoggingConfiguration")
    MatchAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#MatchAttributes", name: "MatchAttributes")
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
    ProtocolNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#ProtocolNumber", name: "ProtocolNumber", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 255}})
    ProtocolNumbers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProtocolNumbers", name: "ProtocolNumbers")
    ProtocolString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ProtocolString", name: "ProtocolString", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^.*$"})
    ProtocolStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#ProtocolStrings", name: "ProtocolStrings")
    PublishMetricAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PublishMetricAction", name: "PublishMetricAction")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    ReferenceSets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ReferenceSets", name: "ReferenceSets")
    RejectNetworkFirewallTransitGatewayAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RejectNetworkFirewallTransitGatewayAttachmentRequest", name: "RejectNetworkFirewallTransitGatewayAttachmentRequest")
    RejectNetworkFirewallTransitGatewayAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RejectNetworkFirewallTransitGatewayAttachmentResponse", name: "RejectNetworkFirewallTransitGatewayAttachmentResponse")
    ReportTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkfirewall#ReportTime", name: "ReportTime")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$"})
    ResourceManagedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ResourceManagedStatus", name: "ResourceManagedStatus")
    ResourceManagedType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ResourceManagedType", name: "ResourceManagedType")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceOwnerCheckException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#ResourceOwnerCheckException", name: "ResourceOwnerCheckException", traits: {"smithy.api#error" => "client"})
    ResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#ResourceStatus", name: "ResourceStatus")
    RevocationCheckAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkfirewall#RevocationCheckAction", name: "RevocationCheckAction")
    RuleCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkfirewall#RuleCapacity", name: "RuleCapacity")
    RuleDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleDefinition", name: "RuleDefinition")
    RuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleGroup", name: "RuleGroup")
    RuleGroupMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#RuleGroupMetadata", name: "RuleGroupMetadata")
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
    UpdateRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateRuleGroupRequest", name: "UpdateRuleGroupRequest")
    UpdateRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateRuleGroupResponse", name: "UpdateRuleGroupResponse")
    UpdateSubnetChangeProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateSubnetChangeProtectionRequest", name: "UpdateSubnetChangeProtectionRequest")
    UpdateSubnetChangeProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateSubnetChangeProtectionResponse", name: "UpdateSubnetChangeProtectionResponse")
    UpdateTLSInspectionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateTLSInspectionConfigurationRequest", name: "UpdateTLSInspectionConfigurationRequest")
    UpdateTLSInspectionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#UpdateTLSInspectionConfigurationResponse", name: "UpdateTLSInspectionConfigurationResponse")
    UpdateToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#UpdateToken", name: "UpdateToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$"})
    VariableDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#VariableDefinition", name: "VariableDefinition", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^.*$"})
    VariableDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#VariableDefinitionList", name: "VariableDefinitionList")
    VpcEndpointAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointAssociation", name: "VpcEndpointAssociation")
    VpcEndpointAssociationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointAssociationMetadata", name: "VpcEndpointAssociationMetadata")
    VpcEndpointAssociationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointAssociationStatus", name: "VpcEndpointAssociationStatus")
    VpcEndpointAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointAssociations", name: "VpcEndpointAssociations")
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkfirewall#VpcEndpointId", name: "VpcEndpointId", traits: {"smithy.api#length" => {"min" => 5, "max" => 256}, "smithy.api#pattern" => "^vpce-[a-zA-Z0-9]*$"})
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
    Attachment.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AzSubnet, name: "SubnetId"))
    Attachment.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, name: "EndpointId"))
    Attachment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStatus, name: "Status"))
    Attachment.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
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
    CreateFirewallRequest.type = Types::CreateFirewallRequest
    CreateFirewallResponse.add_member(:firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: Firewall, name: "Firewall"))
    CreateFirewallResponse.add_member(:firewall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallStatus, name: "FirewallStatus"))
    CreateFirewallResponse.type = Types::CreateFirewallResponse
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
    ListRuleGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListRuleGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListRuleGroupsRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceManagedStatus, name: "Scope"))
    ListRuleGroupsRequest.add_member(:managed_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceManagedType, name: "ManagedType"))
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
    OverrideAction.add_member(:drop_to_alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP_TO_ALERT", traits: {"smithy.api#enumValue" => "DROP_TO_ALERT"}))
    PerObjectStatus.add_member(:sync_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PerObjectSyncStatus, name: "SyncStatus"))
    PerObjectStatus.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    PerObjectStatus.type = Types::PerObjectStatus
    PerObjectSyncStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    PerObjectSyncStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    PerObjectSyncStatus.add_member(:capacity_constrained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_CONSTRAINED", traits: {"smithy.api#enumValue" => "CAPACITY_CONSTRAINED"}))
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
    ResourceManagedStatus.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    ResourceManagedStatus.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ResourceManagedType.add_member(:aws_managed_threat_signatures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED_THREAT_SIGNATURES", traits: {"smithy.api#enumValue" => "AWS_MANAGED_THREAT_SIGNATURES"}))
    ResourceManagedType.add_member(:aws_managed_domain_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED_DOMAIN_LISTS", traits: {"smithy.api#enumValue" => "AWS_MANAGED_DOMAIN_LISTS"}))
    ResourceManagedType.add_member(:active_threat_defense, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_THREAT_DEFENSE", traits: {"smithy.api#enumValue" => "ACTIVE_THREAT_DEFENSE"}))
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
    RuleGroupMetadata.type = Types::RuleGroupMetadata
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
      service.traits = {"aws.api#service" => {"sdkId" => "Network Firewall", "arnNamespace" => "network-firewall", "cloudFormationName" => "NetworkFirewall", "cloudTrailEventSource" => "networkfirewall.amazonaws.com", "endpointPrefix" => "network-firewall"}, "aws.auth#sigv4" => {"name" => "network-firewall"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Network Firewall"}
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
      service.add_operation(:update_firewall_analysis_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallAnalysisSettings"
        operation.name = "UpdateFirewallAnalysisSettings"
        operation.input = UpdateFirewallAnalysisSettingsRequest
        operation.output = UpdateFirewallAnalysisSettingsResponse
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
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
