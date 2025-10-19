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
    BlockOverrideDnsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#BlockOverrideDnsType", name: "BlockOverrideDnsType")
    BlockOverrideDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#BlockOverrideDomain", name: "BlockOverrideDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    BlockOverrideTtl = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#BlockOverrideTtl", name: "BlockOverrideTtl", traits: {"smithy.api#range" => {"min" => 0, "max" => 604800}})
    BlockResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#BlockResponse", name: "BlockResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.route53resolver#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ConfidenceThreshold = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#ConfidenceThreshold", name: "ConfidenceThreshold")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#Count", name: "Count", traits: {"smithy.api#default" => 0})
    CreateFirewallDomainListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallDomainListRequest", name: "CreateFirewallDomainListRequest")
    CreateFirewallDomainListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#CreateFirewallDomainListResponse", name: "CreateFirewallDomainListResponse")
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
    DnsThreatProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#DnsThreatProtection", name: "DnsThreatProtection")
    DomainListFileUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#DomainListFileUrl", name: "DomainListFileUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#ExceptionMessage", name: "ExceptionMessage")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#Filter", name: "Filter")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 600}})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#FilterValues", name: "FilterValues")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#Filters", name: "Filters")
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
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#Priority", name: "Priority")
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
    RuleTypeOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53resolver#RuleTypeOption", name: "RuleTypeOption")
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
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53resolver#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#TargetAddress", name: "TargetAddress")
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53resolver#TargetList", name: "TargetList", traits: {"smithy.api#length" => {"min" => 1}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    UnknownResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UnknownResourceException", name: "UnknownResourceException", traits: {"smithy.api#error" => "client"})
    Unsigned = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53resolver#Unsigned", name: "Unsigned")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateFirewallConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallConfigRequest", name: "UpdateFirewallConfigRequest")
    UpdateFirewallConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallConfigResponse", name: "UpdateFirewallConfigResponse")
    UpdateFirewallDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallDomainsRequest", name: "UpdateFirewallDomainsRequest")
    UpdateFirewallDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53resolver#UpdateFirewallDomainsResponse", name: "UpdateFirewallDomainsResponse")
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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    Action.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    Action.add_member(:alert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    AssociateFirewallRuleGroupRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId", traits: {"smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", traits: {"smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:mutation_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: "MutationProtection"))
    AssociateFirewallRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    AssociateFirewallRuleGroupRequest.type = Types::AssociateFirewallRuleGroupRequest
    AssociateFirewallRuleGroupResponse.add_member(:firewall_rule_group_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: "FirewallRuleGroupAssociation"))
    AssociateFirewallRuleGroupResponse.type = Types::AssociateFirewallRuleGroupResponse
    AssociateResolverEndpointIpAddressRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    AssociateResolverEndpointIpAddressRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressUpdate, location_name: "IpAddress", traits: {"smithy.api#required" => {}}))
    AssociateResolverEndpointIpAddressRequest.type = Types::AssociateResolverEndpointIpAddressRequest
    AssociateResolverEndpointIpAddressResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    AssociateResolverEndpointIpAddressResponse.type = Types::AssociateResolverEndpointIpAddressResponse
    AssociateResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverQueryLogConfigId", traits: {"smithy.api#required" => {}}))
    AssociateResolverQueryLogConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AssociateResolverQueryLogConfigRequest.type = Types::AssociateResolverQueryLogConfigRequest
    AssociateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: "ResolverQueryLogConfigAssociation"))
    AssociateResolverQueryLogConfigResponse.type = Types::AssociateResolverQueryLogConfigResponse
    AssociateResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    AssociateResolverRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AssociateResolverRuleRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPCId", traits: {"smithy.api#required" => {}}))
    AssociateResolverRuleRequest.type = Types::AssociateResolverRuleRequest
    AssociateResolverRuleResponse.add_member(:resolver_rule_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: "ResolverRuleAssociation"))
    AssociateResolverRuleResponse.type = Types::AssociateResolverRuleResponse
    AutodefinedReverseFlag.add_member(:enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    AutodefinedReverseFlag.add_member(:disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    AutodefinedReverseFlag.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USE_LOCAL_RESOURCE_SETTING", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    BlockOverrideDnsType.add_member(:cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CNAME", traits: {"smithy.api#enumValue" => "CNAME"}))
    BlockResponse.add_member(:nodata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NODATA", traits: {"smithy.api#enumValue" => "NODATA"}))
    BlockResponse.add_member(:nxdomain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NXDOMAIN", traits: {"smithy.api#enumValue" => "NXDOMAIN"}))
    BlockResponse.add_member(:override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVERRIDE", traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    ConfidenceThreshold.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ConfidenceThreshold.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ConfidenceThreshold.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateFirewallDomainListRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallDomainListRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFirewallDomainListRequest.type = Types::CreateFirewallDomainListRequest
    CreateFirewallDomainListResponse.add_member(:firewall_domain_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: "FirewallDomainList"))
    CreateFirewallDomainListResponse.type = Types::CreateFirewallDomainListResponse
    CreateFirewallRuleGroupRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallRuleGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFirewallRuleGroupRequest.type = Types::CreateFirewallRuleGroupRequest
    CreateFirewallRuleGroupResponse.add_member(:firewall_rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: "FirewallRuleGroup"))
    CreateFirewallRuleGroupResponse.type = Types::CreateFirewallRuleGroupResponse
    CreateFirewallRuleRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId"))
    CreateFirewallRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: "Action", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:block_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockResponse, location_name: "BlockResponse"))
    CreateFirewallRuleRequest.add_member(:block_override_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: "BlockOverrideDomain"))
    CreateFirewallRuleRequest.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: "BlockOverrideDnsType"))
    CreateFirewallRuleRequest.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "BlockOverrideTtl"))
    CreateFirewallRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_domain_redirection_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainRedirectionAction, location_name: "FirewallDomainRedirectionAction"))
    CreateFirewallRuleRequest.add_member(:qtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Qtype, location_name: "Qtype"))
    CreateFirewallRuleRequest.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsThreatProtection, location_name: "DnsThreatProtection"))
    CreateFirewallRuleRequest.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "ConfidenceThreshold"))
    CreateFirewallRuleRequest.type = Types::CreateFirewallRuleRequest
    CreateFirewallRuleResponse.add_member(:firewall_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRule, location_name: "FirewallRule"))
    CreateFirewallRuleResponse.type = Types::CreateFirewallRuleResponse
    CreateOutpostResolverRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", traits: {"smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: "InstanceCount"))
    CreateOutpostResolverRequest.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: "PreferredInstanceType", traits: {"smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn", traits: {"smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateOutpostResolverRequest.type = Types::CreateOutpostResolverRequest
    CreateOutpostResolverResponse.add_member(:outpost_resolver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver, location_name: "OutpostResolver"))
    CreateOutpostResolverResponse.type = Types::CreateOutpostResolverResponse
    CreateResolverEndpointRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", traits: {"smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateResolverEndpointRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:direction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointDirection, location_name: "Direction", traits: {"smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressesRequest, location_name: "IpAddresses", traits: {"smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    CreateResolverEndpointRequest.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: "PreferredInstanceType"))
    CreateResolverEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateResolverEndpointRequest.add_member(:resolver_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: "ResolverEndpointType"))
    CreateResolverEndpointRequest.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolList, location_name: "Protocols"))
    CreateResolverEndpointRequest.type = Types::CreateResolverEndpointRequest
    CreateResolverEndpointResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    CreateResolverEndpointResponse.type = Types::CreateResolverEndpointResponse
    CreateResolverQueryLogConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: "DestinationArn", traits: {"smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateResolverQueryLogConfigRequest.type = Types::CreateResolverQueryLogConfigRequest
    CreateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: "ResolverQueryLogConfig"))
    CreateResolverQueryLogConfigResponse.type = Types::CreateResolverQueryLogConfigResponse
    CreateResolverRuleRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId", traits: {"smithy.api#required" => {}}))
    CreateResolverRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateResolverRuleRequest.add_member(:rule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeOption, location_name: "RuleType", traits: {"smithy.api#required" => {}}))
    CreateResolverRuleRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    CreateResolverRuleRequest.add_member(:target_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: "TargetIps"))
    CreateResolverRuleRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId"))
    CreateResolverRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateResolverRuleRequest.add_member(:delegation_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationRecord, location_name: "DelegationRecord"))
    CreateResolverRuleRequest.type = Types::CreateResolverRuleRequest
    CreateResolverRuleResponse.add_member(:resolver_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    CreateResolverRuleResponse.type = Types::CreateResolverRuleResponse
    DeleteFirewallDomainListRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    DeleteFirewallDomainListRequest.type = Types::DeleteFirewallDomainListRequest
    DeleteFirewallDomainListResponse.add_member(:firewall_domain_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: "FirewallDomainList"))
    DeleteFirewallDomainListResponse.type = Types::DeleteFirewallDomainListResponse
    DeleteFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleGroupRequest.type = Types::DeleteFirewallRuleGroupRequest
    DeleteFirewallRuleGroupResponse.add_member(:firewall_rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: "FirewallRuleGroup"))
    DeleteFirewallRuleGroupResponse.type = Types::DeleteFirewallRuleGroupResponse
    DeleteFirewallRuleRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId"))
    DeleteFirewallRuleRequest.add_member(:firewall_threat_protection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallThreatProtectionId"))
    DeleteFirewallRuleRequest.add_member(:qtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Qtype, location_name: "Qtype"))
    DeleteFirewallRuleRequest.type = Types::DeleteFirewallRuleRequest
    DeleteFirewallRuleResponse.add_member(:firewall_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRule, location_name: "FirewallRule"))
    DeleteFirewallRuleResponse.type = Types::DeleteFirewallRuleResponse
    DeleteOutpostResolverRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteOutpostResolverRequest.type = Types::DeleteOutpostResolverRequest
    DeleteOutpostResolverResponse.add_member(:outpost_resolver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver, location_name: "OutpostResolver"))
    DeleteOutpostResolverResponse.type = Types::DeleteOutpostResolverResponse
    DeleteResolverEndpointRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    DeleteResolverEndpointRequest.type = Types::DeleteResolverEndpointRequest
    DeleteResolverEndpointResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    DeleteResolverEndpointResponse.type = Types::DeleteResolverEndpointResponse
    DeleteResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverQueryLogConfigId", traits: {"smithy.api#required" => {}}))
    DeleteResolverQueryLogConfigRequest.type = Types::DeleteResolverQueryLogConfigRequest
    DeleteResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: "ResolverQueryLogConfig"))
    DeleteResolverQueryLogConfigResponse.type = Types::DeleteResolverQueryLogConfigResponse
    DeleteResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    DeleteResolverRuleRequest.type = Types::DeleteResolverRuleRequest
    DeleteResolverRuleResponse.add_member(:resolver_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    DeleteResolverRuleResponse.type = Types::DeleteResolverRuleResponse
    DisassociateFirewallRuleGroupRequest.add_member(:firewall_rule_group_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupAssociationId", traits: {"smithy.api#required" => {}}))
    DisassociateFirewallRuleGroupRequest.type = Types::DisassociateFirewallRuleGroupRequest
    DisassociateFirewallRuleGroupResponse.add_member(:firewall_rule_group_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: "FirewallRuleGroupAssociation"))
    DisassociateFirewallRuleGroupResponse.type = Types::DisassociateFirewallRuleGroupResponse
    DisassociateResolverEndpointIpAddressRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverEndpointIpAddressRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressUpdate, location_name: "IpAddress", traits: {"smithy.api#required" => {}}))
    DisassociateResolverEndpointIpAddressRequest.type = Types::DisassociateResolverEndpointIpAddressRequest
    DisassociateResolverEndpointIpAddressResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    DisassociateResolverEndpointIpAddressResponse.type = Types::DisassociateResolverEndpointIpAddressResponse
    DisassociateResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverQueryLogConfigId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverQueryLogConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverQueryLogConfigRequest.type = Types::DisassociateResolverQueryLogConfigRequest
    DisassociateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: "ResolverQueryLogConfigAssociation"))
    DisassociateResolverQueryLogConfigResponse.type = Types::DisassociateResolverQueryLogConfigResponse
    DisassociateResolverRuleRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPCId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    DisassociateResolverRuleRequest.type = Types::DisassociateResolverRuleRequest
    DisassociateResolverRuleResponse.add_member(:resolver_rule_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: "ResolverRuleAssociation"))
    DisassociateResolverRuleResponse.type = Types::DisassociateResolverRuleResponse
    DnsThreatProtection.add_member(:dga, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DGA", traits: {"smithy.api#enumValue" => "DGA"}))
    DnsThreatProtection.add_member(:dns_tunneling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DNS_TUNNELING", traits: {"smithy.api#enumValue" => "DNS_TUNNELING"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: "Name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: "Values"))
    Filter.type = Types::Filter
    FilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    Filters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FirewallConfig.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallConfig.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    FirewallConfig.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    FirewallConfig.add_member(:firewall_fail_open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallFailOpenStatus, location_name: "FirewallFailOpen"))
    FirewallConfig.type = Types::FirewallConfig
    FirewallConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallConfig)
    FirewallDomainImportOperation.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    FirewallDomainList.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallDomainList.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallDomainList.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallDomainList.add_member(:domain_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Unsigned, location_name: "DomainCount"))
    FirewallDomainList.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: "Status"))
    FirewallDomainList.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    FirewallDomainList.add_member(:managed_owner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: "ManagedOwnerName"))
    FirewallDomainList.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallDomainList.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    FirewallDomainList.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    FirewallDomainList.type = Types::FirewallDomainList
    FirewallDomainListMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallDomainListMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallDomainListMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallDomainListMetadata.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallDomainListMetadata.add_member(:managed_owner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: "ManagedOwnerName"))
    FirewallDomainListMetadata.type = Types::FirewallDomainListMetadata
    FirewallDomainListMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListMetadata)
    FirewallDomainListStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallDomainListStatus.add_member(:complete_import_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE_IMPORT_FAILED", traits: {"smithy.api#enumValue" => "COMPLETE_IMPORT_FAILED"}))
    FirewallDomainListStatus.add_member(:importing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORTING", traits: {"smithy.api#enumValue" => "IMPORTING"}))
    FirewallDomainListStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallDomainListStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallDomainRedirectionAction.add_member(:inspect_redirection_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSPECT_REDIRECTION_DOMAIN", traits: {"smithy.api#enumValue" => "INSPECT_REDIRECTION_DOMAIN"}))
    FirewallDomainRedirectionAction.add_member(:trust_redirection_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRUST_REDIRECTION_DOMAIN", traits: {"smithy.api#enumValue" => "TRUST_REDIRECTION_DOMAIN"}))
    FirewallDomainUpdateOperation.add_member(:add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    FirewallDomainUpdateOperation.add_member(:remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    FirewallDomainUpdateOperation.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    FirewallDomains.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainName)
    FirewallFailOpenStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FirewallFailOpenStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FirewallFailOpenStatus.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USE_LOCAL_RESOURCE_SETTING", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    FirewallRule.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId"))
    FirewallRule.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId"))
    FirewallRule.add_member(:firewall_threat_protection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallThreatProtectionId"))
    FirewallRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallRule.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    FirewallRule.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    FirewallRule.add_member(:block_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockResponse, location_name: "BlockResponse"))
    FirewallRule.add_member(:block_override_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: "BlockOverrideDomain"))
    FirewallRule.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: "BlockOverrideDnsType"))
    FirewallRule.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Unsigned, location_name: "BlockOverrideTtl"))
    FirewallRule.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallRule.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    FirewallRule.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    FirewallRule.add_member(:firewall_domain_redirection_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainRedirectionAction, location_name: "FirewallDomainRedirectionAction"))
    FirewallRule.add_member(:qtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Qtype, location_name: "Qtype"))
    FirewallRule.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsThreatProtection, location_name: "DnsThreatProtection"))
    FirewallRule.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "ConfidenceThreshold"))
    FirewallRule.type = Types::FirewallRule
    FirewallRuleGroup.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallRuleGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallRuleGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallRuleGroup.add_member(:rule_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Unsigned, location_name: "RuleCount"))
    FirewallRuleGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupStatus, location_name: "Status"))
    FirewallRuleGroup.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    FirewallRuleGroup.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    FirewallRuleGroup.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallRuleGroup.add_member(:share_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    FirewallRuleGroup.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    FirewallRuleGroup.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    FirewallRuleGroup.type = Types::FirewallRuleGroup
    FirewallRuleGroupAssociation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallRuleGroupAssociation.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallRuleGroupAssociation.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId"))
    FirewallRuleGroupAssociation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    FirewallRuleGroupAssociation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallRuleGroupAssociation.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    FirewallRuleGroupAssociation.add_member(:mutation_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: "MutationProtection"))
    FirewallRuleGroupAssociation.add_member(:managed_owner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: "ManagedOwnerName"))
    FirewallRuleGroupAssociation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociationStatus, location_name: "Status"))
    FirewallRuleGroupAssociation.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    FirewallRuleGroupAssociation.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallRuleGroupAssociation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    FirewallRuleGroupAssociation.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    FirewallRuleGroupAssociation.type = Types::FirewallRuleGroupAssociation
    FirewallRuleGroupAssociationStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallRuleGroupAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallRuleGroupAssociationStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallRuleGroupAssociations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation)
    FirewallRuleGroupMetadata.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallRuleGroupMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallRuleGroupMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallRuleGroupMetadata.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    FirewallRuleGroupMetadata.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallRuleGroupMetadata.add_member(:share_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    FirewallRuleGroupMetadata.type = Types::FirewallRuleGroupMetadata
    FirewallRuleGroupMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupMetadata)
    FirewallRuleGroupStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallRuleGroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallRuleGroupStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRule)
    GetFirewallConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    GetFirewallConfigRequest.type = Types::GetFirewallConfigRequest
    GetFirewallConfigResponse.add_member(:firewall_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallConfig, location_name: "FirewallConfig"))
    GetFirewallConfigResponse.type = Types::GetFirewallConfigResponse
    GetFirewallDomainListRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListRequest.type = Types::GetFirewallDomainListRequest
    GetFirewallDomainListResponse.add_member(:firewall_domain_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: "FirewallDomainList"))
    GetFirewallDomainListResponse.type = Types::GetFirewallDomainListResponse
    GetFirewallRuleGroupAssociationRequest.add_member(:firewall_rule_group_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupAssociationId", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleGroupAssociationRequest.type = Types::GetFirewallRuleGroupAssociationRequest
    GetFirewallRuleGroupAssociationResponse.add_member(:firewall_rule_group_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: "FirewallRuleGroupAssociation"))
    GetFirewallRuleGroupAssociationResponse.type = Types::GetFirewallRuleGroupAssociationResponse
    GetFirewallRuleGroupPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleGroupPolicyRequest.type = Types::GetFirewallRuleGroupPolicyRequest
    GetFirewallRuleGroupPolicyResponse.add_member(:firewall_rule_group_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupPolicy, location_name: "FirewallRuleGroupPolicy"))
    GetFirewallRuleGroupPolicyResponse.type = Types::GetFirewallRuleGroupPolicyResponse
    GetFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleGroupRequest.type = Types::GetFirewallRuleGroupRequest
    GetFirewallRuleGroupResponse.add_member(:firewall_rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: "FirewallRuleGroup"))
    GetFirewallRuleGroupResponse.type = Types::GetFirewallRuleGroupResponse
    GetOutpostResolverRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id", traits: {"smithy.api#required" => {}}))
    GetOutpostResolverRequest.type = Types::GetOutpostResolverRequest
    GetOutpostResolverResponse.add_member(:outpost_resolver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver, location_name: "OutpostResolver"))
    GetOutpostResolverResponse.type = Types::GetOutpostResolverResponse
    GetResolverConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    GetResolverConfigRequest.type = Types::GetResolverConfigRequest
    GetResolverConfigResponse.add_member(:resolver_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverConfig, location_name: "ResolverConfig"))
    GetResolverConfigResponse.type = Types::GetResolverConfigResponse
    GetResolverDnssecConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    GetResolverDnssecConfigRequest.type = Types::GetResolverDnssecConfigRequest
    GetResolverDnssecConfigResponse.add_member(:resolver_dnssec_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDnssecConfig, location_name: "ResolverDNSSECConfig"))
    GetResolverDnssecConfigResponse.type = Types::GetResolverDnssecConfigResponse
    GetResolverEndpointRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    GetResolverEndpointRequest.type = Types::GetResolverEndpointRequest
    GetResolverEndpointResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    GetResolverEndpointResponse.type = Types::GetResolverEndpointResponse
    GetResolverQueryLogConfigAssociationRequest.add_member(:resolver_query_log_config_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverQueryLogConfigAssociationId", traits: {"smithy.api#required" => {}}))
    GetResolverQueryLogConfigAssociationRequest.type = Types::GetResolverQueryLogConfigAssociationRequest
    GetResolverQueryLogConfigAssociationResponse.add_member(:resolver_query_log_config_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: "ResolverQueryLogConfigAssociation"))
    GetResolverQueryLogConfigAssociationResponse.type = Types::GetResolverQueryLogConfigAssociationResponse
    GetResolverQueryLogConfigPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    GetResolverQueryLogConfigPolicyRequest.type = Types::GetResolverQueryLogConfigPolicyRequest
    GetResolverQueryLogConfigPolicyResponse.add_member(:resolver_query_log_config_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigPolicy, location_name: "ResolverQueryLogConfigPolicy"))
    GetResolverQueryLogConfigPolicyResponse.type = Types::GetResolverQueryLogConfigPolicyResponse
    GetResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverQueryLogConfigId", traits: {"smithy.api#required" => {}}))
    GetResolverQueryLogConfigRequest.type = Types::GetResolverQueryLogConfigRequest
    GetResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: "ResolverQueryLogConfig"))
    GetResolverQueryLogConfigResponse.type = Types::GetResolverQueryLogConfigResponse
    GetResolverRuleAssociationRequest.add_member(:resolver_rule_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverRuleAssociationId", traits: {"smithy.api#required" => {}}))
    GetResolverRuleAssociationRequest.type = Types::GetResolverRuleAssociationRequest
    GetResolverRuleAssociationResponse.add_member(:resolver_rule_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: "ResolverRuleAssociation"))
    GetResolverRuleAssociationResponse.type = Types::GetResolverRuleAssociationResponse
    GetResolverRulePolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    GetResolverRulePolicyRequest.type = Types::GetResolverRulePolicyRequest
    GetResolverRulePolicyResponse.add_member(:resolver_rule_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRulePolicy, location_name: "ResolverRulePolicy"))
    GetResolverRulePolicyResponse.type = Types::GetResolverRulePolicyResponse
    GetResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    GetResolverRuleRequest.type = Types::GetResolverRuleRequest
    GetResolverRuleResponse.add_member(:resolver_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    GetResolverRuleResponse.type = Types::GetResolverRuleResponse
    ImportFirewallDomainsRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainImportOperation, location_name: "Operation", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.add_member(:domain_file_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainListFileUrl, location_name: "DomainFileUrl", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.type = Types::ImportFirewallDomainsRequest
    ImportFirewallDomainsResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ImportFirewallDomainsResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ImportFirewallDomainsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: "Status"))
    ImportFirewallDomainsResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ImportFirewallDomainsResponse.type = Types::ImportFirewallDomainsResponse
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPolicyDocument.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidPolicyDocument.type = Types::InvalidPolicyDocument
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidTagException.type = Types::InvalidTagException
    IpAddressRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId", traits: {"smithy.api#required" => {}}))
    IpAddressRequest.add_member(:ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: "Ip"))
    IpAddressRequest.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6"))
    IpAddressRequest.type = Types::IpAddressRequest
    IpAddressResponse.add_member(:ip_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "IpId"))
    IpAddressResponse.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    IpAddressResponse.add_member(:ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: "Ip"))
    IpAddressResponse.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6"))
    IpAddressResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressStatus, location_name: "Status"))
    IpAddressResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    IpAddressResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    IpAddressResponse.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    IpAddressResponse.type = Types::IpAddressResponse
    IpAddressStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    IpAddressStatus.add_member(:failed_creation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FailedCreation", traits: {"smithy.api#enumValue" => "FAILED_CREATION"}))
    IpAddressStatus.add_member(:attaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Attaching", traits: {"smithy.api#enumValue" => "ATTACHING"}))
    IpAddressStatus.add_member(:attached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Attached", traits: {"smithy.api#enumValue" => "ATTACHED"}))
    IpAddressStatus.add_member(:remap_detaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RemapDetaching", traits: {"smithy.api#enumValue" => "REMAP_DETACHING"}))
    IpAddressStatus.add_member(:remap_attaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RemapAttaching", traits: {"smithy.api#enumValue" => "REMAP_ATTACHING"}))
    IpAddressStatus.add_member(:detaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Detaching", traits: {"smithy.api#enumValue" => "DETACHING"}))
    IpAddressStatus.add_member(:failed_resource_gone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FailedResourceGone", traits: {"smithy.api#enumValue" => "FAILED_RESOURCE_GONE"}))
    IpAddressStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    IpAddressStatus.add_member(:delete_failed_fas_expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteFailedFasExpired", traits: {"smithy.api#enumValue" => "DELETE_FAILED_FAS_EXPIRED"}))
    IpAddressStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    IpAddressStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateFailed", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    IpAddressStatus.add_member(:isolated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Isolated", traits: {"smithy.api#enumValue" => "ISOLATED"}))
    IpAddressUpdate.add_member(:ip_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "IpId"))
    IpAddressUpdate.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    IpAddressUpdate.add_member(:ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: "Ip"))
    IpAddressUpdate.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6"))
    IpAddressUpdate.type = Types::IpAddressUpdate
    IpAddressesRequest.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressRequest)
    IpAddressesResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressResponse)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    LimitExceededException.type = Types::LimitExceededException
    ListFirewallConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallConfigsMaxResult, location_name: "MaxResults"))
    ListFirewallConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallConfigsRequest.type = Types::ListFirewallConfigsRequest
    ListFirewallConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallConfigsResponse.add_member(:firewall_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallConfigList, location_name: "FirewallConfigs"))
    ListFirewallConfigsResponse.type = Types::ListFirewallConfigsResponse
    ListFirewallDomainListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListFirewallDomainListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallDomainListsRequest.type = Types::ListFirewallDomainListsRequest
    ListFirewallDomainListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallDomainListsResponse.add_member(:firewall_domain_lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListMetadataList, location_name: "FirewallDomainLists"))
    ListFirewallDomainListsResponse.type = Types::ListFirewallDomainListsResponse
    ListFirewallDomainsRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    ListFirewallDomainsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainMaxResults, location_name: "MaxResults"))
    ListFirewallDomainsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallDomainsRequest.type = Types::ListFirewallDomainsRequest
    ListFirewallDomainsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallDomainsResponse.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomains, location_name: "Domains"))
    ListFirewallDomainsResponse.type = Types::ListFirewallDomainsResponse
    ListFirewallRuleGroupAssociationsRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociationStatus, location_name: "Status"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListFirewallRuleGroupAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRuleGroupAssociationsRequest.type = Types::ListFirewallRuleGroupAssociationsRequest
    ListFirewallRuleGroupAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRuleGroupAssociationsResponse.add_member(:firewall_rule_group_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociations, location_name: "FirewallRuleGroupAssociations"))
    ListFirewallRuleGroupAssociationsResponse.type = Types::ListFirewallRuleGroupAssociationsResponse
    ListFirewallRuleGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListFirewallRuleGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRuleGroupsRequest.type = Types::ListFirewallRuleGroupsRequest
    ListFirewallRuleGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRuleGroupsResponse.add_member(:firewall_rule_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupMetadataList, location_name: "FirewallRuleGroups"))
    ListFirewallRuleGroupsResponse.type = Types::ListFirewallRuleGroupsResponse
    ListFirewallRulesRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    ListFirewallRulesRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    ListFirewallRulesRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    ListFirewallRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListFirewallRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRulesRequest.type = Types::ListFirewallRulesRequest
    ListFirewallRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRulesResponse.add_member(:firewall_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRules, location_name: "FirewallRules"))
    ListFirewallRulesResponse.type = Types::ListFirewallRulesResponse
    ListOutpostResolversRequest.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    ListOutpostResolversRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListOutpostResolversRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOutpostResolversRequest.type = Types::ListOutpostResolversRequest
    ListOutpostResolversResponse.add_member(:outpost_resolvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverList, location_name: "OutpostResolvers"))
    ListOutpostResolversResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOutpostResolversResponse.type = Types::ListOutpostResolversResponse
    ListResolverConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverConfigsMaxResult, location_name: "MaxResults"))
    ListResolverConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverConfigsRequest.type = Types::ListResolverConfigsRequest
    ListResolverConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverConfigsResponse.add_member(:resolver_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverConfigList, location_name: "ResolverConfigs"))
    ListResolverConfigsResponse.type = Types::ListResolverConfigsResponse
    ListResolverDnssecConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverDnssecConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverDnssecConfigsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListResolverDnssecConfigsRequest.type = Types::ListResolverDnssecConfigsRequest
    ListResolverDnssecConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverDnssecConfigsResponse.add_member(:resolver_dnssec_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDnssecConfigList, location_name: "ResolverDnssecConfigs"))
    ListResolverDnssecConfigsResponse.type = Types::ListResolverDnssecConfigsResponse
    ListResolverEndpointIpAddressesRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    ListResolverEndpointIpAddressesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverEndpointIpAddressesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverEndpointIpAddressesRequest.type = Types::ListResolverEndpointIpAddressesRequest
    ListResolverEndpointIpAddressesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverEndpointIpAddressesResponse.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverEndpointIpAddressesResponse.add_member(:ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressesResponse, location_name: "IpAddresses"))
    ListResolverEndpointIpAddressesResponse.type = Types::ListResolverEndpointIpAddressesResponse
    ListResolverEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverEndpointsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListResolverEndpointsRequest.type = Types::ListResolverEndpointsRequest
    ListResolverEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverEndpointsResponse.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverEndpointsResponse.add_member(:resolver_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoints, location_name: "ResolverEndpoints"))
    ListResolverEndpointsResponse.type = Types::ListResolverEndpointsResponse
    ListResolverQueryLogConfigAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortByKey, location_name: "SortBy"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListResolverQueryLogConfigAssociationsRequest.type = Types::ListResolverQueryLogConfigAssociationsRequest
    ListResolverQueryLogConfigAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "TotalCount", traits: {"smithy.api#default" => 0}))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:total_filtered_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "TotalFilteredCount", traits: {"smithy.api#default" => 0}))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:resolver_query_log_config_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationList, location_name: "ResolverQueryLogConfigAssociations"))
    ListResolverQueryLogConfigAssociationsResponse.type = Types::ListResolverQueryLogConfigAssociationsResponse
    ListResolverQueryLogConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverQueryLogConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverQueryLogConfigsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListResolverQueryLogConfigsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortByKey, location_name: "SortBy"))
    ListResolverQueryLogConfigsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListResolverQueryLogConfigsRequest.type = Types::ListResolverQueryLogConfigsRequest
    ListResolverQueryLogConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverQueryLogConfigsResponse.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "TotalCount", traits: {"smithy.api#default" => 0}))
    ListResolverQueryLogConfigsResponse.add_member(:total_filtered_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "TotalFilteredCount", traits: {"smithy.api#default" => 0}))
    ListResolverQueryLogConfigsResponse.add_member(:resolver_query_log_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigList, location_name: "ResolverQueryLogConfigs"))
    ListResolverQueryLogConfigsResponse.type = Types::ListResolverQueryLogConfigsResponse
    ListResolverRuleAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverRuleAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverRuleAssociationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListResolverRuleAssociationsRequest.type = Types::ListResolverRuleAssociationsRequest
    ListResolverRuleAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverRuleAssociationsResponse.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverRuleAssociationsResponse.add_member(:resolver_rule_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociations, location_name: "ResolverRuleAssociations"))
    ListResolverRuleAssociationsResponse.type = Types::ListResolverRuleAssociationsResponse
    ListResolverRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverRulesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListResolverRulesRequest.type = Types::ListResolverRulesRequest
    ListResolverRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverRulesResponse.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverRulesResponse.add_member(:resolver_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRules, location_name: "ResolverRules"))
    ListResolverRulesResponse.type = Types::ListResolverRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MutationProtectionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MutationProtectionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    OutpostResolver.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    OutpostResolver.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    OutpostResolver.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    OutpostResolver.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    OutpostResolver.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    OutpostResolver.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: "InstanceCount"))
    OutpostResolver.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: "PreferredInstanceType"))
    OutpostResolver.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverName, location_name: "Name"))
    OutpostResolver.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverStatus, location_name: "Status"))
    OutpostResolver.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverStatusMessage, location_name: "StatusMessage"))
    OutpostResolver.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    OutpostResolver.type = Types::OutpostResolver
    OutpostResolverList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver)
    OutpostResolverStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    OutpostResolverStatus.add_member(:operational, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPERATIONAL", traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    OutpostResolverStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    OutpostResolverStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    OutpostResolverStatus.add_member(:action_needed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTION_NEEDED", traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    OutpostResolverStatus.add_member(:failed_creation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_CREATION", traits: {"smithy.api#enumValue" => "FAILED_CREATION"}))
    OutpostResolverStatus.add_member(:failed_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_DELETION", traits: {"smithy.api#enumValue" => "FAILED_DELETION"}))
    Protocol.add_member(:doh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOH", traits: {"smithy.api#enumValue" => "DoH"}))
    Protocol.add_member(:do53, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DO53", traits: {"smithy.api#enumValue" => "Do53"}))
    Protocol.add_member(:dohfips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOHFIPS", traits: {"smithy.api#enumValue" => "DoH-FIPS"}))
    ProtocolList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol)
    PutFirewallRuleGroupPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    PutFirewallRuleGroupPolicyRequest.add_member(:firewall_rule_group_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupPolicy, location_name: "FirewallRuleGroupPolicy", traits: {"smithy.api#required" => {}}))
    PutFirewallRuleGroupPolicyRequest.type = Types::PutFirewallRuleGroupPolicyRequest
    PutFirewallRuleGroupPolicyResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnValue", traits: {"smithy.api#default" => false}))
    PutFirewallRuleGroupPolicyResponse.type = Types::PutFirewallRuleGroupPolicyResponse
    PutResolverQueryLogConfigPolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    PutResolverQueryLogConfigPolicyRequest.add_member(:resolver_query_log_config_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigPolicy, location_name: "ResolverQueryLogConfigPolicy", traits: {"smithy.api#required" => {}}))
    PutResolverQueryLogConfigPolicyRequest.type = Types::PutResolverQueryLogConfigPolicyRequest
    PutResolverQueryLogConfigPolicyResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnValue", traits: {"smithy.api#default" => false}))
    PutResolverQueryLogConfigPolicyResponse.type = Types::PutResolverQueryLogConfigPolicyResponse
    PutResolverRulePolicyRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    PutResolverRulePolicyRequest.add_member(:resolver_rule_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRulePolicy, location_name: "ResolverRulePolicy", traits: {"smithy.api#required" => {}}))
    PutResolverRulePolicyRequest.type = Types::PutResolverRulePolicyRequest
    PutResolverRulePolicyResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnValue", traits: {"smithy.api#default" => false}))
    PutResolverRulePolicyResponse.type = Types::PutResolverRulePolicyResponse
    ResolverAutodefinedReverseStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabling", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ResolverAutodefinedReverseStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverAutodefinedReverseStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabling", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ResolverAutodefinedReverseStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResolverAutodefinedReverseStatus.add_member(:updating_to_use_local_resource_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdatingToUseLocalResourceSetting", traits: {"smithy.api#enumValue" => "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"}))
    ResolverAutodefinedReverseStatus.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UseLocalResourceSetting", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ResolverConfig.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverConfig.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResolverConfig.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ResolverConfig.add_member(:autodefined_reverse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverAutodefinedReverseStatus, location_name: "AutodefinedReverse"))
    ResolverConfig.type = Types::ResolverConfig
    ResolverConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverConfig)
    ResolverDNSSECValidationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabling", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ResolverDNSSECValidationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverDNSSECValidationStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabling", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ResolverDNSSECValidationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResolverDNSSECValidationStatus.add_member(:update_to_use_local_resource_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UpdateToUseLocalResourceSetting", traits: {"smithy.api#enumValue" => "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"}))
    ResolverDNSSECValidationStatus.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UseLocalResourceSetting", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ResolverDnssecConfig.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverDnssecConfig.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ResolverDnssecConfig.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResolverDnssecConfig.add_member(:validation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDNSSECValidationStatus, location_name: "ValidationStatus"))
    ResolverDnssecConfig.type = Types::ResolverDnssecConfig
    ResolverDnssecConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDnssecConfig)
    ResolverEndpoint.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverEndpoint.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    ResolverEndpoint.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ResolverEndpoint.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResolverEndpoint.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    ResolverEndpoint.add_member(:direction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointDirection, location_name: "Direction"))
    ResolverEndpoint.add_member(:ip_address_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressCount, location_name: "IpAddressCount"))
    ResolverEndpoint.add_member(:host_vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "HostVPCId"))
    ResolverEndpoint.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointStatus, location_name: "Status"))
    ResolverEndpoint.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ResolverEndpoint.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    ResolverEndpoint.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    ResolverEndpoint.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: "OutpostArn"))
    ResolverEndpoint.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: "PreferredInstanceType"))
    ResolverEndpoint.add_member(:resolver_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: "ResolverEndpointType"))
    ResolverEndpoint.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolList, location_name: "Protocols"))
    ResolverEndpoint.type = Types::ResolverEndpoint
    ResolverEndpointDirection.add_member(:inbound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Inbound", traits: {"smithy.api#enumValue" => "INBOUND"}))
    ResolverEndpointDirection.add_member(:outbound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Outbound", traits: {"smithy.api#enumValue" => "OUTBOUND"}))
    ResolverEndpointDirection.add_member(:inbound_delegation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InboundDelegation", traits: {"smithy.api#enumValue" => "INBOUND_DELEGATION"}))
    ResolverEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverEndpointStatus.add_member(:operational, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Operational", traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    ResolverEndpointStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResolverEndpointStatus.add_member(:auto_recovering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AutoRecovering", traits: {"smithy.api#enumValue" => "AUTO_RECOVERING"}))
    ResolverEndpointStatus.add_member(:action_needed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ActionNeeded", traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    ResolverEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverEndpointType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    ResolverEndpointType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    ResolverEndpointType.add_member(:dualstack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUALSTACK", traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    ResolverEndpoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint)
    ResolverQueryLogConfig.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverQueryLogConfig.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ResolverQueryLogConfig.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigStatus, location_name: "Status"))
    ResolverQueryLogConfig.add_member(:share_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    ResolverQueryLogConfig.add_member(:association_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: "AssociationCount", traits: {"smithy.api#default" => 0}))
    ResolverQueryLogConfig.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ResolverQueryLogConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigName, location_name: "Name"))
    ResolverQueryLogConfig.add_member(:destination_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: "DestinationArn"))
    ResolverQueryLogConfig.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    ResolverQueryLogConfig.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    ResolverQueryLogConfig.type = Types::ResolverQueryLogConfig
    ResolverQueryLogConfigAssociation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverQueryLogConfigAssociation.add_member(:resolver_query_log_config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverQueryLogConfigId"))
    ResolverQueryLogConfigAssociation.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResolverQueryLogConfigAssociation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationStatus, location_name: "Status"))
    ResolverQueryLogConfigAssociation.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationError, location_name: "Error"))
    ResolverQueryLogConfigAssociation.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationErrorMessage, location_name: "ErrorMessage"))
    ResolverQueryLogConfigAssociation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    ResolverQueryLogConfigAssociation.type = Types::ResolverQueryLogConfigAssociation
    ResolverQueryLogConfigAssociationError.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "None", traits: {"smithy.api#enumValue" => "NONE"}))
    ResolverQueryLogConfigAssociationError.add_member(:destination_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DestinationNotFound", traits: {"smithy.api#enumValue" => "DESTINATION_NOT_FOUND"}))
    ResolverQueryLogConfigAssociationError.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AccessDenied", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ResolverQueryLogConfigAssociationError.add_member(:internal_service_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InternalServiceError", traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    ResolverQueryLogConfigAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation)
    ResolverQueryLogConfigAssociationStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Active", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:action_needed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ActionNeeded", traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverQueryLogConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfig)
    ResolverQueryLogConfigStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverQueryLogConfigStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Created", traits: {"smithy.api#enumValue" => "CREATED"}))
    ResolverQueryLogConfigStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverQueryLogConfigStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRule.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverRule.add_member(:creator_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    ResolverRule.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ResolverRule.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    ResolverRule.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleStatus, location_name: "Status"))
    ResolverRule.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ResolverRule.add_member(:rule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeOption, location_name: "RuleType"))
    ResolverRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResolverRule.add_member(:target_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: "TargetIps"))
    ResolverRule.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId"))
    ResolverRule.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ResolverRule.add_member(:share_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    ResolverRule.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    ResolverRule.add_member(:modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    ResolverRule.add_member(:delegation_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationRecord, location_name: "DelegationRecord"))
    ResolverRule.type = Types::ResolverRule
    ResolverRuleAssociation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverRuleAssociation.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverRuleId"))
    ResolverRuleAssociation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResolverRuleAssociation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPCId"))
    ResolverRuleAssociation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociationStatus, location_name: "Status"))
    ResolverRuleAssociation.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ResolverRuleAssociation.type = Types::ResolverRuleAssociation
    ResolverRuleAssociationStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverRuleAssociationStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Complete", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ResolverRuleAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverRuleAssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRuleAssociationStatus.add_member(:overridden, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Overridden", traits: {"smithy.api#enumValue" => "OVERRIDDEN"}))
    ResolverRuleAssociations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociation)
    ResolverRuleConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResolverRuleConfig.add_member(:target_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: "TargetIps"))
    ResolverRuleConfig.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId"))
    ResolverRuleConfig.type = Types::ResolverRuleConfig
    ResolverRuleStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Complete", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ResolverRuleStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverRuleStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Updating", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResolverRuleStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule)
    ResourceExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceExistsException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceExistsException.type = Types::ResourceExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceInUseException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceUnavailableException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RuleTypeOption.add_member(:forward, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Forward", traits: {"smithy.api#enumValue" => "FORWARD"}))
    RuleTypeOption.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "System", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    RuleTypeOption.add_member(:recursive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Recursive", traits: {"smithy.api#enumValue" => "RECURSIVE"}))
    RuleTypeOption.add_member(:delegate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Delegate", traits: {"smithy.api#enumValue" => "DELEGATE"}))
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShareStatus.add_member(:not_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NotShared", traits: {"smithy.api#enumValue" => "NOT_SHARED"}))
    ShareStatus.add_member(:shared_with_me, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SharedWithMe", traits: {"smithy.api#enumValue" => "SHARED_WITH_ME"}))
    ShareStatus.add_member(:shared_by_me, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SharedByMe", traits: {"smithy.api#enumValue" => "SHARED_BY_ME"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Ascending", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Descending", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetAddress.add_member(:ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: "Ip"))
    TargetAddress.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: "Port"))
    TargetAddress.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6"))
    TargetAddress.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    TargetAddress.add_member(:server_name_indication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerNameIndication, location_name: "ServerNameIndication"))
    TargetAddress.type = Types::TargetAddress
    TargetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAddress)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UnknownResourceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    UnknownResourceException.type = Types::UnknownResourceException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateFirewallConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallConfigRequest.add_member(:firewall_fail_open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallFailOpenStatus, location_name: "FirewallFailOpen", traits: {"smithy.api#required" => {}}))
    UpdateFirewallConfigRequest.type = Types::UpdateFirewallConfigRequest
    UpdateFirewallConfigResponse.add_member(:firewall_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallConfig, location_name: "FirewallConfig"))
    UpdateFirewallConfigResponse.type = Types::UpdateFirewallConfigResponse
    UpdateFirewallDomainsRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainUpdateOperation, location_name: "Operation", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomains, location_name: "Domains", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.type = Types::UpdateFirewallDomainsRequest
    UpdateFirewallDomainsResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    UpdateFirewallDomainsResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateFirewallDomainsResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: "Status"))
    UpdateFirewallDomainsResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    UpdateFirewallDomainsResponse.type = Types::UpdateFirewallDomainsResponse
    UpdateFirewallRuleGroupAssociationRequest.add_member(:firewall_rule_group_association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupAssociationId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:mutation_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: "MutationProtection"))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateFirewallRuleGroupAssociationRequest.type = Types::UpdateFirewallRuleGroupAssociationRequest
    UpdateFirewallRuleGroupAssociationResponse.add_member(:firewall_rule_group_association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: "FirewallRuleGroupAssociation"))
    UpdateFirewallRuleGroupAssociationResponse.type = Types::UpdateFirewallRuleGroupAssociationResponse
    UpdateFirewallRuleRequest.add_member(:firewall_rule_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleRequest.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId"))
    UpdateFirewallRuleRequest.add_member(:firewall_threat_protection_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallThreatProtectionId"))
    UpdateFirewallRuleRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    UpdateFirewallRuleRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    UpdateFirewallRuleRequest.add_member(:block_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockResponse, location_name: "BlockResponse"))
    UpdateFirewallRuleRequest.add_member(:block_override_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: "BlockOverrideDomain"))
    UpdateFirewallRuleRequest.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: "BlockOverrideDnsType"))
    UpdateFirewallRuleRequest.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "BlockOverrideTtl"))
    UpdateFirewallRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateFirewallRuleRequest.add_member(:firewall_domain_redirection_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainRedirectionAction, location_name: "FirewallDomainRedirectionAction"))
    UpdateFirewallRuleRequest.add_member(:qtype, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Qtype, location_name: "Qtype"))
    UpdateFirewallRuleRequest.add_member(:dns_threat_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsThreatProtection, location_name: "DnsThreatProtection"))
    UpdateFirewallRuleRequest.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "ConfidenceThreshold"))
    UpdateFirewallRuleRequest.type = Types::UpdateFirewallRuleRequest
    UpdateFirewallRuleResponse.add_member(:firewall_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRule, location_name: "FirewallRule"))
    UpdateFirewallRuleResponse.type = Types::UpdateFirewallRuleResponse
    UpdateIpAddress.add_member(:ip_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "IpId", traits: {"smithy.api#required" => {}}))
    UpdateIpAddress.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6", traits: {"smithy.api#required" => {}}))
    UpdateIpAddress.type = Types::UpdateIpAddress
    UpdateIpAddresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIpAddress)
    UpdateOutpostResolverRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateOutpostResolverRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverName, location_name: "Name"))
    UpdateOutpostResolverRequest.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: "InstanceCount"))
    UpdateOutpostResolverRequest.add_member(:preferred_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: "PreferredInstanceType"))
    UpdateOutpostResolverRequest.type = Types::UpdateOutpostResolverRequest
    UpdateOutpostResolverResponse.add_member(:outpost_resolver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver, location_name: "OutpostResolver"))
    UpdateOutpostResolverResponse.type = Types::UpdateOutpostResolverResponse
    UpdateResolverConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    UpdateResolverConfigRequest.add_member(:autodefined_reverse_flag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutodefinedReverseFlag, location_name: "AutodefinedReverseFlag", traits: {"smithy.api#required" => {}}))
    UpdateResolverConfigRequest.type = Types::UpdateResolverConfigRequest
    UpdateResolverConfigResponse.add_member(:resolver_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverConfig, location_name: "ResolverConfig"))
    UpdateResolverConfigResponse.type = Types::UpdateResolverConfigResponse
    UpdateResolverDnssecConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    UpdateResolverDnssecConfigRequest.add_member(:validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Validation, location_name: "Validation", traits: {"smithy.api#required" => {}}))
    UpdateResolverDnssecConfigRequest.type = Types::UpdateResolverDnssecConfigRequest
    UpdateResolverDnssecConfigResponse.add_member(:resolver_dnssec_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDnssecConfig, location_name: "ResolverDNSSECConfig"))
    UpdateResolverDnssecConfigResponse.type = Types::UpdateResolverDnssecConfigResponse
    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId", traits: {"smithy.api#required" => {}}))
    UpdateResolverEndpointRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: "ResolverEndpointType"))
    UpdateResolverEndpointRequest.add_member(:update_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIpAddresses, location_name: "UpdateIpAddresses"))
    UpdateResolverEndpointRequest.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolList, location_name: "Protocols"))
    UpdateResolverEndpointRequest.type = Types::UpdateResolverEndpointRequest
    UpdateResolverEndpointResponse.add_member(:resolver_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    UpdateResolverEndpointResponse.type = Types::UpdateResolverEndpointResponse
    UpdateResolverRuleRequest.add_member(:resolver_rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverRuleId", traits: {"smithy.api#required" => {}}))
    UpdateResolverRuleRequest.add_member(:config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleConfig, location_name: "Config", traits: {"smithy.api#required" => {}}))
    UpdateResolverRuleRequest.type = Types::UpdateResolverRuleRequest
    UpdateResolverRuleResponse.add_member(:resolver_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    UpdateResolverRuleResponse.type = Types::UpdateResolverRuleResponse
    Validation.add_member(:enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    Validation.add_member(:disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    Validation.add_member(:use_local_resource_setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USE_LOCAL_RESOURCE_SETTING", traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ValidationException.type = Types::ValidationException

    Route53Resolver = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53resolver#Route53Resolver"
      service.name = "Route53Resolver"
      service.version = "2018-04-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53Resolver", "arnNamespace" => "route53resolver", "cloudFormationName" => "Route53Resolver", "cloudTrailEventSource" => "route53resolver.amazonaws.com", "endpointPrefix" => "route53resolver"}, "aws.auth#sigv4" => {"name" => "route53resolver"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Route 53 Resolver"}
      service.add_operation(:associate_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateFirewallRuleGroup"
        operation.name = "AssociateFirewallRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFirewallRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFirewallRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_endpoint_ip_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverEndpointIpAddress"
        operation.name = "AssociateResolverEndpointIpAddress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverEndpointIpAddressRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverEndpointIpAddressResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverQueryLogConfig"
        operation.name = "AssociateResolverQueryLogConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverQueryLogConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverQueryLogConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverRule"
        operation.name = "AssociateResolverRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallDomainList"
        operation.name = "CreateFirewallDomainList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallDomainListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallDomainListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallRule"
        operation.name = "CreateFirewallRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallRuleGroup"
        operation.name = "CreateFirewallRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_outpost_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateOutpostResolver"
        operation.name = "CreateOutpostResolver"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutpostResolverRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutpostResolverResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverEndpoint"
        operation.name = "CreateResolverEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverQueryLogConfig"
        operation.name = "CreateResolverQueryLogConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverQueryLogConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverQueryLogConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverRule"
        operation.name = "CreateResolverRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallDomainList"
        operation.name = "DeleteFirewallDomainList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallDomainListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallDomainListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallRule"
        operation.name = "DeleteFirewallRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallRuleGroup"
        operation.name = "DeleteFirewallRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_outpost_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteOutpostResolver"
        operation.name = "DeleteOutpostResolver"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutpostResolverRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutpostResolverResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverEndpoint"
        operation.name = "DeleteResolverEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverQueryLogConfig"
        operation.name = "DeleteResolverQueryLogConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverQueryLogConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverQueryLogConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverRule"
        operation.name = "DeleteResolverRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateFirewallRuleGroup"
        operation.name = "DisassociateFirewallRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFirewallRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFirewallRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_endpoint_ip_address, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverEndpointIpAddress"
        operation.name = "DisassociateResolverEndpointIpAddress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverEndpointIpAddressRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverEndpointIpAddressResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverQueryLogConfig"
        operation.name = "DisassociateResolverQueryLogConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverQueryLogConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverQueryLogConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverRule"
        operation.name = "DisassociateResolverRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallConfig"
        operation.name = "GetFirewallConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallDomainList"
        operation.name = "GetFirewallDomainList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallDomainListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallDomainListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroup"
        operation.name = "GetFirewallRuleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroupAssociation"
        operation.name = "GetFirewallRuleGroupAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroupPolicy"
        operation.name = "GetFirewallRuleGroupPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_outpost_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetOutpostResolver"
        operation.name = "GetOutpostResolver"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostResolverRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostResolverResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverConfig"
        operation.name = "GetResolverConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_dnssec_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverDnssecConfig"
        operation.name = "GetResolverDnssecConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverDnssecConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverDnssecConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverEndpoint"
        operation.name = "GetResolverEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfig"
        operation.name = "GetResolverQueryLogConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfigAssociation"
        operation.name = "GetResolverQueryLogConfigAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfigPolicy"
        operation.name = "GetResolverQueryLogConfigPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRule"
        operation.name = "GetResolverRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRuleAssociation"
        operation.name = "GetResolverRuleAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRuleAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRuleAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRulePolicy"
        operation.name = "GetResolverRulePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRulePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRulePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {}
      end)
      service.add_operation(:import_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ImportFirewallDomains"
        operation.name = "ImportFirewallDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFirewallDomainsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFirewallDomainsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_firewall_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallConfigs"
        operation.name = "ListFirewallConfigs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallConfigsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallConfigsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallConfigs.new
      end)
      service.add_operation(:list_firewall_domain_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallDomainLists"
        operation.name = "ListFirewallDomainLists"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallDomainListsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallDomainListsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallDomainLists.new
      end)
      service.add_operation(:list_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallDomains"
        operation.name = "ListFirewallDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallDomainsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallDomainsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallDomains.new
      end)
      service.add_operation(:list_firewall_rule_group_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRuleGroupAssociations"
        operation.name = "ListFirewallRuleGroupAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRuleGroupAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRuleGroupAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRuleGroupAssociations.new
      end)
      service.add_operation(:list_firewall_rule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRuleGroups"
        operation.name = "ListFirewallRuleGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRuleGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRuleGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRuleGroups.new
      end)
      service.add_operation(:list_firewall_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRules"
        operation.name = "ListFirewallRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRules.new
      end)
      service.add_operation(:list_outpost_resolvers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListOutpostResolvers"
        operation.name = "ListOutpostResolvers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutpostResolversRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutpostResolversResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOutpostResolvers.new
      end)
      service.add_operation(:list_resolver_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverConfigs"
        operation.name = "ListResolverConfigs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverConfigsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverConfigsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverConfigs.new
      end)
      service.add_operation(:list_resolver_dnssec_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverDnssecConfigs"
        operation.name = "ListResolverDnssecConfigs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverDnssecConfigsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverDnssecConfigsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverDnssecConfigs.new
      end)
      service.add_operation(:list_resolver_endpoint_ip_addresses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverEndpointIpAddresses"
        operation.name = "ListResolverEndpointIpAddresses"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverEndpointIpAddressesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverEndpointIpAddressesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverEndpointIpAddresses.new
      end)
      service.add_operation(:list_resolver_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverEndpoints"
        operation.name = "ListResolverEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListResolverEndpointsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListResolverEndpoints.new
      end)
      service.add_operation(:list_resolver_query_log_config_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverQueryLogConfigAssociations"
        operation.name = "ListResolverQueryLogConfigAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverQueryLogConfigAssociations.new
      end)
      service.add_operation(:list_resolver_query_log_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverQueryLogConfigs"
        operation.name = "ListResolverQueryLogConfigs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverQueryLogConfigs.new
      end)
      service.add_operation(:list_resolver_rule_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverRuleAssociations"
        operation.name = "ListResolverRuleAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverRuleAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverRuleAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverRuleAssociations.new
      end)
      service.add_operation(:list_resolver_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverRules"
        operation.name = "ListResolverRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverRules.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_firewall_rule_group_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutFirewallRuleGroupPolicy"
        operation.name = "PutFirewallRuleGroupPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutFirewallRuleGroupPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutFirewallRuleGroupPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_resolver_query_log_config_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutResolverQueryLogConfigPolicy"
        operation.name = "PutResolverQueryLogConfigPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResolverQueryLogConfigPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResolverQueryLogConfigPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyDocument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {}
      end)
      service.add_operation(:put_resolver_rule_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutResolverRulePolicy"
        operation.name = "PutResolverRulePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResolverRulePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResolverRulePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyDocument)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallConfig"
        operation.name = "UpdateFirewallConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallDomains"
        operation.name = "UpdateFirewallDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallDomainsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallDomainsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallRule"
        operation.name = "UpdateFirewallRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_rule_group_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallRuleGroupAssociation"
        operation.name = "UpdateFirewallRuleGroupAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallRuleGroupAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallRuleGroupAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_outpost_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateOutpostResolver"
        operation.name = "UpdateOutpostResolver"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutpostResolverRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutpostResolverResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverConfig"
        operation.name = "UpdateResolverConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_dnssec_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverDnssecConfig"
        operation.name = "UpdateResolverDnssecConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverDnssecConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverDnssecConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverEndpoint"
        operation.name = "UpdateResolverEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverRule"
        operation.name = "UpdateResolverRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
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
