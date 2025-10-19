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

    AZSyncState.add_member(:attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    AZSyncState.type = Types::AZSyncState
    AcceptNetworkFirewallTransitGatewayAttachmentRequest.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    AcceptNetworkFirewallTransitGatewayAttachmentRequest.type = Types::AcceptNetworkFirewallTransitGatewayAttachmentRequest
    AcceptNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    AcceptNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentStatus, location_name: "TransitGatewayAttachmentStatus", traits: {"smithy.api#required" => {}}))
    AcceptNetworkFirewallTransitGatewayAttachmentResponse.type = Types::AcceptNetworkFirewallTransitGatewayAttachmentResponse
    ActionDefinition.add_member(:publish_metric_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublishMetricAction, location_name: "PublishMetricAction"))
    ActionDefinition.type = Types::ActionDefinition
    Address.add_member(:address_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddressDefinition, location_name: "AddressDefinition", traits: {"smithy.api#required" => {}}))
    Address.type = Types::Address
    Addresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address)
    AnalysisReport.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisReportId, location_name: "AnalysisReportId"))
    AnalysisReport.add_member(:analysis_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledAnalysisType, location_name: "AnalysisType"))
    AnalysisReport.add_member(:report_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTime, location_name: "ReportTime"))
    AnalysisReport.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    AnalysisReport.type = Types::AnalysisReport
    AnalysisReportResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisTypeReportResult)
    AnalysisReports.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisReport)
    AnalysisResult.add_member(:identified_rule_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdList, location_name: "IdentifiedRuleIds"))
    AnalysisResult.add_member(:identified_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifiedType, location_name: "IdentifiedType"))
    AnalysisResult.add_member(:analysis_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString, location_name: "AnalysisDetail"))
    AnalysisResult.type = Types::AnalysisResult
    AnalysisResultList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResult)
    AnalysisTypeReportResult.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString, location_name: "Protocol"))
    AnalysisTypeReportResult.add_member(:first_accessed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirstAccessed, location_name: "FirstAccessed"))
    AnalysisTypeReportResult.add_member(:last_accessed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastAccessed, location_name: "LastAccessed"))
    AnalysisTypeReportResult.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    AnalysisTypeReportResult.add_member(:hits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hits, location_name: "Hits"))
    AnalysisTypeReportResult.add_member(:unique_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueSources, location_name: "UniqueSources"))
    AnalysisTypeReportResult.type = Types::AnalysisTypeReportResult
    AssociateAvailabilityZonesRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateAvailabilityZonesRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateAvailabilityZonesRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateAvailabilityZonesRequest.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMappings, location_name: "AvailabilityZoneMappings", traits: {"smithy.api#required" => {}}))
    AssociateAvailabilityZonesRequest.type = Types::AssociateAvailabilityZonesRequest
    AssociateAvailabilityZonesResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateAvailabilityZonesResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateAvailabilityZonesResponse.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMappings, location_name: "AvailabilityZoneMappings"))
    AssociateAvailabilityZonesResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateAvailabilityZonesResponse.type = Types::AssociateAvailabilityZonesResponse
    AssociateFirewallPolicyRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateFirewallPolicyRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateFirewallPolicyRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateFirewallPolicyRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn", traits: {"smithy.api#required" => {}}))
    AssociateFirewallPolicyRequest.type = Types::AssociateFirewallPolicyRequest
    AssociateFirewallPolicyResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateFirewallPolicyResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateFirewallPolicyResponse.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    AssociateFirewallPolicyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateFirewallPolicyResponse.type = Types::AssociateFirewallPolicyResponse
    AssociateSubnetsRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateSubnetsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateSubnetsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateSubnetsRequest.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings", traits: {"smithy.api#required" => {}}))
    AssociateSubnetsRequest.type = Types::AssociateSubnetsRequest
    AssociateSubnetsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    AssociateSubnetsResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    AssociateSubnetsResponse.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    AssociateSubnetsResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    AssociateSubnetsResponse.type = Types::AssociateSubnetsResponse
    AssociationSyncState.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    AssociationSyncState.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AZSyncState)
    Attachment.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzSubnet, location_name: "SubnetId"))
    Attachment.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    Attachment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: "Status"))
    Attachment.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    Attachment.type = Types::Attachment
    AttachmentStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AttachmentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AttachmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AttachmentStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    AttachmentStatus.add_member(:scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCALING", traits: {"smithy.api#enumValue" => "SCALING"}))
    AttachmentStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    AvailabilityZoneMapping.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMappingString, location_name: "AvailabilityZone", traits: {"smithy.api#required" => {}}))
    AvailabilityZoneMapping.type = Types::AvailabilityZoneMapping
    AvailabilityZoneMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMapping)
    AvailabilityZoneMetadata.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: "IPAddressType"))
    AvailabilityZoneMetadata.type = Types::AvailabilityZoneMetadata
    AzSubnets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzSubnet)
    CIDRSummary.add_member(:available_cidr_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDRCount, location_name: "AvailableCIDRCount"))
    CIDRSummary.add_member(:utilized_cidr_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDRCount, location_name: "UtilizedCIDRCount"))
    CIDRSummary.add_member(:ip_set_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetMetadataMap, location_name: "IPSetReferences"))
    CIDRSummary.type = Types::CIDRSummary
    CapacityUsageSummary.add_member(:cid_rs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDRSummary, location_name: "CIDRs"))
    CapacityUsageSummary.type = Types::CapacityUsageSummary
    Certificates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TlsCertificateData)
    CheckCertificateRevocationStatusActions.add_member(:revoked_status_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationCheckAction, location_name: "RevokedStatusAction"))
    CheckCertificateRevocationStatusActions.add_member(:unknown_status_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationCheckAction, location_name: "UnknownStatusAction"))
    CheckCertificateRevocationStatusActions.type = Types::CheckCertificateRevocationStatusActions
    ConfigurationSyncState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ConfigurationSyncState.add_member(:in_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    ConfigurationSyncState.add_member(:capacity_constrained, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPACITY_CONSTRAINED", traits: {"smithy.api#enumValue" => "CAPACITY_CONSTRAINED"}))
    CreateFirewallPolicyRequest.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallPolicyName", traits: {"smithy.api#required" => {}}))
    CreateFirewallPolicyRequest.add_member(:firewall_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicy, location_name: "FirewallPolicy", traits: {"smithy.api#required" => {}}))
    CreateFirewallPolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFirewallPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFirewallPolicyRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun", traits: {"smithy.api#default" => false}))
    CreateFirewallPolicyRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateFirewallPolicyRequest.type = Types::CreateFirewallPolicyRequest
    CreateFirewallPolicyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    CreateFirewallPolicyResponse.add_member(:firewall_policy_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicyResponse, location_name: "FirewallPolicyResponse", traits: {"smithy.api#required" => {}}))
    CreateFirewallPolicyResponse.type = Types::CreateFirewallPolicyResponse
    CreateFirewallRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName", traits: {"smithy.api#required" => {}}))
    CreateFirewallRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn", traits: {"smithy.api#required" => {}}))
    CreateFirewallRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    CreateFirewallRequest.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    CreateFirewallRequest.add_member(:delete_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteProtection", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.add_member(:subnet_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "SubnetChangeProtection", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.add_member(:firewall_policy_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "FirewallPolicyChangeProtection", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFirewallRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFirewallRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateFirewallRequest.add_member(:enabled_analysis_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledAnalysisTypes, location_name: "EnabledAnalysisTypes"))
    CreateFirewallRequest.add_member(:transit_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayId, location_name: "TransitGatewayId"))
    CreateFirewallRequest.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMappings, location_name: "AvailabilityZoneMappings"))
    CreateFirewallRequest.add_member(:availability_zone_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AvailabilityZoneChangeProtection", traits: {"smithy.api#default" => false}))
    CreateFirewallRequest.type = Types::CreateFirewallRequest
    CreateFirewallResponse.add_member(:firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Firewall, location_name: "Firewall"))
    CreateFirewallResponse.add_member(:firewall_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallStatus, location_name: "FirewallStatus"))
    CreateFirewallResponse.type = Types::CreateFirewallResponse
    CreateRuleGroupRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    CreateRuleGroupRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesString, location_name: "Rules"))
    CreateRuleGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateRuleGroupRequest.add_member(:capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "Capacity", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRuleGroupRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun", traits: {"smithy.api#default" => false}))
    CreateRuleGroupRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateRuleGroupRequest.add_member(:source_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceMetadata, location_name: "SourceMetadata"))
    CreateRuleGroupRequest.add_member(:analyze_rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AnalyzeRuleGroup", traits: {"smithy.api#default" => false}))
    CreateRuleGroupRequest.add_member(:summary_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryConfiguration, location_name: "SummaryConfiguration"))
    CreateRuleGroupRequest.type = Types::CreateRuleGroupRequest
    CreateRuleGroupResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupResponse.add_member(:rule_group_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupResponse, location_name: "RuleGroupResponse", traits: {"smithy.api#required" => {}}))
    CreateRuleGroupResponse.type = Types::CreateRuleGroupResponse
    CreateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "TLSInspectionConfigurationName", traits: {"smithy.api#required" => {}}))
    CreateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfiguration, location_name: "TLSInspectionConfiguration", traits: {"smithy.api#required" => {}}))
    CreateTLSInspectionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateTLSInspectionConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTLSInspectionConfigurationRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateTLSInspectionConfigurationRequest.type = Types::CreateTLSInspectionConfigurationRequest
    CreateTLSInspectionConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    CreateTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfigurationResponse, location_name: "TLSInspectionConfigurationResponse", traits: {"smithy.api#required" => {}}))
    CreateTLSInspectionConfigurationResponse.type = Types::CreateTLSInspectionConfigurationResponse
    CreateVpcEndpointAssociationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointAssociationRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointAssociationRequest.add_member(:subnet_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMapping, location_name: "SubnetMapping", traits: {"smithy.api#required" => {}}))
    CreateVpcEndpointAssociationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateVpcEndpointAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVpcEndpointAssociationRequest.type = Types::CreateVpcEndpointAssociationRequest
    CreateVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointAssociation, location_name: "VpcEndpointAssociation"))
    CreateVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointAssociationStatus, location_name: "VpcEndpointAssociationStatus"))
    CreateVpcEndpointAssociationResponse.type = Types::CreateVpcEndpointAssociationResponse
    CustomAction.add_member(:action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: "ActionName", traits: {"smithy.api#required" => {}}))
    CustomAction.add_member(:action_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDefinition, location_name: "ActionDefinition", traits: {"smithy.api#required" => {}}))
    CustomAction.type = Types::CustomAction
    CustomActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAction)
    DeleteFirewallPolicyRequest.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallPolicyName"))
    DeleteFirewallPolicyRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    DeleteFirewallPolicyRequest.type = Types::DeleteFirewallPolicyRequest
    DeleteFirewallPolicyResponse.add_member(:firewall_policy_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicyResponse, location_name: "FirewallPolicyResponse", traits: {"smithy.api#required" => {}}))
    DeleteFirewallPolicyResponse.type = Types::DeleteFirewallPolicyResponse
    DeleteFirewallRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DeleteFirewallRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DeleteFirewallRequest.type = Types::DeleteFirewallRequest
    DeleteFirewallResponse.add_member(:firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Firewall, location_name: "Firewall"))
    DeleteFirewallResponse.add_member(:firewall_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallStatus, location_name: "FirewallStatus"))
    DeleteFirewallResponse.type = Types::DeleteFirewallResponse
    DeleteNetworkFirewallTransitGatewayAttachmentRequest.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    DeleteNetworkFirewallTransitGatewayAttachmentRequest.type = Types::DeleteNetworkFirewallTransitGatewayAttachmentRequest
    DeleteNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    DeleteNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentStatus, location_name: "TransitGatewayAttachmentStatus", traits: {"smithy.api#required" => {}}))
    DeleteNetworkFirewallTransitGatewayAttachmentResponse.type = Types::DeleteNetworkFirewallTransitGatewayAttachmentResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DeleteRuleGroupRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    DeleteRuleGroupRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    DeleteRuleGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DeleteRuleGroupRequest.type = Types::DeleteRuleGroupRequest
    DeleteRuleGroupResponse.add_member(:rule_group_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupResponse, location_name: "RuleGroupResponse", traits: {"smithy.api#required" => {}}))
    DeleteRuleGroupResponse.type = Types::DeleteRuleGroupResponse
    DeleteTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn"))
    DeleteTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "TLSInspectionConfigurationName"))
    DeleteTLSInspectionConfigurationRequest.type = Types::DeleteTLSInspectionConfigurationRequest
    DeleteTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfigurationResponse, location_name: "TLSInspectionConfigurationResponse", traits: {"smithy.api#required" => {}}))
    DeleteTLSInspectionConfigurationResponse.type = Types::DeleteTLSInspectionConfigurationResponse
    DeleteVpcEndpointAssociationRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn", traits: {"smithy.api#required" => {}}))
    DeleteVpcEndpointAssociationRequest.type = Types::DeleteVpcEndpointAssociationRequest
    DeleteVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointAssociation, location_name: "VpcEndpointAssociation"))
    DeleteVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointAssociationStatus, location_name: "VpcEndpointAssociationStatus"))
    DeleteVpcEndpointAssociationResponse.type = Types::DeleteVpcEndpointAssociationResponse
    DescribeFirewallMetadataRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeFirewallMetadataRequest.type = Types::DescribeFirewallMetadataRequest
    DescribeFirewallMetadataResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeFirewallMetadataResponse.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    DescribeFirewallMetadataResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeFirewallMetadataResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallStatusValue, location_name: "Status"))
    DescribeFirewallMetadataResponse.add_member(:supported_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedAvailabilityZones, location_name: "SupportedAvailabilityZones"))
    DescribeFirewallMetadataResponse.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId"))
    DescribeFirewallMetadataResponse.type = Types::DescribeFirewallMetadataResponse
    DescribeFirewallPolicyRequest.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallPolicyName"))
    DescribeFirewallPolicyRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    DescribeFirewallPolicyRequest.type = Types::DescribeFirewallPolicyRequest
    DescribeFirewallPolicyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    DescribeFirewallPolicyResponse.add_member(:firewall_policy_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicyResponse, location_name: "FirewallPolicyResponse", traits: {"smithy.api#required" => {}}))
    DescribeFirewallPolicyResponse.add_member(:firewall_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicy, location_name: "FirewallPolicy"))
    DescribeFirewallPolicyResponse.type = Types::DescribeFirewallPolicyResponse
    DescribeFirewallRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DescribeFirewallRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeFirewallRequest.type = Types::DescribeFirewallRequest
    DescribeFirewallResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    DescribeFirewallResponse.add_member(:firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Firewall, location_name: "Firewall"))
    DescribeFirewallResponse.add_member(:firewall_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallStatus, location_name: "FirewallStatus"))
    DescribeFirewallResponse.type = Types::DescribeFirewallResponse
    DescribeFlowOperationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    DescribeFlowOperationRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    DescribeFlowOperationRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn"))
    DescribeFlowOperationRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    DescribeFlowOperationRequest.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationId, location_name: "FlowOperationId", traits: {"smithy.api#required" => {}}))
    DescribeFlowOperationRequest.type = Types::DescribeFlowOperationRequest
    DescribeFlowOperationResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeFlowOperationResponse.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    DescribeFlowOperationResponse.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn"))
    DescribeFlowOperationResponse.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    DescribeFlowOperationResponse.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationId, location_name: "FlowOperationId"))
    DescribeFlowOperationResponse.add_member(:flow_operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationType, location_name: "FlowOperationType"))
    DescribeFlowOperationResponse.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationStatus, location_name: "FlowOperationStatus"))
    DescribeFlowOperationResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusMessage"))
    DescribeFlowOperationResponse.add_member(:flow_request_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowRequestTimestamp, location_name: "FlowRequestTimestamp"))
    DescribeFlowOperationResponse.add_member(:flow_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperation, location_name: "FlowOperation"))
    DescribeFlowOperationResponse.type = Types::DescribeFlowOperationResponse
    DescribeLoggingConfigurationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeLoggingConfigurationRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DescribeLoggingConfigurationRequest.type = Types::DescribeLoggingConfigurationRequest
    DescribeLoggingConfigurationResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DescribeLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    DescribeLoggingConfigurationResponse.add_member(:enable_monitoring_dashboard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableMonitoringDashboard, location_name: "EnableMonitoringDashboard"))
    DescribeLoggingConfigurationResponse.type = Types::DescribeLoggingConfigurationResponse
    DescribeResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DescribeResourcePolicyRequest.type = Types::DescribeResourcePolicyRequest
    DescribeResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: "Policy"))
    DescribeResourcePolicyResponse.type = Types::DescribeResourcePolicyResponse
    DescribeRuleGroupMetadataRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    DescribeRuleGroupMetadataRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    DescribeRuleGroupMetadataRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DescribeRuleGroupMetadataRequest.type = Types::DescribeRuleGroupMetadataRequest
    DescribeRuleGroupMetadataResponse.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupMetadataResponse.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupMetadataResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeRuleGroupMetadataResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DescribeRuleGroupMetadataResponse.add_member(:capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "Capacity"))
    DescribeRuleGroupMetadataResponse.add_member(:stateful_rule_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleOptions, location_name: "StatefulRuleOptions"))
    DescribeRuleGroupMetadataResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastModifiedTime"))
    DescribeRuleGroupMetadataResponse.type = Types::DescribeRuleGroupMetadataResponse
    DescribeRuleGroupRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    DescribeRuleGroupRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    DescribeRuleGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DescribeRuleGroupRequest.add_member(:analyze_rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AnalyzeRuleGroup", traits: {"smithy.api#default" => false}))
    DescribeRuleGroupRequest.type = Types::DescribeRuleGroupRequest
    DescribeRuleGroupResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupResponse.add_member(:rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    DescribeRuleGroupResponse.add_member(:rule_group_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupResponse, location_name: "RuleGroupResponse", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupResponse.type = Types::DescribeRuleGroupResponse
    DescribeRuleGroupSummaryRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    DescribeRuleGroupSummaryRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    DescribeRuleGroupSummaryRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    DescribeRuleGroupSummaryRequest.type = Types::DescribeRuleGroupSummaryRequest
    DescribeRuleGroupSummaryResponse.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName", traits: {"smithy.api#required" => {}}))
    DescribeRuleGroupSummaryResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeRuleGroupSummaryResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Summary, location_name: "Summary"))
    DescribeRuleGroupSummaryResponse.type = Types::DescribeRuleGroupSummaryResponse
    DescribeTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn"))
    DescribeTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "TLSInspectionConfigurationName"))
    DescribeTLSInspectionConfigurationRequest.type = Types::DescribeTLSInspectionConfigurationRequest
    DescribeTLSInspectionConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    DescribeTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfiguration, location_name: "TLSInspectionConfiguration"))
    DescribeTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfigurationResponse, location_name: "TLSInspectionConfigurationResponse", traits: {"smithy.api#required" => {}}))
    DescribeTLSInspectionConfigurationResponse.type = Types::DescribeTLSInspectionConfigurationResponse
    DescribeVpcEndpointAssociationRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn", traits: {"smithy.api#required" => {}}))
    DescribeVpcEndpointAssociationRequest.type = Types::DescribeVpcEndpointAssociationRequest
    DescribeVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointAssociation, location_name: "VpcEndpointAssociation"))
    DescribeVpcEndpointAssociationResponse.add_member(:vpc_endpoint_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointAssociationStatus, location_name: "VpcEndpointAssociationStatus"))
    DescribeVpcEndpointAssociationResponse.type = Types::DescribeVpcEndpointAssociationResponse
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Dimension.type = Types::Dimension
    Dimensions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension)
    DisassociateAvailabilityZonesRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    DisassociateAvailabilityZonesRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DisassociateAvailabilityZonesRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DisassociateAvailabilityZonesRequest.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMappings, location_name: "AvailabilityZoneMappings", traits: {"smithy.api#required" => {}}))
    DisassociateAvailabilityZonesRequest.type = Types::DisassociateAvailabilityZonesRequest
    DisassociateAvailabilityZonesResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DisassociateAvailabilityZonesResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DisassociateAvailabilityZonesResponse.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMappings, location_name: "AvailabilityZoneMappings"))
    DisassociateAvailabilityZonesResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    DisassociateAvailabilityZonesResponse.type = Types::DisassociateAvailabilityZonesResponse
    DisassociateSubnetsRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    DisassociateSubnetsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DisassociateSubnetsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DisassociateSubnetsRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzSubnets, location_name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    DisassociateSubnetsRequest.type = Types::DisassociateSubnetsRequest
    DisassociateSubnetsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    DisassociateSubnetsResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    DisassociateSubnetsResponse.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings"))
    DisassociateSubnetsResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    DisassociateSubnetsResponse.type = Types::DisassociateSubnetsResponse
    EnabledAnalysisType.add_member(:tls_sni, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLS_SNI", traits: {"smithy.api#enumValue" => "TLS_SNI"}))
    EnabledAnalysisType.add_member(:http_host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP_HOST", traits: {"smithy.api#enumValue" => "HTTP_HOST"}))
    EnabledAnalysisTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledAnalysisType)
    EncryptionConfiguration.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyId, location_name: "KeyId"))
    EncryptionConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionType.add_member(:customer_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER_KMS", traits: {"smithy.api#enumValue" => "CUSTOMER_KMS"}))
    EncryptionType.add_member(:aws_owned_kms_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_OWNED_KMS_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    Firewall.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    Firewall.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    Firewall.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn", traits: {"smithy.api#required" => {}}))
    Firewall.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId", traits: {"smithy.api#required" => {}}))
    Firewall.add_member(:subnet_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMappings, location_name: "SubnetMappings", traits: {"smithy.api#required" => {}}))
    Firewall.add_member(:delete_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteProtection", traits: {"smithy.api#default" => false}))
    Firewall.add_member(:subnet_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "SubnetChangeProtection", traits: {"smithy.api#default" => false}))
    Firewall.add_member(:firewall_policy_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "FirewallPolicyChangeProtection", traits: {"smithy.api#default" => false}))
    Firewall.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Firewall.add_member(:firewall_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallId", traits: {"smithy.api#required" => {}}))
    Firewall.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Firewall.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    Firewall.add_member(:number_of_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "NumberOfAssociations"))
    Firewall.add_member(:enabled_analysis_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledAnalysisTypes, location_name: "EnabledAnalysisTypes"))
    Firewall.add_member(:transit_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayId, location_name: "TransitGatewayId"))
    Firewall.add_member(:transit_gateway_owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "TransitGatewayOwnerAccountId"))
    Firewall.add_member(:availability_zone_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMappings, location_name: "AvailabilityZoneMappings"))
    Firewall.add_member(:availability_zone_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AvailabilityZoneChangeProtection", traits: {"smithy.api#default" => false}))
    Firewall.type = Types::Firewall
    FirewallMetadata.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    FirewallMetadata.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    FirewallMetadata.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId"))
    FirewallMetadata.type = Types::FirewallMetadata
    FirewallPolicies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicyMetadata)
    FirewallPolicy.add_member(:stateless_rule_group_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessRuleGroupReferences, location_name: "StatelessRuleGroupReferences"))
    FirewallPolicy.add_member(:stateless_default_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessActions, location_name: "StatelessDefaultActions", traits: {"smithy.api#required" => {}}))
    FirewallPolicy.add_member(:stateless_fragment_default_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessActions, location_name: "StatelessFragmentDefaultActions", traits: {"smithy.api#required" => {}}))
    FirewallPolicy.add_member(:stateless_custom_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActions, location_name: "StatelessCustomActions"))
    FirewallPolicy.add_member(:stateful_rule_group_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleGroupReferences, location_name: "StatefulRuleGroupReferences"))
    FirewallPolicy.add_member(:stateful_default_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulActions, location_name: "StatefulDefaultActions"))
    FirewallPolicy.add_member(:stateful_engine_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulEngineOptions, location_name: "StatefulEngineOptions"))
    FirewallPolicy.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn"))
    FirewallPolicy.add_member(:policy_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVariables, location_name: "PolicyVariables"))
    FirewallPolicy.add_member(:enable_tls_session_holding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableTLSSessionHolding, location_name: "EnableTLSSessionHolding"))
    FirewallPolicy.type = Types::FirewallPolicy
    FirewallPolicyMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    FirewallPolicyMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    FirewallPolicyMetadata.type = Types::FirewallPolicyMetadata
    FirewallPolicyResponse.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallPolicyName", traits: {"smithy.api#required" => {}}))
    FirewallPolicyResponse.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn", traits: {"smithy.api#required" => {}}))
    FirewallPolicyResponse.add_member(:firewall_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallPolicyId", traits: {"smithy.api#required" => {}}))
    FirewallPolicyResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    FirewallPolicyResponse.add_member(:firewall_policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "FirewallPolicyStatus"))
    FirewallPolicyResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    FirewallPolicyResponse.add_member(:consumed_stateless_rule_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "ConsumedStatelessRuleCapacity"))
    FirewallPolicyResponse.add_member(:consumed_stateful_rule_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "ConsumedStatefulRuleCapacity"))
    FirewallPolicyResponse.add_member(:number_of_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "NumberOfAssociations"))
    FirewallPolicyResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    FirewallPolicyResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastModifiedTime"))
    FirewallPolicyResponse.type = Types::FirewallPolicyResponse
    FirewallStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallStatusValue, location_name: "Status", traits: {"smithy.api#required" => {}}))
    FirewallStatus.add_member(:configuration_sync_state_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSyncState, location_name: "ConfigurationSyncStateSummary", traits: {"smithy.api#required" => {}}))
    FirewallStatus.add_member(:sync_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStates, location_name: "SyncStates"))
    FirewallStatus.add_member(:capacity_usage_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUsageSummary, location_name: "CapacityUsageSummary"))
    FirewallStatus.add_member(:transit_gateway_attachment_sync_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentSyncState, location_name: "TransitGatewayAttachmentSyncState"))
    FirewallStatus.type = Types::FirewallStatus
    FirewallStatusValue.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    FirewallStatusValue.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallStatusValue.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    Firewalls.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallMetadata)
    Flags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TCPFlag)
    Flow.add_member(:source_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: "SourceAddress"))
    Flow.add_member(:destination_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: "DestinationAddress"))
    Flow.add_member(:source_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "SourcePort"))
    Flow.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "DestinationPort"))
    Flow.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolString, location_name: "Protocol"))
    Flow.add_member(:age, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Age, location_name: "Age"))
    Flow.add_member(:packet_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PacketCount, location_name: "PacketCount"))
    Flow.add_member(:byte_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteCount, location_name: "ByteCount", traits: {"smithy.api#default" => 0}))
    Flow.type = Types::Flow
    FlowFilter.add_member(:source_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: "SourceAddress"))
    FlowFilter.add_member(:destination_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address, location_name: "DestinationAddress"))
    FlowFilter.add_member(:source_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "SourcePort"))
    FlowFilter.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "DestinationPort"))
    FlowFilter.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolStrings, location_name: "Protocols"))
    FlowFilter.type = Types::FlowFilter
    FlowFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowFilter)
    FlowOperation.add_member(:minimum_flow_age_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Age, location_name: "MinimumFlowAgeInSeconds"))
    FlowOperation.add_member(:flow_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowFilters, location_name: "FlowFilters"))
    FlowOperation.type = Types::FlowOperation
    FlowOperationMetadata.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationId, location_name: "FlowOperationId"))
    FlowOperationMetadata.add_member(:flow_operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationType, location_name: "FlowOperationType"))
    FlowOperationMetadata.add_member(:flow_request_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowRequestTimestamp, location_name: "FlowRequestTimestamp"))
    FlowOperationMetadata.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationStatus, location_name: "FlowOperationStatus"))
    FlowOperationMetadata.type = Types::FlowOperationMetadata
    FlowOperationStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    FlowOperationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    FlowOperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FlowOperationStatus.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    FlowOperationType.add_member(:flow_flush, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLOW_FLUSH", traits: {"smithy.api#enumValue" => "FLOW_FLUSH"}))
    FlowOperationType.add_member(:flow_capture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLOW_CAPTURE", traits: {"smithy.api#enumValue" => "FLOW_CAPTURE"}))
    FlowOperations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationMetadata)
    FlowTimeouts.add_member(:tcp_idle_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TcpIdleTimeoutRangeBound, location_name: "TcpIdleTimeoutSeconds"))
    FlowTimeouts.type = Types::FlowTimeouts
    Flows.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Flow)
    GeneratedRulesType.add_member(:allowlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOWLIST", traits: {"smithy.api#enumValue" => "ALLOWLIST"}))
    GeneratedRulesType.add_member(:denylist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENYLIST", traits: {"smithy.api#enumValue" => "DENYLIST"}))
    GeneratedRulesType.add_member(:rejectlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTLIST", traits: {"smithy.api#enumValue" => "REJECTLIST"}))
    GeneratedRulesType.add_member(:alertlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALERTLIST", traits: {"smithy.api#enumValue" => "ALERTLIST"}))
    GetAnalysisReportResultsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    GetAnalysisReportResultsRequest.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisReportId, location_name: "AnalysisReportId", traits: {"smithy.api#required" => {}}))
    GetAnalysisReportResultsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    GetAnalysisReportResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisReportNextToken, location_name: "NextToken"))
    GetAnalysisReportResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    GetAnalysisReportResultsRequest.type = Types::GetAnalysisReportResultsRequest
    GetAnalysisReportResultsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetAnalysisReportResultsResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    GetAnalysisReportResultsResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    GetAnalysisReportResultsResponse.add_member(:report_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportTime, location_name: "ReportTime"))
    GetAnalysisReportResultsResponse.add_member(:analysis_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledAnalysisType, location_name: "AnalysisType"))
    GetAnalysisReportResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisReportNextToken, location_name: "NextToken"))
    GetAnalysisReportResultsResponse.add_member(:analysis_report_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisReportResults, location_name: "AnalysisReportResults"))
    GetAnalysisReportResultsResponse.type = Types::GetAnalysisReportResultsResponse
    Header.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleProtocol, location_name: "Protocol", traits: {"smithy.api#required" => {}}))
    Header.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: "Source", traits: {"smithy.api#required" => {}}))
    Header.add_member(:source_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "SourcePort", traits: {"smithy.api#required" => {}}))
    Header.add_member(:direction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleDirection, location_name: "Direction", traits: {"smithy.api#required" => {}}))
    Header.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: "Destination", traits: {"smithy.api#required" => {}}))
    Header.add_member(:destination_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "DestinationPort", traits: {"smithy.api#required" => {}}))
    Header.type = Types::Header
    Hits.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "Count", traits: {"smithy.api#default" => 0}))
    Hits.type = Types::Hits
    IPAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUALSTACK", traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    IPAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IPAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    IPSet.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableDefinitionList, location_name: "Definition", traits: {"smithy.api#required" => {}}))
    IPSet.type = Types::IPSet
    IPSetMetadata.add_member(:resolved_cidr_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDRCount, location_name: "ResolvedCIDRCount"))
    IPSetMetadata.type = Types::IPSetMetadata
    IPSetMetadataMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetArn)
    IPSetMetadataMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetMetadata)
    IPSetReference.add_member(:reference_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ReferenceArn"))
    IPSetReference.type = Types::IPSetReference
    IPSetReferenceMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetReferenceName)
    IPSetReferenceMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetReference)
    IPSets.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVariableName)
    IPSets.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSet)
    IdentifiedType.add_member(:stateless_rule_forwarding_asymmetrically, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATELESS_RULE_FORWARDING_ASYMMETRICALLY", traits: {"smithy.api#enumValue" => "STATELESS_RULE_FORWARDING_ASYMMETRICALLY"}))
    IdentifiedType.add_member(:stateless_rule_contains_tcp_flags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATELESS_RULE_CONTAINS_TCP_FLAGS", traits: {"smithy.api#enumValue" => "STATELESS_RULE_CONTAINS_TCP_FLAGS"}))
    InsufficientCapacityException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.type = Types::InternalServerError
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidResourcePolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidResourcePolicyException.type = Types::InvalidResourcePolicyException
    InvalidTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidTokenException.type = Types::InvalidTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAnalysisReportsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    ListAnalysisReportsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    ListAnalysisReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAnalysisReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListAnalysisReportsRequest.type = Types::ListAnalysisReportsRequest
    ListAnalysisReportsResponse.add_member(:analysis_reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisReports, location_name: "AnalysisReports"))
    ListAnalysisReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAnalysisReportsResponse.type = Types::ListAnalysisReportsResponse
    ListFirewallPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFirewallPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListFirewallPoliciesRequest.type = Types::ListFirewallPoliciesRequest
    ListFirewallPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFirewallPoliciesResponse.add_member(:firewall_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicies, location_name: "FirewallPolicies"))
    ListFirewallPoliciesResponse.type = Types::ListFirewallPoliciesResponse
    ListFirewallsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFirewallsRequest.add_member(:vpc_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIds, location_name: "VpcIds"))
    ListFirewallsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListFirewallsRequest.type = Types::ListFirewallsRequest
    ListFirewallsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFirewallsResponse.add_member(:firewalls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Firewalls, location_name: "Firewalls"))
    ListFirewallsResponse.type = Types::ListFirewallsResponse
    ListFlowOperationResultsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    ListFlowOperationResultsRequest.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationId, location_name: "FlowOperationId", traits: {"smithy.api#required" => {}}))
    ListFlowOperationResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFlowOperationResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListFlowOperationResultsRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    ListFlowOperationResultsRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    ListFlowOperationResultsRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn"))
    ListFlowOperationResultsRequest.type = Types::ListFlowOperationResultsRequest
    ListFlowOperationResultsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    ListFlowOperationResultsResponse.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    ListFlowOperationResultsResponse.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn"))
    ListFlowOperationResultsResponse.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    ListFlowOperationResultsResponse.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationId, location_name: "FlowOperationId"))
    ListFlowOperationResultsResponse.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationStatus, location_name: "FlowOperationStatus"))
    ListFlowOperationResultsResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusMessage"))
    ListFlowOperationResultsResponse.add_member(:flow_request_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowRequestTimestamp, location_name: "FlowRequestTimestamp"))
    ListFlowOperationResultsResponse.add_member(:flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Flows, location_name: "Flows"))
    ListFlowOperationResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFlowOperationResultsResponse.type = Types::ListFlowOperationResultsResponse
    ListFlowOperationsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    ListFlowOperationsRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    ListFlowOperationsRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn"))
    ListFlowOperationsRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    ListFlowOperationsRequest.add_member(:flow_operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationType, location_name: "FlowOperationType"))
    ListFlowOperationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFlowOperationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListFlowOperationsRequest.type = Types::ListFlowOperationsRequest
    ListFlowOperationsResponse.add_member(:flow_operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperations, location_name: "FlowOperations"))
    ListFlowOperationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListFlowOperationsResponse.type = Types::ListFlowOperationsResponse
    ListRuleGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRuleGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListRuleGroupsRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceManagedStatus, location_name: "Scope"))
    ListRuleGroupsRequest.add_member(:managed_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceManagedType, location_name: "ManagedType"))
    ListRuleGroupsRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    ListRuleGroupsRequest.type = Types::ListRuleGroupsRequest
    ListRuleGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListRuleGroupsResponse.add_member(:rule_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroups, location_name: "RuleGroups"))
    ListRuleGroupsResponse.type = Types::ListRuleGroupsResponse
    ListTLSInspectionConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTLSInspectionConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListTLSInspectionConfigurationsRequest.type = Types::ListTLSInspectionConfigurationsRequest
    ListTLSInspectionConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTLSInspectionConfigurationsResponse.add_member(:tls_inspection_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfigurations, location_name: "TLSInspectionConfigurations"))
    ListTLSInspectionConfigurationsResponse.type = Types::ListTLSInspectionConfigurationsResponse
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPaginationMaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVpcEndpointAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListVpcEndpointAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListVpcEndpointAssociationsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    ListVpcEndpointAssociationsRequest.type = Types::ListVpcEndpointAssociationsRequest
    ListVpcEndpointAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListVpcEndpointAssociationsResponse.add_member(:vpc_endpoint_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointAssociations, location_name: "VpcEndpointAssociations"))
    ListVpcEndpointAssociationsResponse.type = Types::ListVpcEndpointAssociationsResponse
    LogDestinationConfig.add_member(:log_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: "LogType", traits: {"smithy.api#required" => {}}))
    LogDestinationConfig.add_member(:log_destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: "LogDestinationType", traits: {"smithy.api#required" => {}}))
    LogDestinationConfig.add_member(:log_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationMap, location_name: "LogDestination", traits: {"smithy.api#required" => {}}))
    LogDestinationConfig.type = Types::LogDestinationConfig
    LogDestinationConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationConfig)
    LogDestinationMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashMapKey)
    LogDestinationMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HashMapValue)
    LogDestinationPermissionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LogDestinationPermissionException.type = Types::LogDestinationPermissionException
    LogDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    LogDestinationType.add_member(:cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUDWATCH_LOGS", traits: {"smithy.api#enumValue" => "CloudWatchLogs"}))
    LogDestinationType.add_member(:kinesis_data_firehose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KINESIS_DATA_FIREHOSE", traits: {"smithy.api#enumValue" => "KinesisDataFirehose"}))
    LogType.add_member(:alert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    LogType.add_member(:flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLOW", traits: {"smithy.api#enumValue" => "FLOW"}))
    LogType.add_member(:tls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    LoggingConfiguration.add_member(:log_destination_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationConfigs, location_name: "LogDestinationConfigs", traits: {"smithy.api#required" => {}}))
    LoggingConfiguration.type = Types::LoggingConfiguration
    MatchAttributes.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addresses, location_name: "Sources"))
    MatchAttributes.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addresses, location_name: "Destinations"))
    MatchAttributes.add_member(:source_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "SourcePorts"))
    MatchAttributes.add_member(:destination_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "DestinationPorts"))
    MatchAttributes.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolNumbers, location_name: "Protocols"))
    MatchAttributes.add_member(:tcp_flags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TCPFlags, location_name: "TCPFlags"))
    MatchAttributes.type = Types::MatchAttributes
    OverrideAction.add_member(:drop_to_alert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DROP_TO_ALERT", traits: {"smithy.api#enumValue" => "DROP_TO_ALERT"}))
    PerObjectStatus.add_member(:sync_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerObjectSyncStatus, location_name: "SyncStatus"))
    PerObjectStatus.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    PerObjectStatus.type = Types::PerObjectStatus
    PerObjectSyncStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    PerObjectSyncStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    PerObjectSyncStatus.add_member(:capacity_constrained, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CAPACITY_CONSTRAINED", traits: {"smithy.api#enumValue" => "CAPACITY_CONSTRAINED"}))
    PolicyVariables.add_member(:rule_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSets, location_name: "RuleVariables"))
    PolicyVariables.type = Types::PolicyVariables
    PortRange.add_member(:from_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeBound, location_name: "FromPort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PortRange.add_member(:to_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRangeBound, location_name: "ToPort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PortRange.type = Types::PortRange
    PortRanges.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRange)
    PortSet.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableDefinitionList, location_name: "Definition"))
    PortSet.type = Types::PortSet
    PortSets.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVariableName)
    PortSets.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortSet)
    ProtocolNumbers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolNumber)
    ProtocolStrings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolString)
    PublishMetricAction.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions", traits: {"smithy.api#required" => {}}))
    PublishMetricAction.type = Types::PublishMetricAction
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyString, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    ReferenceSets.add_member(:ip_set_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSetReferenceMap, location_name: "IPSetReferences"))
    ReferenceSets.type = Types::ReferenceSets
    RejectNetworkFirewallTransitGatewayAttachmentRequest.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    RejectNetworkFirewallTransitGatewayAttachmentRequest.type = Types::RejectNetworkFirewallTransitGatewayAttachmentRequest
    RejectNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentId, location_name: "TransitGatewayAttachmentId", traits: {"smithy.api#required" => {}}))
    RejectNetworkFirewallTransitGatewayAttachmentResponse.add_member(:transit_gateway_attachment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentStatus, location_name: "TransitGatewayAttachmentStatus", traits: {"smithy.api#required" => {}}))
    RejectNetworkFirewallTransitGatewayAttachmentResponse.type = Types::RejectNetworkFirewallTransitGatewayAttachmentResponse
    ResourceManagedStatus.add_member(:managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    ResourceManagedStatus.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ResourceManagedType.add_member(:aws_managed_threat_signatures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_MANAGED_THREAT_SIGNATURES", traits: {"smithy.api#enumValue" => "AWS_MANAGED_THREAT_SIGNATURES"}))
    ResourceManagedType.add_member(:aws_managed_domain_lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_MANAGED_DOMAIN_LISTS", traits: {"smithy.api#enumValue" => "AWS_MANAGED_DOMAIN_LISTS"}))
    ResourceManagedType.add_member(:active_threat_defense, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE_THREAT_DEFENSE", traits: {"smithy.api#enumValue" => "ACTIVE_THREAT_DEFENSE"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceOwnerCheckException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceOwnerCheckException.type = Types::ResourceOwnerCheckException
    ResourceStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResourceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResourceStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    RevocationCheckAction.add_member(:pass, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    RevocationCheckAction.add_member(:drop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    RevocationCheckAction.add_member(:reject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    RuleDefinition.add_member(:match_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAttributes, location_name: "MatchAttributes", traits: {"smithy.api#required" => {}}))
    RuleDefinition.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessActions, location_name: "Actions", traits: {"smithy.api#required" => {}}))
    RuleDefinition.type = Types::RuleDefinition
    RuleGroup.add_member(:rule_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleVariables, location_name: "RuleVariables"))
    RuleGroup.add_member(:reference_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceSets, location_name: "ReferenceSets"))
    RuleGroup.add_member(:rules_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesSource, location_name: "RulesSource", traits: {"smithy.api#required" => {}}))
    RuleGroup.add_member(:stateful_rule_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleOptions, location_name: "StatefulRuleOptions"))
    RuleGroup.type = Types::RuleGroup
    RuleGroupMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    RuleGroupMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    RuleGroupMetadata.type = Types::RuleGroupMetadata
    RuleGroupResponse.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn", traits: {"smithy.api#required" => {}}))
    RuleGroupResponse.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName", traits: {"smithy.api#required" => {}}))
    RuleGroupResponse.add_member(:rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "RuleGroupId", traits: {"smithy.api#required" => {}}))
    RuleGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    RuleGroupResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    RuleGroupResponse.add_member(:capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "Capacity"))
    RuleGroupResponse.add_member(:rule_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "RuleGroupStatus"))
    RuleGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RuleGroupResponse.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCapacity, location_name: "ConsumedCapacity"))
    RuleGroupResponse.add_member(:number_of_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "NumberOfAssociations"))
    RuleGroupResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    RuleGroupResponse.add_member(:source_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceMetadata, location_name: "SourceMetadata"))
    RuleGroupResponse.add_member(:sns_topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SnsTopic"))
    RuleGroupResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastModifiedTime"))
    RuleGroupResponse.add_member(:analysis_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisResultList, location_name: "AnalysisResults"))
    RuleGroupResponse.add_member(:summary_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryConfiguration, location_name: "SummaryConfiguration"))
    RuleGroupResponse.type = Types::RuleGroupResponse
    RuleGroupType.add_member(:stateless, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATELESS", traits: {"smithy.api#enumValue" => "STATELESS"}))
    RuleGroupType.add_member(:stateful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATEFUL", traits: {"smithy.api#enumValue" => "STATEFUL"}))
    RuleGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupMetadata)
    RuleIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString)
    RuleOption.add_member(:keyword, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword, location_name: "Keyword", traits: {"smithy.api#required" => {}}))
    RuleOption.add_member(:settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Settings, location_name: "Settings"))
    RuleOption.type = Types::RuleOption
    RuleOptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOption)
    RuleOrder.add_member(:default_action_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT_ACTION_ORDER", traits: {"smithy.api#enumValue" => "DEFAULT_ACTION_ORDER"}))
    RuleOrder.add_member(:strict_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRICT_ORDER", traits: {"smithy.api#enumValue" => "STRICT_ORDER"}))
    RuleSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummary)
    RuleSummary.add_member(:sid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString, location_name: "SID"))
    RuleSummary.add_member(:msg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString, location_name: "Msg"))
    RuleSummary.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString, location_name: "Metadata"))
    RuleSummary.type = Types::RuleSummary
    RuleTargets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString)
    RuleVariables.add_member(:ip_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPSets, location_name: "IPSets"))
    RuleVariables.add_member(:port_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortSets, location_name: "PortSets"))
    RuleVariables.type = Types::RuleVariables
    RulesSource.add_member(:rules_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesString, location_name: "RulesString"))
    RulesSource.add_member(:rules_source_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesSourceList, location_name: "RulesSourceList"))
    RulesSource.add_member(:stateful_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRules, location_name: "StatefulRules"))
    RulesSource.add_member(:stateless_rules_and_custom_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessRulesAndCustomActions, location_name: "StatelessRulesAndCustomActions"))
    RulesSource.type = Types::RulesSource
    RulesSourceList.add_member(:targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTargets, location_name: "Targets", traits: {"smithy.api#required" => {}}))
    RulesSourceList.add_member(:target_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTypes, location_name: "TargetTypes", traits: {"smithy.api#required" => {}}))
    RulesSourceList.add_member(:generated_rules_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedRulesType, location_name: "GeneratedRulesType", traits: {"smithy.api#required" => {}}))
    RulesSourceList.type = Types::RulesSourceList
    ServerCertificate.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    ServerCertificate.type = Types::ServerCertificate
    ServerCertificateConfiguration.add_member(:server_certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCertificates, location_name: "ServerCertificates"))
    ServerCertificateConfiguration.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCertificateScopes, location_name: "Scopes"))
    ServerCertificateConfiguration.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "CertificateAuthorityArn"))
    ServerCertificateConfiguration.add_member(:check_certificate_revocation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckCertificateRevocationStatusActions, location_name: "CheckCertificateRevocationStatus"))
    ServerCertificateConfiguration.type = Types::ServerCertificateConfiguration
    ServerCertificateConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCertificateConfiguration)
    ServerCertificateScope.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addresses, location_name: "Sources"))
    ServerCertificateScope.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addresses, location_name: "Destinations"))
    ServerCertificateScope.add_member(:source_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "SourcePorts"))
    ServerCertificateScope.add_member(:destination_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "DestinationPorts"))
    ServerCertificateScope.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolNumbers, location_name: "Protocols"))
    ServerCertificateScope.type = Types::ServerCertificateScope
    ServerCertificateScopes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCertificateScope)
    ServerCertificates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCertificate)
    Settings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Setting)
    SourceMetadata.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SourceArn"))
    SourceMetadata.add_member(:source_update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "SourceUpdateToken"))
    SourceMetadata.type = Types::SourceMetadata
    StartAnalysisReportRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    StartAnalysisReportRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    StartAnalysisReportRequest.add_member(:analysis_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledAnalysisType, location_name: "AnalysisType", traits: {"smithy.api#required" => {}}))
    StartAnalysisReportRequest.type = Types::StartAnalysisReportRequest
    StartAnalysisReportResponse.add_member(:analysis_report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisReportId, location_name: "AnalysisReportId", traits: {"smithy.api#required" => {}}))
    StartAnalysisReportResponse.type = Types::StartAnalysisReportResponse
    StartFlowCaptureRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    StartFlowCaptureRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    StartFlowCaptureRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn"))
    StartFlowCaptureRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    StartFlowCaptureRequest.add_member(:minimum_flow_age_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Age, location_name: "MinimumFlowAgeInSeconds"))
    StartFlowCaptureRequest.add_member(:flow_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowFilters, location_name: "FlowFilters", traits: {"smithy.api#required" => {}}))
    StartFlowCaptureRequest.type = Types::StartFlowCaptureRequest
    StartFlowCaptureResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    StartFlowCaptureResponse.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationId, location_name: "FlowOperationId"))
    StartFlowCaptureResponse.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationStatus, location_name: "FlowOperationStatus"))
    StartFlowCaptureResponse.type = Types::StartFlowCaptureResponse
    StartFlowFlushRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    StartFlowFlushRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    StartFlowFlushRequest.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn"))
    StartFlowFlushRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    StartFlowFlushRequest.add_member(:minimum_flow_age_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Age, location_name: "MinimumFlowAgeInSeconds"))
    StartFlowFlushRequest.add_member(:flow_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowFilters, location_name: "FlowFilters", traits: {"smithy.api#required" => {}}))
    StartFlowFlushRequest.type = Types::StartFlowFlushRequest
    StartFlowFlushResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    StartFlowFlushResponse.add_member(:flow_operation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationId, location_name: "FlowOperationId"))
    StartFlowFlushResponse.add_member(:flow_operation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowOperationStatus, location_name: "FlowOperationStatus"))
    StartFlowFlushResponse.type = Types::StartFlowFlushResponse
    StatefulAction.add_member(:pass, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    StatefulAction.add_member(:drop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    StatefulAction.add_member(:alert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    StatefulAction.add_member(:reject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    StatefulActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString)
    StatefulEngineOptions.add_member(:rule_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOrder, location_name: "RuleOrder"))
    StatefulEngineOptions.add_member(:stream_exception_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamExceptionPolicy, location_name: "StreamExceptionPolicy"))
    StatefulEngineOptions.add_member(:flow_timeouts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowTimeouts, location_name: "FlowTimeouts"))
    StatefulEngineOptions.type = Types::StatefulEngineOptions
    StatefulRule.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulAction, location_name: "Action", traits: {"smithy.api#required" => {}}))
    StatefulRule.add_member(:header, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: "Header", traits: {"smithy.api#required" => {}}))
    StatefulRule.add_member(:rule_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOptions, location_name: "RuleOptions", traits: {"smithy.api#required" => {}}))
    StatefulRule.type = Types::StatefulRule
    StatefulRuleDirection.add_member(:forward, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORWARD", traits: {"smithy.api#enumValue" => "FORWARD"}))
    StatefulRuleDirection.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    StatefulRuleGroupOverride.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideAction, location_name: "Action"))
    StatefulRuleGroupOverride.type = Types::StatefulRuleGroupOverride
    StatefulRuleGroupReference.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    StatefulRuleGroupReference.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    StatefulRuleGroupReference.add_member(:override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleGroupOverride, location_name: "Override"))
    StatefulRuleGroupReference.add_member(:deep_threat_inspection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeepThreatInspection, location_name: "DeepThreatInspection"))
    StatefulRuleGroupReference.type = Types::StatefulRuleGroupReference
    StatefulRuleGroupReferences.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleGroupReference)
    StatefulRuleOptions.add_member(:rule_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOrder, location_name: "RuleOrder"))
    StatefulRuleOptions.type = Types::StatefulRuleOptions
    StatefulRuleProtocol.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANY", traits: {"smithy.api#enumValue" => "IP"}))
    StatefulRuleProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    StatefulRuleProtocol.add_member(:udp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    StatefulRuleProtocol.add_member(:icmp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ICMP", traits: {"smithy.api#enumValue" => "ICMP"}))
    StatefulRuleProtocol.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    StatefulRuleProtocol.add_member(:ftp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FTP", traits: {"smithy.api#enumValue" => "FTP"}))
    StatefulRuleProtocol.add_member(:tls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    StatefulRuleProtocol.add_member(:smb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMB", traits: {"smithy.api#enumValue" => "SMB"}))
    StatefulRuleProtocol.add_member(:dns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DNS", traits: {"smithy.api#enumValue" => "DNS"}))
    StatefulRuleProtocol.add_member(:dcerpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DCERPC", traits: {"smithy.api#enumValue" => "DCERPC"}))
    StatefulRuleProtocol.add_member(:ssh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSH", traits: {"smithy.api#enumValue" => "SSH"}))
    StatefulRuleProtocol.add_member(:smtp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMTP", traits: {"smithy.api#enumValue" => "SMTP"}))
    StatefulRuleProtocol.add_member(:imap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMAP", traits: {"smithy.api#enumValue" => "IMAP"}))
    StatefulRuleProtocol.add_member(:msn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MSN", traits: {"smithy.api#enumValue" => "MSN"}))
    StatefulRuleProtocol.add_member(:krb5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KRB5", traits: {"smithy.api#enumValue" => "KRB5"}))
    StatefulRuleProtocol.add_member(:ikev2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IKEV2", traits: {"smithy.api#enumValue" => "IKEV2"}))
    StatefulRuleProtocol.add_member(:tftp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TFTP", traits: {"smithy.api#enumValue" => "TFTP"}))
    StatefulRuleProtocol.add_member(:ntp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NTP", traits: {"smithy.api#enumValue" => "NTP"}))
    StatefulRuleProtocol.add_member(:dhcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DHCP", traits: {"smithy.api#enumValue" => "DHCP"}))
    StatefulRuleProtocol.add_member(:http2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP2", traits: {"smithy.api#enumValue" => "HTTP2"}))
    StatefulRuleProtocol.add_member(:quic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUIC", traits: {"smithy.api#enumValue" => "QUIC"}))
    StatefulRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRule)
    StatelessActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString)
    StatelessRule.add_member(:rule_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDefinition, location_name: "RuleDefinition", traits: {"smithy.api#required" => {}}))
    StatelessRule.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", traits: {"smithy.api#required" => {}}))
    StatelessRule.type = Types::StatelessRule
    StatelessRuleGroupReference.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    StatelessRuleGroupReference.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", traits: {"smithy.api#required" => {}}))
    StatelessRuleGroupReference.type = Types::StatelessRuleGroupReference
    StatelessRuleGroupReferences.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessRuleGroupReference)
    StatelessRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessRule)
    StatelessRulesAndCustomActions.add_member(:stateless_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessRules, location_name: "StatelessRules", traits: {"smithy.api#required" => {}}))
    StatelessRulesAndCustomActions.add_member(:custom_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActions, location_name: "CustomActions"))
    StatelessRulesAndCustomActions.type = Types::StatelessRulesAndCustomActions
    StreamExceptionPolicy.add_member(:drop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    StreamExceptionPolicy.add_member(:continue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    StreamExceptionPolicy.add_member(:reject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    SubnetMapping.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString, location_name: "SubnetId", traits: {"smithy.api#required" => {}}))
    SubnetMapping.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressType, location_name: "IPAddressType"))
    SubnetMapping.type = Types::SubnetMapping
    SubnetMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMapping)
    Summary.add_member(:rule_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummaries, location_name: "RuleSummaries"))
    Summary.type = Types::Summary
    SummaryConfiguration.add_member(:rule_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryRuleOptions, location_name: "RuleOptions"))
    SummaryConfiguration.type = Types::SummaryConfiguration
    SummaryRuleOption.add_member(:sid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SID", traits: {"smithy.api#enumValue" => "SID"}))
    SummaryRuleOption.add_member(:msg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MSG", traits: {"smithy.api#enumValue" => "MSG"}))
    SummaryRuleOption.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "METADATA", traits: {"smithy.api#enumValue" => "METADATA"}))
    SummaryRuleOptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryRuleOption)
    SupportedAvailabilityZones.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    SupportedAvailabilityZones.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneMetadata)
    SyncState.add_member(:attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: "Attachment"))
    SyncState.add_member(:config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncStateConfig, location_name: "Config"))
    SyncState.type = Types::SyncState
    SyncStateConfig.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName)
    SyncStateConfig.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerObjectStatus)
    SyncStates.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone)
    SyncStates.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncState)
    TCPFlag.add_member(:fin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIN", traits: {"smithy.api#enumValue" => "FIN"}))
    TCPFlag.add_member(:syn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYN", traits: {"smithy.api#enumValue" => "SYN"}))
    TCPFlag.add_member(:rst, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RST", traits: {"smithy.api#enumValue" => "RST"}))
    TCPFlag.add_member(:psh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PSH", traits: {"smithy.api#enumValue" => "PSH"}))
    TCPFlag.add_member(:ack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACK", traits: {"smithy.api#enumValue" => "ACK"}))
    TCPFlag.add_member(:urg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "URG", traits: {"smithy.api#enumValue" => "URG"}))
    TCPFlag.add_member(:ece, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ECE", traits: {"smithy.api#enumValue" => "ECE"}))
    TCPFlag.add_member(:cwr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CWR", traits: {"smithy.api#enumValue" => "CWR"}))
    TCPFlagField.add_member(:flags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Flags, location_name: "Flags", traits: {"smithy.api#required" => {}}))
    TCPFlagField.add_member(:masks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Flags, location_name: "Masks"))
    TCPFlagField.type = Types::TCPFlagField
    TCPFlags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TCPFlagField)
    TLSInspectionConfiguration.add_member(:server_certificate_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCertificateConfigurations, location_name: "ServerCertificateConfigurations"))
    TLSInspectionConfiguration.type = Types::TLSInspectionConfiguration
    TLSInspectionConfigurationMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    TLSInspectionConfigurationMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    TLSInspectionConfigurationMetadata.type = Types::TLSInspectionConfigurationMetadata
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn", traits: {"smithy.api#required" => {}}))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "TLSInspectionConfigurationName", traits: {"smithy.api#required" => {}}))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "TLSInspectionConfigurationId", traits: {"smithy.api#required" => {}}))
    TLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "TLSInspectionConfigurationStatus"))
    TLSInspectionConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TLSInspectionConfigurationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TLSInspectionConfigurationResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastModifiedTime"))
    TLSInspectionConfigurationResponse.add_member(:number_of_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfAssociations, location_name: "NumberOfAssociations"))
    TLSInspectionConfigurationResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    TLSInspectionConfigurationResponse.add_member(:certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificates, location_name: "Certificates"))
    TLSInspectionConfigurationResponse.add_member(:certificate_authority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TlsCertificateData, location_name: "CertificateAuthority"))
    TLSInspectionConfigurationResponse.type = Types::TLSInspectionConfigurationResponse
    TLSInspectionConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfigurationMetadata)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetType.add_member(:tls_sni, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLS_SNI", traits: {"smithy.api#enumValue" => "TLS_SNI"}))
    TargetType.add_member(:http_host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP_HOST", traits: {"smithy.api#enumValue" => "HTTP_HOST"}))
    TargetTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TlsCertificateData.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "CertificateArn"))
    TlsCertificateData.add_member(:certificate_serial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString, location_name: "CertificateSerial"))
    TlsCertificateData.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionMemberString, location_name: "Status"))
    TlsCertificateData.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusMessage"))
    TlsCertificateData.type = Types::TlsCertificateData
    TransitGatewayAttachmentStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TransitGatewayAttachmentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    TransitGatewayAttachmentStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    TransitGatewayAttachmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TransitGatewayAttachmentStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TransitGatewayAttachmentStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    TransitGatewayAttachmentStatus.add_member(:pending_acceptance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_ACCEPTANCE", traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE"}))
    TransitGatewayAttachmentStatus.add_member(:rejecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTING", traits: {"smithy.api#enumValue" => "REJECTING"}))
    TransitGatewayAttachmentStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    TransitGatewayAttachmentSyncState.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: "AttachmentId"))
    TransitGatewayAttachmentSyncState.add_member(:transit_gateway_attachment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentStatus, location_name: "TransitGatewayAttachmentStatus"))
    TransitGatewayAttachmentSyncState.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitGatewayAttachmentSyncStateMessage, location_name: "StatusMessage"))
    TransitGatewayAttachmentSyncState.type = Types::TransitGatewayAttachmentSyncState
    UniqueSources.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "Count", traits: {"smithy.api#default" => 0}))
    UniqueSources.type = Types::UniqueSources
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAvailabilityZoneChangeProtectionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateAvailabilityZoneChangeProtectionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateAvailabilityZoneChangeProtectionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateAvailabilityZoneChangeProtectionRequest.add_member(:availability_zone_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AvailabilityZoneChangeProtection", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateAvailabilityZoneChangeProtectionRequest.type = Types::UpdateAvailabilityZoneChangeProtectionRequest
    UpdateAvailabilityZoneChangeProtectionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateAvailabilityZoneChangeProtectionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateAvailabilityZoneChangeProtectionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateAvailabilityZoneChangeProtectionResponse.add_member(:availability_zone_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AvailabilityZoneChangeProtection", traits: {"smithy.api#default" => false}))
    UpdateAvailabilityZoneChangeProtectionResponse.type = Types::UpdateAvailabilityZoneChangeProtectionResponse
    UpdateFirewallAnalysisSettingsRequest.add_member(:enabled_analysis_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledAnalysisTypes, location_name: "EnabledAnalysisTypes"))
    UpdateFirewallAnalysisSettingsRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallAnalysisSettingsRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallAnalysisSettingsRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallAnalysisSettingsRequest.type = Types::UpdateFirewallAnalysisSettingsRequest
    UpdateFirewallAnalysisSettingsResponse.add_member(:enabled_analysis_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledAnalysisTypes, location_name: "EnabledAnalysisTypes"))
    UpdateFirewallAnalysisSettingsResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallAnalysisSettingsResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallAnalysisSettingsResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallAnalysisSettingsResponse.type = Types::UpdateFirewallAnalysisSettingsResponse
    UpdateFirewallDeleteProtectionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallDeleteProtectionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallDeleteProtectionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallDeleteProtectionRequest.add_member(:delete_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteProtection", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateFirewallDeleteProtectionRequest.type = Types::UpdateFirewallDeleteProtectionRequest
    UpdateFirewallDeleteProtectionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallDeleteProtectionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallDeleteProtectionResponse.add_member(:delete_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteProtection", traits: {"smithy.api#default" => false}))
    UpdateFirewallDeleteProtectionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallDeleteProtectionResponse.type = Types::UpdateFirewallDeleteProtectionResponse
    UpdateFirewallDescriptionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallDescriptionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallDescriptionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallDescriptionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFirewallDescriptionRequest.type = Types::UpdateFirewallDescriptionRequest
    UpdateFirewallDescriptionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallDescriptionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallDescriptionResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFirewallDescriptionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallDescriptionResponse.type = Types::UpdateFirewallDescriptionResponse
    UpdateFirewallEncryptionConfigurationRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallEncryptionConfigurationRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateFirewallEncryptionConfigurationRequest.type = Types::UpdateFirewallEncryptionConfigurationRequest
    UpdateFirewallEncryptionConfigurationResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallEncryptionConfigurationResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateFirewallEncryptionConfigurationResponse.type = Types::UpdateFirewallEncryptionConfigurationResponse
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallPolicyChangeProtectionRequest.add_member(:firewall_policy_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "FirewallPolicyChangeProtection", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateFirewallPolicyChangeProtectionRequest.type = Types::UpdateFirewallPolicyChangeProtectionRequest
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateFirewallPolicyChangeProtectionResponse.add_member(:firewall_policy_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "FirewallPolicyChangeProtection", traits: {"smithy.api#default" => false}))
    UpdateFirewallPolicyChangeProtectionResponse.type = Types::UpdateFirewallPolicyChangeProtectionResponse
    UpdateFirewallPolicyRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallPolicyArn"))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallPolicyName"))
    UpdateFirewallPolicyRequest.add_member(:firewall_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicy, location_name: "FirewallPolicy", traits: {"smithy.api#required" => {}}))
    UpdateFirewallPolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFirewallPolicyRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun", traits: {"smithy.api#default" => false}))
    UpdateFirewallPolicyRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateFirewallPolicyRequest.type = Types::UpdateFirewallPolicyRequest
    UpdateFirewallPolicyResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateFirewallPolicyResponse.add_member(:firewall_policy_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicyResponse, location_name: "FirewallPolicyResponse", traits: {"smithy.api#required" => {}}))
    UpdateFirewallPolicyResponse.type = Types::UpdateFirewallPolicyResponse
    UpdateLoggingConfigurationRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateLoggingConfigurationRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateLoggingConfigurationRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    UpdateLoggingConfigurationRequest.add_member(:enable_monitoring_dashboard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableMonitoringDashboard, location_name: "EnableMonitoringDashboard"))
    UpdateLoggingConfigurationRequest.type = Types::UpdateLoggingConfigurationRequest
    UpdateLoggingConfigurationResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateLoggingConfigurationResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateLoggingConfigurationResponse.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    UpdateLoggingConfigurationResponse.add_member(:enable_monitoring_dashboard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableMonitoringDashboard, location_name: "EnableMonitoringDashboard"))
    UpdateLoggingConfigurationResponse.type = Types::UpdateLoggingConfigurationResponse
    UpdateRuleGroupRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupRequest.add_member(:rule_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "RuleGroupArn"))
    UpdateRuleGroupRequest.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "RuleGroupName"))
    UpdateRuleGroupRequest.add_member(:rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroup, location_name: "RuleGroup"))
    UpdateRuleGroupRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesString, location_name: "Rules"))
    UpdateRuleGroupRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupType, location_name: "Type"))
    UpdateRuleGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateRuleGroupRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun", traits: {"smithy.api#default" => false}))
    UpdateRuleGroupRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateRuleGroupRequest.add_member(:source_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceMetadata, location_name: "SourceMetadata"))
    UpdateRuleGroupRequest.add_member(:analyze_rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AnalyzeRuleGroup", traits: {"smithy.api#default" => false}))
    UpdateRuleGroupRequest.add_member(:summary_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryConfiguration, location_name: "SummaryConfiguration"))
    UpdateRuleGroupRequest.type = Types::UpdateRuleGroupRequest
    UpdateRuleGroupResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupResponse.add_member(:rule_group_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleGroupResponse, location_name: "RuleGroupResponse", traits: {"smithy.api#required" => {}}))
    UpdateRuleGroupResponse.type = Types::UpdateRuleGroupResponse
    UpdateSubnetChangeProtectionRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateSubnetChangeProtectionRequest.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateSubnetChangeProtectionRequest.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateSubnetChangeProtectionRequest.add_member(:subnet_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "SubnetChangeProtection", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateSubnetChangeProtectionRequest.type = Types::UpdateSubnetChangeProtectionRequest
    UpdateSubnetChangeProtectionResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    UpdateSubnetChangeProtectionResponse.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn"))
    UpdateSubnetChangeProtectionResponse.add_member(:firewall_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "FirewallName"))
    UpdateSubnetChangeProtectionResponse.add_member(:subnet_change_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "SubnetChangeProtection", traits: {"smithy.api#default" => false}))
    UpdateSubnetChangeProtectionResponse.type = Types::UpdateSubnetChangeProtectionResponse
    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TLSInspectionConfigurationArn"))
    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "TLSInspectionConfigurationName"))
    UpdateTLSInspectionConfigurationRequest.add_member(:tls_inspection_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfiguration, location_name: "TLSInspectionConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateTLSInspectionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateTLSInspectionConfigurationRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateTLSInspectionConfigurationRequest.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateTLSInspectionConfigurationRequest.type = Types::UpdateTLSInspectionConfigurationRequest
    UpdateTLSInspectionConfigurationResponse.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken", traits: {"smithy.api#required" => {}}))
    UpdateTLSInspectionConfigurationResponse.add_member(:tls_inspection_configuration_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TLSInspectionConfigurationResponse, location_name: "TLSInspectionConfigurationResponse", traits: {"smithy.api#required" => {}}))
    UpdateTLSInspectionConfigurationResponse.type = Types::UpdateTLSInspectionConfigurationResponse
    VariableDefinitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VariableDefinition)
    VpcEndpointAssociation.add_member(:vpc_endpoint_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcEndpointAssociationId"))
    VpcEndpointAssociation.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociation.add_member(:firewall_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "FirewallArn", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociation.add_member(:subnet_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetMapping, location_name: "SubnetMapping", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    VpcEndpointAssociation.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    VpcEndpointAssociation.type = Types::VpcEndpointAssociation
    VpcEndpointAssociationMetadata.add_member(:vpc_endpoint_association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "VpcEndpointAssociationArn"))
    VpcEndpointAssociationMetadata.type = Types::VpcEndpointAssociationMetadata
    VpcEndpointAssociationStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallStatusValue, location_name: "Status", traits: {"smithy.api#required" => {}}))
    VpcEndpointAssociationStatus.add_member(:association_sync_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationSyncState, location_name: "AssociationSyncState"))
    VpcEndpointAssociationStatus.type = Types::VpcEndpointAssociationStatus
    VpcEndpointAssociations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointAssociationMetadata)
    VpcIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId)

    NetworkFirewall20201112 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.networkfirewall#NetworkFirewall_20201112"
      service.name = "NetworkFirewall20201112"
      service.version = "2020-11-12"
      service.traits = {"aws.api#service" => {"sdkId" => "Network Firewall", "arnNamespace" => "network-firewall", "cloudFormationName" => "NetworkFirewall", "cloudTrailEventSource" => "networkfirewall.amazonaws.com", "endpointPrefix" => "network-firewall"}, "aws.auth#sigv4" => {"name" => "network-firewall"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Network Firewall"}
      service.add_operation(:accept_network_firewall_transit_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AcceptNetworkFirewallTransitGatewayAttachment"
        operation.name = "AcceptNetworkFirewallTransitGatewayAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptNetworkFirewallTransitGatewayAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptNetworkFirewallTransitGatewayAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:associate_availability_zones, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AssociateAvailabilityZones"
        operation.name = "AssociateAvailabilityZones"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAvailabilityZonesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAvailabilityZonesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:associate_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AssociateFirewallPolicy"
        operation.name = "AssociateFirewallPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFirewallPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFirewallPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:associate_subnets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#AssociateSubnets"
        operation.name = "AssociateSubnets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSubnetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSubnetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateFirewall"
        operation.name = "CreateFirewall"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateFirewallPolicy"
        operation.name = "CreateFirewallPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateRuleGroup"
        operation.name = "CreateRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_tls_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateTLSInspectionConfiguration"
        operation.name = "CreateTLSInspectionConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTLSInspectionConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTLSInspectionConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_vpc_endpoint_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#CreateVpcEndpointAssociation"
        operation.name = "CreateVpcEndpointAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcEndpointAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteFirewall"
        operation.name = "DeleteFirewall"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteFirewallPolicy"
        operation.name = "DeleteFirewallPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_network_firewall_transit_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteNetworkFirewallTransitGatewayAttachment"
        operation.name = "DeleteNetworkFirewallTransitGatewayAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkFirewallTransitGatewayAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkFirewallTransitGatewayAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourcePolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteRuleGroup"
        operation.name = "DeleteRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_tls_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteTLSInspectionConfiguration"
        operation.name = "DeleteTLSInspectionConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTLSInspectionConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTLSInspectionConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_vpc_endpoint_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DeleteVpcEndpointAssociation"
        operation.name = "DeleteVpcEndpointAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcEndpointAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeFirewall"
        operation.name = "DescribeFirewall"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFirewallRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFirewallResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_firewall_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeFirewallMetadata"
        operation.name = "DescribeFirewallMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFirewallMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFirewallMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeFirewallPolicy"
        operation.name = "DescribeFirewallPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFirewallPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFirewallPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_flow_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeFlowOperation"
        operation.name = "DescribeFlowOperation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFlowOperationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFlowOperationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeLoggingConfiguration"
        operation.name = "DescribeLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeResourcePolicy"
        operation.name = "DescribeResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeRuleGroup"
        operation.name = "DescribeRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rule_group_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeRuleGroupMetadata"
        operation.name = "DescribeRuleGroupMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rule_group_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeRuleGroupSummary"
        operation.name = "DescribeRuleGroupSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupSummaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuleGroupSummaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_tls_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeTLSInspectionConfiguration"
        operation.name = "DescribeTLSInspectionConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTLSInspectionConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTLSInspectionConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_vpc_endpoint_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DescribeVpcEndpointAssociation"
        operation.name = "DescribeVpcEndpointAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcEndpointAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcEndpointAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_availability_zones, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DisassociateAvailabilityZones"
        operation.name = "DisassociateAvailabilityZones"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAvailabilityZonesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAvailabilityZonesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_subnets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#DisassociateSubnets"
        operation.name = "DisassociateSubnets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSubnetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSubnetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_analysis_report_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#GetAnalysisReportResults"
        operation.name = "GetAnalysisReportResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalysisReportResultsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalysisReportResultsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetAnalysisReportResults.new
      end)
      service.add_operation(:list_analysis_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListAnalysisReports"
        operation.name = "ListAnalysisReports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalysisReportsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalysisReportsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAnalysisReports.new
      end)
      service.add_operation(:list_firewall_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListFirewallPolicies"
        operation.name = "ListFirewallPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallPolicies.new
      end)
      service.add_operation(:list_firewalls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListFirewalls"
        operation.name = "ListFirewalls"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewalls.new
      end)
      service.add_operation(:list_flow_operation_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListFlowOperationResults"
        operation.name = "ListFlowOperationResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowOperationResultsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowOperationResultsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFlowOperationResults.new
      end)
      service.add_operation(:list_flow_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListFlowOperations"
        operation.name = "ListFlowOperations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowOperationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFlowOperationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFlowOperations.new
      end)
      service.add_operation(:list_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListRuleGroups"
        operation.name = "ListRuleGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRuleGroups.new
      end)
      service.add_operation(:list_tls_inspection_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListTLSInspectionConfigurations"
        operation.name = "ListTLSInspectionConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTLSInspectionConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTLSInspectionConfigurationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTLSInspectionConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_vpc_endpoint_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#ListVpcEndpointAssociations"
        operation.name = "ListVpcEndpointAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcEndpointAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListVpcEndpointAssociations.new
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourcePolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:reject_network_firewall_transit_gateway_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#RejectNetworkFirewallTransitGatewayAttachment"
        operation.name = "RejectNetworkFirewallTransitGatewayAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectNetworkFirewallTransitGatewayAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectNetworkFirewallTransitGatewayAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_analysis_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#StartAnalysisReport"
        operation.name = "StartAnalysisReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAnalysisReportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAnalysisReportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_flow_capture, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#StartFlowCapture"
        operation.name = "StartFlowCapture"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFlowCaptureRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFlowCaptureResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:start_flow_flush, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#StartFlowFlush"
        operation.name = "StartFlowFlush"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFlowFlushRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFlowFlushResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_availability_zone_change_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateAvailabilityZoneChangeProtection"
        operation.name = "UpdateAvailabilityZoneChangeProtection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAvailabilityZoneChangeProtectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAvailabilityZoneChangeProtectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_analysis_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallAnalysisSettings"
        operation.name = "UpdateFirewallAnalysisSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallAnalysisSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallAnalysisSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_delete_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallDeleteProtection"
        operation.name = "UpdateFirewallDeleteProtection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallDeleteProtectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallDeleteProtectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_description, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallDescription"
        operation.name = "UpdateFirewallDescription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallDescriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallDescriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_encryption_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallEncryptionConfiguration"
        operation.name = "UpdateFirewallEncryptionConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallEncryptionConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallEncryptionConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallPolicy"
        operation.name = "UpdateFirewallPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_policy_change_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateFirewallPolicyChangeProtection"
        operation.name = "UpdateFirewallPolicyChangeProtection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallPolicyChangeProtectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallPolicyChangeProtectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateLoggingConfiguration"
        operation.name = "UpdateLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationPermissionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateRuleGroup"
        operation.name = "UpdateRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_subnet_change_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateSubnetChangeProtection"
        operation.name = "UpdateSubnetChangeProtection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubnetChangeProtectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubnetChangeProtectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwnerCheckException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_tls_inspection_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkfirewall#UpdateTLSInspectionConfiguration"
        operation.name = "UpdateTLSInspectionConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTLSInspectionConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTLSInspectionConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
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
