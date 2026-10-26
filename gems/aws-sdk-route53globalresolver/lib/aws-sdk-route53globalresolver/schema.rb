# frozen_string_literal: true

# This is generated code!

module Aws::Route53GlobalResolver
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#AccessSources", name: "AccessSources")
    AccessSourcesItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#AccessSourcesItem", name: "AccessSourcesItem")
    AccessTokenItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#AccessTokenItem", name: "AccessTokenItem")
    AccessTokenValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#AccessTokenValue", name: "AccessTokenValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    AccessTokens = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#AccessTokens", name: "AccessTokens")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 32}, "smithy.api#pattern" => "^[0-9]+$"})
    AssociateHostedZoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#AssociateHostedZoneInput", name: "AssociateHostedZoneInput")
    AssociateHostedZoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#AssociateHostedZoneOutput", name: "AssociateHostedZoneOutput")
    BatchCreateFirewallRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchCreateFirewallRuleInput", name: "BatchCreateFirewallRuleInput")
    BatchCreateFirewallRuleInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchCreateFirewallRuleInputItem", name: "BatchCreateFirewallRuleInputItem", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    BatchCreateFirewallRuleInputItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#BatchCreateFirewallRuleInputItems", name: "BatchCreateFirewallRuleInputItems")
    BatchCreateFirewallRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchCreateFirewallRuleOutput", name: "BatchCreateFirewallRuleOutput")
    BatchCreateFirewallRuleOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchCreateFirewallRuleOutputItem", name: "BatchCreateFirewallRuleOutputItem")
    BatchCreateFirewallRuleOutputItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#BatchCreateFirewallRuleOutputItems", name: "BatchCreateFirewallRuleOutputItems")
    BatchCreateFirewallRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchCreateFirewallRuleResult", name: "BatchCreateFirewallRuleResult", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}, {"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "firewallDomainListId"}}]})
    BatchDeleteFirewallRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchDeleteFirewallRuleInput", name: "BatchDeleteFirewallRuleInput")
    BatchDeleteFirewallRuleInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchDeleteFirewallRuleInputItem", name: "BatchDeleteFirewallRuleInputItem")
    BatchDeleteFirewallRuleInputItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#BatchDeleteFirewallRuleInputItems", name: "BatchDeleteFirewallRuleInputItems")
    BatchDeleteFirewallRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchDeleteFirewallRuleOutput", name: "BatchDeleteFirewallRuleOutput")
    BatchDeleteFirewallRuleOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchDeleteFirewallRuleOutputItem", name: "BatchDeleteFirewallRuleOutputItem")
    BatchDeleteFirewallRuleOutputItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#BatchDeleteFirewallRuleOutputItems", name: "BatchDeleteFirewallRuleOutputItems")
    BatchDeleteFirewallRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchDeleteFirewallRuleResult", name: "BatchDeleteFirewallRuleResult")
    BatchUpdateFirewallRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchUpdateFirewallRuleInput", name: "BatchUpdateFirewallRuleInput")
    BatchUpdateFirewallRuleInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchUpdateFirewallRuleInputItem", name: "BatchUpdateFirewallRuleInputItem")
    BatchUpdateFirewallRuleInputItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#BatchUpdateFirewallRuleInputItems", name: "BatchUpdateFirewallRuleInputItems")
    BatchUpdateFirewallRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchUpdateFirewallRuleOutput", name: "BatchUpdateFirewallRuleOutput")
    BatchUpdateFirewallRuleOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchUpdateFirewallRuleOutputItem", name: "BatchUpdateFirewallRuleOutputItem")
    BatchUpdateFirewallRuleOutputItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#BatchUpdateFirewallRuleOutputItems", name: "BatchUpdateFirewallRuleOutputItems")
    BatchUpdateFirewallRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#BatchUpdateFirewallRuleResult", name: "BatchUpdateFirewallRuleResult", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}, {"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "firewallDomainListId"}}]})
    BlockOverrideDnsQueryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#BlockOverrideDnsQueryType", name: "BlockOverrideDnsQueryType")
    BlockOverrideTtl = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53globalresolver#BlockOverrideTtl", name: "BlockOverrideTtl", traits: {"smithy.api#range" => {"min" => 0, "max" => 604800}})
    CRResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#CRResourceStatus", name: "CRResourceStatus")
    Cidr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#Cidr", name: "Cidr", traits: {"smithy.api#length" => {"min" => 1, "max" => 43}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ConfidenceThreshold = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#ConfidenceThreshold", name: "ConfidenceThreshold")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateAccessSourceInput", name: "CreateAccessSourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    CreateAccessSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateAccessSourceOutput", name: "CreateAccessSourceOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    CreateAccessTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateAccessTokenInput", name: "CreateAccessTokenInput")
    CreateAccessTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateAccessTokenOutput", name: "CreateAccessTokenOutput")
    CreateDNSViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateDNSViewInput", name: "CreateDNSViewInput")
    CreateDNSViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateDNSViewOutput", name: "CreateDNSViewOutput")
    CreateFirewallDomainListInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateFirewallDomainListInput", name: "CreateFirewallDomainListInput")
    CreateFirewallDomainListOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateFirewallDomainListOutput", name: "CreateFirewallDomainListOutput")
    CreateFirewallRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateFirewallRuleInput", name: "CreateFirewallRuleInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "firewallDomainListId"}}, {"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    CreateFirewallRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateFirewallRuleOutput", name: "CreateFirewallRuleOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "firewallDomainListId"}}, {"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    CreateGlobalResolverInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateGlobalResolverInput", name: "CreateGlobalResolverInput")
    CreateGlobalResolverOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#CreateGlobalResolverOutput", name: "CreateGlobalResolverOutput")
    DNSViewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DNSViewSummary", name: "DNSViewSummary")
    DNSViews = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#DNSViews", name: "DNSViews")
    DeleteAccessSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteAccessSourceInput", name: "DeleteAccessSourceInput")
    DeleteAccessSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteAccessSourceOutput", name: "DeleteAccessSourceOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    DeleteAccessTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteAccessTokenInput", name: "DeleteAccessTokenInput")
    DeleteAccessTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteAccessTokenOutput", name: "DeleteAccessTokenOutput")
    DeleteDNSViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteDNSViewInput", name: "DeleteDNSViewInput")
    DeleteDNSViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteDNSViewOutput", name: "DeleteDNSViewOutput")
    DeleteFirewallDomainListInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteFirewallDomainListInput", name: "DeleteFirewallDomainListInput")
    DeleteFirewallDomainListOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteFirewallDomainListOutput", name: "DeleteFirewallDomainListOutput")
    DeleteFirewallRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteFirewallRuleInput", name: "DeleteFirewallRuleInput")
    DeleteFirewallRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteFirewallRuleOutput", name: "DeleteFirewallRuleOutput")
    DeleteGlobalResolverInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteGlobalResolverInput", name: "DeleteGlobalResolverInput")
    DeleteGlobalResolverOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DeleteGlobalResolverOutput", name: "DeleteGlobalResolverOutput")
    DisableDNSViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DisableDNSViewInput", name: "DisableDNSViewInput")
    DisableDNSViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DisableDNSViewOutput", name: "DisableDNSViewOutput")
    DisassociateHostedZoneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DisassociateHostedZoneInput", name: "DisassociateHostedZoneInput")
    DisassociateHostedZoneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#DisassociateHostedZoneOutput", name: "DisassociateHostedZoneOutput")
    DnsAdvancedProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#DnsAdvancedProtection", name: "DnsAdvancedProtection")
    DnsProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#DnsProtocol", name: "DnsProtocol")
    DnsQueryType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#DnsQueryType", name: "DnsQueryType", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    DnsSecValidationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#DnsSecValidationType", name: "DnsSecValidationType")
    Domain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#Domain", name: "Domain", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\*?[a-zA-Z0-9!\"\#$%&'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]+$"})
    Domains = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#Domains", name: "Domains")
    EdnsClientSubnetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#EdnsClientSubnetType", name: "EdnsClientSubnetType")
    EnableDNSViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#EnableDNSViewInput", name: "EnableDNSViewInput")
    EnableDNSViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#EnableDNSViewOutput", name: "EnableDNSViewOutput")
    Filters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.route53globalresolver#Filters", name: "Filters")
    FirewallBlockResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#FirewallBlockResponse", name: "FirewallBlockResponse")
    FirewallDomainLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#FirewallDomainLists", name: "FirewallDomainLists")
    FirewallDomainListsItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#FirewallDomainListsItem", name: "FirewallDomainListsItem")
    FirewallRuleAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#FirewallRuleAction", name: "FirewallRuleAction")
    FirewallRulePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53globalresolver#FirewallRulePriority", name: "FirewallRulePriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    FirewallRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#FirewallRules", name: "FirewallRules")
    FirewallRulesFailOpenType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#FirewallRulesFailOpenType", name: "FirewallRulesFailOpenType")
    FirewallRulesItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#FirewallRulesItem", name: "FirewallRulesItem", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "firewallDomainListId"}}, {"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    GetAccessSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetAccessSourceInput", name: "GetAccessSourceInput")
    GetAccessSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetAccessSourceOutput", name: "GetAccessSourceOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    GetAccessTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetAccessTokenInput", name: "GetAccessTokenInput")
    GetAccessTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetAccessTokenOutput", name: "GetAccessTokenOutput")
    GetDNSViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetDNSViewInput", name: "GetDNSViewInput")
    GetDNSViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetDNSViewOutput", name: "GetDNSViewOutput")
    GetFirewallDomainListInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetFirewallDomainListInput", name: "GetFirewallDomainListInput")
    GetFirewallDomainListOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetFirewallDomainListOutput", name: "GetFirewallDomainListOutput")
    GetFirewallRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetFirewallRuleInput", name: "GetFirewallRuleInput")
    GetFirewallRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetFirewallRuleOutput", name: "GetFirewallRuleOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "firewallDomainListId"}}, {"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    GetGlobalResolverInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetGlobalResolverInput", name: "GetGlobalResolverInput")
    GetGlobalResolverOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetGlobalResolverOutput", name: "GetGlobalResolverOutput")
    GetHostedZoneAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetHostedZoneAssociationInput", name: "GetHostedZoneAssociationInput")
    GetHostedZoneAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetHostedZoneAssociationOutput", name: "GetHostedZoneAssociationOutput")
    GetManagedFirewallDomainListInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetManagedFirewallDomainListInput", name: "GetManagedFirewallDomainListInput")
    GetManagedFirewallDomainListOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GetManagedFirewallDomainListOutput", name: "GetManagedFirewallDomainListOutput")
    GlobalResolverIpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#GlobalResolverIpAddressType", name: "GlobalResolverIpAddressType")
    GlobalResolvers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#GlobalResolvers", name: "GlobalResolvers")
    GlobalResolversItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#GlobalResolversItem", name: "GlobalResolversItem")
    HostedZoneAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#HostedZoneAssociationStatus", name: "HostedZoneAssociationStatus")
    HostedZoneAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#HostedZoneAssociationSummary", name: "HostedZoneAssociationSummary")
    HostedZoneAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#HostedZoneAssociations", name: "HostedZoneAssociations")
    HostedZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#HostedZoneId", name: "HostedZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    HostedZoneName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#HostedZoneName", name: "HostedZoneName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    IPv4Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#IPv4Address", name: "IPv4Address", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^((25[0-5]|(2[0-4]|1\\d|[1-9]|)\\d)\\.?\\b){4}$"})
    IPv4Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#IPv4Addresses", name: "IPv4Addresses")
    IPv6Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#IPv6Address", name: "IPv6Address", traits: {"smithy.api#length" => {"min" => 1, "max" => 39}, "smithy.api#pattern" => "^(?:[A-Fa-f0-9]{0,4}:){2,7}[A-Fa-f0-9]{1,4}$"})
    IPv6Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#IPv6Addresses", name: "IPv6Addresses")
    ISO8601TimeString = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.route53globalresolver#ISO8601TimeString", name: "ISO8601TimeString", traits: {"smithy.api#timestampFormat" => "date-time"})
    ImportFirewallDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ImportFirewallDomainsInput", name: "ImportFirewallDomainsInput")
    ImportFirewallDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ImportFirewallDomainsOutput", name: "ImportFirewallDomainsOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#IpAddressType", name: "IpAddressType")
    ListAccessSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListAccessSourcesInput", name: "ListAccessSourcesInput")
    ListAccessSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListAccessSourcesOutput", name: "ListAccessSourcesOutput")
    ListAccessTokensInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListAccessTokensInput", name: "ListAccessTokensInput")
    ListAccessTokensOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListAccessTokensOutput", name: "ListAccessTokensOutput")
    ListDNSViewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListDNSViewsInput", name: "ListDNSViewsInput")
    ListDNSViewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListDNSViewsOutput", name: "ListDNSViewsOutput")
    ListFirewallDomainListsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListFirewallDomainListsInput", name: "ListFirewallDomainListsInput")
    ListFirewallDomainListsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListFirewallDomainListsOutput", name: "ListFirewallDomainListsOutput")
    ListFirewallDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListFirewallDomainsInput", name: "ListFirewallDomainsInput")
    ListFirewallDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListFirewallDomainsOutput", name: "ListFirewallDomainsOutput")
    ListFirewallRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListFirewallRulesInput", name: "ListFirewallRulesInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    ListFirewallRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListFirewallRulesOutput", name: "ListFirewallRulesOutput")
    ListGlobalResolversInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListGlobalResolversInput", name: "ListGlobalResolversInput")
    ListGlobalResolversOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListGlobalResolversOutput", name: "ListGlobalResolversOutput")
    ListHostedZoneAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListHostedZoneAssociationsInput", name: "ListHostedZoneAssociationsInput")
    ListHostedZoneAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListHostedZoneAssociationsOutput", name: "ListHostedZoneAssociationsOutput")
    ListManagedFirewallDomainListsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListManagedFirewallDomainListsInput", name: "ListManagedFirewallDomainListsInput")
    ListManagedFirewallDomainListsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListManagedFirewallDomainListsOutput", name: "ListManagedFirewallDomainListsOutput")
    ListSharedDNSViewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListSharedDNSViewsInput", name: "ListSharedDNSViewsInput")
    ListSharedDNSViewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListSharedDNSViewsOutput", name: "ListSharedDNSViewsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#AccessSource", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#AccessToken", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#GlobalResolver", "ids" => {"id" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ManagedFirewallDomainLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#ManagedFirewallDomainLists", name: "ManagedFirewallDomainLists")
    ManagedFirewallDomainListsItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ManagedFirewallDomainListsItem", name: "ManagedFirewallDomainListsItem")
    ProfileResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#ProfileResourceStatus", name: "ProfileResourceStatus")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    Regions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#Regions", name: "Regions")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[-.a-z0-9]{1,63}:[-.a-z0-9]{1,63}:[-.a-z0-9]{0,63}:[-.a-z0-9]{0,63}:[^/].{0,1023}$"})
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#ResourceDescription", name: "ResourceDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[-.a-zA-Z0-9]+$"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9-_/' ']+)$"})
    ResourceNameShort = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#ResourceNameShort", name: "ResourceNameShort", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9-_/' ']+)$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharedDNSViewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#SharedDNSViewSummary", name: "SharedDNSViewSummary")
    SharedDNSViews = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#SharedDNSViews", name: "SharedDNSViews")
    Sni = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#Sni", name: "Sni", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Strings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#Strings", name: "Strings")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#TagKeys", name: "TagKeys")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#TagResourceRequest", name: "TagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#AccessSource", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#AccessToken", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#GlobalResolver", "ids" => {"id" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53globalresolver#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.route53globalresolver#Tags", name: "Tags", traits: {"smithy.api#length" => {"max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TokenStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#TokenStatus", name: "TokenStatus")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UntagResourceRequest", name: "UntagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#AccessSource", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#AccessToken", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "resourceArn"}}, {"resource" => "com.amazonaws.route53globalresolver#GlobalResolver", "ids" => {"id" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAccessSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateAccessSourceInput", name: "UpdateAccessSourceInput")
    UpdateAccessSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateAccessSourceOutput", name: "UpdateAccessSourceOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    UpdateAccessTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateAccessTokenInput", name: "UpdateAccessTokenInput")
    UpdateAccessTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateAccessTokenOutput", name: "UpdateAccessTokenOutput")
    UpdateDNSViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateDNSViewInput", name: "UpdateDNSViewInput")
    UpdateDNSViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateDNSViewOutput", name: "UpdateDNSViewOutput")
    UpdateFirewallDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateFirewallDomainsInput", name: "UpdateFirewallDomainsInput")
    UpdateFirewallDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateFirewallDomainsOutput", name: "UpdateFirewallDomainsOutput")
    UpdateFirewallRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateFirewallRuleInput", name: "UpdateFirewallRuleInput")
    UpdateFirewallRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateFirewallRuleOutput", name: "UpdateFirewallRuleOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.route53globalresolver#FirewallDomainList", "ids" => {"id" => "firewallDomainListId"}}, {"resource" => "com.amazonaws.route53globalresolver#DNSView", "ids" => {"id" => "dnsViewId"}}]})
    UpdateGlobalResolverInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateGlobalResolverInput", name: "UpdateGlobalResolverInput")
    UpdateGlobalResolverOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateGlobalResolverOutput", name: "UpdateGlobalResolverOutput")
    UpdateHostedZoneAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateHostedZoneAssociationInput", name: "UpdateHostedZoneAssociationInput")
    UpdateHostedZoneAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#UpdateHostedZoneAssociationOutput", name: "UpdateHostedZoneAssociationOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53globalresolver#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53globalresolver#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53globalresolver#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessSourcesItem, name: "member"))
    AccessSourcesItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "cidr", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    AccessSourcesItem.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AccessSourcesItem.type = Types::AccessSourcesItem
    AccessTokenItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    AccessTokenItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AccessTokenItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AccessTokenItem.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    AccessTokenItem.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "expiresAt", traits: {"smithy.api#required" => {}}))
    AccessTokenItem.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    AccessTokenItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    AccessTokenItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AccessTokenItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AccessTokenItem.type = Types::AccessTokenItem
    AccessTokens.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenItem, name: "member"))
    AssociateHostedZoneInput.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "hostedZoneId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateHostedZoneInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneInput.type = Types::AssociateHostedZoneInput
    AssociateHostedZoneOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneOutput.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "hostedZoneId", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneOutput.add_member(:hosted_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneName, name: "hostedZoneName", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AssociateHostedZoneOutput.type = Types::AssociateHostedZoneOutput
    BatchCreateFirewallRuleInput.add_member(:firewall_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateFirewallRuleInputItems, name: "firewallRules", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleInput.type = Types::BatchCreateFirewallRuleInput
    BatchCreateFirewallRuleInputItem.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleInputItem.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    BatchCreateFirewallRuleInputItem.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    BatchCreateFirewallRuleInputItem.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    BatchCreateFirewallRuleInputItem.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    BatchCreateFirewallRuleInputItem.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleInputItem.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    BatchCreateFirewallRuleInputItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    BatchCreateFirewallRuleInputItem.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    BatchCreateFirewallRuleInputItem.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    BatchCreateFirewallRuleInputItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleInputItem.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority"))
    BatchCreateFirewallRuleInputItem.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleInputItem.add_member(:q_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "qType", traits: {"smithy.api#property" => {"name" => "queryType"}}))
    BatchCreateFirewallRuleInputItem.type = Types::BatchCreateFirewallRuleInputItem
    BatchCreateFirewallRuleInputItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateFirewallRuleInputItem, name: "member"))
    BatchCreateFirewallRuleOutput.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateFirewallRuleOutputItems, name: "failures", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleOutput.add_member(:successes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateFirewallRuleOutputItems, name: "successes", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleOutput.type = Types::BatchCreateFirewallRuleOutput
    BatchCreateFirewallRuleOutputItem.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateFirewallRuleResult, name: "firewallRule", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleOutputItem.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "code", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleOutputItem.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    BatchCreateFirewallRuleOutputItem.type = Types::BatchCreateFirewallRuleOutputItem
    BatchCreateFirewallRuleOutputItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateFirewallRuleOutputItem, name: "member"))
    BatchCreateFirewallRuleResult.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleResult.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    BatchCreateFirewallRuleResult.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    BatchCreateFirewallRuleResult.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    BatchCreateFirewallRuleResult.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    BatchCreateFirewallRuleResult.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleResult.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    BatchCreateFirewallRuleResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt"))
    BatchCreateFirewallRuleResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    BatchCreateFirewallRuleResult.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    BatchCreateFirewallRuleResult.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    BatchCreateFirewallRuleResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id"))
    BatchCreateFirewallRuleResult.add_member(:managed_domain_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "managedDomainListName"))
    BatchCreateFirewallRuleResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleResult.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority"))
    BatchCreateFirewallRuleResult.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    BatchCreateFirewallRuleResult.add_member(:query_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "queryType"))
    BatchCreateFirewallRuleResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status"))
    BatchCreateFirewallRuleResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt"))
    BatchCreateFirewallRuleResult.type = Types::BatchCreateFirewallRuleResult
    BatchDeleteFirewallRuleInput.add_member(:firewall_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFirewallRuleInputItems, name: "firewallRules", traits: {"smithy.api#required" => {}}))
    BatchDeleteFirewallRuleInput.type = Types::BatchDeleteFirewallRuleInput
    BatchDeleteFirewallRuleInputItem.add_member(:firewall_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallRuleId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    BatchDeleteFirewallRuleInputItem.type = Types::BatchDeleteFirewallRuleInputItem
    BatchDeleteFirewallRuleInputItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFirewallRuleInputItem, name: "member"))
    BatchDeleteFirewallRuleOutput.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFirewallRuleOutputItems, name: "failures", traits: {"smithy.api#required" => {}}))
    BatchDeleteFirewallRuleOutput.add_member(:successes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFirewallRuleOutputItems, name: "successes", traits: {"smithy.api#required" => {}}))
    BatchDeleteFirewallRuleOutput.type = Types::BatchDeleteFirewallRuleOutput
    BatchDeleteFirewallRuleOutputItem.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFirewallRuleResult, name: "firewallRule", traits: {"smithy.api#required" => {}}))
    BatchDeleteFirewallRuleOutputItem.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "code", traits: {"smithy.api#required" => {}}))
    BatchDeleteFirewallRuleOutputItem.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    BatchDeleteFirewallRuleOutputItem.type = Types::BatchDeleteFirewallRuleOutputItem
    BatchDeleteFirewallRuleOutputItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFirewallRuleOutputItem, name: "member"))
    BatchDeleteFirewallRuleResult.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    BatchDeleteFirewallRuleResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    BatchDeleteFirewallRuleResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    BatchDeleteFirewallRuleResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status"))
    BatchDeleteFirewallRuleResult.type = Types::BatchDeleteFirewallRuleResult
    BatchUpdateFirewallRuleInput.add_member(:firewall_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateFirewallRuleInputItems, name: "firewallRules", traits: {"smithy.api#required" => {}}))
    BatchUpdateFirewallRuleInput.type = Types::BatchUpdateFirewallRuleInput
    BatchUpdateFirewallRuleInputItem.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action"))
    BatchUpdateFirewallRuleInputItem.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    BatchUpdateFirewallRuleInputItem.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    BatchUpdateFirewallRuleInputItem.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    BatchUpdateFirewallRuleInputItem.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    BatchUpdateFirewallRuleInputItem.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    BatchUpdateFirewallRuleInputItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    BatchUpdateFirewallRuleInputItem.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    BatchUpdateFirewallRuleInputItem.add_member(:firewall_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallRuleId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    BatchUpdateFirewallRuleInputItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    BatchUpdateFirewallRuleInputItem.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority"))
    BatchUpdateFirewallRuleInputItem.type = Types::BatchUpdateFirewallRuleInputItem
    BatchUpdateFirewallRuleInputItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateFirewallRuleInputItem, name: "member"))
    BatchUpdateFirewallRuleOutput.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateFirewallRuleOutputItems, name: "failures", traits: {"smithy.api#required" => {}}))
    BatchUpdateFirewallRuleOutput.add_member(:successes, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateFirewallRuleOutputItems, name: "successes", traits: {"smithy.api#required" => {}}))
    BatchUpdateFirewallRuleOutput.type = Types::BatchUpdateFirewallRuleOutput
    BatchUpdateFirewallRuleOutputItem.add_member(:firewall_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateFirewallRuleResult, name: "firewallRule", traits: {"smithy.api#required" => {}}))
    BatchUpdateFirewallRuleOutputItem.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "code", traits: {"smithy.api#required" => {}}))
    BatchUpdateFirewallRuleOutputItem.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    BatchUpdateFirewallRuleOutputItem.type = Types::BatchUpdateFirewallRuleOutputItem
    BatchUpdateFirewallRuleOutputItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateFirewallRuleOutputItem, name: "member"))
    BatchUpdateFirewallRuleResult.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action"))
    BatchUpdateFirewallRuleResult.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    BatchUpdateFirewallRuleResult.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    BatchUpdateFirewallRuleResult.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    BatchUpdateFirewallRuleResult.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    BatchUpdateFirewallRuleResult.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    BatchUpdateFirewallRuleResult.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    BatchUpdateFirewallRuleResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt"))
    BatchUpdateFirewallRuleResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    BatchUpdateFirewallRuleResult.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    BatchUpdateFirewallRuleResult.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    BatchUpdateFirewallRuleResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    BatchUpdateFirewallRuleResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    BatchUpdateFirewallRuleResult.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority"))
    BatchUpdateFirewallRuleResult.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId"))
    BatchUpdateFirewallRuleResult.add_member(:query_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "queryType"))
    BatchUpdateFirewallRuleResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status"))
    BatchUpdateFirewallRuleResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt"))
    BatchUpdateFirewallRuleResult.type = Types::BatchUpdateFirewallRuleResult
    BlockOverrideDnsQueryType.add_member(:cname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNAME", traits: {"smithy.api#enumValue" => "CNAME"}))
    CRResourceStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    CRResourceStatus.add_member(:operational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONAL", traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    CRResourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    CRResourceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConfidenceThreshold.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ConfidenceThreshold.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ConfidenceThreshold.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAccessSourceInput.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "cidr", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessSourceInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType", traits: {"smithy.api#default" => "IPV4"}))
    CreateAccessSourceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    CreateAccessSourceInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateAccessSourceInput.type = Types::CreateAccessSourceInput
    CreateAccessSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "cidr", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    CreateAccessSourceOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateAccessSourceOutput.type = Types::CreateAccessSourceOutput
    CreateAccessTokenInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessTokenInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAccessTokenInput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "expiresAt"))
    CreateAccessTokenInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    CreateAccessTokenInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateAccessTokenInput.type = Types::CreateAccessTokenInput
    CreateAccessTokenOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateAccessTokenOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateAccessTokenOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateAccessTokenOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateAccessTokenOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    CreateAccessTokenOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "expiresAt", traits: {"smithy.api#required" => {}}))
    CreateAccessTokenOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    CreateAccessTokenOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateAccessTokenOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenValue, name: "value", traits: {"smithy.api#required" => {}}))
    CreateAccessTokenOutput.type = Types::CreateAccessTokenOutput
    CreateDNSViewInput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDNSViewInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDNSViewInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDNSViewInput.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#default" => "DISABLED"}))
    CreateDNSViewInput.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#default" => "DISABLED"}))
    CreateDNSViewInput.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#default" => "DISABLED"}))
    CreateDNSViewInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateDNSViewInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateDNSViewInput.type = Types::CreateDNSViewInput
    CreateDNSViewOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateDNSViewOutput.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateDNSViewOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateDNSViewOutput.type = Types::CreateDNSViewOutput
    CreateFirewallDomainListInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFirewallDomainListInput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFirewallDomainListInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateFirewallDomainListInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateFirewallDomainListInput.type = Types::CreateFirewallDomainListInput
    CreateFirewallDomainListOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateFirewallDomainListOutput.add_member(:domain_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "domainCount", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateFirewallDomainListOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateFirewallDomainListOutput.type = Types::CreateFirewallDomainListOutput
    CreateFirewallRuleInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleInput.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    CreateFirewallRuleInput.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    CreateFirewallRuleInput.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    CreateFirewallRuleInput.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    CreateFirewallRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFirewallRuleInput.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    CreateFirewallRuleInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateFirewallRuleInput.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    CreateFirewallRuleInput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    CreateFirewallRuleInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleInput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority"))
    CreateFirewallRuleInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleInput.add_member(:q_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "qType", traits: {"smithy.api#property" => {"name" => "queryType"}}))
    CreateFirewallRuleInput.type = Types::CreateFirewallRuleInput
    CreateFirewallRuleOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleOutput.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    CreateFirewallRuleOutput.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    CreateFirewallRuleOutput.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    CreateFirewallRuleOutput.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    CreateFirewallRuleOutput.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    CreateFirewallRuleOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateFirewallRuleOutput.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    CreateFirewallRuleOutput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    CreateFirewallRuleOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleOutput.add_member(:query_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "queryType"))
    CreateFirewallRuleOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateFirewallRuleOutput.type = Types::CreateFirewallRuleOutput
    CreateGlobalResolverInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateGlobalResolverInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateGlobalResolverInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolverIpAddressType, name: "ipAddressType"))
    CreateGlobalResolverInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverInput.add_member(:observability_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "observabilityRegion"))
    CreateGlobalResolverInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "regions", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateGlobalResolverInput.type = Types::CreateGlobalResolverInput
    CreateGlobalResolverOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    CreateGlobalResolverOutput.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Sni, name: "dnsName", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolverIpAddressType, name: "ipAddressType"))
    CreateGlobalResolverOutput.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv4Addresses, name: "ipv4Addresses", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv6Addresses, name: "ipv6Addresses"))
    CreateGlobalResolverOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:observability_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "observabilityRegion"))
    CreateGlobalResolverOutput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "regions", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateGlobalResolverOutput.type = Types::CreateGlobalResolverOutput
    DNSViewSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    DNSViewSummary.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DNSViewSummary.type = Types::DNSViewSummary
    DNSViews.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSViewSummary, name: "member"))
    DeleteAccessSourceInput.add_member(:access_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "accessSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteAccessSourceInput.type = Types::DeleteAccessSourceInput
    DeleteAccessSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "cidr", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    DeleteAccessSourceOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DeleteAccessSourceOutput.type = Types::DeleteAccessSourceOutput
    DeleteAccessTokenInput.add_member(:access_token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "accessTokenId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteAccessTokenInput.type = Types::DeleteAccessTokenInput
    DeleteAccessTokenOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteAccessTokenOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteAccessTokenOutput.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "deletedAt", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    DeleteAccessTokenOutput.type = Types::DeleteAccessTokenOutput
    DeleteDNSViewInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteDNSViewInput.type = Types::DeleteDNSViewInput
    DeleteDNSViewOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    DeleteDNSViewOutput.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    DeleteDNSViewOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteDNSViewOutput.type = Types::DeleteDNSViewOutput
    DeleteFirewallDomainListInput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteFirewallDomainListInput.type = Types::DeleteFirewallDomainListInput
    DeleteFirewallDomainListOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteFirewallDomainListOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteFirewallDomainListOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteFirewallDomainListOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteFirewallDomainListOutput.type = Types::DeleteFirewallDomainListOutput
    DeleteFirewallRuleInput.add_member(:firewall_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteFirewallRuleInput.type = Types::DeleteFirewallRuleInput
    DeleteFirewallRuleOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleOutput.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    DeleteFirewallRuleOutput.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    DeleteFirewallRuleOutput.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    DeleteFirewallRuleOutput.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    DeleteFirewallRuleOutput.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    DeleteFirewallRuleOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    DeleteFirewallRuleOutput.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    DeleteFirewallRuleOutput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    DeleteFirewallRuleOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleOutput.add_member(:query_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "queryType"))
    DeleteFirewallRuleOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DeleteFirewallRuleOutput.type = Types::DeleteFirewallRuleOutput
    DeleteGlobalResolverInput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteGlobalResolverInput.type = Types::DeleteGlobalResolverInput
    DeleteGlobalResolverOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Sni, name: "dnsName", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:observability_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "observabilityRegion"))
    DeleteGlobalResolverOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    DeleteGlobalResolverOutput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "regions", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv4Addresses, name: "ipv4Addresses", traits: {"smithy.api#required" => {}}))
    DeleteGlobalResolverOutput.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv6Addresses, name: "ipv6Addresses"))
    DeleteGlobalResolverOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolverIpAddressType, name: "ipAddressType"))
    DeleteGlobalResolverOutput.type = Types::DeleteGlobalResolverOutput
    DisableDNSViewInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DisableDNSViewInput.type = Types::DisableDNSViewInput
    DisableDNSViewOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    DisableDNSViewOutput.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    DisableDNSViewOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DisableDNSViewOutput.type = Types::DisableDNSViewOutput
    DisassociateHostedZoneInput.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "hostedZoneId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateHostedZoneInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateHostedZoneInput.type = Types::DisassociateHostedZoneInput
    DisassociateHostedZoneOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    DisassociateHostedZoneOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    DisassociateHostedZoneOutput.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "hostedZoneId", traits: {"smithy.api#required" => {}}))
    DisassociateHostedZoneOutput.add_member(:hosted_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneName, name: "hostedZoneName", traits: {"smithy.api#required" => {}}))
    DisassociateHostedZoneOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    DisassociateHostedZoneOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DisassociateHostedZoneOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DisassociateHostedZoneOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DisassociateHostedZoneOutput.type = Types::DisassociateHostedZoneOutput
    DnsAdvancedProtection.add_member(:dga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DGA", traits: {"smithy.api#enumValue" => "DGA"}))
    DnsAdvancedProtection.add_member(:dns_tunneling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_TUNNELING", traits: {"smithy.api#enumValue" => "DNS_TUNNELING"}))
    DnsAdvancedProtection.add_member(:dictionary_dga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DICTIONARY_DGA", traits: {"smithy.api#enumValue" => "DICTIONARY_DGA"}))
    DnsProtocol.add_member(:do53, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DO53", traits: {"smithy.api#enumValue" => "DO53"}))
    DnsProtocol.add_member(:doh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOH", traits: {"smithy.api#enumValue" => "DOH"}))
    DnsProtocol.add_member(:dot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOT", traits: {"smithy.api#enumValue" => "DOT"}))
    DnsSecValidationType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DnsSecValidationType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Domains.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "member"))
    EdnsClientSubnetType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EdnsClientSubnetType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EnableDNSViewInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    EnableDNSViewInput.type = Types::EnableDNSViewInput
    EnableDNSViewOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    EnableDNSViewOutput.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    EnableDNSViewOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    EnableDNSViewOutput.type = Types::EnableDNSViewOutput
    Filters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Filters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Strings, name: "value"))
    FirewallBlockResponse.add_member(:nodata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODATA", traits: {"smithy.api#enumValue" => "NODATA"}))
    FirewallBlockResponse.add_member(:nxdomain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NXDOMAIN", traits: {"smithy.api#enumValue" => "NXDOMAIN"}))
    FirewallBlockResponse.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERRIDE", traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    FirewallDomainLists.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainListsItem, name: "member"))
    FirewallDomainListsItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    FirewallDomainListsItem.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    FirewallDomainListsItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FirewallDomainListsItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    FirewallDomainListsItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    FirewallDomainListsItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    FirewallDomainListsItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    FirewallDomainListsItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    FirewallDomainListsItem.type = Types::FirewallDomainListsItem
    FirewallRuleAction.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    FirewallRuleAction.add_member(:alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    FirewallRuleAction.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    FirewallRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesItem, name: "member"))
    FirewallRulesFailOpenType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FirewallRulesFailOpenType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FirewallRulesItem.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    FirewallRulesItem.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    FirewallRulesItem.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    FirewallRulesItem.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    FirewallRulesItem.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    FirewallRulesItem.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    FirewallRulesItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FirewallRulesItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    FirewallRulesItem.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    FirewallRulesItem.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    FirewallRulesItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    FirewallRulesItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    FirewallRulesItem.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    FirewallRulesItem.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    FirewallRulesItem.add_member(:query_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "queryType"))
    FirewallRulesItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    FirewallRulesItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    FirewallRulesItem.type = Types::FirewallRulesItem
    GetAccessSourceInput.add_member(:access_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "accessSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetAccessSourceInput.type = Types::GetAccessSourceInput
    GetAccessSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "cidr", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    GetAccessSourceOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetAccessSourceOutput.type = Types::GetAccessSourceOutput
    GetAccessTokenInput.add_member(:access_token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "accessTokenId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetAccessTokenInput.type = Types::GetAccessTokenInput
    GetAccessTokenOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    GetAccessTokenOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "expiresAt", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    GetAccessTokenOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenValue, name: "value", traits: {"smithy.api#required" => {}}))
    GetAccessTokenOutput.type = Types::GetAccessTokenOutput
    GetDNSViewInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetDNSViewInput.type = Types::GetDNSViewInput
    GetDNSViewOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    GetDNSViewOutput.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    GetDNSViewOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetDNSViewOutput.type = Types::GetDNSViewOutput
    GetFirewallDomainListInput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetFirewallDomainListInput.type = Types::GetFirewallDomainListInput
    GetFirewallDomainListOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    GetFirewallDomainListOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    GetFirewallDomainListOutput.add_member(:domain_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "domainCount", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetFirewallDomainListOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage"))
    GetFirewallDomainListOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetFirewallDomainListOutput.type = Types::GetFirewallDomainListOutput
    GetFirewallRuleInput.add_member(:firewall_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetFirewallRuleInput.type = Types::GetFirewallRuleInput
    GetFirewallRuleOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleOutput.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    GetFirewallRuleOutput.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    GetFirewallRuleOutput.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    GetFirewallRuleOutput.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    GetFirewallRuleOutput.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    GetFirewallRuleOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    GetFirewallRuleOutput.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    GetFirewallRuleOutput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    GetFirewallRuleOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleOutput.add_member(:query_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "queryType"))
    GetFirewallRuleOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetFirewallRuleOutput.type = Types::GetFirewallRuleOutput
    GetGlobalResolverInput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetGlobalResolverInput.type = Types::GetGlobalResolverInput
    GetGlobalResolverOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Sni, name: "dnsName", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:observability_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "observabilityRegion"))
    GetGlobalResolverOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    GetGlobalResolverOutput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "regions", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv4Addresses, name: "ipv4Addresses", traits: {"smithy.api#required" => {}}))
    GetGlobalResolverOutput.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv6Addresses, name: "ipv6Addresses"))
    GetGlobalResolverOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolverIpAddressType, name: "ipAddressType"))
    GetGlobalResolverOutput.type = Types::GetGlobalResolverOutput
    GetHostedZoneAssociationInput.add_member(:hosted_zone_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "hostedZoneAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetHostedZoneAssociationInput.type = Types::GetHostedZoneAssociationInput
    GetHostedZoneAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetHostedZoneAssociationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetHostedZoneAssociationOutput.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "hostedZoneId", traits: {"smithy.api#required" => {}}))
    GetHostedZoneAssociationOutput.add_member(:hosted_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneName, name: "hostedZoneName", traits: {"smithy.api#required" => {}}))
    GetHostedZoneAssociationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetHostedZoneAssociationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetHostedZoneAssociationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetHostedZoneAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetHostedZoneAssociationOutput.type = Types::GetHostedZoneAssociationOutput
    GetManagedFirewallDomainListInput.add_member(:managed_firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "managedFirewallDomainListId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetManagedFirewallDomainListInput.type = Types::GetManagedFirewallDomainListInput
    GetManagedFirewallDomainListOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    GetManagedFirewallDomainListOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetManagedFirewallDomainListOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetManagedFirewallDomainListOutput.add_member(:managed_list_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "managedListType", traits: {"smithy.api#required" => {}}))
    GetManagedFirewallDomainListOutput.type = Types::GetManagedFirewallDomainListOutput
    GlobalResolverIpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    GlobalResolverIpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    GlobalResolvers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolversItem, name: "member"))
    GlobalResolversItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Sni, name: "dnsName", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:observability_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "observabilityRegion"))
    GlobalResolversItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    GlobalResolversItem.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "regions", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv4Addresses, name: "ipv4Addresses", traits: {"smithy.api#required" => {}}))
    GlobalResolversItem.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv6Addresses, name: "ipv6Addresses"))
    GlobalResolversItem.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolverIpAddressType, name: "ipAddressType"))
    GlobalResolversItem.type = Types::GlobalResolversItem
    HostedZoneAssociationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    HostedZoneAssociationStatus.add_member(:operational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONAL", traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    HostedZoneAssociationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    HostedZoneAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    HostedZoneAssociationSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    HostedZoneAssociationSummary.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "hostedZoneId", traits: {"smithy.api#required" => {}}))
    HostedZoneAssociationSummary.add_member(:hosted_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneName, name: "hostedZoneName", traits: {"smithy.api#required" => {}}))
    HostedZoneAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    HostedZoneAssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    HostedZoneAssociationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    HostedZoneAssociationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    HostedZoneAssociationSummary.type = Types::HostedZoneAssociationSummary
    HostedZoneAssociations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneAssociationSummary, name: "member"))
    IPv4Addresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv4Address, name: "member"))
    IPv6Addresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv6Address, name: "member"))
    ImportFirewallDomainsInput.add_member(:domain_file_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainFileUrl", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ImportFirewallDomainsInput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    ImportFirewallDomainsInput.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operation", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ImportFirewallDomainsInput.type = Types::ImportFirewallDomainsInput
    ImportFirewallDomainsOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ImportFirewallDomainsOutput.type = Types::ImportFirewallDomainsOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    ListAccessSourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListAccessSourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListAccessSourcesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "filters", traits: {"smithy.api#httpQueryParams" => {}}))
    ListAccessSourcesInput.type = Types::ListAccessSourcesInput
    ListAccessSourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAccessSourcesOutput.add_member(:access_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessSources, name: "accessSources", traits: {"smithy.api#required" => {}}))
    ListAccessSourcesOutput.type = Types::ListAccessSourcesOutput
    ListAccessTokensInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListAccessTokensInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListAccessTokensInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAccessTokensInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "filters", traits: {"smithy.api#httpQueryParams" => {}}))
    ListAccessTokensInput.type = Types::ListAccessTokensInput
    ListAccessTokensOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAccessTokensOutput.add_member(:access_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokens, name: "accessTokens"))
    ListAccessTokensOutput.type = Types::ListAccessTokensOutput
    ListDNSViewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListDNSViewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListDNSViewsInput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDNSViewsInput.type = Types::ListDNSViewsInput
    ListDNSViewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListDNSViewsOutput.add_member(:dns_views, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSViews, name: "dnsViews", traits: {"smithy.api#required" => {}}))
    ListDNSViewsOutput.type = Types::ListDNSViewsOutput
    ListFirewallDomainListsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListFirewallDomainListsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListFirewallDomainListsInput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#httpQuery" => "global_resolver_id"}))
    ListFirewallDomainListsInput.type = Types::ListFirewallDomainListsInput
    ListFirewallDomainListsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListFirewallDomainListsOutput.add_member(:firewall_domain_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDomainLists, name: "firewallDomainLists", traits: {"smithy.api#required" => {}}))
    ListFirewallDomainListsOutput.type = Types::ListFirewallDomainListsOutput
    ListFirewallDomainsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#notProperty" => {}}))
    ListFirewallDomainsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token", "smithy.api#notProperty" => {}}))
    ListFirewallDomainsInput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    ListFirewallDomainsInput.type = Types::ListFirewallDomainsInput
    ListFirewallDomainsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListFirewallDomainsOutput.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: Domains, name: "domains", traits: {"smithy.api#required" => {}}))
    ListFirewallDomainsOutput.type = Types::ListFirewallDomainsOutput
    ListFirewallRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListFirewallRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListFirewallRulesInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#httpQuery" => "dnsview_id", "smithy.api#required" => {}}))
    ListFirewallRulesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "filters", traits: {"smithy.api#httpQueryParams" => {}}))
    ListFirewallRulesInput.type = Types::ListFirewallRulesInput
    ListFirewallRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListFirewallRulesOutput.add_member(:firewall_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRules, name: "firewallRules", traits: {"smithy.api#required" => {}}))
    ListFirewallRulesOutput.type = Types::ListFirewallRulesOutput
    ListGlobalResolversInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListGlobalResolversInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListGlobalResolversInput.type = Types::ListGlobalResolversInput
    ListGlobalResolversOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListGlobalResolversOutput.add_member(:global_resolvers, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolvers, name: "globalResolvers", traits: {"smithy.api#required" => {}}))
    ListGlobalResolversOutput.type = Types::ListGlobalResolversOutput
    ListHostedZoneAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListHostedZoneAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListHostedZoneAssociationsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn"}))
    ListHostedZoneAssociationsInput.type = Types::ListHostedZoneAssociationsInput
    ListHostedZoneAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListHostedZoneAssociationsOutput.add_member(:hosted_zone_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneAssociations, name: "hostedZoneAssociations", traits: {"smithy.api#required" => {}}))
    ListHostedZoneAssociationsOutput.type = Types::ListHostedZoneAssociationsOutput
    ListManagedFirewallDomainListsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListManagedFirewallDomainListsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListManagedFirewallDomainListsInput.add_member(:managed_firewall_domain_list_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "managedFirewallDomainListType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListManagedFirewallDomainListsInput.type = Types::ListManagedFirewallDomainListsInput
    ListManagedFirewallDomainListsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListManagedFirewallDomainListsOutput.add_member(:managed_firewall_domain_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedFirewallDomainLists, name: "managedFirewallDomainLists", traits: {"smithy.api#required" => {}}))
    ListManagedFirewallDomainListsOutput.type = Types::ListManagedFirewallDomainListsOutput
    ListSharedDNSViewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListSharedDNSViewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListSharedDNSViewsInput.type = Types::ListSharedDNSViewsInput
    ListSharedDNSViewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSharedDNSViewsOutput.add_member(:dns_views, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedDNSViews, name: "dnsViews", traits: {"smithy.api#required" => {}}))
    ListSharedDNSViewsOutput.type = Types::ListSharedDNSViewsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManagedFirewallDomainLists.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedFirewallDomainListsItem, name: "member"))
    ManagedFirewallDomainListsItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    ManagedFirewallDomainListsItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    ManagedFirewallDomainListsItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    ManagedFirewallDomainListsItem.add_member(:managed_list_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "managedListType", traits: {"smithy.api#required" => {}}))
    ManagedFirewallDomainListsItem.type = Types::ManagedFirewallDomainListsItem
    ProfileResourceStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ProfileResourceStatus.add_member(:operational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONAL", traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    ProfileResourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ProfileResourceStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ProfileResourceStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ProfileResourceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ProfileResourceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    Regions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SharedDNSViewSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    SharedDNSViewSummary.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    SharedDNSViewSummary.type = Types::SharedDNSViewSummary
    SharedDNSViews.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedDNSViewSummary, name: "member"))
    Strings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TokenStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TokenStatus.add_member(:operational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATIONAL", traits: {"smithy.api#enumValue" => "OPERATIONAL"}))
    TokenStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccessSourceInput.add_member(:access_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "accessSourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateAccessSourceInput.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "cidr"))
    UpdateAccessSourceInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    UpdateAccessSourceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    UpdateAccessSourceInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsProtocol, name: "protocol"))
    UpdateAccessSourceInput.type = Types::UpdateAccessSourceInput
    UpdateAccessSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "cidr", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name"))
    UpdateAccessSourceOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsProtocol, name: "protocol", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateAccessSourceOutput.type = Types::UpdateAccessSourceOutput
    UpdateAccessTokenInput.add_member(:access_token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "accessTokenId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateAccessTokenInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateAccessTokenInput.type = Types::UpdateAccessTokenInput
    UpdateAccessTokenOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateAccessTokenOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNameShort, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateAccessTokenOutput.type = Types::UpdateAccessTokenOutput
    UpdateDNSViewInput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateDNSViewInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    UpdateDNSViewInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateDNSViewInput.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation"))
    UpdateDNSViewInput.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet"))
    UpdateDNSViewInput.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen"))
    UpdateDNSViewInput.type = Types::UpdateDNSViewInput
    UpdateDNSViewOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    UpdateDNSViewOutput.add_member(:dnssec_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsSecValidationType, name: "dnssecValidation", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:edns_client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: EdnsClientSubnetType, name: "ednsClientSubnet", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:firewall_rules_fail_open, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulesFailOpenType, name: "firewallRulesFailOpen", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateDNSViewOutput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateDNSViewOutput.type = Types::UpdateDNSViewOutput
    UpdateFirewallDomainsInput.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: Domains, name: "domains", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateFirewallDomainsInput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateFirewallDomainsInput.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operation", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateFirewallDomainsInput.type = Types::UpdateFirewallDomainsInput
    UpdateFirewallDomainsOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateFirewallDomainsOutput.type = Types::UpdateFirewallDomainsOutput
    UpdateFirewallRuleInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action"))
    UpdateFirewallRuleInput.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    UpdateFirewallRuleInput.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    UpdateFirewallRuleInput.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    UpdateFirewallRuleInput.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    UpdateFirewallRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateFirewallRuleInput.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    UpdateFirewallRuleInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateFirewallRuleInput.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    UpdateFirewallRuleInput.add_member(:firewall_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallRuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateFirewallRuleInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    UpdateFirewallRuleInput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority"))
    UpdateFirewallRuleInput.type = Types::UpdateFirewallRuleInput
    UpdateFirewallRuleOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRuleAction, name: "action", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleOutput.add_member(:block_override_dns_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideDnsQueryType, name: "blockOverrideDnsType"))
    UpdateFirewallRuleOutput.add_member(:block_override_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "blockOverrideDomain"))
    UpdateFirewallRuleOutput.add_member(:block_override_ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockOverrideTtl, name: "blockOverrideTtl"))
    UpdateFirewallRuleOutput.add_member(:block_response, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallBlockResponse, name: "blockResponse"))
    UpdateFirewallRuleOutput.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceThreshold, name: "confidenceThreshold"))
    UpdateFirewallRuleOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateFirewallRuleOutput.add_member(:dns_advanced_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsAdvancedProtection, name: "dnsAdvancedProtection"))
    UpdateFirewallRuleOutput.add_member(:firewall_domain_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "firewallDomainListId"))
    UpdateFirewallRuleOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallRulePriority, name: "priority", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleOutput.add_member(:dns_view_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "dnsViewId", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleOutput.add_member(:query_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsQueryType, name: "queryType"))
    UpdateFirewallRuleOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateFirewallRuleOutput.type = Types::UpdateFirewallRuleOutput
    UpdateGlobalResolverInput.add_member(:global_resolver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "globalResolverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateGlobalResolverInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    UpdateGlobalResolverInput.add_member(:observability_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "observabilityRegion"))
    UpdateGlobalResolverInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateGlobalResolverInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolverIpAddressType, name: "ipAddressType"))
    UpdateGlobalResolverInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "regions"))
    UpdateGlobalResolverInput.type = Types::UpdateGlobalResolverInput
    UpdateGlobalResolverOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Sni, name: "dnsName", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:observability_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "observabilityRegion"))
    UpdateGlobalResolverOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "description"))
    UpdateGlobalResolverOutput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "regions", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CRResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv4Addresses, name: "ipv4Addresses", traits: {"smithy.api#required" => {}}))
    UpdateGlobalResolverOutput.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: IPv6Addresses, name: "ipv6Addresses"))
    UpdateGlobalResolverOutput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalResolverIpAddressType, name: "ipAddressType"))
    UpdateGlobalResolverOutput.type = Types::UpdateGlobalResolverOutput
    UpdateHostedZoneAssociationInput.add_member(:hosted_zone_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "hostedZoneAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateHostedZoneAssociationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    UpdateHostedZoneAssociationInput.type = Types::UpdateHostedZoneAssociationInput
    UpdateHostedZoneAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneAssociationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneAssociationOutput.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "hostedZoneId", traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneAssociationOutput.add_member(:hosted_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneName, name: "hostedZoneName", traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneAssociationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneAssociationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneAssociationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601TimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneAssociationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneAssociationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateHostedZoneAssociationOutput.type = Types::UpdateHostedZoneAssociationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))

    EC2DNSGlobalResolverCustomerAPI = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53globalresolver#EC2DNSGlobalResolverCustomerAPI"
      service.name = "EC2DNSGlobalResolverCustomerAPI"
      service.version = "2022-09-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53GlobalResolver", "arnNamespace" => "route53globalresolver"}, "aws.auth#sigv4" => {"name" => "route53globalresolver"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Route 53 Global Resolver", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://route53globalresolver-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://route53globalresolver.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:associate_hosted_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#AssociateHostedZone"
        operation.name = "AssociateHostedZone"
        operation.input = AssociateHostedZoneInput
        operation.output = AssociateHostedZoneOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to associate a resource to a hosted zone"}, "smithy.api#http" => {"method" => "POST", "uri" => "/hosted-zone-associations/{hostedZoneId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_create_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#BatchCreateFirewallRule"
        operation.name = "BatchCreateFirewallRule"
        operation.input = BatchCreateFirewallRuleInput
        operation.output = BatchCreateFirewallRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to create multiple firewall rules"}, "smithy.api#http" => {"method" => "POST", "uri" => "/firewall-rules/batch-create", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#BatchDeleteFirewallRule"
        operation.name = "BatchDeleteFirewallRule"
        operation.input = BatchDeleteFirewallRuleInput
        operation.output = BatchDeleteFirewallRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete multiple firewall rules"}, "smithy.api#http" => {"method" => "POST", "uri" => "/firewall-rules/batch-delete", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_update_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#BatchUpdateFirewallRule"
        operation.name = "BatchUpdateFirewallRule"
        operation.input = BatchUpdateFirewallRuleInput
        operation.output = BatchUpdateFirewallRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update multiple firewall rules"}, "smithy.api#http" => {"method" => "POST", "uri" => "/firewall-rules/batch-update", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_access_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#CreateAccessSource"
        operation.name = "CreateAccessSource"
        operation.input = CreateAccessSourceInput
        operation.output = CreateAccessSourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create an access source"}, "smithy.api#http" => {"method" => "POST", "uri" => "/access-sources", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#CreateAccessToken"
        operation.name = "CreateAccessToken"
        operation.input = CreateAccessTokenInput
        operation.output = CreateAccessTokenOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create an access token"}, "smithy.api#http" => {"method" => "POST", "uri" => "/tokens/{dnsViewId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_dns_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#CreateDNSView"
        operation.name = "CreateDNSView"
        operation.input = CreateDNSViewInput
        operation.output = CreateDNSViewOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a dns view"}, "smithy.api#http" => {"method" => "POST", "uri" => "/dns-views/{globalResolverId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#CreateFirewallDomainList"
        operation.name = "CreateFirewallDomainList"
        operation.input = CreateFirewallDomainListInput
        operation.output = CreateFirewallDomainListOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a firewall domain list"}, "smithy.api#http" => {"method" => "POST", "uri" => "/firewall-domain-lists/{globalResolverId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#CreateFirewallRule"
        operation.name = "CreateFirewallRule"
        operation.input = CreateFirewallRuleInput
        operation.output = CreateFirewallRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to create a firewall rule"}, "smithy.api#http" => {"method" => "POST", "uri" => "/firewall-rules", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_global_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#CreateGlobalResolver"
        operation.name = "CreateGlobalResolver"
        operation.input = CreateGlobalResolverInput
        operation.output = CreateGlobalResolverOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a global resolver"}, "smithy.api#http" => {"method" => "POST", "uri" => "/global-resolver", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#DeleteAccessSource"
        operation.name = "DeleteAccessSource"
        operation.input = DeleteAccessSourceInput
        operation.output = DeleteAccessSourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an access source"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/access-sources/{accessSourceId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#DeleteAccessToken"
        operation.name = "DeleteAccessToken"
        operation.input = DeleteAccessTokenInput
        operation.output = DeleteAccessTokenOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an access token"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tokens/{accessTokenId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dns_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#DeleteDNSView"
        operation.name = "DeleteDNSView"
        operation.input = DeleteDNSViewInput
        operation.output = DeleteDNSViewOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete a dns view"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/dns-views/{dnsViewId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#DeleteFirewallDomainList"
        operation.name = "DeleteFirewallDomainList"
        operation.input = DeleteFirewallDomainListInput
        operation.output = DeleteFirewallDomainListOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete a firewall domain list"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/firewall-domain-lists/{firewallDomainListId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#DeleteFirewallRule"
        operation.name = "DeleteFirewallRule"
        operation.input = DeleteFirewallRuleInput
        operation.output = DeleteFirewallRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete a firewall rule"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/firewall-rules/{firewallRuleId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_global_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#DeleteGlobalResolver"
        operation.name = "DeleteGlobalResolver"
        operation.input = DeleteGlobalResolverInput
        operation.output = DeleteGlobalResolverOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete a global resolver"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/global-resolver/{globalResolverId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_dns_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#DisableDNSView"
        operation.name = "DisableDNSView"
        operation.input = DisableDNSViewInput
        operation.output = DisableDNSViewOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to disable a dns view"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/dns-views/{dnsViewId}/disable", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_hosted_zone, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#DisassociateHostedZone"
        operation.name = "DisassociateHostedZone"
        operation.input = DisassociateHostedZoneInput
        operation.output = DisassociateHostedZoneOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to disassociate a hosted zone from a resource"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/hosted-zone-associations/hosted-zone/{hostedZoneId}/resource-arn/{resourceArn+}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:enable_dns_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#EnableDNSView"
        operation.name = "EnableDNSView"
        operation.input = EnableDNSViewInput
        operation.output = EnableDNSViewOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to enable a dns view"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/dns-views/{dnsViewId}/enable", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_access_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#GetAccessSource"
        operation.name = "GetAccessSource"
        operation.input = GetAccessSourceInput
        operation.output = GetAccessSourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get an access source"}, "smithy.api#http" => {"method" => "GET", "uri" => "/access-sources/{accessSourceId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetAccessSourceFailure", "params" => {"accessSourceId" => "as-doesnotexist1111"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.route53globalresolver#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2", "useDualstack" => true}}]}
      end)
      service.add_operation(:get_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#GetAccessToken"
        operation.name = "GetAccessToken"
        operation.input = GetAccessTokenInput
        operation.output = GetAccessTokenOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get an access token"}, "smithy.api#http" => {"method" => "GET", "uri" => "/tokens/{accessTokenId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetAccessTokenFailure", "params" => {"accessTokenId" => "at-doesnotexist1111"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.route53globalresolver#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2", "useDualstack" => true}}]}
      end)
      service.add_operation(:get_dns_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#GetDNSView"
        operation.name = "GetDNSView"
        operation.input = GetDNSViewInput
        operation.output = GetDNSViewOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a dns view"}, "smithy.api#http" => {"method" => "GET", "uri" => "/dns-views/{dnsViewId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetDNSViewFailure", "params" => {"dnsViewId" => "dnsv-doesnotexist1111"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.route53globalresolver#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2", "useDualstack" => true}}]}
      end)
      service.add_operation(:get_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#GetFirewallDomainList"
        operation.name = "GetFirewallDomainList"
        operation.input = GetFirewallDomainListInput
        operation.output = GetFirewallDomainListOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a firewall domain list"}, "smithy.api#http" => {"method" => "GET", "uri" => "/firewall-domain-lists/{firewallDomainListId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetFirewallDomainListFailure", "params" => {"firewallDomainListId" => "fdl-doesnotexist1111"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.route53globalresolver#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2", "useDualstack" => true}}]}
      end)
      service.add_operation(:get_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#GetFirewallRule"
        operation.name = "GetFirewallRule"
        operation.input = GetFirewallRuleInput
        operation.output = GetFirewallRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a firewall rule"}, "smithy.api#http" => {"method" => "GET", "uri" => "/firewall-rules/{firewallRuleId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetFirewallRuleFailure", "params" => {"firewallRuleId" => "fr-doesnotexist1111"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.route53globalresolver#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2", "useDualstack" => true}}]}
      end)
      service.add_operation(:get_global_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#GetGlobalResolver"
        operation.name = "GetGlobalResolver"
        operation.input = GetGlobalResolverInput
        operation.output = GetGlobalResolverOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a global resolver"}, "smithy.api#http" => {"method" => "GET", "uri" => "/global-resolver/{globalResolverId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetGlobalResolverFailure", "params" => {"globalResolverId" => "gr-doesnotexist1111"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.route53globalresolver#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2", "useDualstack" => true}}]}
      end)
      service.add_operation(:get_hosted_zone_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#GetHostedZoneAssociation"
        operation.name = "GetHostedZoneAssociation"
        operation.input = GetHostedZoneAssociationInput
        operation.output = GetHostedZoneAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a hosted zone association"}, "smithy.api#http" => {"method" => "GET", "uri" => "/hosted-zone-associations/{hostedZoneAssociationId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetHostedZoneAssociationFailure", "params" => {"hostedZoneAssociationId" => "phza-doesnotexist1111"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.route53globalresolver#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2", "useDualstack" => true}}]}
      end)
      service.add_operation(:get_managed_firewall_domain_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#GetManagedFirewallDomainList"
        operation.name = "GetManagedFirewallDomainList"
        operation.input = GetManagedFirewallDomainListInput
        operation.output = GetManagedFirewallDomainListOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a managed firewall domain list"}, "smithy.api#http" => {"method" => "GET", "uri" => "/managed-firewall-domain-lists/{managedFirewallDomainListId}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetManagedFirewallDomainListFailure", "params" => {"managedFirewallDomainListId" => "aws-managed-fdl-99919"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.route53globalresolver#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-2", "useDualstack" => true}}]}
      end)
      service.add_operation(:import_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ImportFirewallDomains"
        operation.name = "ImportFirewallDomains"
        operation.input = ImportFirewallDomainsInput
        operation.output = ImportFirewallDomainsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to import firewall domains from an S3 bucket", "requiredActions" => ["s3:GetObject", "s3:ListBucket"]}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/firewall-domain-lists/{firewallDomainListId}/domains/s3_file_url", "code" => 200}}
      end)
      service.add_operation(:list_access_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListAccessSources"
        operation.name = "ListAccessSources"
        operation.input = ListAccessSourcesInput
        operation.output = ListAccessSourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list access sources"}, "smithy.api#http" => {"method" => "GET", "uri" => "/access-sources", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessSources.new
      end)
      service.add_operation(:list_access_tokens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListAccessTokens"
        operation.name = "ListAccessTokens"
        operation.input = ListAccessTokensInput
        operation.output = ListAccessTokensOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list access tokens"}, "smithy.api#http" => {"method" => "GET", "uri" => "/tokens/dns-view/{dnsViewId}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessTokens.new
      end)
      service.add_operation(:list_dns_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListDNSViews"
        operation.name = "ListDNSViews"
        operation.input = ListDNSViewsInput
        operation.output = ListDNSViewsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list dns views"}, "smithy.api#http" => {"method" => "GET", "uri" => "/dns-views/resolver/{globalResolverId}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDNSViews.new
      end)
      service.add_operation(:list_firewall_domain_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListFirewallDomainLists"
        operation.name = "ListFirewallDomainLists"
        operation.input = ListFirewallDomainListsInput
        operation.output = ListFirewallDomainListsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list firewall domain lists"}, "smithy.api#http" => {"method" => "GET", "uri" => "/firewall-domain-lists", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFirewallDomainLists.new
      end)
      service.add_operation(:list_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListFirewallDomains"
        operation.name = "ListFirewallDomains"
        operation.input = ListFirewallDomainsInput
        operation.output = ListFirewallDomainsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list firewall domains"}, "smithy.api#http" => {"method" => "GET", "uri" => "/firewall-domain-lists/{firewallDomainListId}/domains", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFirewallDomains.new
      end)
      service.add_operation(:list_firewall_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListFirewallRules"
        operation.name = "ListFirewallRules"
        operation.input = ListFirewallRulesInput
        operation.output = ListFirewallRulesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list firewall rules"}, "smithy.api#http" => {"method" => "GET", "uri" => "/firewall-rules", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFirewallRules.new
      end)
      service.add_operation(:list_global_resolvers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListGlobalResolvers"
        operation.name = "ListGlobalResolvers"
        operation.input = ListGlobalResolversInput
        operation.output = ListGlobalResolversOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list global resolvers"}, "smithy.api#http" => {"method" => "GET", "uri" => "/global-resolver", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGlobalResolvers.new
      end)
      service.add_operation(:list_hosted_zone_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListHostedZoneAssociations"
        operation.name = "ListHostedZoneAssociations"
        operation.input = ListHostedZoneAssociationsInput
        operation.output = ListHostedZoneAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list hosted zone associations"}, "smithy.api#http" => {"method" => "GET", "uri" => "/hosted-zone-associations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListHostedZoneAssociations.new
      end)
      service.add_operation(:list_managed_firewall_domain_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListManagedFirewallDomainLists"
        operation.name = "ListManagedFirewallDomainLists"
        operation.input = ListManagedFirewallDomainListsInput
        operation.output = ListManagedFirewallDomainListsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list managed firewall domain lists"}, "smithy.api#http" => {"method" => "GET", "uri" => "/list-managed-firewall-domain-lists/{managedFirewallDomainListType}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedFirewallDomainLists.new
      end)
      service.add_operation(:list_shared_dns_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListSharedDNSViews"
        operation.name = "ListSharedDNSViews"
        operation.input = ListSharedDNSViewsInput
        operation.output = ListSharedDNSViewsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list shared dns views"}, "smithy.api#http" => {"method" => "GET", "uri" => "/shared-dns-views", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSharedDNSViews.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource"}, "smithy.api#http" => {"method" => "POST", "uri" => "/get-all-tags", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource"}, "smithy.api#http" => {"method" => "POST", "uri" => "/tag-resource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to untag a resource"}, "smithy.api#http" => {"method" => "POST", "uri" => "/untag-resource", "code" => 200}}
      end)
      service.add_operation(:update_access_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#UpdateAccessSource"
        operation.name = "UpdateAccessSource"
        operation.input = UpdateAccessSourceInput
        operation.output = UpdateAccessSourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update an access source"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/access-sources/{accessSourceId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#UpdateAccessToken"
        operation.name = "UpdateAccessToken"
        operation.input = UpdateAccessTokenInput
        operation.output = UpdateAccessTokenOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update an access token"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/tokens/{accessTokenId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_dns_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#UpdateDNSView"
        operation.name = "UpdateDNSView"
        operation.input = UpdateDNSViewInput
        operation.output = UpdateDNSViewOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update a dns view"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/dns-views/{dnsViewId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_firewall_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#UpdateFirewallDomains"
        operation.name = "UpdateFirewallDomains"
        operation.input = UpdateFirewallDomainsInput
        operation.output = UpdateFirewallDomainsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update firewall domains"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/firewall-domain-lists/{firewallDomainListId}/domains", "code" => 200}}
      end)
      service.add_operation(:update_firewall_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#UpdateFirewallRule"
        operation.name = "UpdateFirewallRule"
        operation.input = UpdateFirewallRuleInput
        operation.output = UpdateFirewallRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update an firewall rule"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/firewall-rules/{firewallRuleId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_global_resolver, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#UpdateGlobalResolver"
        operation.name = "UpdateGlobalResolver"
        operation.input = UpdateGlobalResolverInput
        operation.output = UpdateGlobalResolverOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update a global resolver"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/global-resolver/{globalResolverId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_hosted_zone_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53globalresolver#UpdateHostedZoneAssociation"
        operation.name = "UpdateHostedZoneAssociation"
        operation.input = UpdateHostedZoneAssociationInput
        operation.output = UpdateHostedZoneAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to update a hosted zone association"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/hosted-zone-associations/{hostedZoneAssociationId}", "code" => 200}, "smithy.api#idempotent" => {}}
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
