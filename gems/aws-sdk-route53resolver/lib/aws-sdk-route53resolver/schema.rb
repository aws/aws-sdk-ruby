# frozen_string_literal: true

# This is generated code!

module Aws::Route53Resolver
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 32}})
    Action = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#Action', name: 'Action')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AssociateFirewallRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AssociateFirewallRuleGroupRequest', name: 'AssociateFirewallRuleGroupRequest')
    AssociateFirewallRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AssociateFirewallRuleGroupResponse', name: 'AssociateFirewallRuleGroupResponse')
    AssociateResolverEndpointIpAddressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AssociateResolverEndpointIpAddressRequest', name: 'AssociateResolverEndpointIpAddressRequest')
    AssociateResolverEndpointIpAddressResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AssociateResolverEndpointIpAddressResponse', name: 'AssociateResolverEndpointIpAddressResponse')
    AssociateResolverQueryLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AssociateResolverQueryLogConfigRequest', name: 'AssociateResolverQueryLogConfigRequest')
    AssociateResolverQueryLogConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AssociateResolverQueryLogConfigResponse', name: 'AssociateResolverQueryLogConfigResponse')
    AssociateResolverRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AssociateResolverRuleRequest', name: 'AssociateResolverRuleRequest')
    AssociateResolverRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#AssociateResolverRuleResponse', name: 'AssociateResolverRuleResponse')
    AutodefinedReverseFlag = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#AutodefinedReverseFlag', name: 'AutodefinedReverseFlag')
    BlockOverrideDnsType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#BlockOverrideDnsType', name: 'BlockOverrideDnsType')
    BlockOverrideDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#BlockOverrideDomain', name: 'BlockOverrideDomain', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    BlockOverrideTtl = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#BlockOverrideTtl', name: 'BlockOverrideTtl', traits: {"smithy.api#range" => {"min" => 0, "max" => 604800}})
    BlockResponse = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#BlockResponse', name: 'BlockResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.route53resolver#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ConfidenceThreshold = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ConfidenceThreshold', name: 'ConfidenceThreshold')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    Count = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#Count', name: 'Count', traits: {"smithy.api#default" => 0})
    CreateFirewallDomainListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateFirewallDomainListRequest', name: 'CreateFirewallDomainListRequest')
    CreateFirewallDomainListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateFirewallDomainListResponse', name: 'CreateFirewallDomainListResponse')
    CreateFirewallRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateFirewallRuleGroupRequest', name: 'CreateFirewallRuleGroupRequest')
    CreateFirewallRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateFirewallRuleGroupResponse', name: 'CreateFirewallRuleGroupResponse')
    CreateFirewallRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateFirewallRuleRequest', name: 'CreateFirewallRuleRequest')
    CreateFirewallRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateFirewallRuleResponse', name: 'CreateFirewallRuleResponse')
    CreateOutpostResolverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateOutpostResolverRequest', name: 'CreateOutpostResolverRequest')
    CreateOutpostResolverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateOutpostResolverResponse', name: 'CreateOutpostResolverResponse')
    CreateResolverEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateResolverEndpointRequest', name: 'CreateResolverEndpointRequest')
    CreateResolverEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateResolverEndpointResponse', name: 'CreateResolverEndpointResponse')
    CreateResolverQueryLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateResolverQueryLogConfigRequest', name: 'CreateResolverQueryLogConfigRequest')
    CreateResolverQueryLogConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateResolverQueryLogConfigResponse', name: 'CreateResolverQueryLogConfigResponse')
    CreateResolverRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateResolverRuleRequest', name: 'CreateResolverRuleRequest')
    CreateResolverRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#CreateResolverRuleResponse', name: 'CreateResolverRuleResponse')
    CreatorRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#CreatorRequestId', name: 'CreatorRequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DelegationRecord = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#DelegationRecord', name: 'DelegationRecord', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DeleteFirewallDomainListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteFirewallDomainListRequest', name: 'DeleteFirewallDomainListRequest')
    DeleteFirewallDomainListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteFirewallDomainListResponse', name: 'DeleteFirewallDomainListResponse')
    DeleteFirewallRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteFirewallRuleGroupRequest', name: 'DeleteFirewallRuleGroupRequest')
    DeleteFirewallRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteFirewallRuleGroupResponse', name: 'DeleteFirewallRuleGroupResponse')
    DeleteFirewallRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteFirewallRuleRequest', name: 'DeleteFirewallRuleRequest')
    DeleteFirewallRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteFirewallRuleResponse', name: 'DeleteFirewallRuleResponse')
    DeleteOutpostResolverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteOutpostResolverRequest', name: 'DeleteOutpostResolverRequest')
    DeleteOutpostResolverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteOutpostResolverResponse', name: 'DeleteOutpostResolverResponse')
    DeleteResolverEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteResolverEndpointRequest', name: 'DeleteResolverEndpointRequest')
    DeleteResolverEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteResolverEndpointResponse', name: 'DeleteResolverEndpointResponse')
    DeleteResolverQueryLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteResolverQueryLogConfigRequest', name: 'DeleteResolverQueryLogConfigRequest')
    DeleteResolverQueryLogConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteResolverQueryLogConfigResponse', name: 'DeleteResolverQueryLogConfigResponse')
    DeleteResolverRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteResolverRuleRequest', name: 'DeleteResolverRuleRequest')
    DeleteResolverRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DeleteResolverRuleResponse', name: 'DeleteResolverRuleResponse')
    DestinationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#DestinationArn', name: 'DestinationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 600}})
    DisassociateFirewallRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DisassociateFirewallRuleGroupRequest', name: 'DisassociateFirewallRuleGroupRequest')
    DisassociateFirewallRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DisassociateFirewallRuleGroupResponse', name: 'DisassociateFirewallRuleGroupResponse')
    DisassociateResolverEndpointIpAddressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DisassociateResolverEndpointIpAddressRequest', name: 'DisassociateResolverEndpointIpAddressRequest')
    DisassociateResolverEndpointIpAddressResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DisassociateResolverEndpointIpAddressResponse', name: 'DisassociateResolverEndpointIpAddressResponse')
    DisassociateResolverQueryLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DisassociateResolverQueryLogConfigRequest', name: 'DisassociateResolverQueryLogConfigRequest')
    DisassociateResolverQueryLogConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DisassociateResolverQueryLogConfigResponse', name: 'DisassociateResolverQueryLogConfigResponse')
    DisassociateResolverRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DisassociateResolverRuleRequest', name: 'DisassociateResolverRuleRequest')
    DisassociateResolverRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#DisassociateResolverRuleResponse', name: 'DisassociateResolverRuleResponse')
    DnsThreatProtection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#DnsThreatProtection', name: 'DnsThreatProtection')
    DomainListFileUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#DomainListFileUrl', name: 'DomainListFileUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#ExceptionMessage', name: 'ExceptionMessage')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#Filter', name: 'Filter')
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#FilterName', name: 'FilterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 600}})
    FilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#FilterValues', name: 'FilterValues')
    Filters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#Filters', name: 'Filters')
    FirewallConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#FirewallConfig', name: 'FirewallConfig')
    FirewallConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#FirewallConfigList', name: 'FirewallConfigList')
    FirewallDomainImportOperation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#FirewallDomainImportOperation', name: 'FirewallDomainImportOperation')
    FirewallDomainList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#FirewallDomainList', name: 'FirewallDomainList')
    FirewallDomainListMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#FirewallDomainListMetadata', name: 'FirewallDomainListMetadata')
    FirewallDomainListMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#FirewallDomainListMetadataList', name: 'FirewallDomainListMetadataList')
    FirewallDomainListStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#FirewallDomainListStatus', name: 'FirewallDomainListStatus')
    FirewallDomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#FirewallDomainName', name: 'FirewallDomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FirewallDomainRedirectionAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#FirewallDomainRedirectionAction', name: 'FirewallDomainRedirectionAction')
    FirewallDomainUpdateOperation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#FirewallDomainUpdateOperation', name: 'FirewallDomainUpdateOperation')
    FirewallDomains = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#FirewallDomains', name: 'FirewallDomains')
    FirewallFailOpenStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#FirewallFailOpenStatus', name: 'FirewallFailOpenStatus')
    FirewallRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#FirewallRule', name: 'FirewallRule')
    FirewallRuleGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#FirewallRuleGroup', name: 'FirewallRuleGroup')
    FirewallRuleGroupAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#FirewallRuleGroupAssociation', name: 'FirewallRuleGroupAssociation')
    FirewallRuleGroupAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#FirewallRuleGroupAssociationStatus', name: 'FirewallRuleGroupAssociationStatus')
    FirewallRuleGroupAssociations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#FirewallRuleGroupAssociations', name: 'FirewallRuleGroupAssociations')
    FirewallRuleGroupMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#FirewallRuleGroupMetadata', name: 'FirewallRuleGroupMetadata')
    FirewallRuleGroupMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#FirewallRuleGroupMetadataList', name: 'FirewallRuleGroupMetadataList')
    FirewallRuleGroupPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#FirewallRuleGroupPolicy', name: 'FirewallRuleGroupPolicy', traits: {"smithy.api#length" => {"min" => 0, "max" => 30000}})
    FirewallRuleGroupStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#FirewallRuleGroupStatus', name: 'FirewallRuleGroupStatus')
    FirewallRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#FirewallRules', name: 'FirewallRules')
    GetFirewallConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallConfigRequest', name: 'GetFirewallConfigRequest')
    GetFirewallConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallConfigResponse', name: 'GetFirewallConfigResponse')
    GetFirewallDomainListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallDomainListRequest', name: 'GetFirewallDomainListRequest')
    GetFirewallDomainListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallDomainListResponse', name: 'GetFirewallDomainListResponse')
    GetFirewallRuleGroupAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallRuleGroupAssociationRequest', name: 'GetFirewallRuleGroupAssociationRequest')
    GetFirewallRuleGroupAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallRuleGroupAssociationResponse', name: 'GetFirewallRuleGroupAssociationResponse')
    GetFirewallRuleGroupPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallRuleGroupPolicyRequest', name: 'GetFirewallRuleGroupPolicyRequest')
    GetFirewallRuleGroupPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallRuleGroupPolicyResponse', name: 'GetFirewallRuleGroupPolicyResponse')
    GetFirewallRuleGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallRuleGroupRequest', name: 'GetFirewallRuleGroupRequest')
    GetFirewallRuleGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetFirewallRuleGroupResponse', name: 'GetFirewallRuleGroupResponse')
    GetOutpostResolverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetOutpostResolverRequest', name: 'GetOutpostResolverRequest')
    GetOutpostResolverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetOutpostResolverResponse', name: 'GetOutpostResolverResponse')
    GetResolverConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverConfigRequest', name: 'GetResolverConfigRequest')
    GetResolverConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverConfigResponse', name: 'GetResolverConfigResponse')
    GetResolverDnssecConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverDnssecConfigRequest', name: 'GetResolverDnssecConfigRequest')
    GetResolverDnssecConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverDnssecConfigResponse', name: 'GetResolverDnssecConfigResponse')
    GetResolverEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverEndpointRequest', name: 'GetResolverEndpointRequest')
    GetResolverEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverEndpointResponse', name: 'GetResolverEndpointResponse')
    GetResolverQueryLogConfigAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverQueryLogConfigAssociationRequest', name: 'GetResolverQueryLogConfigAssociationRequest')
    GetResolverQueryLogConfigAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverQueryLogConfigAssociationResponse', name: 'GetResolverQueryLogConfigAssociationResponse')
    GetResolverQueryLogConfigPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverQueryLogConfigPolicyRequest', name: 'GetResolverQueryLogConfigPolicyRequest')
    GetResolverQueryLogConfigPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverQueryLogConfigPolicyResponse', name: 'GetResolverQueryLogConfigPolicyResponse')
    GetResolverQueryLogConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverQueryLogConfigRequest', name: 'GetResolverQueryLogConfigRequest')
    GetResolverQueryLogConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverQueryLogConfigResponse', name: 'GetResolverQueryLogConfigResponse')
    GetResolverRuleAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverRuleAssociationRequest', name: 'GetResolverRuleAssociationRequest')
    GetResolverRuleAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverRuleAssociationResponse', name: 'GetResolverRuleAssociationResponse')
    GetResolverRulePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverRulePolicyRequest', name: 'GetResolverRulePolicyRequest')
    GetResolverRulePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverRulePolicyResponse', name: 'GetResolverRulePolicyResponse')
    GetResolverRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverRuleRequest', name: 'GetResolverRuleRequest')
    GetResolverRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#GetResolverRuleResponse', name: 'GetResolverRuleResponse')
    ImportFirewallDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ImportFirewallDomainsRequest', name: 'ImportFirewallDomainsRequest')
    ImportFirewallDomainsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ImportFirewallDomainsResponse', name: 'ImportFirewallDomainsResponse')
    InstanceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#InstanceCount', name: 'InstanceCount')
    InternalServiceErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#InternalServiceErrorException', name: 'InternalServiceErrorException', traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidPolicyDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#InvalidPolicyDocument', name: 'InvalidPolicyDocument', traits: {"smithy.api#error" => "client"})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    InvalidTagException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#InvalidTagException', name: 'InvalidTagException', traits: {"smithy.api#error" => "client"})
    Ip = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#Ip', name: 'Ip', traits: {"smithy.api#length" => {"min" => 7, "max" => 36}})
    IpAddressCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#IpAddressCount', name: 'IpAddressCount')
    IpAddressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#IpAddressRequest', name: 'IpAddressRequest')
    IpAddressResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#IpAddressResponse', name: 'IpAddressResponse')
    IpAddressStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#IpAddressStatus', name: 'IpAddressStatus')
    IpAddressUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#IpAddressUpdate', name: 'IpAddressUpdate')
    IpAddressesRequest = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#IpAddressesRequest', name: 'IpAddressesRequest', traits: {"smithy.api#length" => {"min" => 2, "max" => 20}})
    IpAddressesResponse = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#IpAddressesResponse', name: 'IpAddressesResponse')
    Ipv6 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#Ipv6', name: 'Ipv6', traits: {"smithy.api#length" => {"min" => 7, "max" => 39}})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListDomainMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#ListDomainMaxResults', name: 'ListDomainMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    ListFirewallConfigsMaxResult = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#ListFirewallConfigsMaxResult', name: 'ListFirewallConfigsMaxResult', traits: {"smithy.api#range" => {"min" => 5, "max" => 10}})
    ListFirewallConfigsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallConfigsRequest', name: 'ListFirewallConfigsRequest')
    ListFirewallConfigsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallConfigsResponse', name: 'ListFirewallConfigsResponse')
    ListFirewallDomainListsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallDomainListsRequest', name: 'ListFirewallDomainListsRequest')
    ListFirewallDomainListsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallDomainListsResponse', name: 'ListFirewallDomainListsResponse')
    ListFirewallDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallDomainsRequest', name: 'ListFirewallDomainsRequest')
    ListFirewallDomainsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallDomainsResponse', name: 'ListFirewallDomainsResponse')
    ListFirewallRuleGroupAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallRuleGroupAssociationsRequest', name: 'ListFirewallRuleGroupAssociationsRequest')
    ListFirewallRuleGroupAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallRuleGroupAssociationsResponse', name: 'ListFirewallRuleGroupAssociationsResponse')
    ListFirewallRuleGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallRuleGroupsRequest', name: 'ListFirewallRuleGroupsRequest')
    ListFirewallRuleGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallRuleGroupsResponse', name: 'ListFirewallRuleGroupsResponse')
    ListFirewallRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallRulesRequest', name: 'ListFirewallRulesRequest')
    ListFirewallRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListFirewallRulesResponse', name: 'ListFirewallRulesResponse')
    ListOutpostResolversRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListOutpostResolversRequest', name: 'ListOutpostResolversRequest')
    ListOutpostResolversResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListOutpostResolversResponse', name: 'ListOutpostResolversResponse')
    ListResolverConfigsMaxResult = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#ListResolverConfigsMaxResult', name: 'ListResolverConfigsMaxResult', traits: {"smithy.api#range" => {"min" => 5, "max" => 100}})
    ListResolverConfigsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverConfigsRequest', name: 'ListResolverConfigsRequest')
    ListResolverConfigsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverConfigsResponse', name: 'ListResolverConfigsResponse')
    ListResolverDnssecConfigsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverDnssecConfigsRequest', name: 'ListResolverDnssecConfigsRequest')
    ListResolverDnssecConfigsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverDnssecConfigsResponse', name: 'ListResolverDnssecConfigsResponse')
    ListResolverEndpointIpAddressesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverEndpointIpAddressesRequest', name: 'ListResolverEndpointIpAddressesRequest')
    ListResolverEndpointIpAddressesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverEndpointIpAddressesResponse', name: 'ListResolverEndpointIpAddressesResponse')
    ListResolverEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverEndpointsRequest', name: 'ListResolverEndpointsRequest')
    ListResolverEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverEndpointsResponse', name: 'ListResolverEndpointsResponse')
    ListResolverQueryLogConfigAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverQueryLogConfigAssociationsRequest', name: 'ListResolverQueryLogConfigAssociationsRequest')
    ListResolverQueryLogConfigAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverQueryLogConfigAssociationsResponse', name: 'ListResolverQueryLogConfigAssociationsResponse')
    ListResolverQueryLogConfigsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverQueryLogConfigsRequest', name: 'ListResolverQueryLogConfigsRequest')
    ListResolverQueryLogConfigsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverQueryLogConfigsResponse', name: 'ListResolverQueryLogConfigsResponse')
    ListResolverRuleAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverRuleAssociationsRequest', name: 'ListResolverRuleAssociationsRequest')
    ListResolverRuleAssociationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverRuleAssociationsResponse', name: 'ListResolverRuleAssociationsResponse')
    ListResolverRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverRulesRequest', name: 'ListResolverRulesRequest')
    ListResolverRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListResolverRulesResponse', name: 'ListResolverRulesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MutationProtectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#MutationProtectionStatus', name: 'MutationProtectionStatus')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)$"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#NextToken', name: 'NextToken')
    OutpostArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#OutpostArn', name: 'OutpostArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/op-[a-f0-9]{17}$"})
    OutpostInstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#OutpostInstanceType', name: 'OutpostInstanceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    OutpostResolver = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#OutpostResolver', name: 'OutpostResolver')
    OutpostResolverList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#OutpostResolverList', name: 'OutpostResolverList')
    OutpostResolverName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#OutpostResolverName', name: 'OutpostResolverName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    OutpostResolverStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#OutpostResolverStatus', name: 'OutpostResolverStatus')
    OutpostResolverStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#OutpostResolverStatusMessage', name: 'OutpostResolverStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    Port = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    Priority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#Priority', name: 'Priority')
    Protocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#Protocol', name: 'Protocol')
    ProtocolList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#ProtocolList', name: 'ProtocolList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    PutFirewallRuleGroupPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#PutFirewallRuleGroupPolicyRequest', name: 'PutFirewallRuleGroupPolicyRequest')
    PutFirewallRuleGroupPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#PutFirewallRuleGroupPolicyResponse', name: 'PutFirewallRuleGroupPolicyResponse')
    PutResolverQueryLogConfigPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#PutResolverQueryLogConfigPolicyRequest', name: 'PutResolverQueryLogConfigPolicyRequest')
    PutResolverQueryLogConfigPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#PutResolverQueryLogConfigPolicyResponse', name: 'PutResolverQueryLogConfigPolicyResponse')
    PutResolverRulePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#PutResolverRulePolicyRequest', name: 'PutResolverRulePolicyRequest')
    PutResolverRulePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#PutResolverRulePolicyResponse', name: 'PutResolverRulePolicyResponse')
    Qtype = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#Qtype', name: 'Qtype', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    ResolverAutodefinedReverseStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverAutodefinedReverseStatus', name: 'ResolverAutodefinedReverseStatus')
    ResolverConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResolverConfig', name: 'ResolverConfig')
    ResolverConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#ResolverConfigList', name: 'ResolverConfigList')
    ResolverDNSSECValidationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverDNSSECValidationStatus', name: 'ResolverDNSSECValidationStatus')
    ResolverDnssecConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResolverDnssecConfig', name: 'ResolverDnssecConfig')
    ResolverDnssecConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#ResolverDnssecConfigList', name: 'ResolverDnssecConfigList')
    ResolverEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResolverEndpoint', name: 'ResolverEndpoint')
    ResolverEndpointDirection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverEndpointDirection', name: 'ResolverEndpointDirection')
    ResolverEndpointStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverEndpointStatus', name: 'ResolverEndpointStatus')
    ResolverEndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverEndpointType', name: 'ResolverEndpointType')
    ResolverEndpoints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#ResolverEndpoints', name: 'ResolverEndpoints')
    ResolverQueryLogConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfig', name: 'ResolverQueryLogConfig')
    ResolverQueryLogConfigAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigAssociation', name: 'ResolverQueryLogConfigAssociation')
    ResolverQueryLogConfigAssociationError = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigAssociationError', name: 'ResolverQueryLogConfigAssociationError')
    ResolverQueryLogConfigAssociationErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigAssociationErrorMessage', name: 'ResolverQueryLogConfigAssociationErrorMessage')
    ResolverQueryLogConfigAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigAssociationList', name: 'ResolverQueryLogConfigAssociationList')
    ResolverQueryLogConfigAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigAssociationStatus', name: 'ResolverQueryLogConfigAssociationStatus')
    ResolverQueryLogConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigList', name: 'ResolverQueryLogConfigList')
    ResolverQueryLogConfigName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigName', name: 'ResolverQueryLogConfigName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)$"})
    ResolverQueryLogConfigPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigPolicy', name: 'ResolverQueryLogConfigPolicy', traits: {"smithy.api#length" => {"min" => 0, "max" => 30000}})
    ResolverQueryLogConfigStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverQueryLogConfigStatus', name: 'ResolverQueryLogConfigStatus')
    ResolverRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResolverRule', name: 'ResolverRule')
    ResolverRuleAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResolverRuleAssociation', name: 'ResolverRuleAssociation')
    ResolverRuleAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverRuleAssociationStatus', name: 'ResolverRuleAssociationStatus')
    ResolverRuleAssociations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#ResolverRuleAssociations', name: 'ResolverRuleAssociations')
    ResolverRuleConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResolverRuleConfig', name: 'ResolverRuleConfig')
    ResolverRulePolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#ResolverRulePolicy', name: 'ResolverRulePolicy', traits: {"smithy.api#length" => {"min" => 0, "max" => 30000}})
    ResolverRuleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ResolverRuleStatus', name: 'ResolverRuleStatus')
    ResolverRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#ResolverRules', name: 'ResolverRules')
    ResourceExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResourceExistsException', name: 'ResourceExistsException', traits: {"smithy.api#error" => "client"})
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ResourceUnavailableException', name: 'ResourceUnavailableException', traits: {"smithy.api#error" => "client"})
    Rfc3339TimeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#Rfc3339TimeString', name: 'Rfc3339TimeString', traits: {"smithy.api#length" => {"min" => 20, "max" => 40}})
    RuleTypeOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#RuleTypeOption', name: 'RuleTypeOption')
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#SecurityGroupIds', name: 'SecurityGroupIds')
    ServerNameIndication = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#ServerNameIndication', name: 'ServerNameIndication', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ServicePrinciple = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#ServicePrinciple', name: 'ServicePrinciple', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client"})
    ShareStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#ShareStatus', name: 'ShareStatus')
    SortByKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#SortByKey', name: 'SortByKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#SortOrder', name: 'SortOrder')
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#StatusMessage', name: 'StatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#String', name: 'String')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.route53resolver#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#TargetAddress', name: 'TargetAddress')
    TargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#TargetList', name: 'TargetList', traits: {"smithy.api#length" => {"min" => 1}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    UnknownResourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UnknownResourceException', name: 'UnknownResourceException', traits: {"smithy.api#error" => "client"})
    Unsigned = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.route53resolver#Unsigned', name: 'Unsigned')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateFirewallConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateFirewallConfigRequest', name: 'UpdateFirewallConfigRequest')
    UpdateFirewallConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateFirewallConfigResponse', name: 'UpdateFirewallConfigResponse')
    UpdateFirewallDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateFirewallDomainsRequest', name: 'UpdateFirewallDomainsRequest')
    UpdateFirewallDomainsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateFirewallDomainsResponse', name: 'UpdateFirewallDomainsResponse')
    UpdateFirewallRuleGroupAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateFirewallRuleGroupAssociationRequest', name: 'UpdateFirewallRuleGroupAssociationRequest')
    UpdateFirewallRuleGroupAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateFirewallRuleGroupAssociationResponse', name: 'UpdateFirewallRuleGroupAssociationResponse')
    UpdateFirewallRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateFirewallRuleRequest', name: 'UpdateFirewallRuleRequest')
    UpdateFirewallRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateFirewallRuleResponse', name: 'UpdateFirewallRuleResponse')
    UpdateIpAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateIpAddress', name: 'UpdateIpAddress')
    UpdateIpAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.route53resolver#UpdateIpAddresses', name: 'UpdateIpAddresses', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UpdateOutpostResolverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateOutpostResolverRequest', name: 'UpdateOutpostResolverRequest')
    UpdateOutpostResolverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateOutpostResolverResponse', name: 'UpdateOutpostResolverResponse')
    UpdateResolverConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateResolverConfigRequest', name: 'UpdateResolverConfigRequest')
    UpdateResolverConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateResolverConfigResponse', name: 'UpdateResolverConfigResponse')
    UpdateResolverDnssecConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateResolverDnssecConfigRequest', name: 'UpdateResolverDnssecConfigRequest')
    UpdateResolverDnssecConfigResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateResolverDnssecConfigResponse', name: 'UpdateResolverDnssecConfigResponse')
    UpdateResolverEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateResolverEndpointRequest', name: 'UpdateResolverEndpointRequest')
    UpdateResolverEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateResolverEndpointResponse', name: 'UpdateResolverEndpointResponse')
    UpdateResolverRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateResolverRuleRequest', name: 'UpdateResolverRuleRequest')
    UpdateResolverRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#UpdateResolverRuleResponse', name: 'UpdateResolverRuleResponse')
    Validation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.route53resolver#Validation', name: 'Validation')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.route53resolver#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    Action.add_member(:block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCK', traits: {"smithy.api#enumValue" => "BLOCK"}))
    Action.add_member(:alert, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALERT', traits: {"smithy.api#enumValue" => "ALERT"}))
    AssociateFirewallRuleGroupRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request and that allows failed requests to be\n\t\t\tretried without the risk of running the operation twice. <code>CreatorRequestId</code>\n\t\t\tcan be any unique string, for example, a date/time stamp. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group. </p>", "smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the VPC that you want to associate with the rule group. </p>", "smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The setting that determines the processing order of the rule group among the rule\n\t\t\tgroups that you associate with the specified VPC. DNS Firewall filters VPC traffic\n\t\t\tstarting from the rule group with the lowest numeric priority setting. </p>\n         <p>You must specify a unique priority for each rule group that you associate with a single VPC. \n           To make it easier to insert rule groups later, leave space between the numbers, for example, use 101, 200, and so on. You \n   can change the priority setting for a rule group association after you create it.</p>\n         <p>The allowed values for <code>Priority</code> are between 100 and 9900.</p>", "smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name that lets you identify the association, to manage and use it.</p>", "smithy.api#required" => {}}))
    AssociateFirewallRuleGroupRequest.add_member(:mutation_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: 'MutationProtection', traits: {"smithy.api#documentation" => "<p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. \n       When you create the association, the default setting is <code>DISABLED</code>. </p>"}))
    AssociateFirewallRuleGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tag keys and values that you want to associate with the rule group association. </p>"}))
    AssociateFirewallRuleGroupRequest.type = Types::AssociateFirewallRuleGroupRequest
    AssociateFirewallRuleGroupResponse.add_member(:firewall_rule_group_association, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: 'FirewallRuleGroupAssociation', traits: {"smithy.api#documentation" => "<p>The association that you just created. The association has an ID that you can use to\n\t\t\tidentify it in other requests, like update and delete.</p>"}))
    AssociateFirewallRuleGroupResponse.type = Types::AssociateFirewallRuleGroupResponse
    AssociateResolverEndpointIpAddressRequest.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver endpoint that you want to associate IP addresses with.</p>", "smithy.api#required" => {}}))
    AssociateResolverEndpointIpAddressRequest.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressUpdate, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>Either the IPv4 address that you want to add to a Resolver endpoint or a subnet ID. If you specify a subnet ID, \n\t\t\tResolver chooses an IP address for you from the available IPs in the specified subnet.</p>", "smithy.api#required" => {}}))
    AssociateResolverEndpointIpAddressRequest.type = Types::AssociateResolverEndpointIpAddressRequest
    AssociateResolverEndpointIpAddressResponse.add_member(:resolver_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: 'ResolverEndpoint', traits: {"smithy.api#documentation" => "<p>The response to an <code>AssociateResolverEndpointIpAddress</code> request.</p>"}))
    AssociateResolverEndpointIpAddressResponse.type = Types::AssociateResolverEndpointIpAddressResponse
    AssociateResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverQueryLogConfigId', traits: {"smithy.api#documentation" => "<p>The ID of the query logging configuration that you want to associate a VPC with.</p>", "smithy.api#required" => {}}))
    AssociateResolverQueryLogConfigRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of an Amazon VPC that you want this query logging configuration to log queries for.</p>\n         <note>\n            <p>The VPCs and the query logging configuration must be in the same Region.</p>\n         </note>", "smithy.api#required" => {}}))
    AssociateResolverQueryLogConfigRequest.type = Types::AssociateResolverQueryLogConfigRequest
    AssociateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: 'ResolverQueryLogConfigAssociation', traits: {"smithy.api#documentation" => "<p>A complex type that contains settings for a specified association between an Amazon VPC and a query logging configuration.</p>"}))
    AssociateResolverQueryLogConfigResponse.type = Types::AssociateResolverQueryLogConfigResponse
    AssociateResolverRuleRequest.add_member(:resolver_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverRuleId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver rule that you want to associate with the VPC. To list the existing Resolver rules, use \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>.</p>", "smithy.api#required" => {}}))
    AssociateResolverRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the association that you're creating between a Resolver rule and a VPC.</p>"}))
    AssociateResolverRuleRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPCId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that you want to associate the Resolver rule with.</p>", "smithy.api#required" => {}}))
    AssociateResolverRuleRequest.type = Types::AssociateResolverRuleRequest
    AssociateResolverRuleResponse.add_member(:resolver_rule_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: 'ResolverRuleAssociation', traits: {"smithy.api#documentation" => "<p>Information about the <code>AssociateResolverRule</code> request, including the status of the request.</p>"}))
    AssociateResolverRuleResponse.type = Types::AssociateResolverRuleResponse
    AutodefinedReverseFlag.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE', traits: {"smithy.api#enumValue" => "ENABLE"}))
    AutodefinedReverseFlag.add_member(:disable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE', traits: {"smithy.api#enumValue" => "DISABLE"}))
    AutodefinedReverseFlag.add_member(:use_local_resource_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_LOCAL_RESOURCE_SETTING', traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    BlockOverrideDnsType.add_member(:cname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CNAME', traits: {"smithy.api#enumValue" => "CNAME"}))
    BlockResponse.add_member(:nodata, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODATA', traits: {"smithy.api#enumValue" => "NODATA"}))
    BlockResponse.add_member(:nxdomain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NXDOMAIN', traits: {"smithy.api#enumValue" => "NXDOMAIN"}))
    BlockResponse.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERRIDE', traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    ConfidenceThreshold.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ConfidenceThreshold.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ConfidenceThreshold.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateFirewallDomainListRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request and that allows you to retry failed requests\n\t\t\twithout the risk of running the operation twice. <code>CreatorRequestId</code> can be\n\t\t\tany unique string, for example, a date/time stamp. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallDomainListRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name that lets you identify the domain list to manage and use it.</p>", "smithy.api#required" => {}}))
    CreateFirewallDomainListRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tag keys and values that you want to associate with the domain list. </p>"}))
    CreateFirewallDomainListRequest.type = Types::CreateFirewallDomainListRequest
    CreateFirewallDomainListResponse.add_member(:firewall_domain_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: 'FirewallDomainList', traits: {"smithy.api#documentation" => "<p>The domain list that you just created.</p>"}))
    CreateFirewallDomainListResponse.type = Types::CreateFirewallDomainListResponse
    CreateFirewallRuleGroupRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string defined by you to identify the request. This allows you to retry failed\n\t\t\trequests without the risk of running the operation twice. This can be any unique string,\n\t\t\tfor example, a timestamp. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallRuleGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name that lets you identify the rule group, to manage and use it.</p>", "smithy.api#required" => {}}))
    CreateFirewallRuleGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tag keys and values that you want to associate with the rule group. </p>"}))
    CreateFirewallRuleGroupRequest.type = Types::CreateFirewallRuleGroupRequest
    CreateFirewallRuleGroupResponse.add_member(:firewall_rule_group, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: 'FirewallRuleGroup', traits: {"smithy.api#documentation" => "<p>A collection of rules used to filter DNS network traffic. </p>"}))
    CreateFirewallRuleGroupResponse.type = Types::CreateFirewallRuleGroupResponse
    CreateFirewallRuleRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request and that allows you to retry failed requests\n\t\t\twithout the risk of running the operation twice. <code>CreatorRequestId</code> can be\n\t\t\tany unique string, for example, a date/time stamp. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group where you want to create the rule. </p>", "smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list that you want to use in the rule. Can't be used together with <code>DnsThreatProtecton</code>.</p>"}))
    CreateFirewallRuleRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The setting that determines the processing order of the rule in the rule group. DNS Firewall \n           processes the rules in a rule group by order of priority, starting from the lowest setting.</p>\n         <p>You must specify a unique priority for each rule in a rule group. \n           To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You \n   can change the priority setting for the rules in a rule group at any time.</p>", "smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALLOW</code> - Permit the request to go through. Not available for DNS Firewall Advanced rules.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ALERT</code> - Permit the request and send metrics and logs to Cloud Watch.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:block_response, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockResponse, location_name: 'BlockResponse', traits: {"smithy.api#documentation" => "<p>The way that you want DNS Firewall to block the request, used with the rule action\n\t\t\tsetting <code>BLOCK</code>. </p>\n         <ul>\n            <li>\n               <p>\n                  <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p>\n            </li>\n         </ul>\n         <p>This setting is required if the rule action setting is <code>BLOCK</code>.</p>"}))
    CreateFirewallRuleRequest.add_member(:block_override_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: 'BlockOverrideDomain', traits: {"smithy.api#documentation" => "<p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>\n         <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>"}))
    CreateFirewallRuleRequest.add_member(:block_override_dns_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: 'BlockOverrideDnsType', traits: {"smithy.api#documentation" => "<p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>\n         <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>"}))
    CreateFirewallRuleRequest.add_member(:block_override_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: 'BlockOverrideTtl', traits: {"smithy.api#documentation" => "<p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>\n         <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>"}))
    CreateFirewallRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name that lets you identify the rule in the rule group.</p>", "smithy.api#required" => {}}))
    CreateFirewallRuleRequest.add_member(:firewall_domain_redirection_action, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainRedirectionAction, location_name: 'FirewallDomainRedirectionAction', traits: {"smithy.api#documentation" => "<p>\n\t\t\tHow you want the the rule to evaluate DNS redirection in the DNS redirection chain, such as CNAME or DNAME. \n\t\t</p>\n         <p>\n            <code>INSPECT_REDIRECTION_DOMAIN</code>: (Default) inspects all domains in the redirection chain. The individual domains in the redirection chain must be \n\t\t\tadded to the domain list.</p>\n         <p>\n            <code>TRUST_REDIRECTION_DOMAIN</code>: Inspects only the first domain in the redirection chain. You don't need to add the subsequent domains in the domain in the redirection list to \n\t\t\tthe domain list.</p>"}))
    CreateFirewallRuleRequest.add_member(:qtype, Smithy::Schema::Shapes::ShapeRef.new(shape: Qtype, location_name: 'Qtype', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe DNS query type you want the rule to evaluate. Allowed values are;\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n\t\t\t\tA: Returns an IPv4 address.</p>\n            </li>\n            <li>\n               <p>AAAA: Returns an Ipv6 address.</p>\n            </li>\n            <li>\n               <p>CAA: Restricts CAs that can create SSL/TLS certifications for the domain.</p>\n            </li>\n            <li>\n               <p>CNAME: Returns another domain name.</p>\n            </li>\n            <li>\n               <p>DS: Record that identifies the DNSSEC signing key of a delegated zone.</p>\n            </li>\n            <li>\n               <p>MX: Specifies mail servers.</p>\n            </li>\n            <li>\n               <p>NAPTR: Regular-expression-based rewriting of domain names.</p>\n            </li>\n            <li>\n               <p>NS: Authoritative name servers.</p>\n            </li>\n            <li>\n               <p>PTR: Maps an IP address to a domain name.</p>\n            </li>\n            <li>\n               <p>SOA: Start of authority record for the zone.</p>\n            </li>\n            <li>\n               <p>SPF: Lists the servers authorized to send emails from a domain.</p>\n            </li>\n            <li>\n               <p>SRV: Application specific values that identify servers.</p>\n            </li>\n            <li>\n               <p>TXT: Verifies email senders and application-specific values.</p>\n            </li>\n            <li>\n               <p>A query type you define by using the DNS type ID, for example 28 for AAAA. The values must be\n\t\t\t\tdefined as TYPENUMBER, where the\n\t\t\t\tNUMBER can be 1-65334, for\n\t\t\t\texample, TYPE28. For more information, see \n\t\t\t\t<a href=\"https://en.wikipedia.org/wiki/List_of_DNS_record_types\">List of DNS record types</a>.</p>\n            </li>\n         </ul>"}))
    CreateFirewallRuleRequest.add_member(:dns_threat_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsThreatProtection, location_name: 'DnsThreatProtection', traits: {"smithy.api#documentation" => "<p>\n\t\t\tUse to create a DNS Firewall Advanced rule.\n\t\t</p>"}))
    CreateFirewallRuleRequest.add_member(:confidence_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: 'ConfidenceThreshold', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule. The confidence\n\t\t\tlevel values mean:\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LOW</code>: Provides the highest detection rate for threats, but also increases false positives.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MEDIUM</code>: Provides a balance between detecting threats and false positives.</p>\n            </li>\n            <li>\n               <p>\n                  <code>HIGH</code>: Detects only the most well corroborated threats with a low rate of false positives. </p>\n            </li>\n         </ul>"}))
    CreateFirewallRuleRequest.type = Types::CreateFirewallRuleRequest
    CreateFirewallRuleResponse.add_member(:firewall_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRule, location_name: 'FirewallRule', traits: {"smithy.api#documentation" => "<p>The\n\t\t\tfirewall rule that you just created. </p>"}))
    CreateFirewallRuleResponse.type = Types::CreateFirewallRuleResponse
    CreateOutpostResolverRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request \n\t\tand that allows failed requests to be retried without the risk of running the operation twice. </p>\n         <p>\n            <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>", "smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name that lets you easily find a configuration in the \n\t\tResolver dashboard in the Route 53 console.</p>", "smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'InstanceCount', traits: {"smithy.api#documentation" => "<p>Number of Amazon EC2 instances for the\n\t\tResolver on Outpost. \n\t\tThe default and minimal value is 4.</p>"}))
    CreateOutpostResolverRequest.add_member(:preferred_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: 'PreferredInstanceType', traits: {"smithy.api#documentation" => "<p>\n\t\tThe Amazon EC2 instance type. If you specify this, you must also specify a value for the <code>OutpostArn</code>.\n\t</p>", "smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: 'OutpostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Outpost. If you specify this, you must also specify a value for the <code>PreferredInstanceType</code>.</p>", "smithy.api#required" => {}}))
    CreateOutpostResolverRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>\n\t\t\tA string that helps identify the Route 53 Resolvers on Outpost.\n\t\t</p>"}))
    CreateOutpostResolverRequest.type = Types::CreateOutpostResolverRequest
    CreateOutpostResolverResponse.add_member(:outpost_resolver, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver, location_name: 'OutpostResolver', traits: {"smithy.api#documentation" => "<p>Information about the <code>CreateOutpostResolver</code>\n\t\trequest, including the status of the request.</p>"}))
    CreateOutpostResolverResponse.type = Types::CreateOutpostResolverResponse
    CreateResolverEndpointRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request and that allows failed requests to be retried\n\t\t\twithout the risk of running the operation twice. <code>CreatorRequestId</code> can be\n\t\t\tany unique string, for example, a date/time stamp. </p>", "smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name that lets you easily find a configuration in the Resolver dashboard in the Route 53 console.</p>"}))
    CreateResolverEndpointRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The ID of one or more security groups that you want to use to control access to this VPC. The security group that you specify \n\t\t\tmust include one or more inbound rules (for inbound Resolver endpoints) or outbound rules (for outbound Resolver endpoints). \n\t\t\tInbound and outbound rules must allow TCP and UDP access. For inbound access, open port 53. For outbound access, open the port \n\t\t\tthat you're using for DNS queries on your network.</p>\n         <p>Some security group rules will cause your connection to be tracked. For outbound resolver endpoint, it can potentially impact the \n\t\t\tmaximum queries per second from outbound endpoint to your target name server. For inbound resolver endpoint, it can bring down the overall maximum queries per second per IP address to as low as 1500. \n\t\t\tTo avoid connection tracking caused by security group, see  \n\t\t\t<a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#untracked-connectionsl\">Untracked connections</a>.</p>", "smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:direction, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointDirection, location_name: 'Direction', traits: {"smithy.api#documentation" => "<p>Specify the applicable value:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INBOUND</code>: Resolver forwards DNS queries to the DNS service for a VPC from your network.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OUTBOUND</code>: Resolver forwards DNS queries from the DNS service for a VPC to your network.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INBOUND_DELEGATION</code>: Resolver delegates queries to Route 53 private hosted zones from your network.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressesRequest, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>The subnets and IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward \n\t\t\tDNS queries to (for inbound endpoints). The subnet ID uniquely identifies a VPC. </p>\n         <note>\n            <p>Even though the minimum is 1, Route 53 requires that you create at least two.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateResolverEndpointRequest.add_member(:outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: 'OutpostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Outpost. If you specify this, you must also specify a\n\t\t\tvalue for the <code>PreferredInstanceType</code>. </p>"}))
    CreateResolverEndpointRequest.add_member(:preferred_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: 'PreferredInstanceType', traits: {"smithy.api#documentation" => "<p>The  instance type. If you specify this, you must also specify a value for the <code>OutpostArn</code>.</p>"}))
    CreateResolverEndpointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tag keys and values that you want to associate with the endpoint.</p>"}))
    CreateResolverEndpointRequest.add_member(:resolver_endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: 'ResolverEndpointType', traits: {"smithy.api#documentation" => "<p>\n\t\t\tFor the endpoint type you can choose either IPv4, IPv6, or dual-stack.\n\t\t\tA dual-stack endpoint means that it will resolve via both IPv4 and IPv6. This\n\t\t\tendpoint type is applied to all IP addresses.\n\t\t</p>"}))
    CreateResolverEndpointRequest.add_member(:protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolList, location_name: 'Protocols', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe protocols you want to use for the endpoint. DoH-FIPS is applicable for default inbound endpoints only.\n\t\t</p>\n         <p>For a default inbound endpoint you can apply the protocols as follows:</p>\n         <ul>\n            <li>\n               <p> Do53  and DoH in combination.</p>\n            </li>\n            <li>\n               <p>Do53  and DoH-FIPS in combination.</p>\n            </li>\n            <li>\n               <p>Do53 alone.</p>\n            </li>\n            <li>\n               <p>DoH alone.</p>\n            </li>\n            <li>\n               <p>DoH-FIPS alone.</p>\n            </li>\n            <li>\n               <p>None, which is treated as Do53.</p>\n            </li>\n         </ul>\n         <p>For a delegation inbound endpoint you can use Do53 only.</p>\n         <p>For an outbound endpoint you can apply the protocols as follows:</p>\n         <ul>\n            <li>\n               <p> Do53  and DoH in combination.</p>\n            </li>\n            <li>\n               <p>Do53 alone.</p>\n            </li>\n            <li>\n               <p>DoH alone.</p>\n            </li>\n            <li>\n               <p>None, which is treated as Do53.</p>\n            </li>\n         </ul>"}))
    CreateResolverEndpointRequest.type = Types::CreateResolverEndpointRequest
    CreateResolverEndpointResponse.add_member(:resolver_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: 'ResolverEndpoint', traits: {"smithy.api#documentation" => "<p>Information about the <code>CreateResolverEndpoint</code> request, including the status of the request.</p>"}))
    CreateResolverEndpointResponse.type = Types::CreateResolverEndpointResponse
    CreateResolverQueryLogConfigRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name that you want to give the query logging configuration.</p>", "smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you want Resolver to send query logs. You can send query logs to an S3 bucket, a CloudWatch Logs log group, \n\t\t\tor a Kinesis Data Firehose delivery stream. Examples of valid values include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>S3 bucket</b>: </p>\n               <p>\n                  <code>arn:aws:s3:::amzn-s3-demo-bucket</code>\n               </p>\n               <p>You can optionally append a file prefix to the end of the ARN.</p>\n               <p>\n                  <code>arn:aws:s3:::amzn-s3-demo-bucket/development/</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <b>CloudWatch Logs log group</b>: </p>\n               <p>\n                  <code>arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <b>Kinesis Data Firehose delivery stream</b>:</p>\n               <p>\n                  <code>arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request and that allows failed requests to be retried\n\t\t\twithout the risk of running the operation twice. <code>CreatorRequestId</code> can be\n\t\t\tany unique string, for example, a date/time stamp. </p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateResolverQueryLogConfigRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tag keys and values that you want to associate with the query logging configuration.</p>"}))
    CreateResolverQueryLogConfigRequest.type = Types::CreateResolverQueryLogConfigRequest
    CreateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: 'ResolverQueryLogConfig', traits: {"smithy.api#documentation" => "<p>Information about the <code>CreateResolverQueryLogConfig</code> request, including the status of the request.</p>"}))
    CreateResolverQueryLogConfigResponse.type = Types::CreateResolverQueryLogConfigResponse
    CreateResolverRuleRequest.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request and that allows failed requests to be retried\n\t\t\twithout the risk of running the operation twice. <code>CreatorRequestId</code> can be\n\t\t\tany unique string, for example, a date/time stamp. </p>", "smithy.api#required" => {}}))
    CreateResolverRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.</p>"}))
    CreateResolverRuleRequest.add_member(:rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeOption, location_name: 'RuleType', traits: {"smithy.api#documentation" => "<p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code> or <code>DELEGATE</code>.</p>\n         <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for \n\t\t\ta subdomain of that domain, specify <code>SYSTEM</code>.</p>\n         <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code> \n\t\t\tfor <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify \n\t\t\t<code>SYSTEM</code> for <code>RuleType</code>.</p>\n         <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>", "smithy.api#required" => {}}))
    CreateResolverRuleRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>DNS queries for this domain name are forwarded to the IP addresses that you specify in <code>TargetIps</code>. If a query matches \n\t\t\tmultiple Resolver rules (example.com and www.example.com), outbound DNS queries are routed using the Resolver rule that contains \n\t\t\tthe most specific domain name (www.example.com).</p>"}))
    CreateResolverRuleRequest.add_member(:target_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'TargetIps', traits: {"smithy.api#documentation" => "<p>The IPs that you want Resolver to forward DNS queries to. You can specify either Ipv4 or Ipv6 addresses but not both in the same rule. Separate IP addresses with a space.</p>\n         <p>\n            <code>TargetIps</code> is available only when the value of <code>Rule type</code> is <code>FORWARD</code>.</p>"}))
    CreateResolverRuleRequest.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify \n\t\t\tin <code>TargetIps</code>.</p>"}))
    CreateResolverRuleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tag keys and values that you want to associate with the endpoint.</p>"}))
    CreateResolverRuleRequest.add_member(:delegation_record, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationRecord, location_name: 'DelegationRecord', traits: {"smithy.api#documentation" => "<p>\n\t\t\tDNS queries with the delegation records that match this domain name are forwarded to the resolvers on your \n\t\t\tnetwork.\n\t\t</p>"}))
    CreateResolverRuleRequest.type = Types::CreateResolverRuleRequest
    CreateResolverRuleResponse.add_member(:resolver_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule, location_name: 'ResolverRule', traits: {"smithy.api#documentation" => "<p>Information about the <code>CreateResolverRule</code> request, including the status of the request.</p>"}))
    CreateResolverRuleResponse.type = Types::CreateResolverRuleResponse
    DeleteFirewallDomainListRequest.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list that you want to delete. </p>", "smithy.api#required" => {}}))
    DeleteFirewallDomainListRequest.type = Types::DeleteFirewallDomainListRequest
    DeleteFirewallDomainListResponse.add_member(:firewall_domain_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: 'FirewallDomainList', traits: {"smithy.api#documentation" => "<p>The domain list that you just deleted. </p>"}))
    DeleteFirewallDomainListResponse.type = Types::DeleteFirewallDomainListResponse
    DeleteFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group that you want to delete. </p>", "smithy.api#required" => {}}))
    DeleteFirewallRuleGroupRequest.type = Types::DeleteFirewallRuleGroupRequest
    DeleteFirewallRuleGroupResponse.add_member(:firewall_rule_group, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: 'FirewallRuleGroup', traits: {"smithy.api#documentation" => "<p>A collection of rules used to filter DNS network traffic. </p>"}))
    DeleteFirewallRuleGroupResponse.type = Types::DeleteFirewallRuleGroupResponse
    DeleteFirewallRuleRequest.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group that you want to delete the rule from. </p>", "smithy.api#required" => {}}))
    DeleteFirewallRuleRequest.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list that's used in the rule.  </p>"}))
    DeleteFirewallRuleRequest.add_member(:firewall_threat_protection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallThreatProtectionId', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe ID that is created for a DNS Firewall Advanced rule.\n\t\t</p>"}))
    DeleteFirewallRuleRequest.add_member(:qtype, Smithy::Schema::Shapes::ShapeRef.new(shape: Qtype, location_name: 'Qtype', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe DNS query type that the rule you are deleting evaluates. Allowed values are;\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n\t\t\t\tA: Returns an IPv4 address.</p>\n            </li>\n            <li>\n               <p>AAAA: Returns an Ipv6 address.</p>\n            </li>\n            <li>\n               <p>CAA: Restricts CAs that can create SSL/TLS certifications for the domain.</p>\n            </li>\n            <li>\n               <p>CNAME: Returns another domain name.</p>\n            </li>\n            <li>\n               <p>DS: Record that identifies the DNSSEC signing key of a delegated zone.</p>\n            </li>\n            <li>\n               <p>MX: Specifies mail servers.</p>\n            </li>\n            <li>\n               <p>NAPTR: Regular-expression-based rewriting of domain names.</p>\n            </li>\n            <li>\n               <p>NS: Authoritative name servers.</p>\n            </li>\n            <li>\n               <p>PTR: Maps an IP address to a domain name.</p>\n            </li>\n            <li>\n               <p>SOA: Start of authority record for the zone.</p>\n            </li>\n            <li>\n               <p>SPF: Lists the servers authorized to send emails from a domain.</p>\n            </li>\n            <li>\n               <p>SRV: Application specific values that identify servers.</p>\n            </li>\n            <li>\n               <p>TXT: Verifies email senders and application-specific values.</p>\n            </li>\n            <li>\n               <p>A query type you define by using the DNS type ID, for example 28 for AAAA. The values must be\n\t\t\t\tdefined as TYPENUMBER, where the\n\t\t\t\tNUMBER can be 1-65334, for\n\t\t\t\texample, TYPE28. For more information, see \n\t\t\t\t<a href=\"https://en.wikipedia.org/wiki/List_of_DNS_record_types\">List of DNS record types</a>.</p>\n            </li>\n         </ul>"}))
    DeleteFirewallRuleRequest.type = Types::DeleteFirewallRuleRequest
    DeleteFirewallRuleResponse.add_member(:firewall_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRule, location_name: 'FirewallRule', traits: {"smithy.api#documentation" => "<p>The specification for the firewall rule that you just deleted.</p>"}))
    DeleteFirewallRuleResponse.type = Types::DeleteFirewallRuleResponse
    DeleteOutpostResolverRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the Resolver on the Outpost.</p>", "smithy.api#required" => {}}))
    DeleteOutpostResolverRequest.type = Types::DeleteOutpostResolverRequest
    DeleteOutpostResolverResponse.add_member(:outpost_resolver, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver, location_name: 'OutpostResolver', traits: {"smithy.api#documentation" => "<p>Information about the <code>DeleteOutpostResolver</code> \n\t\trequest, including the status of the request.</p>"}))
    DeleteOutpostResolverResponse.type = Types::DeleteOutpostResolverResponse
    DeleteResolverEndpointRequest.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver endpoint that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteResolverEndpointRequest.type = Types::DeleteResolverEndpointRequest
    DeleteResolverEndpointResponse.add_member(:resolver_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: 'ResolverEndpoint', traits: {"smithy.api#documentation" => "<p>Information about the <code>DeleteResolverEndpoint</code> request, including the status of the request.</p>"}))
    DeleteResolverEndpointResponse.type = Types::DeleteResolverEndpointResponse
    DeleteResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverQueryLogConfigId', traits: {"smithy.api#documentation" => "<p>The ID of the query logging configuration that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteResolverQueryLogConfigRequest.type = Types::DeleteResolverQueryLogConfigRequest
    DeleteResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: 'ResolverQueryLogConfig', traits: {"smithy.api#documentation" => "<p>Information about the query logging configuration that you deleted, including the status of the request.</p>"}))
    DeleteResolverQueryLogConfigResponse.type = Types::DeleteResolverQueryLogConfigResponse
    DeleteResolverRuleRequest.add_member(:resolver_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverRuleId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver rule that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteResolverRuleRequest.type = Types::DeleteResolverRuleRequest
    DeleteResolverRuleResponse.add_member(:resolver_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule, location_name: 'ResolverRule', traits: {"smithy.api#documentation" => "<p>Information about the <code>DeleteResolverRule</code> request, including the status of the request.</p>"}))
    DeleteResolverRuleResponse.type = Types::DeleteResolverRuleResponse
    DisassociateFirewallRuleGroupRequest.add_member(:firewall_rule_group_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>", "smithy.api#required" => {}}))
    DisassociateFirewallRuleGroupRequest.type = Types::DisassociateFirewallRuleGroupRequest
    DisassociateFirewallRuleGroupResponse.add_member(:firewall_rule_group_association, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: 'FirewallRuleGroupAssociation', traits: {"smithy.api#documentation" => "<p>The firewall rule group association that you just removed. </p>"}))
    DisassociateFirewallRuleGroupResponse.type = Types::DisassociateFirewallRuleGroupResponse
    DisassociateResolverEndpointIpAddressRequest.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver endpoint that you want to disassociate an IP address from.</p>", "smithy.api#required" => {}}))
    DisassociateResolverEndpointIpAddressRequest.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressUpdate, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The IPv4 address that you want to remove from a Resolver endpoint.</p>", "smithy.api#required" => {}}))
    DisassociateResolverEndpointIpAddressRequest.type = Types::DisassociateResolverEndpointIpAddressRequest
    DisassociateResolverEndpointIpAddressResponse.add_member(:resolver_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: 'ResolverEndpoint', traits: {"smithy.api#documentation" => "<p>The response to an <code>DisassociateResolverEndpointIpAddress</code> request.</p>"}))
    DisassociateResolverEndpointIpAddressResponse.type = Types::DisassociateResolverEndpointIpAddressResponse
    DisassociateResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverQueryLogConfigId', traits: {"smithy.api#documentation" => "<p>The ID of the query logging configuration that you want to disassociate a specified VPC from.</p>", "smithy.api#required" => {}}))
    DisassociateResolverQueryLogConfigRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon VPC that you want to disassociate from a specified query logging configuration.</p>", "smithy.api#required" => {}}))
    DisassociateResolverQueryLogConfigRequest.type = Types::DisassociateResolverQueryLogConfigRequest
    DisassociateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: 'ResolverQueryLogConfigAssociation', traits: {"smithy.api#documentation" => "<p>A complex type that contains settings for the association that you deleted between an Amazon VPC and a query logging configuration.</p>"}))
    DisassociateResolverQueryLogConfigResponse.type = Types::DisassociateResolverQueryLogConfigResponse
    DisassociateResolverRuleRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPCId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that you want to disassociate the Resolver rule from.</p>", "smithy.api#required" => {}}))
    DisassociateResolverRuleRequest.add_member(:resolver_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverRuleId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver rule that you want to disassociate from the specified VPC.</p>", "smithy.api#required" => {}}))
    DisassociateResolverRuleRequest.type = Types::DisassociateResolverRuleRequest
    DisassociateResolverRuleResponse.add_member(:resolver_rule_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: 'ResolverRuleAssociation', traits: {"smithy.api#documentation" => "<p>Information about the <code>DisassociateResolverRule</code> request, including the status of the request.</p>"}))
    DisassociateResolverRuleResponse.type = Types::DisassociateResolverRuleResponse
    DnsThreatProtection.add_member(:dga, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DGA', traits: {"smithy.api#enumValue" => "DGA"}))
    DnsThreatProtection.add_member(:dns_tunneling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DNS_TUNNELING', traits: {"smithy.api#enumValue" => "DNS_TUNNELING"}))
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parameter that you want to use to filter objects.</p>\n         <p>The valid values for <code>Name</code> depend on the action that you're including the filter in, \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>, \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>, \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>, \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html\">ListResolverQueryLogConfigs</a>,\n\t\t\tor \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html\">ListResolverQueryLogConfigAssociations</a>.</p>\n         <note>\n            <p>In early versions of Resolver, values for <code>Name</code> were listed as uppercase, with underscore (_) delimiters. For example, \n\t\t\t\t<code>CreatorRequestId</code> was originally listed as <code>CREATOR_REQUEST_ID</code>. Uppercase values for <code>Name</code> are still supported.</p>\n         </note>\n         <p>\n            <b>ListResolverEndpoints</b>\n         </p>\n         <p>Valid values for <code>Name</code> include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CreatorRequestId</code>: The value that you specified when you created the Resolver endpoint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Direction</code>: Whether you want to return inbound or outbound Resolver endpoints. If you specify <code>DIRECTION</code> \n\t\t\t\tfor <code>Name</code>, specify <code>INBOUND</code> or <code>OUTBOUND</code> for <code>Values</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>HostVPCId</code>: The ID of the VPC that inbound DNS queries pass through on the way from your network to your VPCs in a region, or \n\t\t\t\tthe VPC that outbound queries pass through on the way from your VPCs to your network. In a \n\t\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a>\n\t\t\t\trequest, <code>SubnetId</code> indirectly identifies the VPC. In a \n\t\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>\n\t\t\t\trequest, the VPC ID for a Resolver endpoint \n\t\t\t\tis returned in the <code>HostVPCId</code> element. </p>\n            </li>\n            <li>\n               <p>\n                  <code>IpAddressCount</code>: The number of IP addresses that you have associated with the Resolver endpoint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Name</code>: The name of the Resolver endpoint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SecurityGroupIds</code>: The IDs of the VPC security groups that you specified when you created the \n\t\t\t\tResolver endpoint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>: The status of the Resolver endpoint. If you specify <code>Status</code> for <code>Name</code>, \n\t\t\t\tspecify one of the following status codes for <code>Values</code>: <code>CREATING</code>, <code>OPERATIONAL</code>, <code>UPDATING</code>,\n\t\t\t\t<code>AUTO_RECOVERING</code>, <code>ACTION_NEEDED</code>, or <code>DELETING</code>. For more information, see <code>Status</code> in\n\t\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverEndpoint.html\">ResolverEndpoint</a>.</p>\n            </li>\n         </ul>\n         <p>\n            <b>ListResolverRules</b>\n         </p>\n         <p>Valid values for <code>Name</code> include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CreatorRequestId</code>: The value that you specified when you created the Resolver rule.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DomainName</code>: The domain name for which Resolver is forwarding DNS queries to your network. In the value that \n\t\t\t\tyou specify for <code>Values</code>, include a trailing dot (.) after the domain name. For example, if the domain name is example.com, \n\t\t\t\tspecify the following value. Note the \".\" after <code>com</code>:</p>\n               <p>\n                  <code>example.com.</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Name</code>: The name of the Resolver rule.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ResolverEndpointId</code>: The ID of the Resolver endpoint that the Resolver rule is associated with.</p>\n               <note>\n                  <p>You can filter on the Resolver endpoint only for rules that have a value of <code>FORWARD</code> for \n\t\t\t\t\t<code>RuleType</code>.</p>\n               </note>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>: The status of the Resolver rule. If you specify <code>Status</code> for <code>Name</code>, \n\t\t\t\tspecify one of the following status codes for <code>Values</code>: <code>COMPLETE</code>, <code>DELETING</code>, <code>UPDATING</code>, \n\t\t\t\tor <code>FAILED</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Type</code>: The type of the Resolver rule. If you specify <code>TYPE</code> \n\t\t\t\tfor <code>Name</code>, specify <code>FORWARD</code> or <code>SYSTEM</code> for <code>Values</code>.</p>\n            </li>\n         </ul>\n         <p>\n            <b>ListResolverRuleAssociations</b>\n         </p>\n         <p>Valid values for <code>Name</code> include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Name</code>: The name of the Resolver rule association.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ResolverRuleId</code>: The ID of the Resolver rule that is associated with one or more VPCs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>: The status of the Resolver rule association. If you specify <code>Status</code> for <code>Name</code>, \n\t\t\t\tspecify one of the following status codes for <code>Values</code>: <code>CREATING</code>, <code>COMPLETE</code>, <code>DELETING</code>, or \n\t\t\t\t<code>FAILED</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VPCId</code>: The ID of the VPC that the Resolver rule is associated with.</p>\n            </li>\n         </ul>\n         <p>\n            <b>ListResolverQueryLogConfigs</b>\n         </p>\n         <p>Valid values for <code>Name</code> include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Arn</code>: The ARN for the query logging configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AssociationCount</code>: The number of VPCs that are associated with the query logging configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CreationTime</code>: The date and time that the query logging configuration was created, in Unix time format and \n\t\t\t\tCoordinated Universal Time (UTC). </p>\n            </li>\n            <li>\n               <p>\n                  <code>CreatorRequestId</code>: A unique string that identifies the request that created the query logging configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Destination</code>: The Amazon Web Services service that you want to forward query logs to. Valid values include the following:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>S3</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>CloudWatchLogs</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>KinesisFirehose</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>\n                  <code>DestinationArn</code>: The ARN of the location that Resolver is sending query logs to. This value can be the ARN for an \n\t\t\t\tS3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Id</code>: The ID of the query logging configuration</p>\n            </li>\n            <li>\n               <p>\n                  <code>Name</code>: The name of the query logging configuration</p>\n            </li>\n            <li>\n               <p>\n                  <code>OwnerId</code>: The Amazon Web Services account ID for the account that created the query logging configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ShareStatus</code>: An indication of whether the query logging configuration is shared with other Amazon Web Services accounts, \n\t\t\t\tor was shared with the current account by another Amazon Web Services account. Valid values include: <code>NOT_SHARED</code>, <code>SHARED_WITH_ME</code>, \n\t\t\t\tor <code>SHARED_BY_ME</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>: The status of the query logging configuration. If you specify <code>Status</code> for <code>Name</code>, \n\t\t\t\tspecify the applicable status code for <code>Values</code>: <code>CREATING</code>, <code>CREATED</code>, \n\t\t\t\t<code>DELETING</code>, or <code>FAILED</code>. For more information, see \n\t\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfig.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfig-Status\">Status</a>.\n\t\t\t\t</p>\n            </li>\n         </ul>\n         <p>\n            <b>ListResolverQueryLogConfigAssociations</b>\n         </p>\n         <p>Valid values for <code>Name</code> include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CreationTime</code>: The date and time that the VPC was associated with the query logging configuration, in Unix time format and \n\t\t\t\tCoordinated Universal Time (UTC).</p>\n            </li>\n            <li>\n               <p>\n                  <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, specify the cause: \n\t\t\t\t<code>DESTINATION_NOT_FOUND</code> or <code>ACCESS_DENIED</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Id</code>: The ID of the query logging association.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration that a VPC is associated with.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ResourceId</code>: The ID of the Amazon VPC that is associated with the query logging configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>: The status of the query logging association. If you specify <code>Status</code> for <code>Name</code>, \n\t\t\t\tspecify the applicable status code for <code>Values</code>: <code>CREATING</code>, <code>CREATED</code>, \n\t\t\t\t<code>DELETING</code>, or <code>FAILED</code>. For more information, see \n\t\t\t    <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfigAssociation.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status\">Status</a>.\n\t\t\t\t</p>\n            </li>\n         </ul>"}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>When you're using a <code>List</code> operation and you want the operation to return a subset of objects, such as Resolver endpoints or Resolver rules,\n\t\t\tthe value of the parameter that you want to use to filter objects. For example, to list only inbound Resolver endpoints, specify <code>Direction</code> for \n\t\t\t<code>Name</code> and specify <code>INBOUND</code> for <code>Values</code>.</p>"}))
    Filter.type = Types::Filter
    FilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    Filters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FirewallConfig.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the firewall configuration.</p>"}))
    FirewallConfig.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that this firewall configuration applies to.</p>"}))
    FirewallConfig.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the VPC that this firewall configuration applies to.</p>"}))
    FirewallConfig.add_member(:firewall_fail_open, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallFailOpenStatus, location_name: 'FirewallFailOpen', traits: {"smithy.api#documentation" => "<p>Determines how DNS Firewall operates during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. </p>\n         <ul>\n            <li>\n               <p>By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall returns\n           a failure error when it is unable to properly evaluate a query. </p>\n            </li>\n            <li>\n               <p>If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it \n       is unable to properly evaluate them. </p>\n            </li>\n         </ul>\n         <p>This behavior is only enforced for VPCs that have at least one DNS Firewall rule group association. </p>"}))
    FirewallConfig.type = Types::FirewallConfig
    FirewallConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallConfig)
    FirewallDomainImportOperation.add_member(:replace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    FirewallDomainList.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the domain list. </p>"}))
    FirewallDomainList.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the firewall domain list.</p>"}))
    FirewallDomainList.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the domain list. </p>"}))
    FirewallDomainList.add_member(:domain_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Unsigned, location_name: 'DomainCount', traits: {"smithy.api#documentation" => "<p>The number of domain names that are specified in the domain list.</p>"}))
    FirewallDomainList.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the domain list.  </p>"}))
    FirewallDomainList.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Additional information about the status of the list, if available.</p>"}))
    FirewallDomainList.add_member(:managed_owner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: 'ManagedOwnerName', traits: {"smithy.api#documentation" => "<p>The owner of the list, used only for lists that are not managed by you. For example, the managed domain list <code>AWSManagedDomainsMalwareDomainList</code> has the managed owner name <code>Route 53 Resolver DNS Firewall</code>.</p>"}))
    FirewallDomainList.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string defined by you to identify the request. This allows you to retry failed\n\t\t\trequests without the risk of running the operation twice. This can be any unique string,\n\t\t\tfor example, a timestamp. </p>"}))
    FirewallDomainList.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the domain list was created, in Unix time format and Coordinated Universal Time (UTC). </p>"}))
    FirewallDomainList.add_member(:modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'ModificationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the domain list was last modified, in Unix time format and Coordinated Universal Time (UTC). </p>"}))
    FirewallDomainList.type = Types::FirewallDomainList
    FirewallDomainListMetadata.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the domain list. </p>"}))
    FirewallDomainListMetadata.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the firewall domain list metadata.</p>"}))
    FirewallDomainListMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the domain list. </p>"}))
    FirewallDomainListMetadata.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string defined by you to identify the request. This allows you to retry failed\n\t\t\trequests without the risk of running the operation twice. This can be any unique string,\n\t\t\tfor example, a timestamp. </p>"}))
    FirewallDomainListMetadata.add_member(:managed_owner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: 'ManagedOwnerName', traits: {"smithy.api#documentation" => "<p>The owner of the list, used only for lists that are not managed by you. For example, the managed domain list <code>AWSManagedDomainsMalwareDomainList</code> has the managed owner name <code>Route 53 Resolver DNS Firewall</code>.</p>"}))
    FirewallDomainListMetadata.type = Types::FirewallDomainListMetadata
    FirewallDomainListMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListMetadata)
    FirewallDomainListStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallDomainListStatus.add_member(:complete_import_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE_IMPORT_FAILED', traits: {"smithy.api#enumValue" => "COMPLETE_IMPORT_FAILED"}))
    FirewallDomainListStatus.add_member(:importing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTING', traits: {"smithy.api#enumValue" => "IMPORTING"}))
    FirewallDomainListStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallDomainListStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallDomainRedirectionAction.add_member(:inspect_redirection_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSPECT_REDIRECTION_DOMAIN', traits: {"smithy.api#enumValue" => "INSPECT_REDIRECTION_DOMAIN"}))
    FirewallDomainRedirectionAction.add_member(:trust_redirection_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUST_REDIRECTION_DOMAIN', traits: {"smithy.api#enumValue" => "TRUST_REDIRECTION_DOMAIN"}))
    FirewallDomainUpdateOperation.add_member(:add, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    FirewallDomainUpdateOperation.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    FirewallDomainUpdateOperation.add_member(:replace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    FirewallDomains.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainName)
    FirewallFailOpenStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    FirewallFailOpenStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    FirewallFailOpenStatus.add_member(:use_local_resource_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_LOCAL_RESOURCE_SETTING', traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    FirewallRule.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Firewall rule group of the rule. </p>"}))
    FirewallRule.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list that's used in the rule. </p>"}))
    FirewallRule.add_member(:firewall_threat_protection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallThreatProtectionId', traits: {"smithy.api#documentation" => "<p>\n\t\t\tID of the DNS Firewall Advanced rule.\n\t\t</p>"}))
    FirewallRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule. </p>"}))
    FirewallRule.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The priority of the rule in the rule group. This value must be unique within the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.</p>"}))
    FirewallRule.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALLOW</code> - Permit the request to go through. Not available for DNS Firewall Advanced rules.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BLOCK</code> - Disallow the request. If this is specified, additional handling details are provided in the rule's <code>BlockResponse</code> setting. </p>\n            </li>\n         </ul>"}))
    FirewallRule.add_member(:block_response, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockResponse, location_name: 'BlockResponse', traits: {"smithy.api#documentation" => "<p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p>\n            </li>\n         </ul>"}))
    FirewallRule.add_member(:block_override_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: 'BlockOverrideDomain', traits: {"smithy.api#documentation" => "<p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"}))
    FirewallRule.add_member(:block_override_dns_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: 'BlockOverrideDnsType', traits: {"smithy.api#documentation" => "<p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"}))
    FirewallRule.add_member(:block_override_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Unsigned, location_name: 'BlockOverrideTtl', traits: {"smithy.api#documentation" => "<p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"}))
    FirewallRule.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string defined by you to identify the request. This allows you to retry failed requests \n           without the risk of executing the operation twice. This can be any unique string, for example, a timestamp. </p>"}))
    FirewallRule.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the rule was created, in Unix time format and Coordinated Universal Time (UTC). </p>"}))
    FirewallRule.add_member(:modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'ModificationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the rule was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    FirewallRule.add_member(:firewall_domain_redirection_action, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainRedirectionAction, location_name: 'FirewallDomainRedirectionAction', traits: {"smithy.api#documentation" => "<p>\n\t\t\tHow you want the the rule to evaluate DNS redirection in the DNS redirection chain, such as CNAME or DNAME. \n\t\t</p>\n         <p>\n            <code>INSPECT_REDIRECTION_DOMAIN</code>: (Default) inspects all domains in the redirection chain. The individual domains in the redirection chain must be \n\t\t\tadded to the domain list.</p>\n         <p>\n            <code>TRUST_REDIRECTION_DOMAIN</code>: Inspects only the first domain in the redirection chain. You don't need to add the subsequent domains in the domain in the redirection list to \n\t\t\tthe domain list.</p>"}))
    FirewallRule.add_member(:qtype, Smithy::Schema::Shapes::ShapeRef.new(shape: Qtype, location_name: 'Qtype', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe DNS query type you want the rule to evaluate. Allowed values are;\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n\t\t\t\tA: Returns an IPv4 address.</p>\n            </li>\n            <li>\n               <p>AAAA: Returns an Ipv6 address.</p>\n            </li>\n            <li>\n               <p>CAA: Restricts CAs that can create SSL/TLS certifications for the domain.</p>\n            </li>\n            <li>\n               <p>CNAME: Returns another domain name.</p>\n            </li>\n            <li>\n               <p>DS: Record that identifies the DNSSEC signing key of a delegated zone.</p>\n            </li>\n            <li>\n               <p>MX: Specifies mail servers.</p>\n            </li>\n            <li>\n               <p>NAPTR: Regular-expression-based rewriting of domain names.</p>\n            </li>\n            <li>\n               <p>NS: Authoritative name servers.</p>\n            </li>\n            <li>\n               <p>PTR: Maps an IP address to a domain name.</p>\n            </li>\n            <li>\n               <p>SOA: Start of authority record for the zone.</p>\n            </li>\n            <li>\n               <p>SPF: Lists the servers authorized to send emails from a domain.</p>\n            </li>\n            <li>\n               <p>SRV: Application specific values that identify servers.</p>\n            </li>\n            <li>\n               <p>TXT: Verifies email senders and application-specific values.</p>\n            </li>\n            <li>\n               <p>A query type you define by using the DNS type ID, for example 28 for AAAA. The values must be\n\t\t\t\tdefined as TYPENUMBER, where the\n\t\t\t\tNUMBER can be 1-65334, for\n\t\t\t\texample, TYPE28. For more information, see \n\t\t\t\t<a href=\"https://en.wikipedia.org/wiki/List_of_DNS_record_types\">List of DNS record types</a>.</p>\n            </li>\n         </ul>"}))
    FirewallRule.add_member(:dns_threat_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsThreatProtection, location_name: 'DnsThreatProtection', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe type of the DNS Firewall Advanced rule. Valid values are:\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DGA</code>: Domain generation algorithms detection. DGAs are used by attackers to generate a large number of domains \n\t\t\t\tto to launch malware attacks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DNS_TUNNELING</code>: DNS tunneling detection. DNS tunneling is used by attackers to exfiltrate data from the client by using the DNS tunnel without \n\t\t\t\tmaking a network connection to the client.</p>\n            </li>\n         </ul>"}))
    FirewallRule.add_member(:confidence_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: 'ConfidenceThreshold', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule. The confidence\n\t\t\tlevel values mean:\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LOW</code>: Provides the highest detection rate for threats, but also increases false positives.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MEDIUM</code>: Provides a balance between detecting threats and false positives.</p>\n            </li>\n            <li>\n               <p>\n                  <code>HIGH</code>: Detects only the most well corroborated threats with a low rate of false positives. </p>\n            </li>\n         </ul>"}))
    FirewallRule.type = Types::FirewallRule
    FirewallRuleGroup.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the rule group. </p>"}))
    FirewallRuleGroup.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the rule group.</p>"}))
    FirewallRuleGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule group.</p>"}))
    FirewallRuleGroup.add_member(:rule_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Unsigned, location_name: 'RuleCount', traits: {"smithy.api#documentation" => "<p>The number of rules in the rule group.</p>"}))
    FirewallRuleGroup.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the domain list.  </p>"}))
    FirewallRuleGroup.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Additional information about the status of the rule group, if available.</p>"}))
    FirewallRuleGroup.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account,\n       this is the account that has shared the rule group with you.  </p>"}))
    FirewallRuleGroup.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string defined by you to identify the request. This allows you to retry failed\n\t\t\trequests without the risk of running the operation twice. This can be any unique string,\n\t\t\tfor example, a timestamp. </p>"}))
    FirewallRuleGroup.add_member(:share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'ShareStatus', traits: {"smithy.api#documentation" => "<p>Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another \n              Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>"}))
    FirewallRuleGroup.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the rule group was created, in Unix time format and Coordinated Universal Time (UTC). </p>"}))
    FirewallRuleGroup.add_member(:modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'ModificationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the rule group was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    FirewallRuleGroup.type = Types::FirewallRuleGroup
    FirewallRuleGroupAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the association.</p>"}))
    FirewallRuleGroupAssociation.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the firewall rule group association.</p>"}))
    FirewallRuleGroupAssociation.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group. </p>"}))
    FirewallRuleGroupAssociation.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the VPC that is associated with the rule group. </p>"}))
    FirewallRuleGroupAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the association.</p>"}))
    FirewallRuleGroupAssociation.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The setting that determines the processing order of the rule group among the rule groups that are associated with a single VPC. DNS Firewall \n           filters VPC traffic starting from rule group with the lowest numeric priority setting. </p>"}))
    FirewallRuleGroupAssociation.add_member(:mutation_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: 'MutationProtection', traits: {"smithy.api#documentation" => "<p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>"}))
    FirewallRuleGroupAssociation.add_member(:managed_owner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: 'ManagedOwnerName', traits: {"smithy.api#documentation" => "<p>The owner of the association, used only for associations that are not managed by you. If you use Firewall Manager to \n   manage your DNS Firewalls, then this reports Firewall Manager as the managed owner.</p>"}))
    FirewallRuleGroupAssociation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the association.</p>"}))
    FirewallRuleGroupAssociation.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Additional information about the status of the response, if available.</p>"}))
    FirewallRuleGroupAssociation.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string defined by you to identify the request. This allows you to retry failed\n\t\t\trequests without the risk of running the operation twice. This can be any unique string,\n\t\t\tfor example, a timestamp. </p>"}))
    FirewallRuleGroupAssociation.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the association was created, in Unix time format and Coordinated Universal Time (UTC). </p>"}))
    FirewallRuleGroupAssociation.add_member(:modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'ModificationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the association was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    FirewallRuleGroupAssociation.type = Types::FirewallRuleGroupAssociation
    FirewallRuleGroupAssociationStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallRuleGroupAssociationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallRuleGroupAssociationStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallRuleGroupAssociations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation)
    FirewallRuleGroupMetadata.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the rule group. </p>"}))
    FirewallRuleGroupMetadata.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the rule group.</p>"}))
    FirewallRuleGroupMetadata.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule group.</p>"}))
    FirewallRuleGroupMetadata.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account,\n       this is the account that has shared the rule group with you.  </p>"}))
    FirewallRuleGroupMetadata.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string defined by you to identify the request. This allows you to retry failed\n\t\t\trequests without the risk of running the operation twice. This can be any unique string,\n\t\t\tfor example, a timestamp. </p>"}))
    FirewallRuleGroupMetadata.add_member(:share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'ShareStatus', traits: {"smithy.api#documentation" => "<p>Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another \n              Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>"}))
    FirewallRuleGroupMetadata.type = Types::FirewallRuleGroupMetadata
    FirewallRuleGroupMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupMetadata)
    FirewallRuleGroupStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    FirewallRuleGroupStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    FirewallRuleGroupStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    FirewallRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRule)
    GetFirewallConfigRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC from Amazon VPC that the configuration is for.</p>", "smithy.api#required" => {}}))
    GetFirewallConfigRequest.type = Types::GetFirewallConfigRequest
    GetFirewallConfigResponse.add_member(:firewall_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallConfig, location_name: 'FirewallConfig', traits: {"smithy.api#documentation" => "<p>Configuration of the firewall behavior provided by DNS Firewall for a single VPC from\n\t\t\tAmazonVPC. </p>"}))
    GetFirewallConfigResponse.type = Types::GetFirewallConfigResponse
    GetFirewallDomainListRequest.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list.  </p>", "smithy.api#required" => {}}))
    GetFirewallDomainListRequest.type = Types::GetFirewallDomainListRequest
    GetFirewallDomainListResponse.add_member(:firewall_domain_list, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: 'FirewallDomainList', traits: {"smithy.api#documentation" => "<p>The domain list that you requested.  </p>"}))
    GetFirewallDomainListResponse.type = Types::GetFirewallDomainListResponse
    GetFirewallRuleGroupAssociationRequest.add_member(:firewall_rule_group_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>", "smithy.api#required" => {}}))
    GetFirewallRuleGroupAssociationRequest.type = Types::GetFirewallRuleGroupAssociationRequest
    GetFirewallRuleGroupAssociationResponse.add_member(:firewall_rule_group_association, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: 'FirewallRuleGroupAssociation', traits: {"smithy.api#documentation" => "<p>The association that you requested. </p>"}))
    GetFirewallRuleGroupAssociationResponse.type = Types::GetFirewallRuleGroupAssociationResponse
    GetFirewallRuleGroupPolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the rule group.</p>", "smithy.api#required" => {}}))
    GetFirewallRuleGroupPolicyRequest.type = Types::GetFirewallRuleGroupPolicyRequest
    GetFirewallRuleGroupPolicyResponse.add_member(:firewall_rule_group_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupPolicy, location_name: 'FirewallRuleGroupPolicy', traits: {"smithy.api#documentation" => "<p>The Identity and Access Management (Amazon Web Services IAM) policy for sharing the specified rule\n\t\t\tgroup. You can use the policy to share the rule group using Resource Access Manager\n\t\t\t(RAM). </p>"}))
    GetFirewallRuleGroupPolicyResponse.type = Types::GetFirewallRuleGroupPolicyResponse
    GetFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group. </p>", "smithy.api#required" => {}}))
    GetFirewallRuleGroupRequest.type = Types::GetFirewallRuleGroupRequest
    GetFirewallRuleGroupResponse.add_member(:firewall_rule_group, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: 'FirewallRuleGroup', traits: {"smithy.api#documentation" => "<p>A collection of rules used to filter DNS network traffic. </p>"}))
    GetFirewallRuleGroupResponse.type = Types::GetFirewallRuleGroupResponse
    GetOutpostResolverRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver on the Outpost.</p>", "smithy.api#required" => {}}))
    GetOutpostResolverRequest.type = Types::GetOutpostResolverRequest
    GetOutpostResolverResponse.add_member(:outpost_resolver, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver, location_name: 'OutpostResolver', traits: {"smithy.api#documentation" => "<p>Information about the <code>GetOutpostResolver</code>\n\t\trequest, including the status of the request.</p>"}))
    GetOutpostResolverResponse.type = Types::GetOutpostResolverResponse
    GetResolverConfigRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Resource ID of the Amazon VPC that you want to get information about.</p>", "smithy.api#required" => {}}))
    GetResolverConfigRequest.type = Types::GetResolverConfigRequest
    GetResolverConfigResponse.add_member(:resolver_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverConfig, location_name: 'ResolverConfig', traits: {"smithy.api#documentation" => "<p>Information about the behavior configuration of Route 53 Resolver behavior for the VPC you\n\t\t\tspecified in the <code>GetResolverConfig</code> request.</p>"}))
    GetResolverConfigResponse.type = Types::GetResolverConfigResponse
    GetResolverDnssecConfigRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual private cloud (VPC) for the DNSSEC validation status.</p>", "smithy.api#required" => {}}))
    GetResolverDnssecConfigRequest.type = Types::GetResolverDnssecConfigRequest
    GetResolverDnssecConfigResponse.add_member(:resolver_dnssec_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDnssecConfig, location_name: 'ResolverDNSSECConfig', traits: {"smithy.api#documentation" => "<p>The information about a configuration for DNSSEC validation.</p>"}))
    GetResolverDnssecConfigResponse.type = Types::GetResolverDnssecConfigResponse
    GetResolverEndpointRequest.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver endpoint that you want to get information about.</p>", "smithy.api#required" => {}}))
    GetResolverEndpointRequest.type = Types::GetResolverEndpointRequest
    GetResolverEndpointResponse.add_member(:resolver_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: 'ResolverEndpoint', traits: {"smithy.api#documentation" => "<p>Information about the Resolver endpoint that you specified in a <code>GetResolverEndpoint</code> request.</p>"}))
    GetResolverEndpointResponse.type = Types::GetResolverEndpointResponse
    GetResolverQueryLogConfigAssociationRequest.add_member(:resolver_query_log_config_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverQueryLogConfigAssociationId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver query logging configuration association that you want to get information about.</p>", "smithy.api#required" => {}}))
    GetResolverQueryLogConfigAssociationRequest.type = Types::GetResolverQueryLogConfigAssociationRequest
    GetResolverQueryLogConfigAssociationResponse.add_member(:resolver_query_log_config_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: 'ResolverQueryLogConfigAssociation', traits: {"smithy.api#documentation" => "<p>Information about the Resolver query logging configuration association that you specified in a <code>GetQueryLogConfigAssociation</code> request.</p>"}))
    GetResolverQueryLogConfigAssociationResponse.type = Types::GetResolverQueryLogConfigAssociationResponse
    GetResolverQueryLogConfigPolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the query logging configuration that you want to get the query logging policy for.</p>", "smithy.api#required" => {}}))
    GetResolverQueryLogConfigPolicyRequest.type = Types::GetResolverQueryLogConfigPolicyRequest
    GetResolverQueryLogConfigPolicyResponse.add_member(:resolver_query_log_config_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigPolicy, location_name: 'ResolverQueryLogConfigPolicy', traits: {"smithy.api#documentation" => "<p>Information about the query logging policy for the query logging configuration that you specified in a \n\t\t\t<code>GetResolverQueryLogConfigPolicy</code> request.</p>"}))
    GetResolverQueryLogConfigPolicyResponse.type = Types::GetResolverQueryLogConfigPolicyResponse
    GetResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverQueryLogConfigId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver query logging configuration that you want to get information about.</p>", "smithy.api#required" => {}}))
    GetResolverQueryLogConfigRequest.type = Types::GetResolverQueryLogConfigRequest
    GetResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: 'ResolverQueryLogConfig', traits: {"smithy.api#documentation" => "<p>Information about the Resolver query logging configuration that you specified in a <code>GetQueryLogConfig</code> request.</p>"}))
    GetResolverQueryLogConfigResponse.type = Types::GetResolverQueryLogConfigResponse
    GetResolverRuleAssociationRequest.add_member(:resolver_rule_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverRuleAssociationId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver rule association that you want to get information about.</p>", "smithy.api#required" => {}}))
    GetResolverRuleAssociationRequest.type = Types::GetResolverRuleAssociationRequest
    GetResolverRuleAssociationResponse.add_member(:resolver_rule_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: 'ResolverRuleAssociation', traits: {"smithy.api#documentation" => "<p>Information about the Resolver rule association that you specified in a <code>GetResolverRuleAssociation</code> request.</p>"}))
    GetResolverRuleAssociationResponse.type = Types::GetResolverRuleAssociationResponse
    GetResolverRulePolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver rule that you want to get the Resolver rule policy for.</p>", "smithy.api#required" => {}}))
    GetResolverRulePolicyRequest.type = Types::GetResolverRulePolicyRequest
    GetResolverRulePolicyResponse.add_member(:resolver_rule_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRulePolicy, location_name: 'ResolverRulePolicy', traits: {"smithy.api#documentation" => "<p>The Resolver rule policy for the rule that you specified in a <code>GetResolverRulePolicy</code> request.</p>"}))
    GetResolverRulePolicyResponse.type = Types::GetResolverRulePolicyResponse
    GetResolverRuleRequest.add_member(:resolver_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverRuleId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver rule that you want to get information about.</p>", "smithy.api#required" => {}}))
    GetResolverRuleRequest.type = Types::GetResolverRuleRequest
    GetResolverRuleResponse.add_member(:resolver_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule, location_name: 'ResolverRule', traits: {"smithy.api#documentation" => "<p>Information about the Resolver rule that you specified in a <code>GetResolverRule</code> request.</p>"}))
    GetResolverRuleResponse.type = Types::GetResolverRuleResponse
    ImportFirewallDomainsRequest.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list that you want to modify with the import operation.</p>", "smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainImportOperation, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>What you want DNS Firewall to do with the domains that are listed in the file. This must be set to <code>REPLACE</code>, which updates the domain list to exactly match the list in the file. </p>", "smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.add_member(:domain_file_url, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainListFileUrl, location_name: 'DomainFileUrl', traits: {"smithy.api#documentation" => "<p>The fully qualified URL or URI of the file stored in Amazon Simple Storage Service\n\t\t\t(Amazon S3) that contains the list of domains to import.</p>\n         <p>The file must be in an S3 bucket that's in the same Region\n       as your DNS Firewall. The file must be a text file and must contain a single domain per line.</p>", "smithy.api#required" => {}}))
    ImportFirewallDomainsRequest.type = Types::ImportFirewallDomainsRequest
    ImportFirewallDomainsResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The Id of the firewall domain list that DNS Firewall just updated.</p>"}))
    ImportFirewallDomainsResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the domain list. </p>"}))
    ImportFirewallDomainsResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the import request.</p>"}))
    ImportFirewallDomainsResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Additional information about the status of the list, if available.</p>"}))
    ImportFirewallDomainsResponse.type = Types::ImportFirewallDomainsResponse
    InternalServiceErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InvalidParameterException.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FieldName', traits: {"smithy.api#documentation" => "<p>For an <code>InvalidParameterException</code> error, the name of the parameter that's invalid.</p>"}))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPolicyDocument.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidPolicyDocument.type = Types::InvalidPolicyDocument
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidTagException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidTagException.type = Types::InvalidTagException
    IpAddressRequest.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the subnet that contains the IP address. </p>", "smithy.api#required" => {}}))
    IpAddressRequest.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The IPv4 address that you want to use for DNS queries.</p>"}))
    IpAddressRequest.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: 'Ipv6', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe IPv6 address that you want to use for DNS queries.\n\t\t</p>"}))
    IpAddressRequest.type = Types::IpAddressRequest
    IpAddressResponse.add_member(:ip_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'IpId', traits: {"smithy.api#documentation" => "<p>The ID of one IP address.</p>"}))
    IpAddressResponse.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of one subnet.</p>"}))
    IpAddressResponse.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>One IPv4 address that the Resolver endpoint uses for DNS queries.</p>"}))
    IpAddressResponse.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: 'Ipv6', traits: {"smithy.api#documentation" => "<p>\n\t\t\tOne IPv6 address that the Resolver endpoint uses for DNS queries.\n\t\t</p>"}))
    IpAddressResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A status code that gives the current status of the request.</p>"}))
    IpAddressResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A message that provides additional information about the status of the request.</p>"}))
    IpAddressResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the IP address was created, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    IpAddressResponse.add_member(:modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'ModificationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the IP address was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    IpAddressResponse.type = Types::IpAddressResponse
    IpAddressStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "CREATING"}))
    IpAddressStatus.add_member(:failed_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FailedCreation', traits: {"smithy.api#enumValue" => "FAILED_CREATION"}))
    IpAddressStatus.add_member(:attaching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Attaching', traits: {"smithy.api#enumValue" => "ATTACHING"}))
    IpAddressStatus.add_member(:attached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Attached', traits: {"smithy.api#enumValue" => "ATTACHED"}))
    IpAddressStatus.add_member(:remap_detaching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RemapDetaching', traits: {"smithy.api#enumValue" => "REMAP_DETACHING"}))
    IpAddressStatus.add_member(:remap_attaching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RemapAttaching', traits: {"smithy.api#enumValue" => "REMAP_ATTACHING"}))
    IpAddressStatus.add_member(:detaching, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Detaching', traits: {"smithy.api#enumValue" => "DETACHING"}))
    IpAddressStatus.add_member(:failed_resource_gone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FailedResourceGone', traits: {"smithy.api#enumValue" => "FAILED_RESOURCE_GONE"}))
    IpAddressStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    IpAddressStatus.add_member(:delete_failed_fas_expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeleteFailedFasExpired', traits: {"smithy.api#enumValue" => "DELETE_FAILED_FAS_EXPIRED"}))
    IpAddressStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    IpAddressStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateFailed', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    IpAddressStatus.add_member(:isolated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Isolated', traits: {"smithy.api#enumValue" => "ISOLATED"}))
    IpAddressUpdate.add_member(:ip_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'IpId', traits: {"smithy.api#documentation" => "<p>\n            <i>Only when removing an IP address from a Resolver endpoint</i>: The ID of the IP address that you want to remove. \n\t\t\tTo get this ID, use \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>.</p>"}))
    IpAddressUpdate.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the subnet that includes the IP address that you want to update. To get this ID, use \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>.</p>"}))
    IpAddressUpdate.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The new IPv4 address.</p>"}))
    IpAddressUpdate.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: 'Ipv6', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe new IPv6 address.\n\t\t</p>"}))
    IpAddressUpdate.type = Types::IpAddressUpdate
    IpAddressesRequest.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressRequest)
    IpAddressesResponse.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressResponse)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>For a <code>LimitExceededException</code> error, the type of resource that exceeded the current limit.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListFirewallConfigsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallConfigsMaxResult, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects that you want Resolver to return for this request. If more\n            objects are available, in the response, Resolver provides a\n           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>\n         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>"}))
    ListFirewallConfigsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first call to this list request, omit this value.</p>\n         <p>When you request a list of objects, Resolver returns at most the number of objects \n       specified in <code>MaxResults</code>. If more objects are available for retrieval,\n           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next \n               batch of objects, use the token that was returned for the prior request in your next request.</p>"}))
    ListFirewallConfigsRequest.type = Types::ListFirewallConfigsRequest
    ListFirewallConfigsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If objects are still available for retrieval, Resolver returns this token in the response. \n           To retrieve the next batch of objects, provide this token in your next request.</p>"}))
    ListFirewallConfigsResponse.add_member(:firewall_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallConfigList, location_name: 'FirewallConfigs', traits: {"smithy.api#documentation" => "<p>The configurations for the firewall behavior provided by DNS Firewall for VPCs from\n\t\t\tAmazon Virtual Private Cloud (Amazon VPC). </p>"}))
    ListFirewallConfigsResponse.type = Types::ListFirewallConfigsResponse
    ListFirewallDomainListsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects that you want Resolver to return for this request. If more\n            objects are available, in the response, Resolver provides a\n           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>\n         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>"}))
    ListFirewallDomainListsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first call to this list request, omit this value.</p>\n         <p>When you request a list of objects, Resolver returns at most the number of objects \n       specified in <code>MaxResults</code>. If more objects are available for retrieval,\n           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next \n               batch of objects, use the token that was returned for the prior request in your next request.</p>"}))
    ListFirewallDomainListsRequest.type = Types::ListFirewallDomainListsRequest
    ListFirewallDomainListsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If objects are still available for retrieval, Resolver returns this token in the response. \n           To retrieve the next batch of objects, provide this token in your next request.</p>"}))
    ListFirewallDomainListsResponse.add_member(:firewall_domain_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListMetadataList, location_name: 'FirewallDomainLists', traits: {"smithy.api#documentation" => "<p>A list of the domain lists that you have defined.   </p>\n         <p>This might be a partial list of the domain lists that you've defined. For information,\n\t\t\tsee <code>MaxResults</code>. </p>"}))
    ListFirewallDomainListsResponse.type = Types::ListFirewallDomainListsResponse
    ListFirewallDomainsRequest.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list whose domains you want to retrieve. </p>", "smithy.api#required" => {}}))
    ListFirewallDomainsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects that you want Resolver to return for this request. If more\n            objects are available, in the response, Resolver provides a\n           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>\n         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>"}))
    ListFirewallDomainsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first call to this list request, omit this value.</p>\n         <p>When you request a list of objects, Resolver returns at most the number of objects \n       specified in <code>MaxResults</code>. If more objects are available for retrieval,\n           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next \n               batch of objects, use the token that was returned for the prior request in your next request.</p>"}))
    ListFirewallDomainsRequest.type = Types::ListFirewallDomainsRequest
    ListFirewallDomainsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If objects are still available for retrieval, Resolver returns this token in the response. \n           To retrieve the next batch of objects, provide this token in your next request.</p>"}))
    ListFirewallDomainsResponse.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomains, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>A list of the domains in the firewall domain list.  </p>\n         <p>This might be a partial list of the domains that you've defined in the domain list. For\n\t\t\tinformation, see <code>MaxResults</code>. </p>"}))
    ListFirewallDomainsResponse.type = Types::ListFirewallDomainsResponse
    ListFirewallRuleGroupAssociationsRequest.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group that you want to retrieve the associations\n           for. Leave this blank to retrieve associations for any rule group. </p>"}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the VPC that you want to retrieve the associations\n           for. Leave this blank to retrieve associations for any VPC. </p>"}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The setting that determines the processing order of the rule group among the rule\n\t\t\tgroups that are associated with a single VPC. DNS Firewall filters VPC traffic starting\n\t\t\tfrom the rule group with the lowest numeric priority setting. </p>"}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The association <code>Status</code> setting that you want DNS Firewall to filter on for the list. If you don't specify this, then DNS Firewall returns all associations, regardless of status.</p>"}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects that you want Resolver to return for this request. If more\n            objects are available, in the response, Resolver provides a\n           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>\n         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>"}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first call to this list request, omit this value.</p>\n         <p>When you request a list of objects, Resolver returns at most the number of objects \n       specified in <code>MaxResults</code>. If more objects are available for retrieval,\n           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next \n               batch of objects, use the token that was returned for the prior request in your next request.</p>"}))
    ListFirewallRuleGroupAssociationsRequest.type = Types::ListFirewallRuleGroupAssociationsRequest
    ListFirewallRuleGroupAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If objects are still available for retrieval, Resolver returns this token in the response. \n           To retrieve the next batch of objects, provide this token in your next request.</p>"}))
    ListFirewallRuleGroupAssociationsResponse.add_member(:firewall_rule_group_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociations, location_name: 'FirewallRuleGroupAssociations', traits: {"smithy.api#documentation" => "<p>A list of your firewall rule group associations.</p>\n         <p>This might be a partial list of the associations that you have defined. For information, see <code>MaxResults</code>. </p>"}))
    ListFirewallRuleGroupAssociationsResponse.type = Types::ListFirewallRuleGroupAssociationsResponse
    ListFirewallRuleGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects that you want Resolver to return for this request. If more\n            objects are available, in the response, Resolver provides a\n           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>\n         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>"}))
    ListFirewallRuleGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first call to this list request, omit this value.</p>\n         <p>When you request a list of objects, Resolver returns at most the number of objects \n       specified in <code>MaxResults</code>. If more objects are available for retrieval,\n           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next \n               batch of objects, use the token that was returned for the prior request in your next request.</p>"}))
    ListFirewallRuleGroupsRequest.type = Types::ListFirewallRuleGroupsRequest
    ListFirewallRuleGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If objects are still available for retrieval, Resolver returns this token in the response. \n           To retrieve the next batch of objects, provide this token in your next request.</p>"}))
    ListFirewallRuleGroupsResponse.add_member(:firewall_rule_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupMetadataList, location_name: 'FirewallRuleGroups', traits: {"smithy.api#documentation" => "<p>A list of your firewall rule groups.</p>\n         <p>This might be a partial list of the rule groups that you have defined. For information, see <code>MaxResults</code>. </p>"}))
    ListFirewallRuleGroupsResponse.type = Types::ListFirewallRuleGroupsResponse
    ListFirewallRulesRequest.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group that you want to retrieve the rules for. </p>", "smithy.api#required" => {}}))
    ListFirewallRulesRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>Optional additional filter for the rules to retrieve.</p>\n         <p>The setting that determines the processing order of the rules in a rule group. DNS Firewall \n           processes the rules in a rule group by order of priority, starting from the lowest setting.</p>"}))
    ListFirewallRulesRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Optional additional filter for the rules to retrieve.</p>\n         <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALLOW</code> - Permit the request to go through. Not availabe for DNS Firewall Advanced rules.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BLOCK</code> - Disallow the request. If this is specified, additional handling details are provided in the rule's <code>BlockResponse</code> setting. </p>\n            </li>\n         </ul>"}))
    ListFirewallRulesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects that you want Resolver to return for this request. If more\n            objects are available, in the response, Resolver provides a\n           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>\n         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>"}))
    ListFirewallRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first call to this list request, omit this value.</p>\n         <p>When you request a list of objects, Resolver returns at most the number of objects \n       specified in <code>MaxResults</code>. If more objects are available for retrieval,\n           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next \n               batch of objects, use the token that was returned for the prior request in your next request.</p>"}))
    ListFirewallRulesRequest.type = Types::ListFirewallRulesRequest
    ListFirewallRulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If objects are still available for retrieval, Resolver returns this token in the response. \n           To retrieve the next batch of objects, provide this token in your next request.</p>"}))
    ListFirewallRulesResponse.add_member(:firewall_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRules, location_name: 'FirewallRules', traits: {"smithy.api#documentation" => "<p>A list of the rules that you have defined.  </p>\n         <p>This might be a partial list of the firewall rules that you've defined. For information,\n\t\t\tsee <code>MaxResults</code>. </p>"}))
    ListFirewallRulesResponse.type = Types::ListFirewallRulesResponse
    ListOutpostResolversRequest.add_member(:outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: 'OutpostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Outpost.</p>"}))
    ListOutpostResolversRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of Resolvers on the Outpost that you want to return in the response to a\n\t\t\t\t<code>ListOutpostResolver</code> request. If you don't specify a value for\n\t\t\t\t<code>MaxResults</code>, the request returns up to 100 Resolvers.</p>"}))
    ListOutpostResolversRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first <code>ListOutpostResolver</code> request, omit this value.</p>\n         <p></p>"}))
    ListOutpostResolversRequest.type = Types::ListOutpostResolversRequest
    ListOutpostResolversResponse.add_member(:outpost_resolvers, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverList, location_name: 'OutpostResolvers', traits: {"smithy.api#documentation" => "<p>The Resolvers on Outposts that were created by using the current Amazon Web Services account, \n\t\tand that match the specified filters, if any.</p>"}))
    ListOutpostResolversResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If more than <code>MaxResults</code> Resolvers match the specified criteria, you can submit another \n\t\t<code>ListOutpostResolver</code> request to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response.</p>"}))
    ListOutpostResolversResponse.type = Types::ListOutpostResolversResponse
    ListResolverConfigsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverConfigsMaxResult, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of Resolver configurations that you want to return in the response to \n\t\t\ta <code>ListResolverConfigs</code> request. If you don't specify a value for <code>MaxResults</code>, \n\t\t\tup to 100 Resolver configurations are returned.</p>"}))
    ListResolverConfigsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> Resolver configurations, use \n\t\t\t<code>NextToken</code> to get the second and subsequent pages of results.</p>\n         <p>For the first <code>ListResolverConfigs</code> request, omit this value.</p>\n         <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and \n\t\t\tspecify that value for <code>NextToken</code> in the request.</p>"}))
    ListResolverConfigsRequest.type = Types::ListResolverConfigsRequest
    ListResolverConfigsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a response includes the last of the Resolver configurations that are associated with the current Amazon Web Services account, \n\t\t\t<code>NextToken</code> doesn't appear in the response.</p>\n         <p>If a response doesn't include the last of the configurations, you can get more configurations by submitting another \n\t\t\t<code>ListResolverConfigs</code> request. \n\t\t\tGet the value of <code>NextToken</code> that Amazon Route 53 returned in the previous response and include it in \n\t\t\t<code>NextToken</code> in the next request.</p>"}))
    ListResolverConfigsResponse.add_member(:resolver_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverConfigList, location_name: 'ResolverConfigs', traits: {"smithy.api#documentation" => "<p>An array that contains one <code>ResolverConfigs</code> element for each Resolver configuration that is associated \n\t\t\twith the current Amazon Web Services account.</p>"}))
    ListResolverConfigsResponse.type = Types::ListResolverConfigsResponse
    ListResolverDnssecConfigsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n            <i>Optional</i>: An integer that specifies the maximum number of DNSSEC configuration results that you want Amazon Route 53 to return. \n\t\t\tIf you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 configuration per page.</p>"}))
    ListResolverDnssecConfigsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> DNSSEC configurations, use <code>NextToken</code> \n\t\t\tto get the second and subsequent pages of results.</p>\n         <p>For the first <code>ListResolverDnssecConfigs</code> request, omit this value.</p>\n         <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value \n\t\t\tfor <code>NextToken</code> in the request.</p>"}))
    ListResolverDnssecConfigsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An optional specification to return a subset of objects.</p>"}))
    ListResolverDnssecConfigsRequest.type = Types::ListResolverDnssecConfigsRequest
    ListResolverDnssecConfigsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a response includes the last of the DNSSEC configurations that are associated with the current Amazon Web Services account, \n\t\t\t<code>NextToken</code> doesn't appear in the response.</p>\n         <p>If a response doesn't include the last of the configurations, you can get more configurations by submitting another \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListResolverDnssecConfigs.html\">ListResolverDnssecConfigs</a> \n\t\t\trequest. Get the value of <code>NextToken</code> that Amazon Route 53 returned in the previous response and include it in \n\t\t\t<code>NextToken</code> in the next request.</p>"}))
    ListResolverDnssecConfigsResponse.add_member(:resolver_dnssec_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDnssecConfigList, location_name: 'ResolverDnssecConfigs', traits: {"smithy.api#documentation" => "<p>An array that contains one \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResolverDnssecConfig.html\">ResolverDnssecConfig</a> element \n\t\t\tfor each configuration for DNSSEC validation that is associated with the current Amazon Web Services account. \n\t\t\t It doesn't contain disabled DNSSEC configurations for the resource.</p>"}))
    ListResolverDnssecConfigsResponse.type = Types::ListResolverDnssecConfigsResponse
    ListResolverEndpointIpAddressesRequest.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver endpoint that you want to get IP addresses for.</p>", "smithy.api#required" => {}}))
    ListResolverEndpointIpAddressesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of IP addresses that you want to return in the response to a <code>ListResolverEndpointIpAddresses</code> request. \n\t\t\tIf you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 IP addresses. </p>"}))
    ListResolverEndpointIpAddressesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first <code>ListResolverEndpointIpAddresses</code> request, omit this value.</p>\n         <p>If the specified Resolver endpoint has more than <code>MaxResults</code> IP addresses, you can submit another \n\t\t\t<code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, specify the value of \n\t\t\t<code>NextToken</code> from the previous response. </p>"}))
    ListResolverEndpointIpAddressesRequest.type = Types::ListResolverEndpointIpAddressesRequest
    ListResolverEndpointIpAddressesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the specified endpoint has more than <code>MaxResults</code> IP addresses, you can submit another \n\t\t\t<code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, \n\t\t\tspecify the value of <code>NextToken</code> from the previous response. </p>"}))
    ListResolverEndpointIpAddressesResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The value that you specified for <code>MaxResults</code> in the request.</p>"}))
    ListResolverEndpointIpAddressesResponse.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressesResponse, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>Information about the IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward \n\t\t\tDNS queries to (for inbound endpoints).</p>"}))
    ListResolverEndpointIpAddressesResponse.type = Types::ListResolverEndpointIpAddressesResponse
    ListResolverEndpointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of Resolver endpoints that you want to return in the response to a <code>ListResolverEndpoints</code> request. \n\t\t\tIf you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver endpoints. </p>"}))
    ListResolverEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first <code>ListResolverEndpoints</code> request, omit this value.</p>\n         <p>If you have more than <code>MaxResults</code> Resolver endpoints, you can submit another <code>ListResolverEndpoints</code> request \n\t\t\tto get the next group of Resolver endpoints. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"}))
    ListResolverEndpointsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An optional specification to return a subset of Resolver endpoints, such as all inbound Resolver endpoints.</p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverEndpoints</code> request and specify the <code>NextToken</code> parameter, \n\t\t\tyou must use the same values for <code>Filters</code>, if any, as in the previous request.</p>\n         </note>"}))
    ListResolverEndpointsRequest.type = Types::ListResolverEndpointsRequest
    ListResolverEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If more than <code>MaxResults</code> IP addresses match the specified criteria, you can submit another <code>ListResolverEndpoint</code> request \n\t\t\tto get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"}))
    ListResolverEndpointsResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The value that you specified for <code>MaxResults</code> in the request.</p>"}))
    ListResolverEndpointsResponse.add_member(:resolver_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoints, location_name: 'ResolverEndpoints', traits: {"smithy.api#documentation" => "<p>The Resolver endpoints that were created by using the current Amazon Web Services account, and that match the specified filters, if any.</p>"}))
    ListResolverEndpointsResponse.type = Types::ListResolverEndpointsResponse
    ListResolverQueryLogConfigAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of query logging associations that you want to return in the response to a <code>ListResolverQueryLogConfigAssociations</code> request. \n\t\t\tIf you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging associations. </p>"}))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first <code>ListResolverQueryLogConfigAssociations</code> request, omit this value.</p>\n         <p>If there are more than <code>MaxResults</code> query logging associations that match the values that you specify for <code>Filters</code>, \n\t\t\tyou can submit another <code>ListResolverQueryLogConfigAssociations</code> request to get the next group of associations. In the next request, specify the value of \n\t\t\t<code>NextToken</code> from the previous response. </p>"}))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An optional specification to return a subset of query logging associations.</p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, \n\t\t\t\tyou must use the same values for <code>Filters</code>, if any, as in the previous request.</p>\n         </note>"}))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SortByKey, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>The element that you want Resolver to sort query logging associations by. </p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, \n\t\t\t\tyou must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>\n         </note>\n         <p>Valid values include the following elements:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CreationTime</code>: The ID of the query logging association.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code> \n\t\t\t\tindicates the cause: </p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p>\n                  </li>\n               </ul>\n               <p>If <code>Status</code> is a value other than <code>FAILED</code>, <code>ERROR</code> is null.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Id</code>: The ID of the query logging association</p>\n            </li>\n            <li>\n               <p>\n                  <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration</p>\n            </li>\n            <li>\n               <p>\n                  <code>ResourceId</code>: The ID of the VPC that is associated with the query logging configuration</p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>: The current status of the configuration. Valid values include the following:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration \n\t\t\t\t\t\twas successfully created. Resolver is logging queries that originate in the specified VPC.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>DELETING</code>: Resolver is deleting this query logging association.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association. \n\t\t\t\t\t\tHere are two common causes:</p>\n                     <ul>\n                        <li>\n                           <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>\n                        </li>\n                        <li>\n                           <p>Permissions don't allow sending logs to the destination.</p>\n                        </li>\n                     </ul>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>If you specified a value for <code>SortBy</code>, the order that you want query logging associations to be listed in, \n\t\t\t<code>ASCENDING</code> or <code>DESCENDING</code>.</p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, \n\t\t\t\tyou must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>\n         </note>"}))
    ListResolverQueryLogConfigAssociationsRequest.type = Types::ListResolverQueryLogConfigAssociationsRequest
    ListResolverQueryLogConfigAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are more than <code>MaxResults</code> query logging associations, you can submit another <code>ListResolverQueryLogConfigAssociations</code> request \n\t\t\tto get the next group of associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"}))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'TotalCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of query logging associations that were created by the current account in the specified Region. This count can differ from the \n\t\t\tnumber of associations that are returned in a <code>ListResolverQueryLogConfigAssociations</code> response, depending on the values that you specify \n\t\t\tin the request.</p>"}))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:total_filtered_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'TotalFilteredCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of query logging associations that were created by the current account in the specified Region and that match the filters \n\t\t\tthat were specified in the <code>ListResolverQueryLogConfigAssociations</code> request. For the total number of associations that were created by the \n\t\t\tcurrent account in the specified Region, see <code>TotalCount</code>.</p>"}))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:resolver_query_log_config_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationList, location_name: 'ResolverQueryLogConfigAssociations', traits: {"smithy.api#documentation" => "<p>A list that contains one <code>ResolverQueryLogConfigAssociations</code> element for each query logging association that matches the \n\t\t\tvalues that you specified for <code>Filter</code>.</p>"}))
    ListResolverQueryLogConfigAssociationsResponse.type = Types::ListResolverQueryLogConfigAssociationsResponse
    ListResolverQueryLogConfigsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of query logging configurations that you want to return in the response to a <code>ListResolverQueryLogConfigs</code> request. \n\t\t\tIf you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging configurations. </p>"}))
    ListResolverQueryLogConfigsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first <code>ListResolverQueryLogConfigs</code> request, omit this value.</p>\n         <p>If there are more than <code>MaxResults</code> query logging configurations that match the values that you specify for <code>Filters</code>, \n\t\t\tyou can submit another <code>ListResolverQueryLogConfigs</code> request to get the next group of configurations. In the next request, specify the value of \n\t\t\t<code>NextToken</code> from the previous response. </p>"}))
    ListResolverQueryLogConfigsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An optional specification to return a subset of query logging configurations.</p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, \n\t\t\t\tyou must use the same values for <code>Filters</code>, if any, as in the previous request.</p>\n         </note>"}))
    ListResolverQueryLogConfigsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SortByKey, location_name: 'SortBy', traits: {"smithy.api#documentation" => "<p>The element that you want Resolver to sort query logging configurations by. </p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, \n\t\t\t\tyou must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>\n         </note>\n         <p>Valid values include the following elements:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Arn</code>: The ARN of the query logging configuration</p>\n            </li>\n            <li>\n               <p>\n                  <code>AssociationCount</code>: The number of VPCs that are associated with the specified configuration </p>\n            </li>\n            <li>\n               <p>\n                  <code>CreationTime</code>: The date and time that Resolver returned when the configuration was created</p>\n            </li>\n            <li>\n               <p>\n                  <code>CreatorRequestId</code>: The value that was specified for <code>CreatorRequestId</code> when the configuration was created</p>\n            </li>\n            <li>\n               <p>\n                  <code>DestinationArn</code>: The location that logs are sent to</p>\n            </li>\n            <li>\n               <p>\n                  <code>Id</code>: The ID of the configuration</p>\n            </li>\n            <li>\n               <p>\n                  <code>Name</code>: The name of the configuration</p>\n            </li>\n            <li>\n               <p>\n                  <code>OwnerId</code>: The Amazon Web Services account number of the account that created the configuration</p>\n            </li>\n            <li>\n               <p>\n                  <code>ShareStatus</code>: Whether the configuration is shared with other Amazon Web Services accounts or shared with the current account by \n\t\t\t\tanother Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>\n            </li>\n            <li>\n               <p>\n                  <code>Status</code>: The current status of the configuration. Valid values include the following:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>CREATING</code>: Resolver is creating the query logging configuration.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>CREATED</code>: The query logging configuration was successfully created. \n\t\t\t\t\t\tResolver is logging queries that originate in the specified VPC.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>DELETING</code>: Resolver is deleting this query logging configuration.</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging configuration.\n\t\t\t\t\t\tHere are two common causes:</p>\n                     <ul>\n                        <li>\n                           <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>\n                        </li>\n                        <li>\n                           <p>Permissions don't allow sending logs to the destination.</p>\n                        </li>\n                     </ul>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    ListResolverQueryLogConfigsRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>If you specified a value for <code>SortBy</code>, the order that you want query logging configurations to be listed in, \n\t\t\t<code>ASCENDING</code> or <code>DESCENDING</code>.</p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, \n\t\t\t\tyou must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>\n         </note>"}))
    ListResolverQueryLogConfigsRequest.type = Types::ListResolverQueryLogConfigsRequest
    ListResolverQueryLogConfigsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are more than <code>MaxResults</code> query logging configurations, you can submit another <code>ListResolverQueryLogConfigs</code> request \n\t\t\tto get the next group of configurations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"}))
    ListResolverQueryLogConfigsResponse.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'TotalCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of query logging configurations that were created by the current account in the specified Region. This count can differ from the \n\t\t\tnumber of query logging configurations that are returned in a <code>ListResolverQueryLogConfigs</code> response, depending on the values that you specify \n\t\t\tin the request.</p>"}))
    ListResolverQueryLogConfigsResponse.add_member(:total_filtered_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'TotalFilteredCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of query logging configurations that were created by the current account in the specified Region and that match the filters \n\t\t\tthat were specified in the <code>ListResolverQueryLogConfigs</code> request. For the total number of query logging configurations that were created by the \n\t\t\tcurrent account in the specified Region, see <code>TotalCount</code>.</p>"}))
    ListResolverQueryLogConfigsResponse.add_member(:resolver_query_log_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigList, location_name: 'ResolverQueryLogConfigs', traits: {"smithy.api#documentation" => "<p>A list that contains one <code>ResolverQueryLogConfig</code> element for each query logging configuration that matches the \n\t\t\tvalues that you specified for <code>Filter</code>.</p>"}))
    ListResolverQueryLogConfigsResponse.type = Types::ListResolverQueryLogConfigsResponse
    ListResolverRuleAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of rule associations that you want to return in the response to a <code>ListResolverRuleAssociations</code> request. \n\t\t\tIf you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 rule associations. </p>"}))
    ListResolverRuleAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first <code>ListResolverRuleAssociation</code> request, omit this value.</p>\n         <p>If you have more than <code>MaxResults</code> rule associations, you can submit another <code>ListResolverRuleAssociation</code> request \n\t\t\tto get the next group of rule associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"}))
    ListResolverRuleAssociationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An optional specification to return a subset of Resolver rules, such as Resolver rules that are associated with the same VPC ID.</p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverRuleAssociations</code> request and specify the <code>NextToken</code> parameter, \n\t\t\tyou must use the same values for <code>Filters</code>, if any, as in the previous request.</p>\n         </note>"}))
    ListResolverRuleAssociationsRequest.type = Types::ListResolverRuleAssociationsRequest
    ListResolverRuleAssociationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If more than <code>MaxResults</code> rule associations match the specified criteria, you can submit another \n\t\t\t<code>ListResolverRuleAssociation</code> request to get the next group of results. In the next request, specify the value of \n\t\t\t<code>NextToken</code> from the previous response. </p>"}))
    ListResolverRuleAssociationsResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The value that you specified for <code>MaxResults</code> in the request.</p>"}))
    ListResolverRuleAssociationsResponse.add_member(:resolver_rule_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociations, location_name: 'ResolverRuleAssociations', traits: {"smithy.api#documentation" => "<p>The associations that were created between Resolver rules and VPCs using the current Amazon Web Services account, and that match the \n\t\t\tspecified filters, if any.</p>"}))
    ListResolverRuleAssociationsResponse.type = Types::ListResolverRuleAssociationsResponse
    ListResolverRulesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of Resolver rules that you want to return in the response to a <code>ListResolverRules</code> request. \n\t\t\tIf you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver rules.</p>"}))
    ListResolverRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first <code>ListResolverRules</code> request, omit this value.</p>\n         <p>If you have more than <code>MaxResults</code> Resolver rules, you can submit another <code>ListResolverRules</code> request \n\t\t\tto get the next group of Resolver rules. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"}))
    ListResolverRulesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An optional specification to return a subset of Resolver rules, such as all Resolver rules that are associated with the same Resolver endpoint.</p>\n         <note>\n            <p>If you submit a second or subsequent <code>ListResolverRules</code> request and specify the <code>NextToken</code> parameter, \n\t\t\tyou must use the same values for <code>Filters</code>, if any, as in the previous request.</p>\n         </note>"}))
    ListResolverRulesRequest.type = Types::ListResolverRulesRequest
    ListResolverRulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If more than <code>MaxResults</code> Resolver rules match the specified criteria, you can submit another \n\t\t\t<code>ListResolverRules</code> request to get the next group of results. In the next request, specify the value of \n\t\t\t<code>NextToken</code> from the previous response. </p>"}))
    ListResolverRulesResponse.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The value that you specified for <code>MaxResults</code> in the request.</p>"}))
    ListResolverRulesResponse.add_member(:resolver_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRules, location_name: 'ResolverRules', traits: {"smithy.api#documentation" => "<p>The Resolver rules that were created using the current Amazon Web Services account and that match the specified filters, if any.</p>"}))
    ListResolverRulesResponse.type = Types::ListResolverRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the resource that you want to list tags for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of tags that you want to return in the response to a <code>ListTagsForResource</code> request. \n\t\t\tIf you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 tags.</p>"}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>For the first <code>ListTagsForResource</code> request, omit this value.</p>\n         <p>If you have more than <code>MaxResults</code> tags, you can submit another <code>ListTagsForResource</code> request \n\t\t\tto get the next group of tags for the resource. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that are associated with the resource that you specified in the <code>ListTagsForResource</code> request.</p>"}))
    ListTagsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If more than <code>MaxResults</code> tags match the specified criteria, you can submit another \n\t\t\t<code>ListTagsForResource</code> request to get the next group of results. In the next request, specify the value of \n\t\t\t<code>NextToken</code> from the previous response. </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MutationProtectionStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    MutationProtectionStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    OutpostResolver.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the Resolver on an Outpost.</p>"}))
    OutpostResolver.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the Outpost Resolver was created, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    OutpostResolver.add_member(:modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'ModificationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the Outpost Resolver was modified, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    OutpostResolver.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request that created the Resolver endpoint. \n\t\tThe <code>CreatorRequestId</code> allows failed requests to be retried without the risk of running the operation twice.</p>"}))
    OutpostResolver.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver on Outpost.</p>"}))
    OutpostResolver.add_member(:instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'InstanceCount', traits: {"smithy.api#documentation" => "<p>Amazon EC2 instance count for the Resolver on the Outpost.</p>"}))
    OutpostResolver.add_member(:preferred_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: 'PreferredInstanceType', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe Amazon EC2 instance type.\n\t\t</p>"}))
    OutpostResolver.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the Resolver.</p>"}))
    OutpostResolver.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the Resolver.</p>"}))
    OutpostResolver.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A detailed description of the Resolver.</p>"}))
    OutpostResolver.add_member(:outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: 'OutpostArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the Outpost.</p>"}))
    OutpostResolver.type = Types::OutpostResolver
    OutpostResolverList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver)
    OutpostResolverStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    OutpostResolverStatus.add_member(:operational, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATIONAL', traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    OutpostResolverStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    OutpostResolverStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    OutpostResolverStatus.add_member(:action_needed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTION_NEEDED', traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    OutpostResolverStatus.add_member(:failed_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_CREATION', traits: {"smithy.api#enumValue" => "FAILED_CREATION"}))
    OutpostResolverStatus.add_member(:failed_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_DELETION', traits: {"smithy.api#enumValue" => "FAILED_DELETION"}))
    Protocol.add_member(:doh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOH', traits: {"smithy.api#enumValue" => "DoH"}))
    Protocol.add_member(:do53, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DO53', traits: {"smithy.api#enumValue" => "Do53"}))
    Protocol.add_member(:dohfips, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOHFIPS', traits: {"smithy.api#enumValue" => "DoH-FIPS"}))
    ProtocolList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol)
    PutFirewallRuleGroupPolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the rule group that you want to share.</p>", "smithy.api#required" => {}}))
    PutFirewallRuleGroupPolicyRequest.add_member(:firewall_rule_group_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupPolicy, location_name: 'FirewallRuleGroupPolicy', traits: {"smithy.api#documentation" => "<p>The Identity and Access Management (Amazon Web Services IAM) policy to attach to the rule group.</p>", "smithy.api#required" => {}}))
    PutFirewallRuleGroupPolicyRequest.type = Types::PutFirewallRuleGroupPolicyRequest
    PutFirewallRuleGroupPolicyResponse.add_member(:return_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnValue', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p></p>"}))
    PutFirewallRuleGroupPolicyResponse.type = Types::PutFirewallRuleGroupPolicyResponse
    PutResolverQueryLogConfigPolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account that you want to share rules with.</p>", "smithy.api#required" => {}}))
    PutResolverQueryLogConfigPolicyRequest.add_member(:resolver_query_log_config_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigPolicy, location_name: 'ResolverQueryLogConfigPolicy', traits: {"smithy.api#documentation" => "<p>An Identity and Access Management policy statement that lists the query logging configurations that you want to share with another Amazon Web Services account \n\t\t\tand the operations that you want the account to be able to perform. You can specify the following operations in the <code>Actions</code> section \n\t\t\tof the statement:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>route53resolver:AssociateResolverQueryLogConfig</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>route53resolver:DisassociateResolverQueryLogConfig</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>route53resolver:ListResolverQueryLogConfigs</code>\n               </p>\n            </li>\n         </ul>\n         <p>In the <code>Resource</code> section of the statement, you specify the ARNs for the query logging configurations that you want to share \n\t\t\twith the account that you specified in <code>Arn</code>. </p>", "smithy.api#required" => {}}))
    PutResolverQueryLogConfigPolicyRequest.type = Types::PutResolverQueryLogConfigPolicyRequest
    PutResolverQueryLogConfigPolicyResponse.add_member(:return_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnValue', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the <code>PutResolverQueryLogConfigPolicy</code> request was successful.</p>"}))
    PutResolverQueryLogConfigPolicyResponse.type = Types::PutResolverQueryLogConfigPolicyResponse
    PutResolverRulePolicyRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rule that you want to share with another account.</p>", "smithy.api#required" => {}}))
    PutResolverRulePolicyRequest.add_member(:resolver_rule_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRulePolicy, location_name: 'ResolverRulePolicy', traits: {"smithy.api#documentation" => "<p>An Identity and Access Management policy statement that lists the rules that you want to share with another Amazon Web Services account and the operations that you want the account \n\t\t\tto be able to perform. You can specify the following operations in the <code>Action</code> section of the statement:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>route53resolver:GetResolverRule</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>route53resolver:AssociateResolverRule</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>route53resolver:DisassociateResolverRule</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>route53resolver:ListResolverRules</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>route53resolver:ListResolverRuleAssociations</code>\n               </p>\n            </li>\n         </ul>\n         <p>In the <code>Resource</code> section of the statement, specify the ARN for the rule that you want to share with another account. Specify the same ARN \n\t\t\tthat you specified in <code>Arn</code>.</p>", "smithy.api#required" => {}}))
    PutResolverRulePolicyRequest.type = Types::PutResolverRulePolicyRequest
    PutResolverRulePolicyResponse.add_member(:return_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnValue', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the <code>PutResolverRulePolicy</code> request was successful.</p>"}))
    PutResolverRulePolicyResponse.type = Types::PutResolverRulePolicyResponse
    ResolverAutodefinedReverseStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabling', traits: {"smithy.api#enumValue" => "ENABLING"}))
    ResolverAutodefinedReverseStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverAutodefinedReverseStatus.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabling', traits: {"smithy.api#enumValue" => "DISABLING"}))
    ResolverAutodefinedReverseStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResolverAutodefinedReverseStatus.add_member(:updating_to_use_local_resource_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdatingToUseLocalResourceSetting', traits: {"smithy.api#enumValue" => "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"}))
    ResolverAutodefinedReverseStatus.add_member(:use_local_resource_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UseLocalResourceSetting', traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ResolverConfig.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>ID for the Resolver configuration.</p>"}))
    ResolverConfig.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Virtual Private Cloud VPC or a Route 53 Profile that you're configuring Resolver for.</p>"}))
    ResolverConfig.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The owner account ID of the Amazon Virtual Private Cloud VPC.</p>"}))
    ResolverConfig.add_member(:autodefined_reverse, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverAutodefinedReverseStatus, location_name: 'AutodefinedReverse', traits: {"smithy.api#documentation" => "<p> The status of whether or not the Resolver will create autodefined rules for reverse DNS\n\t\t\tlookups. This is enabled by default. The status can be one of following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>ENABLING:</b> Autodefined rules for reverse DNS lookups are being\n\t\t\t\t\tenabled but are not complete.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ENABLED:</b> Autodefined rules for reverse DNS lookups are\n\t\t\t\t\tenabled.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DISABLING:</b> Autodefined rules for reverse DNS lookups are\n\t\t\t\t\tbeing disabled but are not complete.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DISABLED:</b> Autodefined rules for reverse DNS lookups are\n\t\t\t\t\tdisabled.</p>\n            </li>\n         </ul>"}))
    ResolverConfig.type = Types::ResolverConfig
    ResolverConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverConfig)
    ResolverDNSSECValidationStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabling', traits: {"smithy.api#enumValue" => "ENABLING"}))
    ResolverDNSSECValidationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ResolverDNSSECValidationStatus.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabling', traits: {"smithy.api#enumValue" => "DISABLING"}))
    ResolverDNSSECValidationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResolverDNSSECValidationStatus.add_member(:update_to_use_local_resource_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateToUseLocalResourceSetting', traits: {"smithy.api#enumValue" => "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"}))
    ResolverDNSSECValidationStatus.add_member(:use_local_resource_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UseLocalResourceSetting', traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ResolverDnssecConfig.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID for a configuration for DNSSEC validation.</p>"}))
    ResolverDnssecConfig.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The owner account ID of the virtual private cloud (VPC) for a configuration for DNSSEC validation.</p>"}))
    ResolverDnssecConfig.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual private cloud (VPC) that you're configuring the DNSSEC validation status for.</p>"}))
    ResolverDnssecConfig.add_member(:validation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDNSSECValidationStatus, location_name: 'ValidationStatus', traits: {"smithy.api#documentation" => "<p>The validation status for a DNSSEC configuration. The status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>ENABLING:</b> DNSSEC validation is being enabled but is not complete.</p>\n            </li>\n            <li>\n               <p>\n                  <b>ENABLED:</b> DNSSEC validation is enabled.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DISABLING:</b> DNSSEC validation is being disabled but is not complete.</p>\n            </li>\n            <li>\n               <p>\n                  <b>DISABLED</b> DNSSEC validation is disabled.</p>\n            </li>\n         </ul>"}))
    ResolverDnssecConfig.type = Types::ResolverDnssecConfig
    ResolverDnssecConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDnssecConfig)
    ResolverEndpoint.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver endpoint.</p>"}))
    ResolverEndpoint.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request that created the Resolver endpoint. The\n\t\t\t\t<code>CreatorRequestId</code> allows failed requests to be retried without the risk\n\t\t\tof running the operation twice.</p>"}))
    ResolverEndpoint.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the Resolver endpoint.</p>"}))
    ResolverEndpoint.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name that you assigned to the Resolver endpoint when you submitted a \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a> \n\t\t\trequest.</p>"}))
    ResolverEndpoint.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The ID of one or more security groups that control access to this VPC. The security group must include one or more inbound rules \n\t\t\t(for inbound endpoints) or outbound rules (for outbound endpoints). Inbound and outbound rules must allow TCP and UDP access. \n\t\t\tFor inbound access, open port 53. For outbound access, open the port that you're using for DNS queries on your network.</p>"}))
    ResolverEndpoint.add_member(:direction, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointDirection, location_name: 'Direction', traits: {"smithy.api#documentation" => "<p>Indicates whether the Resolver endpoint allows inbound or outbound DNS queries:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INBOUND</code>: allows DNS queries to your VPC from your network</p>\n            </li>\n            <li>\n               <p>\n                  <code>OUTBOUND</code>: allows DNS queries from your VPC to your network</p>\n            </li>\n            <li>\n               <p>\n                  <code>INBOUND_DELEGATION</code>: Resolver delegates queries to Route 53 private hosted zones from your network.</p>\n            </li>\n         </ul>"}))
    ResolverEndpoint.add_member(:ip_address_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressCount, location_name: 'IpAddressCount', traits: {"smithy.api#documentation" => "<p>The number of IP addresses that the Resolver endpoint can use for DNS queries.</p>"}))
    ResolverEndpoint.add_member(:host_vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'HostVPCId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that you want to create the Resolver endpoint in.</p>"}))
    ResolverEndpoint.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A code that specifies the current status of the Resolver endpoint. Valid values include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code>: Resolver is creating and configuring one or more Amazon VPC network interfaces \n\t\t\t\tfor this endpoint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OPERATIONAL</code>: The Amazon VPC network interfaces for this endpoint are correctly configured and \n\t\t\t\table to pass inbound or outbound DNS queries between your network and Resolver.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATING</code>: Resolver is associating or disassociating one or more network interfaces \n\t\t\t\twith this endpoint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AUTO_RECOVERING</code>: Resolver is trying to recover one or more of the network interfaces \n\t\t\t\tthat are associated with this endpoint. During the recovery process, the endpoint functions with limited capacity because of the \n\t\t\t\tlimit on the number of DNS queries per IP address (per network interface). For the current limit, see \n\t\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-resolver\">Limits on Route 53 Resolver</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTION_NEEDED</code>: This endpoint is unhealthy, and Resolver can't automatically recover it. \n\t\t\t\tTo resolve the problem, we recommend that you check each IP address that you associated with the endpoint. For each IP address \n\t\t\t\tthat isn't available, add another IP address and then delete the IP address that isn't available. (An endpoint must always include \n\t\t\t\tat least two IP addresses.) A status of <code>ACTION_NEEDED</code> can have a variety of causes. Here are two common causes:</p>\n               <ul>\n                  <li>\n                     <p>One or more of the network interfaces that are associated with the endpoint were deleted using Amazon VPC.</p>\n                  </li>\n                  <li>\n                     <p>The network interface couldn't be created for some reason that's outside the control of Resolver.</p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code>: Resolver is deleting this endpoint and the associated network interfaces.</p>\n            </li>\n         </ul>"}))
    ResolverEndpoint.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A detailed description of the status of the Resolver endpoint.</p>"}))
    ResolverEndpoint.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the endpoint was created, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    ResolverEndpoint.add_member(:modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'ModificationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the endpoint was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    ResolverEndpoint.add_member(:outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArn, location_name: 'OutpostArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the Outpost.</p>"}))
    ResolverEndpoint.add_member(:preferred_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: 'PreferredInstanceType', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe Amazon EC2 instance type.\n\t\t</p>"}))
    ResolverEndpoint.add_member(:resolver_endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: 'ResolverEndpointType', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe Resolver endpoint IP address type.\n\t\t</p>"}))
    ResolverEndpoint.add_member(:protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolList, location_name: 'Protocols', traits: {"smithy.api#documentation" => "<p>\n\t\t\tProtocols used for the endpoint. DoH-FIPS is applicable for a default inbound endpoints only.\n\t\t</p>\n         <p>For an inbound endpoint you can apply the protocols as follows:</p>\n         <ul>\n            <li>\n               <p> Do53  and DoH in combination.</p>\n            </li>\n            <li>\n               <p>Do53  and DoH-FIPS in combination.</p>\n            </li>\n            <li>\n               <p>Do53 alone.</p>\n            </li>\n            <li>\n               <p>DoH alone.</p>\n            </li>\n            <li>\n               <p>DoH-FIPS alone.</p>\n            </li>\n            <li>\n               <p>None, which is treated as Do53.</p>\n            </li>\n         </ul>\n         <p>For a delegation inbound endpoint you can use Do53 only.</p>\n         <p>For an outbound endpoint you can apply the protocols as follows:</p>\n         <ul>\n            <li>\n               <p> Do53  and DoH in combination.</p>\n            </li>\n            <li>\n               <p>Do53 alone.</p>\n            </li>\n            <li>\n               <p>DoH alone.</p>\n            </li>\n            <li>\n               <p>None, which is treated as Do53.</p>\n            </li>\n         </ul>"}))
    ResolverEndpoint.type = Types::ResolverEndpoint
    ResolverEndpointDirection.add_member(:inbound, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inbound', traits: {"smithy.api#enumValue" => "INBOUND"}))
    ResolverEndpointDirection.add_member(:outbound, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Outbound', traits: {"smithy.api#enumValue" => "OUTBOUND"}))
    ResolverEndpointDirection.add_member(:inbound_delegation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InboundDelegation', traits: {"smithy.api#enumValue" => "INBOUND_DELEGATION"}))
    ResolverEndpointStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverEndpointStatus.add_member(:operational, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Operational', traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    ResolverEndpointStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResolverEndpointStatus.add_member(:auto_recovering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AutoRecovering', traits: {"smithy.api#enumValue" => "AUTO_RECOVERING"}))
    ResolverEndpointStatus.add_member(:action_needed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActionNeeded', traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    ResolverEndpointStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverEndpointType.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    ResolverEndpointType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    ResolverEndpointType.add_member(:dualstack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    ResolverEndpoints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint)
    ResolverQueryLogConfig.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID for the query logging configuration.</p>"}))
    ResolverQueryLogConfig.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account that created the query logging configuration. </p>"}))
    ResolverQueryLogConfig.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the specified query logging configuration. Valid values include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code>: Resolver is creating the query logging configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CREATED</code>: The query logging configuration was successfully created. \n\t\t\t\tResolver is logging queries that originate in the specified VPC.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code>: Resolver is deleting this query logging configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code>: Resolver can't deliver logs to the location that is specified in the query logging configuration. \n\t\t\t\tHere are two common causes:</p>\n               <ul>\n                  <li>\n                     <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>\n                  </li>\n                  <li>\n                     <p>Permissions don't allow sending logs to the destination.</p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    ResolverQueryLogConfig.add_member(:share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'ShareStatus', traits: {"smithy.api#documentation" => "<p>An indication of whether the query logging configuration is shared with other Amazon Web Services accounts, or was shared with the current account by another \n\t\t\tAmazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>"}))
    ResolverQueryLogConfig.add_member(:association_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'AssociationCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of VPCs that are associated with the query logging configuration.</p>"}))
    ResolverQueryLogConfig.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the query logging configuration.</p>"}))
    ResolverQueryLogConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the query logging configuration. </p>"}))
    ResolverQueryLogConfig.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationArn, location_name: 'DestinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you want Resolver to send query logs: an Amazon S3 bucket, a CloudWatch Logs log group, or \n\t\t\ta Kinesis Data Firehose delivery stream.</p>"}))
    ResolverQueryLogConfig.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the request that created the query logging configuration.\n\t\t\tThe <code>CreatorRequestId</code> allows failed requests to be retried without the risk\n\t\t\tof running the operation twice.</p>"}))
    ResolverQueryLogConfig.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the query logging configuration was created, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    ResolverQueryLogConfig.type = Types::ResolverQueryLogConfig
    ResolverQueryLogConfigAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the query logging association.</p>"}))
    ResolverQueryLogConfigAssociation.add_member(:resolver_query_log_config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverQueryLogConfigId', traits: {"smithy.api#documentation" => "<p>The ID of the query logging configuration that a VPC is associated with.</p>"}))
    ResolverQueryLogConfigAssociation.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon VPC that is associated with the query logging configuration.</p>"}))
    ResolverQueryLogConfigAssociation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the specified query logging association. Valid values include the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVE</code>: The association between an Amazon VPC and a query logging configuration \n\t\t\t\twas successfully created. Resolver is logging queries that originate in the specified VPC.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code>: Resolver is deleting this query logging association.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association.</p>\n            </li>\n         </ul>"}))
    ResolverQueryLogConfigAssociation.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationError, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code> indicates the cause:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p>\n            </li>\n         </ul>\n         <p>If the value of <code>Status</code> is a value other than <code>FAILED</code>, <code>Error</code> is null. </p>"}))
    ResolverQueryLogConfigAssociation.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>Contains additional information about the error. If the value or <code>Error</code> is null, the value of <code>ErrorMessage</code> also is null.</p>"}))
    ResolverQueryLogConfigAssociation.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the VPC was associated with the query logging configuration, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    ResolverQueryLogConfigAssociation.type = Types::ResolverQueryLogConfigAssociation
    ResolverQueryLogConfigAssociationError.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'None', traits: {"smithy.api#enumValue" => "NONE"}))
    ResolverQueryLogConfigAssociationError.add_member(:destination_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DestinationNotFound', traits: {"smithy.api#enumValue" => "DESTINATION_NOT_FOUND"}))
    ResolverQueryLogConfigAssociationError.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccessDenied', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ResolverQueryLogConfigAssociationError.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalServiceError', traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    ResolverQueryLogConfigAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation)
    ResolverQueryLogConfigAssociationStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:action_needed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActionNeeded', traits: {"smithy.api#enumValue" => "ACTION_NEEDED"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverQueryLogConfigAssociationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverQueryLogConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverQueryLogConfig)
    ResolverQueryLogConfigStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverQueryLogConfigStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Created', traits: {"smithy.api#enumValue" => "CREATED"}))
    ResolverQueryLogConfigStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverQueryLogConfigStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRule.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID that Resolver assigned to the Resolver rule when you created it.</p>"}))
    ResolverRule.add_member(:creator_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: 'CreatorRequestId', traits: {"smithy.api#documentation" => "<p>A unique string that you specified when you created the Resolver rule.\n\t\t\t\t<code>CreatorRequestId</code> identifies the request and allows failed requests to\n\t\t\tbe retried without the risk of running the operation twice. </p>"}))
    ResolverRule.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) for the Resolver rule specified by <code>Id</code>.</p>"}))
    ResolverRule.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>DNS queries for this domain name are forwarded to the IP addresses that are specified in <code>TargetIps</code>. If a query matches \n\t\t\tmultiple Resolver rules (example.com and www.example.com), the query is routed using the Resolver rule that contains the most specific domain name \n\t\t\t(www.example.com).</p>"}))
    ResolverRule.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A code that specifies the current status of the Resolver rule.</p>"}))
    ResolverRule.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A detailed description of the status of a Resolver rule.</p>"}))
    ResolverRule.add_member(:rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeOption, location_name: 'RuleType', traits: {"smithy.api#documentation" => "<p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code> or <code>DELEGATE</code>. \n\t\t\tIf a query matches multiple Resolver rules (example.com and www.example.com), outbound DNS queries are routed using the Resolver rule that contains \n\t\t\tthe most specific domain name (www.example.com).</p>\n         <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for \n\t\t\ta subdomain of that domain, specify <code>SYSTEM</code>.</p>\n         <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code> \n\t\t\tfor <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify \n\t\t\t<code>SYSTEM</code> for <code>RuleType</code>.</p>\n         <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>"}))
    ResolverRule.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the Resolver rule, which you specified when you created the Resolver rule.</p>"}))
    ResolverRule.add_member(:target_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'TargetIps', traits: {"smithy.api#documentation" => "<p>An array that contains the IP addresses and ports that an outbound endpoint forwards DNS queries to. Typically, \n\t\t\tthese are the IP addresses of DNS resolvers on your network. </p>"}))
    ResolverRule.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the endpoint that the rule is associated with.</p>"}))
    ResolverRule.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>When a rule is shared with another Amazon Web Services account, the account ID of the account that the rule is shared with.</p>"}))
    ResolverRule.add_member(:share_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'ShareStatus', traits: {"smithy.api#documentation" => "<p>Whether the rule is shared and, if so, whether the current account is sharing the rule with\n\t\t\tanother account, or another account is sharing the rule with the current account.</p>"}))
    ResolverRule.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the Resolver rule was created, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    ResolverRule.add_member(:modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: 'ModificationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the Resolver rule was last updated, in Unix time format and Coordinated Universal Time (UTC).</p>"}))
    ResolverRule.add_member(:delegation_record, Smithy::Schema::Shapes::ShapeRef.new(shape: DelegationRecord, location_name: 'DelegationRecord', traits: {"smithy.api#documentation" => "<p>\n\t\t\tDNS queries with delegation records that point to this domain name are forwarded to resolvers on your network.\n\t\t</p>"}))
    ResolverRule.type = Types::ResolverRule
    ResolverRuleAssociation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the association between a Resolver rule and a VPC. Resolver assigns this value when you submit an \n\t\t\t<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html\">AssociateResolverRule</a> \n\t\t\trequest.</p>"}))
    ResolverRuleAssociation.add_member(:resolver_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverRuleId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver rule that you associated with the VPC that is specified by <code>VPCId</code>.</p>"}))
    ResolverRuleAssociation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of an association between a Resolver rule and a VPC.</p>"}))
    ResolverRuleAssociation.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPCId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that you associated the Resolver rule with.</p>"}))
    ResolverRuleAssociation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A code that specifies the current status of the association between a Resolver rule and a VPC.</p>"}))
    ResolverRuleAssociation.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A detailed description of the status of the association between a Resolver rule and a VPC.</p>"}))
    ResolverRuleAssociation.type = Types::ResolverRuleAssociation
    ResolverRuleAssociationStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "CREATING"}))
    ResolverRuleAssociationStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Complete', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ResolverRuleAssociationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverRuleAssociationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRuleAssociationStatus.add_member(:overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Overridden', traits: {"smithy.api#enumValue" => "OVERRIDDEN"}))
    ResolverRuleAssociations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleAssociation)
    ResolverRuleConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The new name for the Resolver rule. The name that you specify appears in the Resolver dashboard in the Route 53 console. </p>"}))
    ResolverRuleConfig.add_member(:target_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'TargetIps', traits: {"smithy.api#documentation" => "<p>For DNS queries that originate in your VPC, the new IP addresses that you want to route outbound DNS queries to.</p>"}))
    ResolverRuleConfig.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the new outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify in \n\t\t\t<code>TargetIps</code>.</p>"}))
    ResolverRuleConfig.type = Types::ResolverRuleConfig
    ResolverRuleStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Complete', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ResolverRuleStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    ResolverRuleStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Updating', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ResolverRuleStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "FAILED"}))
    ResolverRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule)
    ResourceExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceExistsException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>For a <code>ResourceExistsException</code> error, the type of resource that the error applies to.</p>"}))
    ResourceExistsException.type = Types::ResourceExistsException
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceInUseException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>For a <code>ResourceInUseException</code> error, the type of resource that is currently in use.</p>"}))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>For a <code>ResourceNotFoundException</code> error, the type of resource that doesn't exist.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceUnavailableException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>For a <code>ResourceUnavailableException</code> error, the type of resource that isn't available.</p>"}))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RuleTypeOption.add_member(:forward, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Forward', traits: {"smithy.api#enumValue" => "FORWARD"}))
    RuleTypeOption.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'System', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    RuleTypeOption.add_member(:recursive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Recursive', traits: {"smithy.api#enumValue" => "RECURSIVE"}))
    RuleTypeOption.add_member(:delegate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Delegate', traits: {"smithy.api#enumValue" => "DELEGATE"}))
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShareStatus.add_member(:not_shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotShared', traits: {"smithy.api#enumValue" => "NOT_SHARED"}))
    ShareStatus.add_member(:shared_with_me, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SharedWithMe', traits: {"smithy.api#enumValue" => "SHARED_WITH_ME"}))
    ShareStatus.add_member(:shared_by_me, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SharedByMe', traits: {"smithy.api#enumValue" => "SHARED_BY_ME"}))
    SortOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ascending', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Descending', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The name for the tag. For example, if you want to associate Resolver resources with the account IDs of your customers for billing purposes, \n\t\t\tthe value of <code>Key</code> might be <code>account-id</code>.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value for the tag. For example, if <code>Key</code> is <code>account-id</code>, then <code>Value</code> might be the ID of the \n\t\t\tcustomer account that you're creating the resource for.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the resource that you want to add tags to. To get the ARN for a resource, use the applicable \n\t\t\t<code>Get</code> or <code>List</code> command: </p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html\">GetResolverRule</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html\">GetResolverRuleAssociation</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that you want to add to the specified resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetAddress.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>One IPv4 address that you want to forward DNS queries to.</p>"}))
    TargetAddress.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port at <code>Ip</code> that you want to forward DNS queries to.</p>"}))
    TargetAddress.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: 'Ipv6', traits: {"smithy.api#documentation" => "<p>\n\t\t\tOne IPv6 address that you want to forward DNS queries to.\n\t\t</p>"}))
    TargetAddress.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe protocols for the target address. The protocol you choose needs to be supported by the outbound endpoint of the Resolver rule.</p>"}))
    TargetAddress.add_member(:server_name_indication, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerNameIndication, location_name: 'ServerNameIndication', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe Server Name Indication of the DoH server that you want to forward queries to. \n\t\t\tThis is only used if the Protocol of the <code>TargetAddress</code> is <code>DoH</code>.\n\t\t</p>"}))
    TargetAddress.type = Types::TargetAddress
    TargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAddress)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UnknownResourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    UnknownResourceException.type = Types::UnknownResourceException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the resource that you want to remove tags from. To get the ARN for a resource, use the applicable \n\t\t\t<code>Get</code> or <code>List</code> command: </p>\n         <ul>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html\">GetResolverRule</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html\">GetResolverRuleAssociation</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tags that you want to remove to the specified resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateFirewallConfigRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that the configuration is for.</p>", "smithy.api#required" => {}}))
    UpdateFirewallConfigRequest.add_member(:firewall_fail_open, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallFailOpenStatus, location_name: 'FirewallFailOpen', traits: {"smithy.api#documentation" => "<p>Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. </p>\n         <ul>\n            <li>\n               <p>By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. \n       DNS Firewall blocks queries that it is unable to evaluate properly. </p>\n            </li>\n            <li>\n               <p>If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it \n       is unable to properly evaluate them. </p>\n            </li>\n         </ul>\n         <p>This behavior is only enforced for VPCs that have at least one DNS Firewall rule group association. </p>", "smithy.api#required" => {}}))
    UpdateFirewallConfigRequest.type = Types::UpdateFirewallConfigRequest
    UpdateFirewallConfigResponse.add_member(:firewall_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallConfig, location_name: 'FirewallConfig', traits: {"smithy.api#documentation" => "<p>Configuration of the firewall behavior provided by DNS Firewall for a single VPC. </p>"}))
    UpdateFirewallConfigResponse.type = Types::UpdateFirewallConfigResponse
    UpdateFirewallDomainsRequest.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list whose domains you want to update. </p>", "smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainUpdateOperation, location_name: 'Operation', traits: {"smithy.api#documentation" => "<p>What you want DNS Firewall to do with the domains that you are providing: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>ADD</code> - Add the domains to the ones that are already in the domain list. </p>\n            </li>\n            <li>\n               <p>\n                  <code>REMOVE</code> - Search the domain list for the domains and remove them from the list.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLACE</code> - Update the domain list to exactly match the list that you are providing. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomains, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>A list of domains to use in the update operation.</p>\n         <important>\n            <p>There is a limit of 1000 domains per request.</p>\n         </important>\n         <p>Each domain specification in your domain list must satisfy the following\n\trequirements: </p>\n         <ul>\n            <li>\n               <p>It can optionally start with <code>*</code> (asterisk).</p>\n            </li>\n            <li>\n               <p>With the exception of the optional starting asterisk, it must only contain\n      \t   the following characters: <code>A-Z</code>, <code>a-z</code>,\n      \t   <code>0-9</code>, <code>-</code> (hyphen).</p>\n            </li>\n            <li>\n               <p>It must be from 1-255 characters in length. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateFirewallDomainsRequest.type = Types::UpdateFirewallDomainsRequest
    UpdateFirewallDomainsResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the firewall domain list that DNS Firewall just updated.</p>"}))
    UpdateFirewallDomainsResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the domain list. </p>"}))
    UpdateFirewallDomainsResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the <code>UpdateFirewallDomains</code> request.</p>"}))
    UpdateFirewallDomainsResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Additional information about the status of the list, if available.</p>"}))
    UpdateFirewallDomainsResponse.type = Types::UpdateFirewallDomainsResponse
    UpdateFirewallRuleGroupAssociationRequest.add_member(:firewall_rule_group_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupAssociationId', traits: {"smithy.api#documentation" => "<p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>", "smithy.api#required" => {}}))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The setting that determines the processing order of the rule group among the rule\n\t\t\tgroups that you associate with the specified VPC. DNS Firewall filters VPC traffic\n\t\t\tstarting from the rule group with the lowest numeric priority setting. </p>\n         <p>You must specify a unique priority for each rule group that you associate with a single VPC. \n           To make it easier to insert rule groups later, leave space between the numbers, for example, use 100, 200, and so on. You \n   can change the priority setting for a rule group association after you create it.</p>"}))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:mutation_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: 'MutationProtection', traits: {"smithy.api#documentation" => "<p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>"}))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule group association.</p>"}))
    UpdateFirewallRuleGroupAssociationRequest.type = Types::UpdateFirewallRuleGroupAssociationRequest
    UpdateFirewallRuleGroupAssociationResponse.add_member(:firewall_rule_group_association, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: 'FirewallRuleGroupAssociation', traits: {"smithy.api#documentation" => "<p>The association that you just updated. </p>"}))
    UpdateFirewallRuleGroupAssociationResponse.type = Types::UpdateFirewallRuleGroupAssociationResponse
    UpdateFirewallRuleRequest.add_member(:firewall_rule_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallRuleGroupId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the firewall rule group for the rule. </p>", "smithy.api#required" => {}}))
    UpdateFirewallRuleRequest.add_member(:firewall_domain_list_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallDomainListId', traits: {"smithy.api#documentation" => "<p>The ID of the domain list to use in the rule.  </p>"}))
    UpdateFirewallRuleRequest.add_member(:firewall_threat_protection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallThreatProtectionId', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe DNS Firewall Advanced rule ID.\n\t\t</p>"}))
    UpdateFirewallRuleRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'Priority', traits: {"smithy.api#documentation" => "<p>The setting that determines the processing order of the rule in the rule group. DNS Firewall \n           processes the rules in a rule group by order of priority, starting from the lowest setting.</p>\n         <p>You must specify a unique priority for each rule in a rule group. \n           To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You \n   can change the priority setting for the rules in a rule group at any time.</p>"}))
    UpdateFirewallRuleRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALLOW</code> - Permit the request to go through. Not available for DNS Firewall Advanced rules.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>. </p>\n            </li>\n         </ul>"}))
    UpdateFirewallRuleRequest.add_member(:block_response, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockResponse, location_name: 'BlockResponse', traits: {"smithy.api#documentation" => "<p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p>\n            </li>\n         </ul>"}))
    UpdateFirewallRuleRequest.add_member(:block_override_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: 'BlockOverrideDomain', traits: {"smithy.api#documentation" => "<p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"}))
    UpdateFirewallRuleRequest.add_member(:block_override_dns_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: 'BlockOverrideDnsType', traits: {"smithy.api#documentation" => "<p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"}))
    UpdateFirewallRuleRequest.add_member(:block_override_ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: 'BlockOverrideTtl', traits: {"smithy.api#documentation" => "<p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"}))
    UpdateFirewallRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>"}))
    UpdateFirewallRuleRequest.add_member(:firewall_domain_redirection_action, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDomainRedirectionAction, location_name: 'FirewallDomainRedirectionAction', traits: {"smithy.api#documentation" => "<p>\n\t\t\tHow you want the the rule to evaluate DNS redirection in the DNS redirection chain, such as CNAME or DNAME. \n\t\t</p>\n         <p>\n            <code>INSPECT_REDIRECTION_DOMAIN</code>: (Default) inspects all domains in the redirection chain. The individual domains in the redirection chain must be \n\t\t\tadded to the domain list.</p>\n         <p>\n            <code>TRUST_REDIRECTION_DOMAIN</code>: Inspects only the first domain in the redirection chain. You don't need to add the subsequent domains in the domain in the redirection list to \n\t\t\tthe domain list.</p>"}))
    UpdateFirewallRuleRequest.add_member(:qtype, Smithy::Schema::Shapes::ShapeRef.new(shape: Qtype, location_name: 'Qtype', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe DNS query type you want the rule to evaluate. Allowed values are;\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n\t\t\t\tA: Returns an IPv4 address.</p>\n            </li>\n            <li>\n               <p>AAAA: Returns an Ipv6 address.</p>\n            </li>\n            <li>\n               <p>CAA: Restricts CAs that can create SSL/TLS certifications for the domain.</p>\n            </li>\n            <li>\n               <p>CNAME: Returns another domain name.</p>\n            </li>\n            <li>\n               <p>DS: Record that identifies the DNSSEC signing key of a delegated zone.</p>\n            </li>\n            <li>\n               <p>MX: Specifies mail servers.</p>\n            </li>\n            <li>\n               <p>NAPTR: Regular-expression-based rewriting of domain names.</p>\n            </li>\n            <li>\n               <p>NS: Authoritative name servers.</p>\n            </li>\n            <li>\n               <p>PTR: Maps an IP address to a domain name.</p>\n            </li>\n            <li>\n               <p>SOA: Start of authority record for the zone.</p>\n            </li>\n            <li>\n               <p>SPF: Lists the servers authorized to send emails from a domain.</p>\n            </li>\n            <li>\n               <p>SRV: Application specific values that identify servers.</p>\n            </li>\n            <li>\n               <p>TXT: Verifies email senders and application-specific values.</p>\n            </li>\n            <li>\n               <p>A query type you define by using the DNS type ID, for example 28 for AAAA. The values must be\n\t\t\t\tdefined as TYPENUMBER, where the\n\t\t\t\tNUMBER can be 1-65334, for\n\t\t\t\texample, TYPE28. For more information, see \n\t\t\t\t<a href=\"https://en.wikipedia.org/wiki/List_of_DNS_record_types\">List of DNS record types</a>.</p>\n               <note>\n                  <p>If you set up a firewall BLOCK rule with action NXDOMAIN on query type equals AAAA, \n\t\t\t\t\tthis action will not be applied to synthetic IPv6 addresses generated when DNS64 is enabled. </p>\n               </note>\n            </li>\n         </ul>"}))
    UpdateFirewallRuleRequest.add_member(:dns_threat_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsThreatProtection, location_name: 'DnsThreatProtection', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe type of the DNS Firewall Advanced rule. Valid values are:\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DGA</code>: Domain generation algorithms detection. DGAs are used by attackers to generate a large number of domains \n\t\t\t\tto to launch malware attacks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DNS_TUNNELING</code>: DNS tunneling detection. DNS tunneling is used by attackers to exfiltrate data from the client by using the DNS tunnel without\n\t\t\t\tmaking a network connection to the client.</p>\n            </li>\n         </ul>"}))
    UpdateFirewallRuleRequest.add_member(:confidence_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: 'ConfidenceThreshold', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe confidence threshold for DNS Firewall Advanced. You must provide this value when you create a DNS Firewall Advanced rule. The confidence\n\t\t\tlevel values mean:\n\t\t</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LOW</code>: Provides the highest detection rate for threats, but also increases false positives.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MEDIUM</code>: Provides a balance between detecting threats and false positives.</p>\n            </li>\n            <li>\n               <p>\n                  <code>HIGH</code>: Detects only the most well corroborated threats with a low rate of false positives. </p>\n            </li>\n         </ul>"}))
    UpdateFirewallRuleRequest.type = Types::UpdateFirewallRuleRequest
    UpdateFirewallRuleResponse.add_member(:firewall_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallRule, location_name: 'FirewallRule', traits: {"smithy.api#documentation" => "<p>The firewall rule that you just updated. </p>"}))
    UpdateFirewallRuleResponse.type = Types::UpdateFirewallRuleResponse
    UpdateIpAddress.add_member(:ip_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'IpId', traits: {"smithy.api#documentation" => "<p> The ID of the IP address, specified by the <code>ResolverEndpointId</code>. </p>", "smithy.api#required" => {}}))
    UpdateIpAddress.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6, location_name: 'Ipv6', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe IPv6 address that you want to use for DNS queries. \n\t\t</p>", "smithy.api#required" => {}}))
    UpdateIpAddress.type = Types::UpdateIpAddress
    UpdateIpAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIpAddress)
    UpdateOutpostResolverRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique string that identifies Resolver on an Outpost.</p>", "smithy.api#required" => {}}))
    UpdateOutpostResolverRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolverName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the Resolver on the Outpost.</p>"}))
    UpdateOutpostResolverRequest.add_member(:instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'InstanceCount', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instance count for a Resolver on the Outpost.</p>"}))
    UpdateOutpostResolverRequest.add_member(:preferred_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostInstanceType, location_name: 'PreferredInstanceType', traits: {"smithy.api#documentation" => "<p>\n\t\t\tAmazon EC2 instance type.\n\t\t</p>"}))
    UpdateOutpostResolverRequest.type = Types::UpdateOutpostResolverRequest
    UpdateOutpostResolverResponse.add_member(:outpost_resolver, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostResolver, location_name: 'OutpostResolver', traits: {"smithy.api#documentation" => "<p>The response to an <code>UpdateOutpostResolver</code> request.</p>"}))
    UpdateOutpostResolverResponse.type = Types::UpdateOutpostResolverResponse
    UpdateResolverConfigRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Virtual Private Cloud VPC or a Route 53 Profile that you're configuring Resolver for.</p>", "smithy.api#required" => {}}))
    UpdateResolverConfigRequest.add_member(:autodefined_reverse_flag, Smithy::Schema::Shapes::ShapeRef.new(shape: AutodefinedReverseFlag, location_name: 'AutodefinedReverseFlag', traits: {"smithy.api#documentation" => "<p>Indicates whether or not the Resolver will create autodefined rules for reverse DNS\n\t\t\tlookups. This is enabled by default. Disabling this option will also affect EC2-Classic\n\t\t\tinstances using ClassicLink. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html\">ClassicLink</a> in the\n\t\t\t\t\t<i>Amazon EC2 guide</i>.</p>\n         <important>\n            <p>We are retiring EC2-Classic on August 15, 2022. We recommend that you migrate from EC2-Classic to a VPC. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html\">Migrate from EC2-Classic to a VPC</a> in the\n\t\t\t<i>Amazon EC2 guide</i> and the blog <a href=\"http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/\">EC2-Classic Networking is Retiring – Here’s How to Prepare</a>.</p>\n         </important>\n         <note>\n            <p>It can take some time for the status change to be completed.</p>\n         </note>\n         <p></p>", "smithy.api#required" => {}}))
    UpdateResolverConfigRequest.type = Types::UpdateResolverConfigRequest
    UpdateResolverConfigResponse.add_member(:resolver_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverConfig, location_name: 'ResolverConfig', traits: {"smithy.api#documentation" => "<p>An array that contains settings for the specified Resolver configuration.</p>"}))
    UpdateResolverConfigResponse.type = Types::UpdateResolverConfigResponse
    UpdateResolverDnssecConfigRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.</p>", "smithy.api#required" => {}}))
    UpdateResolverDnssecConfigRequest.add_member(:validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Validation, location_name: 'Validation', traits: {"smithy.api#documentation" => "<p>The new value that you are specifying for DNSSEC validation for the VPC. The value can be <code>ENABLE</code>\n\t\t\tor <code>DISABLE</code>. Be aware that it can take time for a validation status change to be completed.</p>", "smithy.api#required" => {}}))
    UpdateResolverDnssecConfigRequest.type = Types::UpdateResolverDnssecConfigRequest
    UpdateResolverDnssecConfigResponse.add_member(:resolver_dnssec_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverDnssecConfig, location_name: 'ResolverDNSSECConfig', traits: {"smithy.api#documentation" => "<p>A complex type that contains settings for the specified DNSSEC configuration.</p>"}))
    UpdateResolverDnssecConfigResponse.type = Types::UpdateResolverDnssecConfigResponse
    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverEndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver endpoint that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateResolverEndpointRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Resolver endpoint that you want to update.</p>"}))
    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: 'ResolverEndpointType', traits: {"smithy.api#documentation" => "<p>\n\t\t\tSpecifies the endpoint type for what type of IP address the endpoint uses to forward DNS queries.\n\t\t</p>\n         <p>Updating to <code>IPV6</code> type isn't currently supported.</p>"}))
    UpdateResolverEndpointRequest.add_member(:update_ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIpAddresses, location_name: 'UpdateIpAddresses', traits: {"smithy.api#documentation" => "<p>\n\t\t\tSpecifies the IPv6 address when you update the Resolver endpoint from IPv4 to dual-stack. \n\t\t\tIf you don't specify an IPv6 address, one will be automatically chosen from your subnet.\n\t\t</p>"}))
    UpdateResolverEndpointRequest.add_member(:protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolList, location_name: 'Protocols', traits: {"smithy.api#documentation" => "<p>\n\t\t\tThe protocols you want to use for the endpoint. DoH-FIPS is applicable for default inbound endpoints only.\n\t\t</p>\n         <p>For a default inbound endpoint you can apply the protocols as follows:</p>\n         <ul>\n            <li>\n               <p> Do53  and DoH in combination.</p>\n            </li>\n            <li>\n               <p>Do53  and DoH-FIPS in combination.</p>\n            </li>\n            <li>\n               <p>Do53 alone.</p>\n            </li>\n            <li>\n               <p>DoH alone.</p>\n            </li>\n            <li>\n               <p>DoH-FIPS alone.</p>\n            </li>\n            <li>\n               <p>None, which is treated as Do53.</p>\n            </li>\n         </ul>\n         <p>For a delegation inbound endpoint you can use Do53 only.</p>\n         <p>For an outbound endpoint you can apply the protocols as follows:</p>\n         <ul>\n            <li>\n               <p> Do53  and DoH in combination.</p>\n            </li>\n            <li>\n               <p>Do53 alone.</p>\n            </li>\n            <li>\n               <p>DoH alone.</p>\n            </li>\n            <li>\n               <p>None, which is treated as Do53.</p>\n            </li>\n         </ul>\n         <important>\n            <p> You can't change the protocol of an inbound endpoint directly from only Do53 to only DoH, or DoH-FIPS.\n\t\t\tThis is to prevent a sudden disruption to incoming traffic that\n\t\t\trelies on Do53. To change the protocol from Do53 to DoH, or DoH-FIPS, you must\n\t\t\tfirst enable both Do53 and DoH, or Do53 and DoH-FIPS, to make sure that all incoming traffic\n\t\t\thas transferred to using the DoH protocol, or DoH-FIPS, and then remove the\n\t\t\tDo53.</p>\n         </important>"}))
    UpdateResolverEndpointRequest.type = Types::UpdateResolverEndpointRequest
    UpdateResolverEndpointResponse.add_member(:resolver_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: 'ResolverEndpoint', traits: {"smithy.api#documentation" => "<p>The response to an <code>UpdateResolverEndpoint</code> request.</p>"}))
    UpdateResolverEndpointResponse.type = Types::UpdateResolverEndpointResponse
    UpdateResolverRuleRequest.add_member(:resolver_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResolverRuleId', traits: {"smithy.api#documentation" => "<p>The ID of the Resolver rule that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateResolverRuleRequest.add_member(:config, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRuleConfig, location_name: 'Config', traits: {"smithy.api#documentation" => "<p>The new settings for the Resolver rule.</p>", "smithy.api#required" => {}}))
    UpdateResolverRuleRequest.type = Types::UpdateResolverRuleRequest
    UpdateResolverRuleResponse.add_member(:resolver_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolverRule, location_name: 'ResolverRule', traits: {"smithy.api#documentation" => "<p>The response to an <code>UpdateResolverRule</code> request.</p>"}))
    UpdateResolverRuleResponse.type = Types::UpdateResolverRuleResponse
    Validation.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE', traits: {"smithy.api#enumValue" => "ENABLE"}))
    Validation.add_member(:disable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE', traits: {"smithy.api#enumValue" => "DISABLE"}))
    Validation.add_member(:use_local_resource_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_LOCAL_RESOURCE_SETTING', traits: {"smithy.api#enumValue" => "USE_LOCAL_RESOURCE_SETTING"}))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    Route53Resolver = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53resolver#Route53Resolver"
      service.name = "Route53Resolver"
      service.version = "2018-04-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53Resolver", "arnNamespace" => "route53resolver", "cloudFormationName" => "Route53Resolver", "cloudTrailEventSource" => "route53resolver.amazonaws.com", "endpointPrefix" => "route53resolver"}, "aws.auth#sigv4" => {"name" => "route53resolver"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Route 53 Resolver"}
      service.add_operation(:associate_firewall_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateFirewallRuleGroup"
        operation.name = "AssociateFirewallRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFirewallRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFirewallRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_endpoint_ip_address, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverEndpointIpAddress"
        operation.name = "AssociateResolverEndpointIpAddress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverEndpointIpAddressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverEndpointIpAddressResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_query_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverQueryLogConfig"
        operation.name = "AssociateResolverQueryLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverQueryLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverQueryLogConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:associate_resolver_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#AssociateResolverRule"
        operation.name = "AssociateResolverRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResolverRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_domain_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallDomainList"
        operation.name = "CreateFirewallDomainList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallDomainListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallDomainListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallRule"
        operation.name = "CreateFirewallRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_firewall_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateFirewallRuleGroup"
        operation.name = "CreateFirewallRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFirewallRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_outpost_resolver, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateOutpostResolver"
        operation.name = "CreateOutpostResolver"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutpostResolverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOutpostResolverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverEndpoint"
        operation.name = "CreateResolverEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_query_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverQueryLogConfig"
        operation.name = "CreateResolverQueryLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverQueryLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverQueryLogConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_resolver_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#CreateResolverRule"
        operation.name = "CreateResolverRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResolverRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_domain_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallDomainList"
        operation.name = "DeleteFirewallDomainList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallDomainListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallDomainListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallRule"
        operation.name = "DeleteFirewallRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_firewall_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteFirewallRuleGroup"
        operation.name = "DeleteFirewallRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFirewallRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_outpost_resolver, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteOutpostResolver"
        operation.name = "DeleteOutpostResolver"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutpostResolverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOutpostResolverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverEndpoint"
        operation.name = "DeleteResolverEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_query_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverQueryLogConfig"
        operation.name = "DeleteResolverQueryLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverQueryLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverQueryLogConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resolver_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DeleteResolverRule"
        operation.name = "DeleteResolverRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResolverRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_firewall_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateFirewallRuleGroup"
        operation.name = "DisassociateFirewallRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFirewallRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFirewallRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_endpoint_ip_address, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverEndpointIpAddress"
        operation.name = "DisassociateResolverEndpointIpAddress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverEndpointIpAddressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverEndpointIpAddressResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_query_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverQueryLogConfig"
        operation.name = "DisassociateResolverQueryLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverQueryLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverQueryLogConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_resolver_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#DisassociateResolverRule"
        operation.name = "DisassociateResolverRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResolverRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallConfig"
        operation.name = "GetFirewallConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_domain_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallDomainList"
        operation.name = "GetFirewallDomainList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallDomainListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallDomainListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroup"
        operation.name = "GetFirewallRuleGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroupAssociation"
        operation.name = "GetFirewallRuleGroupAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_firewall_rule_group_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetFirewallRuleGroupPolicy"
        operation.name = "GetFirewallRuleGroupPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFirewallRuleGroupPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_outpost_resolver, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetOutpostResolver"
        operation.name = "GetOutpostResolver"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostResolverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOutpostResolverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverConfig"
        operation.name = "GetResolverConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_dnssec_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverDnssecConfig"
        operation.name = "GetResolverDnssecConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverDnssecConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverDnssecConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverEndpoint"
        operation.name = "GetResolverEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfig"
        operation.name = "GetResolverQueryLogConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfigAssociation"
        operation.name = "GetResolverQueryLogConfigAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_query_log_config_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverQueryLogConfigPolicy"
        operation.name = "GetResolverQueryLogConfigPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRule"
        operation.name = "GetResolverRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRuleAssociation"
        operation.name = "GetResolverRuleAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRuleAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRuleAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resolver_rule_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#GetResolverRulePolicy"
        operation.name = "GetResolverRulePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRulePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResolverRulePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {}
      end)
      service.add_operation(:import_firewall_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ImportFirewallDomains"
        operation.name = "ImportFirewallDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFirewallDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFirewallDomainsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_firewall_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallConfigs"
        operation.name = "ListFirewallConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallConfigsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallConfigsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallConfigs.new
      end)
      service.add_operation(:list_firewall_domain_lists, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallDomainLists"
        operation.name = "ListFirewallDomainLists"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallDomainListsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallDomainListsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallDomainLists.new
      end)
      service.add_operation(:list_firewall_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallDomains"
        operation.name = "ListFirewallDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallDomainsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallDomains.new
      end)
      service.add_operation(:list_firewall_rule_group_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRuleGroupAssociations"
        operation.name = "ListFirewallRuleGroupAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRuleGroupAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRuleGroupAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRuleGroupAssociations.new
      end)
      service.add_operation(:list_firewall_rule_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRuleGroups"
        operation.name = "ListFirewallRuleGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRuleGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRuleGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRuleGroups.new
      end)
      service.add_operation(:list_firewall_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListFirewallRules"
        operation.name = "ListFirewallRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFirewallRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFirewallRules.new
      end)
      service.add_operation(:list_outpost_resolvers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListOutpostResolvers"
        operation.name = "ListOutpostResolvers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutpostResolversRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOutpostResolversResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListOutpostResolvers.new
      end)
      service.add_operation(:list_resolver_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverConfigs"
        operation.name = "ListResolverConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverConfigsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverConfigsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverConfigs.new
      end)
      service.add_operation(:list_resolver_dnssec_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverDnssecConfigs"
        operation.name = "ListResolverDnssecConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverDnssecConfigsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverDnssecConfigsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverDnssecConfigs.new
      end)
      service.add_operation(:list_resolver_endpoint_ip_addresses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverEndpointIpAddresses"
        operation.name = "ListResolverEndpointIpAddresses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverEndpointIpAddressesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverEndpointIpAddressesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverEndpointIpAddresses.new
      end)
      service.add_operation(:list_resolver_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverEndpoints"
        operation.name = "ListResolverEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListResolverEndpointsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListResolverEndpoints.new
      end)
      service.add_operation(:list_resolver_query_log_config_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverQueryLogConfigAssociations"
        operation.name = "ListResolverQueryLogConfigAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverQueryLogConfigAssociations.new
      end)
      service.add_operation(:list_resolver_query_log_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverQueryLogConfigs"
        operation.name = "ListResolverQueryLogConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverQueryLogConfigs.new
      end)
      service.add_operation(:list_resolver_rule_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverRuleAssociations"
        operation.name = "ListResolverRuleAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverRuleAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverRuleAssociationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverRuleAssociations.new
      end)
      service.add_operation(:list_resolver_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListResolverRules"
        operation.name = "ListResolverRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResolverRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResolverRules.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_firewall_rule_group_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutFirewallRuleGroupPolicy"
        operation.name = "PutFirewallRuleGroupPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFirewallRuleGroupPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFirewallRuleGroupPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_resolver_query_log_config_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutResolverQueryLogConfigPolicy"
        operation.name = "PutResolverQueryLogConfigPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResolverQueryLogConfigPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResolverQueryLogConfigPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyDocument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {}
      end)
      service.add_operation(:put_resolver_rule_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#PutResolverRulePolicy"
        operation.name = "PutResolverRulePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResolverRulePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResolverRulePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyDocument)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallConfig"
        operation.name = "UpdateFirewallConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallDomains"
        operation.name = "UpdateFirewallDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallDomainsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallRule"
        operation.name = "UpdateFirewallRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_firewall_rule_group_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateFirewallRuleGroupAssociation"
        operation.name = "UpdateFirewallRuleGroupAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallRuleGroupAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFirewallRuleGroupAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_outpost_resolver, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateOutpostResolver"
        operation.name = "UpdateOutpostResolver"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutpostResolverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutpostResolverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverConfig"
        operation.name = "UpdateResolverConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_dnssec_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverDnssecConfig"
        operation.name = "UpdateResolverDnssecConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverDnssecConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverDnssecConfigResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverEndpoint"
        operation.name = "UpdateResolverEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_resolver_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53resolver#UpdateResolverRule"
        operation.name = "UpdateResolverRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResolverRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
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
