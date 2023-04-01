# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::VPCLattice
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessLogDestinationArn = Shapes::StringShape.new(name: 'AccessLogDestinationArn')
    AccessLogSubscriptionArn = Shapes::StringShape.new(name: 'AccessLogSubscriptionArn')
    AccessLogSubscriptionId = Shapes::StringShape.new(name: 'AccessLogSubscriptionId')
    AccessLogSubscriptionIdentifier = Shapes::StringShape.new(name: 'AccessLogSubscriptionIdentifier')
    AccessLogSubscriptionList = Shapes::ListShape.new(name: 'AccessLogSubscriptionList')
    AccessLogSubscriptionSummary = Shapes::StructureShape.new(name: 'AccessLogSubscriptionSummary')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AuthPolicyState = Shapes::StringShape.new(name: 'AuthPolicyState')
    AuthPolicyString = Shapes::StringShape.new(name: 'AuthPolicyString')
    AuthType = Shapes::StringShape.new(name: 'AuthType')
    BatchUpdateRuleRequest = Shapes::StructureShape.new(name: 'BatchUpdateRuleRequest')
    BatchUpdateRuleResponse = Shapes::StructureShape.new(name: 'BatchUpdateRuleResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAccessLogSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateAccessLogSubscriptionRequest')
    CreateAccessLogSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateAccessLogSubscriptionResponse')
    CreateListenerRequest = Shapes::StructureShape.new(name: 'CreateListenerRequest')
    CreateListenerResponse = Shapes::StructureShape.new(name: 'CreateListenerResponse')
    CreateRuleRequest = Shapes::StructureShape.new(name: 'CreateRuleRequest')
    CreateRuleResponse = Shapes::StructureShape.new(name: 'CreateRuleResponse')
    CreateServiceNetworkRequest = Shapes::StructureShape.new(name: 'CreateServiceNetworkRequest')
    CreateServiceNetworkResponse = Shapes::StructureShape.new(name: 'CreateServiceNetworkResponse')
    CreateServiceNetworkServiceAssociationRequest = Shapes::StructureShape.new(name: 'CreateServiceNetworkServiceAssociationRequest')
    CreateServiceNetworkServiceAssociationResponse = Shapes::StructureShape.new(name: 'CreateServiceNetworkServiceAssociationResponse')
    CreateServiceNetworkVpcAssociationRequest = Shapes::StructureShape.new(name: 'CreateServiceNetworkVpcAssociationRequest')
    CreateServiceNetworkVpcAssociationRequestSecurityGroupIdsList = Shapes::ListShape.new(name: 'CreateServiceNetworkVpcAssociationRequestSecurityGroupIdsList')
    CreateServiceNetworkVpcAssociationResponse = Shapes::StructureShape.new(name: 'CreateServiceNetworkVpcAssociationResponse')
    CreateServiceRequest = Shapes::StructureShape.new(name: 'CreateServiceRequest')
    CreateServiceResponse = Shapes::StructureShape.new(name: 'CreateServiceResponse')
    CreateTargetGroupRequest = Shapes::StructureShape.new(name: 'CreateTargetGroupRequest')
    CreateTargetGroupResponse = Shapes::StructureShape.new(name: 'CreateTargetGroupResponse')
    DeleteAccessLogSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteAccessLogSubscriptionRequest')
    DeleteAccessLogSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteAccessLogSubscriptionResponse')
    DeleteAuthPolicyRequest = Shapes::StructureShape.new(name: 'DeleteAuthPolicyRequest')
    DeleteAuthPolicyResponse = Shapes::StructureShape.new(name: 'DeleteAuthPolicyResponse')
    DeleteListenerRequest = Shapes::StructureShape.new(name: 'DeleteListenerRequest')
    DeleteListenerResponse = Shapes::StructureShape.new(name: 'DeleteListenerResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DeleteRuleResponse = Shapes::StructureShape.new(name: 'DeleteRuleResponse')
    DeleteServiceNetworkRequest = Shapes::StructureShape.new(name: 'DeleteServiceNetworkRequest')
    DeleteServiceNetworkResponse = Shapes::StructureShape.new(name: 'DeleteServiceNetworkResponse')
    DeleteServiceNetworkServiceAssociationRequest = Shapes::StructureShape.new(name: 'DeleteServiceNetworkServiceAssociationRequest')
    DeleteServiceNetworkServiceAssociationResponse = Shapes::StructureShape.new(name: 'DeleteServiceNetworkServiceAssociationResponse')
    DeleteServiceNetworkVpcAssociationRequest = Shapes::StructureShape.new(name: 'DeleteServiceNetworkVpcAssociationRequest')
    DeleteServiceNetworkVpcAssociationResponse = Shapes::StructureShape.new(name: 'DeleteServiceNetworkVpcAssociationResponse')
    DeleteServiceRequest = Shapes::StructureShape.new(name: 'DeleteServiceRequest')
    DeleteServiceResponse = Shapes::StructureShape.new(name: 'DeleteServiceResponse')
    DeleteTargetGroupRequest = Shapes::StructureShape.new(name: 'DeleteTargetGroupRequest')
    DeleteTargetGroupResponse = Shapes::StructureShape.new(name: 'DeleteTargetGroupResponse')
    DeregisterTargetsRequest = Shapes::StructureShape.new(name: 'DeregisterTargetsRequest')
    DeregisterTargetsRequestTargetsList = Shapes::ListShape.new(name: 'DeregisterTargetsRequestTargetsList')
    DeregisterTargetsResponse = Shapes::StructureShape.new(name: 'DeregisterTargetsResponse')
    DnsEntry = Shapes::StructureShape.new(name: 'DnsEntry')
    FailureCode = Shapes::StringShape.new(name: 'FailureCode')
    FailureMessage = Shapes::StringShape.new(name: 'FailureMessage')
    FixedResponseAction = Shapes::StructureShape.new(name: 'FixedResponseAction')
    ForwardAction = Shapes::StructureShape.new(name: 'ForwardAction')
    GetAccessLogSubscriptionRequest = Shapes::StructureShape.new(name: 'GetAccessLogSubscriptionRequest')
    GetAccessLogSubscriptionResponse = Shapes::StructureShape.new(name: 'GetAccessLogSubscriptionResponse')
    GetAuthPolicyRequest = Shapes::StructureShape.new(name: 'GetAuthPolicyRequest')
    GetAuthPolicyResponse = Shapes::StructureShape.new(name: 'GetAuthPolicyResponse')
    GetListenerRequest = Shapes::StructureShape.new(name: 'GetListenerRequest')
    GetListenerResponse = Shapes::StructureShape.new(name: 'GetListenerResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetRuleRequest = Shapes::StructureShape.new(name: 'GetRuleRequest')
    GetRuleResponse = Shapes::StructureShape.new(name: 'GetRuleResponse')
    GetServiceNetworkRequest = Shapes::StructureShape.new(name: 'GetServiceNetworkRequest')
    GetServiceNetworkResponse = Shapes::StructureShape.new(name: 'GetServiceNetworkResponse')
    GetServiceNetworkServiceAssociationRequest = Shapes::StructureShape.new(name: 'GetServiceNetworkServiceAssociationRequest')
    GetServiceNetworkServiceAssociationResponse = Shapes::StructureShape.new(name: 'GetServiceNetworkServiceAssociationResponse')
    GetServiceNetworkVpcAssociationRequest = Shapes::StructureShape.new(name: 'GetServiceNetworkVpcAssociationRequest')
    GetServiceNetworkVpcAssociationResponse = Shapes::StructureShape.new(name: 'GetServiceNetworkVpcAssociationResponse')
    GetServiceRequest = Shapes::StructureShape.new(name: 'GetServiceRequest')
    GetServiceResponse = Shapes::StructureShape.new(name: 'GetServiceResponse')
    GetTargetGroupRequest = Shapes::StructureShape.new(name: 'GetTargetGroupRequest')
    GetTargetGroupResponse = Shapes::StructureShape.new(name: 'GetTargetGroupResponse')
    HeaderMatch = Shapes::StructureShape.new(name: 'HeaderMatch')
    HeaderMatchContains = Shapes::StringShape.new(name: 'HeaderMatchContains')
    HeaderMatchExact = Shapes::StringShape.new(name: 'HeaderMatchExact')
    HeaderMatchList = Shapes::ListShape.new(name: 'HeaderMatchList')
    HeaderMatchName = Shapes::StringShape.new(name: 'HeaderMatchName')
    HeaderMatchPrefix = Shapes::StringShape.new(name: 'HeaderMatchPrefix')
    HeaderMatchType = Shapes::UnionShape.new(name: 'HeaderMatchType')
    HealthCheckConfig = Shapes::StructureShape.new(name: 'HealthCheckConfig')
    HealthCheckIntervalSeconds = Shapes::IntegerShape.new(name: 'HealthCheckIntervalSeconds')
    HealthCheckPath = Shapes::StringShape.new(name: 'HealthCheckPath')
    HealthCheckPort = Shapes::IntegerShape.new(name: 'HealthCheckPort')
    HealthCheckProtocolVersion = Shapes::StringShape.new(name: 'HealthCheckProtocolVersion')
    HealthCheckTimeoutSeconds = Shapes::IntegerShape.new(name: 'HealthCheckTimeoutSeconds')
    HealthyThresholdCount = Shapes::IntegerShape.new(name: 'HealthyThresholdCount')
    HttpCodeMatcher = Shapes::StringShape.new(name: 'HttpCodeMatcher')
    HttpMatch = Shapes::StructureShape.new(name: 'HttpMatch')
    HttpMethod = Shapes::StringShape.new(name: 'HttpMethod')
    HttpStatusCode = Shapes::IntegerShape.new(name: 'HttpStatusCode')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    ListAccessLogSubscriptionsRequest = Shapes::StructureShape.new(name: 'ListAccessLogSubscriptionsRequest')
    ListAccessLogSubscriptionsResponse = Shapes::StructureShape.new(name: 'ListAccessLogSubscriptionsResponse')
    ListListenersRequest = Shapes::StructureShape.new(name: 'ListListenersRequest')
    ListListenersResponse = Shapes::StructureShape.new(name: 'ListListenersResponse')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListServiceNetworkServiceAssociationsRequest = Shapes::StructureShape.new(name: 'ListServiceNetworkServiceAssociationsRequest')
    ListServiceNetworkServiceAssociationsResponse = Shapes::StructureShape.new(name: 'ListServiceNetworkServiceAssociationsResponse')
    ListServiceNetworkVpcAssociationsRequest = Shapes::StructureShape.new(name: 'ListServiceNetworkVpcAssociationsRequest')
    ListServiceNetworkVpcAssociationsResponse = Shapes::StructureShape.new(name: 'ListServiceNetworkVpcAssociationsResponse')
    ListServiceNetworksRequest = Shapes::StructureShape.new(name: 'ListServiceNetworksRequest')
    ListServiceNetworksResponse = Shapes::StructureShape.new(name: 'ListServiceNetworksResponse')
    ListServicesRequest = Shapes::StructureShape.new(name: 'ListServicesRequest')
    ListServicesResponse = Shapes::StructureShape.new(name: 'ListServicesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTargetGroupsRequest = Shapes::StructureShape.new(name: 'ListTargetGroupsRequest')
    ListTargetGroupsResponse = Shapes::StructureShape.new(name: 'ListTargetGroupsResponse')
    ListTargetsRequest = Shapes::StructureShape.new(name: 'ListTargetsRequest')
    ListTargetsRequestTargetsList = Shapes::ListShape.new(name: 'ListTargetsRequestTargetsList')
    ListTargetsResponse = Shapes::StructureShape.new(name: 'ListTargetsResponse')
    ListenerArn = Shapes::StringShape.new(name: 'ListenerArn')
    ListenerId = Shapes::StringShape.new(name: 'ListenerId')
    ListenerIdentifier = Shapes::StringShape.new(name: 'ListenerIdentifier')
    ListenerName = Shapes::StringShape.new(name: 'ListenerName')
    ListenerProtocol = Shapes::StringShape.new(name: 'ListenerProtocol')
    ListenerSummary = Shapes::StructureShape.new(name: 'ListenerSummary')
    ListenerSummaryList = Shapes::ListShape.new(name: 'ListenerSummaryList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Matcher = Shapes::UnionShape.new(name: 'Matcher')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PathMatch = Shapes::StructureShape.new(name: 'PathMatch')
    PathMatchExact = Shapes::StringShape.new(name: 'PathMatchExact')
    PathMatchPrefix = Shapes::StringShape.new(name: 'PathMatchPrefix')
    PathMatchType = Shapes::UnionShape.new(name: 'PathMatchType')
    PolicyString = Shapes::StringShape.new(name: 'PolicyString')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PutAuthPolicyRequest = Shapes::StructureShape.new(name: 'PutAuthPolicyRequest')
    PutAuthPolicyResponse = Shapes::StructureShape.new(name: 'PutAuthPolicyResponse')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    RegisterTargetsRequest = Shapes::StructureShape.new(name: 'RegisterTargetsRequest')
    RegisterTargetsRequestTargetsList = Shapes::ListShape.new(name: 'RegisterTargetsRequestTargetsList')
    RegisterTargetsResponse = Shapes::StructureShape.new(name: 'RegisterTargetsResponse')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RuleAction = Shapes::UnionShape.new(name: 'RuleAction')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleId = Shapes::StringShape.new(name: 'RuleId')
    RuleIdentifier = Shapes::StringShape.new(name: 'RuleIdentifier')
    RuleMatch = Shapes::UnionShape.new(name: 'RuleMatch')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RulePriority = Shapes::IntegerShape.new(name: 'RulePriority')
    RuleSummary = Shapes::StructureShape.new(name: 'RuleSummary')
    RuleSummaryList = Shapes::ListShape.new(name: 'RuleSummaryList')
    RuleUpdate = Shapes::StructureShape.new(name: 'RuleUpdate')
    RuleUpdateFailure = Shapes::StructureShape.new(name: 'RuleUpdateFailure')
    RuleUpdateFailureList = Shapes::ListShape.new(name: 'RuleUpdateFailureList')
    RuleUpdateList = Shapes::ListShape.new(name: 'RuleUpdateList')
    RuleUpdateSuccess = Shapes::StructureShape.new(name: 'RuleUpdateSuccess')
    RuleUpdateSuccessList = Shapes::ListShape.new(name: 'RuleUpdateSuccessList')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupList = Shapes::ListShape.new(name: 'SecurityGroupList')
    ServiceArn = Shapes::StringShape.new(name: 'ServiceArn')
    ServiceArnList = Shapes::ListShape.new(name: 'ServiceArnList')
    ServiceCustomDomainName = Shapes::StringShape.new(name: 'ServiceCustomDomainName')
    ServiceId = Shapes::StringShape.new(name: 'ServiceId')
    ServiceIdentifier = Shapes::StringShape.new(name: 'ServiceIdentifier')
    ServiceList = Shapes::ListShape.new(name: 'ServiceList')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceNetworkArn = Shapes::StringShape.new(name: 'ServiceNetworkArn')
    ServiceNetworkId = Shapes::StringShape.new(name: 'ServiceNetworkId')
    ServiceNetworkIdentifier = Shapes::StringShape.new(name: 'ServiceNetworkIdentifier')
    ServiceNetworkList = Shapes::ListShape.new(name: 'ServiceNetworkList')
    ServiceNetworkName = Shapes::StringShape.new(name: 'ServiceNetworkName')
    ServiceNetworkServiceAssociationArn = Shapes::StringShape.new(name: 'ServiceNetworkServiceAssociationArn')
    ServiceNetworkServiceAssociationIdentifier = Shapes::StringShape.new(name: 'ServiceNetworkServiceAssociationIdentifier')
    ServiceNetworkServiceAssociationList = Shapes::ListShape.new(name: 'ServiceNetworkServiceAssociationList')
    ServiceNetworkServiceAssociationStatus = Shapes::StringShape.new(name: 'ServiceNetworkServiceAssociationStatus')
    ServiceNetworkServiceAssociationSummary = Shapes::StructureShape.new(name: 'ServiceNetworkServiceAssociationSummary')
    ServiceNetworkSummary = Shapes::StructureShape.new(name: 'ServiceNetworkSummary')
    ServiceNetworkVpcAssociationArn = Shapes::StringShape.new(name: 'ServiceNetworkVpcAssociationArn')
    ServiceNetworkVpcAssociationId = Shapes::StringShape.new(name: 'ServiceNetworkVpcAssociationId')
    ServiceNetworkVpcAssociationIdentifier = Shapes::StringShape.new(name: 'ServiceNetworkVpcAssociationIdentifier')
    ServiceNetworkVpcAssociationList = Shapes::ListShape.new(name: 'ServiceNetworkVpcAssociationList')
    ServiceNetworkVpcAssociationStatus = Shapes::StringShape.new(name: 'ServiceNetworkVpcAssociationStatus')
    ServiceNetworkVpcAssociationSummary = Shapes::StructureShape.new(name: 'ServiceNetworkVpcAssociationSummary')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceStatus = Shapes::StringShape.new(name: 'ServiceStatus')
    ServiceSummary = Shapes::StructureShape.new(name: 'ServiceSummary')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetFailure = Shapes::StructureShape.new(name: 'TargetFailure')
    TargetFailureList = Shapes::ListShape.new(name: 'TargetFailureList')
    TargetGroupArn = Shapes::StringShape.new(name: 'TargetGroupArn')
    TargetGroupConfig = Shapes::StructureShape.new(name: 'TargetGroupConfig')
    TargetGroupId = Shapes::StringShape.new(name: 'TargetGroupId')
    TargetGroupIdentifier = Shapes::StringShape.new(name: 'TargetGroupIdentifier')
    TargetGroupList = Shapes::ListShape.new(name: 'TargetGroupList')
    TargetGroupName = Shapes::StringShape.new(name: 'TargetGroupName')
    TargetGroupProtocol = Shapes::StringShape.new(name: 'TargetGroupProtocol')
    TargetGroupProtocolVersion = Shapes::StringShape.new(name: 'TargetGroupProtocolVersion')
    TargetGroupStatus = Shapes::StringShape.new(name: 'TargetGroupStatus')
    TargetGroupSummary = Shapes::StructureShape.new(name: 'TargetGroupSummary')
    TargetGroupType = Shapes::StringShape.new(name: 'TargetGroupType')
    TargetGroupWeight = Shapes::IntegerShape.new(name: 'TargetGroupWeight')
    TargetIdString = Shapes::StringShape.new(name: 'TargetIdString')
    TargetList = Shapes::ListShape.new(name: 'TargetList')
    TargetStatus = Shapes::StringShape.new(name: 'TargetStatus')
    TargetSummary = Shapes::StructureShape.new(name: 'TargetSummary')
    TargetSummaryList = Shapes::ListShape.new(name: 'TargetSummaryList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UnhealthyThresholdCount = Shapes::IntegerShape.new(name: 'UnhealthyThresholdCount')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccessLogSubscriptionRequest = Shapes::StructureShape.new(name: 'UpdateAccessLogSubscriptionRequest')
    UpdateAccessLogSubscriptionResponse = Shapes::StructureShape.new(name: 'UpdateAccessLogSubscriptionResponse')
    UpdateListenerRequest = Shapes::StructureShape.new(name: 'UpdateListenerRequest')
    UpdateListenerResponse = Shapes::StructureShape.new(name: 'UpdateListenerResponse')
    UpdateRuleRequest = Shapes::StructureShape.new(name: 'UpdateRuleRequest')
    UpdateRuleResponse = Shapes::StructureShape.new(name: 'UpdateRuleResponse')
    UpdateServiceNetworkRequest = Shapes::StructureShape.new(name: 'UpdateServiceNetworkRequest')
    UpdateServiceNetworkResponse = Shapes::StructureShape.new(name: 'UpdateServiceNetworkResponse')
    UpdateServiceNetworkVpcAssociationRequest = Shapes::StructureShape.new(name: 'UpdateServiceNetworkVpcAssociationRequest')
    UpdateServiceNetworkVpcAssociationRequestSecurityGroupIdsList = Shapes::ListShape.new(name: 'UpdateServiceNetworkVpcAssociationRequestSecurityGroupIdsList')
    UpdateServiceNetworkVpcAssociationResponse = Shapes::StructureShape.new(name: 'UpdateServiceNetworkVpcAssociationResponse')
    UpdateServiceRequest = Shapes::StructureShape.new(name: 'UpdateServiceRequest')
    UpdateServiceResponse = Shapes::StructureShape.new(name: 'UpdateServiceResponse')
    UpdateTargetGroupRequest = Shapes::StructureShape.new(name: 'UpdateTargetGroupRequest')
    UpdateTargetGroupResponse = Shapes::StructureShape.new(name: 'UpdateTargetGroupResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    WeightedTargetGroup = Shapes::StructureShape.new(name: 'WeightedTargetGroup')
    WeightedTargetGroupList = Shapes::ListShape.new(name: 'WeightedTargetGroupList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessLogSubscriptionList.member = Shapes::ShapeRef.new(shape: AccessLogSubscriptionSummary)

    AccessLogSubscriptionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AccessLogSubscriptionArn, required: true, location_name: "arn"))
    AccessLogSubscriptionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AccessLogSubscriptionSummary.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AccessLogDestinationArn, required: true, location_name: "destinationArn"))
    AccessLogSubscriptionSummary.add_member(:id, Shapes::ShapeRef.new(shape: AccessLogSubscriptionId, required: true, location_name: "id"))
    AccessLogSubscriptionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    AccessLogSubscriptionSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    AccessLogSubscriptionSummary.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    AccessLogSubscriptionSummary.struct_class = Types::AccessLogSubscriptionSummary

    BatchUpdateRuleRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    BatchUpdateRuleRequest.add_member(:rules, Shapes::ShapeRef.new(shape: RuleUpdateList, required: true, location_name: "rules"))
    BatchUpdateRuleRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    BatchUpdateRuleRequest.struct_class = Types::BatchUpdateRuleRequest

    BatchUpdateRuleResponse.add_member(:successful, Shapes::ShapeRef.new(shape: RuleUpdateSuccessList, location_name: "successful"))
    BatchUpdateRuleResponse.add_member(:unsuccessful, Shapes::ShapeRef.new(shape: RuleUpdateFailureList, location_name: "unsuccessful"))
    BatchUpdateRuleResponse.struct_class = Types::BatchUpdateRuleResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccessLogSubscriptionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAccessLogSubscriptionRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AccessLogDestinationArn, required: true, location_name: "destinationArn"))
    CreateAccessLogSubscriptionRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "resourceIdentifier"))
    CreateAccessLogSubscriptionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAccessLogSubscriptionRequest.struct_class = Types::CreateAccessLogSubscriptionRequest

    CreateAccessLogSubscriptionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AccessLogSubscriptionArn, required: true, location_name: "arn"))
    CreateAccessLogSubscriptionResponse.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AccessLogDestinationArn, required: true, location_name: "destinationArn"))
    CreateAccessLogSubscriptionResponse.add_member(:id, Shapes::ShapeRef.new(shape: AccessLogSubscriptionId, required: true, location_name: "id"))
    CreateAccessLogSubscriptionResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    CreateAccessLogSubscriptionResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    CreateAccessLogSubscriptionResponse.struct_class = Types::CreateAccessLogSubscriptionResponse

    CreateListenerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateListenerRequest.add_member(:default_action, Shapes::ShapeRef.new(shape: RuleAction, required: true, location_name: "defaultAction"))
    CreateListenerRequest.add_member(:name, Shapes::ShapeRef.new(shape: ListenerName, required: true, location_name: "name"))
    CreateListenerRequest.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    CreateListenerRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: ListenerProtocol, required: true, location_name: "protocol"))
    CreateListenerRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    CreateListenerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateListenerRequest.struct_class = Types::CreateListenerRequest

    CreateListenerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ListenerArn, location_name: "arn"))
    CreateListenerResponse.add_member(:default_action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "defaultAction"))
    CreateListenerResponse.add_member(:id, Shapes::ShapeRef.new(shape: ListenerId, location_name: "id"))
    CreateListenerResponse.add_member(:name, Shapes::ShapeRef.new(shape: ListenerName, location_name: "name"))
    CreateListenerResponse.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    CreateListenerResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: "protocol"))
    CreateListenerResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "serviceArn"))
    CreateListenerResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "serviceId"))
    CreateListenerResponse.struct_class = Types::CreateListenerResponse

    CreateRuleRequest.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, required: true, location_name: "action"))
    CreateRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateRuleRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    CreateRuleRequest.add_member(:match, Shapes::ShapeRef.new(shape: RuleMatch, required: true, location_name: "match"))
    CreateRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "name"))
    CreateRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, required: true, location_name: "priority"))
    CreateRuleRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    CreateRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRuleRequest.struct_class = Types::CreateRuleRequest

    CreateRuleResponse.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "action"))
    CreateRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "arn"))
    CreateRuleResponse.add_member(:id, Shapes::ShapeRef.new(shape: RuleId, location_name: "id"))
    CreateRuleResponse.add_member(:match, Shapes::ShapeRef.new(shape: RuleMatch, location_name: "match"))
    CreateRuleResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    CreateRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "priority"))
    CreateRuleResponse.struct_class = Types::CreateRuleResponse

    CreateServiceNetworkRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    CreateServiceNetworkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateServiceNetworkRequest.add_member(:name, Shapes::ShapeRef.new(shape: ServiceNetworkName, required: true, location_name: "name"))
    CreateServiceNetworkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateServiceNetworkRequest.struct_class = Types::CreateServiceNetworkRequest

    CreateServiceNetworkResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: "arn"))
    CreateServiceNetworkResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    CreateServiceNetworkResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: "id"))
    CreateServiceNetworkResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: "name"))
    CreateServiceNetworkResponse.struct_class = Types::CreateServiceNetworkResponse

    CreateServiceNetworkServiceAssociationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateServiceNetworkServiceAssociationRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location_name: "serviceIdentifier"))
    CreateServiceNetworkServiceAssociationRequest.add_member(:service_network_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, required: true, location_name: "serviceNetworkIdentifier"))
    CreateServiceNetworkServiceAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateServiceNetworkServiceAssociationRequest.struct_class = Types::CreateServiceNetworkServiceAssociationRequest

    CreateServiceNetworkServiceAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationArn, location_name: "arn"))
    CreateServiceNetworkServiceAssociationResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy"))
    CreateServiceNetworkServiceAssociationResponse.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: "customDomainName"))
    CreateServiceNetworkServiceAssociationResponse.add_member(:dns_entry, Shapes::ShapeRef.new(shape: DnsEntry, location_name: "dnsEntry"))
    CreateServiceNetworkServiceAssociationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: "id"))
    CreateServiceNetworkServiceAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationStatus, location_name: "status"))
    CreateServiceNetworkServiceAssociationResponse.struct_class = Types::CreateServiceNetworkServiceAssociationResponse

    CreateServiceNetworkVpcAssociationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateServiceNetworkVpcAssociationRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: CreateServiceNetworkVpcAssociationRequestSecurityGroupIdsList, location_name: "securityGroupIds"))
    CreateServiceNetworkVpcAssociationRequest.add_member(:service_network_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, required: true, location_name: "serviceNetworkIdentifier"))
    CreateServiceNetworkVpcAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateServiceNetworkVpcAssociationRequest.add_member(:vpc_identifier, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcIdentifier"))
    CreateServiceNetworkVpcAssociationRequest.struct_class = Types::CreateServiceNetworkVpcAssociationRequest

    CreateServiceNetworkVpcAssociationRequestSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    CreateServiceNetworkVpcAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: "arn"))
    CreateServiceNetworkVpcAssociationResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy"))
    CreateServiceNetworkVpcAssociationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: "id"))
    CreateServiceNetworkVpcAssociationResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: "securityGroupIds"))
    CreateServiceNetworkVpcAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: "status"))
    CreateServiceNetworkVpcAssociationResponse.struct_class = Types::CreateServiceNetworkVpcAssociationResponse

    CreateServiceRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    CreateServiceRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CreateServiceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateServiceRequest.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: "customDomainName"))
    CreateServiceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "name"))
    CreateServiceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateServiceRequest.struct_class = Types::CreateServiceRequest

    CreateServiceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "arn"))
    CreateServiceResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    CreateServiceResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CreateServiceResponse.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: "customDomainName"))
    CreateServiceResponse.add_member(:dns_entry, Shapes::ShapeRef.new(shape: DnsEntry, location_name: "dnsEntry"))
    CreateServiceResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "id"))
    CreateServiceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "name"))
    CreateServiceResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceStatus, location_name: "status"))
    CreateServiceResponse.struct_class = Types::CreateServiceResponse

    CreateTargetGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateTargetGroupRequest.add_member(:config, Shapes::ShapeRef.new(shape: TargetGroupConfig, location_name: "config"))
    CreateTargetGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, required: true, location_name: "name"))
    CreateTargetGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTargetGroupRequest.add_member(:type, Shapes::ShapeRef.new(shape: TargetGroupType, required: true, location_name: "type"))
    CreateTargetGroupRequest.struct_class = Types::CreateTargetGroupRequest

    CreateTargetGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "arn"))
    CreateTargetGroupResponse.add_member(:config, Shapes::ShapeRef.new(shape: TargetGroupConfig, location_name: "config"))
    CreateTargetGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: TargetGroupId, location_name: "id"))
    CreateTargetGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, location_name: "name"))
    CreateTargetGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: "status"))
    CreateTargetGroupResponse.add_member(:type, Shapes::ShapeRef.new(shape: TargetGroupType, location_name: "type"))
    CreateTargetGroupResponse.struct_class = Types::CreateTargetGroupResponse

    DeleteAccessLogSubscriptionRequest.add_member(:access_log_subscription_identifier, Shapes::ShapeRef.new(shape: AccessLogSubscriptionIdentifier, required: true, location: "uri", location_name: "accessLogSubscriptionIdentifier"))
    DeleteAccessLogSubscriptionRequest.struct_class = Types::DeleteAccessLogSubscriptionRequest

    DeleteAccessLogSubscriptionResponse.struct_class = Types::DeleteAccessLogSubscriptionResponse

    DeleteAuthPolicyRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "resourceIdentifier"))
    DeleteAuthPolicyRequest.struct_class = Types::DeleteAuthPolicyRequest

    DeleteAuthPolicyResponse.struct_class = Types::DeleteAuthPolicyResponse

    DeleteListenerRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    DeleteListenerRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    DeleteListenerRequest.struct_class = Types::DeleteListenerRequest

    DeleteListenerResponse.struct_class = Types::DeleteListenerResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteRuleRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    DeleteRuleRequest.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "ruleIdentifier"))
    DeleteRuleRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DeleteRuleResponse.struct_class = Types::DeleteRuleResponse

    DeleteServiceNetworkRequest.add_member(:service_network_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, required: true, location: "uri", location_name: "serviceNetworkIdentifier"))
    DeleteServiceNetworkRequest.struct_class = Types::DeleteServiceNetworkRequest

    DeleteServiceNetworkResponse.struct_class = Types::DeleteServiceNetworkResponse

    DeleteServiceNetworkServiceAssociationRequest.add_member(:service_network_service_association_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, required: true, location: "uri", location_name: "serviceNetworkServiceAssociationIdentifier"))
    DeleteServiceNetworkServiceAssociationRequest.struct_class = Types::DeleteServiceNetworkServiceAssociationRequest

    DeleteServiceNetworkServiceAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationArn, location_name: "arn"))
    DeleteServiceNetworkServiceAssociationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: "id"))
    DeleteServiceNetworkServiceAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationStatus, location_name: "status"))
    DeleteServiceNetworkServiceAssociationResponse.struct_class = Types::DeleteServiceNetworkServiceAssociationResponse

    DeleteServiceNetworkVpcAssociationRequest.add_member(:service_network_vpc_association_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationIdentifier, required: true, location: "uri", location_name: "serviceNetworkVpcAssociationIdentifier"))
    DeleteServiceNetworkVpcAssociationRequest.struct_class = Types::DeleteServiceNetworkVpcAssociationRequest

    DeleteServiceNetworkVpcAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: "arn"))
    DeleteServiceNetworkVpcAssociationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: "id"))
    DeleteServiceNetworkVpcAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: "status"))
    DeleteServiceNetworkVpcAssociationResponse.struct_class = Types::DeleteServiceNetworkVpcAssociationResponse

    DeleteServiceRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    DeleteServiceRequest.struct_class = Types::DeleteServiceRequest

    DeleteServiceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "arn"))
    DeleteServiceResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "id"))
    DeleteServiceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "name"))
    DeleteServiceResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceStatus, location_name: "status"))
    DeleteServiceResponse.struct_class = Types::DeleteServiceResponse

    DeleteTargetGroupRequest.add_member(:target_group_identifier, Shapes::ShapeRef.new(shape: TargetGroupIdentifier, required: true, location: "uri", location_name: "targetGroupIdentifier"))
    DeleteTargetGroupRequest.struct_class = Types::DeleteTargetGroupRequest

    DeleteTargetGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "arn"))
    DeleteTargetGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: TargetGroupId, location_name: "id"))
    DeleteTargetGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: "status"))
    DeleteTargetGroupResponse.struct_class = Types::DeleteTargetGroupResponse

    DeregisterTargetsRequest.add_member(:target_group_identifier, Shapes::ShapeRef.new(shape: TargetGroupIdentifier, required: true, location: "uri", location_name: "targetGroupIdentifier"))
    DeregisterTargetsRequest.add_member(:targets, Shapes::ShapeRef.new(shape: DeregisterTargetsRequestTargetsList, required: true, location_name: "targets"))
    DeregisterTargetsRequest.struct_class = Types::DeregisterTargetsRequest

    DeregisterTargetsRequestTargetsList.member = Shapes::ShapeRef.new(shape: Target)

    DeregisterTargetsResponse.add_member(:successful, Shapes::ShapeRef.new(shape: TargetList, location_name: "successful"))
    DeregisterTargetsResponse.add_member(:unsuccessful, Shapes::ShapeRef.new(shape: TargetFailureList, location_name: "unsuccessful"))
    DeregisterTargetsResponse.struct_class = Types::DeregisterTargetsResponse

    DnsEntry.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, location_name: "domainName"))
    DnsEntry.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "hostedZoneId"))
    DnsEntry.struct_class = Types::DnsEntry

    FixedResponseAction.add_member(:status_code, Shapes::ShapeRef.new(shape: HttpStatusCode, required: true, location_name: "statusCode"))
    FixedResponseAction.struct_class = Types::FixedResponseAction

    ForwardAction.add_member(:target_groups, Shapes::ShapeRef.new(shape: WeightedTargetGroupList, required: true, location_name: "targetGroups"))
    ForwardAction.struct_class = Types::ForwardAction

    GetAccessLogSubscriptionRequest.add_member(:access_log_subscription_identifier, Shapes::ShapeRef.new(shape: AccessLogSubscriptionIdentifier, required: true, location: "uri", location_name: "accessLogSubscriptionIdentifier"))
    GetAccessLogSubscriptionRequest.struct_class = Types::GetAccessLogSubscriptionRequest

    GetAccessLogSubscriptionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AccessLogSubscriptionArn, required: true, location_name: "arn"))
    GetAccessLogSubscriptionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetAccessLogSubscriptionResponse.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AccessLogDestinationArn, required: true, location_name: "destinationArn"))
    GetAccessLogSubscriptionResponse.add_member(:id, Shapes::ShapeRef.new(shape: AccessLogSubscriptionId, required: true, location_name: "id"))
    GetAccessLogSubscriptionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    GetAccessLogSubscriptionResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    GetAccessLogSubscriptionResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    GetAccessLogSubscriptionResponse.struct_class = Types::GetAccessLogSubscriptionResponse

    GetAuthPolicyRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "resourceIdentifier"))
    GetAuthPolicyRequest.struct_class = Types::GetAuthPolicyRequest

    GetAuthPolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetAuthPolicyResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetAuthPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: AuthPolicyString, location_name: "policy"))
    GetAuthPolicyResponse.add_member(:state, Shapes::ShapeRef.new(shape: AuthPolicyState, location_name: "state"))
    GetAuthPolicyResponse.struct_class = Types::GetAuthPolicyResponse

    GetListenerRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    GetListenerRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    GetListenerRequest.struct_class = Types::GetListenerRequest

    GetListenerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ListenerArn, location_name: "arn"))
    GetListenerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetListenerResponse.add_member(:default_action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "defaultAction"))
    GetListenerResponse.add_member(:id, Shapes::ShapeRef.new(shape: ListenerId, location_name: "id"))
    GetListenerResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetListenerResponse.add_member(:name, Shapes::ShapeRef.new(shape: ListenerName, location_name: "name"))
    GetListenerResponse.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    GetListenerResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: "protocol"))
    GetListenerResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "serviceArn"))
    GetListenerResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "serviceId"))
    GetListenerResponse.struct_class = Types::GetListenerResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, location_name: "policy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetRuleRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    GetRuleRequest.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "ruleIdentifier"))
    GetRuleRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    GetRuleRequest.struct_class = Types::GetRuleRequest

    GetRuleResponse.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "action"))
    GetRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "arn"))
    GetRuleResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetRuleResponse.add_member(:id, Shapes::ShapeRef.new(shape: RuleId, location_name: "id"))
    GetRuleResponse.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDefault"))
    GetRuleResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetRuleResponse.add_member(:match, Shapes::ShapeRef.new(shape: RuleMatch, location_name: "match"))
    GetRuleResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    GetRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "priority"))
    GetRuleResponse.struct_class = Types::GetRuleResponse

    GetServiceNetworkRequest.add_member(:service_network_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, required: true, location: "uri", location_name: "serviceNetworkIdentifier"))
    GetServiceNetworkRequest.struct_class = Types::GetServiceNetworkRequest

    GetServiceNetworkResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: "arn"))
    GetServiceNetworkResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    GetServiceNetworkResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetServiceNetworkResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: "id"))
    GetServiceNetworkResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetServiceNetworkResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: "name"))
    GetServiceNetworkResponse.add_member(:number_of_associated_services, Shapes::ShapeRef.new(shape: Long, location_name: "numberOfAssociatedServices"))
    GetServiceNetworkResponse.add_member(:number_of_associated_vp_cs, Shapes::ShapeRef.new(shape: Long, location_name: "numberOfAssociatedVPCs"))
    GetServiceNetworkResponse.struct_class = Types::GetServiceNetworkResponse

    GetServiceNetworkServiceAssociationRequest.add_member(:service_network_service_association_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, required: true, location: "uri", location_name: "serviceNetworkServiceAssociationIdentifier"))
    GetServiceNetworkServiceAssociationRequest.struct_class = Types::GetServiceNetworkServiceAssociationRequest

    GetServiceNetworkServiceAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationArn, location_name: "arn"))
    GetServiceNetworkServiceAssociationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetServiceNetworkServiceAssociationResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy"))
    GetServiceNetworkServiceAssociationResponse.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: "customDomainName"))
    GetServiceNetworkServiceAssociationResponse.add_member(:dns_entry, Shapes::ShapeRef.new(shape: DnsEntry, location_name: "dnsEntry"))
    GetServiceNetworkServiceAssociationResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: String, location_name: "failureCode"))
    GetServiceNetworkServiceAssociationResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    GetServiceNetworkServiceAssociationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: "id"))
    GetServiceNetworkServiceAssociationResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "serviceArn"))
    GetServiceNetworkServiceAssociationResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "serviceId"))
    GetServiceNetworkServiceAssociationResponse.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "serviceName"))
    GetServiceNetworkServiceAssociationResponse.add_member(:service_network_arn, Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: "serviceNetworkArn"))
    GetServiceNetworkServiceAssociationResponse.add_member(:service_network_id, Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: "serviceNetworkId"))
    GetServiceNetworkServiceAssociationResponse.add_member(:service_network_name, Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: "serviceNetworkName"))
    GetServiceNetworkServiceAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationStatus, location_name: "status"))
    GetServiceNetworkServiceAssociationResponse.struct_class = Types::GetServiceNetworkServiceAssociationResponse

    GetServiceNetworkVpcAssociationRequest.add_member(:service_network_vpc_association_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationIdentifier, required: true, location: "uri", location_name: "serviceNetworkVpcAssociationIdentifier"))
    GetServiceNetworkVpcAssociationRequest.struct_class = Types::GetServiceNetworkVpcAssociationRequest

    GetServiceNetworkVpcAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: "arn"))
    GetServiceNetworkVpcAssociationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetServiceNetworkVpcAssociationResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy"))
    GetServiceNetworkVpcAssociationResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: String, location_name: "failureCode"))
    GetServiceNetworkVpcAssociationResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    GetServiceNetworkVpcAssociationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: "id"))
    GetServiceNetworkVpcAssociationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetServiceNetworkVpcAssociationResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: "securityGroupIds"))
    GetServiceNetworkVpcAssociationResponse.add_member(:service_network_arn, Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: "serviceNetworkArn"))
    GetServiceNetworkVpcAssociationResponse.add_member(:service_network_id, Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: "serviceNetworkId"))
    GetServiceNetworkVpcAssociationResponse.add_member(:service_network_name, Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: "serviceNetworkName"))
    GetServiceNetworkVpcAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: "status"))
    GetServiceNetworkVpcAssociationResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    GetServiceNetworkVpcAssociationResponse.struct_class = Types::GetServiceNetworkVpcAssociationResponse

    GetServiceRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    GetServiceRequest.struct_class = Types::GetServiceRequest

    GetServiceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "arn"))
    GetServiceResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    GetServiceResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    GetServiceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetServiceResponse.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: "customDomainName"))
    GetServiceResponse.add_member(:dns_entry, Shapes::ShapeRef.new(shape: DnsEntry, location_name: "dnsEntry"))
    GetServiceResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "failureCode"))
    GetServiceResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: FailureMessage, location_name: "failureMessage"))
    GetServiceResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "id"))
    GetServiceResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetServiceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "name"))
    GetServiceResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceStatus, location_name: "status"))
    GetServiceResponse.struct_class = Types::GetServiceResponse

    GetTargetGroupRequest.add_member(:target_group_identifier, Shapes::ShapeRef.new(shape: TargetGroupIdentifier, required: true, location: "uri", location_name: "targetGroupIdentifier"))
    GetTargetGroupRequest.struct_class = Types::GetTargetGroupRequest

    GetTargetGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "arn"))
    GetTargetGroupResponse.add_member(:config, Shapes::ShapeRef.new(shape: TargetGroupConfig, location_name: "config"))
    GetTargetGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetTargetGroupResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: String, location_name: "failureCode"))
    GetTargetGroupResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    GetTargetGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: TargetGroupId, location_name: "id"))
    GetTargetGroupResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetTargetGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, location_name: "name"))
    GetTargetGroupResponse.add_member(:service_arns, Shapes::ShapeRef.new(shape: ServiceArnList, location_name: "serviceArns"))
    GetTargetGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: "status"))
    GetTargetGroupResponse.add_member(:type, Shapes::ShapeRef.new(shape: TargetGroupType, location_name: "type"))
    GetTargetGroupResponse.struct_class = Types::GetTargetGroupResponse

    HeaderMatch.add_member(:case_sensitive, Shapes::ShapeRef.new(shape: Boolean, location_name: "caseSensitive"))
    HeaderMatch.add_member(:match, Shapes::ShapeRef.new(shape: HeaderMatchType, required: true, location_name: "match"))
    HeaderMatch.add_member(:name, Shapes::ShapeRef.new(shape: HeaderMatchName, required: true, location_name: "name"))
    HeaderMatch.struct_class = Types::HeaderMatch

    HeaderMatchList.member = Shapes::ShapeRef.new(shape: HeaderMatch)

    HeaderMatchType.add_member(:contains, Shapes::ShapeRef.new(shape: HeaderMatchContains, location_name: "contains"))
    HeaderMatchType.add_member(:exact, Shapes::ShapeRef.new(shape: HeaderMatchExact, location_name: "exact"))
    HeaderMatchType.add_member(:prefix, Shapes::ShapeRef.new(shape: HeaderMatchPrefix, location_name: "prefix"))
    HeaderMatchType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HeaderMatchType.add_member_subclass(:contains, Types::HeaderMatchType::Contains)
    HeaderMatchType.add_member_subclass(:exact, Types::HeaderMatchType::Exact)
    HeaderMatchType.add_member_subclass(:prefix, Types::HeaderMatchType::Prefix)
    HeaderMatchType.add_member_subclass(:unknown, Types::HeaderMatchType::Unknown)
    HeaderMatchType.struct_class = Types::HeaderMatchType

    HealthCheckConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    HealthCheckConfig.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "healthCheckIntervalSeconds"))
    HealthCheckConfig.add_member(:health_check_timeout_seconds, Shapes::ShapeRef.new(shape: HealthCheckTimeoutSeconds, location_name: "healthCheckTimeoutSeconds"))
    HealthCheckConfig.add_member(:healthy_threshold_count, Shapes::ShapeRef.new(shape: HealthyThresholdCount, location_name: "healthyThresholdCount"))
    HealthCheckConfig.add_member(:matcher, Shapes::ShapeRef.new(shape: Matcher, location_name: "matcher"))
    HealthCheckConfig.add_member(:path, Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: "path"))
    HealthCheckConfig.add_member(:port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "port"))
    HealthCheckConfig.add_member(:protocol, Shapes::ShapeRef.new(shape: TargetGroupProtocol, location_name: "protocol"))
    HealthCheckConfig.add_member(:protocol_version, Shapes::ShapeRef.new(shape: HealthCheckProtocolVersion, location_name: "protocolVersion"))
    HealthCheckConfig.add_member(:unhealthy_threshold_count, Shapes::ShapeRef.new(shape: UnhealthyThresholdCount, location_name: "unhealthyThresholdCount"))
    HealthCheckConfig.struct_class = Types::HealthCheckConfig

    HttpMatch.add_member(:header_matches, Shapes::ShapeRef.new(shape: HeaderMatchList, location_name: "headerMatches"))
    HttpMatch.add_member(:method, Shapes::ShapeRef.new(shape: HttpMethod, location_name: "method"))
    HttpMatch.add_member(:path_match, Shapes::ShapeRef.new(shape: PathMatch, location_name: "pathMatch"))
    HttpMatch.struct_class = Types::HttpMatch

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAccessLogSubscriptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAccessLogSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAccessLogSubscriptionsRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "querystring", location_name: "resourceIdentifier"))
    ListAccessLogSubscriptionsRequest.struct_class = Types::ListAccessLogSubscriptionsRequest

    ListAccessLogSubscriptionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: AccessLogSubscriptionList, required: true, location_name: "items"))
    ListAccessLogSubscriptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccessLogSubscriptionsResponse.struct_class = Types::ListAccessLogSubscriptionsResponse

    ListListenersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListListenersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListListenersRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    ListListenersRequest.struct_class = Types::ListListenersRequest

    ListListenersResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListenerSummaryList, required: true, location_name: "items"))
    ListListenersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListListenersResponse.struct_class = Types::ListListenersResponse

    ListRulesRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    ListRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRulesRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    ListRulesRequest.struct_class = Types::ListRulesRequest

    ListRulesResponse.add_member(:items, Shapes::ShapeRef.new(shape: RuleSummaryList, required: true, location_name: "items"))
    ListRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRulesResponse.struct_class = Types::ListRulesResponse

    ListServiceNetworkServiceAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServiceNetworkServiceAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServiceNetworkServiceAssociationsRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, location: "querystring", location_name: "serviceIdentifier"))
    ListServiceNetworkServiceAssociationsRequest.add_member(:service_network_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location: "querystring", location_name: "serviceNetworkIdentifier"))
    ListServiceNetworkServiceAssociationsRequest.struct_class = Types::ListServiceNetworkServiceAssociationsRequest

    ListServiceNetworkServiceAssociationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationList, required: true, location_name: "items"))
    ListServiceNetworkServiceAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceNetworkServiceAssociationsResponse.struct_class = Types::ListServiceNetworkServiceAssociationsResponse

    ListServiceNetworkVpcAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServiceNetworkVpcAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServiceNetworkVpcAssociationsRequest.add_member(:service_network_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, location: "querystring", location_name: "serviceNetworkIdentifier"))
    ListServiceNetworkVpcAssociationsRequest.add_member(:vpc_identifier, Shapes::ShapeRef.new(shape: VpcId, location: "querystring", location_name: "vpcIdentifier"))
    ListServiceNetworkVpcAssociationsRequest.struct_class = Types::ListServiceNetworkVpcAssociationsRequest

    ListServiceNetworkVpcAssociationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationList, required: true, location_name: "items"))
    ListServiceNetworkVpcAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceNetworkVpcAssociationsResponse.struct_class = Types::ListServiceNetworkVpcAssociationsResponse

    ListServiceNetworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServiceNetworksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServiceNetworksRequest.struct_class = Types::ListServiceNetworksRequest

    ListServiceNetworksResponse.add_member(:items, Shapes::ShapeRef.new(shape: ServiceNetworkList, required: true, location_name: "items"))
    ListServiceNetworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceNetworksResponse.struct_class = Types::ListServiceNetworksResponse

    ListServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServicesRequest.struct_class = Types::ListServicesRequest

    ListServicesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ServiceList, location_name: "items"))
    ListServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServicesResponse.struct_class = Types::ListServicesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTargetGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTargetGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTargetGroupsRequest.add_member(:target_group_type, Shapes::ShapeRef.new(shape: TargetGroupType, location: "querystring", location_name: "targetGroupType"))
    ListTargetGroupsRequest.add_member(:vpc_identifier, Shapes::ShapeRef.new(shape: VpcId, location: "querystring", location_name: "vpcIdentifier"))
    ListTargetGroupsRequest.struct_class = Types::ListTargetGroupsRequest

    ListTargetGroupsResponse.add_member(:items, Shapes::ShapeRef.new(shape: TargetGroupList, location_name: "items"))
    ListTargetGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTargetGroupsResponse.struct_class = Types::ListTargetGroupsResponse

    ListTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTargetsRequest.add_member(:target_group_identifier, Shapes::ShapeRef.new(shape: TargetGroupIdentifier, required: true, location: "uri", location_name: "targetGroupIdentifier"))
    ListTargetsRequest.add_member(:targets, Shapes::ShapeRef.new(shape: ListTargetsRequestTargetsList, location_name: "targets"))
    ListTargetsRequest.struct_class = Types::ListTargetsRequest

    ListTargetsRequestTargetsList.member = Shapes::ShapeRef.new(shape: Target)

    ListTargetsResponse.add_member(:items, Shapes::ShapeRef.new(shape: TargetSummaryList, required: true, location_name: "items"))
    ListTargetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTargetsResponse.struct_class = Types::ListTargetsResponse

    ListenerSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ListenerArn, location_name: "arn"))
    ListenerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ListenerSummary.add_member(:id, Shapes::ShapeRef.new(shape: ListenerId, location_name: "id"))
    ListenerSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    ListenerSummary.add_member(:name, Shapes::ShapeRef.new(shape: ListenerName, location_name: "name"))
    ListenerSummary.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    ListenerSummary.add_member(:protocol, Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: "protocol"))
    ListenerSummary.struct_class = Types::ListenerSummary

    ListenerSummaryList.member = Shapes::ShapeRef.new(shape: ListenerSummary)

    Matcher.add_member(:http_code, Shapes::ShapeRef.new(shape: HttpCodeMatcher, location_name: "httpCode"))
    Matcher.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Matcher.add_member_subclass(:http_code, Types::Matcher::HttpCode)
    Matcher.add_member_subclass(:unknown, Types::Matcher::Unknown)
    Matcher.struct_class = Types::Matcher

    PathMatch.add_member(:case_sensitive, Shapes::ShapeRef.new(shape: Boolean, location_name: "caseSensitive"))
    PathMatch.add_member(:match, Shapes::ShapeRef.new(shape: PathMatchType, required: true, location_name: "match"))
    PathMatch.struct_class = Types::PathMatch

    PathMatchType.add_member(:exact, Shapes::ShapeRef.new(shape: PathMatchExact, location_name: "exact"))
    PathMatchType.add_member(:prefix, Shapes::ShapeRef.new(shape: PathMatchPrefix, location_name: "prefix"))
    PathMatchType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PathMatchType.add_member_subclass(:exact, Types::PathMatchType::Exact)
    PathMatchType.add_member_subclass(:prefix, Types::PathMatchType::Prefix)
    PathMatchType.add_member_subclass(:unknown, Types::PathMatchType::Unknown)
    PathMatchType.struct_class = Types::PathMatchType

    PutAuthPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: AuthPolicyString, required: true, location_name: "policy"))
    PutAuthPolicyRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "resourceIdentifier"))
    PutAuthPolicyRequest.struct_class = Types::PutAuthPolicyRequest

    PutAuthPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: AuthPolicyString, location_name: "policy"))
    PutAuthPolicyResponse.add_member(:state, Shapes::ShapeRef.new(shape: AuthPolicyState, location_name: "state"))
    PutAuthPolicyResponse.struct_class = Types::PutAuthPolicyResponse

    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyString, required: true, location_name: "policy"))
    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RegisterTargetsRequest.add_member(:target_group_identifier, Shapes::ShapeRef.new(shape: TargetGroupIdentifier, required: true, location: "uri", location_name: "targetGroupIdentifier"))
    RegisterTargetsRequest.add_member(:targets, Shapes::ShapeRef.new(shape: RegisterTargetsRequestTargetsList, required: true, location_name: "targets"))
    RegisterTargetsRequest.struct_class = Types::RegisterTargetsRequest

    RegisterTargetsRequestTargetsList.member = Shapes::ShapeRef.new(shape: Target)

    RegisterTargetsResponse.add_member(:successful, Shapes::ShapeRef.new(shape: TargetList, location_name: "successful"))
    RegisterTargetsResponse.add_member(:unsuccessful, Shapes::ShapeRef.new(shape: TargetFailureList, location_name: "unsuccessful"))
    RegisterTargetsResponse.struct_class = Types::RegisterTargetsResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuleAction.add_member(:fixed_response, Shapes::ShapeRef.new(shape: FixedResponseAction, location_name: "fixedResponse"))
    RuleAction.add_member(:forward, Shapes::ShapeRef.new(shape: ForwardAction, location_name: "forward"))
    RuleAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleAction.add_member_subclass(:fixed_response, Types::RuleAction::FixedResponse)
    RuleAction.add_member_subclass(:forward, Types::RuleAction::Forward)
    RuleAction.add_member_subclass(:unknown, Types::RuleAction::Unknown)
    RuleAction.struct_class = Types::RuleAction

    RuleMatch.add_member(:http_match, Shapes::ShapeRef.new(shape: HttpMatch, location_name: "httpMatch"))
    RuleMatch.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleMatch.add_member_subclass(:http_match, Types::RuleMatch::HttpMatch)
    RuleMatch.add_member_subclass(:unknown, Types::RuleMatch::Unknown)
    RuleMatch.struct_class = Types::RuleMatch

    RuleSummary.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "arn"))
    RuleSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    RuleSummary.add_member(:id, Shapes::ShapeRef.new(shape: RuleId, location_name: "id"))
    RuleSummary.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDefault"))
    RuleSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    RuleSummary.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    RuleSummary.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "priority"))
    RuleSummary.struct_class = Types::RuleSummary

    RuleSummaryList.member = Shapes::ShapeRef.new(shape: RuleSummary)

    RuleUpdate.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "action"))
    RuleUpdate.add_member(:match, Shapes::ShapeRef.new(shape: RuleMatch, location_name: "match"))
    RuleUpdate.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "priority"))
    RuleUpdate.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "ruleIdentifier"))
    RuleUpdate.struct_class = Types::RuleUpdate

    RuleUpdateFailure.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "failureCode"))
    RuleUpdateFailure.add_member(:failure_message, Shapes::ShapeRef.new(shape: FailureMessage, location_name: "failureMessage"))
    RuleUpdateFailure.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: "ruleIdentifier"))
    RuleUpdateFailure.struct_class = Types::RuleUpdateFailure

    RuleUpdateFailureList.member = Shapes::ShapeRef.new(shape: RuleUpdateFailure)

    RuleUpdateList.member = Shapes::ShapeRef.new(shape: RuleUpdate)

    RuleUpdateSuccess.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "action"))
    RuleUpdateSuccess.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "arn"))
    RuleUpdateSuccess.add_member(:id, Shapes::ShapeRef.new(shape: RuleId, location_name: "id"))
    RuleUpdateSuccess.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDefault"))
    RuleUpdateSuccess.add_member(:match, Shapes::ShapeRef.new(shape: RuleMatch, location_name: "match"))
    RuleUpdateSuccess.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    RuleUpdateSuccess.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "priority"))
    RuleUpdateSuccess.struct_class = Types::RuleUpdateSuccess

    RuleUpdateSuccessList.member = Shapes::ShapeRef.new(shape: RuleUpdateSuccess)

    SecurityGroupList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceArnList.member = Shapes::ShapeRef.new(shape: ServiceArn)

    ServiceList.member = Shapes::ShapeRef.new(shape: ServiceSummary)

    ServiceNetworkList.member = Shapes::ShapeRef.new(shape: ServiceNetworkSummary)

    ServiceNetworkServiceAssociationList.member = Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationSummary)

    ServiceNetworkServiceAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationArn, location_name: "arn"))
    ServiceNetworkServiceAssociationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceNetworkServiceAssociationSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy"))
    ServiceNetworkServiceAssociationSummary.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: "customDomainName"))
    ServiceNetworkServiceAssociationSummary.add_member(:dns_entry, Shapes::ShapeRef.new(shape: DnsEntry, location_name: "dnsEntry"))
    ServiceNetworkServiceAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationIdentifier, location_name: "id"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "serviceArn"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "serviceId"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "serviceName"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_arn, Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: "serviceNetworkArn"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_id, Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: "serviceNetworkId"))
    ServiceNetworkServiceAssociationSummary.add_member(:service_network_name, Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: "serviceNetworkName"))
    ServiceNetworkServiceAssociationSummary.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkServiceAssociationStatus, location_name: "status"))
    ServiceNetworkServiceAssociationSummary.struct_class = Types::ServiceNetworkServiceAssociationSummary

    ServiceNetworkSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: "arn"))
    ServiceNetworkSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceNetworkSummary.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: "id"))
    ServiceNetworkSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    ServiceNetworkSummary.add_member(:name, Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: "name"))
    ServiceNetworkSummary.add_member(:number_of_associated_services, Shapes::ShapeRef.new(shape: Long, location_name: "numberOfAssociatedServices"))
    ServiceNetworkSummary.add_member(:number_of_associated_vp_cs, Shapes::ShapeRef.new(shape: Long, location_name: "numberOfAssociatedVPCs"))
    ServiceNetworkSummary.struct_class = Types::ServiceNetworkSummary

    ServiceNetworkVpcAssociationList.member = Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationSummary)

    ServiceNetworkVpcAssociationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: "arn"))
    ServiceNetworkVpcAssociationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceNetworkVpcAssociationSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy"))
    ServiceNetworkVpcAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: "id"))
    ServiceNetworkVpcAssociationSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_arn, Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: "serviceNetworkArn"))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_id, Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: "serviceNetworkId"))
    ServiceNetworkVpcAssociationSummary.add_member(:service_network_name, Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: "serviceNetworkName"))
    ServiceNetworkVpcAssociationSummary.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: "status"))
    ServiceNetworkVpcAssociationSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    ServiceNetworkVpcAssociationSummary.struct_class = Types::ServiceNetworkVpcAssociationSummary

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "arn"))
    ServiceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceSummary.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: "customDomainName"))
    ServiceSummary.add_member(:dns_entry, Shapes::ShapeRef.new(shape: DnsEntry, location_name: "dnsEntry"))
    ServiceSummary.add_member(:id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "id"))
    ServiceSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    ServiceSummary.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "name"))
    ServiceSummary.add_member(:status, Shapes::ShapeRef.new(shape: ServiceStatus, location_name: "status"))
    ServiceSummary.struct_class = Types::ServiceSummary

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Target.add_member(:id, Shapes::ShapeRef.new(shape: TargetIdString, required: true, location_name: "id"))
    Target.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    Target.struct_class = Types::Target

    TargetFailure.add_member(:failure_code, Shapes::ShapeRef.new(shape: String, location_name: "failureCode"))
    TargetFailure.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    TargetFailure.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    TargetFailure.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    TargetFailure.struct_class = Types::TargetFailure

    TargetFailureList.member = Shapes::ShapeRef.new(shape: TargetFailure)

    TargetGroupConfig.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheckConfig, location_name: "healthCheck"))
    TargetGroupConfig.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    TargetGroupConfig.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "port"))
    TargetGroupConfig.add_member(:protocol, Shapes::ShapeRef.new(shape: TargetGroupProtocol, required: true, location_name: "protocol"))
    TargetGroupConfig.add_member(:protocol_version, Shapes::ShapeRef.new(shape: TargetGroupProtocolVersion, location_name: "protocolVersion"))
    TargetGroupConfig.add_member(:vpc_identifier, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcIdentifier"))
    TargetGroupConfig.struct_class = Types::TargetGroupConfig

    TargetGroupList.member = Shapes::ShapeRef.new(shape: TargetGroupSummary)

    TargetGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "arn"))
    TargetGroupSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    TargetGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: TargetGroupId, location_name: "id"))
    TargetGroupSummary.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    TargetGroupSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    TargetGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, location_name: "name"))
    TargetGroupSummary.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    TargetGroupSummary.add_member(:protocol, Shapes::ShapeRef.new(shape: TargetGroupProtocol, location_name: "protocol"))
    TargetGroupSummary.add_member(:service_arns, Shapes::ShapeRef.new(shape: ServiceArnList, location_name: "serviceArns"))
    TargetGroupSummary.add_member(:status, Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: "status"))
    TargetGroupSummary.add_member(:type, Shapes::ShapeRef.new(shape: TargetGroupType, location_name: "type"))
    TargetGroupSummary.add_member(:vpc_identifier, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcIdentifier"))
    TargetGroupSummary.struct_class = Types::TargetGroupSummary

    TargetList.member = Shapes::ShapeRef.new(shape: Target)

    TargetSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    TargetSummary.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    TargetSummary.add_member(:reason_code, Shapes::ShapeRef.new(shape: String, location_name: "reasonCode"))
    TargetSummary.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, location_name: "status"))
    TargetSummary.struct_class = Types::TargetSummary

    TargetSummaryList.member = Shapes::ShapeRef.new(shape: TargetSummary)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAccessLogSubscriptionRequest.add_member(:access_log_subscription_identifier, Shapes::ShapeRef.new(shape: AccessLogSubscriptionIdentifier, required: true, location: "uri", location_name: "accessLogSubscriptionIdentifier"))
    UpdateAccessLogSubscriptionRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AccessLogDestinationArn, required: true, location_name: "destinationArn"))
    UpdateAccessLogSubscriptionRequest.struct_class = Types::UpdateAccessLogSubscriptionRequest

    UpdateAccessLogSubscriptionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AccessLogSubscriptionArn, required: true, location_name: "arn"))
    UpdateAccessLogSubscriptionResponse.add_member(:destination_arn, Shapes::ShapeRef.new(shape: AccessLogDestinationArn, required: true, location_name: "destinationArn"))
    UpdateAccessLogSubscriptionResponse.add_member(:id, Shapes::ShapeRef.new(shape: AccessLogSubscriptionId, required: true, location_name: "id"))
    UpdateAccessLogSubscriptionResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UpdateAccessLogSubscriptionResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    UpdateAccessLogSubscriptionResponse.struct_class = Types::UpdateAccessLogSubscriptionResponse

    UpdateListenerRequest.add_member(:default_action, Shapes::ShapeRef.new(shape: RuleAction, required: true, location_name: "defaultAction"))
    UpdateListenerRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    UpdateListenerRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    UpdateListenerRequest.struct_class = Types::UpdateListenerRequest

    UpdateListenerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ListenerArn, location_name: "arn"))
    UpdateListenerResponse.add_member(:default_action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "defaultAction"))
    UpdateListenerResponse.add_member(:id, Shapes::ShapeRef.new(shape: ListenerId, location_name: "id"))
    UpdateListenerResponse.add_member(:name, Shapes::ShapeRef.new(shape: ListenerName, location_name: "name"))
    UpdateListenerResponse.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    UpdateListenerResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: ListenerProtocol, location_name: "protocol"))
    UpdateListenerResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "serviceArn"))
    UpdateListenerResponse.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "serviceId"))
    UpdateListenerResponse.struct_class = Types::UpdateListenerResponse

    UpdateRuleRequest.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "action"))
    UpdateRuleRequest.add_member(:listener_identifier, Shapes::ShapeRef.new(shape: ListenerIdentifier, required: true, location: "uri", location_name: "listenerIdentifier"))
    UpdateRuleRequest.add_member(:match, Shapes::ShapeRef.new(shape: RuleMatch, location_name: "match"))
    UpdateRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "priority"))
    UpdateRuleRequest.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "ruleIdentifier"))
    UpdateRuleRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    UpdateRuleRequest.struct_class = Types::UpdateRuleRequest

    UpdateRuleResponse.add_member(:action, Shapes::ShapeRef.new(shape: RuleAction, location_name: "action"))
    UpdateRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "arn"))
    UpdateRuleResponse.add_member(:id, Shapes::ShapeRef.new(shape: RuleId, location_name: "id"))
    UpdateRuleResponse.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDefault"))
    UpdateRuleResponse.add_member(:match, Shapes::ShapeRef.new(shape: RuleMatch, location_name: "match"))
    UpdateRuleResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "name"))
    UpdateRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: RulePriority, location_name: "priority"))
    UpdateRuleResponse.struct_class = Types::UpdateRuleResponse

    UpdateServiceNetworkRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    UpdateServiceNetworkRequest.add_member(:service_network_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkIdentifier, required: true, location: "uri", location_name: "serviceNetworkIdentifier"))
    UpdateServiceNetworkRequest.struct_class = Types::UpdateServiceNetworkRequest

    UpdateServiceNetworkResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkArn, location_name: "arn"))
    UpdateServiceNetworkResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    UpdateServiceNetworkResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkId, location_name: "id"))
    UpdateServiceNetworkResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceNetworkName, location_name: "name"))
    UpdateServiceNetworkResponse.struct_class = Types::UpdateServiceNetworkResponse

    UpdateServiceNetworkVpcAssociationRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: UpdateServiceNetworkVpcAssociationRequestSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    UpdateServiceNetworkVpcAssociationRequest.add_member(:service_network_vpc_association_identifier, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationIdentifier, required: true, location: "uri", location_name: "serviceNetworkVpcAssociationIdentifier"))
    UpdateServiceNetworkVpcAssociationRequest.struct_class = Types::UpdateServiceNetworkVpcAssociationRequest

    UpdateServiceNetworkVpcAssociationRequestSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    UpdateServiceNetworkVpcAssociationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationArn, location_name: "arn"))
    UpdateServiceNetworkVpcAssociationResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AccountId, location_name: "createdBy"))
    UpdateServiceNetworkVpcAssociationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationId, location_name: "id"))
    UpdateServiceNetworkVpcAssociationResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupList, location_name: "securityGroupIds"))
    UpdateServiceNetworkVpcAssociationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ServiceNetworkVpcAssociationStatus, location_name: "status"))
    UpdateServiceNetworkVpcAssociationResponse.struct_class = Types::UpdateServiceNetworkVpcAssociationResponse

    UpdateServiceRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    UpdateServiceRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    UpdateServiceRequest.add_member(:service_identifier, Shapes::ShapeRef.new(shape: ServiceIdentifier, required: true, location: "uri", location_name: "serviceIdentifier"))
    UpdateServiceRequest.struct_class = Types::UpdateServiceRequest

    UpdateServiceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceArn, location_name: "arn"))
    UpdateServiceResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    UpdateServiceResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    UpdateServiceResponse.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: ServiceCustomDomainName, location_name: "customDomainName"))
    UpdateServiceResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "id"))
    UpdateServiceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "name"))
    UpdateServiceResponse.struct_class = Types::UpdateServiceResponse

    UpdateTargetGroupRequest.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheckConfig, required: true, location_name: "healthCheck"))
    UpdateTargetGroupRequest.add_member(:target_group_identifier, Shapes::ShapeRef.new(shape: TargetGroupIdentifier, required: true, location: "uri", location_name: "targetGroupIdentifier"))
    UpdateTargetGroupRequest.struct_class = Types::UpdateTargetGroupRequest

    UpdateTargetGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TargetGroupArn, location_name: "arn"))
    UpdateTargetGroupResponse.add_member(:config, Shapes::ShapeRef.new(shape: TargetGroupConfig, location_name: "config"))
    UpdateTargetGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: TargetGroupId, location_name: "id"))
    UpdateTargetGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, location_name: "name"))
    UpdateTargetGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetGroupStatus, location_name: "status"))
    UpdateTargetGroupResponse.add_member(:type, Shapes::ShapeRef.new(shape: TargetGroupType, location_name: "type"))
    UpdateTargetGroupResponse.struct_class = Types::UpdateTargetGroupResponse

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WeightedTargetGroup.add_member(:target_group_identifier, Shapes::ShapeRef.new(shape: TargetGroupIdentifier, required: true, location_name: "targetGroupIdentifier"))
    WeightedTargetGroup.add_member(:weight, Shapes::ShapeRef.new(shape: TargetGroupWeight, location_name: "weight"))
    WeightedTargetGroup.struct_class = Types::WeightedTargetGroup

    WeightedTargetGroupList.member = Shapes::ShapeRef.new(shape: WeightedTargetGroup)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-11-30"

      api.metadata = {
        "apiVersion" => "2022-11-30",
        "endpointPrefix" => "vpc-lattice",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon VPC Lattice",
        "serviceId" => "VPC Lattice",
        "signatureVersion" => "v4",
        "signingName" => "vpc-lattice",
        "uid" => "vpc-lattice-2022-11-30",
      }

      api.add_operation(:batch_update_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_access_log_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessLogSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/accesslogsubscriptions"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessLogSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessLogSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateListener"
        o.http_method = "POST"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners"
        o.input = Shapes::ShapeRef.new(shape: CreateListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRule"
        o.http_method = "POST"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateService"
        o.http_method = "POST"
        o.http_request_uri = "/services"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/servicenetworks"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service_network_service_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceNetworkServiceAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/servicenetworkserviceassociations"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceNetworkServiceAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceNetworkServiceAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_service_network_vpc_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceNetworkVpcAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/servicenetworkvpcassociations"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceNetworkVpcAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceNetworkVpcAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTargetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/targetgroups"
        o.input = Shapes::ShapeRef.new(shape: CreateTargetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTargetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_access_log_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessLogSubscription"
        o.http_method = "DELETE"
        o.http_request_uri = "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessLogSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessLogSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_auth_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAuthPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/authpolicy/{resourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAuthPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAuthPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteListener"
        o.http_method = "DELETE"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/resourcepolicy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteService"
        o.http_method = "DELETE"
        o.http_request_uri = "/services/{serviceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_service_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceNetwork"
        o.http_method = "DELETE"
        o.http_request_uri = "/servicenetworks/{serviceNetworkIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_service_network_service_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceNetworkServiceAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceNetworkServiceAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceNetworkServiceAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_service_network_vpc_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceNetworkVpcAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceNetworkVpcAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceNetworkVpcAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTargetGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/targetgroups/{targetGroupIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTargetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTargetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deregister_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTargets"
        o.http_method = "POST"
        o.http_request_uri = "/targetgroups/{targetGroupIdentifier}/deregistertargets"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_access_log_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessLogSubscription"
        o.http_method = "GET"
        o.http_request_uri = "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetAccessLogSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessLogSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_auth_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAuthPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/authpolicy/{resourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetAuthPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAuthPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetListener"
        o.http_method = "GET"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/resourcepolicy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRule"
        o.http_method = "GET"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetService"
        o.http_method = "GET"
        o.http_request_uri = "/services/{serviceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceNetwork"
        o.http_method = "GET"
        o.http_request_uri = "/servicenetworks/{serviceNetworkIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetServiceNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_network_service_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceNetworkServiceAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetServiceNetworkServiceAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceNetworkServiceAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_network_vpc_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceNetworkVpcAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetServiceNetworkVpcAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceNetworkVpcAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTargetGroup"
        o.http_method = "GET"
        o.http_request_uri = "/targetgroups/{targetGroupIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetTargetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTargetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_access_log_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessLogSubscriptions"
        o.http_method = "GET"
        o.http_request_uri = "/accesslogsubscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListAccessLogSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessLogSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_listeners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListListeners"
        o.http_method = "GET"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners"
        o.input = Shapes::ShapeRef.new(shape: ListListenersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListListenersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRules"
        o.http_method = "GET"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"
        o.input = Shapes::ShapeRef.new(shape: ListRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_network_service_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceNetworkServiceAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/servicenetworkserviceassociations"
        o.input = Shapes::ShapeRef.new(shape: ListServiceNetworkServiceAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceNetworkServiceAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_network_vpc_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceNetworkVpcAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/servicenetworkvpcassociations"
        o.input = Shapes::ShapeRef.new(shape: ListServiceNetworkVpcAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceNetworkVpcAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceNetworks"
        o.http_method = "GET"
        o.http_request_uri = "/servicenetworks"
        o.input = Shapes::ShapeRef.new(shape: ListServiceNetworksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceNetworksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "GET"
        o.http_request_uri = "/services"
        o.input = Shapes::ShapeRef.new(shape: ListServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetGroups"
        o.http_method = "GET"
        o.http_request_uri = "/targetgroups"
        o.input = Shapes::ShapeRef.new(shape: ListTargetGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargets"
        o.http_method = "POST"
        o.http_request_uri = "/targetgroups/{targetGroupIdentifier}/listtargets"
        o.input = Shapes::ShapeRef.new(shape: ListTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_auth_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAuthPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/authpolicy/{resourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: PutAuthPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAuthPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/resourcepolicy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:register_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTargets"
        o.http_method = "POST"
        o.http_request_uri = "/targetgroups/{targetGroupIdentifier}/registertargets"
        o.input = Shapes::ShapeRef.new(shape: RegisterTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_access_log_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessLogSubscription"
        o.http_method = "PATCH"
        o.http_request_uri = "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessLogSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessLogSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateListener"
        o.http_method = "PATCH"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateService"
        o.http_method = "PATCH"
        o.http_request_uri = "/services/{serviceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceNetwork"
        o.http_method = "PATCH"
        o.http_request_uri = "/servicenetworks/{serviceNetworkIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_service_network_vpc_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceNetworkVpcAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceNetworkVpcAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceNetworkVpcAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTargetGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/targetgroups/{targetGroupIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTargetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTargetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
