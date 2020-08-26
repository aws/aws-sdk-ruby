# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Resolver
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateResolverEndpointIpAddressRequest = Shapes::StructureShape.new(name: 'AssociateResolverEndpointIpAddressRequest')
    AssociateResolverEndpointIpAddressResponse = Shapes::StructureShape.new(name: 'AssociateResolverEndpointIpAddressResponse')
    AssociateResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'AssociateResolverQueryLogConfigRequest')
    AssociateResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'AssociateResolverQueryLogConfigResponse')
    AssociateResolverRuleRequest = Shapes::StructureShape.new(name: 'AssociateResolverRuleRequest')
    AssociateResolverRuleResponse = Shapes::StructureShape.new(name: 'AssociateResolverRuleResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateResolverEndpointRequest = Shapes::StructureShape.new(name: 'CreateResolverEndpointRequest')
    CreateResolverEndpointResponse = Shapes::StructureShape.new(name: 'CreateResolverEndpointResponse')
    CreateResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'CreateResolverQueryLogConfigRequest')
    CreateResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'CreateResolverQueryLogConfigResponse')
    CreateResolverRuleRequest = Shapes::StructureShape.new(name: 'CreateResolverRuleRequest')
    CreateResolverRuleResponse = Shapes::StructureShape.new(name: 'CreateResolverRuleResponse')
    CreatorRequestId = Shapes::StringShape.new(name: 'CreatorRequestId')
    DeleteResolverEndpointRequest = Shapes::StructureShape.new(name: 'DeleteResolverEndpointRequest')
    DeleteResolverEndpointResponse = Shapes::StructureShape.new(name: 'DeleteResolverEndpointResponse')
    DeleteResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'DeleteResolverQueryLogConfigRequest')
    DeleteResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'DeleteResolverQueryLogConfigResponse')
    DeleteResolverRuleRequest = Shapes::StructureShape.new(name: 'DeleteResolverRuleRequest')
    DeleteResolverRuleResponse = Shapes::StructureShape.new(name: 'DeleteResolverRuleResponse')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DisassociateResolverEndpointIpAddressRequest = Shapes::StructureShape.new(name: 'DisassociateResolverEndpointIpAddressRequest')
    DisassociateResolverEndpointIpAddressResponse = Shapes::StructureShape.new(name: 'DisassociateResolverEndpointIpAddressResponse')
    DisassociateResolverQueryLogConfigRequest = Shapes::StructureShape.new(name: 'DisassociateResolverQueryLogConfigRequest')
    DisassociateResolverQueryLogConfigResponse = Shapes::StructureShape.new(name: 'DisassociateResolverQueryLogConfigResponse')
    DisassociateResolverRuleRequest = Shapes::StructureShape.new(name: 'DisassociateResolverRuleRequest')
    DisassociateResolverRuleResponse = Shapes::StructureShape.new(name: 'DisassociateResolverRuleResponse')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
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
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
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
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PutResolverQueryLogConfigPolicyRequest = Shapes::StructureShape.new(name: 'PutResolverQueryLogConfigPolicyRequest')
    PutResolverQueryLogConfigPolicyResponse = Shapes::StructureShape.new(name: 'PutResolverQueryLogConfigPolicyResponse')
    PutResolverRulePolicyRequest = Shapes::StructureShape.new(name: 'PutResolverRulePolicyRequest')
    PutResolverRulePolicyResponse = Shapes::StructureShape.new(name: 'PutResolverRulePolicyResponse')
    ResolverEndpoint = Shapes::StructureShape.new(name: 'ResolverEndpoint')
    ResolverEndpointDirection = Shapes::StringShape.new(name: 'ResolverEndpointDirection')
    ResolverEndpointStatus = Shapes::StringShape.new(name: 'ResolverEndpointStatus')
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
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateResolverEndpointRequest = Shapes::StructureShape.new(name: 'UpdateResolverEndpointRequest')
    UpdateResolverEndpointResponse = Shapes::StructureShape.new(name: 'UpdateResolverEndpointResponse')
    UpdateResolverRuleRequest = Shapes::StructureShape.new(name: 'UpdateResolverRuleRequest')
    UpdateResolverRuleResponse = Shapes::StructureShape.new(name: 'UpdateResolverRuleResponse')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

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

    CreateResolverEndpointRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: CreatorRequestId, required: true, location_name: "CreatorRequestId"))
    CreateResolverEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateResolverEndpointRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "SecurityGroupIds", metadata: {"box"=>true}))
    CreateResolverEndpointRequest.add_member(:direction, Shapes::ShapeRef.new(shape: ResolverEndpointDirection, required: true, location_name: "Direction"))
    CreateResolverEndpointRequest.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddressesRequest, required: true, location_name: "IpAddresses"))
    CreateResolverEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", metadata: {"box"=>true}))
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
    IpAddressRequest.struct_class = Types::IpAddressRequest

    IpAddressResponse.add_member(:ip_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "IpId"))
    IpAddressResponse.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    IpAddressResponse.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, location_name: "Ip"))
    IpAddressResponse.add_member(:status, Shapes::ShapeRef.new(shape: IpAddressStatus, location_name: "Status"))
    IpAddressResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    IpAddressResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "CreationTime"))
    IpAddressResponse.add_member(:modification_time, Shapes::ShapeRef.new(shape: Rfc3339TimeString, location_name: "ModificationTime"))
    IpAddressResponse.struct_class = Types::IpAddressResponse

    IpAddressUpdate.add_member(:ip_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "IpId", metadata: {"box"=>true}))
    IpAddressUpdate.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId", metadata: {"box"=>true}))
    IpAddressUpdate.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, location_name: "Ip", metadata: {"box"=>true}))
    IpAddressUpdate.struct_class = Types::IpAddressUpdate

    IpAddressesRequest.member = Shapes::ShapeRef.new(shape: IpAddressRequest)

    IpAddressesResponse.member = Shapes::ShapeRef.new(shape: IpAddressResponse)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    LimitExceededException.struct_class = Types::LimitExceededException

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

    TargetAddress.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, required: true, location_name: "Ip"))
    TargetAddress.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "Port", metadata: {"box"=>true}))
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

    UpdateResolverEndpointRequest.add_member(:resolver_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverEndpointId"))
    UpdateResolverEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name", metadata: {"box"=>true}))
    UpdateResolverEndpointRequest.struct_class = Types::UpdateResolverEndpointRequest

    UpdateResolverEndpointResponse.add_member(:resolver_endpoint, Shapes::ShapeRef.new(shape: ResolverEndpoint, location_name: "ResolverEndpoint"))
    UpdateResolverEndpointResponse.struct_class = Types::UpdateResolverEndpointResponse

    UpdateResolverRuleRequest.add_member(:resolver_rule_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResolverRuleId"))
    UpdateResolverRuleRequest.add_member(:config, Shapes::ShapeRef.new(shape: ResolverRuleConfig, required: true, location_name: "Config"))
    UpdateResolverRuleRequest.struct_class = Types::UpdateResolverRuleRequest

    UpdateResolverRuleResponse.add_member(:resolver_rule, Shapes::ShapeRef.new(shape: ResolverRule, location_name: "ResolverRule"))
    UpdateResolverRuleResponse.struct_class = Types::UpdateResolverRuleResponse


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
