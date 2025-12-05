# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Route53GlobalResolver
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessSources = Shapes::ListShape.new(name: 'AccessSources')
    AccessSourcesItem = Shapes::StructureShape.new(name: 'AccessSourcesItem')
    AccessTokenItem = Shapes::StructureShape.new(name: 'AccessTokenItem')
    AccessTokenValue = Shapes::StringShape.new(name: 'AccessTokenValue')
    AccessTokens = Shapes::ListShape.new(name: 'AccessTokens')
    AssociateHostedZoneInput = Shapes::StructureShape.new(name: 'AssociateHostedZoneInput')
    AssociateHostedZoneOutput = Shapes::StructureShape.new(name: 'AssociateHostedZoneOutput')
    BatchCreateFirewallRuleInput = Shapes::StructureShape.new(name: 'BatchCreateFirewallRuleInput')
    BatchCreateFirewallRuleInputItem = Shapes::StructureShape.new(name: 'BatchCreateFirewallRuleInputItem')
    BatchCreateFirewallRuleInputItems = Shapes::ListShape.new(name: 'BatchCreateFirewallRuleInputItems')
    BatchCreateFirewallRuleOutput = Shapes::StructureShape.new(name: 'BatchCreateFirewallRuleOutput')
    BatchCreateFirewallRuleOutputItem = Shapes::StructureShape.new(name: 'BatchCreateFirewallRuleOutputItem')
    BatchCreateFirewallRuleOutputItems = Shapes::ListShape.new(name: 'BatchCreateFirewallRuleOutputItems')
    BatchCreateFirewallRuleResult = Shapes::StructureShape.new(name: 'BatchCreateFirewallRuleResult')
    BatchDeleteFirewallRuleInput = Shapes::StructureShape.new(name: 'BatchDeleteFirewallRuleInput')
    BatchDeleteFirewallRuleInputItem = Shapes::StructureShape.new(name: 'BatchDeleteFirewallRuleInputItem')
    BatchDeleteFirewallRuleInputItems = Shapes::ListShape.new(name: 'BatchDeleteFirewallRuleInputItems')
    BatchDeleteFirewallRuleOutput = Shapes::StructureShape.new(name: 'BatchDeleteFirewallRuleOutput')
    BatchDeleteFirewallRuleOutputItem = Shapes::StructureShape.new(name: 'BatchDeleteFirewallRuleOutputItem')
    BatchDeleteFirewallRuleOutputItems = Shapes::ListShape.new(name: 'BatchDeleteFirewallRuleOutputItems')
    BatchDeleteFirewallRuleResult = Shapes::StructureShape.new(name: 'BatchDeleteFirewallRuleResult')
    BatchUpdateFirewallRuleInput = Shapes::StructureShape.new(name: 'BatchUpdateFirewallRuleInput')
    BatchUpdateFirewallRuleInputItem = Shapes::StructureShape.new(name: 'BatchUpdateFirewallRuleInputItem')
    BatchUpdateFirewallRuleInputItems = Shapes::ListShape.new(name: 'BatchUpdateFirewallRuleInputItems')
    BatchUpdateFirewallRuleOutput = Shapes::StructureShape.new(name: 'BatchUpdateFirewallRuleOutput')
    BatchUpdateFirewallRuleOutputItem = Shapes::StructureShape.new(name: 'BatchUpdateFirewallRuleOutputItem')
    BatchUpdateFirewallRuleOutputItems = Shapes::ListShape.new(name: 'BatchUpdateFirewallRuleOutputItems')
    BatchUpdateFirewallRuleResult = Shapes::StructureShape.new(name: 'BatchUpdateFirewallRuleResult')
    BlockOverrideDnsQueryType = Shapes::StringShape.new(name: 'BlockOverrideDnsQueryType')
    BlockOverrideTtl = Shapes::IntegerShape.new(name: 'BlockOverrideTtl')
    CRResourceStatus = Shapes::StringShape.new(name: 'CRResourceStatus')
    Cidr = Shapes::StringShape.new(name: 'Cidr')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConfidenceThreshold = Shapes::StringShape.new(name: 'ConfidenceThreshold')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAccessSourceInput = Shapes::StructureShape.new(name: 'CreateAccessSourceInput')
    CreateAccessSourceOutput = Shapes::StructureShape.new(name: 'CreateAccessSourceOutput')
    CreateAccessTokenInput = Shapes::StructureShape.new(name: 'CreateAccessTokenInput')
    CreateAccessTokenOutput = Shapes::StructureShape.new(name: 'CreateAccessTokenOutput')
    CreateDNSViewInput = Shapes::StructureShape.new(name: 'CreateDNSViewInput')
    CreateDNSViewOutput = Shapes::StructureShape.new(name: 'CreateDNSViewOutput')
    CreateFirewallDomainListInput = Shapes::StructureShape.new(name: 'CreateFirewallDomainListInput')
    CreateFirewallDomainListOutput = Shapes::StructureShape.new(name: 'CreateFirewallDomainListOutput')
    CreateFirewallRuleInput = Shapes::StructureShape.new(name: 'CreateFirewallRuleInput')
    CreateFirewallRuleOutput = Shapes::StructureShape.new(name: 'CreateFirewallRuleOutput')
    CreateGlobalResolverInput = Shapes::StructureShape.new(name: 'CreateGlobalResolverInput')
    CreateGlobalResolverOutput = Shapes::StructureShape.new(name: 'CreateGlobalResolverOutput')
    DNSViewSummary = Shapes::StructureShape.new(name: 'DNSViewSummary')
    DNSViews = Shapes::ListShape.new(name: 'DNSViews')
    DeleteAccessSourceInput = Shapes::StructureShape.new(name: 'DeleteAccessSourceInput')
    DeleteAccessSourceOutput = Shapes::StructureShape.new(name: 'DeleteAccessSourceOutput')
    DeleteAccessTokenInput = Shapes::StructureShape.new(name: 'DeleteAccessTokenInput')
    DeleteAccessTokenOutput = Shapes::StructureShape.new(name: 'DeleteAccessTokenOutput')
    DeleteDNSViewInput = Shapes::StructureShape.new(name: 'DeleteDNSViewInput')
    DeleteDNSViewOutput = Shapes::StructureShape.new(name: 'DeleteDNSViewOutput')
    DeleteFirewallDomainListInput = Shapes::StructureShape.new(name: 'DeleteFirewallDomainListInput')
    DeleteFirewallDomainListOutput = Shapes::StructureShape.new(name: 'DeleteFirewallDomainListOutput')
    DeleteFirewallRuleInput = Shapes::StructureShape.new(name: 'DeleteFirewallRuleInput')
    DeleteFirewallRuleOutput = Shapes::StructureShape.new(name: 'DeleteFirewallRuleOutput')
    DeleteGlobalResolverInput = Shapes::StructureShape.new(name: 'DeleteGlobalResolverInput')
    DeleteGlobalResolverOutput = Shapes::StructureShape.new(name: 'DeleteGlobalResolverOutput')
    DisableDNSViewInput = Shapes::StructureShape.new(name: 'DisableDNSViewInput')
    DisableDNSViewOutput = Shapes::StructureShape.new(name: 'DisableDNSViewOutput')
    DisassociateHostedZoneInput = Shapes::StructureShape.new(name: 'DisassociateHostedZoneInput')
    DisassociateHostedZoneOutput = Shapes::StructureShape.new(name: 'DisassociateHostedZoneOutput')
    DnsAdvancedProtection = Shapes::StringShape.new(name: 'DnsAdvancedProtection')
    DnsProtocol = Shapes::StringShape.new(name: 'DnsProtocol')
    DnsQueryType = Shapes::StringShape.new(name: 'DnsQueryType')
    DnsSecValidationType = Shapes::StringShape.new(name: 'DnsSecValidationType')
    Domain = Shapes::StringShape.new(name: 'Domain')
    Domains = Shapes::ListShape.new(name: 'Domains')
    EdnsClientSubnetType = Shapes::StringShape.new(name: 'EdnsClientSubnetType')
    EnableDNSViewInput = Shapes::StructureShape.new(name: 'EnableDNSViewInput')
    EnableDNSViewOutput = Shapes::StructureShape.new(name: 'EnableDNSViewOutput')
    Filters = Shapes::MapShape.new(name: 'Filters')
    FirewallBlockResponse = Shapes::StringShape.new(name: 'FirewallBlockResponse')
    FirewallDomainLists = Shapes::ListShape.new(name: 'FirewallDomainLists')
    FirewallDomainListsItem = Shapes::StructureShape.new(name: 'FirewallDomainListsItem')
    FirewallRuleAction = Shapes::StringShape.new(name: 'FirewallRuleAction')
    FirewallRulePriority = Shapes::IntegerShape.new(name: 'FirewallRulePriority')
    FirewallRules = Shapes::ListShape.new(name: 'FirewallRules')
    FirewallRulesFailOpenType = Shapes::StringShape.new(name: 'FirewallRulesFailOpenType')
    FirewallRulesItem = Shapes::StructureShape.new(name: 'FirewallRulesItem')
    GetAccessSourceInput = Shapes::StructureShape.new(name: 'GetAccessSourceInput')
    GetAccessSourceOutput = Shapes::StructureShape.new(name: 'GetAccessSourceOutput')
    GetAccessTokenInput = Shapes::StructureShape.new(name: 'GetAccessTokenInput')
    GetAccessTokenOutput = Shapes::StructureShape.new(name: 'GetAccessTokenOutput')
    GetDNSViewInput = Shapes::StructureShape.new(name: 'GetDNSViewInput')
    GetDNSViewOutput = Shapes::StructureShape.new(name: 'GetDNSViewOutput')
    GetFirewallDomainListInput = Shapes::StructureShape.new(name: 'GetFirewallDomainListInput')
    GetFirewallDomainListOutput = Shapes::StructureShape.new(name: 'GetFirewallDomainListOutput')
    GetFirewallRuleInput = Shapes::StructureShape.new(name: 'GetFirewallRuleInput')
    GetFirewallRuleOutput = Shapes::StructureShape.new(name: 'GetFirewallRuleOutput')
    GetGlobalResolverInput = Shapes::StructureShape.new(name: 'GetGlobalResolverInput')
    GetGlobalResolverOutput = Shapes::StructureShape.new(name: 'GetGlobalResolverOutput')
    GetHostedZoneAssociationInput = Shapes::StructureShape.new(name: 'GetHostedZoneAssociationInput')
    GetHostedZoneAssociationOutput = Shapes::StructureShape.new(name: 'GetHostedZoneAssociationOutput')
    GetManagedFirewallDomainListInput = Shapes::StructureShape.new(name: 'GetManagedFirewallDomainListInput')
    GetManagedFirewallDomainListOutput = Shapes::StructureShape.new(name: 'GetManagedFirewallDomainListOutput')
    GlobalResolvers = Shapes::ListShape.new(name: 'GlobalResolvers')
    GlobalResolversItem = Shapes::StructureShape.new(name: 'GlobalResolversItem')
    HostedZoneAssociationStatus = Shapes::StringShape.new(name: 'HostedZoneAssociationStatus')
    HostedZoneAssociationSummary = Shapes::StructureShape.new(name: 'HostedZoneAssociationSummary')
    HostedZoneAssociations = Shapes::ListShape.new(name: 'HostedZoneAssociations')
    HostedZoneId = Shapes::StringShape.new(name: 'HostedZoneId')
    HostedZoneName = Shapes::StringShape.new(name: 'HostedZoneName')
    IPv4Address = Shapes::StringShape.new(name: 'IPv4Address')
    IPv4Addresses = Shapes::ListShape.new(name: 'IPv4Addresses')
    ISO8601TimeString = Shapes::TimestampShape.new(name: 'ISO8601TimeString', timestampFormat: "iso8601")
    ImportFirewallDomainsInput = Shapes::StructureShape.new(name: 'ImportFirewallDomainsInput')
    ImportFirewallDomainsOutput = Shapes::StructureShape.new(name: 'ImportFirewallDomainsOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    ListAccessSourcesInput = Shapes::StructureShape.new(name: 'ListAccessSourcesInput')
    ListAccessSourcesOutput = Shapes::StructureShape.new(name: 'ListAccessSourcesOutput')
    ListAccessTokensInput = Shapes::StructureShape.new(name: 'ListAccessTokensInput')
    ListAccessTokensOutput = Shapes::StructureShape.new(name: 'ListAccessTokensOutput')
    ListDNSViewsInput = Shapes::StructureShape.new(name: 'ListDNSViewsInput')
    ListDNSViewsOutput = Shapes::StructureShape.new(name: 'ListDNSViewsOutput')
    ListFirewallDomainListsInput = Shapes::StructureShape.new(name: 'ListFirewallDomainListsInput')
    ListFirewallDomainListsOutput = Shapes::StructureShape.new(name: 'ListFirewallDomainListsOutput')
    ListFirewallDomainsInput = Shapes::StructureShape.new(name: 'ListFirewallDomainsInput')
    ListFirewallDomainsOutput = Shapes::StructureShape.new(name: 'ListFirewallDomainsOutput')
    ListFirewallRulesInput = Shapes::StructureShape.new(name: 'ListFirewallRulesInput')
    ListFirewallRulesOutput = Shapes::StructureShape.new(name: 'ListFirewallRulesOutput')
    ListGlobalResolversInput = Shapes::StructureShape.new(name: 'ListGlobalResolversInput')
    ListGlobalResolversOutput = Shapes::StructureShape.new(name: 'ListGlobalResolversOutput')
    ListHostedZoneAssociationsInput = Shapes::StructureShape.new(name: 'ListHostedZoneAssociationsInput')
    ListHostedZoneAssociationsOutput = Shapes::StructureShape.new(name: 'ListHostedZoneAssociationsOutput')
    ListManagedFirewallDomainListsInput = Shapes::StructureShape.new(name: 'ListManagedFirewallDomainListsInput')
    ListManagedFirewallDomainListsOutput = Shapes::StructureShape.new(name: 'ListManagedFirewallDomainListsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManagedFirewallDomainLists = Shapes::ListShape.new(name: 'ManagedFirewallDomainLists')
    ManagedFirewallDomainListsItem = Shapes::StructureShape.new(name: 'ManagedFirewallDomainListsItem')
    ProfileResourceStatus = Shapes::StringShape.new(name: 'ProfileResourceStatus')
    Region = Shapes::StringShape.new(name: 'Region')
    Regions = Shapes::ListShape.new(name: 'Regions')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNameShort = Shapes::StringShape.new(name: 'ResourceNameShort')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Sni = Shapes::StringShape.new(name: 'Sni')
    String = Shapes::StringShape.new(name: 'String')
    Strings = Shapes::ListShape.new(name: 'Strings')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TokenStatus = Shapes::StringShape.new(name: 'TokenStatus')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccessSourceInput = Shapes::StructureShape.new(name: 'UpdateAccessSourceInput')
    UpdateAccessSourceOutput = Shapes::StructureShape.new(name: 'UpdateAccessSourceOutput')
    UpdateAccessTokenInput = Shapes::StructureShape.new(name: 'UpdateAccessTokenInput')
    UpdateAccessTokenOutput = Shapes::StructureShape.new(name: 'UpdateAccessTokenOutput')
    UpdateDNSViewInput = Shapes::StructureShape.new(name: 'UpdateDNSViewInput')
    UpdateDNSViewOutput = Shapes::StructureShape.new(name: 'UpdateDNSViewOutput')
    UpdateFirewallDomainsInput = Shapes::StructureShape.new(name: 'UpdateFirewallDomainsInput')
    UpdateFirewallDomainsOutput = Shapes::StructureShape.new(name: 'UpdateFirewallDomainsOutput')
    UpdateFirewallRuleInput = Shapes::StructureShape.new(name: 'UpdateFirewallRuleInput')
    UpdateFirewallRuleOutput = Shapes::StructureShape.new(name: 'UpdateFirewallRuleOutput')
    UpdateGlobalResolverInput = Shapes::StructureShape.new(name: 'UpdateGlobalResolverInput')
    UpdateGlobalResolverOutput = Shapes::StructureShape.new(name: 'UpdateGlobalResolverOutput')
    UpdateHostedZoneAssociationInput = Shapes::StructureShape.new(name: 'UpdateHostedZoneAssociationInput')
    UpdateHostedZoneAssociationOutput = Shapes::StructureShape.new(name: 'UpdateHostedZoneAssociationOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessSources.member = Shapes::ShapeRef.new(shape: AccessSourcesItem)

    AccessSourcesItem.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    AccessSourcesItem.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, required: true, location_name: "cidr"))
    AccessSourcesItem.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    AccessSourcesItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    AccessSourcesItem.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, required: true, location_name: "ipAddressType"))
    AccessSourcesItem.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    AccessSourcesItem.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    AccessSourcesItem.add_member(:protocol, Shapes::ShapeRef.new(shape: DnsProtocol, required: true, location_name: "protocol"))
    AccessSourcesItem.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    AccessSourcesItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    AccessSourcesItem.struct_class = Types::AccessSourcesItem

    AccessTokenItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    AccessTokenItem.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    AccessTokenItem.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    AccessTokenItem.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    AccessTokenItem.add_member(:expires_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "expiresAt"))
    AccessTokenItem.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    AccessTokenItem.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    AccessTokenItem.add_member(:status, Shapes::ShapeRef.new(shape: TokenStatus, required: true, location_name: "status"))
    AccessTokenItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    AccessTokenItem.struct_class = Types::AccessTokenItem

    AccessTokens.member = Shapes::ShapeRef.new(shape: AccessTokenItem)

    AssociateHostedZoneInput.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, required: true, location: "uri", location_name: "hostedZoneId"))
    AssociateHostedZoneInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    AssociateHostedZoneInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    AssociateHostedZoneInput.struct_class = Types::AssociateHostedZoneInput

    AssociateHostedZoneOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    AssociateHostedZoneOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    AssociateHostedZoneOutput.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, required: true, location_name: "hostedZoneId"))
    AssociateHostedZoneOutput.add_member(:hosted_zone_name, Shapes::ShapeRef.new(shape: HostedZoneName, required: true, location_name: "hostedZoneName"))
    AssociateHostedZoneOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    AssociateHostedZoneOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    AssociateHostedZoneOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    AssociateHostedZoneOutput.add_member(:status, Shapes::ShapeRef.new(shape: HostedZoneAssociationStatus, required: true, location_name: "status"))
    AssociateHostedZoneOutput.struct_class = Types::AssociateHostedZoneOutput

    BatchCreateFirewallRuleInput.add_member(:firewall_rules, Shapes::ShapeRef.new(shape: BatchCreateFirewallRuleInputItems, required: true, location_name: "firewallRules"))
    BatchCreateFirewallRuleInput.struct_class = Types::BatchCreateFirewallRuleInput

    BatchCreateFirewallRuleInputItem.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, required: true, location_name: "action"))
    BatchCreateFirewallRuleInputItem.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    BatchCreateFirewallRuleInputItem.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    BatchCreateFirewallRuleInputItem.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    BatchCreateFirewallRuleInputItem.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    BatchCreateFirewallRuleInputItem.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    BatchCreateFirewallRuleInputItem.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    BatchCreateFirewallRuleInputItem.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    BatchCreateFirewallRuleInputItem.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    BatchCreateFirewallRuleInputItem.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    BatchCreateFirewallRuleInputItem.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    BatchCreateFirewallRuleInputItem.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, location_name: "priority"))
    BatchCreateFirewallRuleInputItem.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    BatchCreateFirewallRuleInputItem.add_member(:q_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "qType"))
    BatchCreateFirewallRuleInputItem.struct_class = Types::BatchCreateFirewallRuleInputItem

    BatchCreateFirewallRuleInputItems.member = Shapes::ShapeRef.new(shape: BatchCreateFirewallRuleInputItem)

    BatchCreateFirewallRuleOutput.add_member(:failures, Shapes::ShapeRef.new(shape: BatchCreateFirewallRuleOutputItems, required: true, location_name: "failures"))
    BatchCreateFirewallRuleOutput.add_member(:successes, Shapes::ShapeRef.new(shape: BatchCreateFirewallRuleOutputItems, required: true, location_name: "successes"))
    BatchCreateFirewallRuleOutput.struct_class = Types::BatchCreateFirewallRuleOutput

    BatchCreateFirewallRuleOutputItem.add_member(:firewall_rule, Shapes::ShapeRef.new(shape: BatchCreateFirewallRuleResult, required: true, location_name: "firewallRule"))
    BatchCreateFirewallRuleOutputItem.add_member(:code, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "code"))
    BatchCreateFirewallRuleOutputItem.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BatchCreateFirewallRuleOutputItem.struct_class = Types::BatchCreateFirewallRuleOutputItem

    BatchCreateFirewallRuleOutputItems.member = Shapes::ShapeRef.new(shape: BatchCreateFirewallRuleOutputItem)

    BatchCreateFirewallRuleResult.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, required: true, location_name: "action"))
    BatchCreateFirewallRuleResult.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    BatchCreateFirewallRuleResult.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    BatchCreateFirewallRuleResult.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    BatchCreateFirewallRuleResult.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    BatchCreateFirewallRuleResult.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    BatchCreateFirewallRuleResult.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    BatchCreateFirewallRuleResult.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, location_name: "createdAt"))
    BatchCreateFirewallRuleResult.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    BatchCreateFirewallRuleResult.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    BatchCreateFirewallRuleResult.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    BatchCreateFirewallRuleResult.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    BatchCreateFirewallRuleResult.add_member(:managed_domain_list_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "managedDomainListName"))
    BatchCreateFirewallRuleResult.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    BatchCreateFirewallRuleResult.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, location_name: "priority"))
    BatchCreateFirewallRuleResult.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    BatchCreateFirewallRuleResult.add_member(:query_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "queryType"))
    BatchCreateFirewallRuleResult.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, location_name: "status"))
    BatchCreateFirewallRuleResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, location_name: "updatedAt"))
    BatchCreateFirewallRuleResult.struct_class = Types::BatchCreateFirewallRuleResult

    BatchDeleteFirewallRuleInput.add_member(:firewall_rules, Shapes::ShapeRef.new(shape: BatchDeleteFirewallRuleInputItems, required: true, location_name: "firewallRules"))
    BatchDeleteFirewallRuleInput.struct_class = Types::BatchDeleteFirewallRuleInput

    BatchDeleteFirewallRuleInputItem.add_member(:firewall_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "firewallRuleId"))
    BatchDeleteFirewallRuleInputItem.struct_class = Types::BatchDeleteFirewallRuleInputItem

    BatchDeleteFirewallRuleInputItems.member = Shapes::ShapeRef.new(shape: BatchDeleteFirewallRuleInputItem)

    BatchDeleteFirewallRuleOutput.add_member(:failures, Shapes::ShapeRef.new(shape: BatchDeleteFirewallRuleOutputItems, required: true, location_name: "failures"))
    BatchDeleteFirewallRuleOutput.add_member(:successes, Shapes::ShapeRef.new(shape: BatchDeleteFirewallRuleOutputItems, required: true, location_name: "successes"))
    BatchDeleteFirewallRuleOutput.struct_class = Types::BatchDeleteFirewallRuleOutput

    BatchDeleteFirewallRuleOutputItem.add_member(:firewall_rule, Shapes::ShapeRef.new(shape: BatchDeleteFirewallRuleResult, required: true, location_name: "firewallRule"))
    BatchDeleteFirewallRuleOutputItem.add_member(:code, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "code"))
    BatchDeleteFirewallRuleOutputItem.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BatchDeleteFirewallRuleOutputItem.struct_class = Types::BatchDeleteFirewallRuleOutputItem

    BatchDeleteFirewallRuleOutputItems.member = Shapes::ShapeRef.new(shape: BatchDeleteFirewallRuleOutputItem)

    BatchDeleteFirewallRuleResult.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    BatchDeleteFirewallRuleResult.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    BatchDeleteFirewallRuleResult.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    BatchDeleteFirewallRuleResult.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, location_name: "status"))
    BatchDeleteFirewallRuleResult.struct_class = Types::BatchDeleteFirewallRuleResult

    BatchUpdateFirewallRuleInput.add_member(:firewall_rules, Shapes::ShapeRef.new(shape: BatchUpdateFirewallRuleInputItems, required: true, location_name: "firewallRules"))
    BatchUpdateFirewallRuleInput.struct_class = Types::BatchUpdateFirewallRuleInput

    BatchUpdateFirewallRuleInputItem.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, location_name: "action"))
    BatchUpdateFirewallRuleInputItem.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    BatchUpdateFirewallRuleInputItem.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    BatchUpdateFirewallRuleInputItem.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    BatchUpdateFirewallRuleInputItem.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    BatchUpdateFirewallRuleInputItem.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    BatchUpdateFirewallRuleInputItem.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    BatchUpdateFirewallRuleInputItem.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    BatchUpdateFirewallRuleInputItem.add_member(:firewall_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "firewallRuleId"))
    BatchUpdateFirewallRuleInputItem.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    BatchUpdateFirewallRuleInputItem.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, location_name: "priority"))
    BatchUpdateFirewallRuleInputItem.struct_class = Types::BatchUpdateFirewallRuleInputItem

    BatchUpdateFirewallRuleInputItems.member = Shapes::ShapeRef.new(shape: BatchUpdateFirewallRuleInputItem)

    BatchUpdateFirewallRuleOutput.add_member(:failures, Shapes::ShapeRef.new(shape: BatchUpdateFirewallRuleOutputItems, required: true, location_name: "failures"))
    BatchUpdateFirewallRuleOutput.add_member(:successes, Shapes::ShapeRef.new(shape: BatchUpdateFirewallRuleOutputItems, required: true, location_name: "successes"))
    BatchUpdateFirewallRuleOutput.struct_class = Types::BatchUpdateFirewallRuleOutput

    BatchUpdateFirewallRuleOutputItem.add_member(:firewall_rule, Shapes::ShapeRef.new(shape: BatchUpdateFirewallRuleResult, required: true, location_name: "firewallRule"))
    BatchUpdateFirewallRuleOutputItem.add_member(:code, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "code"))
    BatchUpdateFirewallRuleOutputItem.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BatchUpdateFirewallRuleOutputItem.struct_class = Types::BatchUpdateFirewallRuleOutputItem

    BatchUpdateFirewallRuleOutputItems.member = Shapes::ShapeRef.new(shape: BatchUpdateFirewallRuleOutputItem)

    BatchUpdateFirewallRuleResult.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, location_name: "action"))
    BatchUpdateFirewallRuleResult.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    BatchUpdateFirewallRuleResult.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    BatchUpdateFirewallRuleResult.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    BatchUpdateFirewallRuleResult.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    BatchUpdateFirewallRuleResult.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    BatchUpdateFirewallRuleResult.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    BatchUpdateFirewallRuleResult.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, location_name: "createdAt"))
    BatchUpdateFirewallRuleResult.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    BatchUpdateFirewallRuleResult.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    BatchUpdateFirewallRuleResult.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    BatchUpdateFirewallRuleResult.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    BatchUpdateFirewallRuleResult.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    BatchUpdateFirewallRuleResult.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, location_name: "priority"))
    BatchUpdateFirewallRuleResult.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "dnsViewId"))
    BatchUpdateFirewallRuleResult.add_member(:query_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "queryType"))
    BatchUpdateFirewallRuleResult.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, location_name: "status"))
    BatchUpdateFirewallRuleResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, location_name: "updatedAt"))
    BatchUpdateFirewallRuleResult.struct_class = Types::BatchUpdateFirewallRuleResult

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccessSourceInput.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, required: true, location_name: "cidr"))
    CreateAccessSourceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAccessSourceInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateAccessSourceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    CreateAccessSourceInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    CreateAccessSourceInput.add_member(:protocol, Shapes::ShapeRef.new(shape: DnsProtocol, required: true, location_name: "protocol"))
    CreateAccessSourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAccessSourceInput.struct_class = Types::CreateAccessSourceInput

    CreateAccessSourceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    CreateAccessSourceOutput.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, required: true, location_name: "cidr"))
    CreateAccessSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    CreateAccessSourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateAccessSourceOutput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, required: true, location_name: "ipAddressType"))
    CreateAccessSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    CreateAccessSourceOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    CreateAccessSourceOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: DnsProtocol, required: true, location_name: "protocol"))
    CreateAccessSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    CreateAccessSourceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    CreateAccessSourceOutput.struct_class = Types::CreateAccessSourceOutput

    CreateAccessTokenInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAccessTokenInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "dnsViewId"))
    CreateAccessTokenInput.add_member(:expires_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, location_name: "expiresAt"))
    CreateAccessTokenInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    CreateAccessTokenInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAccessTokenInput.struct_class = Types::CreateAccessTokenInput

    CreateAccessTokenOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateAccessTokenOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    CreateAccessTokenOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateAccessTokenOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    CreateAccessTokenOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    CreateAccessTokenOutput.add_member(:expires_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "expiresAt"))
    CreateAccessTokenOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    CreateAccessTokenOutput.add_member(:status, Shapes::ShapeRef.new(shape: TokenStatus, required: true, location_name: "status"))
    CreateAccessTokenOutput.add_member(:value, Shapes::ShapeRef.new(shape: AccessTokenValue, required: true, location_name: "value"))
    CreateAccessTokenOutput.struct_class = Types::CreateAccessTokenOutput

    CreateDNSViewInput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "globalResolverId"))
    CreateDNSViewInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDNSViewInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateDNSViewInput.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, location_name: "dnssecValidation"))
    CreateDNSViewInput.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, location_name: "ednsClientSubnet"))
    CreateDNSViewInput.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, location_name: "firewallRulesFailOpen"))
    CreateDNSViewInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateDNSViewInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDNSViewInput.struct_class = Types::CreateDNSViewInput

    CreateDNSViewOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateDNSViewOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    CreateDNSViewOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateDNSViewOutput.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, required: true, location_name: "dnssecValidation"))
    CreateDNSViewOutput.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, required: true, location_name: "ednsClientSubnet"))
    CreateDNSViewOutput.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, required: true, location_name: "firewallRulesFailOpen"))
    CreateDNSViewOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateDNSViewOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateDNSViewOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    CreateDNSViewOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    CreateDNSViewOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    CreateDNSViewOutput.add_member(:status, Shapes::ShapeRef.new(shape: ProfileResourceStatus, required: true, location_name: "status"))
    CreateDNSViewOutput.struct_class = Types::CreateDNSViewOutput

    CreateFirewallDomainListInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateFirewallDomainListInput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "globalResolverId"))
    CreateFirewallDomainListInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateFirewallDomainListInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFirewallDomainListInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateFirewallDomainListInput.struct_class = Types::CreateFirewallDomainListInput

    CreateFirewallDomainListOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    CreateFirewallDomainListOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    CreateFirewallDomainListOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    CreateFirewallDomainListOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateFirewallDomainListOutput.add_member(:domain_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "domainCount"))
    CreateFirewallDomainListOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateFirewallDomainListOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFirewallDomainListOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    CreateFirewallDomainListOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    CreateFirewallDomainListOutput.struct_class = Types::CreateFirewallDomainListOutput

    CreateFirewallRuleInput.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, required: true, location_name: "action"))
    CreateFirewallRuleInput.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    CreateFirewallRuleInput.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    CreateFirewallRuleInput.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    CreateFirewallRuleInput.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    CreateFirewallRuleInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateFirewallRuleInput.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    CreateFirewallRuleInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateFirewallRuleInput.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    CreateFirewallRuleInput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    CreateFirewallRuleInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFirewallRuleInput.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, location_name: "priority"))
    CreateFirewallRuleInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    CreateFirewallRuleInput.add_member(:q_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "qType"))
    CreateFirewallRuleInput.struct_class = Types::CreateFirewallRuleInput

    CreateFirewallRuleOutput.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, required: true, location_name: "action"))
    CreateFirewallRuleOutput.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    CreateFirewallRuleOutput.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    CreateFirewallRuleOutput.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    CreateFirewallRuleOutput.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    CreateFirewallRuleOutput.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    CreateFirewallRuleOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    CreateFirewallRuleOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateFirewallRuleOutput.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    CreateFirewallRuleOutput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    CreateFirewallRuleOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateFirewallRuleOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFirewallRuleOutput.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, required: true, location_name: "priority"))
    CreateFirewallRuleOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    CreateFirewallRuleOutput.add_member(:query_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "queryType"))
    CreateFirewallRuleOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    CreateFirewallRuleOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    CreateFirewallRuleOutput.struct_class = Types::CreateFirewallRuleOutput

    CreateGlobalResolverInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateGlobalResolverInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateGlobalResolverInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateGlobalResolverInput.add_member(:observability_region, Shapes::ShapeRef.new(shape: Region, location_name: "observabilityRegion"))
    CreateGlobalResolverInput.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    CreateGlobalResolverInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateGlobalResolverInput.struct_class = Types::CreateGlobalResolverInput

    CreateGlobalResolverOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateGlobalResolverOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    CreateGlobalResolverOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    CreateGlobalResolverOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    CreateGlobalResolverOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateGlobalResolverOutput.add_member(:dns_name, Shapes::ShapeRef.new(shape: Sni, required: true, location_name: "dnsName"))
    CreateGlobalResolverOutput.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: IPv4Addresses, required: true, location_name: "ipv4Addresses"))
    CreateGlobalResolverOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateGlobalResolverOutput.add_member(:observability_region, Shapes::ShapeRef.new(shape: Region, location_name: "observabilityRegion"))
    CreateGlobalResolverOutput.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    CreateGlobalResolverOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    CreateGlobalResolverOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    CreateGlobalResolverOutput.struct_class = Types::CreateGlobalResolverOutput

    DNSViewSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DNSViewSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    DNSViewSummary.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    DNSViewSummary.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, required: true, location_name: "dnssecValidation"))
    DNSViewSummary.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, required: true, location_name: "ednsClientSubnet"))
    DNSViewSummary.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, required: true, location_name: "firewallRulesFailOpen"))
    DNSViewSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DNSViewSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    DNSViewSummary.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    DNSViewSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    DNSViewSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    DNSViewSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProfileResourceStatus, required: true, location_name: "status"))
    DNSViewSummary.struct_class = Types::DNSViewSummary

    DNSViews.member = Shapes::ShapeRef.new(shape: DNSViewSummary)

    DeleteAccessSourceInput.add_member(:access_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "accessSourceId"))
    DeleteAccessSourceInput.struct_class = Types::DeleteAccessSourceInput

    DeleteAccessSourceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    DeleteAccessSourceOutput.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, required: true, location_name: "cidr"))
    DeleteAccessSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    DeleteAccessSourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DeleteAccessSourceOutput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, required: true, location_name: "ipAddressType"))
    DeleteAccessSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    DeleteAccessSourceOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    DeleteAccessSourceOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: DnsProtocol, required: true, location_name: "protocol"))
    DeleteAccessSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    DeleteAccessSourceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    DeleteAccessSourceOutput.struct_class = Types::DeleteAccessSourceOutput

    DeleteAccessTokenInput.add_member(:access_token_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "accessTokenId"))
    DeleteAccessTokenInput.struct_class = Types::DeleteAccessTokenInput

    DeleteAccessTokenOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DeleteAccessTokenOutput.add_member(:status, Shapes::ShapeRef.new(shape: TokenStatus, required: true, location_name: "status"))
    DeleteAccessTokenOutput.add_member(:deleted_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "deletedAt"))
    DeleteAccessTokenOutput.struct_class = Types::DeleteAccessTokenOutput

    DeleteDNSViewInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "dnsViewId"))
    DeleteDNSViewInput.struct_class = Types::DeleteDNSViewInput

    DeleteDNSViewOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DeleteDNSViewOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    DeleteDNSViewOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    DeleteDNSViewOutput.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, required: true, location_name: "dnssecValidation"))
    DeleteDNSViewOutput.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, required: true, location_name: "ednsClientSubnet"))
    DeleteDNSViewOutput.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, required: true, location_name: "firewallRulesFailOpen"))
    DeleteDNSViewOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteDNSViewOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    DeleteDNSViewOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    DeleteDNSViewOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    DeleteDNSViewOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    DeleteDNSViewOutput.add_member(:status, Shapes::ShapeRef.new(shape: ProfileResourceStatus, required: true, location_name: "status"))
    DeleteDNSViewOutput.struct_class = Types::DeleteDNSViewOutput

    DeleteFirewallDomainListInput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "firewallDomainListId"))
    DeleteFirewallDomainListInput.struct_class = Types::DeleteFirewallDomainListInput

    DeleteFirewallDomainListOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    DeleteFirewallDomainListOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DeleteFirewallDomainListOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteFirewallDomainListOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    DeleteFirewallDomainListOutput.struct_class = Types::DeleteFirewallDomainListOutput

    DeleteFirewallRuleInput.add_member(:firewall_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "firewallRuleId"))
    DeleteFirewallRuleInput.struct_class = Types::DeleteFirewallRuleInput

    DeleteFirewallRuleOutput.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, required: true, location_name: "action"))
    DeleteFirewallRuleOutput.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    DeleteFirewallRuleOutput.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    DeleteFirewallRuleOutput.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    DeleteFirewallRuleOutput.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    DeleteFirewallRuleOutput.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    DeleteFirewallRuleOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    DeleteFirewallRuleOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    DeleteFirewallRuleOutput.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    DeleteFirewallRuleOutput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    DeleteFirewallRuleOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DeleteFirewallRuleOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteFirewallRuleOutput.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, required: true, location_name: "priority"))
    DeleteFirewallRuleOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    DeleteFirewallRuleOutput.add_member(:query_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "queryType"))
    DeleteFirewallRuleOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    DeleteFirewallRuleOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    DeleteFirewallRuleOutput.struct_class = Types::DeleteFirewallRuleOutput

    DeleteGlobalResolverInput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "globalResolverId"))
    DeleteGlobalResolverInput.struct_class = Types::DeleteGlobalResolverInput

    DeleteGlobalResolverOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DeleteGlobalResolverOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    DeleteGlobalResolverOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    DeleteGlobalResolverOutput.add_member(:dns_name, Shapes::ShapeRef.new(shape: Sni, required: true, location_name: "dnsName"))
    DeleteGlobalResolverOutput.add_member(:observability_region, Shapes::ShapeRef.new(shape: Region, location_name: "observabilityRegion"))
    DeleteGlobalResolverOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DeleteGlobalResolverOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    DeleteGlobalResolverOutput.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    DeleteGlobalResolverOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    DeleteGlobalResolverOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    DeleteGlobalResolverOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    DeleteGlobalResolverOutput.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: IPv4Addresses, required: true, location_name: "ipv4Addresses"))
    DeleteGlobalResolverOutput.struct_class = Types::DeleteGlobalResolverOutput

    DisableDNSViewInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "dnsViewId"))
    DisableDNSViewInput.struct_class = Types::DisableDNSViewInput

    DisableDNSViewOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DisableDNSViewOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    DisableDNSViewOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    DisableDNSViewOutput.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, required: true, location_name: "dnssecValidation"))
    DisableDNSViewOutput.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, required: true, location_name: "ednsClientSubnet"))
    DisableDNSViewOutput.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, required: true, location_name: "firewallRulesFailOpen"))
    DisableDNSViewOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DisableDNSViewOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    DisableDNSViewOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    DisableDNSViewOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    DisableDNSViewOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    DisableDNSViewOutput.add_member(:status, Shapes::ShapeRef.new(shape: ProfileResourceStatus, required: true, location_name: "status"))
    DisableDNSViewOutput.struct_class = Types::DisableDNSViewOutput

    DisassociateHostedZoneInput.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, required: true, location: "uri", location_name: "hostedZoneId"))
    DisassociateHostedZoneInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    DisassociateHostedZoneInput.struct_class = Types::DisassociateHostedZoneInput

    DisassociateHostedZoneOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    DisassociateHostedZoneOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    DisassociateHostedZoneOutput.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, required: true, location_name: "hostedZoneId"))
    DisassociateHostedZoneOutput.add_member(:hosted_zone_name, Shapes::ShapeRef.new(shape: HostedZoneName, required: true, location_name: "hostedZoneName"))
    DisassociateHostedZoneOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    DisassociateHostedZoneOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    DisassociateHostedZoneOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    DisassociateHostedZoneOutput.add_member(:status, Shapes::ShapeRef.new(shape: HostedZoneAssociationStatus, required: true, location_name: "status"))
    DisassociateHostedZoneOutput.struct_class = Types::DisassociateHostedZoneOutput

    Domains.member = Shapes::ShapeRef.new(shape: Domain)

    EnableDNSViewInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "dnsViewId"))
    EnableDNSViewInput.struct_class = Types::EnableDNSViewInput

    EnableDNSViewOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    EnableDNSViewOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    EnableDNSViewOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    EnableDNSViewOutput.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, required: true, location_name: "dnssecValidation"))
    EnableDNSViewOutput.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, required: true, location_name: "ednsClientSubnet"))
    EnableDNSViewOutput.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, required: true, location_name: "firewallRulesFailOpen"))
    EnableDNSViewOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    EnableDNSViewOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    EnableDNSViewOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    EnableDNSViewOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    EnableDNSViewOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    EnableDNSViewOutput.add_member(:status, Shapes::ShapeRef.new(shape: ProfileResourceStatus, required: true, location_name: "status"))
    EnableDNSViewOutput.struct_class = Types::EnableDNSViewOutput

    Filters.key = Shapes::ShapeRef.new(shape: String)
    Filters.value = Shapes::ShapeRef.new(shape: Strings)

    FirewallDomainLists.member = Shapes::ShapeRef.new(shape: FirewallDomainListsItem)

    FirewallDomainListsItem.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    FirewallDomainListsItem.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    FirewallDomainListsItem.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    FirewallDomainListsItem.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    FirewallDomainListsItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    FirewallDomainListsItem.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    FirewallDomainListsItem.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    FirewallDomainListsItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    FirewallDomainListsItem.struct_class = Types::FirewallDomainListsItem

    FirewallRules.member = Shapes::ShapeRef.new(shape: FirewallRulesItem)

    FirewallRulesItem.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, required: true, location_name: "action"))
    FirewallRulesItem.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    FirewallRulesItem.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    FirewallRulesItem.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    FirewallRulesItem.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    FirewallRulesItem.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    FirewallRulesItem.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    FirewallRulesItem.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    FirewallRulesItem.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    FirewallRulesItem.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    FirewallRulesItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    FirewallRulesItem.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    FirewallRulesItem.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, required: true, location_name: "priority"))
    FirewallRulesItem.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    FirewallRulesItem.add_member(:query_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "queryType"))
    FirewallRulesItem.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    FirewallRulesItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    FirewallRulesItem.struct_class = Types::FirewallRulesItem

    GetAccessSourceInput.add_member(:access_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "accessSourceId"))
    GetAccessSourceInput.struct_class = Types::GetAccessSourceInput

    GetAccessSourceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    GetAccessSourceOutput.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, required: true, location_name: "cidr"))
    GetAccessSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    GetAccessSourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetAccessSourceOutput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, required: true, location_name: "ipAddressType"))
    GetAccessSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    GetAccessSourceOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    GetAccessSourceOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: DnsProtocol, required: true, location_name: "protocol"))
    GetAccessSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    GetAccessSourceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    GetAccessSourceOutput.struct_class = Types::GetAccessSourceOutput

    GetAccessTokenInput.add_member(:access_token_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "accessTokenId"))
    GetAccessTokenInput.struct_class = Types::GetAccessTokenInput

    GetAccessTokenOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetAccessTokenOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    GetAccessTokenOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    GetAccessTokenOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    GetAccessTokenOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    GetAccessTokenOutput.add_member(:expires_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "expiresAt"))
    GetAccessTokenOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    GetAccessTokenOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    GetAccessTokenOutput.add_member(:status, Shapes::ShapeRef.new(shape: TokenStatus, required: true, location_name: "status"))
    GetAccessTokenOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    GetAccessTokenOutput.add_member(:value, Shapes::ShapeRef.new(shape: AccessTokenValue, required: true, location_name: "value"))
    GetAccessTokenOutput.struct_class = Types::GetAccessTokenOutput

    GetDNSViewInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "dnsViewId"))
    GetDNSViewInput.struct_class = Types::GetDNSViewInput

    GetDNSViewOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetDNSViewOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    GetDNSViewOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    GetDNSViewOutput.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, required: true, location_name: "dnssecValidation"))
    GetDNSViewOutput.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, required: true, location_name: "ednsClientSubnet"))
    GetDNSViewOutput.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, required: true, location_name: "firewallRulesFailOpen"))
    GetDNSViewOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetDNSViewOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetDNSViewOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    GetDNSViewOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    GetDNSViewOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    GetDNSViewOutput.add_member(:status, Shapes::ShapeRef.new(shape: ProfileResourceStatus, required: true, location_name: "status"))
    GetDNSViewOutput.struct_class = Types::GetDNSViewOutput

    GetFirewallDomainListInput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "firewallDomainListId"))
    GetFirewallDomainListInput.struct_class = Types::GetFirewallDomainListInput

    GetFirewallDomainListOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    GetFirewallDomainListOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    GetFirewallDomainListOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    GetFirewallDomainListOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    GetFirewallDomainListOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetFirewallDomainListOutput.add_member(:domain_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "domainCount"))
    GetFirewallDomainListOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetFirewallDomainListOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetFirewallDomainListOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    GetFirewallDomainListOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    GetFirewallDomainListOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    GetFirewallDomainListOutput.struct_class = Types::GetFirewallDomainListOutput

    GetFirewallRuleInput.add_member(:firewall_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "firewallRuleId"))
    GetFirewallRuleInput.struct_class = Types::GetFirewallRuleInput

    GetFirewallRuleOutput.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, required: true, location_name: "action"))
    GetFirewallRuleOutput.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    GetFirewallRuleOutput.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    GetFirewallRuleOutput.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    GetFirewallRuleOutput.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    GetFirewallRuleOutput.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    GetFirewallRuleOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    GetFirewallRuleOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetFirewallRuleOutput.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    GetFirewallRuleOutput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    GetFirewallRuleOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetFirewallRuleOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetFirewallRuleOutput.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, required: true, location_name: "priority"))
    GetFirewallRuleOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    GetFirewallRuleOutput.add_member(:query_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "queryType"))
    GetFirewallRuleOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    GetFirewallRuleOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    GetFirewallRuleOutput.struct_class = Types::GetFirewallRuleOutput

    GetGlobalResolverInput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "globalResolverId"))
    GetGlobalResolverInput.struct_class = Types::GetGlobalResolverInput

    GetGlobalResolverOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetGlobalResolverOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    GetGlobalResolverOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    GetGlobalResolverOutput.add_member(:dns_name, Shapes::ShapeRef.new(shape: Sni, required: true, location_name: "dnsName"))
    GetGlobalResolverOutput.add_member(:observability_region, Shapes::ShapeRef.new(shape: Region, location_name: "observabilityRegion"))
    GetGlobalResolverOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetGlobalResolverOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetGlobalResolverOutput.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    GetGlobalResolverOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    GetGlobalResolverOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    GetGlobalResolverOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    GetGlobalResolverOutput.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: IPv4Addresses, required: true, location_name: "ipv4Addresses"))
    GetGlobalResolverOutput.struct_class = Types::GetGlobalResolverOutput

    GetHostedZoneAssociationInput.add_member(:hosted_zone_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "hostedZoneAssociationId"))
    GetHostedZoneAssociationInput.struct_class = Types::GetHostedZoneAssociationInput

    GetHostedZoneAssociationOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetHostedZoneAssociationOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    GetHostedZoneAssociationOutput.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, required: true, location_name: "hostedZoneId"))
    GetHostedZoneAssociationOutput.add_member(:hosted_zone_name, Shapes::ShapeRef.new(shape: HostedZoneName, required: true, location_name: "hostedZoneName"))
    GetHostedZoneAssociationOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetHostedZoneAssociationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    GetHostedZoneAssociationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    GetHostedZoneAssociationOutput.add_member(:status, Shapes::ShapeRef.new(shape: HostedZoneAssociationStatus, required: true, location_name: "status"))
    GetHostedZoneAssociationOutput.struct_class = Types::GetHostedZoneAssociationOutput

    GetManagedFirewallDomainListInput.add_member(:managed_firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "managedFirewallDomainListId"))
    GetManagedFirewallDomainListInput.struct_class = Types::GetManagedFirewallDomainListInput

    GetManagedFirewallDomainListOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetManagedFirewallDomainListOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetManagedFirewallDomainListOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetManagedFirewallDomainListOutput.add_member(:managed_list_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "managedListType"))
    GetManagedFirewallDomainListOutput.struct_class = Types::GetManagedFirewallDomainListOutput

    GlobalResolvers.member = Shapes::ShapeRef.new(shape: GlobalResolversItem)

    GlobalResolversItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GlobalResolversItem.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    GlobalResolversItem.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    GlobalResolversItem.add_member(:dns_name, Shapes::ShapeRef.new(shape: Sni, required: true, location_name: "dnsName"))
    GlobalResolversItem.add_member(:observability_region, Shapes::ShapeRef.new(shape: Region, location_name: "observabilityRegion"))
    GlobalResolversItem.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GlobalResolversItem.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GlobalResolversItem.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    GlobalResolversItem.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    GlobalResolversItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    GlobalResolversItem.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    GlobalResolversItem.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: IPv4Addresses, required: true, location_name: "ipv4Addresses"))
    GlobalResolversItem.struct_class = Types::GlobalResolversItem

    HostedZoneAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    HostedZoneAssociationSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    HostedZoneAssociationSummary.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, required: true, location_name: "hostedZoneId"))
    HostedZoneAssociationSummary.add_member(:hosted_zone_name, Shapes::ShapeRef.new(shape: HostedZoneName, required: true, location_name: "hostedZoneName"))
    HostedZoneAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    HostedZoneAssociationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    HostedZoneAssociationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    HostedZoneAssociationSummary.add_member(:status, Shapes::ShapeRef.new(shape: HostedZoneAssociationStatus, required: true, location_name: "status"))
    HostedZoneAssociationSummary.struct_class = Types::HostedZoneAssociationSummary

    HostedZoneAssociations.member = Shapes::ShapeRef.new(shape: HostedZoneAssociationSummary)

    IPv4Addresses.member = Shapes::ShapeRef.new(shape: IPv4Address)

    ImportFirewallDomainsInput.add_member(:domain_file_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domainFileUrl"))
    ImportFirewallDomainsInput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "firewallDomainListId"))
    ImportFirewallDomainsInput.add_member(:operation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operation"))
    ImportFirewallDomainsInput.struct_class = Types::ImportFirewallDomainsInput

    ImportFirewallDomainsOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    ImportFirewallDomainsOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ImportFirewallDomainsOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    ImportFirewallDomainsOutput.struct_class = Types::ImportFirewallDomainsOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAccessSourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListAccessSourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListAccessSourcesInput.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location: "querystring", location_name: "filters"))
    ListAccessSourcesInput.struct_class = Types::ListAccessSourcesInput

    ListAccessSourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccessSourcesOutput.add_member(:access_sources, Shapes::ShapeRef.new(shape: AccessSources, required: true, location_name: "accessSources"))
    ListAccessSourcesOutput.struct_class = Types::ListAccessSourcesOutput

    ListAccessTokensInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListAccessTokensInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListAccessTokensInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "dnsViewId"))
    ListAccessTokensInput.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location: "querystring", location_name: "filters"))
    ListAccessTokensInput.struct_class = Types::ListAccessTokensInput

    ListAccessTokensOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccessTokensOutput.add_member(:access_tokens, Shapes::ShapeRef.new(shape: AccessTokens, location_name: "accessTokens"))
    ListAccessTokensOutput.struct_class = Types::ListAccessTokensOutput

    ListDNSViewsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListDNSViewsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListDNSViewsInput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "globalResolverId"))
    ListDNSViewsInput.struct_class = Types::ListDNSViewsInput

    ListDNSViewsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDNSViewsOutput.add_member(:dns_views, Shapes::ShapeRef.new(shape: DNSViews, required: true, location_name: "dnsViews"))
    ListDNSViewsOutput.struct_class = Types::ListDNSViewsOutput

    ListFirewallDomainListsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListFirewallDomainListsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListFirewallDomainListsInput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, location: "querystring", location_name: "global_resolver_id"))
    ListFirewallDomainListsInput.struct_class = Types::ListFirewallDomainListsInput

    ListFirewallDomainListsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFirewallDomainListsOutput.add_member(:firewall_domain_lists, Shapes::ShapeRef.new(shape: FirewallDomainLists, required: true, location_name: "firewallDomainLists"))
    ListFirewallDomainListsOutput.struct_class = Types::ListFirewallDomainListsOutput

    ListFirewallDomainsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListFirewallDomainsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListFirewallDomainsInput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "firewallDomainListId"))
    ListFirewallDomainsInput.struct_class = Types::ListFirewallDomainsInput

    ListFirewallDomainsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFirewallDomainsOutput.add_member(:domains, Shapes::ShapeRef.new(shape: Domains, required: true, location_name: "domains"))
    ListFirewallDomainsOutput.struct_class = Types::ListFirewallDomainsOutput

    ListFirewallRulesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListFirewallRulesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListFirewallRulesInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "dnsview_id"))
    ListFirewallRulesInput.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location: "querystring", location_name: "filters"))
    ListFirewallRulesInput.struct_class = Types::ListFirewallRulesInput

    ListFirewallRulesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFirewallRulesOutput.add_member(:firewall_rules, Shapes::ShapeRef.new(shape: FirewallRules, required: true, location_name: "firewallRules"))
    ListFirewallRulesOutput.struct_class = Types::ListFirewallRulesOutput

    ListGlobalResolversInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListGlobalResolversInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListGlobalResolversInput.struct_class = Types::ListGlobalResolversInput

    ListGlobalResolversOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListGlobalResolversOutput.add_member(:global_resolvers, Shapes::ShapeRef.new(shape: GlobalResolvers, required: true, location_name: "globalResolvers"))
    ListGlobalResolversOutput.struct_class = Types::ListGlobalResolversOutput

    ListHostedZoneAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListHostedZoneAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListHostedZoneAssociationsInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListHostedZoneAssociationsInput.struct_class = Types::ListHostedZoneAssociationsInput

    ListHostedZoneAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListHostedZoneAssociationsOutput.add_member(:hosted_zone_associations, Shapes::ShapeRef.new(shape: HostedZoneAssociations, required: true, location_name: "hostedZoneAssociations"))
    ListHostedZoneAssociationsOutput.struct_class = Types::ListHostedZoneAssociationsOutput

    ListManagedFirewallDomainListsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "max_results"))
    ListManagedFirewallDomainListsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next_token"))
    ListManagedFirewallDomainListsInput.add_member(:managed_firewall_domain_list_type, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "managedFirewallDomainListType"))
    ListManagedFirewallDomainListsInput.struct_class = Types::ListManagedFirewallDomainListsInput

    ListManagedFirewallDomainListsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListManagedFirewallDomainListsOutput.add_member(:managed_firewall_domain_lists, Shapes::ShapeRef.new(shape: ManagedFirewallDomainLists, required: true, location_name: "managedFirewallDomainLists"))
    ListManagedFirewallDomainListsOutput.struct_class = Types::ListManagedFirewallDomainListsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedFirewallDomainLists.member = Shapes::ShapeRef.new(shape: ManagedFirewallDomainListsItem)

    ManagedFirewallDomainListsItem.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    ManagedFirewallDomainListsItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    ManagedFirewallDomainListsItem.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ManagedFirewallDomainListsItem.add_member(:managed_list_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "managedListType"))
    ManagedFirewallDomainListsItem.struct_class = Types::ManagedFirewallDomainListsItem

    Regions.member = Shapes::ShapeRef.new(shape: Region)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Strings.member = Shapes::ShapeRef.new(shape: String)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAccessSourceInput.add_member(:access_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "accessSourceId"))
    UpdateAccessSourceInput.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "cidr"))
    UpdateAccessSourceInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    UpdateAccessSourceInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    UpdateAccessSourceInput.add_member(:protocol, Shapes::ShapeRef.new(shape: DnsProtocol, location_name: "protocol"))
    UpdateAccessSourceInput.struct_class = Types::UpdateAccessSourceInput

    UpdateAccessSourceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    UpdateAccessSourceOutput.add_member(:cidr, Shapes::ShapeRef.new(shape: Cidr, required: true, location_name: "cidr"))
    UpdateAccessSourceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    UpdateAccessSourceOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateAccessSourceOutput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, required: true, location_name: "ipAddressType"))
    UpdateAccessSourceOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, location_name: "name"))
    UpdateAccessSourceOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    UpdateAccessSourceOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: DnsProtocol, required: true, location_name: "protocol"))
    UpdateAccessSourceOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    UpdateAccessSourceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    UpdateAccessSourceOutput.struct_class = Types::UpdateAccessSourceOutput

    UpdateAccessTokenInput.add_member(:access_token_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "accessTokenId"))
    UpdateAccessTokenInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, required: true, location_name: "name"))
    UpdateAccessTokenInput.struct_class = Types::UpdateAccessTokenInput

    UpdateAccessTokenOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateAccessTokenOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceNameShort, required: true, location_name: "name"))
    UpdateAccessTokenOutput.struct_class = Types::UpdateAccessTokenOutput

    UpdateDNSViewInput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "dnsViewId"))
    UpdateDNSViewInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateDNSViewInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateDNSViewInput.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, location_name: "dnssecValidation"))
    UpdateDNSViewInput.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, location_name: "ednsClientSubnet"))
    UpdateDNSViewInput.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, location_name: "firewallRulesFailOpen"))
    UpdateDNSViewInput.struct_class = Types::UpdateDNSViewInput

    UpdateDNSViewOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateDNSViewOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    UpdateDNSViewOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateDNSViewOutput.add_member(:dnssec_validation, Shapes::ShapeRef.new(shape: DnsSecValidationType, required: true, location_name: "dnssecValidation"))
    UpdateDNSViewOutput.add_member(:edns_client_subnet, Shapes::ShapeRef.new(shape: EdnsClientSubnetType, required: true, location_name: "ednsClientSubnet"))
    UpdateDNSViewOutput.add_member(:firewall_rules_fail_open, Shapes::ShapeRef.new(shape: FirewallRulesFailOpenType, required: true, location_name: "firewallRulesFailOpen"))
    UpdateDNSViewOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateDNSViewOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateDNSViewOutput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "globalResolverId"))
    UpdateDNSViewOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    UpdateDNSViewOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    UpdateDNSViewOutput.add_member(:status, Shapes::ShapeRef.new(shape: ProfileResourceStatus, required: true, location_name: "status"))
    UpdateDNSViewOutput.struct_class = Types::UpdateDNSViewOutput

    UpdateFirewallDomainsInput.add_member(:domains, Shapes::ShapeRef.new(shape: Domains, required: true, location_name: "domains"))
    UpdateFirewallDomainsInput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "firewallDomainListId"))
    UpdateFirewallDomainsInput.add_member(:operation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operation"))
    UpdateFirewallDomainsInput.struct_class = Types::UpdateFirewallDomainsInput

    UpdateFirewallDomainsOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateFirewallDomainsOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFirewallDomainsOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    UpdateFirewallDomainsOutput.struct_class = Types::UpdateFirewallDomainsOutput

    UpdateFirewallRuleInput.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, location_name: "action"))
    UpdateFirewallRuleInput.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    UpdateFirewallRuleInput.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    UpdateFirewallRuleInput.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    UpdateFirewallRuleInput.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    UpdateFirewallRuleInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateFirewallRuleInput.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    UpdateFirewallRuleInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateFirewallRuleInput.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    UpdateFirewallRuleInput.add_member(:firewall_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "firewallRuleId"))
    UpdateFirewallRuleInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateFirewallRuleInput.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, location_name: "priority"))
    UpdateFirewallRuleInput.struct_class = Types::UpdateFirewallRuleInput

    UpdateFirewallRuleOutput.add_member(:action, Shapes::ShapeRef.new(shape: FirewallRuleAction, required: true, location_name: "action"))
    UpdateFirewallRuleOutput.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsQueryType, location_name: "blockOverrideDnsType"))
    UpdateFirewallRuleOutput.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: Domain, location_name: "blockOverrideDomain"))
    UpdateFirewallRuleOutput.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "blockOverrideTtl"))
    UpdateFirewallRuleOutput.add_member(:block_response, Shapes::ShapeRef.new(shape: FirewallBlockResponse, location_name: "blockResponse"))
    UpdateFirewallRuleOutput.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: ConfidenceThreshold, location_name: "confidenceThreshold"))
    UpdateFirewallRuleOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    UpdateFirewallRuleOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateFirewallRuleOutput.add_member(:dns_advanced_protection, Shapes::ShapeRef.new(shape: DnsAdvancedProtection, location_name: "dnsAdvancedProtection"))
    UpdateFirewallRuleOutput.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "firewallDomainListId"))
    UpdateFirewallRuleOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateFirewallRuleOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFirewallRuleOutput.add_member(:priority, Shapes::ShapeRef.new(shape: FirewallRulePriority, required: true, location_name: "priority"))
    UpdateFirewallRuleOutput.add_member(:dns_view_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "dnsViewId"))
    UpdateFirewallRuleOutput.add_member(:query_type, Shapes::ShapeRef.new(shape: DnsQueryType, location_name: "queryType"))
    UpdateFirewallRuleOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    UpdateFirewallRuleOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    UpdateFirewallRuleOutput.struct_class = Types::UpdateFirewallRuleOutput

    UpdateGlobalResolverInput.add_member(:global_resolver_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "globalResolverId"))
    UpdateGlobalResolverInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateGlobalResolverInput.add_member(:observability_region, Shapes::ShapeRef.new(shape: Region, location_name: "observabilityRegion"))
    UpdateGlobalResolverInput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateGlobalResolverInput.struct_class = Types::UpdateGlobalResolverInput

    UpdateGlobalResolverOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateGlobalResolverOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    UpdateGlobalResolverOutput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    UpdateGlobalResolverOutput.add_member(:dns_name, Shapes::ShapeRef.new(shape: Sni, required: true, location_name: "dnsName"))
    UpdateGlobalResolverOutput.add_member(:observability_region, Shapes::ShapeRef.new(shape: Region, location_name: "observabilityRegion"))
    UpdateGlobalResolverOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateGlobalResolverOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateGlobalResolverOutput.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    UpdateGlobalResolverOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    UpdateGlobalResolverOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    UpdateGlobalResolverOutput.add_member(:status, Shapes::ShapeRef.new(shape: CRResourceStatus, required: true, location_name: "status"))
    UpdateGlobalResolverOutput.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: IPv4Addresses, required: true, location_name: "ipv4Addresses"))
    UpdateGlobalResolverOutput.struct_class = Types::UpdateGlobalResolverOutput

    UpdateHostedZoneAssociationInput.add_member(:hosted_zone_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "hostedZoneAssociationId"))
    UpdateHostedZoneAssociationInput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    UpdateHostedZoneAssociationInput.struct_class = Types::UpdateHostedZoneAssociationInput

    UpdateHostedZoneAssociationOutput.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateHostedZoneAssociationOutput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UpdateHostedZoneAssociationOutput.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, required: true, location_name: "hostedZoneId"))
    UpdateHostedZoneAssociationOutput.add_member(:hosted_zone_name, Shapes::ShapeRef.new(shape: HostedZoneName, required: true, location_name: "hostedZoneName"))
    UpdateHostedZoneAssociationOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateHostedZoneAssociationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "createdAt"))
    UpdateHostedZoneAssociationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: ISO8601TimeString, required: true, location_name: "updatedAt"))
    UpdateHostedZoneAssociationOutput.add_member(:status, Shapes::ShapeRef.new(shape: HostedZoneAssociationStatus, required: true, location_name: "status"))
    UpdateHostedZoneAssociationOutput.struct_class = Types::UpdateHostedZoneAssociationOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-09-27"

      api.metadata = {
        "apiVersion" => "2022-09-27",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "route53globalresolver",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Route 53 Global Resolver",
        "serviceId" => "Route53GlobalResolver",
        "signatureVersion" => "v4",
        "signingName" => "route53globalresolver",
        "uid" => "route53globalresolver-2022-09-27",
      }

      api.add_operation(:associate_hosted_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateHostedZone"
        o.http_method = "POST"
        o.http_request_uri = "/hosted-zone-associations/{hostedZoneId}"
        o.input = Shapes::ShapeRef.new(shape: AssociateHostedZoneInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateHostedZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_create_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateFirewallRule"
        o.http_method = "POST"
        o.http_request_uri = "/firewall-rules/batch-create"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateFirewallRuleInput)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateFirewallRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_delete_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteFirewallRule"
        o.http_method = "POST"
        o.http_request_uri = "/firewall-rules/batch-delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteFirewallRuleInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteFirewallRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateFirewallRule"
        o.http_method = "POST"
        o.http_request_uri = "/firewall-rules/batch-update"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateFirewallRuleInput)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateFirewallRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_access_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessSource"
        o.http_method = "POST"
        o.http_request_uri = "/access-sources"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessSourceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessToken"
        o.http_method = "POST"
        o.http_request_uri = "/tokens/{dnsViewId}"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessTokenInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessTokenOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_dns_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDNSView"
        o.http_method = "POST"
        o.http_request_uri = "/dns-views/{globalResolverId}"
        o.input = Shapes::ShapeRef.new(shape: CreateDNSViewInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDNSViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_firewall_domain_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFirewallDomainList"
        o.http_method = "POST"
        o.http_request_uri = "/firewall-domain-lists/{globalResolverId}"
        o.input = Shapes::ShapeRef.new(shape: CreateFirewallDomainListInput)
        o.output = Shapes::ShapeRef.new(shape: CreateFirewallDomainListOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFirewallRule"
        o.http_method = "POST"
        o.http_request_uri = "/firewall-rules"
        o.input = Shapes::ShapeRef.new(shape: CreateFirewallRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateFirewallRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_global_resolver, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGlobalResolver"
        o.http_method = "POST"
        o.http_request_uri = "/global-resolver"
        o.input = Shapes::ShapeRef.new(shape: CreateGlobalResolverInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGlobalResolverOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_access_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/access-sources/{accessSourceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessSourceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessToken"
        o.http_method = "DELETE"
        o.http_request_uri = "/tokens/{accessTokenId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessTokenInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessTokenOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_dns_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDNSView"
        o.http_method = "DELETE"
        o.http_request_uri = "/dns-views/{dnsViewId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDNSViewInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDNSViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_firewall_domain_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFirewallDomainList"
        o.http_method = "DELETE"
        o.http_request_uri = "/firewall-domain-lists/{firewallDomainListId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFirewallDomainListInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteFirewallDomainListOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFirewallRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/firewall-rules/{firewallRuleId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFirewallRuleInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteFirewallRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_global_resolver, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGlobalResolver"
        o.http_method = "DELETE"
        o.http_request_uri = "/global-resolver/{globalResolverId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGlobalResolverInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGlobalResolverOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disable_dns_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableDNSView"
        o.http_method = "PATCH"
        o.http_request_uri = "/dns-views/{dnsViewId}/disable"
        o.input = Shapes::ShapeRef.new(shape: DisableDNSViewInput)
        o.output = Shapes::ShapeRef.new(shape: DisableDNSViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_hosted_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateHostedZone"
        o.http_method = "DELETE"
        o.http_request_uri = "/hosted-zone-associations/hosted-zone/{hostedZoneId}/resource-arn/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateHostedZoneInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateHostedZoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:enable_dns_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableDNSView"
        o.http_method = "PATCH"
        o.http_request_uri = "/dns-views/{dnsViewId}/enable"
        o.input = Shapes::ShapeRef.new(shape: EnableDNSViewInput)
        o.output = Shapes::ShapeRef.new(shape: EnableDNSViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_access_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessSource"
        o.http_method = "GET"
        o.http_request_uri = "/access-sources/{accessSourceId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccessSourceInput)
        o.output = Shapes::ShapeRef.new(shape: GetAccessSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessToken"
        o.http_method = "GET"
        o.http_request_uri = "/tokens/{accessTokenId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccessTokenInput)
        o.output = Shapes::ShapeRef.new(shape: GetAccessTokenOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_dns_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDNSView"
        o.http_method = "GET"
        o.http_request_uri = "/dns-views/{dnsViewId}"
        o.input = Shapes::ShapeRef.new(shape: GetDNSViewInput)
        o.output = Shapes::ShapeRef.new(shape: GetDNSViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_firewall_domain_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFirewallDomainList"
        o.http_method = "GET"
        o.http_request_uri = "/firewall-domain-lists/{firewallDomainListId}"
        o.input = Shapes::ShapeRef.new(shape: GetFirewallDomainListInput)
        o.output = Shapes::ShapeRef.new(shape: GetFirewallDomainListOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFirewallRule"
        o.http_method = "GET"
        o.http_request_uri = "/firewall-rules/{firewallRuleId}"
        o.input = Shapes::ShapeRef.new(shape: GetFirewallRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetFirewallRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_global_resolver, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGlobalResolver"
        o.http_method = "GET"
        o.http_request_uri = "/global-resolver/{globalResolverId}"
        o.input = Shapes::ShapeRef.new(shape: GetGlobalResolverInput)
        o.output = Shapes::ShapeRef.new(shape: GetGlobalResolverOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_hosted_zone_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHostedZoneAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/hosted-zone-associations/{hostedZoneAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: GetHostedZoneAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: GetHostedZoneAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_managed_firewall_domain_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedFirewallDomainList"
        o.http_method = "GET"
        o.http_request_uri = "/managed-firewall-domain-lists/{managedFirewallDomainListId}"
        o.input = Shapes::ShapeRef.new(shape: GetManagedFirewallDomainListInput)
        o.output = Shapes::ShapeRef.new(shape: GetManagedFirewallDomainListOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:import_firewall_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportFirewallDomains"
        o.http_method = "PATCH"
        o.http_request_uri = "/firewall-domain-lists/{firewallDomainListId}/domains/s3_file_url"
        o.input = Shapes::ShapeRef.new(shape: ImportFirewallDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: ImportFirewallDomainsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_access_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessSources"
        o.http_method = "GET"
        o.http_request_uri = "/access-sources"
        o.input = Shapes::ShapeRef.new(shape: ListAccessSourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAccessSourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_access_tokens, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessTokens"
        o.http_method = "GET"
        o.http_request_uri = "/tokens/dns-view/{dnsViewId}"
        o.input = Shapes::ShapeRef.new(shape: ListAccessTokensInput)
        o.output = Shapes::ShapeRef.new(shape: ListAccessTokensOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dns_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDNSViews"
        o.http_method = "GET"
        o.http_request_uri = "/dns-views/resolver/{globalResolverId}"
        o.input = Shapes::ShapeRef.new(shape: ListDNSViewsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDNSViewsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewall_domain_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallDomainLists"
        o.http_method = "GET"
        o.http_request_uri = "/firewall-domain-lists"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallDomainListsInput)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallDomainListsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewall_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallDomains"
        o.http_method = "GET"
        o.http_request_uri = "/firewall-domain-lists/{firewallDomainListId}/domains"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallDomainsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewall_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallRules"
        o.http_method = "GET"
        o.http_request_uri = "/firewall-rules"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallRulesInput)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_global_resolvers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGlobalResolvers"
        o.http_method = "GET"
        o.http_request_uri = "/global-resolver"
        o.input = Shapes::ShapeRef.new(shape: ListGlobalResolversInput)
        o.output = Shapes::ShapeRef.new(shape: ListGlobalResolversOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hosted_zone_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHostedZoneAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/hosted-zone-associations/resource-arn/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: ListHostedZoneAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListHostedZoneAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_firewall_domain_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedFirewallDomainLists"
        o.http_method = "GET"
        o.http_request_uri = "/list-managed-firewall-domain-lists/{managedFirewallDomainListType}"
        o.input = Shapes::ShapeRef.new(shape: ListManagedFirewallDomainListsInput)
        o.output = Shapes::ShapeRef.new(shape: ListManagedFirewallDomainListsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/get-all-tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tag-resource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untag-resource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_access_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessSource"
        o.http_method = "PATCH"
        o.http_request_uri = "/access-sources/{accessSourceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessSourceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessSourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessToken"
        o.http_method = "PATCH"
        o.http_request_uri = "/tokens/{accessTokenId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessTokenInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessTokenOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_dns_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDNSView"
        o.http_method = "PATCH"
        o.http_request_uri = "/dns-views/{dnsViewId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDNSViewInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDNSViewOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_firewall_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallDomains"
        o.http_method = "PATCH"
        o.http_request_uri = "/firewall-domain-lists/{firewallDomainListId}/domains"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallDomainsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/firewall-rules/{firewallRuleId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallRuleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_global_resolver, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalResolver"
        o.http_method = "PATCH"
        o.http_request_uri = "/global-resolver/{globalResolverId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalResolverInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGlobalResolverOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_hosted_zone_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHostedZoneAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/hosted-zone-associations/{hostedZoneAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateHostedZoneAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateHostedZoneAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
