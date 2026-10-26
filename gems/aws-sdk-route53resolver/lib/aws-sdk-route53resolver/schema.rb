# frozen_string_literal: true

# This is generated code!

module Aws::Route53Resolver
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 32}})
    Action = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#Action", name: "Action")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AssociateFirewallRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AssociateFirewallRuleGroupRequest", name: "AssociateFirewallRuleGroupRequest")
    AssociateFirewallRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AssociateFirewallRuleGroupResponse", name: "AssociateFirewallRuleGroupResponse")
    AssociateResolverEndpointIpAddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AssociateResolverEndpointIpAddressRequest", name: "AssociateResolverEndpointIpAddressRequest")
    AssociateResolverEndpointIpAddressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AssociateResolverEndpointIpAddressResponse", name: "AssociateResolverEndpointIpAddressResponse")
    AssociateResolverQueryLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AssociateResolverQueryLogConfigRequest", name: "AssociateResolverQueryLogConfigRequest")
    AssociateResolverQueryLogConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AssociateResolverQueryLogConfigResponse", name: "AssociateResolverQueryLogConfigResponse")
    AssociateResolverRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AssociateResolverRuleRequest", name: "AssociateResolverRuleRequest")
    AssociateResolverRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#AssociateResolverRuleResponse", name: "AssociateResolverRuleResponse")
    AutodefinedReverseFlag = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#AutodefinedReverseFlag", name: "AutodefinedReverseFlag")
    BatchCreateFirewallRuleError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchCreateFirewallRuleError", name: "BatchCreateFirewallRuleError")
    BatchCreateFirewallRuleErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#BatchCreateFirewallRuleErrors", name: "BatchCreateFirewallRuleErrors")
    BatchCreateFirewallRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchCreateFirewallRuleRequest", name: "BatchCreateFirewallRuleRequest")
    BatchCreateFirewallRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchCreateFirewallRuleResponse", name: "BatchCreateFirewallRuleResponse")
    BatchDeleteFirewallRuleError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchDeleteFirewallRuleError", name: "BatchDeleteFirewallRuleError")
    BatchDeleteFirewallRuleErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#BatchDeleteFirewallRuleErrors", name: "BatchDeleteFirewallRuleErrors")
    BatchDeleteFirewallRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchDeleteFirewallRuleRequest", name: "BatchDeleteFirewallRuleRequest")
    BatchDeleteFirewallRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchDeleteFirewallRuleResponse", name: "BatchDeleteFirewallRuleResponse")
    BatchUpdateFirewallRuleError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchUpdateFirewallRuleError", name: "BatchUpdateFirewallRuleError")
    BatchUpdateFirewallRuleErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#BatchUpdateFirewallRuleErrors", name: "BatchUpdateFirewallRuleErrors")
    BatchUpdateFirewallRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchUpdateFirewallRuleRequest", name: "BatchUpdateFirewallRuleRequest")
    BatchUpdateFirewallRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#BatchUpdateFirewallRuleResponse", name: "BatchUpdateFirewallRuleResponse")
    BlockOverrideDnsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#BlockOverrideDnsType", name: "BlockOverrideDnsType")
    BlockOverrideDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#BlockOverrideDomain", name: "BlockOverrideDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    BlockOverrideTtl = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#BlockOverrideTtl", name: "BlockOverrideTtl", traits: {"smithy.api#range" => {"min" => 0, "max" => 604800}})
    BlockResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#BlockResponse", name: "BlockResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.route53resolver#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    Category = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#Category", name: "Category", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ConfidenceThreshold = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ConfidenceThreshold", name: "ConfidenceThreshold")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#Count", name: "Count", traits: {"smithy.api#default" => 0})
    CreateFirewallDomainListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallDomainListRequest", name: "CreateFirewallDomainListRequest")
    CreateFirewallDomainListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallDomainListResponse", name: "CreateFirewallDomainListResponse")
    CreateFirewallRuleEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#CreateFirewallRuleEntries", name: "CreateFirewallRuleEntries")
    CreateFirewallRuleEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallRuleEntry", name: "CreateFirewallRuleEntry")
    CreateFirewallRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallRuleGroupRequest", name: "CreateFirewallRuleGroupRequest")
    CreateFirewallRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallRuleGroupResponse", name: "CreateFirewallRuleGroupResponse")
    CreateFirewallRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallRuleRequest", name: "CreateFirewallRuleRequest")
    CreateFirewallRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallRuleResponse", name: "CreateFirewallRuleResponse")
    CreateOutpostResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateOutpostResolverRequest", name: "CreateOutpostResolverRequest")
    CreateOutpostResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateOutpostResolverResponse", name: "CreateOutpostResolverResponse")
    CreateResolverEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateResolverEndpointRequest", name: "CreateResolverEndpointRequest")
    CreateResolverEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateResolverEndpointResponse", name: "CreateResolverEndpointResponse")
    CreateResolverQueryLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateResolverQueryLogConfigRequest", name: "CreateResolverQueryLogConfigRequest")
    CreateResolverQueryLogConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateResolverQueryLogConfigResponse", name: "CreateResolverQueryLogConfigResponse")
    CreateResolverRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateResolverRuleRequest", name: "CreateResolverRuleRequest")
    CreateResolverRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateResolverRuleResponse", name: "CreateResolverRuleResponse")
    CreatorRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#CreatorRequestId", name: "CreatorRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DelegationRecord = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#DelegationRecord", name: "DelegationRecord", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DeleteFirewallDomainListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteFirewallDomainListRequest", name: "DeleteFirewallDomainListRequest")
    DeleteFirewallDomainListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteFirewallDomainListResponse", name: "DeleteFirewallDomainListResponse")
    DeleteFirewallRuleEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#DeleteFirewallRuleEntries", name: "DeleteFirewallRuleEntries")
    DeleteFirewallRuleEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteFirewallRuleEntry", name: "DeleteFirewallRuleEntry")
    DeleteFirewallRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteFirewallRuleGroupRequest", name: "DeleteFirewallRuleGroupRequest")
    DeleteFirewallRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteFirewallRuleGroupResponse", name: "DeleteFirewallRuleGroupResponse")
    DeleteFirewallRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteFirewallRuleRequest", name: "DeleteFirewallRuleRequest")
    DeleteFirewallRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteFirewallRuleResponse", name: "DeleteFirewallRuleResponse")
    DeleteOutpostResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteOutpostResolverRequest", name: "DeleteOutpostResolverRequest")
    DeleteOutpostResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteOutpostResolverResponse", name: "DeleteOutpostResolverResponse")
    DeleteResolverEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteResolverEndpointRequest", name: "DeleteResolverEndpointRequest")
    DeleteResolverEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteResolverEndpointResponse", name: "DeleteResolverEndpointResponse")
    DeleteResolverQueryLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteResolverQueryLogConfigRequest", name: "DeleteResolverQueryLogConfigRequest")
    DeleteResolverQueryLogConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteResolverQueryLogConfigResponse", name: "DeleteResolverQueryLogConfigResponse")
    DeleteResolverRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteResolverRuleRequest", name: "DeleteResolverRuleRequest")
    DeleteResolverRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DeleteResolverRuleResponse", name: "DeleteResolverRuleResponse")
    DestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#DestinationArn", name: "DestinationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 600}})
    DisassociateFirewallRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DisassociateFirewallRuleGroupRequest", name: "DisassociateFirewallRuleGroupRequest")
    DisassociateFirewallRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DisassociateFirewallRuleGroupResponse", name: "DisassociateFirewallRuleGroupResponse")
    DisassociateResolverEndpointIpAddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DisassociateResolverEndpointIpAddressRequest", name: "DisassociateResolverEndpointIpAddressRequest")
    DisassociateResolverEndpointIpAddressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DisassociateResolverEndpointIpAddressResponse", name: "DisassociateResolverEndpointIpAddressResponse")
    DisassociateResolverQueryLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DisassociateResolverQueryLogConfigRequest", name: "DisassociateResolverQueryLogConfigRequest")
    DisassociateResolverQueryLogConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DisassociateResolverQueryLogConfigResponse", name: "DisassociateResolverQueryLogConfigResponse")
    DisassociateResolverRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DisassociateResolverRuleRequest", name: "DisassociateResolverRuleRequest")
    DisassociateResolverRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DisassociateResolverRuleResponse", name: "DisassociateResolverRuleResponse")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Dns64Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.route53resolver#Dns64Enabled", name: "Dns64Enabled")
    DnsThreatProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#DnsThreatProtection", name: "DnsThreatProtection")
    DnsThreatProtectionRuleTypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#DnsThreatProtectionRuleTypeConfig", name: "DnsThreatProtectionRuleTypeConfig")
    DnsThreatProtectionRuleTypeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#DnsThreatProtectionRuleTypeValue", name: "DnsThreatProtectionRuleTypeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DomainListFileUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#DomainListFileUrl", name: "DomainListFileUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DomainListType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#DomainListType", name: "DomainListType")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ExceptionMessage", name: "ExceptionMessage")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#Filter", name: "Filter")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 600}})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FilterValues", name: "FilterValues")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#Filters", name: "Filters")
    FirewallAdvancedContentCategoryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallAdvancedContentCategoryConfig", name: "FirewallAdvancedContentCategoryConfig")
    FirewallAdvancedContentCategoryValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FirewallAdvancedContentCategoryValue", name: "FirewallAdvancedContentCategoryValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FirewallAdvancedThreatCategoryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallAdvancedThreatCategoryConfig", name: "FirewallAdvancedThreatCategoryConfig")
    FirewallAdvancedThreatCategoryValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FirewallAdvancedThreatCategoryValue", name: "FirewallAdvancedThreatCategoryValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FirewallConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallConfig", name: "FirewallConfig")
    FirewallConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FirewallConfigList", name: "FirewallConfigList")
    FirewallDomainImportOperation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#FirewallDomainImportOperation", name: "FirewallDomainImportOperation")
    FirewallDomainList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallDomainList", name: "FirewallDomainList")
    FirewallDomainListMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallDomainListMetadata", name: "FirewallDomainListMetadata")
    FirewallDomainListMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FirewallDomainListMetadataList", name: "FirewallDomainListMetadataList")
    FirewallDomainListStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#FirewallDomainListStatus", name: "FirewallDomainListStatus")
    FirewallDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FirewallDomainName", name: "FirewallDomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FirewallDomainRedirectionAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#FirewallDomainRedirectionAction", name: "FirewallDomainRedirectionAction")
    FirewallDomainUpdateOperation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#FirewallDomainUpdateOperation", name: "FirewallDomainUpdateOperation")
    FirewallDomains = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FirewallDomains", name: "FirewallDomains")
    FirewallFailOpenStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#FirewallFailOpenStatus", name: "FirewallFailOpenStatus")
    FirewallRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallRule", name: "FirewallRule")
    FirewallRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallRuleGroup", name: "FirewallRuleGroup")
    FirewallRuleGroupAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallRuleGroupAssociation", name: "FirewallRuleGroupAssociation")
    FirewallRuleGroupAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#FirewallRuleGroupAssociationStatus", name: "FirewallRuleGroupAssociationStatus")
    FirewallRuleGroupAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FirewallRuleGroupAssociations", name: "FirewallRuleGroupAssociations")
    FirewallRuleGroupMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallRuleGroupMetadata", name: "FirewallRuleGroupMetadata")
    FirewallRuleGroupMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FirewallRuleGroupMetadataList", name: "FirewallRuleGroupMetadataList")
    FirewallRuleGroupPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FirewallRuleGroupPolicy", name: "FirewallRuleGroupPolicy", traits: {"smithy.api#length" => {"min" => 0, "max" => 30000}})
    FirewallRuleGroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#FirewallRuleGroupStatus", name: "FirewallRuleGroupStatus")
    FirewallRuleStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FirewallRuleStatus", name: "FirewallRuleStatus", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    FirewallRuleStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FirewallRuleStatusMessage", name: "FirewallRuleStatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    FirewallRuleType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallRuleType", name: "FirewallRuleType")
    FirewallRuleTypeDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#FirewallRuleTypeDefinition", name: "FirewallRuleTypeDefinition")
    FirewallRuleTypeDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FirewallRuleTypeDefinitions", name: "FirewallRuleTypeDefinitions")
    FirewallRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FirewallRules", name: "FirewallRules")
    GetFirewallConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallConfigRequest", name: "GetFirewallConfigRequest")
    GetFirewallConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallConfigResponse", name: "GetFirewallConfigResponse")
    GetFirewallDomainListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallDomainListRequest", name: "GetFirewallDomainListRequest")
    GetFirewallDomainListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallDomainListResponse", name: "GetFirewallDomainListResponse")
    GetFirewallRuleGroupAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallRuleGroupAssociationRequest", name: "GetFirewallRuleGroupAssociationRequest")
    GetFirewallRuleGroupAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallRuleGroupAssociationResponse", name: "GetFirewallRuleGroupAssociationResponse")
    GetFirewallRuleGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallRuleGroupPolicyRequest", name: "GetFirewallRuleGroupPolicyRequest")
    GetFirewallRuleGroupPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallRuleGroupPolicyResponse", name: "GetFirewallRuleGroupPolicyResponse")
    GetFirewallRuleGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallRuleGroupRequest", name: "GetFirewallRuleGroupRequest")
    GetFirewallRuleGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetFirewallRuleGroupResponse", name: "GetFirewallRuleGroupResponse")
    GetOutpostResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetOutpostResolverRequest", name: "GetOutpostResolverRequest")
    GetOutpostResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetOutpostResolverResponse", name: "GetOutpostResolverResponse")
    GetResolverConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverConfigRequest", name: "GetResolverConfigRequest")
    GetResolverConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverConfigResponse", name: "GetResolverConfigResponse")
    GetResolverDnssecConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverDnssecConfigRequest", name: "GetResolverDnssecConfigRequest")
    GetResolverDnssecConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverDnssecConfigResponse", name: "GetResolverDnssecConfigResponse")
    GetResolverEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverEndpointRequest", name: "GetResolverEndpointRequest")
    GetResolverEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverEndpointResponse", name: "GetResolverEndpointResponse")
    GetResolverQueryLogConfigAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverQueryLogConfigAssociationRequest", name: "GetResolverQueryLogConfigAssociationRequest")
    GetResolverQueryLogConfigAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverQueryLogConfigAssociationResponse", name: "GetResolverQueryLogConfigAssociationResponse")
    GetResolverQueryLogConfigPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverQueryLogConfigPolicyRequest", name: "GetResolverQueryLogConfigPolicyRequest")
    GetResolverQueryLogConfigPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverQueryLogConfigPolicyResponse", name: "GetResolverQueryLogConfigPolicyResponse")
    GetResolverQueryLogConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverQueryLogConfigRequest", name: "GetResolverQueryLogConfigRequest")
    GetResolverQueryLogConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverQueryLogConfigResponse", name: "GetResolverQueryLogConfigResponse")
    GetResolverRuleAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverRuleAssociationRequest", name: "GetResolverRuleAssociationRequest")
    GetResolverRuleAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverRuleAssociationResponse", name: "GetResolverRuleAssociationResponse")
    GetResolverRulePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverRulePolicyRequest", name: "GetResolverRulePolicyRequest")
    GetResolverRulePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverRulePolicyResponse", name: "GetResolverRulePolicyResponse")
    GetResolverRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverRuleRequest", name: "GetResolverRuleRequest")
    GetResolverRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#GetResolverRuleResponse", name: "GetResolverRuleResponse")
    ImportFirewallDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ImportFirewallDomainsRequest", name: "ImportFirewallDomainsRequest")
    ImportFirewallDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ImportFirewallDomainsResponse", name: "ImportFirewallDomainsResponse")
    InstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#InstanceCount", name: "InstanceCount")
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidPolicyDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#InvalidPolicyDocument", name: "InvalidPolicyDocument", traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    InvalidTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#InvalidTagException", name: "InvalidTagException", traits: {"smithy.api#error" => "client"})
    Ip = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#Ip", name: "Ip", traits: {"smithy.api#length" => {"min" => 7, "max" => 36}})
    IpAddressCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#IpAddressCount", name: "IpAddressCount")
    IpAddressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#IpAddressRequest", name: "IpAddressRequest")
    IpAddressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#IpAddressResponse", name: "IpAddressResponse")
    IpAddressStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#IpAddressStatus", name: "IpAddressStatus")
    IpAddressUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#IpAddressUpdate", name: "IpAddressUpdate")
    IpAddressesRequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#IpAddressesRequest", name: "IpAddressesRequest", traits: {"smithy.api#length" => {"min" => 2, "max" => 20}})
    IpAddressesResponse = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#IpAddressesResponse", name: "IpAddressesResponse")
    Ipv6 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#Ipv6", name: "Ipv6", traits: {"smithy.api#length" => {"min" => 7, "max" => 39}})
    Ipv6InternetAccessEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.route53resolver#Ipv6InternetAccessEnabled", name: "Ipv6InternetAccessEnabled")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListDomainMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#ListDomainMaxResults", name: "ListDomainMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    ListFirewallConfigsMaxResult = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#ListFirewallConfigsMaxResult", name: "ListFirewallConfigsMaxResult", traits: {"smithy.api#range" => {"min" => 5, "max" => 10}})
    ListFirewallConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallConfigsRequest", name: "ListFirewallConfigsRequest")
    ListFirewallConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallConfigsResponse", name: "ListFirewallConfigsResponse")
    ListFirewallDomainListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallDomainListsRequest", name: "ListFirewallDomainListsRequest")
    ListFirewallDomainListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallDomainListsResponse", name: "ListFirewallDomainListsResponse")
    ListFirewallDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallDomainsRequest", name: "ListFirewallDomainsRequest")
    ListFirewallDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallDomainsResponse", name: "ListFirewallDomainsResponse")
    ListFirewallRuleGroupAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallRuleGroupAssociationsRequest", name: "ListFirewallRuleGroupAssociationsRequest")
    ListFirewallRuleGroupAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallRuleGroupAssociationsResponse", name: "ListFirewallRuleGroupAssociationsResponse")
    ListFirewallRuleGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallRuleGroupsRequest", name: "ListFirewallRuleGroupsRequest")
    ListFirewallRuleGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallRuleGroupsResponse", name: "ListFirewallRuleGroupsResponse")
    ListFirewallRuleTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallRuleTypesRequest", name: "ListFirewallRuleTypesRequest")
    ListFirewallRuleTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallRuleTypesResponse", name: "ListFirewallRuleTypesResponse")
    ListFirewallRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallRulesRequest", name: "ListFirewallRulesRequest")
    ListFirewallRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListFirewallRulesResponse", name: "ListFirewallRulesResponse")
    ListOutpostResolversRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListOutpostResolversRequest", name: "ListOutpostResolversRequest")
    ListOutpostResolversResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListOutpostResolversResponse", name: "ListOutpostResolversResponse")
    ListResolverConfigsMaxResult = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#ListResolverConfigsMaxResult", name: "ListResolverConfigsMaxResult", traits: {"smithy.api#range" => {"min" => 5, "max" => 100}})
    ListResolverConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverConfigsRequest", name: "ListResolverConfigsRequest")
    ListResolverConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverConfigsResponse", name: "ListResolverConfigsResponse")
    ListResolverDnssecConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverDnssecConfigsRequest", name: "ListResolverDnssecConfigsRequest")
    ListResolverDnssecConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverDnssecConfigsResponse", name: "ListResolverDnssecConfigsResponse")
    ListResolverEndpointIpAddressesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverEndpointIpAddressesRequest", name: "ListResolverEndpointIpAddressesRequest")
    ListResolverEndpointIpAddressesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverEndpointIpAddressesResponse", name: "ListResolverEndpointIpAddressesResponse")
    ListResolverEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverEndpointsRequest", name: "ListResolverEndpointsRequest")
    ListResolverEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverEndpointsResponse", name: "ListResolverEndpointsResponse")
    ListResolverQueryLogConfigAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverQueryLogConfigAssociationsRequest", name: "ListResolverQueryLogConfigAssociationsRequest")
    ListResolverQueryLogConfigAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverQueryLogConfigAssociationsResponse", name: "ListResolverQueryLogConfigAssociationsResponse")
    ListResolverQueryLogConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverQueryLogConfigsRequest", name: "ListResolverQueryLogConfigsRequest")
    ListResolverQueryLogConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverQueryLogConfigsResponse", name: "ListResolverQueryLogConfigsResponse")
    ListResolverRuleAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverRuleAssociationsRequest", name: "ListResolverRuleAssociationsRequest")
    ListResolverRuleAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverRuleAssociationsResponse", name: "ListResolverRuleAssociationsResponse")
    ListResolverRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverRulesRequest", name: "ListResolverRulesRequest")
    ListResolverRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListResolverRulesResponse", name: "ListResolverRulesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MutationProtectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#MutationProtectionStatus", name: "MutationProtectionStatus")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#NextToken", name: "NextToken")
    OutpostArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#OutpostArn", name: "OutpostArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/op-[a-f0-9]{17}$"})
    OutpostInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#OutpostInstanceType", name: "OutpostInstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    OutpostResolver = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#OutpostResolver", name: "OutpostResolver")
    OutpostResolverList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#OutpostResolverList", name: "OutpostResolverList")
    OutpostResolverName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#OutpostResolverName", name: "OutpostResolverName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    OutpostResolverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#OutpostResolverStatus", name: "OutpostResolverStatus")
    OutpostResolverStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#OutpostResolverStatusMessage", name: "OutpostResolverStatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    PartnerThreatProtectionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#PartnerThreatProtectionConfig", name: "PartnerThreatProtectionConfig")
    PartnerValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#PartnerValue", name: "PartnerValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#Priority", name: "Priority")
    ProductId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ProductId", name: "ProductId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#Protocol", name: "Protocol")
    ProtocolList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#ProtocolList", name: "ProtocolList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    PutFirewallRuleGroupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#PutFirewallRuleGroupPolicyRequest", name: "PutFirewallRuleGroupPolicyRequest")
    PutFirewallRuleGroupPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#PutFirewallRuleGroupPolicyResponse", name: "PutFirewallRuleGroupPolicyResponse")
    PutResolverQueryLogConfigPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#PutResolverQueryLogConfigPolicyRequest", name: "PutResolverQueryLogConfigPolicyRequest")
    PutResolverQueryLogConfigPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#PutResolverQueryLogConfigPolicyResponse", name: "PutResolverQueryLogConfigPolicyResponse")
    PutResolverRulePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#PutResolverRulePolicyRequest", name: "PutResolverRulePolicyRequest")
    PutResolverRulePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#PutResolverRulePolicyResponse", name: "PutResolverRulePolicyResponse")
    Qtype = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#Qtype", name: "Qtype", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    ResolverAutodefinedReverseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverAutodefinedReverseStatus", name: "ResolverAutodefinedReverseStatus")
    ResolverConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResolverConfig", name: "ResolverConfig")
    ResolverConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#ResolverConfigList", name: "ResolverConfigList")
    ResolverDNSSECValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverDNSSECValidationStatus", name: "ResolverDNSSECValidationStatus")
    ResolverDnssecConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResolverDnssecConfig", name: "ResolverDnssecConfig")
    ResolverDnssecConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#ResolverDnssecConfigList", name: "ResolverDnssecConfigList")
    ResolverEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResolverEndpoint", name: "ResolverEndpoint")
    ResolverEndpointDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverEndpointDirection", name: "ResolverEndpointDirection")
    ResolverEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverEndpointStatus", name: "ResolverEndpointStatus")
    ResolverEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverEndpointType", name: "ResolverEndpointType")
    ResolverEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#ResolverEndpoints", name: "ResolverEndpoints")
    ResolverQueryLogConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfig", name: "ResolverQueryLogConfig")
    ResolverQueryLogConfigAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigAssociation", name: "ResolverQueryLogConfigAssociation")
    ResolverQueryLogConfigAssociationError = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigAssociationError", name: "ResolverQueryLogConfigAssociationError")
    ResolverQueryLogConfigAssociationErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigAssociationErrorMessage", name: "ResolverQueryLogConfigAssociationErrorMessage")
    ResolverQueryLogConfigAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigAssociationList", name: "ResolverQueryLogConfigAssociationList")
    ResolverQueryLogConfigAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigAssociationStatus", name: "ResolverQueryLogConfigAssociationStatus")
    ResolverQueryLogConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigList", name: "ResolverQueryLogConfigList")
    ResolverQueryLogConfigName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigName", name: "ResolverQueryLogConfigName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)$"})
    ResolverQueryLogConfigPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigPolicy", name: "ResolverQueryLogConfigPolicy", traits: {"smithy.api#length" => {"min" => 0, "max" => 30000}})
    ResolverQueryLogConfigStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverQueryLogConfigStatus", name: "ResolverQueryLogConfigStatus")
    ResolverRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResolverRule", name: "ResolverRule")
    ResolverRuleAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResolverRuleAssociation", name: "ResolverRuleAssociation")
    ResolverRuleAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverRuleAssociationStatus", name: "ResolverRuleAssociationStatus")
    ResolverRuleAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#ResolverRuleAssociations", name: "ResolverRuleAssociations")
    ResolverRuleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResolverRuleConfig", name: "ResolverRuleConfig")
    ResolverRulePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ResolverRulePolicy", name: "ResolverRulePolicy", traits: {"smithy.api#length" => {"min" => 0, "max" => 30000}})
    ResolverRuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ResolverRuleStatus", name: "ResolverRuleStatus")
    ResolverRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#ResolverRules", name: "ResolverRules")
    ResourceExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResourceExistsException", name: "ResourceExistsException", traits: {"smithy.api#error" => "client"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ResourceUnavailableException", name: "ResourceUnavailableException", traits: {"smithy.api#error" => "client"})
    Rfc3339TimeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#Rfc3339TimeString", name: "Rfc3339TimeString", traits: {"smithy.api#length" => {"min" => 20, "max" => 40}})
    RniEnhancedMetricsEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.route53resolver#RniEnhancedMetricsEnabled", name: "RniEnhancedMetricsEnabled")
    RuleTypeDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#RuleTypeDescription", name: "RuleTypeDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RuleTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#RuleTypeName", name: "RuleTypeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    RuleTypeOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#RuleTypeOption", name: "RuleTypeOption")
    RuleTypeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#RuleTypeValue", name: "RuleTypeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#SecurityGroupIds", name: "SecurityGroupIds")
    ServerNameIndication = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ServerNameIndication", name: "ServerNameIndication", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ServicePrinciple = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ServicePrinciple", name: "ServicePrinciple", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client"})
    ShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ShareStatus", name: "ShareStatus")
    SortByKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#SortByKey", name: "SortByKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#SortOrder", name: "SortOrder")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#String", name: "String")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    SubscriptionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#SubscriptionInfo", name: "SubscriptionInfo")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#TargetAddress", name: "TargetAddress")
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#TargetList", name: "TargetList", traits: {"smithy.api#length" => {"min" => 1}})
    TargetNameServerMetricsEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.route53resolver#TargetNameServerMetricsEnabled", name: "TargetNameServerMetricsEnabled")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    UnknownResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UnknownResourceException", name: "UnknownResourceException", traits: {"smithy.api#error" => "client"})
    Unsigned = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#Unsigned", name: "Unsigned")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateFirewallConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallConfigRequest", name: "UpdateFirewallConfigRequest")
    UpdateFirewallConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallConfigResponse", name: "UpdateFirewallConfigResponse")
    UpdateFirewallDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallDomainsRequest", name: "UpdateFirewallDomainsRequest")
    UpdateFirewallDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallDomainsResponse", name: "UpdateFirewallDomainsResponse")
    UpdateFirewallRuleEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallRuleEntries", name: "UpdateFirewallRuleEntries")
    UpdateFirewallRuleEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallRuleEntry", name: "UpdateFirewallRuleEntry")
    UpdateFirewallRuleGroupAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallRuleGroupAssociationRequest", name: "UpdateFirewallRuleGroupAssociationRequest")
    UpdateFirewallRuleGroupAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallRuleGroupAssociationResponse", name: "UpdateFirewallRuleGroupAssociationResponse")
    UpdateFirewallRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallRuleRequest", name: "UpdateFirewallRuleRequest")
    UpdateFirewallRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallRuleResponse", name: "UpdateFirewallRuleResponse")
    UpdateIpAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateIpAddress", name: "UpdateIpAddress")
    UpdateIpAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#UpdateIpAddresses", name: "UpdateIpAddresses", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UpdateOutpostResolverRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateOutpostResolverRequest", name: "UpdateOutpostResolverRequest")
    UpdateOutpostResolverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateOutpostResolverResponse", name: "UpdateOutpostResolverResponse")
    UpdateResolverConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateResolverConfigRequest", name: "UpdateResolverConfigRequest")
    UpdateResolverConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateResolverConfigResponse", name: "UpdateResolverConfigResponse")
    UpdateResolverDnssecConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateResolverDnssecConfigRequest", name: "UpdateResolverDnssecConfigRequest")
    UpdateResolverDnssecConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateResolverDnssecConfigResponse", name: "UpdateResolverDnssecConfigResponse")
    UpdateResolverEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateResolverEndpointRequest", name: "UpdateResolverEndpointRequest")
    UpdateResolverEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateResolverEndpointResponse", name: "UpdateResolverEndpointResponse")
    UpdateResolverRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateResolverRuleRequest", name: "UpdateResolverRuleRequest")
    UpdateResolverRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateResolverRuleResponse", name: "UpdateResolverRuleResponse")
    Validation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#Validation", name: "Validation")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    VendorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#VendorName", name: "VendorName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    Action.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    Action.add_member(:alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    AssociateFirewallRuleGroupRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority", traits: {"smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:mutation_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: MutationProtectionStatus, name: "MutationProtection"))
    AssociateFirewallRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    AssociateFirewallRuleGroupRequest.type = Types::AssociateFirewallRuleGroupRequest
    AssociateFirewallRuleGroupResponse.add_member(:firewall_rule_group_association, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupAssociation, name: "FirewallRuleGroupAssociation"))
    AssociateFirewallRuleGroupResponse.type = Types::AssociateFirewallRuleGroupResponse
    AssociateResolverEndpointIpAddressRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    AssociateResolverEndpointIpAddressRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressUpdate, name: "IpAddress", traits: {"smithy.api#required" => {}}))
    AssociateResolverEndpointIpAddressRequest.type = Types::AssociateResolverEndpointIpAddressRequest
    AssociateResolverEndpointIpAddressResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpoint, name: "ResolverEndpoint"))
    AssociateResolverEndpointIpAddressResponse.type = Types::AssociateResolverEndpointIpAddressResponse
    AssociateResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverQueryLogConfigId", traits: {"smithy.api#required" => {}}))
    AssociateResolverQueryLogConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AssociateResolverQueryLogConfigRequest.type = Types::AssociateResolverQueryLogConfigRequest
    AssociateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigAssociation, name: "ResolverQueryLogConfigAssociation"))
    AssociateResolverQueryLogConfigResponse.type = Types::AssociateResolverQueryLogConfigResponse
    AssociateResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    AssociateResolverRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    AssociateResolverRuleRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPCId", traits: {"smithy.api#required" => {}}))
    AssociateResolverRuleRequest.type = Types::AssociateResolverRuleRequest
    AssociateResolverRuleResponse.add_member(:resolver_rule_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRuleAssociation, name: "ResolverRuleAssociation"))
    AssociateResolverRuleResponse.type = Types::AssociateResolverRuleResponse
    AutodefinedReverseFlag.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    AutodefinedReverseFlag.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    AutodefinedReverseFlag.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USE_LOCAL_RESOURCE_SETTING", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    BatchCreateFirewallRuleError.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFirewallRuleEntry, name: "FirewallRule"))
    BatchCreateFirewallRuleError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    BatchCreateFirewallRuleError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BatchCreateFirewallRuleError.type = Types::BatchCreateFirewallRuleError
    BatchCreateFirewallRuleErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateFirewallRuleError, name: "member"))
    BatchCreateFirewallRuleRequest.add_member(:create_firewall_rule_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFirewallRuleEntries, name: "CreateFirewallRuleEntries", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleRequest.type = Types::BatchCreateFirewallRuleRequest
    BatchCreateFirewallRuleResponse.add_member(:created_firewall_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRules, name: "CreatedFirewallRules"))
    BatchCreateFirewallRuleResponse.add_member(:create_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateFirewallRuleErrors, name: "CreateErrors"))
    BatchCreateFirewallRuleResponse.type = Types::BatchCreateFirewallRuleResponse
    BatchDeleteFirewallRuleError.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFirewallRuleEntry, name: "FirewallRule"))
    BatchDeleteFirewallRuleError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    BatchDeleteFirewallRuleError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BatchDeleteFirewallRuleError.type = Types::BatchDeleteFirewallRuleError
    BatchDeleteFirewallRuleErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFirewallRuleError, name: "member"))
    BatchDeleteFirewallRuleRequest.add_member(:delete_firewall_rule_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFirewallRuleEntries, name: "DeleteFirewallRuleEntries", traits: {"smithy.api#required" => {}}))
    BatchDeleteFirewallRuleRequest.type = Types::BatchDeleteFirewallRuleRequest
    BatchDeleteFirewallRuleResponse.add_member(:deleted_firewall_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRules, name: "DeletedFirewallRules"))
    BatchDeleteFirewallRuleResponse.add_member(:delete_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFirewallRuleErrors, name: "DeleteErrors"))
    BatchDeleteFirewallRuleResponse.type = Types::BatchDeleteFirewallRuleResponse
    BatchUpdateFirewallRuleError.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFirewallRuleEntry, name: "FirewallRule"))
    BatchUpdateFirewallRuleError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    BatchUpdateFirewallRuleError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BatchUpdateFirewallRuleError.type = Types::BatchUpdateFirewallRuleError
    BatchUpdateFirewallRuleErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateFirewallRuleError, name: "member"))
    BatchUpdateFirewallRuleRequest.add_member(:update_firewall_rule_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFirewallRuleEntries, name: "UpdateFirewallRuleEntries", traits: {"smithy.api#required" => {}}))
    BatchUpdateFirewallRuleRequest.type = Types::BatchUpdateFirewallRuleRequest
    BatchUpdateFirewallRuleResponse.add_member(:updated_firewall_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRules, name: "UpdatedFirewallRules"))
    BatchUpdateFirewallRuleResponse.add_member(:update_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateFirewallRuleErrors, name: "UpdateErrors"))
    BatchUpdateFirewallRuleResponse.type = Types::BatchUpdateFirewallRuleResponse
    BlockOverrideDnsType.add_member(:cname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNAME", traits: {"smithy.api#enumValue" => "CNAME"}))
    BlockResponse.add_member(:nodata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODATA", traits: {"smithy.api#enumValue" => "NODATA"}))
    BlockResponse.add_member(:nxdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NXDOMAIN", traits: {"smithy.api#enumValue" => "NXDOMAIN"}))
    BlockResponse.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERRIDE", traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    ConfidenceThreshold.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ConfidenceThreshold.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ConfidenceThreshold.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateFirewallDomainListRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallDomainListRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFirewallDomainListRequest.type = Types::CreateFirewallDomainListRequest
    CreateFirewallDomainListResponse.add_member(:firewall_domain_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainList, name: "FirewallDomainList"))
    CreateFirewallDomainListResponse.type = Types::CreateFirewallDomainListResponse
    CreateFirewallRuleEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFirewallRuleEntry, name: "member"))
    CreateFirewallRuleEntry.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleEntry.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleEntry.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId"))
    CreateFirewallRuleEntry.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleEntry.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleEntry.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockResponse, name: "BlockResponse"))
    CreateFirewallRuleEntry.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDomain, name: "BlockOverrideDomain"))
    CreateFirewallRuleEntry.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsType, name: "BlockOverrideDnsType"))
    CreateFirewallRuleEntry.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "BlockOverrideTtl"))
    CreateFirewallRuleEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleEntry.add_member(:firewall_domain_redirection_action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainRedirectionAction, name: "FirewallDomainRedirectionAction"))
    CreateFirewallRuleEntry.add_member(:qtype, ::Smithy::Schema::Shapes::MemberShape.new(target: Qtype, name: "Qtype"))
    CreateFirewallRuleEntry.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsThreatProtection, name: "DnsThreatProtection"))
    CreateFirewallRuleEntry.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "ConfidenceThreshold"))
    CreateFirewallRuleEntry.add_member(:firewall_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleType, name: "FirewallRuleType"))
    CreateFirewallRuleEntry.type = Types::CreateFirewallRuleEntry
    CreateFirewallRuleGroupRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFirewallRuleGroupRequest.type = Types::CreateFirewallRuleGroupRequest
    CreateFirewallRuleGroupResponse.add_member(:firewall_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroup, name: "FirewallRuleGroup"))
    CreateFirewallRuleGroupResponse.type = Types::CreateFirewallRuleGroupResponse
    CreateFirewallRuleRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId"))
    CreateFirewallRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockResponse, name: "BlockResponse"))
    CreateFirewallRuleRequest.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDomain, name: "BlockOverrideDomain"))
    CreateFirewallRuleRequest.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsType, name: "BlockOverrideDnsType"))
    CreateFirewallRuleRequest.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "BlockOverrideTtl"))
    CreateFirewallRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_domain_redirection_action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainRedirectionAction, name: "FirewallDomainRedirectionAction"))
    CreateFirewallRuleRequest.add_member(:qtype, ::Smithy::Schema::Shapes::MemberShape.new(target: Qtype, name: "Qtype"))
    CreateFirewallRuleRequest.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsThreatProtection, name: "DnsThreatProtection"))
    CreateFirewallRuleRequest.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "ConfidenceThreshold"))
    CreateFirewallRuleRequest.add_member(:firewall_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleType, name: "FirewallRuleType"))
    CreateFirewallRuleRequest.type = Types::CreateFirewallRuleRequest
    CreateFirewallRuleResponse.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRule, name: "FirewallRule"))
    CreateFirewallRuleResponse.type = Types::CreateFirewallRuleResponse
    CreateOutpostResolverRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolverName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "InstanceCount"))
    CreateOutpostResolverRequest.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostInstanceType, name: "PreferredInstanceType", traits: {"smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArn, name: "OutpostArn", traits: {"smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateOutpostResolverRequest.type = Types::CreateOutpostResolverRequest
    CreateOutpostResolverResponse.add_member(:outpost_resolver, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolver, name: "OutpostResolver"))
    CreateOutpostResolverResponse.type = Types::CreateOutpostResolverResponse
    CreateResolverEndpointRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateResolverEndpointRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpointDirection, name: "Direction", traits: {"smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressesRequest, name: "IpAddresses", traits: {"smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArn, name: "OutpostArn"))
    CreateResolverEndpointRequest.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostInstanceType, name: "PreferredInstanceType"))
    CreateResolverEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateResolverEndpointRequest.add_member(:resolver_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpointType, name: "ResolverEndpointType"))
    CreateResolverEndpointRequest.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolList, name: "Protocols"))
    CreateResolverEndpointRequest.add_member(:rni_enhanced_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RniEnhancedMetricsEnabled, name: "RniEnhancedMetricsEnabled"))
    CreateResolverEndpointRequest.add_member(:target_name_server_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNameServerMetricsEnabled, name: "TargetNameServerMetricsEnabled"))
    CreateResolverEndpointRequest.add_member(:dns64_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Dns64Enabled, name: "Dns64Enabled"))
    CreateResolverEndpointRequest.add_member(:ipv6_internet_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6InternetAccessEnabled, name: "Ipv6InternetAccessEnabled"))
    CreateResolverEndpointRequest.type = Types::CreateResolverEndpointRequest
    CreateResolverEndpointResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpoint, name: "ResolverEndpoint"))
    CreateResolverEndpointResponse.type = Types::CreateResolverEndpointResponse
    CreateResolverQueryLogConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn", traits: {"smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateResolverQueryLogConfigRequest.type = Types::CreateResolverQueryLogConfigRequest
    CreateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfig, name: "ResolverQueryLogConfig"))
    CreateResolverQueryLogConfigResponse.type = Types::CreateResolverQueryLogConfigResponse
    CreateResolverRuleRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId", traits: {"smithy.api#required" => {}}))
    CreateResolverRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateResolverRuleRequest.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeOption, name: "RuleType", traits: {"smithy.api#required" => {}}))
    CreateResolverRuleRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName"))
    CreateResolverRuleRequest.add_member(:target_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "TargetIps"))
    CreateResolverRuleRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId"))
    CreateResolverRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateResolverRuleRequest.add_member(:delegation_record, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegationRecord, name: "DelegationRecord"))
    CreateResolverRuleRequest.type = Types::CreateResolverRuleRequest
    CreateResolverRuleResponse.add_member(:resolver_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRule, name: "ResolverRule"))
    CreateResolverRuleResponse.type = Types::CreateResolverRuleResponse
    DeleteFirewallDomainListRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    DeleteFirewallDomainListRequest.type = Types::DeleteFirewallDomainListRequest
    DeleteFirewallDomainListResponse.add_member(:firewall_domain_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainList, name: "FirewallDomainList"))
    DeleteFirewallDomainListResponse.type = Types::DeleteFirewallDomainListResponse
    DeleteFirewallRuleEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFirewallRuleEntry, name: "member"))
    DeleteFirewallRuleEntry.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleEntry.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId"))
    DeleteFirewallRuleEntry.add_member(:firewall_threat_protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallThreatProtectionId"))
    DeleteFirewallRuleEntry.add_member(:qtype, ::Smithy::Schema::Shapes::MemberShape.new(target: Qtype, name: "Qtype"))
    DeleteFirewallRuleEntry.type = Types::DeleteFirewallRuleEntry
    DeleteFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleGroupRequest.type = Types::DeleteFirewallRuleGroupRequest
    DeleteFirewallRuleGroupResponse.add_member(:firewall_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroup, name: "FirewallRuleGroup"))
    DeleteFirewallRuleGroupResponse.type = Types::DeleteFirewallRuleGroupResponse
    DeleteFirewallRuleRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId"))
    DeleteFirewallRuleRequest.add_member(:firewall_threat_protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallThreatProtectionId"))
    DeleteFirewallRuleRequest.add_member(:qtype, ::Smithy::Schema::Shapes::MemberShape.new(target: Qtype, name: "Qtype"))
    DeleteFirewallRuleRequest.type = Types::DeleteFirewallRuleRequest
    DeleteFirewallRuleResponse.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRule, name: "FirewallRule"))
    DeleteFirewallRuleResponse.type = Types::DeleteFirewallRuleResponse
    DeleteOutpostResolverRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteOutpostResolverRequest.type = Types::DeleteOutpostResolverRequest
    DeleteOutpostResolverResponse.add_member(:outpost_resolver, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolver, name: "OutpostResolver"))
    DeleteOutpostResolverResponse.type = Types::DeleteOutpostResolverResponse
    DeleteResolverEndpointRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    DeleteResolverEndpointRequest.type = Types::DeleteResolverEndpointRequest
    DeleteResolverEndpointResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpoint, name: "ResolverEndpoint"))
    DeleteResolverEndpointResponse.type = Types::DeleteResolverEndpointResponse
    DeleteResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverQueryLogConfigId", traits: {"smithy.api#required" => {}}))
    DeleteResolverQueryLogConfigRequest.type = Types::DeleteResolverQueryLogConfigRequest
    DeleteResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfig, name: "ResolverQueryLogConfig"))
    DeleteResolverQueryLogConfigResponse.type = Types::DeleteResolverQueryLogConfigResponse
    DeleteResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    DeleteResolverRuleRequest.type = Types::DeleteResolverRuleRequest
    DeleteResolverRuleResponse.add_member(:resolver_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRule, name: "ResolverRule"))
    DeleteResolverRuleResponse.type = Types::DeleteResolverRuleResponse
    DisassociateFirewallRuleGroupRequest.add_member(:firewall_rule_group_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupAssociationId", traits: {"smithy.api#required" => {}}))
    DisassociateFirewallRuleGroupRequest.type = Types::DisassociateFirewallRuleGroupRequest
    DisassociateFirewallRuleGroupResponse.add_member(:firewall_rule_group_association, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupAssociation, name: "FirewallRuleGroupAssociation"))
    DisassociateFirewallRuleGroupResponse.type = Types::DisassociateFirewallRuleGroupResponse
    DisassociateResolverEndpointIpAddressRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverEndpointIpAddressRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressUpdate, name: "IpAddress", traits: {"smithy.api#required" => {}}))
    DisassociateResolverEndpointIpAddressRequest.type = Types::DisassociateResolverEndpointIpAddressRequest
    DisassociateResolverEndpointIpAddressResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpoint, name: "ResolverEndpoint"))
    DisassociateResolverEndpointIpAddressResponse.type = Types::DisassociateResolverEndpointIpAddressResponse
    DisassociateResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverQueryLogConfigId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverQueryLogConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverQueryLogConfigRequest.type = Types::DisassociateResolverQueryLogConfigRequest
    DisassociateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigAssociation, name: "ResolverQueryLogConfigAssociation"))
    DisassociateResolverQueryLogConfigResponse.type = Types::DisassociateResolverQueryLogConfigResponse
    DisassociateResolverRuleRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPCId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverRuleRequest.type = Types::DisassociateResolverRuleRequest
    DisassociateResolverRuleResponse.add_member(:resolver_rule_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRuleAssociation, name: "ResolverRuleAssociation"))
    DisassociateResolverRuleResponse.type = Types::DisassociateResolverRuleResponse
    DnsThreatProtection.add_member(:dga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DGA", traits: {"smithy.api#enumValue" => "DGA"}))
    DnsThreatProtection.add_member(:dns_tunneling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_TUNNELING", traits: {"smithy.api#enumValue" => "DNS_TUNNELING"}))
    DnsThreatProtection.add_member(:dictionary_dga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DICTIONARY_DGA", traits: {"smithy.api#enumValue" => "DICTIONARY_DGA"}))
    DnsThreatProtectionRuleTypeConfig.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsThreatProtectionRuleTypeValue, name: "Value", traits: {"smithy.api#required" => {}}))
    DnsThreatProtectionRuleTypeConfig.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "ConfidenceThreshold", traits: {"smithy.api#required" => {}}))
    DnsThreatProtectionRuleTypeConfig.type = Types::DnsThreatProtectionRuleTypeConfig
    DomainListType.add_member(:threat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREAT", traits: {"smithy.api#enumValue" => "THREAT"}))
    DomainListType.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT", traits: {"smithy.api#enumValue" => "CONTENT"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values"))
    Filter.type = Types::Filter
    FilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    Filters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FirewallAdvancedContentCategoryConfig.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallAdvancedContentCategoryValue, name: "Category", traits: {"smithy.api#required" => {}}))
    FirewallAdvancedContentCategoryConfig.type = Types::FirewallAdvancedContentCategoryConfig
    FirewallAdvancedThreatCategoryConfig.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallAdvancedThreatCategoryValue, name: "Category", traits: {"smithy.api#required" => {}}))
    FirewallAdvancedThreatCategoryConfig.type = Types::FirewallAdvancedThreatCategoryConfig
    FirewallConfig.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    FirewallConfig.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    FirewallConfig.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerId"))
    FirewallConfig.add_member(:firewall_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallFailOpenStatus, name: "FirewallFailOpen"))
    FirewallConfig.type = Types::FirewallConfig
    FirewallConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallConfig, name: "member"))
    FirewallDomainImportOperation.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    FirewallDomainList.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    FirewallDomainList.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    FirewallDomainList.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    FirewallDomainList.add_member(:domain_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Unsigned, name: "DomainCount"))
    FirewallDomainList.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainListStatus, name: "Status"))
    FirewallDomainList.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    FirewallDomainList.add_member(:managed_owner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrinciple, name: "ManagedOwnerName"))
    FirewallDomainList.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    FirewallDomainList.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    FirewallDomainList.add_member(:modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "ModificationTime"))
    FirewallDomainList.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "Category"))
    FirewallDomainList.add_member(:managed_list_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainListType, name: "ManagedListType"))
    FirewallDomainList.type = Types::FirewallDomainList
    FirewallDomainListMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    FirewallDomainListMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    FirewallDomainListMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    FirewallDomainListMetadata.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    FirewallDomainListMetadata.add_member(:managed_owner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrinciple, name: "ManagedOwnerName"))
    FirewallDomainListMetadata.add_member(:managed_list_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainListType, name: "ManagedListType"))
    FirewallDomainListMetadata.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "Category"))
    FirewallDomainListMetadata.type = Types::FirewallDomainListMetadata
    FirewallDomainListMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainListMetadata, name: "member"))
    FirewallDomainListStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallDomainListStatus.add_member(:complete_import_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE_IMPORT_FAILED", traits: {"smithy.api#enumValue" => "COMPLETE_IMPORT_FAILED"}))
    FirewallDomainListStatus.add_member(:importing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTING", traits: {"smithy.api#enumValue" => "IMPORTING"}))
    FirewallDomainListStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallDomainListStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallDomainRedirectionAction.add_member(:inspect_redirection_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSPECT_REDIRECTION_DOMAIN", traits: {"smithy.api#enumValue" => "INSPECT_REDIRECTION_DOMAIN"}))
    FirewallDomainRedirectionAction.add_member(:trust_redirection_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUST_REDIRECTION_DOMAIN", traits: {"smithy.api#enumValue" => "TRUST_REDIRECTION_DOMAIN"}))
    FirewallDomainUpdateOperation.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    FirewallDomainUpdateOperation.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    FirewallDomainUpdateOperation.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    FirewallDomains.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainName, name: "member"))
    FirewallFailOpenStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FirewallFailOpenStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FirewallFailOpenStatus.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USE_LOCAL_RESOURCE_SETTING", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    FirewallRule.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId"))
    FirewallRule.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId"))
    FirewallRule.add_member(:firewall_threat_protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallThreatProtectionId"))
    FirewallRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    FirewallRule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    FirewallRule.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    FirewallRule.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockResponse, name: "BlockResponse"))
    FirewallRule.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDomain, name: "BlockOverrideDomain"))
    FirewallRule.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsType, name: "BlockOverrideDnsType"))
    FirewallRule.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: Unsigned, name: "BlockOverrideTtl"))
    FirewallRule.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    FirewallRule.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    FirewallRule.add_member(:modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "ModificationTime"))
    FirewallRule.add_member(:firewall_domain_redirection_action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainRedirectionAction, name: "FirewallDomainRedirectionAction"))
    FirewallRule.add_member(:qtype, ::Smithy::Schema::Shapes::MemberShape.new(target: Qtype, name: "Qtype"))
    FirewallRule.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsThreatProtection, name: "DnsThreatProtection"))
    FirewallRule.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "ConfidenceThreshold"))
    FirewallRule.add_member(:firewall_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleType, name: "FirewallRuleType"))
    FirewallRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleStatus, name: "Status"))
    FirewallRule.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleStatusMessage, name: "StatusMessage"))
    FirewallRule.type = Types::FirewallRule
    FirewallRuleGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    FirewallRuleGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    FirewallRuleGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    FirewallRuleGroup.add_member(:rule_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Unsigned, name: "RuleCount"))
    FirewallRuleGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupStatus, name: "Status"))
    FirewallRuleGroup.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    FirewallRuleGroup.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerId"))
    FirewallRuleGroup.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    FirewallRuleGroup.add_member(:share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "ShareStatus"))
    FirewallRuleGroup.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    FirewallRuleGroup.add_member(:modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "ModificationTime"))
    FirewallRuleGroup.type = Types::FirewallRuleGroup
    FirewallRuleGroupAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    FirewallRuleGroupAssociation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    FirewallRuleGroupAssociation.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId"))
    FirewallRuleGroupAssociation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    FirewallRuleGroupAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    FirewallRuleGroupAssociation.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    FirewallRuleGroupAssociation.add_member(:mutation_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: MutationProtectionStatus, name: "MutationProtection"))
    FirewallRuleGroupAssociation.add_member(:managed_owner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrinciple, name: "ManagedOwnerName"))
    FirewallRuleGroupAssociation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupAssociationStatus, name: "Status"))
    FirewallRuleGroupAssociation.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    FirewallRuleGroupAssociation.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    FirewallRuleGroupAssociation.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    FirewallRuleGroupAssociation.add_member(:modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "ModificationTime"))
    FirewallRuleGroupAssociation.type = Types::FirewallRuleGroupAssociation
    FirewallRuleGroupAssociationStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallRuleGroupAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallRuleGroupAssociationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallRuleGroupAssociations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupAssociation, name: "member"))
    FirewallRuleGroupMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    FirewallRuleGroupMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    FirewallRuleGroupMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    FirewallRuleGroupMetadata.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerId"))
    FirewallRuleGroupMetadata.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    FirewallRuleGroupMetadata.add_member(:share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "ShareStatus"))
    FirewallRuleGroupMetadata.type = Types::FirewallRuleGroupMetadata
    FirewallRuleGroupMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupMetadata, name: "member"))
    FirewallRuleGroupStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallRuleGroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallRuleGroupStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallRuleType.add_member(:partner_threat_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerThreatProtectionConfig, name: "PartnerThreatProtection"))
    FirewallRuleType.add_member(:firewall_advanced_content_category, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallAdvancedContentCategoryConfig, name: "FirewallAdvancedContentCategory"))
    FirewallRuleType.add_member(:firewall_advanced_threat_category, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallAdvancedThreatCategoryConfig, name: "FirewallAdvancedThreatCategory"))
    FirewallRuleType.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsThreatProtectionRuleTypeConfig, name: "DnsThreatProtection"))
    FirewallRuleType.type = Types::FirewallRuleType
    FirewallRuleTypeDefinition.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeName, name: "RuleType"))
    FirewallRuleTypeDefinition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeValue, name: "Value"))
    FirewallRuleTypeDefinition.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    FirewallRuleTypeDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeDescription, name: "Description"))
    FirewallRuleTypeDefinition.add_member(:subscription_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionInfo, name: "SubscriptionInfo"))
    FirewallRuleTypeDefinition.type = Types::FirewallRuleTypeDefinition
    FirewallRuleTypeDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleTypeDefinition, name: "member"))
    FirewallRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRule, name: "member"))
    GetFirewallConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    GetFirewallConfigRequest.type = Types::GetFirewallConfigRequest
    GetFirewallConfigResponse.add_member(:firewall_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallConfig, name: "FirewallConfig"))
    GetFirewallConfigResponse.type = Types::GetFirewallConfigResponse
    GetFirewallDomainListRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListRequest.type = Types::GetFirewallDomainListRequest
    GetFirewallDomainListResponse.add_member(:firewall_domain_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainList, name: "FirewallDomainList"))
    GetFirewallDomainListResponse.type = Types::GetFirewallDomainListResponse
    GetFirewallRuleGroupAssociationRequest.add_member(:firewall_rule_group_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupAssociationId", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleGroupAssociationRequest.type = Types::GetFirewallRuleGroupAssociationRequest
    GetFirewallRuleGroupAssociationResponse.add_member(:firewall_rule_group_association, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupAssociation, name: "FirewallRuleGroupAssociation"))
    GetFirewallRuleGroupAssociationResponse.type = Types::GetFirewallRuleGroupAssociationResponse
    GetFirewallRuleGroupPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleGroupPolicyRequest.type = Types::GetFirewallRuleGroupPolicyRequest
    GetFirewallRuleGroupPolicyResponse.add_member(:firewall_rule_group_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupPolicy, name: "FirewallRuleGroupPolicy"))
    GetFirewallRuleGroupPolicyResponse.type = Types::GetFirewallRuleGroupPolicyResponse
    GetFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleGroupRequest.type = Types::GetFirewallRuleGroupRequest
    GetFirewallRuleGroupResponse.add_member(:firewall_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroup, name: "FirewallRuleGroup"))
    GetFirewallRuleGroupResponse.type = Types::GetFirewallRuleGroupResponse
    GetOutpostResolverRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetOutpostResolverRequest.type = Types::GetOutpostResolverRequest
    GetOutpostResolverResponse.add_member(:outpost_resolver, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolver, name: "OutpostResolver"))
    GetOutpostResolverResponse.type = Types::GetOutpostResolverResponse
    GetResolverConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    GetResolverConfigRequest.type = Types::GetResolverConfigRequest
    GetResolverConfigResponse.add_member(:resolver_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverConfig, name: "ResolverConfig"))
    GetResolverConfigResponse.type = Types::GetResolverConfigResponse
    GetResolverDnssecConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    GetResolverDnssecConfigRequest.type = Types::GetResolverDnssecConfigRequest
    GetResolverDnssecConfigResponse.add_member(:resolver_dnssec_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverDnssecConfig, name: "ResolverDNSSECConfig"))
    GetResolverDnssecConfigResponse.type = Types::GetResolverDnssecConfigResponse
    GetResolverEndpointRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    GetResolverEndpointRequest.type = Types::GetResolverEndpointRequest
    GetResolverEndpointResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpoint, name: "ResolverEndpoint"))
    GetResolverEndpointResponse.type = Types::GetResolverEndpointResponse
    GetResolverQueryLogConfigAssociationRequest.add_member(:resolver_query_log_config_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverQueryLogConfigAssociationId", traits: {"smithy.api#required" => {}}))
    GetResolverQueryLogConfigAssociationRequest.type = Types::GetResolverQueryLogConfigAssociationRequest
    GetResolverQueryLogConfigAssociationResponse.add_member(:resolver_query_log_config_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigAssociation, name: "ResolverQueryLogConfigAssociation"))
    GetResolverQueryLogConfigAssociationResponse.type = Types::GetResolverQueryLogConfigAssociationResponse
    GetResolverQueryLogConfigPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetResolverQueryLogConfigPolicyRequest.type = Types::GetResolverQueryLogConfigPolicyRequest
    GetResolverQueryLogConfigPolicyResponse.add_member(:resolver_query_log_config_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigPolicy, name: "ResolverQueryLogConfigPolicy"))
    GetResolverQueryLogConfigPolicyResponse.type = Types::GetResolverQueryLogConfigPolicyResponse
    GetResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverQueryLogConfigId", traits: {"smithy.api#required" => {}}))
    GetResolverQueryLogConfigRequest.type = Types::GetResolverQueryLogConfigRequest
    GetResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfig, name: "ResolverQueryLogConfig"))
    GetResolverQueryLogConfigResponse.type = Types::GetResolverQueryLogConfigResponse
    GetResolverRuleAssociationRequest.add_member(:resolver_rule_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverRuleAssociationId", traits: {"smithy.api#required" => {}}))
    GetResolverRuleAssociationRequest.type = Types::GetResolverRuleAssociationRequest
    GetResolverRuleAssociationResponse.add_member(:resolver_rule_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRuleAssociation, name: "ResolverRuleAssociation"))
    GetResolverRuleAssociationResponse.type = Types::GetResolverRuleAssociationResponse
    GetResolverRulePolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetResolverRulePolicyRequest.type = Types::GetResolverRulePolicyRequest
    GetResolverRulePolicyResponse.add_member(:resolver_rule_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRulePolicy, name: "ResolverRulePolicy"))
    GetResolverRulePolicyResponse.type = Types::GetResolverRulePolicyResponse
    GetResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    GetResolverRuleRequest.type = Types::GetResolverRuleRequest
    GetResolverRuleResponse.add_member(:resolver_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRule, name: "ResolverRule"))
    GetResolverRuleResponse.type = Types::GetResolverRuleResponse
    ImportFirewallDomainsRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainImportOperation, name: "Operation", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.add_member(:domain_file_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainListFileUrl, name: "DomainFileUrl", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.type = Types::ImportFirewallDomainsRequest
    ImportFirewallDomainsResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ImportFirewallDomainsResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ImportFirewallDomainsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainListStatus, name: "Status"))
    ImportFirewallDomainsResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    ImportFirewallDomainsResponse.type = Types::ImportFirewallDomainsResponse
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FieldName"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPolicyDocument.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidPolicyDocument.type = Types::InvalidPolicyDocument
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidTagException.type = Types::InvalidTagException
    IpAddressRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId", traits: {"smithy.api#required" => {}}))
    IpAddressRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip"))
    IpAddressRequest.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6, name: "Ipv6"))
    IpAddressRequest.type = Types::IpAddressRequest
    IpAddressResponse.add_member(:ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "IpId"))
    IpAddressResponse.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId"))
    IpAddressResponse.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip"))
    IpAddressResponse.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6, name: "Ipv6"))
    IpAddressResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressStatus, name: "Status"))
    IpAddressResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    IpAddressResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    IpAddressResponse.add_member(:modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "ModificationTime"))
    IpAddressResponse.type = Types::IpAddressResponse
    IpAddressStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    IpAddressStatus.add_member(:failed_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedCreation", traits: {"smithy.api#enumValue" => "FAILED_CREATION"}))
    IpAddressStatus.add_member(:failed_creation_insufficient_ec2_capacity_in_outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedCreationInsufficientEC2CapacityInOutpost", traits: {"smithy.api#enumValue" => "FAILED_CREATION_INSUFFICIENT_EC2_CAPACITY_IN_OUTPOST"}))
    IpAddressStatus.add_member(:attaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Attaching", traits: {"smithy.api#enumValue" => "ATTACHING"}))
    IpAddressStatus.add_member(:attached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Attached", traits: {"smithy.api#enumValue" => "ATTACHED"}))
    IpAddressStatus.add_member(:remap_detaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RemapDetaching", traits: {"smithy.api#enumValue" => "REMAP_DETACHING"}))
    IpAddressStatus.add_member(:remap_attaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RemapAttaching", traits: {"smithy.api#enumValue" => "REMAP_ATTACHING"}))
    IpAddressStatus.add_member(:detaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Detaching", traits: {"smithy.api#enumValue" => "DETACHING"}))
    IpAddressStatus.add_member(:failed_resource_gone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedResourceGone", traits: {"smithy.api#enumValue" => "FAILED_RESOURCE_GONE"}))
    IpAddressStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    IpAddressStatus.add_member(:delete_failed_fas_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteFailedFasExpired", traits: {"smithy.api#enumValue" => "DELETE_FAILED_FAS_EXPIRED"}))
    IpAddressStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    IpAddressStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateFailed", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    IpAddressStatus.add_member(:isolated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Isolated", traits: {"smithy.api#enumValue" => "ISOLATED"}))
    IpAddressUpdate.add_member(:ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "IpId"))
    IpAddressUpdate.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId"))
    IpAddressUpdate.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip"))
    IpAddressUpdate.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6, name: "Ipv6"))
    IpAddressUpdate.type = Types::IpAddressUpdate
    IpAddressesRequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressRequest, name: "member"))
    IpAddressesResponse.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressResponse, name: "member"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    LimitExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    LimitExceededException.type = Types::LimitExceededException
    ListFirewallConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListFirewallConfigsMaxResult, name: "MaxResults"))
    ListFirewallConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallConfigsRequest.type = Types::ListFirewallConfigsRequest
    ListFirewallConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallConfigsResponse.add_member(:firewall_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallConfigList, name: "FirewallConfigs"))
    ListFirewallConfigsResponse.type = Types::ListFirewallConfigsResponse
    ListFirewallDomainListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListFirewallDomainListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallDomainListsRequest.type = Types::ListFirewallDomainListsRequest
    ListFirewallDomainListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallDomainListsResponse.add_member(:firewall_domain_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainListMetadataList, name: "FirewallDomainLists"))
    ListFirewallDomainListsResponse.type = Types::ListFirewallDomainListsResponse
    ListFirewallDomainsRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    ListFirewallDomainsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDomainMaxResults, name: "MaxResults"))
    ListFirewallDomainsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallDomainsRequest.type = Types::ListFirewallDomainsRequest
    ListFirewallDomainsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallDomainsResponse.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomains, name: "Domains"))
    ListFirewallDomainsResponse.type = Types::ListFirewallDomainsResponse
    ListFirewallRuleGroupAssociationsRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupAssociationStatus, name: "Status"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallRuleGroupAssociationsRequest.type = Types::ListFirewallRuleGroupAssociationsRequest
    ListFirewallRuleGroupAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallRuleGroupAssociationsResponse.add_member(:firewall_rule_group_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupAssociations, name: "FirewallRuleGroupAssociations"))
    ListFirewallRuleGroupAssociationsResponse.type = Types::ListFirewallRuleGroupAssociationsResponse
    ListFirewallRuleGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListFirewallRuleGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallRuleGroupsRequest.type = Types::ListFirewallRuleGroupsRequest
    ListFirewallRuleGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallRuleGroupsResponse.add_member(:firewall_rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupMetadataList, name: "FirewallRuleGroups"))
    ListFirewallRuleGroupsResponse.type = Types::ListFirewallRuleGroupsResponse
    ListFirewallRuleTypesRequest.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeName, name: "RuleType"))
    ListFirewallRuleTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListFirewallRuleTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallRuleTypesRequest.type = Types::ListFirewallRuleTypesRequest
    ListFirewallRuleTypesResponse.add_member(:firewall_rule_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleTypeDefinitions, name: "FirewallRuleTypes"))
    ListFirewallRuleTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallRuleTypesResponse.type = Types::ListFirewallRuleTypesResponse
    ListFirewallRulesRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    ListFirewallRulesRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    ListFirewallRulesRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    ListFirewallRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListFirewallRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallRulesRequest.type = Types::ListFirewallRulesRequest
    ListFirewallRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFirewallRulesResponse.add_member(:firewall_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRules, name: "FirewallRules"))
    ListFirewallRulesResponse.type = Types::ListFirewallRulesResponse
    ListOutpostResolversRequest.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArn, name: "OutpostArn"))
    ListOutpostResolversRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListOutpostResolversRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOutpostResolversRequest.type = Types::ListOutpostResolversRequest
    ListOutpostResolversResponse.add_member(:outpost_resolvers, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolverList, name: "OutpostResolvers"))
    ListOutpostResolversResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOutpostResolversResponse.type = Types::ListOutpostResolversResponse
    ListResolverConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResolverConfigsMaxResult, name: "MaxResults"))
    ListResolverConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverConfigsRequest.type = Types::ListResolverConfigsRequest
    ListResolverConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverConfigsResponse.add_member(:resolver_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverConfigList, name: "ResolverConfigs"))
    ListResolverConfigsResponse.type = Types::ListResolverConfigsResponse
    ListResolverDnssecConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverDnssecConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverDnssecConfigsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListResolverDnssecConfigsRequest.type = Types::ListResolverDnssecConfigsRequest
    ListResolverDnssecConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverDnssecConfigsResponse.add_member(:resolver_dnssec_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverDnssecConfigList, name: "ResolverDnssecConfigs"))
    ListResolverDnssecConfigsResponse.type = Types::ListResolverDnssecConfigsResponse
    ListResolverEndpointIpAddressesRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    ListResolverEndpointIpAddressesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverEndpointIpAddressesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverEndpointIpAddressesRequest.type = Types::ListResolverEndpointIpAddressesRequest
    ListResolverEndpointIpAddressesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverEndpointIpAddressesResponse.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverEndpointIpAddressesResponse.add_member(:ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressesResponse, name: "IpAddresses"))
    ListResolverEndpointIpAddressesResponse.type = Types::ListResolverEndpointIpAddressesResponse
    ListResolverEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverEndpointsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListResolverEndpointsRequest.type = Types::ListResolverEndpointsRequest
    ListResolverEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverEndpointsResponse.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverEndpointsResponse.add_member(:resolver_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpoints, name: "ResolverEndpoints"))
    ListResolverEndpointsResponse.type = Types::ListResolverEndpointsResponse
    ListResolverQueryLogConfigAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortByKey, name: "SortBy"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ListResolverQueryLogConfigAssociationsRequest.type = Types::ListResolverQueryLogConfigAssociationsRequest
    ListResolverQueryLogConfigAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "TotalCount", traits: {"smithy.api#default" => 0}))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:total_filtered_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "TotalFilteredCount", traits: {"smithy.api#default" => 0}))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:resolver_query_log_config_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigAssociationList, name: "ResolverQueryLogConfigAssociations"))
    ListResolverQueryLogConfigAssociationsResponse.type = Types::ListResolverQueryLogConfigAssociationsResponse
    ListResolverQueryLogConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverQueryLogConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverQueryLogConfigsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListResolverQueryLogConfigsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortByKey, name: "SortBy"))
    ListResolverQueryLogConfigsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ListResolverQueryLogConfigsRequest.type = Types::ListResolverQueryLogConfigsRequest
    ListResolverQueryLogConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverQueryLogConfigsResponse.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "TotalCount", traits: {"smithy.api#default" => 0}))
    ListResolverQueryLogConfigsResponse.add_member(:total_filtered_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "TotalFilteredCount", traits: {"smithy.api#default" => 0}))
    ListResolverQueryLogConfigsResponse.add_member(:resolver_query_log_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigList, name: "ResolverQueryLogConfigs"))
    ListResolverQueryLogConfigsResponse.type = Types::ListResolverQueryLogConfigsResponse
    ListResolverRuleAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverRuleAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverRuleAssociationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListResolverRuleAssociationsRequest.type = Types::ListResolverRuleAssociationsRequest
    ListResolverRuleAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverRuleAssociationsResponse.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverRuleAssociationsResponse.add_member(:resolver_rule_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRuleAssociations, name: "ResolverRuleAssociations"))
    ListResolverRuleAssociationsResponse.type = Types::ListResolverRuleAssociationsResponse
    ListResolverRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverRulesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListResolverRulesRequest.type = Types::ListResolverRulesRequest
    ListResolverRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResolverRulesResponse.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResolverRulesResponse.add_member(:resolver_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRules, name: "ResolverRules"))
    ListResolverRulesResponse.type = Types::ListResolverRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MutationProtectionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MutationProtectionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    OutpostResolver.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    OutpostResolver.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    OutpostResolver.add_member(:modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "ModificationTime"))
    OutpostResolver.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    OutpostResolver.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    OutpostResolver.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "InstanceCount"))
    OutpostResolver.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostInstanceType, name: "PreferredInstanceType"))
    OutpostResolver.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolverName, name: "Name"))
    OutpostResolver.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolverStatus, name: "Status"))
    OutpostResolver.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolverStatusMessage, name: "StatusMessage"))
    OutpostResolver.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArn, name: "OutpostArn"))
    OutpostResolver.type = Types::OutpostResolver
    OutpostResolverList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolver, name: "member"))
    OutpostResolverStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    OutpostResolverStatus.add_member(:operational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONAL", traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    OutpostResolverStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    OutpostResolverStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    OutpostResolverStatus.add_member(:action_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_NEEDED", traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    OutpostResolverStatus.add_member(:failed_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_CREATION", traits: {"smithy.api#enumValue" => "FAILED_CREATION"}))
    OutpostResolverStatus.add_member(:failed_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_DELETION", traits: {"smithy.api#enumValue" => "FAILED_DELETION"}))
    PartnerThreatProtectionConfig.add_member(:partner, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerValue, name: "Partner", traits: {"smithy.api#required" => {}}))
    PartnerThreatProtectionConfig.type = Types::PartnerThreatProtectionConfig
    Protocol.add_member(:doh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOH", traits: {"smithy.api#enumValue" => "DoH"}))
    Protocol.add_member(:do53, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DO53", traits: {"smithy.api#enumValue" => "Do53"}))
    Protocol.add_member(:dohfips, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOHFIPS", traits: {"smithy.api#enumValue" => "DoH-FIPS"}))
    ProtocolList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "member"))
    PutFirewallRuleGroupPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    PutFirewallRuleGroupPolicyRequest.add_member(:firewall_rule_group_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupPolicy, name: "FirewallRuleGroupPolicy", traits: {"smithy.api#required" => {}}))
    PutFirewallRuleGroupPolicyRequest.type = Types::PutFirewallRuleGroupPolicyRequest
    PutFirewallRuleGroupPolicyResponse.add_member(:return_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReturnValue", traits: {"smithy.api#default" => false}))
    PutFirewallRuleGroupPolicyResponse.type = Types::PutFirewallRuleGroupPolicyResponse
    PutResolverQueryLogConfigPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    PutResolverQueryLogConfigPolicyRequest.add_member(:resolver_query_log_config_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigPolicy, name: "ResolverQueryLogConfigPolicy", traits: {"smithy.api#required" => {}}))
    PutResolverQueryLogConfigPolicyRequest.type = Types::PutResolverQueryLogConfigPolicyRequest
    PutResolverQueryLogConfigPolicyResponse.add_member(:return_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReturnValue", traits: {"smithy.api#default" => false}))
    PutResolverQueryLogConfigPolicyResponse.type = Types::PutResolverQueryLogConfigPolicyResponse
    PutResolverRulePolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    PutResolverRulePolicyRequest.add_member(:resolver_rule_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRulePolicy, name: "ResolverRulePolicy", traits: {"smithy.api#required" => {}}))
    PutResolverRulePolicyRequest.type = Types::PutResolverRulePolicyRequest
    PutResolverRulePolicyResponse.add_member(:return_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReturnValue", traits: {"smithy.api#default" => false}))
    PutResolverRulePolicyResponse.type = Types::PutResolverRulePolicyResponse
    ResolverAutodefinedReverseStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabling", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ResolverAutodefinedReverseStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverAutodefinedReverseStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabling", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ResolverAutodefinedReverseStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResolverAutodefinedReverseStatus.add_member(:updating_to_use_local_resource_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdatingToUseLocalResourceSetting", traits: {"smithy.api#enumValue" => "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"}))
    ResolverAutodefinedReverseStatus.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UseLocalResourceSetting", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ResolverConfig.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ResolverConfig.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ResolverConfig.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerId"))
    ResolverConfig.add_member(:autodefined_reverse, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverAutodefinedReverseStatus, name: "AutodefinedReverse"))
    ResolverConfig.type = Types::ResolverConfig
    ResolverConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverConfig, name: "member"))
    ResolverDNSSECValidationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabling", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ResolverDNSSECValidationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverDNSSECValidationStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabling", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ResolverDNSSECValidationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResolverDNSSECValidationStatus.add_member(:update_to_use_local_resource_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateToUseLocalResourceSetting", traits: {"smithy.api#enumValue" => "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"}))
    ResolverDNSSECValidationStatus.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UseLocalResourceSetting", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ResolverDnssecConfig.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ResolverDnssecConfig.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerId"))
    ResolverDnssecConfig.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ResolverDnssecConfig.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverDNSSECValidationStatus, name: "ValidationStatus"))
    ResolverDnssecConfig.type = Types::ResolverDnssecConfig
    ResolverDnssecConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverDnssecConfig, name: "member"))
    ResolverEndpoint.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ResolverEndpoint.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    ResolverEndpoint.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    ResolverEndpoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ResolverEndpoint.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    ResolverEndpoint.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpointDirection, name: "Direction"))
    ResolverEndpoint.add_member(:ip_address_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressCount, name: "IpAddressCount"))
    ResolverEndpoint.add_member(:host_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "HostVPCId"))
    ResolverEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpointStatus, name: "Status"))
    ResolverEndpoint.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    ResolverEndpoint.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    ResolverEndpoint.add_member(:modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "ModificationTime"))
    ResolverEndpoint.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArn, name: "OutpostArn"))
    ResolverEndpoint.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostInstanceType, name: "PreferredInstanceType"))
    ResolverEndpoint.add_member(:resolver_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpointType, name: "ResolverEndpointType"))
    ResolverEndpoint.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolList, name: "Protocols"))
    ResolverEndpoint.add_member(:rni_enhanced_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RniEnhancedMetricsEnabled, name: "RniEnhancedMetricsEnabled"))
    ResolverEndpoint.add_member(:target_name_server_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNameServerMetricsEnabled, name: "TargetNameServerMetricsEnabled"))
    ResolverEndpoint.add_member(:dns64_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Dns64Enabled, name: "Dns64Enabled"))
    ResolverEndpoint.add_member(:ipv6_internet_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6InternetAccessEnabled, name: "Ipv6InternetAccessEnabled"))
    ResolverEndpoint.type = Types::ResolverEndpoint
    ResolverEndpointDirection.add_member(:inbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inbound", traits: {"smithy.api#enumValue" => "INBOUND"}))
    ResolverEndpointDirection.add_member(:outbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Outbound", traits: {"smithy.api#enumValue" => "OUTBOUND"}))
    ResolverEndpointDirection.add_member(:inbound_delegation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InboundDelegation", traits: {"smithy.api#enumValue" => "INBOUND_DELEGATION"}))
    ResolverEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverEndpointStatus.add_member(:operational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Operational", traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    ResolverEndpointStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResolverEndpointStatus.add_member(:auto_recovering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AutoRecovering", traits: {"smithy.api#enumValue" => "AUTO_RECOVERING"}))
    ResolverEndpointStatus.add_member(:action_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActionNeeded", traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    ResolverEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverEndpointType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    ResolverEndpointType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    ResolverEndpointType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUALSTACK", traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    ResolverEndpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpoint, name: "member"))
    ResolverQueryLogConfig.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ResolverQueryLogConfig.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerId"))
    ResolverQueryLogConfig.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigStatus, name: "Status"))
    ResolverQueryLogConfig.add_member(:share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "ShareStatus"))
    ResolverQueryLogConfig.add_member(:association_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "AssociationCount", traits: {"smithy.api#default" => 0}))
    ResolverQueryLogConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    ResolverQueryLogConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigName, name: "Name"))
    ResolverQueryLogConfig.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "DestinationArn"))
    ResolverQueryLogConfig.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    ResolverQueryLogConfig.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    ResolverQueryLogConfig.type = Types::ResolverQueryLogConfig
    ResolverQueryLogConfigAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ResolverQueryLogConfigAssociation.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverQueryLogConfigId"))
    ResolverQueryLogConfigAssociation.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ResolverQueryLogConfigAssociation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigAssociationStatus, name: "Status"))
    ResolverQueryLogConfigAssociation.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigAssociationError, name: "Error"))
    ResolverQueryLogConfigAssociation.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigAssociationErrorMessage, name: "ErrorMessage"))
    ResolverQueryLogConfigAssociation.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    ResolverQueryLogConfigAssociation.type = Types::ResolverQueryLogConfigAssociation
    ResolverQueryLogConfigAssociationError.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "NONE"}))
    ResolverQueryLogConfigAssociationError.add_member(:destination_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DestinationNotFound", traits: {"smithy.api#enumValue" => "DESTINATION_NOT_FOUND"}))
    ResolverQueryLogConfigAssociationError.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDenied", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ResolverQueryLogConfigAssociationError.add_member(:internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalServiceError", traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    ResolverQueryLogConfigAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfigAssociation, name: "member"))
    ResolverQueryLogConfigAssociationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:action_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActionNeeded", traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverQueryLogConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverQueryLogConfig, name: "member"))
    ResolverQueryLogConfigStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverQueryLogConfigStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Created", traits: {"smithy.api#enumValue" => "CREATED"}))
    ResolverQueryLogConfigStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverQueryLogConfigStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRule.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ResolverRule.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorRequestId, name: "CreatorRequestId"))
    ResolverRule.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    ResolverRule.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName"))
    ResolverRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRuleStatus, name: "Status"))
    ResolverRule.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    ResolverRule.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeOption, name: "RuleType"))
    ResolverRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ResolverRule.add_member(:target_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "TargetIps"))
    ResolverRule.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId"))
    ResolverRule.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerId"))
    ResolverRule.add_member(:share_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "ShareStatus"))
    ResolverRule.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "CreationTime"))
    ResolverRule.add_member(:modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Rfc3339TimeString, name: "ModificationTime"))
    ResolverRule.add_member(:delegation_record, ::Smithy::Schema::Shapes::MemberShape.new(target: DelegationRecord, name: "DelegationRecord"))
    ResolverRule.type = Types::ResolverRule
    ResolverRuleAssociation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ResolverRuleAssociation.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverRuleId"))
    ResolverRuleAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ResolverRuleAssociation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPCId"))
    ResolverRuleAssociation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRuleAssociationStatus, name: "Status"))
    ResolverRuleAssociation.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    ResolverRuleAssociation.type = Types::ResolverRuleAssociation
    ResolverRuleAssociationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverRuleAssociationStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Complete", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ResolverRuleAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverRuleAssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRuleAssociationStatus.add_member(:overridden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Overridden", traits: {"smithy.api#enumValue" => "OVERRIDDEN"}))
    ResolverRuleAssociations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRuleAssociation, name: "member"))
    ResolverRuleConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ResolverRuleConfig.add_member(:target_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "TargetIps"))
    ResolverRuleConfig.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId"))
    ResolverRuleConfig.type = Types::ResolverRuleConfig
    ResolverRuleStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Complete", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ResolverRuleStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverRuleStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResolverRuleStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRule, name: "member"))
    ResourceExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceExistsException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    ResourceExistsException.type = Types::ResourceExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceInUseException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceUnavailableException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RuleTypeOption.add_member(:forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Forward", traits: {"smithy.api#enumValue" => "FORWARD"}))
    RuleTypeOption.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "System", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    RuleTypeOption.add_member(:recursive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Recursive", traits: {"smithy.api#enumValue" => "RECURSIVE"}))
    RuleTypeOption.add_member(:delegate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Delegate", traits: {"smithy.api#enumValue" => "DELEGATE"}))
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShareStatus.add_member(:not_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotShared", traits: {"smithy.api#enumValue" => "NOT_SHARED"}))
    ShareStatus.add_member(:shared_with_me, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SharedWithMe", traits: {"smithy.api#enumValue" => "SHARED_WITH_ME"}))
    ShareStatus.add_member(:shared_by_me, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SharedByMe", traits: {"smithy.api#enumValue" => "SHARED_BY_ME"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ascending", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Descending", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SubscriptionInfo.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, name: "VendorName"))
    SubscriptionInfo.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductId, name: "ProductId"))
    SubscriptionInfo.type = Types::SubscriptionInfo
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetAddress.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip"))
    TargetAddress.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "Port"))
    TargetAddress.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6, name: "Ipv6"))
    TargetAddress.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    TargetAddress.add_member(:server_name_indication, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerNameIndication, name: "ServerNameIndication"))
    TargetAddress.type = Types::TargetAddress
    TargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAddress, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UnknownResourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    UnknownResourceException.type = Types::UnknownResourceException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateFirewallConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallConfigRequest.add_member(:firewall_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallFailOpenStatus, name: "FirewallFailOpen", traits: {"smithy.api#required" => {}}))
    UpdateFirewallConfigRequest.type = Types::UpdateFirewallConfigRequest
    UpdateFirewallConfigResponse.add_member(:firewall_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallConfig, name: "FirewallConfig"))
    UpdateFirewallConfigResponse.type = Types::UpdateFirewallConfigResponse
    UpdateFirewallDomainsRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainUpdateOperation, name: "Operation", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomains, name: "Domains", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.type = Types::UpdateFirewallDomainsRequest
    UpdateFirewallDomainsResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    UpdateFirewallDomainsResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateFirewallDomainsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainListStatus, name: "Status"))
    UpdateFirewallDomainsResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    UpdateFirewallDomainsResponse.type = Types::UpdateFirewallDomainsResponse
    UpdateFirewallRuleEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFirewallRuleEntry, name: "member"))
    UpdateFirewallRuleEntry.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleEntry.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId"))
    UpdateFirewallRuleEntry.add_member(:firewall_threat_protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallThreatProtectionId"))
    UpdateFirewallRuleEntry.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    UpdateFirewallRuleEntry.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    UpdateFirewallRuleEntry.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockResponse, name: "BlockResponse"))
    UpdateFirewallRuleEntry.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDomain, name: "BlockOverrideDomain"))
    UpdateFirewallRuleEntry.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsType, name: "BlockOverrideDnsType"))
    UpdateFirewallRuleEntry.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "BlockOverrideTtl"))
    UpdateFirewallRuleEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateFirewallRuleEntry.add_member(:firewall_domain_redirection_action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainRedirectionAction, name: "FirewallDomainRedirectionAction"))
    UpdateFirewallRuleEntry.add_member(:qtype, ::Smithy::Schema::Shapes::MemberShape.new(target: Qtype, name: "Qtype"))
    UpdateFirewallRuleEntry.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsThreatProtection, name: "DnsThreatProtection"))
    UpdateFirewallRuleEntry.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "ConfidenceThreshold"))
    UpdateFirewallRuleEntry.add_member(:firewall_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleType, name: "FirewallRuleType"))
    UpdateFirewallRuleEntry.type = Types::UpdateFirewallRuleEntry
    UpdateFirewallRuleGroupAssociationRequest.add_member(:firewall_rule_group_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupAssociationId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:mutation_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: MutationProtectionStatus, name: "MutationProtection"))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateFirewallRuleGroupAssociationRequest.type = Types::UpdateFirewallRuleGroupAssociationRequest
    UpdateFirewallRuleGroupAssociationResponse.add_member(:firewall_rule_group_association, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleGroupAssociation, name: "FirewallRuleGroupAssociation"))
    UpdateFirewallRuleGroupAssociationResponse.type = Types::UpdateFirewallRuleGroupAssociationResponse
    UpdateFirewallRuleRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallDomainListId"))
    UpdateFirewallRuleRequest.add_member(:firewall_threat_protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallThreatProtectionId"))
    UpdateFirewallRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    UpdateFirewallRuleRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    UpdateFirewallRuleRequest.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockResponse, name: "BlockResponse"))
    UpdateFirewallRuleRequest.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDomain, name: "BlockOverrideDomain"))
    UpdateFirewallRuleRequest.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsType, name: "BlockOverrideDnsType"))
    UpdateFirewallRuleRequest.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "BlockOverrideTtl"))
    UpdateFirewallRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateFirewallRuleRequest.add_member(:firewall_domain_redirection_action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainRedirectionAction, name: "FirewallDomainRedirectionAction"))
    UpdateFirewallRuleRequest.add_member(:qtype, ::Smithy::Schema::Shapes::MemberShape.new(target: Qtype, name: "Qtype"))
    UpdateFirewallRuleRequest.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsThreatProtection, name: "DnsThreatProtection"))
    UpdateFirewallRuleRequest.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "ConfidenceThreshold"))
    UpdateFirewallRuleRequest.add_member(:firewall_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleType, name: "FirewallRuleType"))
    UpdateFirewallRuleRequest.type = Types::UpdateFirewallRuleRequest
    UpdateFirewallRuleResponse.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRule, name: "FirewallRule"))
    UpdateFirewallRuleResponse.type = Types::UpdateFirewallRuleResponse
    UpdateIpAddress.add_member(:ip_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "IpId", traits: {"smithy.api#required" => {}}))
    UpdateIpAddress.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6, name: "Ipv6", traits: {"smithy.api#required" => {}}))
    UpdateIpAddress.type = Types::UpdateIpAddress
    UpdateIpAddresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateIpAddress, name: "member"))
    UpdateOutpostResolverRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateOutpostResolverRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolverName, name: "Name"))
    UpdateOutpostResolverRequest.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "InstanceCount"))
    UpdateOutpostResolverRequest.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostInstanceType, name: "PreferredInstanceType"))
    UpdateOutpostResolverRequest.type = Types::UpdateOutpostResolverRequest
    UpdateOutpostResolverResponse.add_member(:outpost_resolver, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostResolver, name: "OutpostResolver"))
    UpdateOutpostResolverResponse.type = Types::UpdateOutpostResolverResponse
    UpdateResolverConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    UpdateResolverConfigRequest.add_member(:autodefined_reverse_flag, ::Smithy::Schema::Shapes::MemberShape.new(target: AutodefinedReverseFlag, name: "AutodefinedReverseFlag", traits: {"smithy.api#required" => {}}))
    UpdateResolverConfigRequest.type = Types::UpdateResolverConfigRequest
    UpdateResolverConfigResponse.add_member(:resolver_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverConfig, name: "ResolverConfig"))
    UpdateResolverConfigResponse.type = Types::UpdateResolverConfigResponse
    UpdateResolverDnssecConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    UpdateResolverDnssecConfigRequest.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: Validation, name: "Validation", traits: {"smithy.api#required" => {}}))
    UpdateResolverDnssecConfigRequest.type = Types::UpdateResolverDnssecConfigRequest
    UpdateResolverDnssecConfigResponse.add_member(:resolver_dnssec_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverDnssecConfig, name: "ResolverDNSSECConfig"))
    UpdateResolverDnssecConfigResponse.type = Types::UpdateResolverDnssecConfigResponse
    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    UpdateResolverEndpointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpointType, name: "ResolverEndpointType"))
    UpdateResolverEndpointRequest.add_member(:update_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateIpAddresses, name: "UpdateIpAddresses"))
    UpdateResolverEndpointRequest.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolList, name: "Protocols"))
    UpdateResolverEndpointRequest.add_member(:rni_enhanced_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RniEnhancedMetricsEnabled, name: "RniEnhancedMetricsEnabled"))
    UpdateResolverEndpointRequest.add_member(:target_name_server_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNameServerMetricsEnabled, name: "TargetNameServerMetricsEnabled"))
    UpdateResolverEndpointRequest.add_member(:dns64_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Dns64Enabled, name: "Dns64Enabled"))
    UpdateResolverEndpointRequest.add_member(:ipv6_internet_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6InternetAccessEnabled, name: "Ipv6InternetAccessEnabled"))
    UpdateResolverEndpointRequest.type = Types::UpdateResolverEndpointRequest
    UpdateResolverEndpointResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverEndpoint, name: "ResolverEndpoint"))
    UpdateResolverEndpointResponse.type = Types::UpdateResolverEndpointResponse
    UpdateResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    UpdateResolverRuleRequest.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRuleConfig, name: "Config", traits: {"smithy.api#required" => {}}))
    UpdateResolverRuleRequest.type = Types::UpdateResolverRuleRequest
    UpdateResolverRuleResponse.add_member(:resolver_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolverRule, name: "ResolverRule"))
    UpdateResolverRuleResponse.type = Types::UpdateResolverRuleResponse
    Validation.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    Validation.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    Validation.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USE_LOCAL_RESOURCE_SETTING", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ValidationException.type = Types::ValidationException

    Route53Resolver = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53resolver#Route53Resolver"
      service.name = "Route53Resolver"
      service.version = "2018-04-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53Resolver", "arnNamespace" => "route53resolver", "cloudFormationName" => "Route53Resolver", "cloudTrailEventSource" => "route53resolver.amazonaws.com", "endpointPrefix" => "route53resolver"}, "aws.auth#sigv4" => {"name" => "route53resolver"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Route 53 Resolver", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-east-1"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-west-1"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://route53resolver-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://route53resolver.us-gov-east-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://route53resolver.us-gov-west-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://route53resolver-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://route53resolver.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://route53resolver.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 15, "nodes" => "/////wAAAAH/////AAAAAAAAAA4AAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEMAAAABQX14QoF9eELAAAABAAAAAwAAAAJAAAABgAAAAoF9eEJAAAABwX14QYAAAALAAAACAX14QcF9eEIAAAABQAAAA0F9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAPAAAABAX14QIF9eED"}}
      service.add_operation(:associate_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateFirewallRuleGroup"
        operation.name = "AssociateFirewallRuleGroup"
        operation.input = AssociateFirewallRuleGroupRequest
        operation.output = AssociateFirewallRuleGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_endpoint_ip_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverEndpointIpAddress"
        operation.name = "AssociateResolverEndpointIpAddress"
        operation.input = AssociateResolverEndpointIpAddressRequest
        operation.output = AssociateResolverEndpointIpAddressResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverQueryLogConfig"
        operation.name = "AssociateResolverQueryLogConfig"
        operation.input = AssociateResolverQueryLogConfigRequest
        operation.output = AssociateResolverQueryLogConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverRule"
        operation.name = "AssociateResolverRule"
        operation.input = AssociateResolverRuleRequest
        operation.output = AssociateResolverRuleResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:batch_create_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#BatchCreateFirewallRule"
        operation.name = "BatchCreateFirewallRule"
        operation.input = BatchCreateFirewallRuleRequest
        operation.output = BatchCreateFirewallRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#BatchDeleteFirewallRule"
        operation.name = "BatchDeleteFirewallRule"
        operation.input = BatchDeleteFirewallRuleRequest
        operation.output = BatchDeleteFirewallRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_update_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#BatchUpdateFirewallRule"
        operation.name = "BatchUpdateFirewallRule"
        operation.input = BatchUpdateFirewallRuleRequest
        operation.output = BatchUpdateFirewallRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallDomainList"
        operation.name = "CreateFirewallDomainList"
        operation.input = CreateFirewallDomainListRequest
        operation.output = CreateFirewallDomainListResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallRule"
        operation.name = "CreateFirewallRule"
        operation.input = CreateFirewallRuleRequest
        operation.output = CreateFirewallRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallRuleGroup"
        operation.name = "CreateFirewallRuleGroup"
        operation.input = CreateFirewallRuleGroupRequest
        operation.output = CreateFirewallRuleGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_outpost_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateOutpostResolver"
        operation.name = "CreateOutpostResolver"
        operation.input = CreateOutpostResolverRequest
        operation.output = CreateOutpostResolverResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverEndpoint"
        operation.name = "CreateResolverEndpoint"
        operation.input = CreateResolverEndpointRequest
        operation.output = CreateResolverEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverQueryLogConfig"
        operation.name = "CreateResolverQueryLogConfig"
        operation.input = CreateResolverQueryLogConfigRequest
        operation.output = CreateResolverQueryLogConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverRule"
        operation.name = "CreateResolverRule"
        operation.input = CreateResolverRuleRequest
        operation.output = CreateResolverRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallDomainList"
        operation.name = "DeleteFirewallDomainList"
        operation.input = DeleteFirewallDomainListRequest
        operation.output = DeleteFirewallDomainListResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallRule"
        operation.name = "DeleteFirewallRule"
        operation.input = DeleteFirewallRuleRequest
        operation.output = DeleteFirewallRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallRuleGroup"
        operation.name = "DeleteFirewallRuleGroup"
        operation.input = DeleteFirewallRuleGroupRequest
        operation.output = DeleteFirewallRuleGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_outpost_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteOutpostResolver"
        operation.name = "DeleteOutpostResolver"
        operation.input = DeleteOutpostResolverRequest
        operation.output = DeleteOutpostResolverResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverEndpoint"
        operation.name = "DeleteResolverEndpoint"
        operation.input = DeleteResolverEndpointRequest
        operation.output = DeleteResolverEndpointResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverQueryLogConfig"
        operation.name = "DeleteResolverQueryLogConfig"
        operation.input = DeleteResolverQueryLogConfigRequest
        operation.output = DeleteResolverQueryLogConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverRule"
        operation.name = "DeleteResolverRule"
        operation.input = DeleteResolverRuleRequest
        operation.output = DeleteResolverRuleResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateFirewallRuleGroup"
        operation.name = "DisassociateFirewallRuleGroup"
        operation.input = DisassociateFirewallRuleGroupRequest
        operation.output = DisassociateFirewallRuleGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_endpoint_ip_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverEndpointIpAddress"
        operation.name = "DisassociateResolverEndpointIpAddress"
        operation.input = DisassociateResolverEndpointIpAddressRequest
        operation.output = DisassociateResolverEndpointIpAddressResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverQueryLogConfig"
        operation.name = "DisassociateResolverQueryLogConfig"
        operation.input = DisassociateResolverQueryLogConfigRequest
        operation.output = DisassociateResolverQueryLogConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverRule"
        operation.name = "DisassociateResolverRule"
        operation.input = DisassociateResolverRuleRequest
        operation.output = DisassociateResolverRuleResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallConfig"
        operation.name = "GetFirewallConfig"
        operation.input = GetFirewallConfigRequest
        operation.output = GetFirewallConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallDomainList"
        operation.name = "GetFirewallDomainList"
        operation.input = GetFirewallDomainListRequest
        operation.output = GetFirewallDomainListResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroup"
        operation.name = "GetFirewallRuleGroup"
        operation.input = GetFirewallRuleGroupRequest
        operation.output = GetFirewallRuleGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroupAssociation"
        operation.name = "GetFirewallRuleGroupAssociation"
        operation.input = GetFirewallRuleGroupAssociationRequest
        operation.output = GetFirewallRuleGroupAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroupPolicy"
        operation.name = "GetFirewallRuleGroupPolicy"
        operation.input = GetFirewallRuleGroupPolicyRequest
        operation.output = GetFirewallRuleGroupPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_outpost_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetOutpostResolver"
        operation.name = "GetOutpostResolver"
        operation.input = GetOutpostResolverRequest
        operation.output = GetOutpostResolverResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverConfig"
        operation.name = "GetResolverConfig"
        operation.input = GetResolverConfigRequest
        operation.output = GetResolverConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_dnssec_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverDnssecConfig"
        operation.name = "GetResolverDnssecConfig"
        operation.input = GetResolverDnssecConfigRequest
        operation.output = GetResolverDnssecConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverEndpoint"
        operation.name = "GetResolverEndpoint"
        operation.input = GetResolverEndpointRequest
        operation.output = GetResolverEndpointResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfig"
        operation.name = "GetResolverQueryLogConfig"
        operation.input = GetResolverQueryLogConfigRequest
        operation.output = GetResolverQueryLogConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfigAssociation"
        operation.name = "GetResolverQueryLogConfigAssociation"
        operation.input = GetResolverQueryLogConfigAssociationRequest
        operation.output = GetResolverQueryLogConfigAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfigPolicy"
        operation.name = "GetResolverQueryLogConfigPolicy"
        operation.input = GetResolverQueryLogConfigPolicyRequest
        operation.output = GetResolverQueryLogConfigPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << UnknownResourceException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRule"
        operation.name = "GetResolverRule"
        operation.input = GetResolverRuleRequest
        operation.output = GetResolverRuleResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRuleAssociation"
        operation.name = "GetResolverRuleAssociation"
        operation.input = GetResolverRuleAssociationRequest
        operation.output = GetResolverRuleAssociationResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRulePolicy"
        operation.name = "GetResolverRulePolicy"
        operation.input = GetResolverRulePolicyRequest
        operation.output = GetResolverRulePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << UnknownResourceException
        operation.traits = {}
      end)
      service.add_operation(:import_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ImportFirewallDomains"
        operation.name = "ImportFirewallDomains"
        operation.input = ImportFirewallDomainsRequest
        operation.output = ImportFirewallDomainsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_firewall_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallConfigs"
        operation.name = "ListFirewallConfigs"
        operation.input = ListFirewallConfigsRequest
        operation.output = ListFirewallConfigsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallConfigs.new
      end)
      service.add_operation(:list_firewall_domain_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallDomainLists"
        operation.name = "ListFirewallDomainLists"
        operation.input = ListFirewallDomainListsRequest
        operation.output = ListFirewallDomainListsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallDomainLists.new
      end)
      service.add_operation(:list_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallDomains"
        operation.name = "ListFirewallDomains"
        operation.input = ListFirewallDomainsRequest
        operation.output = ListFirewallDomainsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallDomains.new
      end)
      service.add_operation(:list_firewall_rule_group_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRuleGroupAssociations"
        operation.name = "ListFirewallRuleGroupAssociations"
        operation.input = ListFirewallRuleGroupAssociationsRequest
        operation.output = ListFirewallRuleGroupAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRuleGroupAssociations.new
      end)
      service.add_operation(:list_firewall_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRuleGroups"
        operation.name = "ListFirewallRuleGroups"
        operation.input = ListFirewallRuleGroupsRequest
        operation.output = ListFirewallRuleGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRuleGroups.new
      end)
      service.add_operation(:list_firewall_rule_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRuleTypes"
        operation.name = "ListFirewallRuleTypes"
        operation.input = ListFirewallRuleTypesRequest
        operation.output = ListFirewallRuleTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRuleTypes.new
      end)
      service.add_operation(:list_firewall_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRules"
        operation.name = "ListFirewallRules"
        operation.input = ListFirewallRulesRequest
        operation.output = ListFirewallRulesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRules.new
      end)
      service.add_operation(:list_outpost_resolvers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListOutpostResolvers"
        operation.name = "ListOutpostResolvers"
        operation.input = ListOutpostResolversRequest
        operation.output = ListOutpostResolversResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOutpostResolvers.new
      end)
      service.add_operation(:list_resolver_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverConfigs"
        operation.name = "ListResolverConfigs"
        operation.input = ListResolverConfigsRequest
        operation.output = ListResolverConfigsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverConfigs.new
      end)
      service.add_operation(:list_resolver_dnssec_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverDnssecConfigs"
        operation.name = "ListResolverDnssecConfigs"
        operation.input = ListResolverDnssecConfigsRequest
        operation.output = ListResolverDnssecConfigsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverDnssecConfigs.new
      end)
      service.add_operation(:list_resolver_endpoint_ip_addresses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverEndpointIpAddresses"
        operation.name = "ListResolverEndpointIpAddresses"
        operation.input = ListResolverEndpointIpAddressesRequest
        operation.output = ListResolverEndpointIpAddressesResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverEndpointIpAddresses.new
      end)
      service.add_operation(:list_resolver_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverEndpoints"
        operation.name = "ListResolverEndpoints"
        operation.input = ListResolverEndpointsRequest
        operation.output = ListResolverEndpointsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListResolverEndpointsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListResolverEndpoints.new
      end)
      service.add_operation(:list_resolver_query_log_config_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverQueryLogConfigAssociations"
        operation.name = "ListResolverQueryLogConfigAssociations"
        operation.input = ListResolverQueryLogConfigAssociationsRequest
        operation.output = ListResolverQueryLogConfigAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverQueryLogConfigAssociations.new
      end)
      service.add_operation(:list_resolver_query_log_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverQueryLogConfigs"
        operation.name = "ListResolverQueryLogConfigs"
        operation.input = ListResolverQueryLogConfigsRequest
        operation.output = ListResolverQueryLogConfigsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverQueryLogConfigs.new
      end)
      service.add_operation(:list_resolver_rule_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverRuleAssociations"
        operation.name = "ListResolverRuleAssociations"
        operation.input = ListResolverRuleAssociationsRequest
        operation.output = ListResolverRuleAssociationsResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverRuleAssociations.new
      end)
      service.add_operation(:list_resolver_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverRules"
        operation.name = "ListResolverRules"
        operation.input = ListResolverRulesRequest
        operation.output = ListResolverRulesResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverRules.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_firewall_rule_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutFirewallRuleGroupPolicy"
        operation.name = "PutFirewallRuleGroupPolicy"
        operation.input = PutFirewallRuleGroupPolicyRequest
        operation.output = PutFirewallRuleGroupPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_resolver_query_log_config_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutResolverQueryLogConfigPolicy"
        operation.name = "PutResolverQueryLogConfigPolicy"
        operation.input = PutResolverQueryLogConfigPolicyRequest
        operation.output = PutResolverQueryLogConfigPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPolicyDocument
        operation.errors << InvalidRequestException
        operation.errors << UnknownResourceException
        operation.traits = {}
      end)
      service.add_operation(:put_resolver_rule_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutResolverRulePolicy"
        operation.name = "PutResolverRulePolicy"
        operation.input = PutResolverRulePolicyRequest
        operation.output = PutResolverRulePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidPolicyDocument
        operation.errors << UnknownResourceException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << InvalidTagException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallConfig"
        operation.name = "UpdateFirewallConfig"
        operation.input = UpdateFirewallConfigRequest
        operation.output = UpdateFirewallConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallDomains"
        operation.name = "UpdateFirewallDomains"
        operation.input = UpdateFirewallDomainsRequest
        operation.output = UpdateFirewallDomainsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallRule"
        operation.name = "UpdateFirewallRule"
        operation.input = UpdateFirewallRuleRequest
        operation.output = UpdateFirewallRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_rule_group_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallRuleGroupAssociation"
        operation.name = "UpdateFirewallRuleGroupAssociation"
        operation.input = UpdateFirewallRuleGroupAssociationRequest
        operation.output = UpdateFirewallRuleGroupAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_outpost_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateOutpostResolver"
        operation.name = "UpdateOutpostResolver"
        operation.input = UpdateOutpostResolverRequest
        operation.output = UpdateOutpostResolverResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverConfig"
        operation.name = "UpdateResolverConfig"
        operation.input = UpdateResolverConfigRequest
        operation.output = UpdateResolverConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_dnssec_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverDnssecConfig"
        operation.name = "UpdateResolverDnssecConfig"
        operation.input = UpdateResolverDnssecConfigRequest
        operation.output = UpdateResolverDnssecConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverEndpoint"
        operation.name = "UpdateResolverEndpoint"
        operation.input = UpdateResolverEndpointRequest
        operation.output = UpdateResolverEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverRule"
        operation.name = "UpdateResolverRule"
        operation.input = UpdateResolverRuleRequest
        operation.output = UpdateResolverRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
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
