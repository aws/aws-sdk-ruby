# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GlobalAccelerator
  # @api private
  module ClientApi

    include Seahorse::Model

    Accelerator = Shapes::StructureShape.new(name: 'Accelerator')
    AcceleratorAttributes = Shapes::StructureShape.new(name: 'AcceleratorAttributes')
    AcceleratorNotDisabledException = Shapes::StructureShape.new(name: 'AcceleratorNotDisabledException')
    AcceleratorNotFoundException = Shapes::StructureShape.new(name: 'AcceleratorNotFoundException')
    AcceleratorStatus = Shapes::StringShape.new(name: 'AcceleratorStatus')
    Accelerators = Shapes::ListShape.new(name: 'Accelerators')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AdvertiseByoipCidrRequest = Shapes::StructureShape.new(name: 'AdvertiseByoipCidrRequest')
    AdvertiseByoipCidrResponse = Shapes::StructureShape.new(name: 'AdvertiseByoipCidrResponse')
    AssociatedEndpointGroupFoundException = Shapes::StructureShape.new(name: 'AssociatedEndpointGroupFoundException')
    AssociatedListenerFoundException = Shapes::StructureShape.new(name: 'AssociatedListenerFoundException')
    ByoipCidr = Shapes::StructureShape.new(name: 'ByoipCidr')
    ByoipCidrEvent = Shapes::StructureShape.new(name: 'ByoipCidrEvent')
    ByoipCidrEvents = Shapes::ListShape.new(name: 'ByoipCidrEvents')
    ByoipCidrNotFoundException = Shapes::StructureShape.new(name: 'ByoipCidrNotFoundException')
    ByoipCidrState = Shapes::StringShape.new(name: 'ByoipCidrState')
    ByoipCidrs = Shapes::ListShape.new(name: 'ByoipCidrs')
    CidrAuthorizationContext = Shapes::StructureShape.new(name: 'CidrAuthorizationContext')
    ClientAffinity = Shapes::StringShape.new(name: 'ClientAffinity')
    CreateAcceleratorRequest = Shapes::StructureShape.new(name: 'CreateAcceleratorRequest')
    CreateAcceleratorResponse = Shapes::StructureShape.new(name: 'CreateAcceleratorResponse')
    CreateEndpointGroupRequest = Shapes::StructureShape.new(name: 'CreateEndpointGroupRequest')
    CreateEndpointGroupResponse = Shapes::StructureShape.new(name: 'CreateEndpointGroupResponse')
    CreateListenerRequest = Shapes::StructureShape.new(name: 'CreateListenerRequest')
    CreateListenerResponse = Shapes::StructureShape.new(name: 'CreateListenerResponse')
    DeleteAcceleratorRequest = Shapes::StructureShape.new(name: 'DeleteAcceleratorRequest')
    DeleteEndpointGroupRequest = Shapes::StructureShape.new(name: 'DeleteEndpointGroupRequest')
    DeleteListenerRequest = Shapes::StructureShape.new(name: 'DeleteListenerRequest')
    DeprovisionByoipCidrRequest = Shapes::StructureShape.new(name: 'DeprovisionByoipCidrRequest')
    DeprovisionByoipCidrResponse = Shapes::StructureShape.new(name: 'DeprovisionByoipCidrResponse')
    DescribeAcceleratorAttributesRequest = Shapes::StructureShape.new(name: 'DescribeAcceleratorAttributesRequest')
    DescribeAcceleratorAttributesResponse = Shapes::StructureShape.new(name: 'DescribeAcceleratorAttributesResponse')
    DescribeAcceleratorRequest = Shapes::StructureShape.new(name: 'DescribeAcceleratorRequest')
    DescribeAcceleratorResponse = Shapes::StructureShape.new(name: 'DescribeAcceleratorResponse')
    DescribeEndpointGroupRequest = Shapes::StructureShape.new(name: 'DescribeEndpointGroupRequest')
    DescribeEndpointGroupResponse = Shapes::StructureShape.new(name: 'DescribeEndpointGroupResponse')
    DescribeListenerRequest = Shapes::StructureShape.new(name: 'DescribeListenerRequest')
    DescribeListenerResponse = Shapes::StructureShape.new(name: 'DescribeListenerResponse')
    EndpointConfiguration = Shapes::StructureShape.new(name: 'EndpointConfiguration')
    EndpointConfigurations = Shapes::ListShape.new(name: 'EndpointConfigurations')
    EndpointDescription = Shapes::StructureShape.new(name: 'EndpointDescription')
    EndpointDescriptions = Shapes::ListShape.new(name: 'EndpointDescriptions')
    EndpointGroup = Shapes::StructureShape.new(name: 'EndpointGroup')
    EndpointGroupAlreadyExistsException = Shapes::StructureShape.new(name: 'EndpointGroupAlreadyExistsException')
    EndpointGroupNotFoundException = Shapes::StructureShape.new(name: 'EndpointGroupNotFoundException')
    EndpointGroups = Shapes::ListShape.new(name: 'EndpointGroups')
    EndpointWeight = Shapes::IntegerShape.new(name: 'EndpointWeight')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GenericBoolean = Shapes::BooleanShape.new(name: 'GenericBoolean')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    HealthCheckIntervalSeconds = Shapes::IntegerShape.new(name: 'HealthCheckIntervalSeconds')
    HealthCheckPort = Shapes::IntegerShape.new(name: 'HealthCheckPort')
    HealthCheckProtocol = Shapes::StringShape.new(name: 'HealthCheckProtocol')
    HealthState = Shapes::StringShape.new(name: 'HealthState')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    IncorrectCidrStateException = Shapes::StructureShape.new(name: 'IncorrectCidrStateException')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidPortRangeException = Shapes::StructureShape.new(name: 'InvalidPortRangeException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    IpAddresses = Shapes::ListShape.new(name: 'IpAddresses')
    IpSet = Shapes::StructureShape.new(name: 'IpSet')
    IpSets = Shapes::ListShape.new(name: 'IpSets')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAcceleratorsRequest = Shapes::StructureShape.new(name: 'ListAcceleratorsRequest')
    ListAcceleratorsResponse = Shapes::StructureShape.new(name: 'ListAcceleratorsResponse')
    ListByoipCidrsRequest = Shapes::StructureShape.new(name: 'ListByoipCidrsRequest')
    ListByoipCidrsResponse = Shapes::StructureShape.new(name: 'ListByoipCidrsResponse')
    ListEndpointGroupsRequest = Shapes::StructureShape.new(name: 'ListEndpointGroupsRequest')
    ListEndpointGroupsResponse = Shapes::StructureShape.new(name: 'ListEndpointGroupsResponse')
    ListListenersRequest = Shapes::StructureShape.new(name: 'ListListenersRequest')
    ListListenersResponse = Shapes::StructureShape.new(name: 'ListListenersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Listener = Shapes::StructureShape.new(name: 'Listener')
    ListenerNotFoundException = Shapes::StructureShape.new(name: 'ListenerNotFoundException')
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    PortRanges = Shapes::ListShape.new(name: 'PortRanges')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    ProvisionByoipCidrRequest = Shapes::StructureShape.new(name: 'ProvisionByoipCidrRequest')
    ProvisionByoipCidrResponse = Shapes::StructureShape.new(name: 'ProvisionByoipCidrResponse')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    ThresholdCount = Shapes::IntegerShape.new(name: 'ThresholdCount')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrafficDialPercentage = Shapes::FloatShape.new(name: 'TrafficDialPercentage')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAcceleratorAttributesRequest = Shapes::StructureShape.new(name: 'UpdateAcceleratorAttributesRequest')
    UpdateAcceleratorAttributesResponse = Shapes::StructureShape.new(name: 'UpdateAcceleratorAttributesResponse')
    UpdateAcceleratorRequest = Shapes::StructureShape.new(name: 'UpdateAcceleratorRequest')
    UpdateAcceleratorResponse = Shapes::StructureShape.new(name: 'UpdateAcceleratorResponse')
    UpdateEndpointGroupRequest = Shapes::StructureShape.new(name: 'UpdateEndpointGroupRequest')
    UpdateEndpointGroupResponse = Shapes::StructureShape.new(name: 'UpdateEndpointGroupResponse')
    UpdateListenerRequest = Shapes::StructureShape.new(name: 'UpdateListenerRequest')
    UpdateListenerResponse = Shapes::StructureShape.new(name: 'UpdateListenerResponse')
    WithdrawByoipCidrRequest = Shapes::StructureShape.new(name: 'WithdrawByoipCidrRequest')
    WithdrawByoipCidrResponse = Shapes::StructureShape.new(name: 'WithdrawByoipCidrResponse')

    Accelerator.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    Accelerator.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    Accelerator.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    Accelerator.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    Accelerator.add_member(:ip_sets, Shapes::ShapeRef.new(shape: IpSets, location_name: "IpSets"))
    Accelerator.add_member(:dns_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "DnsName"))
    Accelerator.add_member(:status, Shapes::ShapeRef.new(shape: AcceleratorStatus, location_name: "Status"))
    Accelerator.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Accelerator.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Accelerator.struct_class = Types::Accelerator

    AcceleratorAttributes.add_member(:flow_logs_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    AcceleratorAttributes.add_member(:flow_logs_s3_bucket, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    AcceleratorAttributes.add_member(:flow_logs_s3_prefix, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    AcceleratorAttributes.struct_class = Types::AcceleratorAttributes

    AcceleratorNotDisabledException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AcceleratorNotDisabledException.struct_class = Types::AcceleratorNotDisabledException

    AcceleratorNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AcceleratorNotFoundException.struct_class = Types::AcceleratorNotFoundException

    Accelerators.member = Shapes::ShapeRef.new(shape: Accelerator)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AdvertiseByoipCidrRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Cidr"))
    AdvertiseByoipCidrRequest.struct_class = Types::AdvertiseByoipCidrRequest

    AdvertiseByoipCidrResponse.add_member(:byoip_cidr, Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    AdvertiseByoipCidrResponse.struct_class = Types::AdvertiseByoipCidrResponse

    AssociatedEndpointGroupFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AssociatedEndpointGroupFoundException.struct_class = Types::AssociatedEndpointGroupFoundException

    AssociatedListenerFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AssociatedListenerFoundException.struct_class = Types::AssociatedListenerFoundException

    ByoipCidr.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr"))
    ByoipCidr.add_member(:state, Shapes::ShapeRef.new(shape: ByoipCidrState, location_name: "State"))
    ByoipCidr.add_member(:events, Shapes::ShapeRef.new(shape: ByoipCidrEvents, location_name: "Events"))
    ByoipCidr.struct_class = Types::ByoipCidr

    ByoipCidrEvent.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "Message"))
    ByoipCidrEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    ByoipCidrEvent.struct_class = Types::ByoipCidrEvent

    ByoipCidrEvents.member = Shapes::ShapeRef.new(shape: ByoipCidrEvent)

    ByoipCidrNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ByoipCidrNotFoundException.struct_class = Types::ByoipCidrNotFoundException

    ByoipCidrs.member = Shapes::ShapeRef.new(shape: ByoipCidr)

    CidrAuthorizationContext.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    CidrAuthorizationContext.add_member(:signature, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Signature"))
    CidrAuthorizationContext.struct_class = Types::CidrAuthorizationContext

    CreateAcceleratorRequest.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Name"))
    CreateAcceleratorRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CreateAcceleratorRequest.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    CreateAcceleratorRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    CreateAcceleratorRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateAcceleratorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAcceleratorRequest.struct_class = Types::CreateAcceleratorRequest

    CreateAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    CreateAcceleratorResponse.struct_class = Types::CreateAcceleratorResponse

    CreateEndpointGroupRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    CreateEndpointGroupRequest.add_member(:endpoint_group_region, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupRegion"))
    CreateEndpointGroupRequest.add_member(:endpoint_configurations, Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: "EndpointConfigurations"))
    CreateEndpointGroupRequest.add_member(:traffic_dial_percentage, Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    CreateEndpointGroupRequest.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    CreateEndpointGroupRequest.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    CreateEndpointGroupRequest.add_member(:health_check_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "HealthCheckPath"))
    CreateEndpointGroupRequest.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    CreateEndpointGroupRequest.add_member(:threshold_count, Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    CreateEndpointGroupRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateEndpointGroupRequest.struct_class = Types::CreateEndpointGroupRequest

    CreateEndpointGroupResponse.add_member(:endpoint_group, Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    CreateEndpointGroupResponse.struct_class = Types::CreateEndpointGroupResponse

    CreateListenerRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    CreateListenerRequest.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, required: true, location_name: "PortRanges"))
    CreateListenerRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "Protocol"))
    CreateListenerRequest.add_member(:client_affinity, Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    CreateListenerRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken"=>true}))
    CreateListenerRequest.struct_class = Types::CreateListenerRequest

    CreateListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    CreateListenerResponse.struct_class = Types::CreateListenerResponse

    DeleteAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DeleteAcceleratorRequest.struct_class = Types::DeleteAcceleratorRequest

    DeleteEndpointGroupRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    DeleteEndpointGroupRequest.struct_class = Types::DeleteEndpointGroupRequest

    DeleteListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    DeleteListenerRequest.struct_class = Types::DeleteListenerRequest

    DeprovisionByoipCidrRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Cidr"))
    DeprovisionByoipCidrRequest.struct_class = Types::DeprovisionByoipCidrRequest

    DeprovisionByoipCidrResponse.add_member(:byoip_cidr, Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    DeprovisionByoipCidrResponse.struct_class = Types::DeprovisionByoipCidrResponse

    DescribeAcceleratorAttributesRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DescribeAcceleratorAttributesRequest.struct_class = Types::DescribeAcceleratorAttributesRequest

    DescribeAcceleratorAttributesResponse.add_member(:accelerator_attributes, Shapes::ShapeRef.new(shape: AcceleratorAttributes, location_name: "AcceleratorAttributes"))
    DescribeAcceleratorAttributesResponse.struct_class = Types::DescribeAcceleratorAttributesResponse

    DescribeAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DescribeAcceleratorRequest.struct_class = Types::DescribeAcceleratorRequest

    DescribeAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    DescribeAcceleratorResponse.struct_class = Types::DescribeAcceleratorResponse

    DescribeEndpointGroupRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    DescribeEndpointGroupRequest.struct_class = Types::DescribeEndpointGroupRequest

    DescribeEndpointGroupResponse.add_member(:endpoint_group, Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    DescribeEndpointGroupResponse.struct_class = Types::DescribeEndpointGroupResponse

    DescribeListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    DescribeListenerRequest.struct_class = Types::DescribeListenerRequest

    DescribeListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    DescribeListenerResponse.struct_class = Types::DescribeListenerResponse

    EndpointConfiguration.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    EndpointConfiguration.add_member(:weight, Shapes::ShapeRef.new(shape: EndpointWeight, location_name: "Weight"))
    EndpointConfiguration.add_member(:client_ip_preservation_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "ClientIPPreservationEnabled"))
    EndpointConfiguration.struct_class = Types::EndpointConfiguration

    EndpointConfigurations.member = Shapes::ShapeRef.new(shape: EndpointConfiguration)

    EndpointDescription.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    EndpointDescription.add_member(:weight, Shapes::ShapeRef.new(shape: EndpointWeight, location_name: "Weight"))
    EndpointDescription.add_member(:health_state, Shapes::ShapeRef.new(shape: HealthState, location_name: "HealthState"))
    EndpointDescription.add_member(:health_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "HealthReason"))
    EndpointDescription.add_member(:client_ip_preservation_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "ClientIPPreservationEnabled"))
    EndpointDescription.struct_class = Types::EndpointDescription

    EndpointDescriptions.member = Shapes::ShapeRef.new(shape: EndpointDescription)

    EndpointGroup.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    EndpointGroup.add_member(:endpoint_group_region, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion"))
    EndpointGroup.add_member(:endpoint_descriptions, Shapes::ShapeRef.new(shape: EndpointDescriptions, location_name: "EndpointDescriptions"))
    EndpointGroup.add_member(:traffic_dial_percentage, Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    EndpointGroup.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    EndpointGroup.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    EndpointGroup.add_member(:health_check_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "HealthCheckPath"))
    EndpointGroup.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    EndpointGroup.add_member(:threshold_count, Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    EndpointGroup.struct_class = Types::EndpointGroup

    EndpointGroupAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointGroupAlreadyExistsException.struct_class = Types::EndpointGroupAlreadyExistsException

    EndpointGroupNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointGroupNotFoundException.struct_class = Types::EndpointGroupNotFoundException

    EndpointGroups.member = Shapes::ShapeRef.new(shape: EndpointGroup)

    IncorrectCidrStateException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IncorrectCidrStateException.struct_class = Types::IncorrectCidrStateException

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidPortRangeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidPortRangeException.struct_class = Types::InvalidPortRangeException

    IpAddresses.member = Shapes::ShapeRef.new(shape: IpAddress)

    IpSet.add_member(:ip_family, Shapes::ShapeRef.new(shape: GenericString, location_name: "IpFamily"))
    IpSet.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    IpSet.struct_class = Types::IpSet

    IpSets.member = Shapes::ShapeRef.new(shape: IpSet)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAcceleratorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAcceleratorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListAcceleratorsRequest.struct_class = Types::ListAcceleratorsRequest

    ListAcceleratorsResponse.add_member(:accelerators, Shapes::ShapeRef.new(shape: Accelerators, location_name: "Accelerators"))
    ListAcceleratorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListAcceleratorsResponse.struct_class = Types::ListAcceleratorsResponse

    ListByoipCidrsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListByoipCidrsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListByoipCidrsRequest.struct_class = Types::ListByoipCidrsRequest

    ListByoipCidrsResponse.add_member(:byoip_cidrs, Shapes::ShapeRef.new(shape: ByoipCidrs, location_name: "ByoipCidrs"))
    ListByoipCidrsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListByoipCidrsResponse.struct_class = Types::ListByoipCidrsResponse

    ListEndpointGroupsRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    ListEndpointGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEndpointGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListEndpointGroupsRequest.struct_class = Types::ListEndpointGroupsRequest

    ListEndpointGroupsResponse.add_member(:endpoint_groups, Shapes::ShapeRef.new(shape: EndpointGroups, location_name: "EndpointGroups"))
    ListEndpointGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListEndpointGroupsResponse.struct_class = Types::ListEndpointGroupsResponse

    ListListenersRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    ListListenersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListListenersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListListenersRequest.struct_class = Types::ListListenersRequest

    ListListenersResponse.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    ListListenersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListListenersResponse.struct_class = Types::ListListenersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Listener.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn"))
    Listener.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges"))
    Listener.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    Listener.add_member(:client_affinity, Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    Listener.struct_class = Types::Listener

    ListenerNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ListenerNotFoundException.struct_class = Types::ListenerNotFoundException

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    PortRange.add_member(:from_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "FromPort"))
    PortRange.add_member(:to_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "ToPort"))
    PortRange.struct_class = Types::PortRange

    PortRanges.member = Shapes::ShapeRef.new(shape: PortRange)

    ProvisionByoipCidrRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Cidr"))
    ProvisionByoipCidrRequest.add_member(:cidr_authorization_context, Shapes::ShapeRef.new(shape: CidrAuthorizationContext, required: true, location_name: "CidrAuthorizationContext"))
    ProvisionByoipCidrRequest.struct_class = Types::ProvisionByoipCidrRequest

    ProvisionByoipCidrResponse.add_member(:byoip_cidr, Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    ProvisionByoipCidrResponse.struct_class = Types::ProvisionByoipCidrResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAcceleratorAttributesRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_s3_bucket, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_s3_prefix, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    UpdateAcceleratorAttributesRequest.struct_class = Types::UpdateAcceleratorAttributesRequest

    UpdateAcceleratorAttributesResponse.add_member(:accelerator_attributes, Shapes::ShapeRef.new(shape: AcceleratorAttributes, location_name: "AcceleratorAttributes"))
    UpdateAcceleratorAttributesResponse.struct_class = Types::UpdateAcceleratorAttributesResponse

    UpdateAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    UpdateAcceleratorRequest.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    UpdateAcceleratorRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    UpdateAcceleratorRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    UpdateAcceleratorRequest.struct_class = Types::UpdateAcceleratorRequest

    UpdateAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    UpdateAcceleratorResponse.struct_class = Types::UpdateAcceleratorResponse

    UpdateEndpointGroupRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    UpdateEndpointGroupRequest.add_member(:endpoint_configurations, Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: "EndpointConfigurations"))
    UpdateEndpointGroupRequest.add_member(:traffic_dial_percentage, Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    UpdateEndpointGroupRequest.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    UpdateEndpointGroupRequest.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    UpdateEndpointGroupRequest.add_member(:health_check_path, Shapes::ShapeRef.new(shape: GenericString, location_name: "HealthCheckPath"))
    UpdateEndpointGroupRequest.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    UpdateEndpointGroupRequest.add_member(:threshold_count, Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    UpdateEndpointGroupRequest.struct_class = Types::UpdateEndpointGroupRequest

    UpdateEndpointGroupResponse.add_member(:endpoint_group, Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    UpdateEndpointGroupResponse.struct_class = Types::UpdateEndpointGroupResponse

    UpdateListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    UpdateListenerRequest.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges"))
    UpdateListenerRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    UpdateListenerRequest.add_member(:client_affinity, Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    UpdateListenerRequest.struct_class = Types::UpdateListenerRequest

    UpdateListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    UpdateListenerResponse.struct_class = Types::UpdateListenerResponse

    WithdrawByoipCidrRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Cidr"))
    WithdrawByoipCidrRequest.struct_class = Types::WithdrawByoipCidrRequest

    WithdrawByoipCidrResponse.add_member(:byoip_cidr, Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    WithdrawByoipCidrResponse.struct_class = Types::WithdrawByoipCidrResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-08-08"

      api.metadata = {
        "apiVersion" => "2018-08-08",
        "endpointPrefix" => "globalaccelerator",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Global Accelerator",
        "serviceId" => "Global Accelerator",
        "signatureVersion" => "v4",
        "signingName" => "globalaccelerator",
        "targetPrefix" => "GlobalAccelerator_V20180706",
        "uid" => "globalaccelerator-2018-08-08",
      }

      api.add_operation(:advertise_byoip_cidr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdvertiseByoipCidr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdvertiseByoipCidrRequest)
        o.output = Shapes::ShapeRef.new(shape: AdvertiseByoipCidrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
      end)

      api.add_operation(:create_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: AssociatedListenerFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:delete_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AssociatedEndpointGroupFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:deprovision_byoip_cidr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeprovisionByoipCidr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeprovisionByoipCidrRequest)
        o.output = Shapes::ShapeRef.new(shape: DeprovisionByoipCidrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
      end)

      api.add_operation(:describe_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_accelerator_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAcceleratorAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcceleratorAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcceleratorAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:describe_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_accelerators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccelerators"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAcceleratorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAcceleratorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_byoip_cidrs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListByoipCidrs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListByoipCidrsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListByoipCidrsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:list_endpoint_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpointGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_listeners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListListeners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListListenersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListListenersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:provision_byoip_cidr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ProvisionByoipCidr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ProvisionByoipCidrRequest)
        o.output = Shapes::ShapeRef.new(shape: ProvisionByoipCidrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:update_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:update_accelerator_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAcceleratorAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAcceleratorAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAcceleratorAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:withdraw_byoip_cidr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "WithdrawByoipCidr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: WithdrawByoipCidrRequest)
        o.output = Shapes::ShapeRef.new(shape: WithdrawByoipCidrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
      end)
    end

  end
end
