# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Resolver
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Action = Shapes::StringShape.new(name: 'Action')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateFirewallRuleGroupRequest = Shapes::StructureShape.new(name: 'AssociateFirewallRuleGroupRequest')
    AssociateFirewallRuleGroupResponse = Shapes::StructureShape.new(name: 'AssociateFirewallRuleGroupResponse')
    AssociateResolverEndpointIpAddressRequest = Shapes::StructureShape.new(name: 'AssociateResolverEndpointIpAddressRequest')
    AssociateResolverEndpointIpAddressResponse = Shapes::StructureShape.new(name: 'AssociateResolverEndpointIpAddressResponse')
    AssociateResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'AssociateResolverQueryLogConfigRequest')
    AssociateResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'AssociateResolverQueryLogConfigResponse')
    AssociateResolverRuleRequest = Shapes::StructureShape.new(name: 'AssociateResolverRuleRequest')
    AssociateResolverRuleResponse = Shapes::StructureShape.new(name: 'AssociateResolverRuleResponse')
    AutodefinedReverseFlag = Shapes::StringShape.new(name: 'AutodefinedReverseFlag')
    BlockOverrideDnsType = Shapes::StringShape.new(name: 'BlockOverrideDnsType')
    BlockOverrideDomain = Shapes::StringShape.new(name: 'BlockOverrideDomain')
    BlockOverrideTtl = Shapes::IntegerShape.new(name: 'BlockOverrideTtl')
    BlockResponse = Shapes::StringShape.new(name: 'BlockResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateFirewallDomainListRequest = Shapes::StructureShape.new(name: 'CreateFirewallDomainListRequest')
    CreateFirewallDomainListResponse = Shapes::StructureShape.new(name: 'CreateFirewallDomainListResponse')
    CreateFirewallRuleGroupRequest = Shapes::StructureShape.new(name: 'CreateFirewallRuleGroupRequest')
    CreateFirewallRuleGroupResponse = Shapes::StructureShape.new(name: 'CreateFirewallRuleGroupResponse')
    CreateFirewallRuleRequest = Shapes::StructureShape.new(name: 'CreateFirewallRuleRequest')
    CreateFirewallRuleResponse = Shapes::StructureShape.new(name: 'CreateFirewallRuleResponse')
    CreateResolverEndpointRequest = Shapes::StructureShape.new(name: 'CreateResolverEndpointRequest')
    CreateResolverEndpointResponse = Shapes::StructureShape.new(name: 'CreateResolverEndpointResponse')
    CreateResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'CreateResolverQueryLogConfigRequest')
    CreateResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'CreateResolverQueryLogConfigResponse')
    CreateResolverRuleRequest = Shapes::StructureShape.new(name: 'CreateResolverRuleRequest')
    CreateResolverRuleResponse = Shapes::StructureShape.new(name: 'CreateResolverRuleResponse')
    CreatorRequestId = Shapes::StringShape.new(name: 'CreatorRequestId')
    DeleteFirewallDomainListRequest = Shapes::StructureShape.new(name: 'DeleteFirewallDomainListRequest')
    DeleteFirewallDomainListResponse = Shapes::StructureShape.new(name: 'DeleteFirewallDomainListResponse')
    DeleteFirewallRuleGroupRequest = Shapes::StructureShape.new(name: 'DeleteFirewallRuleGroupRequest')
    DeleteFirewallRuleGroupResponse = Shapes::StructureShape.new(name: 'DeleteFirewallRuleGroupResponse')
    DeleteFirewallRuleRequest = Shapes::StructureShape.new(name: 'DeleteFirewallRuleRequest')
    DeleteFirewallRuleResponse = Shapes::StructureShape.new(name: 'DeleteFirewallRuleResponse')
    DeleteResolverEndpointRequest = Shapes::StructureShape.new(name: 'DeleteResolverEndpointRequest')
    DeleteResolverEndpointResponse = Shapes::StructureShape.new(name: 'DeleteResolverEndpointResponse')
    DeleteResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'DeleteResolverQueryLogConfigRequest')
    DeleteResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'DeleteResolverQueryLogConfigResponse')
    DeleteResolverRuleRequest = Shapes::StructureShape.new(name: 'DeleteResolverRuleRequest')
    DeleteResolverRuleResponse = Shapes::StructureShape.new(name: 'DeleteResolverRuleResponse')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DisassociateFirewallRuleGroupRequest = Shapes::StructureShape.new(name: 'DisassociateFirewallRuleGroupRequest')
    DisassociateFirewallRuleGroupResponse = Shapes::StructureShape.new(name: 'DisassociateFirewallRuleGroupResponse')
    DisassociateResolverEndpointIpAddressRequest = Shapes::StructureShape.new(name: 'DisassociateResolverEndpointIpAddressRequest')
    DisassociateResolverEndpointIpAddressResponse = Shapes::StructureShape.new(name: 'DisassociateResolverEndpointIpAddressResponse')
    DisassociateResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'DisassociateResolverQueryLogConfigRequest')
    DisassociateResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'DisassociateResolverQueryLogConfigResponse')
    DisassociateResolverRuleRequest = Shapes::StructureShape.new(name: 'DisassociateResolverRuleRequest')
    DisassociateResolverRuleResponse = Shapes::StructureShape.new(name: 'DisassociateResolverRuleResponse')
    DomainListFileUrl = Shapes::StringShape.new(name: 'DomainListFileUrl')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
    FirewallConfig = Shapes::StructureShape.new(name: 'FirewallConfig')
    FirewallConfigList = Shapes::ListShape.new(name: 'FirewallConfigList')
    FirewallDomainImportOperation = Shapes::StringShape.new(name: 'FirewallDomainImportOperation')
    FirewallDomainList = Shapes::StructureShape.new(name: 'FirewallDomainList')
    FirewallDomainListMetadata = Shapes::StructureShape.new(name: 'FirewallDomainListMetadata')
    FirewallDomainListMetadataList = Shapes::ListShape.new(name: 'FirewallDomainListMetadataList')
    FirewallDomainListStatus = Shapes::StringShape.new(name: 'FirewallDomainListStatus')
    FirewallDomainName = Shapes::StringShape.new(name: 'FirewallDomainName')
    FirewallDomainUpdateOperation = Shapes::StringShape.new(name: 'FirewallDomainUpdateOperation')
    FirewallDomains = Shapes::ListShape.new(name: 'FirewallDomains')
    FirewallFailOpenStatus = Shapes::StringShape.new(name: 'FirewallFailOpenStatus')
    FirewallRule = Shapes::StructureShape.new(name: 'FirewallRule')
    FirewallRuleGroup = Shapes::StructureShape.new(name: 'FirewallRuleGroup')
    FirewallRuleGroupAssociation = Shapes::StructureShape.new(name: 'FirewallRuleGroupAssociation')
    FirewallRuleGroupAssociationStatus = Shapes::StringShape.new(name: 'FirewallRuleGroupAssociationStatus')
    FirewallRuleGroupAssociations = Shapes::ListShape.new(name: 'FirewallRuleGroupAssociations')
    FirewallRuleGroupMetadata = Shapes::StructureShape.new(name: 'FirewallRuleGroupMetadata')
    FirewallRuleGroupMetadataList = Shapes::ListShape.new(name: 'FirewallRuleGroupMetadataList')
    FirewallRuleGroupPolicy = Shapes::StringShape.new(name: 'FirewallRuleGroupPolicy')
    FirewallRuleGroupStatus = Shapes::StringShape.new(name: 'FirewallRuleGroupStatus')
    FirewallRules = Shapes::ListShape.new(name: 'FirewallRules')
    GetFirewallConfigRequest = Shapes::StructureShape.new(name: 'GetFirewallConfigRequest')
    GetFirewallConfigResponse = Shapes::StructureShape.new(name: 'GetFirewallConfigResponse')
    GetFirewallDomainListRequest = Shapes::StructureShape.new(name: 'GetFirewallDomainListRequest')
    GetFirewallDomainListResponse = Shapes::StructureShape.new(name: 'GetFirewallDomainListResponse')
    GetFirewallRuleGroupAssociationRequest = Shapes::StructureShape.new(name: 'GetFirewallRuleGroupAssociationRequest')
    GetFirewallRuleGroupAssociationResponse = Shapes::StructureShape.new(name: 'GetFirewallRuleGroupAssociationResponse')
    GetFirewallRuleGroupPolicyRequest = Shapes::StructureShape.new(name: 'GetFirewallRuleGroupPolicyRequest')
    GetFirewallRuleGroupPolicyResponse = Shapes::StructureShape.new(name: 'GetFirewallRuleGroupPolicyResponse')
    GetFirewallRuleGroupRequest = Shapes::StructureShape.new(name: 'GetFirewallRuleGroupRequest')
    GetFirewallRuleGroupResponse = Shapes::StructureShape.new(name: 'GetFirewallRuleGroupResponse')
    GetResolverConfigRequest = Shapes::StructureShape.new(name: 'GetResolverConfigRequest')
    GetResolverConfigResponse = Shapes::StructureShape.new(name: 'GetResolverConfigResponse')
    GetResolverDnssecConfigRequest = Shapes::StructureShape.new(name: 'GetResolverDnssecConfigRequest')
    GetResolverDnssecConfigResponse = Shapes::StructureShape.new(name: 'GetResolverDnssecConfigResponse')
    GetResolverEndpointRequest = Shapes::StructureShape.new(name: 'GetResolverEndpointRequest')
    GetResolverEndpointResponse = Shapes::StructureShape.new(name: 'GetResolverEndpointResponse')
    GetResolverQueryLogConfigAssociationRequest = Shapes::StructureShape.new(name: 'GetResolverQueryLogConfigAssociationRequest')
    GetResolverQueryLogConfigAssociationResponse = Shapes::StructureShape.new(name: 'GetResolverQueryLogConfigAssociationResponse')
    GetResolverQueryLogConfigPolicyRequest = Shapes::StructureShape.new(name: 'GetResolverQueryLogConfigPolicyRequest')
    GetResolverQueryLogConfigPolicyResponse = Shapes::StructureShape.new(name: 'GetResolverQueryLogConfigPolicyResponse')
    GetResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'GetResolverQueryLogConfigRequest')
    GetResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'GetResolverQueryLogConfigResponse')
    GetResolverRuleAssociationRequest = Shapes::StructureShape.new(name: 'GetResolverRuleAssociationRequest')
    GetResolverRuleAssociationResponse = Shapes::StructureShape.new(name: 'GetResolverRuleAssociationResponse')
    GetResolverRulePolicyRequest = Shapes::StructureShape.new(name: 'GetResolverRulePolicyRequest')
    GetResolverRulePolicyResponse = Shapes::StructureShape.new(name: 'GetResolverRulePolicyResponse')
    GetResolverRuleRequest = Shapes::StructureShape.new(name: 'GetResolverRuleRequest')
    GetResolverRuleResponse = Shapes::StructureShape.new(name: 'GetResolverRuleResponse')
    ImportFirewallDomainsRequest = Shapes::StructureShape.new(name: 'ImportFirewallDomainsRequest')
    ImportFirewallDomainsResponse = Shapes::StructureShape.new(name: 'ImportFirewallDomainsResponse')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidPolicyDocument = Shapes::StructureShape.new(name: 'InvalidPolicyDocument')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidTagException = Shapes::StructureShape.new(name: 'InvalidTagException')
    Ip = Shapes::StringShape.new(name: 'Ip')
    IpAddressCount = Shapes::IntegerShape.new(name: 'IpAddressCount')
    IpAddressRequest = Shapes::StructureShape.new(name: 'IpAddressRequest')
    IpAddressResponse = Shapes::StructureShape.new(name: 'IpAddressResponse')
    IpAddressStatus = Shapes::StringShape.new(name: 'IpAddressStatus')
    IpAddressUpdate = Shapes::StructureShape.new(name: 'IpAddressUpdate')
    IpAddressesRequest = Shapes::ListShape.new(name: 'IpAddressesRequest')
    IpAddressesResponse = Shapes::ListShape.new(name: 'IpAddressesResponse')
    Ipv6 = Shapes::StringShape.new(name: 'Ipv6')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDomainMaxResults = Shapes::IntegerShape.new(name: 'ListDomainMaxResults')
    ListFirewallConfigsMaxResult = Shapes::IntegerShape.new(name: 'ListFirewallConfigsMaxResult')
    ListFirewallConfigsRequest = Shapes::StructureShape.new(name: 'ListFirewallConfigsRequest')
    ListFirewallConfigsResponse = Shapes::StructureShape.new(name: 'ListFirewallConfigsResponse')
    ListFirewallDomainListsRequest = Shapes::StructureShape.new(name: 'ListFirewallDomainListsRequest')
    ListFirewallDomainListsResponse = Shapes::StructureShape.new(name: 'ListFirewallDomainListsResponse')
    ListFirewallDomainsRequest = Shapes::StructureShape.new(name: 'ListFirewallDomainsRequest')
    ListFirewallDomainsResponse = Shapes::StructureShape.new(name: 'ListFirewallDomainsResponse')
    ListFirewallRuleGroupAssociationsRequest = Shapes::StructureShape.new(name: 'ListFirewallRuleGroupAssociationsRequest')
    ListFirewallRuleGroupAssociationsResponse = Shapes::StructureShape.new(name: 'ListFirewallRuleGroupAssociationsResponse')
    ListFirewallRuleGroupsRequest = Shapes::StructureShape.new(name: 'ListFirewallRuleGroupsRequest')
    ListFirewallRuleGroupsResponse = Shapes::StructureShape.new(name: 'ListFirewallRuleGroupsResponse')
    ListFirewallRulesRequest = Shapes::StructureShape.new(name: 'ListFirewallRulesRequest')
    ListFirewallRulesResponse = Shapes::StructureShape.new(name: 'ListFirewallRulesResponse')
    ListResolverConfigsMaxResult = Shapes::IntegerShape.new(name: 'ListResolverConfigsMaxResult')
    ListResolverConfigsRequest = Shapes::StructureShape.new(name: 'ListResolverConfigsRequest')
    ListResolverConfigsResponse = Shapes::StructureShape.new(name: 'ListResolverConfigsResponse')
    ListResolverDnssecConfigsRequest = Shapes::StructureShape.new(name: 'ListResolverDnssecConfigsRequest')
    ListResolverDnssecConfigsResponse = Shapes::StructureShape.new(name: 'ListResolverDnssecConfigsResponse')
    ListResolverEndpointIpAddressesRequest = Shapes::StructureShape.new(name: 'ListResolverEndpointIpAddressesRequest')
    ListResolverEndpointIpAddressesResponse = Shapes::StructureShape.new(name: 'ListResolverEndpointIpAddressesResponse')
    ListResolverEndpointsRequest = Shapes::StructureShape.new(name: 'ListResolverEndpointsRequest')
    ListResolverEndpointsResponse = Shapes::StructureShape.new(name: 'ListResolverEndpointsResponse')
    ListResolverQueryLogConfigAssociationsRequest = Shapes::StructureShape.new(name: 'ListResolverQueryLogConfigAssociationsRequest')
    ListResolverQueryLogConfigAssociationsResponse = Shapes::StructureShape.new(name: 'ListResolverQueryLogConfigAssociationsResponse')
    ListResolverQueryLogConfigsRequest = Shapes::StructureShape.new(name: 'ListResolverQueryLogConfigsRequest')
    ListResolverQueryLogConfigsResponse = Shapes::StructureShape.new(name: 'ListResolverQueryLogConfigsResponse')
    ListResolverRuleAssociationsRequest = Shapes::StructureShape.new(name: 'ListResolverRuleAssociationsRequest')
    ListResolverRuleAssociationsResponse = Shapes::StructureShape.new(name: 'ListResolverRuleAssociationsResponse')
    ListResolverRulesRequest = Shapes::StructureShape.new(name: 'ListResolverRulesRequest')
    ListResolverRulesResponse = Shapes::StructureShape.new(name: 'ListResolverRulesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MutationProtectionStatus = Shapes::StringShape.new(name: 'MutationProtectionStatus')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Port = Shapes::IntegerShape.new(name: 'Port')
    Priority = Shapes::IntegerShape.new(name: 'Priority')
    PutFirewallRuleGroupPolicyRequest = Shapes::StructureShape.new(name: 'PutFirewallRuleGroupPolicyRequest')
    PutFirewallRuleGroupPolicyResponse = Shapes::StructureShape.new(name: 'PutFirewallRuleGroupPolicyResponse')
    PutResolverQueryLogConfigPolicyRequest = Shapes::StructureShape.new(name: 'PutResolverQueryLogConfigPolicyRequest')
    PutResolverQueryLogConfigPolicyResponse = Shapes::StructureShape.new(name: 'PutResolverQueryLogConfigPolicyResponse')
    PutResolverRulePolicyRequest = Shapes::StructureShape.new(name: 'PutResolverRulePolicyRequest')
    PutResolverRulePolicyResponse = Shapes::StructureShape.new(name: 'PutResolverRulePolicyResponse')
    ResolverAutodefinedReverseStatus = Shapes::StringShape.new(name: 'ResolverAutodefinedReverseStatus')
    ResolverConfig = Shapes::StructureShape.new(name: 'ResolverConfig')
    ResolverConfigList = Shapes::ListShape.new(name: 'ResolverConfigList')
    ResolverDNSSECValidationStatus = Shapes::StringShape.new(name: 'ResolverDNSSECValidationStatus')
    ResolverDnssecConfig = Shapes::StructureShape.new(name: 'ResolverDnssecConfig')
    ResolverDnssecConfigList = Shapes::ListShape.new(name: 'ResolverDnssecConfigList')
    ResolverEndpoint = Shapes::StructureShape.new(name: 'ResolverEndpoint')
    ResolverEndpointDirection = Shapes::StringShape.new(name: 'ResolverEndpointDirection')
    ResolverEndpointStatus = Shapes::StringShape.new(name: 'ResolverEndpointStatus')
    ResolverEndpointType = Shapes::StringShape.new(name: 'ResolverEndpointType')
    ResolverEndpoints = Shapes::ListShape.new(name: 'ResolverEndpoints')
    ResolverQueryLogConfig = Shapes::StructureShape.new(name: 'ResolverQueryLogConfig')
    ResolverQueryLogConfigAssociation = Shapes::StructureShape.new(name: 'ResolverQueryLogConfigAssociation')
    ResolverQueryLogConfigAssociationError = Shapes::StringShape.new(name: 'ResolverQueryLogConfigAssociationError')
    ResolverQueryLogConfigAssociationErrorMessage = Shapes::StringShape.new(name: 'ResolverQueryLogConfigAssociationErrorMessage')
    ResolverQueryLogConfigAssociationList = Shapes::ListShape.new(name: 'ResolverQueryLogConfigAssociationList')
    ResolverQueryLogConfigAssociationStatus = Shapes::StringShape.new(name: 'ResolverQueryLogConfigAssociationStatus')
    ResolverQueryLogConfigList = Shapes::ListShape.new(name: 'ResolverQueryLogConfigList')
    ResolverQueryLogConfigName = Shapes::StringShape.new(name: 'ResolverQueryLogConfigName')
    ResolverQueryLogConfigPolicy = Shapes::StringShape.new(name: 'ResolverQueryLogConfigPolicy')
    ResolverQueryLogConfigStatus = Shapes::StringShape.new(name: 'ResolverQueryLogConfigStatus')
    ResolverRule = Shapes::StructureShape.new(name: 'ResolverRule')
    ResolverRuleAssociation = Shapes::StructureShape.new(name: 'ResolverRuleAssociation')
    ResolverRuleAssociationStatus = Shapes::StringShape.new(name: 'ResolverRuleAssociationStatus')
    ResolverRuleAssociations = Shapes::ListShape.new(name: 'ResolverRuleAssociations')
    ResolverRuleConfig = Shapes::StructureShape.new(name: 'ResolverRuleConfig')
    ResolverRulePolicy = Shapes::StringShape.new(name: 'ResolverRulePolicy')
    ResolverRuleStatus = Shapes::StringShape.new(name: 'ResolverRuleStatus')
    ResolverRules = Shapes::ListShape.new(name: 'ResolverRules')
    ResourceExistsException = Shapes::StructureShape.new(name: 'ResourceExistsException')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    Rfc3339TimeString = Shapes::StringShape.new(name: 'Rfc3339TimeString')
    RuleTypeOption = Shapes::StringShape.new(name: 'RuleTypeOption')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServicePrinciple = Shapes::StringShape.new(name: 'ServicePrinciple')
    ShareStatus = Shapes::StringShape.new(name: 'ShareStatus')
    SortByKey = Shapes::StringShape.new(name: 'SortByKey')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetAddress = Shapes::StructureShape.new(name: 'TargetAddress')
    TargetList = Shapes::ListShape.new(name: 'TargetList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UnknownResourceException = Shapes::StructureShape.new(name: 'UnknownResourceException')
    Unsigned = Shapes::IntegerShape.new(name: 'Unsigned')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateFirewallConfigRequest = Shapes::StructureShape.new(name: 'UpdateFirewallConfigRequest')
    UpdateFirewallConfigResponse = Shapes::StructureShape.new(name: 'UpdateFirewallConfigResponse')
    UpdateFirewallDomainsRequest = Shapes::StructureShape.new(name: 'UpdateFirewallDomainsRequest')
    UpdateFirewallDomainsResponse = Shapes::StructureShape.new(name: 'UpdateFirewallDomainsResponse')
    UpdateFirewallRuleGroupAssociationRequest = Shapes::StructureShape.new(name: 'UpdateFirewallRuleGroupAssociationRequest')
    UpdateFirewallRuleGroupAssociationResponse = Shapes::StructureShape.new(name: 'UpdateFirewallRuleGroupAssociationResponse')
    UpdateFirewallRuleRequest = Shapes::StructureShape.new(name: 'UpdateFirewallRuleRequest')
    UpdateFirewallRuleResponse = Shapes::StructureShape.new(name: 'UpdateFirewallRuleResponse')
    UpdateIpAddress = Shapes::StructureShape.new(name: 'UpdateIpAddress')
    UpdateIpAddresses = Shapes::ListShape.new(name: 'UpdateIpAddresses')
    UpdateResolverConfigRequest = Shapes::StructureShape.new(name: 'UpdateResolverConfigRequest')
    UpdateResolverConfigResponse = Shapes::StructureShape.new(name: 'UpdateResolverConfigResponse')
    UpdateResolverDnssecConfigRequest = Shapes::StructureShape.new(name: 'UpdateResolverDnssecConfigRequest')
    UpdateResolverDnssecConfigResponse = Shapes::StructureShape.new(name: 'UpdateResolverDnssecConfigResponse')
    UpdateResolverEndpointRequest = Shapes::StructureShape.new(name: 'UpdateResolverEndpointRequest')
    UpdateResolverEndpointResponse = Shapes::StructureShape.new(name: 'UpdateResolverEndpointResponse')
    UpdateResolverRuleRequest = Shapes::StructureShape.new(name: 'UpdateResolverRuleRequest')
    UpdateResolverRuleResponse = Shapes::StructureShape.new(name: 'UpdateResolverRuleResponse')
    Validation = Shapes::StringShape.new(name: 'Validation')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateFirewallRuleGroupRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    AssociateFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupId"))
    AssociateFirewallRuleGroupRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "VpcId"))
    AssociateFirewallRuleGroupRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "Priority"))
    AssociateFirewallRuleGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    AssociateFirewallRuleGroupRequest.add_member(:mutation_protection, Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: "MutationProtection", metadata: {"box"=>true}))
    AssociateFirewallRuleGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", metadata: {"box"=>true}))
    AssociateFirewallRuleGroupRequest.struct_class = Types::AssociateFirewallRuleGroupRequest

    AssociateFirewallRuleGroupResponse.add_member(:firewall_rule_group_association, Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: "FirewallRuleGroupAssociation"))
    AssociateFirewallRuleGroupResponse.struct_class = Types::AssociateFirewallRuleGroupResponse

    AssociateResolverEndpointIpAddressRequest.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverEndpointId"))
    AssociateResolverEndpointIpAddressRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddressUpdate, required: true, location_name: "IpAddress"))
    AssociateResolverEndpointIpAddressRequest.struct_class = Types::AssociateResolverEndpointIpAddressRequest

    AssociateResolverEndpointIpAddressResponse.add_member(:resolver_endpoint, Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    AssociateResolverEndpointIpAddressResponse.struct_class = Types::AssociateResolverEndpointIpAddressResponse

    AssociateResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverQueryLogConfigId"))
    AssociateResolverQueryLogConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AssociateResolverQueryLogConfigRequest.struct_class = Types::AssociateResolverQueryLogConfigRequest

    AssociateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config_association, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: "ResolverQueryLogConfigAssociation"))
    AssociateResolverQueryLogConfigResponse.struct_class = Types::AssociateResolverQueryLogConfigResponse

    AssociateResolverRuleRequest.add_member(:resolver_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverRuleId"))
    AssociateResolverRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AssociateResolverRuleRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "VPCId"))
    AssociateResolverRuleRequest.struct_class = Types::AssociateResolverRuleRequest

    AssociateResolverRuleResponse.add_member(:resolver_rule_association, Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: "ResolverRuleAssociation"))
    AssociateResolverRuleResponse.struct_class = Types::AssociateResolverRuleResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateFirewallDomainListRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreateFirewallDomainListRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateFirewallDomainListRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", metadata: {"box"=>true}))
    CreateFirewallDomainListRequest.struct_class = Types::CreateFirewallDomainListRequest

    CreateFirewallDomainListResponse.add_member(:firewall_domain_list, Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: "FirewallDomainList"))
    CreateFirewallDomainListResponse.struct_class = Types::CreateFirewallDomainListResponse

    CreateFirewallRuleGroupRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreateFirewallRuleGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateFirewallRuleGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", metadata: {"box"=>true}))
    CreateFirewallRuleGroupRequest.struct_class = Types::CreateFirewallRuleGroupRequest

    CreateFirewallRuleGroupResponse.add_member(:firewall_rule_group, Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: "FirewallRuleGroup"))
    CreateFirewallRuleGroupResponse.struct_class = Types::CreateFirewallRuleGroupResponse

    CreateFirewallRuleRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreateFirewallRuleRequest.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupId"))
    CreateFirewallRuleRequest.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallDomainListId"))
    CreateFirewallRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "Priority"))
    CreateFirewallRuleRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    CreateFirewallRuleRequest.add_member(:block_response, Shapes::ShapeRef.new(shape: BlockResponse, location_name: "BlockResponse", metadata: {"box"=>true}))
    CreateFirewallRuleRequest.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: "BlockOverrideDomain", metadata: {"box"=>true}))
    CreateFirewallRuleRequest.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: "BlockOverrideDnsType", metadata: {"box"=>true}))
    CreateFirewallRuleRequest.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "BlockOverrideTtl", metadata: {"box"=>true}))
    CreateFirewallRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateFirewallRuleRequest.struct_class = Types::CreateFirewallRuleRequest

    CreateFirewallRuleResponse.add_member(:firewall_rule, Shapes::ShapeRef.new(shape: FirewallRule, location_name: "FirewallRule"))
    CreateFirewallRuleResponse.struct_class = Types::CreateFirewallRuleResponse

    CreateResolverEndpointRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "CreatorRequestId"))
    CreateResolverEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateResolverEndpointRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "SecurityGroupIds", metadata: {"box"=>true}))
    CreateResolverEndpointRequest.add_member(:direction, Shapes::ShapeRef.new(shape: ResolverEndpointDirection, required: true, location_name: "Direction"))
    CreateResolverEndpointRequest.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddressesRequest, required: true, location_name: "IpAddresses"))
    CreateResolverEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", metadata: {"box"=>true}))
    CreateResolverEndpointRequest.add_member(:resolver_endpoint_type, Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: "ResolverEndpointType", metadata: {"box"=>true}))
    CreateResolverEndpointRequest.struct_class = Types::CreateResolverEndpointRequest

    CreateResolverEndpointResponse.add_member(:resolver_endpoint, Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    CreateResolverEndpointResponse.struct_class = Types::CreateResolverEndpointResponse

    CreateResolverQueryLogConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigName, required: true, location_name: "Name"))
    CreateResolverQueryLogConfigRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, required: true, location_name: "DestinationArn"))
    CreateResolverQueryLogConfigRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreateResolverQueryLogConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", metadata: {"box"=>true}))
    CreateResolverQueryLogConfigRequest.struct_class = Types::CreateResolverQueryLogConfigRequest

    CreateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: "ResolverQueryLogConfig"))
    CreateResolverQueryLogConfigResponse.struct_class = Types::CreateResolverQueryLogConfigResponse

    CreateResolverRuleRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "CreatorRequestId"))
    CreateResolverRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateResolverRuleRequest.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleTypeOption, required: true, location_name: "RuleType"))
    CreateResolverRuleRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateResolverRuleRequest.add_member(:target_ips, Shapes::ShapeRef.new(shape: TargetList, location_name: "TargetIps", metadata: {"box"=>true}))
    CreateResolverRuleRequest.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId", metadata: {"box"=>true}))
    CreateResolverRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", metadata: {"box"=>true}))
    CreateResolverRuleRequest.struct_class = Types::CreateResolverRuleRequest

    CreateResolverRuleResponse.add_member(:resolver_rule, Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    CreateResolverRuleResponse.struct_class = Types::CreateResolverRuleResponse

    DeleteFirewallDomainListRequest.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallDomainListId"))
    DeleteFirewallDomainListRequest.struct_class = Types::DeleteFirewallDomainListRequest

    DeleteFirewallDomainListResponse.add_member(:firewall_domain_list, Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: "FirewallDomainList"))
    DeleteFirewallDomainListResponse.struct_class = Types::DeleteFirewallDomainListResponse

    DeleteFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupId"))
    DeleteFirewallRuleGroupRequest.struct_class = Types::DeleteFirewallRuleGroupRequest

    DeleteFirewallRuleGroupResponse.add_member(:firewall_rule_group, Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: "FirewallRuleGroup"))
    DeleteFirewallRuleGroupResponse.struct_class = Types::DeleteFirewallRuleGroupResponse

    DeleteFirewallRuleRequest.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupId"))
    DeleteFirewallRuleRequest.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallDomainListId"))
    DeleteFirewallRuleRequest.struct_class = Types::DeleteFirewallRuleRequest

    DeleteFirewallRuleResponse.add_member(:firewall_rule, Shapes::ShapeRef.new(shape: FirewallRule, location_name: "FirewallRule"))
    DeleteFirewallRuleResponse.struct_class = Types::DeleteFirewallRuleResponse

    DeleteResolverEndpointRequest.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverEndpointId"))
    DeleteResolverEndpointRequest.struct_class = Types::DeleteResolverEndpointRequest

    DeleteResolverEndpointResponse.add_member(:resolver_endpoint, Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    DeleteResolverEndpointResponse.struct_class = Types::DeleteResolverEndpointResponse

    DeleteResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverQueryLogConfigId"))
    DeleteResolverQueryLogConfigRequest.struct_class = Types::DeleteResolverQueryLogConfigRequest

    DeleteResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: "ResolverQueryLogConfig"))
    DeleteResolverQueryLogConfigResponse.struct_class = Types::DeleteResolverQueryLogConfigResponse

    DeleteResolverRuleRequest.add_member(:resolver_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverRuleId"))
    DeleteResolverRuleRequest.struct_class = Types::DeleteResolverRuleRequest

    DeleteResolverRuleResponse.add_member(:resolver_rule, Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    DeleteResolverRuleResponse.struct_class = Types::DeleteResolverRuleResponse

    DisassociateFirewallRuleGroupRequest.add_member(:firewall_rule_group_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupAssociationId"))
    DisassociateFirewallRuleGroupRequest.struct_class = Types::DisassociateFirewallRuleGroupRequest

    DisassociateFirewallRuleGroupResponse.add_member(:firewall_rule_group_association, Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: "FirewallRuleGroupAssociation"))
    DisassociateFirewallRuleGroupResponse.struct_class = Types::DisassociateFirewallRuleGroupResponse

    DisassociateResolverEndpointIpAddressRequest.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverEndpointId"))
    DisassociateResolverEndpointIpAddressRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddressUpdate, required: true, location_name: "IpAddress"))
    DisassociateResolverEndpointIpAddressRequest.struct_class = Types::DisassociateResolverEndpointIpAddressRequest

    DisassociateResolverEndpointIpAddressResponse.add_member(:resolver_endpoint, Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    DisassociateResolverEndpointIpAddressResponse.struct_class = Types::DisassociateResolverEndpointIpAddressResponse

    DisassociateResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverQueryLogConfigId"))
    DisassociateResolverQueryLogConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    DisassociateResolverQueryLogConfigRequest.struct_class = Types::DisassociateResolverQueryLogConfigRequest

    DisassociateResolverQueryLogConfigResponse.add_member(:resolver_query_log_config_association, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: "ResolverQueryLogConfigAssociation"))
    DisassociateResolverQueryLogConfigResponse.struct_class = Types::DisassociateResolverQueryLogConfigResponse

    DisassociateResolverRuleRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "VPCId"))
    DisassociateResolverRuleRequest.add_member(:resolver_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverRuleId"))
    DisassociateResolverRuleRequest.struct_class = Types::DisassociateResolverRuleRequest

    DisassociateResolverRuleResponse.add_member(:resolver_rule_association, Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: "ResolverRuleAssociation"))
    DisassociateResolverRuleResponse.struct_class = Types::DisassociateResolverRuleResponse

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    FirewallConfig.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallConfig.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    FirewallConfig.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    FirewallConfig.add_member(:firewall_fail_open, Shapes::ShapeRef.new(shape: FirewallFailOpenStatus, location_name: "FirewallFailOpen"))
    FirewallConfig.struct_class = Types::FirewallConfig

    FirewallConfigList.member = Shapes::ShapeRef.new(shape: FirewallConfig)

    FirewallDomainList.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallDomainList.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallDomainList.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallDomainList.add_member(:domain_count, Shapes::ShapeRef.new(shape: Unsigned, location_name: "DomainCount"))
    FirewallDomainList.add_member(:status, Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: "Status"))
    FirewallDomainList.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    FirewallDomainList.add_member(:managed_owner_name, Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: "ManagedOwnerName"))
    FirewallDomainList.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallDomainList.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    FirewallDomainList.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    FirewallDomainList.struct_class = Types::FirewallDomainList

    FirewallDomainListMetadata.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallDomainListMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallDomainListMetadata.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallDomainListMetadata.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallDomainListMetadata.add_member(:managed_owner_name, Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: "ManagedOwnerName"))
    FirewallDomainListMetadata.struct_class = Types::FirewallDomainListMetadata

    FirewallDomainListMetadataList.member = Shapes::ShapeRef.new(shape: FirewallDomainListMetadata)

    FirewallDomains.member = Shapes::ShapeRef.new(shape: FirewallDomainName)

    FirewallRule.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId"))
    FirewallRule.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallDomainListId"))
    FirewallRule.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallRule.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    FirewallRule.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    FirewallRule.add_member(:block_response, Shapes::ShapeRef.new(shape: BlockResponse, location_name: "BlockResponse"))
    FirewallRule.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: "BlockOverrideDomain"))
    FirewallRule.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: "BlockOverrideDnsType"))
    FirewallRule.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: Unsigned, location_name: "BlockOverrideTtl"))
    FirewallRule.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallRule.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    FirewallRule.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    FirewallRule.struct_class = Types::FirewallRule

    FirewallRuleGroup.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallRuleGroup.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallRuleGroup.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallRuleGroup.add_member(:rule_count, Shapes::ShapeRef.new(shape: Unsigned, location_name: "RuleCount"))
    FirewallRuleGroup.add_member(:status, Shapes::ShapeRef.new(shape: FirewallRuleGroupStatus, location_name: "Status"))
    FirewallRuleGroup.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    FirewallRuleGroup.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    FirewallRuleGroup.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallRuleGroup.add_member(:share_status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    FirewallRuleGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    FirewallRuleGroup.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    FirewallRuleGroup.struct_class = Types::FirewallRuleGroup

    FirewallRuleGroupAssociation.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallRuleGroupAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallRuleGroupAssociation.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId"))
    FirewallRuleGroupAssociation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    FirewallRuleGroupAssociation.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallRuleGroupAssociation.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "Priority"))
    FirewallRuleGroupAssociation.add_member(:mutation_protection, Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: "MutationProtection"))
    FirewallRuleGroupAssociation.add_member(:managed_owner_name, Shapes::ShapeRef.new(shape: ServicePrinciple, location_name: "ManagedOwnerName"))
    FirewallRuleGroupAssociation.add_member(:status, Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociationStatus, location_name: "Status"))
    FirewallRuleGroupAssociation.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    FirewallRuleGroupAssociation.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallRuleGroupAssociation.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    FirewallRuleGroupAssociation.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    FirewallRuleGroupAssociation.struct_class = Types::FirewallRuleGroupAssociation

    FirewallRuleGroupAssociations.member = Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation)

    FirewallRuleGroupMetadata.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    FirewallRuleGroupMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FirewallRuleGroupMetadata.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    FirewallRuleGroupMetadata.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    FirewallRuleGroupMetadata.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    FirewallRuleGroupMetadata.add_member(:share_status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    FirewallRuleGroupMetadata.struct_class = Types::FirewallRuleGroupMetadata

    FirewallRuleGroupMetadataList.member = Shapes::ShapeRef.new(shape: FirewallRuleGroupMetadata)

    FirewallRules.member = Shapes::ShapeRef.new(shape: FirewallRule)

    GetFirewallConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    GetFirewallConfigRequest.struct_class = Types::GetFirewallConfigRequest

    GetFirewallConfigResponse.add_member(:firewall_config, Shapes::ShapeRef.new(shape: FirewallConfig, location_name: "FirewallConfig"))
    GetFirewallConfigResponse.struct_class = Types::GetFirewallConfigResponse

    GetFirewallDomainListRequest.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallDomainListId"))
    GetFirewallDomainListRequest.struct_class = Types::GetFirewallDomainListRequest

    GetFirewallDomainListResponse.add_member(:firewall_domain_list, Shapes::ShapeRef.new(shape: FirewallDomainList, location_name: "FirewallDomainList"))
    GetFirewallDomainListResponse.struct_class = Types::GetFirewallDomainListResponse

    GetFirewallRuleGroupAssociationRequest.add_member(:firewall_rule_group_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupAssociationId"))
    GetFirewallRuleGroupAssociationRequest.struct_class = Types::GetFirewallRuleGroupAssociationRequest

    GetFirewallRuleGroupAssociationResponse.add_member(:firewall_rule_group_association, Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: "FirewallRuleGroupAssociation"))
    GetFirewallRuleGroupAssociationResponse.struct_class = Types::GetFirewallRuleGroupAssociationResponse

    GetFirewallRuleGroupPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    GetFirewallRuleGroupPolicyRequest.struct_class = Types::GetFirewallRuleGroupPolicyRequest

    GetFirewallRuleGroupPolicyResponse.add_member(:firewall_rule_group_policy, Shapes::ShapeRef.new(shape: FirewallRuleGroupPolicy, location_name: "FirewallRuleGroupPolicy"))
    GetFirewallRuleGroupPolicyResponse.struct_class = Types::GetFirewallRuleGroupPolicyResponse

    GetFirewallRuleGroupRequest.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupId"))
    GetFirewallRuleGroupRequest.struct_class = Types::GetFirewallRuleGroupRequest

    GetFirewallRuleGroupResponse.add_member(:firewall_rule_group, Shapes::ShapeRef.new(shape: FirewallRuleGroup, location_name: "FirewallRuleGroup"))
    GetFirewallRuleGroupResponse.struct_class = Types::GetFirewallRuleGroupResponse

    GetResolverConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    GetResolverConfigRequest.struct_class = Types::GetResolverConfigRequest

    GetResolverConfigResponse.add_member(:resolver_config, Shapes::ShapeRef.new(shape: ResolverConfig, location_name: "ResolverConfig"))
    GetResolverConfigResponse.struct_class = Types::GetResolverConfigResponse

    GetResolverDnssecConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    GetResolverDnssecConfigRequest.struct_class = Types::GetResolverDnssecConfigRequest

    GetResolverDnssecConfigResponse.add_member(:resolver_dnssec_config, Shapes::ShapeRef.new(shape: ResolverDnssecConfig, location_name: "ResolverDNSSECConfig"))
    GetResolverDnssecConfigResponse.struct_class = Types::GetResolverDnssecConfigResponse

    GetResolverEndpointRequest.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverEndpointId"))
    GetResolverEndpointRequest.struct_class = Types::GetResolverEndpointRequest

    GetResolverEndpointResponse.add_member(:resolver_endpoint, Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    GetResolverEndpointResponse.struct_class = Types::GetResolverEndpointResponse

    GetResolverQueryLogConfigAssociationRequest.add_member(:resolver_query_log_config_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverQueryLogConfigAssociationId"))
    GetResolverQueryLogConfigAssociationRequest.struct_class = Types::GetResolverQueryLogConfigAssociationRequest

    GetResolverQueryLogConfigAssociationResponse.add_member(:resolver_query_log_config_association, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation, location_name: "ResolverQueryLogConfigAssociation"))
    GetResolverQueryLogConfigAssociationResponse.struct_class = Types::GetResolverQueryLogConfigAssociationResponse

    GetResolverQueryLogConfigPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    GetResolverQueryLogConfigPolicyRequest.struct_class = Types::GetResolverQueryLogConfigPolicyRequest

    GetResolverQueryLogConfigPolicyResponse.add_member(:resolver_query_log_config_policy, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigPolicy, location_name: "ResolverQueryLogConfigPolicy"))
    GetResolverQueryLogConfigPolicyResponse.struct_class = Types::GetResolverQueryLogConfigPolicyResponse

    GetResolverQueryLogConfigRequest.add_member(:resolver_query_log_config_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverQueryLogConfigId"))
    GetResolverQueryLogConfigRequest.struct_class = Types::GetResolverQueryLogConfigRequest

    GetResolverQueryLogConfigResponse.add_member(:resolver_query_log_config, Shapes::ShapeRef.new(shape: ResolverQueryLogConfig, location_name: "ResolverQueryLogConfig"))
    GetResolverQueryLogConfigResponse.struct_class = Types::GetResolverQueryLogConfigResponse

    GetResolverRuleAssociationRequest.add_member(:resolver_rule_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverRuleAssociationId"))
    GetResolverRuleAssociationRequest.struct_class = Types::GetResolverRuleAssociationRequest

    GetResolverRuleAssociationResponse.add_member(:resolver_rule_association, Shapes::ShapeRef.new(shape: ResolverRuleAssociation, location_name: "ResolverRuleAssociation"))
    GetResolverRuleAssociationResponse.struct_class = Types::GetResolverRuleAssociationResponse

    GetResolverRulePolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    GetResolverRulePolicyRequest.struct_class = Types::GetResolverRulePolicyRequest

    GetResolverRulePolicyResponse.add_member(:resolver_rule_policy, Shapes::ShapeRef.new(shape: ResolverRulePolicy, location_name: "ResolverRulePolicy"))
    GetResolverRulePolicyResponse.struct_class = Types::GetResolverRulePolicyResponse

    GetResolverRuleRequest.add_member(:resolver_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverRuleId"))
    GetResolverRuleRequest.struct_class = Types::GetResolverRuleRequest

    GetResolverRuleResponse.add_member(:resolver_rule, Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    GetResolverRuleResponse.struct_class = Types::GetResolverRuleResponse

    ImportFirewallDomainsRequest.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallDomainListId"))
    ImportFirewallDomainsRequest.add_member(:operation, Shapes::ShapeRef.new(shape: FirewallDomainImportOperation, required: true, location_name: "Operation"))
    ImportFirewallDomainsRequest.add_member(:domain_file_url, Shapes::ShapeRef.new(shape: DomainListFileUrl, required: true, location_name: "DomainFileUrl"))
    ImportFirewallDomainsRequest.struct_class = Types::ImportFirewallDomainsRequest

    ImportFirewallDomainsResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ImportFirewallDomainsResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ImportFirewallDomainsResponse.add_member(:status, Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: "Status"))
    ImportFirewallDomainsResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ImportFirewallDomainsResponse.struct_class = Types::ImportFirewallDomainsResponse

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    InvalidParameterException.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidPolicyDocument.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidPolicyDocument.struct_class = Types::InvalidPolicyDocument

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidTagException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidTagException.struct_class = Types::InvalidTagException

    IpAddressRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "SubnetId"))
    IpAddressRequest.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, location_name: "Ip", metadata: {"box"=>true}))
    IpAddressRequest.add_member(:ipv_6, Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6", metadata: {"box"=>true}))
    IpAddressRequest.struct_class = Types::IpAddressRequest

    IpAddressResponse.add_member(:ip_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "IpId"))
    IpAddressResponse.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    IpAddressResponse.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, location_name: "Ip"))
    IpAddressResponse.add_member(:ipv_6, Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6"))
    IpAddressResponse.add_member(:status, Shapes::ShapeRef.new(shape: IpAddressStatus, location_name: "Status"))
    IpAddressResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    IpAddressResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    IpAddressResponse.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    IpAddressResponse.struct_class = Types::IpAddressResponse

    IpAddressUpdate.add_member(:ip_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "IpId", metadata: {"box"=>true}))
    IpAddressUpdate.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId", metadata: {"box"=>true}))
    IpAddressUpdate.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, location_name: "Ip", metadata: {"box"=>true}))
    IpAddressUpdate.add_member(:ipv_6, Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6", metadata: {"box"=>true}))
    IpAddressUpdate.struct_class = Types::IpAddressUpdate

    IpAddressesRequest.member = Shapes::ShapeRef.new(shape: IpAddressRequest)

    IpAddressesResponse.member = Shapes::ShapeRef.new(shape: IpAddressResponse)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListFirewallConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFirewallConfigsMaxResult, location_name: "MaxResults", metadata: {"box"=>true}))
    ListFirewallConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListFirewallConfigsRequest.struct_class = Types::ListFirewallConfigsRequest

    ListFirewallConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallConfigsResponse.add_member(:firewall_configs, Shapes::ShapeRef.new(shape: FirewallConfigList, location_name: "FirewallConfigs"))
    ListFirewallConfigsResponse.struct_class = Types::ListFirewallConfigsResponse

    ListFirewallDomainListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListFirewallDomainListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListFirewallDomainListsRequest.struct_class = Types::ListFirewallDomainListsRequest

    ListFirewallDomainListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallDomainListsResponse.add_member(:firewall_domain_lists, Shapes::ShapeRef.new(shape: FirewallDomainListMetadataList, location_name: "FirewallDomainLists"))
    ListFirewallDomainListsResponse.struct_class = Types::ListFirewallDomainListsResponse

    ListFirewallDomainsRequest.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallDomainListId"))
    ListFirewallDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDomainMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListFirewallDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListFirewallDomainsRequest.struct_class = Types::ListFirewallDomainsRequest

    ListFirewallDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallDomainsResponse.add_member(:domains, Shapes::ShapeRef.new(shape: FirewallDomains, location_name: "Domains"))
    ListFirewallDomainsResponse.struct_class = Types::ListFirewallDomainsResponse

    ListFirewallRuleGroupAssociationsRequest.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallRuleGroupId", metadata: {"box"=>true}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId", metadata: {"box"=>true}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", metadata: {"box"=>true}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociationStatus, location_name: "Status", metadata: {"box"=>true}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListFirewallRuleGroupAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListFirewallRuleGroupAssociationsRequest.struct_class = Types::ListFirewallRuleGroupAssociationsRequest

    ListFirewallRuleGroupAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRuleGroupAssociationsResponse.add_member(:firewall_rule_group_associations, Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociations, location_name: "FirewallRuleGroupAssociations"))
    ListFirewallRuleGroupAssociationsResponse.struct_class = Types::ListFirewallRuleGroupAssociationsResponse

    ListFirewallRuleGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListFirewallRuleGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListFirewallRuleGroupsRequest.struct_class = Types::ListFirewallRuleGroupsRequest

    ListFirewallRuleGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRuleGroupsResponse.add_member(:firewall_rule_groups, Shapes::ShapeRef.new(shape: FirewallRuleGroupMetadataList, location_name: "FirewallRuleGroups"))
    ListFirewallRuleGroupsResponse.struct_class = Types::ListFirewallRuleGroupsResponse

    ListFirewallRulesRequest.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupId"))
    ListFirewallRulesRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", metadata: {"box"=>true}))
    ListFirewallRulesRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action", metadata: {"box"=>true}))
    ListFirewallRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListFirewallRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListFirewallRulesRequest.struct_class = Types::ListFirewallRulesRequest

    ListFirewallRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFirewallRulesResponse.add_member(:firewall_rules, Shapes::ShapeRef.new(shape: FirewallRules, location_name: "FirewallRules"))
    ListFirewallRulesResponse.struct_class = Types::ListFirewallRulesResponse

    ListResolverConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResolverConfigsMaxResult, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResolverConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListResolverConfigsRequest.struct_class = Types::ListResolverConfigsRequest

    ListResolverConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverConfigsResponse.add_member(:resolver_configs, Shapes::ShapeRef.new(shape: ResolverConfigList, location_name: "ResolverConfigs"))
    ListResolverConfigsResponse.struct_class = Types::ListResolverConfigsResponse

    ListResolverDnssecConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResolverDnssecConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListResolverDnssecConfigsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters", metadata: {"box"=>true}))
    ListResolverDnssecConfigsRequest.struct_class = Types::ListResolverDnssecConfigsRequest

    ListResolverDnssecConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverDnssecConfigsResponse.add_member(:resolver_dnssec_configs, Shapes::ShapeRef.new(shape: ResolverDnssecConfigList, location_name: "ResolverDnssecConfigs"))
    ListResolverDnssecConfigsResponse.struct_class = Types::ListResolverDnssecConfigsResponse

    ListResolverEndpointIpAddressesRequest.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverEndpointId"))
    ListResolverEndpointIpAddressesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResolverEndpointIpAddressesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListResolverEndpointIpAddressesRequest.struct_class = Types::ListResolverEndpointIpAddressesRequest

    ListResolverEndpointIpAddressesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverEndpointIpAddressesResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverEndpointIpAddressesResponse.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddressesResponse, location_name: "IpAddresses"))
    ListResolverEndpointIpAddressesResponse.struct_class = Types::ListResolverEndpointIpAddressesResponse

    ListResolverEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResolverEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListResolverEndpointsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters", metadata: {"box"=>true}))
    ListResolverEndpointsRequest.struct_class = Types::ListResolverEndpointsRequest

    ListResolverEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverEndpointsResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverEndpointsResponse.add_member(:resolver_endpoints, Shapes::ShapeRef.new(shape: ResolverEndpoints, location_name: "ResolverEndpoints"))
    ListResolverEndpointsResponse.struct_class = Types::ListResolverEndpointsResponse

    ListResolverQueryLogConfigAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortByKey, location_name: "SortBy"))
    ListResolverQueryLogConfigAssociationsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListResolverQueryLogConfigAssociationsRequest.struct_class = Types::ListResolverQueryLogConfigAssociationsRequest

    ListResolverQueryLogConfigAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: Count, location_name: "TotalCount"))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:total_filtered_count, Shapes::ShapeRef.new(shape: Count, location_name: "TotalFilteredCount"))
    ListResolverQueryLogConfigAssociationsResponse.add_member(:resolver_query_log_config_associations, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationList, location_name: "ResolverQueryLogConfigAssociations"))
    ListResolverQueryLogConfigAssociationsResponse.struct_class = Types::ListResolverQueryLogConfigAssociationsResponse

    ListResolverQueryLogConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResolverQueryLogConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListResolverQueryLogConfigsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters", metadata: {"box"=>true}))
    ListResolverQueryLogConfigsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortByKey, location_name: "SortBy"))
    ListResolverQueryLogConfigsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListResolverQueryLogConfigsRequest.struct_class = Types::ListResolverQueryLogConfigsRequest

    ListResolverQueryLogConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverQueryLogConfigsResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: Count, location_name: "TotalCount"))
    ListResolverQueryLogConfigsResponse.add_member(:total_filtered_count, Shapes::ShapeRef.new(shape: Count, location_name: "TotalFilteredCount"))
    ListResolverQueryLogConfigsResponse.add_member(:resolver_query_log_configs, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigList, location_name: "ResolverQueryLogConfigs"))
    ListResolverQueryLogConfigsResponse.struct_class = Types::ListResolverQueryLogConfigsResponse

    ListResolverRuleAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResolverRuleAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListResolverRuleAssociationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters", metadata: {"box"=>true}))
    ListResolverRuleAssociationsRequest.struct_class = Types::ListResolverRuleAssociationsRequest

    ListResolverRuleAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverRuleAssociationsResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverRuleAssociationsResponse.add_member(:resolver_rule_associations, Shapes::ShapeRef.new(shape: ResolverRuleAssociations, location_name: "ResolverRuleAssociations"))
    ListResolverRuleAssociationsResponse.struct_class = Types::ListResolverRuleAssociationsResponse

    ListResolverRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResolverRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListResolverRulesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters", metadata: {"box"=>true}))
    ListResolverRulesRequest.struct_class = Types::ListResolverRulesRequest

    ListResolverRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResolverRulesResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResolverRulesResponse.add_member(:resolver_rules, Shapes::ShapeRef.new(shape: ResolverRules, location_name: "ResolverRules"))
    ListResolverRulesResponse.struct_class = Types::ListResolverRulesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PutFirewallRuleGroupPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    PutFirewallRuleGroupPolicyRequest.add_member(:firewall_rule_group_policy, Shapes::ShapeRef.new(shape: FirewallRuleGroupPolicy, required: true, location_name: "FirewallRuleGroupPolicy"))
    PutFirewallRuleGroupPolicyRequest.struct_class = Types::PutFirewallRuleGroupPolicyRequest

    PutFirewallRuleGroupPolicyResponse.add_member(:return_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnValue"))
    PutFirewallRuleGroupPolicyResponse.struct_class = Types::PutFirewallRuleGroupPolicyResponse

    PutResolverQueryLogConfigPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    PutResolverQueryLogConfigPolicyRequest.add_member(:resolver_query_log_config_policy, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigPolicy, required: true, location_name: "ResolverQueryLogConfigPolicy"))
    PutResolverQueryLogConfigPolicyRequest.struct_class = Types::PutResolverQueryLogConfigPolicyRequest

    PutResolverQueryLogConfigPolicyResponse.add_member(:return_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnValue"))
    PutResolverQueryLogConfigPolicyResponse.struct_class = Types::PutResolverQueryLogConfigPolicyResponse

    PutResolverRulePolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    PutResolverRulePolicyRequest.add_member(:resolver_rule_policy, Shapes::ShapeRef.new(shape: ResolverRulePolicy, required: true, location_name: "ResolverRulePolicy"))
    PutResolverRulePolicyRequest.struct_class = Types::PutResolverRulePolicyRequest

    PutResolverRulePolicyResponse.add_member(:return_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnValue"))
    PutResolverRulePolicyResponse.struct_class = Types::PutResolverRulePolicyResponse

    ResolverConfig.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverConfig.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResolverConfig.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ResolverConfig.add_member(:autodefined_reverse, Shapes::ShapeRef.new(shape: ResolverAutodefinedReverseStatus, location_name: "AutodefinedReverse"))
    ResolverConfig.struct_class = Types::ResolverConfig

    ResolverConfigList.member = Shapes::ShapeRef.new(shape: ResolverConfig)

    ResolverDnssecConfig.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverDnssecConfig.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ResolverDnssecConfig.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResolverDnssecConfig.add_member(:validation_status, Shapes::ShapeRef.new(shape: ResolverDNSSECValidationStatus, location_name: "ValidationStatus"))
    ResolverDnssecConfig.struct_class = Types::ResolverDnssecConfig

    ResolverDnssecConfigList.member = Shapes::ShapeRef.new(shape: ResolverDnssecConfig)

    ResolverEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverEndpoint.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    ResolverEndpoint.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ResolverEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResolverEndpoint.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    ResolverEndpoint.add_member(:direction, Shapes::ShapeRef.new(shape: ResolverEndpointDirection, location_name: "Direction"))
    ResolverEndpoint.add_member(:ip_address_count, Shapes::ShapeRef.new(shape: IpAddressCount, location_name: "IpAddressCount"))
    ResolverEndpoint.add_member(:host_vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "HostVPCId"))
    ResolverEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: ResolverEndpointStatus, location_name: "Status"))
    ResolverEndpoint.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ResolverEndpoint.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    ResolverEndpoint.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    ResolverEndpoint.add_member(:resolver_endpoint_type, Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: "ResolverEndpointType"))
    ResolverEndpoint.struct_class = Types::ResolverEndpoint

    ResolverEndpoints.member = Shapes::ShapeRef.new(shape: ResolverEndpoint)

    ResolverQueryLogConfig.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverQueryLogConfig.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ResolverQueryLogConfig.add_member(:status, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigStatus, location_name: "Status"))
    ResolverQueryLogConfig.add_member(:share_status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    ResolverQueryLogConfig.add_member(:association_count, Shapes::ShapeRef.new(shape: Count, location_name: "AssociationCount"))
    ResolverQueryLogConfig.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ResolverQueryLogConfig.add_member(:name, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigName, location_name: "Name"))
    ResolverQueryLogConfig.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "DestinationArn"))
    ResolverQueryLogConfig.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    ResolverQueryLogConfig.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    ResolverQueryLogConfig.struct_class = Types::ResolverQueryLogConfig

    ResolverQueryLogConfigAssociation.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverQueryLogConfigAssociation.add_member(:resolver_query_log_config_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverQueryLogConfigId"))
    ResolverQueryLogConfigAssociation.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResolverQueryLogConfigAssociation.add_member(:status, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationStatus, location_name: "Status"))
    ResolverQueryLogConfigAssociation.add_member(:error, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationError, location_name: "Error"))
    ResolverQueryLogConfigAssociation.add_member(:error_message, Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociationErrorMessage, location_name: "ErrorMessage"))
    ResolverQueryLogConfigAssociation.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    ResolverQueryLogConfigAssociation.struct_class = Types::ResolverQueryLogConfigAssociation

    ResolverQueryLogConfigAssociationList.member = Shapes::ShapeRef.new(shape: ResolverQueryLogConfigAssociation)

    ResolverQueryLogConfigList.member = Shapes::ShapeRef.new(shape: ResolverQueryLogConfig)

    ResolverRule.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverRule.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, location_name: "CreatorRequestId"))
    ResolverRule.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ResolverRule.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    ResolverRule.add_member(:status, Shapes::ShapeRef.new(shape: ResolverRuleStatus, location_name: "Status"))
    ResolverRule.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ResolverRule.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleTypeOption, location_name: "RuleType"))
    ResolverRule.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResolverRule.add_member(:target_ips, Shapes::ShapeRef.new(shape: TargetList, location_name: "TargetIps"))
    ResolverRule.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId"))
    ResolverRule.add_member(:owner_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerId"))
    ResolverRule.add_member(:share_status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "ShareStatus"))
    ResolverRule.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    ResolverRule.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    ResolverRule.struct_class = Types::ResolverRule

    ResolverRuleAssociation.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ResolverRuleAssociation.add_member(:resolver_rule_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverRuleId"))
    ResolverRuleAssociation.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResolverRuleAssociation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPCId"))
    ResolverRuleAssociation.add_member(:status, Shapes::ShapeRef.new(shape: ResolverRuleAssociationStatus, location_name: "Status"))
    ResolverRuleAssociation.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ResolverRuleAssociation.struct_class = Types::ResolverRuleAssociation

    ResolverRuleAssociations.member = Shapes::ShapeRef.new(shape: ResolverRuleAssociation)

    ResolverRuleConfig.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResolverRuleConfig.add_member(:target_ips, Shapes::ShapeRef.new(shape: TargetList, location_name: "TargetIps"))
    ResolverRuleConfig.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResolverEndpointId"))
    ResolverRuleConfig.struct_class = Types::ResolverRuleConfig

    ResolverRules.member = Shapes::ShapeRef.new(shape: ResolverRule)

    ResourceExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceExistsException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceExistsException.struct_class = Types::ResourceExistsException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceInUseException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceUnavailableException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: ResourceId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetAddress.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, location_name: "Ip", metadata: {"box"=>true}))
    TargetAddress.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port", metadata: {"box"=>true}))
    TargetAddress.add_member(:ipv_6, Shapes::ShapeRef.new(shape: Ipv6, location_name: "Ipv6", metadata: {"box"=>true}))
    TargetAddress.struct_class = Types::TargetAddress

    TargetList.member = Shapes::ShapeRef.new(shape: TargetAddress)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnknownResourceException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    UnknownResourceException.struct_class = Types::UnknownResourceException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateFirewallConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    UpdateFirewallConfigRequest.add_member(:firewall_fail_open, Shapes::ShapeRef.new(shape: FirewallFailOpenStatus, required: true, location_name: "FirewallFailOpen"))
    UpdateFirewallConfigRequest.struct_class = Types::UpdateFirewallConfigRequest

    UpdateFirewallConfigResponse.add_member(:firewall_config, Shapes::ShapeRef.new(shape: FirewallConfig, location_name: "FirewallConfig"))
    UpdateFirewallConfigResponse.struct_class = Types::UpdateFirewallConfigResponse

    UpdateFirewallDomainsRequest.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallDomainListId"))
    UpdateFirewallDomainsRequest.add_member(:operation, Shapes::ShapeRef.new(shape: FirewallDomainUpdateOperation, required: true, location_name: "Operation"))
    UpdateFirewallDomainsRequest.add_member(:domains, Shapes::ShapeRef.new(shape: FirewallDomains, required: true, location_name: "Domains"))
    UpdateFirewallDomainsRequest.struct_class = Types::UpdateFirewallDomainsRequest

    UpdateFirewallDomainsResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    UpdateFirewallDomainsResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateFirewallDomainsResponse.add_member(:status, Shapes::ShapeRef.new(shape: FirewallDomainListStatus, location_name: "Status"))
    UpdateFirewallDomainsResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    UpdateFirewallDomainsResponse.struct_class = Types::UpdateFirewallDomainsResponse

    UpdateFirewallRuleGroupAssociationRequest.add_member(:firewall_rule_group_association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupAssociationId"))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", metadata: {"box"=>true}))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:mutation_protection, Shapes::ShapeRef.new(shape: MutationProtectionStatus, location_name: "MutationProtection", metadata: {"box"=>true}))
    UpdateFirewallRuleGroupAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name", metadata: {"box"=>true}))
    UpdateFirewallRuleGroupAssociationRequest.struct_class = Types::UpdateFirewallRuleGroupAssociationRequest

    UpdateFirewallRuleGroupAssociationResponse.add_member(:firewall_rule_group_association, Shapes::ShapeRef.new(shape: FirewallRuleGroupAssociation, location_name: "FirewallRuleGroupAssociation"))
    UpdateFirewallRuleGroupAssociationResponse.struct_class = Types::UpdateFirewallRuleGroupAssociationResponse

    UpdateFirewallRuleRequest.add_member(:firewall_rule_group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallRuleGroupId"))
    UpdateFirewallRuleRequest.add_member(:firewall_domain_list_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "FirewallDomainListId"))
    UpdateFirewallRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", metadata: {"box"=>true}))
    UpdateFirewallRuleRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action", metadata: {"box"=>true}))
    UpdateFirewallRuleRequest.add_member(:block_response, Shapes::ShapeRef.new(shape: BlockResponse, location_name: "BlockResponse", metadata: {"box"=>true}))
    UpdateFirewallRuleRequest.add_member(:block_override_domain, Shapes::ShapeRef.new(shape: BlockOverrideDomain, location_name: "BlockOverrideDomain", metadata: {"box"=>true}))
    UpdateFirewallRuleRequest.add_member(:block_override_dns_type, Shapes::ShapeRef.new(shape: BlockOverrideDnsType, location_name: "BlockOverrideDnsType", metadata: {"box"=>true}))
    UpdateFirewallRuleRequest.add_member(:block_override_ttl, Shapes::ShapeRef.new(shape: BlockOverrideTtl, location_name: "BlockOverrideTtl", metadata: {"box"=>true}))
    UpdateFirewallRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name", metadata: {"box"=>true}))
    UpdateFirewallRuleRequest.struct_class = Types::UpdateFirewallRuleRequest

    UpdateFirewallRuleResponse.add_member(:firewall_rule, Shapes::ShapeRef.new(shape: FirewallRule, location_name: "FirewallRule"))
    UpdateFirewallRuleResponse.struct_class = Types::UpdateFirewallRuleResponse

    UpdateIpAddress.add_member(:ip_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "IpId"))
    UpdateIpAddress.add_member(:ipv_6, Shapes::ShapeRef.new(shape: Ipv6, required: true, location_name: "Ipv6"))
    UpdateIpAddress.struct_class = Types::UpdateIpAddress

    UpdateIpAddresses.member = Shapes::ShapeRef.new(shape: UpdateIpAddress)

    UpdateResolverConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    UpdateResolverConfigRequest.add_member(:autodefined_reverse_flag, Shapes::ShapeRef.new(shape: AutodefinedReverseFlag, required: true, location_name: "AutodefinedReverseFlag"))
    UpdateResolverConfigRequest.struct_class = Types::UpdateResolverConfigRequest

    UpdateResolverConfigResponse.add_member(:resolver_config, Shapes::ShapeRef.new(shape: ResolverConfig, location_name: "ResolverConfig"))
    UpdateResolverConfigResponse.struct_class = Types::UpdateResolverConfigResponse

    UpdateResolverDnssecConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    UpdateResolverDnssecConfigRequest.add_member(:validation, Shapes::ShapeRef.new(shape: Validation, required: true, location_name: "Validation"))
    UpdateResolverDnssecConfigRequest.struct_class = Types::UpdateResolverDnssecConfigRequest

    UpdateResolverDnssecConfigResponse.add_member(:resolver_dnssec_config, Shapes::ShapeRef.new(shape: ResolverDnssecConfig, location_name: "ResolverDNSSECConfig"))
    UpdateResolverDnssecConfigResponse.struct_class = Types::UpdateResolverDnssecConfigResponse

    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverEndpointId"))
    UpdateResolverEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name", metadata: {"box"=>true}))
    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_type, Shapes::ShapeRef.new(shape: ResolverEndpointType, location_name: "ResolverEndpointType", metadata: {"box"=>true}))
    UpdateResolverEndpointRequest.add_member(:update_ip_addresses, Shapes::ShapeRef.new(shape: UpdateIpAddresses, location_name: "UpdateIpAddresses", metadata: {"box"=>true}))
    UpdateResolverEndpointRequest.struct_class = Types::UpdateResolverEndpointRequest

    UpdateResolverEndpointResponse.add_member(:resolver_endpoint, Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    UpdateResolverEndpointResponse.struct_class = Types::UpdateResolverEndpointResponse

    UpdateResolverRuleRequest.add_member(:resolver_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverRuleId"))
    UpdateResolverRuleRequest.add_member(:config, Shapes::ShapeRef.new(shape: ResolverRuleConfig, required: true, location_name: "Config"))
    UpdateResolverRuleRequest.struct_class = Types::UpdateResolverRuleRequest

    UpdateResolverRuleResponse.add_member(:resolver_rule, Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    UpdateResolverRuleResponse.struct_class = Types::UpdateResolverRuleResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-04-01"

      api.metadata = {
        "apiVersion" => "2018-04-01",
        "endpointPrefix" => "route53resolver",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Route53Resolver",
        "serviceFullName" => "Amazon Route 53 Resolver",
        "serviceId" => "Route53Resolver",
        "signatureVersion" => "v4",
        "targetPrefix" => "Route53Resolver",
        "uid" => "route53resolver-2018-04-01",
      }

      api.add_operation(:associate_firewall_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFirewallRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateFirewallRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFirewallRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_resolver_endpoint_ip_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResolverEndpointIpAddress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateResolverEndpointIpAddressRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateResolverEndpointIpAddressResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_resolver_query_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResolverQueryLogConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateResolverQueryLogConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateResolverQueryLogConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:associate_resolver_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResolverRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateResolverRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateResolverRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_firewall_domain_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFirewallDomainList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFirewallDomainListRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFirewallDomainListResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFirewallRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFirewallRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFirewallRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_firewall_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFirewallRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFirewallRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFirewallRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_resolver_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResolverEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResolverEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResolverEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_resolver_query_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResolverQueryLogConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResolverQueryLogConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResolverQueryLogConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_resolver_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResolverRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResolverRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResolverRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_firewall_domain_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFirewallDomainList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFirewallDomainListRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFirewallDomainListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFirewallRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFirewallRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFirewallRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_firewall_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFirewallRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFirewallRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFirewallRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_resolver_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResolverEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResolverEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResolverEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_resolver_query_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResolverQueryLogConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResolverQueryLogConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResolverQueryLogConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resolver_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResolverRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResolverRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResolverRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_firewall_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFirewallRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFirewallRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFirewallRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_resolver_endpoint_ip_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResolverEndpointIpAddress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResolverEndpointIpAddressRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResolverEndpointIpAddressResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_resolver_query_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResolverQueryLogConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResolverQueryLogConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResolverQueryLogConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_resolver_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResolverRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResolverRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResolverRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_firewall_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFirewallConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFirewallConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFirewallConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_firewall_domain_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFirewallDomainList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFirewallDomainListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFirewallDomainListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_firewall_rule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFirewallRuleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFirewallRuleGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFirewallRuleGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_firewall_rule_group_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFirewallRuleGroupAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFirewallRuleGroupAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFirewallRuleGroupAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_firewall_rule_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFirewallRuleGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFirewallRuleGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFirewallRuleGroupPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resolver_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_resolver_dnssec_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverDnssecConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverDnssecConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverDnssecConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resolver_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resolver_query_log_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverQueryLogConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resolver_query_log_config_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverQueryLogConfigAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resolver_query_log_config_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverQueryLogConfigPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverQueryLogConfigPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resolver_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resolver_rule_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverRuleAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverRuleAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverRuleAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resolver_rule_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResolverRulePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResolverRulePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResolverRulePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_firewall_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportFirewallDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportFirewallDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportFirewallDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_firewall_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewall_domain_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallDomainLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallDomainListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallDomainListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewall_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewall_rule_group_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallRuleGroupAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallRuleGroupAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallRuleGroupAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewall_rule_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallRuleGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallRuleGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallRuleGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_firewall_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFirewallRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFirewallRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFirewallRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolver_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolverConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResolverConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolverConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolver_dnssec_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolverDnssecConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResolverDnssecConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolverDnssecConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolver_endpoint_ip_addresses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolverEndpointIpAddresses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResolverEndpointIpAddressesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolverEndpointIpAddressesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolver_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolverEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResolverEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolverEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolver_query_log_config_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolverQueryLogConfigAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolver_query_log_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolverQueryLogConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolverQueryLogConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolver_rule_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolverRuleAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResolverRuleAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolverRuleAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolver_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolverRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResolverRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolverRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_firewall_rule_group_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFirewallRuleGroupPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutFirewallRuleGroupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFirewallRuleGroupPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_resolver_query_log_config_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResolverQueryLogConfigPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResolverQueryLogConfigPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResolverQueryLogConfigPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_resolver_rule_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResolverRulePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResolverRulePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResolverRulePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_firewall_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_firewall_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_firewall_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_firewall_rule_group_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFirewallRuleGroupAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFirewallRuleGroupAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFirewallRuleGroupAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_resolver_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResolverConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResolverConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResolverConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_resolver_dnssec_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResolverDnssecConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResolverDnssecConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResolverDnssecConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_resolver_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResolverEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResolverEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResolverEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_resolver_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResolverRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResolverRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResolverRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
