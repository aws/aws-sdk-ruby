# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RTBFabric
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptLinkRequest = Shapes::StructureShape.new(name: 'AcceptLinkRequest')
    AcceptLinkResponse = Shapes::StructureShape.new(name: 'AcceptLinkResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Action = Shapes::UnionShape.new(name: 'Action')
    AutoScalingGroupName = Shapes::StringShape.new(name: 'AutoScalingGroupName')
    AutoScalingGroupNameList = Shapes::ListShape.new(name: 'AutoScalingGroupNameList')
    AutoScalingGroupsConfiguration = Shapes::StructureShape.new(name: 'AutoScalingGroupsConfiguration')
    Base64EncodedCertificateChain = Shapes::StringShape.new(name: 'Base64EncodedCertificateChain')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateAuthorityCertificates = Shapes::ListShape.new(name: 'CertificateAuthorityCertificates')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateInboundExternalLinkRequest = Shapes::StructureShape.new(name: 'CreateInboundExternalLinkRequest')
    CreateInboundExternalLinkResponse = Shapes::StructureShape.new(name: 'CreateInboundExternalLinkResponse')
    CreateLinkRequest = Shapes::StructureShape.new(name: 'CreateLinkRequest')
    CreateLinkResponse = Shapes::StructureShape.new(name: 'CreateLinkResponse')
    CreateLinkResponseCustomerProvidedIdString = Shapes::StringShape.new(name: 'CreateLinkResponseCustomerProvidedIdString')
    CreateOutboundExternalLinkRequest = Shapes::StructureShape.new(name: 'CreateOutboundExternalLinkRequest')
    CreateOutboundExternalLinkResponse = Shapes::StructureShape.new(name: 'CreateOutboundExternalLinkResponse')
    CreateRequesterGatewayRequest = Shapes::StructureShape.new(name: 'CreateRequesterGatewayRequest')
    CreateRequesterGatewayRequestDescriptionString = Shapes::StringShape.new(name: 'CreateRequesterGatewayRequestDescriptionString')
    CreateRequesterGatewayRequestSecurityGroupIdsList = Shapes::ListShape.new(name: 'CreateRequesterGatewayRequestSecurityGroupIdsList')
    CreateRequesterGatewayRequestSubnetIdsList = Shapes::ListShape.new(name: 'CreateRequesterGatewayRequestSubnetIdsList')
    CreateRequesterGatewayResponse = Shapes::StructureShape.new(name: 'CreateRequesterGatewayResponse')
    CreateResponderGatewayRequest = Shapes::StructureShape.new(name: 'CreateResponderGatewayRequest')
    CreateResponderGatewayRequestDescriptionString = Shapes::StringShape.new(name: 'CreateResponderGatewayRequestDescriptionString')
    CreateResponderGatewayRequestPortInteger = Shapes::IntegerShape.new(name: 'CreateResponderGatewayRequestPortInteger')
    CreateResponderGatewayRequestSecurityGroupIdsList = Shapes::ListShape.new(name: 'CreateResponderGatewayRequestSecurityGroupIdsList')
    CreateResponderGatewayRequestSubnetIdsList = Shapes::ListShape.new(name: 'CreateResponderGatewayRequestSubnetIdsList')
    CreateResponderGatewayResponse = Shapes::StructureShape.new(name: 'CreateResponderGatewayResponse')
    CustomerProvidedId = Shapes::StringShape.new(name: 'CustomerProvidedId')
    DeleteInboundExternalLinkRequest = Shapes::StructureShape.new(name: 'DeleteInboundExternalLinkRequest')
    DeleteInboundExternalLinkResponse = Shapes::StructureShape.new(name: 'DeleteInboundExternalLinkResponse')
    DeleteLinkRequest = Shapes::StructureShape.new(name: 'DeleteLinkRequest')
    DeleteLinkResponse = Shapes::StructureShape.new(name: 'DeleteLinkResponse')
    DeleteOutboundExternalLinkRequest = Shapes::StructureShape.new(name: 'DeleteOutboundExternalLinkRequest')
    DeleteOutboundExternalLinkResponse = Shapes::StructureShape.new(name: 'DeleteOutboundExternalLinkResponse')
    DeleteRequesterGatewayRequest = Shapes::StructureShape.new(name: 'DeleteRequesterGatewayRequest')
    DeleteRequesterGatewayResponse = Shapes::StructureShape.new(name: 'DeleteRequesterGatewayResponse')
    DeleteResponderGatewayRequest = Shapes::StructureShape.new(name: 'DeleteResponderGatewayRequest')
    DeleteResponderGatewayResponse = Shapes::StructureShape.new(name: 'DeleteResponderGatewayResponse')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    EksEndpointsConfiguration = Shapes::StructureShape.new(name: 'EksEndpointsConfiguration')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterConfiguration = Shapes::ListShape.new(name: 'FilterConfiguration')
    FilterCriteria = Shapes::ListShape.new(name: 'FilterCriteria')
    FilterCriterion = Shapes::StructureShape.new(name: 'FilterCriterion')
    FilterCriterionValuesList = Shapes::ListShape.new(name: 'FilterCriterionValuesList')
    FilterType = Shapes::StringShape.new(name: 'FilterType')
    Float = Shapes::FloatShape.new(name: 'Float')
    FlowModuleName = Shapes::StringShape.new(name: 'FlowModuleName')
    FlowModuleNameList = Shapes::ListShape.new(name: 'FlowModuleNameList')
    GatewayId = Shapes::StringShape.new(name: 'GatewayId')
    GatewayIdList = Shapes::ListShape.new(name: 'GatewayIdList')
    GetInboundExternalLinkRequest = Shapes::StructureShape.new(name: 'GetInboundExternalLinkRequest')
    GetInboundExternalLinkResponse = Shapes::StructureShape.new(name: 'GetInboundExternalLinkResponse')
    GetLinkRequest = Shapes::StructureShape.new(name: 'GetLinkRequest')
    GetLinkResponse = Shapes::StructureShape.new(name: 'GetLinkResponse')
    GetOutboundExternalLinkRequest = Shapes::StructureShape.new(name: 'GetOutboundExternalLinkRequest')
    GetOutboundExternalLinkResponse = Shapes::StructureShape.new(name: 'GetOutboundExternalLinkResponse')
    GetRequesterGatewayRequest = Shapes::StructureShape.new(name: 'GetRequesterGatewayRequest')
    GetRequesterGatewayResponse = Shapes::StructureShape.new(name: 'GetRequesterGatewayResponse')
    GetRequesterGatewayResponseDescriptionString = Shapes::StringShape.new(name: 'GetRequesterGatewayResponseDescriptionString')
    GetRequesterGatewayResponseSecurityGroupIdsList = Shapes::ListShape.new(name: 'GetRequesterGatewayResponseSecurityGroupIdsList')
    GetRequesterGatewayResponseSubnetIdsList = Shapes::ListShape.new(name: 'GetRequesterGatewayResponseSubnetIdsList')
    GetResponderGatewayRequest = Shapes::StructureShape.new(name: 'GetResponderGatewayRequest')
    GetResponderGatewayResponse = Shapes::StructureShape.new(name: 'GetResponderGatewayResponse')
    GetResponderGatewayResponseDescriptionString = Shapes::StringShape.new(name: 'GetResponderGatewayResponseDescriptionString')
    GetResponderGatewayResponsePortInteger = Shapes::IntegerShape.new(name: 'GetResponderGatewayResponsePortInteger')
    GetResponderGatewayResponseSecurityGroupIdsList = Shapes::ListShape.new(name: 'GetResponderGatewayResponseSecurityGroupIdsList')
    GetResponderGatewayResponseSubnetIdsList = Shapes::ListShape.new(name: 'GetResponderGatewayResponseSubnetIdsList')
    HeaderTagAction = Shapes::StructureShape.new(name: 'HeaderTagAction')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KubernetesClusterName = Shapes::StringShape.new(name: 'KubernetesClusterName')
    KubernetesEndpointsResourceName = Shapes::StringShape.new(name: 'KubernetesEndpointsResourceName')
    KubernetesNamespace = Shapes::StringShape.new(name: 'KubernetesNamespace')
    LinkApplicationLogConfiguration = Shapes::StructureShape.new(name: 'LinkApplicationLogConfiguration')
    LinkApplicationLogSampling = Shapes::StructureShape.new(name: 'LinkApplicationLogSampling')
    LinkApplicationLogSamplingErrorLogDouble = Shapes::FloatShape.new(name: 'LinkApplicationLogSamplingErrorLogDouble')
    LinkApplicationLogSamplingFilterLogDouble = Shapes::FloatShape.new(name: 'LinkApplicationLogSamplingFilterLogDouble')
    LinkAttributes = Shapes::StructureShape.new(name: 'LinkAttributes')
    LinkDirection = Shapes::StringShape.new(name: 'LinkDirection')
    LinkId = Shapes::StringShape.new(name: 'LinkId')
    LinkList = Shapes::ListShape.new(name: 'LinkList')
    LinkLogSettings = Shapes::StructureShape.new(name: 'LinkLogSettings')
    LinkStatus = Shapes::StringShape.new(name: 'LinkStatus')
    ListLinksRequest = Shapes::StructureShape.new(name: 'ListLinksRequest')
    ListLinksResponse = Shapes::StructureShape.new(name: 'ListLinksResponse')
    ListLinksResponseStructure = Shapes::StructureShape.new(name: 'ListLinksResponseStructure')
    ListRequesterGatewaysRequest = Shapes::StructureShape.new(name: 'ListRequesterGatewaysRequest')
    ListRequesterGatewaysRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRequesterGatewaysRequestMaxResultsInteger')
    ListRequesterGatewaysResponse = Shapes::StructureShape.new(name: 'ListRequesterGatewaysResponse')
    ListResponderGatewaysRequest = Shapes::StructureShape.new(name: 'ListResponderGatewaysRequest')
    ListResponderGatewaysRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListResponderGatewaysRequestMaxResultsInteger')
    ListResponderGatewaysResponse = Shapes::StructureShape.new(name: 'ListResponderGatewaysResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManagedEndpointConfiguration = Shapes::UnionShape.new(name: 'ManagedEndpointConfiguration')
    ModuleConfiguration = Shapes::StructureShape.new(name: 'ModuleConfiguration')
    ModuleConfigurationList = Shapes::ListShape.new(name: 'ModuleConfigurationList')
    ModuleParameters = Shapes::UnionShape.new(name: 'ModuleParameters')
    NoBidAction = Shapes::StructureShape.new(name: 'NoBidAction')
    NoBidActionNoBidReasonCodeInteger = Shapes::IntegerShape.new(name: 'NoBidActionNoBidReasonCodeInteger')
    NoBidModuleParameters = Shapes::StructureShape.new(name: 'NoBidModuleParameters')
    NoBidModuleParametersPassThroughPercentageFloat = Shapes::FloatShape.new(name: 'NoBidModuleParametersPassThroughPercentageFloat')
    NoBidModuleParametersReasonCodeInteger = Shapes::IntegerShape.new(name: 'NoBidModuleParametersReasonCodeInteger')
    NoBidModuleParametersReasonString = Shapes::StringShape.new(name: 'NoBidModuleParametersReasonString')
    OpenRtbAttributeModuleParameters = Shapes::StructureShape.new(name: 'OpenRtbAttributeModuleParameters')
    OpenRtbAttributeModuleParametersHoldbackPercentageFloat = Shapes::FloatShape.new(name: 'OpenRtbAttributeModuleParametersHoldbackPercentageFloat')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    RateLimiterModuleParameters = Shapes::StructureShape.new(name: 'RateLimiterModuleParameters')
    RejectLinkRequest = Shapes::StructureShape.new(name: 'RejectLinkRequest')
    RejectLinkResponse = Shapes::StructureShape.new(name: 'RejectLinkResponse')
    RequesterGatewayStatus = Shapes::StringShape.new(name: 'RequesterGatewayStatus')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponderErrorMasking = Shapes::ListShape.new(name: 'ResponderErrorMasking')
    ResponderErrorMaskingAction = Shapes::StringShape.new(name: 'ResponderErrorMaskingAction')
    ResponderErrorMaskingForHttpCode = Shapes::StructureShape.new(name: 'ResponderErrorMaskingForHttpCode')
    ResponderErrorMaskingForHttpCodeHttpCodeString = Shapes::StringShape.new(name: 'ResponderErrorMaskingForHttpCodeHttpCodeString')
    ResponderErrorMaskingForHttpCodeResponseLoggingPercentageFloat = Shapes::FloatShape.new(name: 'ResponderErrorMaskingForHttpCodeResponseLoggingPercentageFloat')
    ResponderErrorMaskingLoggingType = Shapes::StringShape.new(name: 'ResponderErrorMaskingLoggingType')
    ResponderErrorMaskingLoggingTypes = Shapes::ListShape.new(name: 'ResponderErrorMaskingLoggingTypes')
    ResponderGatewayStatus = Shapes::StringShape.new(name: 'ResponderGatewayStatus')
    RtbTaggableResourceArn = Shapes::StringShape.new(name: 'RtbTaggableResourceArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrustStoreConfiguration = Shapes::StructureShape.new(name: 'TrustStoreConfiguration')
    URI = Shapes::StringShape.new(name: 'URI')
    URL = Shapes::StringShape.new(name: 'URL')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLinkModuleFlowRequest = Shapes::StructureShape.new(name: 'UpdateLinkModuleFlowRequest')
    UpdateLinkModuleFlowResponse = Shapes::StructureShape.new(name: 'UpdateLinkModuleFlowResponse')
    UpdateLinkRequest = Shapes::StructureShape.new(name: 'UpdateLinkRequest')
    UpdateLinkResponse = Shapes::StructureShape.new(name: 'UpdateLinkResponse')
    UpdateRequesterGatewayRequest = Shapes::StructureShape.new(name: 'UpdateRequesterGatewayRequest')
    UpdateRequesterGatewayRequestDescriptionString = Shapes::StringShape.new(name: 'UpdateRequesterGatewayRequestDescriptionString')
    UpdateRequesterGatewayResponse = Shapes::StructureShape.new(name: 'UpdateRequesterGatewayResponse')
    UpdateResponderGatewayRequest = Shapes::StructureShape.new(name: 'UpdateResponderGatewayRequest')
    UpdateResponderGatewayRequestDescriptionString = Shapes::StringShape.new(name: 'UpdateResponderGatewayRequestDescriptionString')
    UpdateResponderGatewayRequestPortInteger = Shapes::IntegerShape.new(name: 'UpdateResponderGatewayRequestPortInteger')
    UpdateResponderGatewayResponse = Shapes::StructureShape.new(name: 'UpdateResponderGatewayResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Version = Shapes::StringShape.new(name: 'Version')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AcceptLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    AcceptLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    AcceptLinkRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    AcceptLinkRequest.add_member(:log_settings, Shapes::ShapeRef.new(shape: LinkLogSettings, required: true, location_name: "logSettings"))
    AcceptLinkRequest.struct_class = Types::AcceptLinkRequest

    AcceptLinkResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    AcceptLinkResponse.add_member(:peer_gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "peerGatewayId"))
    AcceptLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    AcceptLinkResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AcceptLinkResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AcceptLinkResponse.add_member(:direction, Shapes::ShapeRef.new(shape: LinkDirection, location_name: "direction"))
    AcceptLinkResponse.add_member(:flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "flowModules"))
    AcceptLinkResponse.add_member(:pending_flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "pendingFlowModules"))
    AcceptLinkResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    AcceptLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    AcceptLinkResponse.struct_class = Types::AcceptLinkResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Action.add_member(:no_bid, Shapes::ShapeRef.new(shape: NoBidAction, location_name: "noBid"))
    Action.add_member(:header_tag, Shapes::ShapeRef.new(shape: HeaderTagAction, location_name: "headerTag"))
    Action.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Action.add_member_subclass(:no_bid, Types::Action::NoBid)
    Action.add_member_subclass(:header_tag, Types::Action::HeaderTag)
    Action.add_member_subclass(:unknown, Types::Action::Unknown)
    Action.struct_class = Types::Action

    AutoScalingGroupNameList.member = Shapes::ShapeRef.new(shape: AutoScalingGroupName)

    AutoScalingGroupsConfiguration.add_member(:auto_scaling_group_names, Shapes::ShapeRef.new(shape: AutoScalingGroupNameList, required: true, location_name: "autoScalingGroupNames"))
    AutoScalingGroupsConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    AutoScalingGroupsConfiguration.struct_class = Types::AutoScalingGroupsConfiguration

    CertificateAuthorityCertificates.member = Shapes::ShapeRef.new(shape: Base64EncodedCertificateChain)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateInboundExternalLinkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateInboundExternalLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    CreateInboundExternalLinkRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    CreateInboundExternalLinkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateInboundExternalLinkRequest.struct_class = Types::CreateInboundExternalLinkRequest

    CreateInboundExternalLinkResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    CreateInboundExternalLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    CreateInboundExternalLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    CreateInboundExternalLinkResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateInboundExternalLinkResponse.struct_class = Types::CreateInboundExternalLinkResponse

    CreateLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    CreateLinkRequest.add_member(:peer_gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "peerGatewayId"))
    CreateLinkRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    CreateLinkRequest.add_member(:http_responder_allowed, Shapes::ShapeRef.new(shape: Boolean, location_name: "httpResponderAllowed"))
    CreateLinkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateLinkRequest.add_member(:log_settings, Shapes::ShapeRef.new(shape: LinkLogSettings, required: true, location_name: "logSettings"))
    CreateLinkRequest.struct_class = Types::CreateLinkRequest

    CreateLinkResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    CreateLinkResponse.add_member(:peer_gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "peerGatewayId"))
    CreateLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    CreateLinkResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateLinkResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateLinkResponse.add_member(:direction, Shapes::ShapeRef.new(shape: LinkDirection, location_name: "direction"))
    CreateLinkResponse.add_member(:flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "flowModules"))
    CreateLinkResponse.add_member(:pending_flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "pendingFlowModules"))
    CreateLinkResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    CreateLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    CreateLinkResponse.add_member(:customer_provided_id, Shapes::ShapeRef.new(shape: CreateLinkResponseCustomerProvidedIdString, location_name: "customerProvidedId"))
    CreateLinkResponse.struct_class = Types::CreateLinkResponse

    CreateOutboundExternalLinkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateOutboundExternalLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    CreateOutboundExternalLinkRequest.add_member(:public_endpoint, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "publicEndpoint"))
    CreateOutboundExternalLinkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateOutboundExternalLinkRequest.struct_class = Types::CreateOutboundExternalLinkRequest

    CreateOutboundExternalLinkResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    CreateOutboundExternalLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    CreateOutboundExternalLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    CreateOutboundExternalLinkResponse.struct_class = Types::CreateOutboundExternalLinkResponse

    CreateRequesterGatewayRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    CreateRequesterGatewayRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: CreateRequesterGatewayRequestSubnetIdsList, required: true, location_name: "subnetIds"))
    CreateRequesterGatewayRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: CreateRequesterGatewayRequestSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    CreateRequesterGatewayRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRequesterGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: CreateRequesterGatewayRequestDescriptionString, location_name: "description"))
    CreateRequesterGatewayRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateRequesterGatewayRequest.struct_class = Types::CreateRequesterGatewayRequest

    CreateRequesterGatewayRequestSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    CreateRequesterGatewayRequestSubnetIdsList.member = Shapes::ShapeRef.new(shape: SubnetId)

    CreateRequesterGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    CreateRequesterGatewayResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateRequesterGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: RequesterGatewayStatus, required: true, location_name: "status"))
    CreateRequesterGatewayResponse.struct_class = Types::CreateRequesterGatewayResponse

    CreateResponderGatewayRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    CreateResponderGatewayRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: CreateResponderGatewayRequestSubnetIdsList, required: true, location_name: "subnetIds"))
    CreateResponderGatewayRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: CreateResponderGatewayRequestSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    CreateResponderGatewayRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    CreateResponderGatewayRequest.add_member(:port, Shapes::ShapeRef.new(shape: CreateResponderGatewayRequestPortInteger, required: true, location_name: "port"))
    CreateResponderGatewayRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    CreateResponderGatewayRequest.add_member(:trust_store_configuration, Shapes::ShapeRef.new(shape: TrustStoreConfiguration, location_name: "trustStoreConfiguration"))
    CreateResponderGatewayRequest.add_member(:managed_endpoint_configuration, Shapes::ShapeRef.new(shape: ManagedEndpointConfiguration, location_name: "managedEndpointConfiguration"))
    CreateResponderGatewayRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateResponderGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: CreateResponderGatewayRequestDescriptionString, location_name: "description"))
    CreateResponderGatewayRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateResponderGatewayRequest.struct_class = Types::CreateResponderGatewayRequest

    CreateResponderGatewayRequestSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    CreateResponderGatewayRequestSubnetIdsList.member = Shapes::ShapeRef.new(shape: SubnetId)

    CreateResponderGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    CreateResponderGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResponderGatewayStatus, required: true, location_name: "status"))
    CreateResponderGatewayResponse.struct_class = Types::CreateResponderGatewayResponse

    DeleteInboundExternalLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    DeleteInboundExternalLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    DeleteInboundExternalLinkRequest.struct_class = Types::DeleteInboundExternalLinkRequest

    DeleteInboundExternalLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    DeleteInboundExternalLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    DeleteInboundExternalLinkResponse.struct_class = Types::DeleteInboundExternalLinkResponse

    DeleteLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    DeleteLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    DeleteLinkRequest.struct_class = Types::DeleteLinkRequest

    DeleteLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    DeleteLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    DeleteLinkResponse.struct_class = Types::DeleteLinkResponse

    DeleteOutboundExternalLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    DeleteOutboundExternalLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    DeleteOutboundExternalLinkRequest.struct_class = Types::DeleteOutboundExternalLinkRequest

    DeleteOutboundExternalLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    DeleteOutboundExternalLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    DeleteOutboundExternalLinkResponse.struct_class = Types::DeleteOutboundExternalLinkResponse

    DeleteRequesterGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    DeleteRequesterGatewayRequest.struct_class = Types::DeleteRequesterGatewayRequest

    DeleteRequesterGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    DeleteRequesterGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: RequesterGatewayStatus, required: true, location_name: "status"))
    DeleteRequesterGatewayResponse.struct_class = Types::DeleteRequesterGatewayResponse

    DeleteResponderGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    DeleteResponderGatewayRequest.struct_class = Types::DeleteResponderGatewayRequest

    DeleteResponderGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    DeleteResponderGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResponderGatewayStatus, required: true, location_name: "status"))
    DeleteResponderGatewayResponse.struct_class = Types::DeleteResponderGatewayResponse

    EksEndpointsConfiguration.add_member(:endpoints_resource_name, Shapes::ShapeRef.new(shape: KubernetesEndpointsResourceName, required: true, location_name: "endpointsResourceName"))
    EksEndpointsConfiguration.add_member(:endpoints_resource_namespace, Shapes::ShapeRef.new(shape: KubernetesNamespace, required: true, location_name: "endpointsResourceNamespace"))
    EksEndpointsConfiguration.add_member(:cluster_api_server_endpoint_uri, Shapes::ShapeRef.new(shape: URI, required: true, location_name: "clusterApiServerEndpointUri"))
    EksEndpointsConfiguration.add_member(:cluster_api_server_ca_certificate_chain, Shapes::ShapeRef.new(shape: Base64EncodedCertificateChain, required: true, location_name: "clusterApiServerCaCertificateChain"))
    EksEndpointsConfiguration.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KubernetesClusterName, required: true, location_name: "clusterName"))
    EksEndpointsConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    EksEndpointsConfiguration.struct_class = Types::EksEndpointsConfiguration

    Filter.add_member(:criteria, Shapes::ShapeRef.new(shape: FilterCriteria, required: true, location_name: "criteria"))
    Filter.struct_class = Types::Filter

    FilterConfiguration.member = Shapes::ShapeRef.new(shape: Filter)

    FilterCriteria.member = Shapes::ShapeRef.new(shape: FilterCriterion)

    FilterCriterion.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    FilterCriterion.add_member(:values, Shapes::ShapeRef.new(shape: FilterCriterionValuesList, required: true, location_name: "values"))
    FilterCriterion.struct_class = Types::FilterCriterion

    FilterCriterionValuesList.member = Shapes::ShapeRef.new(shape: String)

    FlowModuleNameList.member = Shapes::ShapeRef.new(shape: FlowModuleName)

    GatewayIdList.member = Shapes::ShapeRef.new(shape: GatewayId)

    GetInboundExternalLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    GetInboundExternalLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    GetInboundExternalLinkRequest.struct_class = Types::GetInboundExternalLinkRequest

    GetInboundExternalLinkResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    GetInboundExternalLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    GetInboundExternalLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    GetInboundExternalLinkResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    GetInboundExternalLinkResponse.add_member(:flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "flowModules"))
    GetInboundExternalLinkResponse.add_member(:pending_flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "pendingFlowModules"))
    GetInboundExternalLinkResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    GetInboundExternalLinkResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetInboundExternalLinkResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetInboundExternalLinkResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetInboundExternalLinkResponse.struct_class = Types::GetInboundExternalLinkResponse

    GetLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    GetLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    GetLinkRequest.struct_class = Types::GetLinkRequest

    GetLinkResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    GetLinkResponse.add_member(:peer_gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "peerGatewayId"))
    GetLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    GetLinkResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetLinkResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetLinkResponse.add_member(:direction, Shapes::ShapeRef.new(shape: LinkDirection, location_name: "direction"))
    GetLinkResponse.add_member(:flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "flowModules"))
    GetLinkResponse.add_member(:pending_flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "pendingFlowModules"))
    GetLinkResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    GetLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    GetLinkResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetLinkResponse.add_member(:log_settings, Shapes::ShapeRef.new(shape: LinkLogSettings, location_name: "logSettings"))
    GetLinkResponse.struct_class = Types::GetLinkResponse

    GetOutboundExternalLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    GetOutboundExternalLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    GetOutboundExternalLinkRequest.struct_class = Types::GetOutboundExternalLinkRequest

    GetOutboundExternalLinkResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    GetOutboundExternalLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    GetOutboundExternalLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    GetOutboundExternalLinkResponse.add_member(:public_endpoint, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "publicEndpoint"))
    GetOutboundExternalLinkResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetOutboundExternalLinkResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetOutboundExternalLinkResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetOutboundExternalLinkResponse.struct_class = Types::GetOutboundExternalLinkResponse

    GetRequesterGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    GetRequesterGatewayRequest.struct_class = Types::GetRequesterGatewayRequest

    GetRequesterGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: RequesterGatewayStatus, required: true, location_name: "status"))
    GetRequesterGatewayResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    GetRequesterGatewayResponse.add_member(:description, Shapes::ShapeRef.new(shape: GetRequesterGatewayResponseDescriptionString, location_name: "description"))
    GetRequesterGatewayResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetRequesterGatewayResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetRequesterGatewayResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    GetRequesterGatewayResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: GetRequesterGatewayResponseSubnetIdsList, required: true, location_name: "subnetIds"))
    GetRequesterGatewayResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: GetRequesterGatewayResponseSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    GetRequesterGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    GetRequesterGatewayResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetRequesterGatewayResponse.add_member(:active_links_count, Shapes::ShapeRef.new(shape: Integer, location_name: "activeLinksCount"))
    GetRequesterGatewayResponse.add_member(:total_links_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalLinksCount"))
    GetRequesterGatewayResponse.struct_class = Types::GetRequesterGatewayResponse

    GetRequesterGatewayResponseSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    GetRequesterGatewayResponseSubnetIdsList.member = Shapes::ShapeRef.new(shape: SubnetId)

    GetResponderGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    GetResponderGatewayRequest.struct_class = Types::GetResponderGatewayRequest

    GetResponderGatewayResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    GetResponderGatewayResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: GetResponderGatewayResponseSubnetIdsList, required: true, location_name: "subnetIds"))
    GetResponderGatewayResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: GetResponderGatewayResponseSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    GetResponderGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResponderGatewayStatus, required: true, location_name: "status"))
    GetResponderGatewayResponse.add_member(:description, Shapes::ShapeRef.new(shape: GetResponderGatewayResponseDescriptionString, location_name: "description"))
    GetResponderGatewayResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetResponderGatewayResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetResponderGatewayResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    GetResponderGatewayResponse.add_member(:port, Shapes::ShapeRef.new(shape: GetResponderGatewayResponsePortInteger, required: true, location_name: "port"))
    GetResponderGatewayResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    GetResponderGatewayResponse.add_member(:trust_store_configuration, Shapes::ShapeRef.new(shape: TrustStoreConfiguration, location_name: "trustStoreConfiguration"))
    GetResponderGatewayResponse.add_member(:managed_endpoint_configuration, Shapes::ShapeRef.new(shape: ManagedEndpointConfiguration, location_name: "managedEndpointConfiguration"))
    GetResponderGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    GetResponderGatewayResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetResponderGatewayResponse.add_member(:active_links_count, Shapes::ShapeRef.new(shape: Integer, location_name: "activeLinksCount"))
    GetResponderGatewayResponse.add_member(:total_links_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalLinksCount"))
    GetResponderGatewayResponse.add_member(:inbound_links_count, Shapes::ShapeRef.new(shape: Integer, location_name: "inboundLinksCount"))
    GetResponderGatewayResponse.struct_class = Types::GetResponderGatewayResponse

    GetResponderGatewayResponseSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    GetResponderGatewayResponseSubnetIdsList.member = Shapes::ShapeRef.new(shape: SubnetId)

    HeaderTagAction.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    HeaderTagAction.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    HeaderTagAction.struct_class = Types::HeaderTagAction

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LinkApplicationLogConfiguration.add_member(:sampling, Shapes::ShapeRef.new(shape: LinkApplicationLogSampling, required: true, location_name: "sampling"))
    LinkApplicationLogConfiguration.struct_class = Types::LinkApplicationLogConfiguration

    LinkApplicationLogSampling.add_member(:error_log, Shapes::ShapeRef.new(shape: LinkApplicationLogSamplingErrorLogDouble, required: true, location_name: "errorLog"))
    LinkApplicationLogSampling.add_member(:filter_log, Shapes::ShapeRef.new(shape: LinkApplicationLogSamplingFilterLogDouble, required: true, location_name: "filterLog"))
    LinkApplicationLogSampling.struct_class = Types::LinkApplicationLogSampling

    LinkAttributes.add_member(:responder_error_masking, Shapes::ShapeRef.new(shape: ResponderErrorMasking, location_name: "responderErrorMasking"))
    LinkAttributes.add_member(:customer_provided_id, Shapes::ShapeRef.new(shape: CustomerProvidedId, location_name: "customerProvidedId"))
    LinkAttributes.struct_class = Types::LinkAttributes

    LinkList.member = Shapes::ShapeRef.new(shape: ListLinksResponseStructure)

    LinkLogSettings.add_member(:application_logs, Shapes::ShapeRef.new(shape: LinkApplicationLogConfiguration, required: true, location_name: "applicationLogs"))
    LinkLogSettings.struct_class = Types::LinkLogSettings

    ListLinksRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    ListLinksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListLinksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListLinksRequest.struct_class = Types::ListLinksRequest

    ListLinksResponse.add_member(:links, Shapes::ShapeRef.new(shape: LinkList, location_name: "links"))
    ListLinksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLinksResponse.struct_class = Types::ListLinksResponse

    ListLinksResponseStructure.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    ListLinksResponseStructure.add_member(:peer_gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "peerGatewayId"))
    ListLinksResponseStructure.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    ListLinksResponseStructure.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ListLinksResponseStructure.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ListLinksResponseStructure.add_member(:direction, Shapes::ShapeRef.new(shape: LinkDirection, location_name: "direction"))
    ListLinksResponseStructure.add_member(:flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "flowModules"))
    ListLinksResponseStructure.add_member(:pending_flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "pendingFlowModules"))
    ListLinksResponseStructure.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    ListLinksResponseStructure.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    ListLinksResponseStructure.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListLinksResponseStructure.struct_class = Types::ListLinksResponseStructure

    ListRequesterGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRequesterGatewaysRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRequesterGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRequesterGatewaysRequest.struct_class = Types::ListRequesterGatewaysRequest

    ListRequesterGatewaysResponse.add_member(:gateway_ids, Shapes::ShapeRef.new(shape: GatewayIdList, location_name: "gatewayIds"))
    ListRequesterGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRequesterGatewaysResponse.struct_class = Types::ListRequesterGatewaysResponse

    ListResponderGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResponderGatewaysRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListResponderGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListResponderGatewaysRequest.struct_class = Types::ListResponderGatewaysRequest

    ListResponderGatewaysResponse.add_member(:gateway_ids, Shapes::ShapeRef.new(shape: GatewayIdList, location_name: "gatewayIds"))
    ListResponderGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListResponderGatewaysResponse.struct_class = Types::ListResponderGatewaysResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RtbTaggableResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedEndpointConfiguration.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupsConfiguration, location_name: "autoScalingGroups"))
    ManagedEndpointConfiguration.add_member(:eks_endpoints, Shapes::ShapeRef.new(shape: EksEndpointsConfiguration, location_name: "eksEndpoints"))
    ManagedEndpointConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ManagedEndpointConfiguration.add_member_subclass(:auto_scaling_groups, Types::ManagedEndpointConfiguration::AutoScalingGroups)
    ManagedEndpointConfiguration.add_member_subclass(:eks_endpoints, Types::ManagedEndpointConfiguration::EksEndpoints)
    ManagedEndpointConfiguration.add_member_subclass(:unknown, Types::ManagedEndpointConfiguration::Unknown)
    ManagedEndpointConfiguration.struct_class = Types::ManagedEndpointConfiguration

    ModuleConfiguration.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    ModuleConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: FlowModuleName, required: true, location_name: "name"))
    ModuleConfiguration.add_member(:depends_on, Shapes::ShapeRef.new(shape: FlowModuleNameList, location_name: "dependsOn"))
    ModuleConfiguration.add_member(:module_parameters, Shapes::ShapeRef.new(shape: ModuleParameters, location_name: "moduleParameters"))
    ModuleConfiguration.struct_class = Types::ModuleConfiguration

    ModuleConfigurationList.member = Shapes::ShapeRef.new(shape: ModuleConfiguration)

    ModuleParameters.add_member(:no_bid, Shapes::ShapeRef.new(shape: NoBidModuleParameters, location_name: "noBid"))
    ModuleParameters.add_member(:open_rtb_attribute, Shapes::ShapeRef.new(shape: OpenRtbAttributeModuleParameters, location_name: "openRtbAttribute"))
    ModuleParameters.add_member(:rate_limiter, Shapes::ShapeRef.new(shape: RateLimiterModuleParameters, location_name: "rateLimiter"))
    ModuleParameters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ModuleParameters.add_member_subclass(:no_bid, Types::ModuleParameters::NoBid)
    ModuleParameters.add_member_subclass(:open_rtb_attribute, Types::ModuleParameters::OpenRtbAttribute)
    ModuleParameters.add_member_subclass(:rate_limiter, Types::ModuleParameters::RateLimiter)
    ModuleParameters.add_member_subclass(:unknown, Types::ModuleParameters::Unknown)
    ModuleParameters.struct_class = Types::ModuleParameters

    NoBidAction.add_member(:no_bid_reason_code, Shapes::ShapeRef.new(shape: NoBidActionNoBidReasonCodeInteger, location_name: "noBidReasonCode"))
    NoBidAction.struct_class = Types::NoBidAction

    NoBidModuleParameters.add_member(:reason, Shapes::ShapeRef.new(shape: NoBidModuleParametersReasonString, location_name: "reason"))
    NoBidModuleParameters.add_member(:reason_code, Shapes::ShapeRef.new(shape: NoBidModuleParametersReasonCodeInteger, location_name: "reasonCode"))
    NoBidModuleParameters.add_member(:pass_through_percentage, Shapes::ShapeRef.new(shape: NoBidModuleParametersPassThroughPercentageFloat, location_name: "passThroughPercentage"))
    NoBidModuleParameters.struct_class = Types::NoBidModuleParameters

    OpenRtbAttributeModuleParameters.add_member(:filter_type, Shapes::ShapeRef.new(shape: FilterType, required: true, location_name: "filterType"))
    OpenRtbAttributeModuleParameters.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, required: true, location_name: "filterConfiguration"))
    OpenRtbAttributeModuleParameters.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "action"))
    OpenRtbAttributeModuleParameters.add_member(:holdback_percentage, Shapes::ShapeRef.new(shape: OpenRtbAttributeModuleParametersHoldbackPercentageFloat, required: true, location_name: "holdbackPercentage"))
    OpenRtbAttributeModuleParameters.struct_class = Types::OpenRtbAttributeModuleParameters

    RateLimiterModuleParameters.add_member(:tps, Shapes::ShapeRef.new(shape: Float, location_name: "tps"))
    RateLimiterModuleParameters.struct_class = Types::RateLimiterModuleParameters

    RejectLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    RejectLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    RejectLinkRequest.struct_class = Types::RejectLinkRequest

    RejectLinkResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    RejectLinkResponse.add_member(:peer_gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "peerGatewayId"))
    RejectLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    RejectLinkResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    RejectLinkResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    RejectLinkResponse.add_member(:direction, Shapes::ShapeRef.new(shape: LinkDirection, location_name: "direction"))
    RejectLinkResponse.add_member(:flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "flowModules"))
    RejectLinkResponse.add_member(:pending_flow_modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, location_name: "pendingFlowModules"))
    RejectLinkResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: LinkAttributes, location_name: "attributes"))
    RejectLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    RejectLinkResponse.struct_class = Types::RejectLinkResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponderErrorMasking.member = Shapes::ShapeRef.new(shape: ResponderErrorMaskingForHttpCode)

    ResponderErrorMaskingForHttpCode.add_member(:http_code, Shapes::ShapeRef.new(shape: ResponderErrorMaskingForHttpCodeHttpCodeString, required: true, location_name: "httpCode"))
    ResponderErrorMaskingForHttpCode.add_member(:action, Shapes::ShapeRef.new(shape: ResponderErrorMaskingAction, required: true, location_name: "action"))
    ResponderErrorMaskingForHttpCode.add_member(:logging_types, Shapes::ShapeRef.new(shape: ResponderErrorMaskingLoggingTypes, required: true, location_name: "loggingTypes"))
    ResponderErrorMaskingForHttpCode.add_member(:response_logging_percentage, Shapes::ShapeRef.new(shape: ResponderErrorMaskingForHttpCodeResponseLoggingPercentageFloat, location_name: "responseLoggingPercentage"))
    ResponderErrorMaskingForHttpCode.struct_class = Types::ResponderErrorMaskingForHttpCode

    ResponderErrorMaskingLoggingTypes.member = Shapes::ShapeRef.new(shape: ResponderErrorMaskingLoggingType)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RtbTaggableResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrustStoreConfiguration.add_member(:certificate_authority_certificates, Shapes::ShapeRef.new(shape: CertificateAuthorityCertificates, required: true, location_name: "certificateAuthorityCertificates"))
    TrustStoreConfiguration.struct_class = Types::TrustStoreConfiguration

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: RtbTaggableResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLinkModuleFlowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateLinkModuleFlowRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    UpdateLinkModuleFlowRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    UpdateLinkModuleFlowRequest.add_member(:modules, Shapes::ShapeRef.new(shape: ModuleConfigurationList, required: true, location_name: "modules"))
    UpdateLinkModuleFlowRequest.struct_class = Types::UpdateLinkModuleFlowRequest

    UpdateLinkModuleFlowResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    UpdateLinkModuleFlowResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    UpdateLinkModuleFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    UpdateLinkModuleFlowResponse.struct_class = Types::UpdateLinkModuleFlowResponse

    UpdateLinkRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    UpdateLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location: "uri", location_name: "linkId"))
    UpdateLinkRequest.add_member(:log_settings, Shapes::ShapeRef.new(shape: LinkLogSettings, location_name: "logSettings"))
    UpdateLinkRequest.struct_class = Types::UpdateLinkRequest

    UpdateLinkResponse.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "linkId"))
    UpdateLinkResponse.add_member(:status, Shapes::ShapeRef.new(shape: LinkStatus, required: true, location_name: "status"))
    UpdateLinkResponse.struct_class = Types::UpdateLinkResponse

    UpdateRequesterGatewayRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateRequesterGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    UpdateRequesterGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateRequesterGatewayRequestDescriptionString, location_name: "description"))
    UpdateRequesterGatewayRequest.struct_class = Types::UpdateRequesterGatewayRequest

    UpdateRequesterGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    UpdateRequesterGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: RequesterGatewayStatus, required: true, location_name: "status"))
    UpdateRequesterGatewayResponse.struct_class = Types::UpdateRequesterGatewayResponse

    UpdateResponderGatewayRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    UpdateResponderGatewayRequest.add_member(:port, Shapes::ShapeRef.new(shape: UpdateResponderGatewayRequestPortInteger, required: true, location_name: "port"))
    UpdateResponderGatewayRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    UpdateResponderGatewayRequest.add_member(:trust_store_configuration, Shapes::ShapeRef.new(shape: TrustStoreConfiguration, location_name: "trustStoreConfiguration"))
    UpdateResponderGatewayRequest.add_member(:managed_endpoint_configuration, Shapes::ShapeRef.new(shape: ManagedEndpointConfiguration, location_name: "managedEndpointConfiguration"))
    UpdateResponderGatewayRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateResponderGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location: "uri", location_name: "gatewayId"))
    UpdateResponderGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateResponderGatewayRequestDescriptionString, location_name: "description"))
    UpdateResponderGatewayRequest.struct_class = Types::UpdateResponderGatewayRequest

    UpdateResponderGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    UpdateResponderGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResponderGatewayStatus, required: true, location_name: "status"))
    UpdateResponderGatewayResponse.struct_class = Types::UpdateResponderGatewayResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-05-15"

      api.metadata = {
        "apiVersion" => "2023-05-15",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "rtbfabric",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "RTBFabric",
        "serviceFullName" => "RTBFabric",
        "serviceId" => "RTBFabric",
        "signatureVersion" => "v4",
        "signingName" => "rtbfabric",
        "uid" => "rtbfabric-2023-05-15",
      }

      api.add_operation(:accept_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptLink"
        o.http_method = "POST"
        o.http_request_uri = "/gateway/{gatewayId}/link/{linkId}/accept"
        o.input = Shapes::ShapeRef.new(shape: AcceptLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_inbound_external_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInboundExternalLink"
        o.http_method = "POST"
        o.http_request_uri = "/responder-gateway/{gatewayId}/inbound-external-link"
        o.input = Shapes::ShapeRef.new(shape: CreateInboundExternalLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInboundExternalLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLink"
        o.http_method = "POST"
        o.http_request_uri = "/gateway/{gatewayId}/create-link"
        o.input = Shapes::ShapeRef.new(shape: CreateLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_outbound_external_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOutboundExternalLink"
        o.http_method = "POST"
        o.http_request_uri = "/requester-gateway/{gatewayId}/outbound-external-link"
        o.input = Shapes::ShapeRef.new(shape: CreateOutboundExternalLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOutboundExternalLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_requester_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRequesterGateway"
        o.http_method = "POST"
        o.http_request_uri = "/requester-gateway"
        o.input = Shapes::ShapeRef.new(shape: CreateRequesterGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRequesterGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_responder_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResponderGateway"
        o.http_method = "POST"
        o.http_request_uri = "/responder-gateway"
        o.input = Shapes::ShapeRef.new(shape: CreateResponderGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResponderGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_inbound_external_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInboundExternalLink"
        o.http_method = "DELETE"
        o.http_request_uri = "/responder-gateway/{gatewayId}/inbound-external-link/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInboundExternalLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInboundExternalLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLink"
        o.http_method = "DELETE"
        o.http_request_uri = "/gateway/{gatewayId}/link/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_outbound_external_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOutboundExternalLink"
        o.http_method = "DELETE"
        o.http_request_uri = "/requester-gateway/{gatewayId}/outbound-external-link/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOutboundExternalLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOutboundExternalLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_requester_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRequesterGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/requester-gateway/{gatewayId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRequesterGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRequesterGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_responder_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResponderGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/responder-gateway/{gatewayId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResponderGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResponderGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_inbound_external_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInboundExternalLink"
        o.http_method = "GET"
        o.http_request_uri = "/responder-gateway/{gatewayId}/inbound-external-link/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: GetInboundExternalLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInboundExternalLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLink"
        o.http_method = "GET"
        o.http_request_uri = "/gateway/{gatewayId}/link/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: GetLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_outbound_external_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOutboundExternalLink"
        o.http_method = "GET"
        o.http_request_uri = "/requester-gateway/{gatewayId}/outbound-external-link/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: GetOutboundExternalLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOutboundExternalLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_requester_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRequesterGateway"
        o.http_method = "GET"
        o.http_request_uri = "/requester-gateway/{gatewayId}"
        o.input = Shapes::ShapeRef.new(shape: GetRequesterGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRequesterGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_responder_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResponderGateway"
        o.http_method = "GET"
        o.http_request_uri = "/responder-gateway/{gatewayId}"
        o.input = Shapes::ShapeRef.new(shape: GetResponderGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResponderGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLinks"
        o.http_method = "GET"
        o.http_request_uri = "/gateway/{gatewayId}/links/"
        o.input = Shapes::ShapeRef.new(shape: ListLinksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLinksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_requester_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRequesterGateways"
        o.http_method = "GET"
        o.http_request_uri = "/requester-gateways"
        o.input = Shapes::ShapeRef.new(shape: ListRequesterGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRequesterGatewaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_responder_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResponderGateways"
        o.http_method = "GET"
        o.http_request_uri = "/responder-gateways"
        o.input = Shapes::ShapeRef.new(shape: ListResponderGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResponderGatewaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:reject_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectLink"
        o.http_method = "POST"
        o.http_request_uri = "/gateway/{gatewayId}/link/{linkId}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLink"
        o.http_method = "PATCH"
        o.http_request_uri = "/gateway/{gatewayId}/link/{linkId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLinkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_link_module_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLinkModuleFlow"
        o.http_method = "POST"
        o.http_request_uri = "/gateway/{gatewayId}/link/{linkId}/module-flow"
        o.input = Shapes::ShapeRef.new(shape: UpdateLinkModuleFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLinkModuleFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_requester_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRequesterGateway"
        o.http_method = "POST"
        o.http_request_uri = "/requester-gateway/{gatewayId}/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateRequesterGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRequesterGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_responder_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResponderGateway"
        o.http_method = "POST"
        o.http_request_uri = "/responder-gateway/{gatewayId}/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateResponderGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResponderGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
