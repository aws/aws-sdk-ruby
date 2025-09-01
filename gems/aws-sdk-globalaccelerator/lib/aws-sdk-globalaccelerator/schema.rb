# frozen_string_literal: true

# This is generated code!

module Aws::GlobalAccelerator
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Accelerator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#Accelerator', name: 'Accelerator')
    AcceleratorAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AcceleratorAttributes', name: 'AcceleratorAttributes')
    AcceleratorEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AcceleratorEvent', name: 'AcceleratorEvent')
    AcceleratorEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#AcceleratorEvents', name: 'AcceleratorEvents')
    AcceleratorNotDisabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AcceleratorNotDisabledException', name: 'AcceleratorNotDisabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AcceleratorNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AcceleratorNotFoundException', name: 'AcceleratorNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AcceleratorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#AcceleratorStatus', name: 'AcceleratorStatus')
    Accelerators = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#Accelerators', name: 'Accelerators')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddCustomRoutingEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AddCustomRoutingEndpointsRequest', name: 'AddCustomRoutingEndpointsRequest')
    AddCustomRoutingEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AddCustomRoutingEndpointsResponse', name: 'AddCustomRoutingEndpointsResponse')
    AddEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AddEndpointsRequest', name: 'AddEndpointsRequest')
    AddEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AddEndpointsResponse', name: 'AddEndpointsResponse')
    AdvertiseByoipCidrRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AdvertiseByoipCidrRequest', name: 'AdvertiseByoipCidrRequest')
    AdvertiseByoipCidrResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AdvertiseByoipCidrResponse', name: 'AdvertiseByoipCidrResponse')
    AllowCustomRoutingTrafficRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AllowCustomRoutingTrafficRequest', name: 'AllowCustomRoutingTrafficRequest')
    AssociatedEndpointGroupFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AssociatedEndpointGroupFoundException', name: 'AssociatedEndpointGroupFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AssociatedListenerFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AssociatedListenerFoundException', name: 'AssociatedListenerFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Attachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#Attachment', name: 'Attachment')
    AttachmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#AttachmentName', name: 'AttachmentName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    AttachmentNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#AttachmentNotFoundException', name: 'AttachmentNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Attachments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#Attachments', name: 'Attachments')
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AwsAccountIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#AwsAccountIds', name: 'AwsAccountIds')
    ByoipCidr = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ByoipCidr', name: 'ByoipCidr')
    ByoipCidrEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ByoipCidrEvent', name: 'ByoipCidrEvent')
    ByoipCidrEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#ByoipCidrEvents', name: 'ByoipCidrEvents')
    ByoipCidrNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ByoipCidrNotFoundException', name: 'ByoipCidrNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ByoipCidrState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#ByoipCidrState', name: 'ByoipCidrState')
    ByoipCidrs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#ByoipCidrs', name: 'ByoipCidrs')
    CidrAuthorizationContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CidrAuthorizationContext', name: 'CidrAuthorizationContext')
    ClientAffinity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#ClientAffinity', name: 'ClientAffinity')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAcceleratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateAcceleratorRequest', name: 'CreateAcceleratorRequest')
    CreateAcceleratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateAcceleratorResponse', name: 'CreateAcceleratorResponse')
    CreateCrossAccountAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateCrossAccountAttachmentRequest', name: 'CreateCrossAccountAttachmentRequest')
    CreateCrossAccountAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateCrossAccountAttachmentResponse', name: 'CreateCrossAccountAttachmentResponse')
    CreateCustomRoutingAcceleratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateCustomRoutingAcceleratorRequest', name: 'CreateCustomRoutingAcceleratorRequest')
    CreateCustomRoutingAcceleratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateCustomRoutingAcceleratorResponse', name: 'CreateCustomRoutingAcceleratorResponse')
    CreateCustomRoutingEndpointGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateCustomRoutingEndpointGroupRequest', name: 'CreateCustomRoutingEndpointGroupRequest')
    CreateCustomRoutingEndpointGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateCustomRoutingEndpointGroupResponse', name: 'CreateCustomRoutingEndpointGroupResponse')
    CreateCustomRoutingListenerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateCustomRoutingListenerRequest', name: 'CreateCustomRoutingListenerRequest')
    CreateCustomRoutingListenerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateCustomRoutingListenerResponse', name: 'CreateCustomRoutingListenerResponse')
    CreateEndpointGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateEndpointGroupRequest', name: 'CreateEndpointGroupRequest')
    CreateEndpointGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateEndpointGroupResponse', name: 'CreateEndpointGroupResponse')
    CreateListenerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateListenerRequest', name: 'CreateListenerRequest')
    CreateListenerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CreateListenerResponse', name: 'CreateListenerResponse')
    CrossAccountResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CrossAccountResource', name: 'CrossAccountResource')
    CrossAccountResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CrossAccountResources', name: 'CrossAccountResources')
    CustomRoutingAccelerator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingAccelerator', name: 'CustomRoutingAccelerator')
    CustomRoutingAcceleratorAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingAcceleratorAttributes', name: 'CustomRoutingAcceleratorAttributes')
    CustomRoutingAcceleratorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingAcceleratorStatus', name: 'CustomRoutingAcceleratorStatus')
    CustomRoutingAccelerators = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingAccelerators', name: 'CustomRoutingAccelerators')
    CustomRoutingDestinationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingDestinationConfiguration', name: 'CustomRoutingDestinationConfiguration')
    CustomRoutingDestinationConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingDestinationConfigurations', name: 'CustomRoutingDestinationConfigurations', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CustomRoutingDestinationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingDestinationDescription', name: 'CustomRoutingDestinationDescription')
    CustomRoutingDestinationDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingDestinationDescriptions', name: 'CustomRoutingDestinationDescriptions')
    CustomRoutingDestinationTrafficState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingDestinationTrafficState', name: 'CustomRoutingDestinationTrafficState')
    CustomRoutingEndpointConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingEndpointConfiguration', name: 'CustomRoutingEndpointConfiguration')
    CustomRoutingEndpointConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingEndpointConfigurations', name: 'CustomRoutingEndpointConfigurations', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CustomRoutingEndpointDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingEndpointDescription', name: 'CustomRoutingEndpointDescription')
    CustomRoutingEndpointDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingEndpointDescriptions', name: 'CustomRoutingEndpointDescriptions')
    CustomRoutingEndpointGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingEndpointGroup', name: 'CustomRoutingEndpointGroup')
    CustomRoutingEndpointGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingEndpointGroups', name: 'CustomRoutingEndpointGroups')
    CustomRoutingListener = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingListener', name: 'CustomRoutingListener')
    CustomRoutingListeners = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingListeners', name: 'CustomRoutingListeners')
    CustomRoutingProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingProtocol', name: 'CustomRoutingProtocol')
    CustomRoutingProtocols = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#CustomRoutingProtocols', name: 'CustomRoutingProtocols', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    DeleteAcceleratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeleteAcceleratorRequest', name: 'DeleteAcceleratorRequest')
    DeleteCrossAccountAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeleteCrossAccountAttachmentRequest', name: 'DeleteCrossAccountAttachmentRequest')
    DeleteCustomRoutingAcceleratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeleteCustomRoutingAcceleratorRequest', name: 'DeleteCustomRoutingAcceleratorRequest')
    DeleteCustomRoutingEndpointGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeleteCustomRoutingEndpointGroupRequest', name: 'DeleteCustomRoutingEndpointGroupRequest')
    DeleteCustomRoutingListenerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeleteCustomRoutingListenerRequest', name: 'DeleteCustomRoutingListenerRequest')
    DeleteEndpointGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeleteEndpointGroupRequest', name: 'DeleteEndpointGroupRequest')
    DeleteListenerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeleteListenerRequest', name: 'DeleteListenerRequest')
    DenyCustomRoutingTrafficRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DenyCustomRoutingTrafficRequest', name: 'DenyCustomRoutingTrafficRequest')
    DeprovisionByoipCidrRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeprovisionByoipCidrRequest', name: 'DeprovisionByoipCidrRequest')
    DeprovisionByoipCidrResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DeprovisionByoipCidrResponse', name: 'DeprovisionByoipCidrResponse')
    DescribeAcceleratorAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeAcceleratorAttributesRequest', name: 'DescribeAcceleratorAttributesRequest')
    DescribeAcceleratorAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeAcceleratorAttributesResponse', name: 'DescribeAcceleratorAttributesResponse')
    DescribeAcceleratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeAcceleratorRequest', name: 'DescribeAcceleratorRequest')
    DescribeAcceleratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeAcceleratorResponse', name: 'DescribeAcceleratorResponse')
    DescribeCrossAccountAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCrossAccountAttachmentRequest', name: 'DescribeCrossAccountAttachmentRequest')
    DescribeCrossAccountAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCrossAccountAttachmentResponse', name: 'DescribeCrossAccountAttachmentResponse')
    DescribeCustomRoutingAcceleratorAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorAttributesRequest', name: 'DescribeCustomRoutingAcceleratorAttributesRequest')
    DescribeCustomRoutingAcceleratorAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorAttributesResponse', name: 'DescribeCustomRoutingAcceleratorAttributesResponse')
    DescribeCustomRoutingAcceleratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorRequest', name: 'DescribeCustomRoutingAcceleratorRequest')
    DescribeCustomRoutingAcceleratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorResponse', name: 'DescribeCustomRoutingAcceleratorResponse')
    DescribeCustomRoutingEndpointGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCustomRoutingEndpointGroupRequest', name: 'DescribeCustomRoutingEndpointGroupRequest')
    DescribeCustomRoutingEndpointGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCustomRoutingEndpointGroupResponse', name: 'DescribeCustomRoutingEndpointGroupResponse')
    DescribeCustomRoutingListenerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCustomRoutingListenerRequest', name: 'DescribeCustomRoutingListenerRequest')
    DescribeCustomRoutingListenerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeCustomRoutingListenerResponse', name: 'DescribeCustomRoutingListenerResponse')
    DescribeEndpointGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeEndpointGroupRequest', name: 'DescribeEndpointGroupRequest')
    DescribeEndpointGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeEndpointGroupResponse', name: 'DescribeEndpointGroupResponse')
    DescribeListenerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeListenerRequest', name: 'DescribeListenerRequest')
    DescribeListenerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DescribeListenerResponse', name: 'DescribeListenerResponse')
    DestinationAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#DestinationAddresses', name: 'DestinationAddresses', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DestinationPortMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#DestinationPortMapping', name: 'DestinationPortMapping')
    DestinationPortMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#DestinationPortMappings', name: 'DestinationPortMappings')
    DestinationPorts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#DestinationPorts', name: 'DestinationPorts', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    EndpointAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#EndpointAlreadyExistsException', name: 'EndpointAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#EndpointConfiguration', name: 'EndpointConfiguration')
    EndpointConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#EndpointConfigurations', name: 'EndpointConfigurations', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EndpointDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#EndpointDescription', name: 'EndpointDescription')
    EndpointDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#EndpointDescriptions', name: 'EndpointDescriptions')
    EndpointGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#EndpointGroup', name: 'EndpointGroup')
    EndpointGroupAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#EndpointGroupAlreadyExistsException', name: 'EndpointGroupAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointGroupNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#EndpointGroupNotFoundException', name: 'EndpointGroupNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#EndpointGroups', name: 'EndpointGroups')
    EndpointIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#EndpointIdentifier', name: 'EndpointIdentifier')
    EndpointIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#EndpointIdentifiers', name: 'EndpointIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EndpointIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#EndpointIds', name: 'EndpointIds')
    EndpointNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#EndpointNotFoundException', name: 'EndpointNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointWeight = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.globalaccelerator#EndpointWeight', name: 'EndpointWeight', traits: {"smithy.api#range" => {"min" => 0, "max" => 255}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#ErrorMessage', name: 'ErrorMessage')
    GenericBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.globalaccelerator#GenericBoolean', name: 'GenericBoolean')
    GenericString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#GenericString', name: 'GenericString', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    HealthCheckIntervalSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.globalaccelerator#HealthCheckIntervalSeconds', name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#range" => {"min" => 10, "max" => 30}})
    HealthCheckPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#HealthCheckPath', name: 'HealthCheckPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^/[-a-zA-Z0-9@:%_\\\\+.~#?&/=]*$"})
    HealthCheckPort = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.globalaccelerator#HealthCheckPort', name: 'HealthCheckPort', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    HealthCheckProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#HealthCheckProtocol', name: 'HealthCheckProtocol')
    HealthState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#HealthState', name: 'HealthState')
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    IncorrectCidrStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#IncorrectCidrStateException', name: 'IncorrectCidrStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    InternalServiceErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#InternalServiceErrorException', name: 'InternalServiceErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidArgumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#InvalidArgumentException', name: 'InvalidArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPortRangeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#InvalidPortRangeException', name: 'InvalidPortRangeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#IpAddress', name: 'IpAddress', traits: {"smithy.api#length" => {"min" => 0, "max" => 45}})
    IpAddressFamily = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#IpAddressFamily', name: 'IpAddressFamily')
    IpAddressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#IpAddressType', name: 'IpAddressType')
    IpAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#IpAddresses', name: 'IpAddresses', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    IpSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#IpSet', name: 'IpSet')
    IpSets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#IpSets', name: 'IpSets')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ListAcceleratorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListAcceleratorsRequest', name: 'ListAcceleratorsRequest')
    ListAcceleratorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListAcceleratorsResponse', name: 'ListAcceleratorsResponse')
    ListByoipCidrsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListByoipCidrsRequest', name: 'ListByoipCidrsRequest')
    ListByoipCidrsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListByoipCidrsResponse', name: 'ListByoipCidrsResponse')
    ListCrossAccountAttachmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCrossAccountAttachmentsRequest', name: 'ListCrossAccountAttachmentsRequest')
    ListCrossAccountAttachmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCrossAccountAttachmentsResponse', name: 'ListCrossAccountAttachmentsResponse')
    ListCrossAccountResourceAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCrossAccountResourceAccountsRequest', name: 'ListCrossAccountResourceAccountsRequest')
    ListCrossAccountResourceAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCrossAccountResourceAccountsResponse', name: 'ListCrossAccountResourceAccountsResponse')
    ListCrossAccountResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCrossAccountResourcesRequest', name: 'ListCrossAccountResourcesRequest')
    ListCrossAccountResourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCrossAccountResourcesResponse', name: 'ListCrossAccountResourcesResponse')
    ListCustomRoutingAcceleratorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingAcceleratorsRequest', name: 'ListCustomRoutingAcceleratorsRequest')
    ListCustomRoutingAcceleratorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingAcceleratorsResponse', name: 'ListCustomRoutingAcceleratorsResponse')
    ListCustomRoutingEndpointGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingEndpointGroupsRequest', name: 'ListCustomRoutingEndpointGroupsRequest')
    ListCustomRoutingEndpointGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingEndpointGroupsResponse', name: 'ListCustomRoutingEndpointGroupsResponse')
    ListCustomRoutingListenersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingListenersRequest', name: 'ListCustomRoutingListenersRequest')
    ListCustomRoutingListenersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingListenersResponse', name: 'ListCustomRoutingListenersResponse')
    ListCustomRoutingPortMappingsByDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsByDestinationRequest', name: 'ListCustomRoutingPortMappingsByDestinationRequest')
    ListCustomRoutingPortMappingsByDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsByDestinationResponse', name: 'ListCustomRoutingPortMappingsByDestinationResponse')
    ListCustomRoutingPortMappingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsRequest', name: 'ListCustomRoutingPortMappingsRequest')
    ListCustomRoutingPortMappingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsResponse', name: 'ListCustomRoutingPortMappingsResponse')
    ListEndpointGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListEndpointGroupsRequest', name: 'ListEndpointGroupsRequest')
    ListEndpointGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListEndpointGroupsResponse', name: 'ListEndpointGroupsResponse')
    ListListenersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListListenersRequest', name: 'ListListenersRequest')
    ListListenersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListListenersResponse', name: 'ListListenersResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Listener = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#Listener', name: 'Listener')
    ListenerNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ListenerNotFoundException', name: 'ListenerNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Listeners = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#Listeners', name: 'Listeners')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.globalaccelerator#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PortMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#PortMapping', name: 'PortMapping')
    PortMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#PortMappings', name: 'PortMappings')
    PortMappingsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.globalaccelerator#PortMappingsMaxResults', name: 'PortMappingsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20000}})
    PortNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.globalaccelerator#PortNumber', name: 'PortNumber', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PortOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#PortOverride', name: 'PortOverride')
    PortOverrides = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#PortOverrides', name: 'PortOverrides', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PortRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#PortRange', name: 'PortRange')
    PortRanges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#PortRanges', name: 'PortRanges', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Principal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#Principal', name: 'Principal', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(^\\d{12}$|arn:.*)$"})
    Principals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#Principals', name: 'Principals')
    Protocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.globalaccelerator#Protocol', name: 'Protocol')
    Protocols = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#Protocols', name: 'Protocols')
    ProvisionByoipCidrRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ProvisionByoipCidrRequest', name: 'ProvisionByoipCidrRequest')
    ProvisionByoipCidrResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#ProvisionByoipCidrResponse', name: 'ProvisionByoipCidrResponse')
    RemoveCustomRoutingEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#RemoveCustomRoutingEndpointsRequest', name: 'RemoveCustomRoutingEndpointsRequest')
    RemoveEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#RemoveEndpointsRequest', name: 'RemoveEndpointsRequest')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#Resource', name: 'Resource')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Resources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#Resources', name: 'Resources')
    SocketAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#SocketAddress', name: 'SocketAddress')
    SocketAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#SocketAddresses', name: 'SocketAddresses')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.globalaccelerator#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.globalaccelerator#Tags', name: 'Tags')
    ThresholdCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.globalaccelerator#ThresholdCount', name: 'ThresholdCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.globalaccelerator#Timestamp', name: 'Timestamp')
    TrafficDialPercentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.globalaccelerator#TrafficDialPercentage', name: 'TrafficDialPercentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    TransactionInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#TransactionInProgressException', name: 'TransactionInProgressException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAcceleratorAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateAcceleratorAttributesRequest', name: 'UpdateAcceleratorAttributesRequest')
    UpdateAcceleratorAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateAcceleratorAttributesResponse', name: 'UpdateAcceleratorAttributesResponse')
    UpdateAcceleratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateAcceleratorRequest', name: 'UpdateAcceleratorRequest')
    UpdateAcceleratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateAcceleratorResponse', name: 'UpdateAcceleratorResponse')
    UpdateCrossAccountAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateCrossAccountAttachmentRequest', name: 'UpdateCrossAccountAttachmentRequest')
    UpdateCrossAccountAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateCrossAccountAttachmentResponse', name: 'UpdateCrossAccountAttachmentResponse')
    UpdateCustomRoutingAcceleratorAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorAttributesRequest', name: 'UpdateCustomRoutingAcceleratorAttributesRequest')
    UpdateCustomRoutingAcceleratorAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorAttributesResponse', name: 'UpdateCustomRoutingAcceleratorAttributesResponse')
    UpdateCustomRoutingAcceleratorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorRequest', name: 'UpdateCustomRoutingAcceleratorRequest')
    UpdateCustomRoutingAcceleratorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorResponse', name: 'UpdateCustomRoutingAcceleratorResponse')
    UpdateCustomRoutingListenerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateCustomRoutingListenerRequest', name: 'UpdateCustomRoutingListenerRequest')
    UpdateCustomRoutingListenerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateCustomRoutingListenerResponse', name: 'UpdateCustomRoutingListenerResponse')
    UpdateEndpointGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateEndpointGroupRequest', name: 'UpdateEndpointGroupRequest')
    UpdateEndpointGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateEndpointGroupResponse', name: 'UpdateEndpointGroupResponse')
    UpdateListenerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateListenerRequest', name: 'UpdateListenerRequest')
    UpdateListenerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#UpdateListenerResponse', name: 'UpdateListenerResponse')
    WithdrawByoipCidrRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#WithdrawByoipCidrRequest', name: 'WithdrawByoipCidrRequest')
    WithdrawByoipCidrResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.globalaccelerator#WithdrawByoipCidrResponse', name: 'WithdrawByoipCidrResponse')

    Accelerator.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator.</p>"}))
    Accelerator.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the accelerator. The name must contain only alphanumeric characters or\n\t\t\thyphens (-), and must not begin or end with a hyphen.</p>"}))
    Accelerator.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that an accelerator supports. For a standard accelerator, the value can be IPV4 or DUAL_STACK.</p>"}))
    Accelerator.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p>\n         <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>"}))
    Accelerator.add_member(:ip_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: IpSets, location_name: 'IpSets', traits: {"smithy.api#documentation" => "<p>The static IP addresses that Global Accelerator associates with the accelerator.</p>"}))
    Accelerator.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DnsName', traits: {"smithy.api#documentation" => "<p>The Domain Name System (DNS) name that Global Accelerator creates that points to an accelerator's static IPv4 addresses.</p>\n         <p>The naming convention for the DNS name for an accelerator is the following: A lowercase letter a,\n\t\t\tfollowed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example:\n\t\t\ta1234567890abcdef.awsglobalaccelerator.com.</p>\n         <p>If you have a dual-stack accelerator, you also have a second DNS name, <code>DualStackDnsName</code>, that points to both \n \t\t\tthe A record and the AAAA record for all four static addresses for the accelerator: two IPv4 addresses and two IPv6 addresses.</p>\n         <p>For more information about the default DNS name, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/dns-addressing-custom-domains.dns-addressing.html\">\n\t\t\tSupport for DNS addressing in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    Accelerator.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Describes the deployment status of the accelerator.</p>"}))
    Accelerator.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the accelerator was created.</p>"}))
    Accelerator.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the accelerator was last modified.</p>"}))
    Accelerator.add_member(:dual_stack_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DualStackDnsName', traits: {"smithy.api#documentation" => "<p>The Domain Name System (DNS) name that Global Accelerator creates that points to a dual-stack accelerator's four static IP addresses:\n\t\t\ttwo IPv4 addresses and two IPv6 addresses.</p>\n         <p>The naming convention for the dual-stack DNS name is the following: A lowercase letter a,\n\t\t\tfollowed by a 16-bit random hex string, followed by .dualstack.awsglobalaccelerator.com. For example:\n\t\t\ta1234567890abcdef.dualstack.awsglobalaccelerator.com.</p>\n         <p>Note: Global Accelerator also assigns a default DNS name, <code>DnsName</code>, to your accelerator that points just to the static IPv4 addresses. </p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html#about-accelerators.dns-addressing\">\n\t\t\tSupport for DNS addressing in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    Accelerator.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorEvents, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>A history of changes that you make to an accelerator in Global Accelerator.</p>"}))
    Accelerator.type = Types::Accelerator
    AcceleratorAttributes.add_member(:flow_logs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'FlowLogsEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether flow logs are enabled. The default value is false. If the value is true,\n\t\t\t\t<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow logs</a> in\n\t\t    the <i>Global Accelerator Developer Guide</i>.</p>"}))
    AcceleratorAttributes.add_member(:flow_logs_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'FlowLogsS3Bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is\n\t\t    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the\n\t\t\tbucket.</p>"}))
    AcceleratorAttributes.add_member(:flow_logs_s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'FlowLogsS3Prefix', traits: {"smithy.api#documentation" => "<p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if\n\t\t\t\t<code>FlowLogsEnabled</code> is <code>true</code>.</p>\n         <p>If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>\n         <p>s3-bucket_name//AWSLogs/aws_account_id</p>"}))
    AcceleratorAttributes.type = Types::AcceleratorAttributes
    AcceleratorEvent.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A string that contains an <code>Event</code> message describing changes or errors\n\t\t\twhen you update an accelerator in Global Accelerator from IPv4 to dual-stack, or dual-stack to IPv4.</p>"}))
    AcceleratorEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>A timestamp for when you update an accelerator in Global Accelerator from IPv4 to dual-stack, or dual-stack to IPv4.</p>"}))
    AcceleratorEvent.type = Types::AcceleratorEvent
    AcceleratorEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorEvent)
    AcceleratorNotDisabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AcceleratorNotDisabledException.type = Types::AcceleratorNotDisabledException
    AcceleratorNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AcceleratorNotFoundException.type = Types::AcceleratorNotFoundException
    AcceleratorStatus.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYED', traits: {"smithy.api#enumValue" => "DEPLOYED"}))
    AcceleratorStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    Accelerators.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerator)
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddCustomRoutingEndpointsRequest.add_member(:endpoint_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointConfigurations, location_name: 'EndpointConfigurations', traits: {"smithy.api#documentation" => "<p>The list of endpoint objects to add to a custom routing accelerator.</p>", "smithy.api#required" => {}}))
    AddCustomRoutingEndpointsRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>", "smithy.api#required" => {}}))
    AddCustomRoutingEndpointsRequest.type = Types::AddCustomRoutingEndpointsRequest
    AddCustomRoutingEndpointsResponse.add_member(:endpoint_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescriptions, location_name: 'EndpointDescriptions', traits: {"smithy.api#documentation" => "<p>The endpoint objects added to the custom routing accelerator.</p>"}))
    AddCustomRoutingEndpointsResponse.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>"}))
    AddCustomRoutingEndpointsResponse.type = Types::AddCustomRoutingEndpointsResponse
    AddEndpointsRequest.add_member(:endpoint_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: 'EndpointConfigurations', traits: {"smithy.api#documentation" => "<p>The list of endpoint objects.</p>", "smithy.api#required" => {}}))
    AddEndpointsRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>", "smithy.api#required" => {}}))
    AddEndpointsRequest.type = Types::AddEndpointsRequest
    AddEndpointsResponse.add_member(:endpoint_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescriptions, location_name: 'EndpointDescriptions', traits: {"smithy.api#documentation" => "<p>The list of endpoint objects.</p>"}))
    AddEndpointsResponse.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>"}))
    AddEndpointsResponse.type = Types::AddEndpointsResponse
    AdvertiseByoipCidrRequest.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>The address range, in CIDR notation. This must be the exact range that you provisioned. \n\t\t\tYou can't advertise only a portion of the provisioned range.</p>\n         <p> For more information, see\n\t\t\t<a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring your own IP addresses (BYOIP)</a> in \n\t\t\tthe Global Accelerator Developer Guide.</p>", "smithy.api#required" => {}}))
    AdvertiseByoipCidrRequest.type = Types::AdvertiseByoipCidrRequest
    AdvertiseByoipCidrResponse.add_member(:byoip_cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr, location_name: 'ByoipCidr', traits: {"smithy.api#documentation" => "<p>Information about the address range.</p>"}))
    AdvertiseByoipCidrResponse.type = Types::AdvertiseByoipCidrResponse
    AllowCustomRoutingTrafficRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>", "smithy.api#required" => {}}))
    AllowCustomRoutingTrafficRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>", "smithy.api#required" => {}}))
    AllowCustomRoutingTrafficRequest.add_member(:destination_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationAddresses, location_name: 'DestinationAddresses', traits: {"smithy.api#documentation" => "<p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to allow to receive \n\t\t\ttraffic. The IP addresses must be a subset of the IP addresses that you specified for the endpoint group.</p>\n         <p>\n            <code>DestinationAddresses</code> is required if <code>AllowAllTrafficToEndpoint</code> is <code>FALSE</code> or is\n\t\tnot specified.</p>"}))
    AllowCustomRoutingTrafficRequest.add_member(:destination_ports, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPorts, location_name: 'DestinationPorts', traits: {"smithy.api#documentation" => "<p>A list of specific Amazon EC2 instance ports (destination ports) that you want to allow to receive traffic.</p>"}))
    AllowCustomRoutingTrafficRequest.add_member(:allow_all_traffic_to_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'AllowAllTrafficToEndpoint', traits: {"smithy.api#documentation" => "<p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint can receive traffic \n\t\t\tfrom a custom routing accelerator. The value is TRUE or FALSE. </p>\n         <p>When set to TRUE, <i>all</i> destinations in the custom routing VPC subnet can receive traffic. Note \n\t\t\tthat you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>\n         <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that are allowed\n\t\t\tto receive traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is\n\t\t\tthe same as the ports configured for the endpoint group.</p>\n         <p>The default value is FALSE.</p>"}))
    AllowCustomRoutingTrafficRequest.type = Types::AllowCustomRoutingTrafficRequest
    AssociatedEndpointGroupFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AssociatedEndpointGroupFoundException.type = Types::AssociatedEndpointGroupFoundException
    AssociatedListenerFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AssociatedListenerFoundException.type = Types::AssociatedListenerFoundException
    Attachment.add_member(:attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cross-account attachment.</p>"}))
    Attachment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the cross-account attachment.</p>"}))
    Attachment.add_member(:principals, Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: 'Principals', traits: {"smithy.api#documentation" => "<p>The principals included in the cross-account attachment.</p>"}))
    Attachment.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>The resources included in the cross-account attachment.</p>"}))
    Attachment.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the cross-account attachment was last modified.</p>"}))
    Attachment.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the cross-account attachment was created.</p>"}))
    Attachment.type = Types::Attachment
    AttachmentNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AttachmentNotFoundException.type = Types::AttachmentNotFoundException
    Attachments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment)
    AwsAccountIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    ByoipCidr.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>The address range, in CIDR notation.</p>\n         <p> For more information, see\n\t\t\t<a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring your own IP addresses (BYOIP)</a> in \n\t\t\tthe Global Accelerator Developer Guide.</p>"}))
    ByoipCidr.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the address pool.</p>"}))
    ByoipCidr.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrEvents, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>A history of status changes for an IP address range that you bring to Global Accelerator\n\t\t\tthrough bring your own IP address (BYOIP).</p>"}))
    ByoipCidr.type = Types::ByoipCidr
    ByoipCidrEvent.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A string that contains an <code>Event</code> message describing changes that you make in the status \n\t\t\tof an IP address range that you bring to Global Accelerator through bring your own IP address (BYOIP).</p>"}))
    ByoipCidrEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>A timestamp for when you make a status change for an IP address range that you bring to Global Accelerator through \n\t\t\tbring your own IP address (BYOIP).</p>"}))
    ByoipCidrEvent.type = Types::ByoipCidrEvent
    ByoipCidrEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrEvent)
    ByoipCidrNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ByoipCidrNotFoundException.type = Types::ByoipCidrNotFoundException
    ByoipCidrState.add_member(:pending_provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_PROVISIONING', traits: {"smithy.api#enumValue" => "PENDING_PROVISIONING"}))
    ByoipCidrState.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    ByoipCidrState.add_member(:pending_advertising, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ADVERTISING', traits: {"smithy.api#enumValue" => "PENDING_ADVERTISING"}))
    ByoipCidrState.add_member(:advertising, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADVERTISING', traits: {"smithy.api#enumValue" => "ADVERTISING"}))
    ByoipCidrState.add_member(:pending_withdrawing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_WITHDRAWING', traits: {"smithy.api#enumValue" => "PENDING_WITHDRAWING"}))
    ByoipCidrState.add_member(:pending_deprovisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DEPROVISIONING', traits: {"smithy.api#enumValue" => "PENDING_DEPROVISIONING"}))
    ByoipCidrState.add_member(:deprovisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPROVISIONED', traits: {"smithy.api#enumValue" => "DEPROVISIONED"}))
    ByoipCidrState.add_member(:failed_provision, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_PROVISION', traits: {"smithy.api#enumValue" => "FAILED_PROVISION"}))
    ByoipCidrState.add_member(:failed_advertising, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_ADVERTISING', traits: {"smithy.api#enumValue" => "FAILED_ADVERTISING"}))
    ByoipCidrState.add_member(:failed_withdraw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_WITHDRAW', traits: {"smithy.api#enumValue" => "FAILED_WITHDRAW"}))
    ByoipCidrState.add_member(:failed_deprovision, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_DEPROVISION', traits: {"smithy.api#enumValue" => "FAILED_DEPROVISION"}))
    ByoipCidrs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr)
    CidrAuthorizationContext.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The plain-text authorization message for the prefix and account.</p>", "smithy.api#required" => {}}))
    CidrAuthorizationContext.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Signature', traits: {"smithy.api#documentation" => "<p>The signed authorization message for the prefix and account.</p>", "smithy.api#required" => {}}))
    CidrAuthorizationContext.type = Types::CidrAuthorizationContext
    ClientAffinity.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ClientAffinity.add_member(:source_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_IP', traits: {"smithy.api#enumValue" => "SOURCE_IP"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAcceleratorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, \n\t\t\tperiods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>", "smithy.api#required" => {}}))
    CreateAcceleratorRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that an accelerator supports. For a standard accelerator, the value can be IPV4 or DUAL_STACK.</p>"}))
    CreateAcceleratorRequest.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose an IPv4 address \n\t\t\tfrom your own pool to use for the accelerator's static IPv4 address when you create an accelerator. </p>\n         <p>After you bring an address range to Amazon Web Services, it appears in your account as an address pool. \n\t    \tWhen you create an accelerator, you can assign one IPv4 address from your range to it. Global Accelerator assigns \n\t    \tyou a second static IPv4 address from an Amazon IP address range. If you bring two IPv4 address ranges \n\t    \tto Amazon Web Services, you can assign one IPv4 address from each range to your accelerator. This restriction is \n\t\t\tbecause Global Accelerator assigns each address range to a different network zone, for high availability.</p>\n         <p>You can specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>\n         <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new \n\t\t\taccelerator with the new addresses.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring \n\t\t    your own IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    CreateAcceleratorRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>\n         <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>"}))
    CreateAcceleratorRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the\n\t\t\tuniqueness—of an accelerator.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAcceleratorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Create tags for an accelerator.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging\n\t\t    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    CreateAcceleratorRequest.type = Types::CreateAcceleratorRequest
    CreateAcceleratorResponse.add_member(:accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerator, location_name: 'Accelerator', traits: {"smithy.api#documentation" => "<p>The accelerator that is created by specifying a listener and the supported IP address types.</p>"}))
    CreateAcceleratorResponse.type = Types::CreateAcceleratorResponse
    CreateCrossAccountAttachmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the cross-account attachment. </p>", "smithy.api#required" => {}}))
    CreateCrossAccountAttachmentRequest.add_member(:principals, Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: 'Principals', traits: {"smithy.api#documentation" => "<p>The principals to include in the cross-account attachment. A principal can be an Amazon Web Services account\n\t\t\tnumber or the Amazon Resource Name (ARN) for an accelerator. </p>"}))
    CreateCrossAccountAttachmentRequest.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) for the resources to include in the cross-account attachment. A resource can\n\t\t\tbe any supported Amazon Web Services resource type for Global Accelerator or a CIDR range for a\n\t\t\tbring your own IP address (BYOIP) address pool. </p>"}))
    CreateCrossAccountAttachmentRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the\n\t\t\tuniqueness—of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateCrossAccountAttachmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Add tags for a cross-account attachment.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging\n\t\t\tin Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    CreateCrossAccountAttachmentRequest.type = Types::CreateCrossAccountAttachmentRequest
    CreateCrossAccountAttachmentResponse.add_member(:cross_account_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'CrossAccountAttachment', traits: {"smithy.api#documentation" => "<p>Information about the cross-account attachment.</p>"}))
    CreateCrossAccountAttachmentResponse.type = Types::CreateCrossAccountAttachmentResponse
    CreateCustomRoutingAcceleratorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of a custom routing accelerator. The name can have a maximum of 64 characters, must contain \n\t\tonly alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>", "smithy.api#required" => {}}))
    CreateCustomRoutingAcceleratorRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>"}))
    CreateCustomRoutingAcceleratorRequest.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose an IPv4 address \n\t\t\tfrom your own pool to use for the accelerator's static IPv4 address when you create an accelerator. </p>\n         <p>After you bring an address range to Amazon Web Services, it appears in your account as an address pool. \n\t\t\tWhen you create an accelerator, you can assign one IPv4 address from your range to it. Global Accelerator assigns \n\t\t\tyou a second static IPv4 address from an Amazon IP address range. If you bring two IPv4 address ranges \n\t\t\tto Amazon Web Services, you can assign one IPv4 address from each range to your accelerator. This restriction is \n\t\t\tbecause Global Accelerator assigns each address range to a different network zone, for high availability.</p>\n         <p>You can specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>\n         <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new \n\t\t\taccelerator with the new addresses.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring \n\t\t\tyour own IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    CreateCustomRoutingAcceleratorRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>\n         <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>"}))
    CreateCustomRoutingAcceleratorRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that\n\t\t\tis, the uniqueness—of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateCustomRoutingAcceleratorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Create tags for an accelerator.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging\n\t    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    CreateCustomRoutingAcceleratorRequest.type = Types::CreateCustomRoutingAcceleratorRequest
    CreateCustomRoutingAcceleratorResponse.add_member(:accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: 'Accelerator', traits: {"smithy.api#documentation" => "<p>The accelerator that is created.</p>"}))
    CreateCustomRoutingAcceleratorResponse.type = Types::CreateCustomRoutingAcceleratorResponse
    CreateCustomRoutingEndpointGroupRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener for a custom routing endpoint.</p>", "smithy.api#required" => {}}))
    CreateCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_region, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region where the endpoint group is located. A listener can have only one endpoint group in a\n\t\tspecific Region.</p>", "smithy.api#required" => {}}))
    CreateCustomRoutingEndpointGroupRequest.add_member(:destination_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationConfigurations, location_name: 'DestinationConfigurations', traits: {"smithy.api#documentation" => "<p>Sets the port range and protocol for all endpoints (virtual private cloud subnets) in a custom routing endpoint group to accept \n\t\tclient traffic on.</p>", "smithy.api#required" => {}}))
    CreateCustomRoutingEndpointGroupRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the\n\t\tuniqueness—of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateCustomRoutingEndpointGroupRequest.type = Types::CreateCustomRoutingEndpointGroupRequest
    CreateCustomRoutingEndpointGroupResponse.add_member(:endpoint_group, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup, location_name: 'EndpointGroup', traits: {"smithy.api#documentation" => "<p>The information about the endpoint group created for a custom routing accelerator.</p>"}))
    CreateCustomRoutingEndpointGroupResponse.type = Types::CreateCustomRoutingEndpointGroupResponse
    CreateCustomRoutingListenerRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator for a custom routing listener.</p>", "smithy.api#required" => {}}))
    CreateCustomRoutingListenerRequest.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: 'PortRanges', traits: {"smithy.api#documentation" => "<p>The port range to support for connections from clients to your accelerator.</p>\n         <p>Separately, you set port ranges for endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html\">About \n\t\tendpoints for custom routing accelerators</a>.</p>", "smithy.api#required" => {}}))
    CreateCustomRoutingListenerRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the\n\t\tuniqueness—of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateCustomRoutingListenerRequest.type = Types::CreateCustomRoutingListenerRequest
    CreateCustomRoutingListenerResponse.add_member(:listener, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: 'Listener', traits: {"smithy.api#documentation" => "<p>The listener that you've created for a custom routing accelerator.</p>"}))
    CreateCustomRoutingListenerResponse.type = Types::CreateCustomRoutingListenerResponse
    CreateEndpointGroupRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    CreateEndpointGroupRequest.add_member(:endpoint_group_region, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region where the endpoint group is located. A listener can have only one endpoint group in a\n\t\t\tspecific Region.</p>", "smithy.api#required" => {}}))
    CreateEndpointGroupRequest.add_member(:endpoint_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: 'EndpointConfigurations', traits: {"smithy.api#documentation" => "<p>The list of endpoint objects.</p>"}))
    CreateEndpointGroupRequest.add_member(:traffic_dial_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: 'TrafficDialPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of traffic to send to an Amazon Web Services Region. Additional traffic is distributed to other endpoint groups for\n\t\t\tthis listener. </p>\n         <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is\n\t\t\tapplied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>\n         <p>The default value is 100.</p>"}))
    CreateEndpointGroupRequest.add_member(:health_check_port, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: 'HealthCheckPort', traits: {"smithy.api#documentation" => "<p>The port that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port\n\t        is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the\n\t\t\tfirst port in the list.</p>"}))
    CreateEndpointGroupRequest.add_member(:health_check_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: 'HealthCheckProtocol', traits: {"smithy.api#documentation" => "<p>The protocol that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default\n\t\t\tvalue is TCP.</p>"}))
    CreateEndpointGroupRequest.add_member(:health_check_path, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: 'HealthCheckPath', traits: {"smithy.api#documentation" => "<p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The\n\t\t\tdefault value is slash (/).</p>"}))
    CreateEndpointGroupRequest.add_member(:health_check_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>"}))
    CreateEndpointGroupRequest.add_member(:threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdCount, location_name: 'ThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an\n\t\t\tunhealthy endpoint to healthy. The default value is 3.</p>"}))
    CreateEndpointGroupRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the\n\t\t\tuniqueness—of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateEndpointGroupRequest.add_member(:port_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: PortOverrides, location_name: 'PortOverrides', traits: {"smithy.api#documentation" => "<p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group.\n\t\t\tFor example, you can create a port override in which the listener \n\t\t\treceives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 \n\t\t\tand 1443, respectively, on the endpoints.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html\">\n\t\t\tOverriding listener ports</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    CreateEndpointGroupRequest.type = Types::CreateEndpointGroupRequest
    CreateEndpointGroupResponse.add_member(:endpoint_group, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroup, location_name: 'EndpointGroup', traits: {"smithy.api#documentation" => "<p>The information about the endpoint group that was created.</p>"}))
    CreateEndpointGroupResponse.type = Types::CreateEndpointGroupResponse
    CreateListenerRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of your accelerator.</p>", "smithy.api#required" => {}}))
    CreateListenerRequest.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: 'PortRanges', traits: {"smithy.api#documentation" => "<p>The list of port ranges to support for connections from clients to your accelerator.</p>", "smithy.api#required" => {}}))
    CreateListenerRequest.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol for connections from clients to your accelerator.</p>", "smithy.api#required" => {}}))
    CreateListenerRequest.add_member(:client_affinity, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAffinity, location_name: 'ClientAffinity', traits: {"smithy.api#documentation" => "<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,\n\t\t\tregardless of the port and protocol of the client request. Client affinity gives you control over whether to always\n\t\t\troute each client to the same specific endpoint.</p>\n         <p>Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client\n\t        affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port,\n\t\t\tdestination IP address, destination port, and protocol—to select the hash value, and then chooses the best\n\t\t\tendpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not\n\t\t\tbe always routed to the same endpoint because the hash value changes. </p>\n         <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>\n\t\t    instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties—\n\t\t\tsource (client) IP address and destination IP address—to select the hash value.</p>\n         <p>The default value is <code>NONE</code>.</p>"}))
    CreateListenerRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the\n\t\t\tuniqueness—of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateListenerRequest.type = Types::CreateListenerRequest
    CreateListenerResponse.add_member(:listener, Smithy::Schema::Shapes::ShapeRef.new(shape: Listener, location_name: 'Listener', traits: {"smithy.api#documentation" => "<p>The listener that you've created.</p>"}))
    CreateListenerResponse.type = Types::CreateListenerResponse
    CrossAccountResource.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The endpoint ID for the endpoint that is listed in a cross-account attachment and\n\t\t\tcan be added to an accelerator by specified principals.</p>"}))
    CrossAccountResource.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>An IP address range, in CIDR format, that is specified as an Amazon Web Services resource. The address must\n\t\t\tbe provisioned and advertised in Global Accelerator by following the bring your own IP address (BYOIP) process \n\t\t\tfor Global Accelerator.</p>\n         <p> For more information, see\n\t\t\t<a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring your own IP addresses (BYOIP)</a> in \n\t\t\tthe Global Accelerator Developer Guide.</p>"}))
    CrossAccountResource.add_member(:attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cross-account attachment that specifies the resources (endpoints or\n\t\t\tCIDR range) that can be added to accelerators and principals that have permission to add them.</p>"}))
    CrossAccountResource.type = Types::CrossAccountResource
    CrossAccountResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CrossAccountResource)
    CustomRoutingAccelerator.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom routing accelerator.</p>"}))
    CustomRoutingAccelerator.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the accelerator. The name must contain only alphanumeric characters or\n\t\t\thyphens (-), and must not begin or end with a hyphen.</p>"}))
    CustomRoutingAccelerator.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>"}))
    CustomRoutingAccelerator.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p>\n         <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>"}))
    CustomRoutingAccelerator.add_member(:ip_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: IpSets, location_name: 'IpSets', traits: {"smithy.api#documentation" => "<p>The static IP addresses that Global Accelerator associates with the accelerator.</p>"}))
    CustomRoutingAccelerator.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DnsName', traits: {"smithy.api#documentation" => "<p>The Domain Name System (DNS) name that Global Accelerator creates that points to an accelerator's static IPv4 addresses. </p>\n         <p>The naming convention for the DNS name is the following: A lowercase letter a,\n\t\t\tfollowed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example:\n\t\t\ta1234567890abcdef.awsglobalaccelerator.com.</p>\n         <p>If you have a dual-stack accelerator, you also have a second DNS name, <code>DualStackDnsName</code>, that points to both the A record \n\t\t\tand the AAAA record for all four static addresses for the accelerator: two IPv4 addresses and two IPv6 addresses.</p>\n         <p>For more information about the default DNS name, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/dns-addressing-custom-domains.dns-addressing.html\">\n\t\t\tSupport for DNS addressing in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    CustomRoutingAccelerator.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Describes the deployment status of the accelerator.</p>"}))
    CustomRoutingAccelerator.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the accelerator was created.</p>"}))
    CustomRoutingAccelerator.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the accelerator was last modified.</p>"}))
    CustomRoutingAccelerator.type = Types::CustomRoutingAccelerator
    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'FlowLogsEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether flow logs are enabled. The default value is false. If the value is true,\n\t\t\t<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow logs</a> in\n\t\t    the <i>Global Accelerator Developer Guide</i>.</p>"}))
    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'FlowLogsS3Bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is\n\t\t    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the\n\t\t\tbucket.</p>"}))
    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'FlowLogsS3Prefix', traits: {"smithy.api#documentation" => "<p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if\n\t\t\t<code>FlowLogsEnabled</code> is <code>true</code>.</p>\n         <p>If you don’t specify a prefix, the flow logs are stored in the\n\t\t\troot of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>\n         <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>"}))
    CustomRoutingAcceleratorAttributes.type = Types::CustomRoutingAcceleratorAttributes
    CustomRoutingAcceleratorStatus.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYED', traits: {"smithy.api#enumValue" => "DEPLOYED"}))
    CustomRoutingAcceleratorStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CustomRoutingAccelerators.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerator)
    CustomRoutingDestinationConfiguration.add_member(:from_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'FromPort', traits: {"smithy.api#documentation" => "<p>The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>", "smithy.api#required" => {}}))
    CustomRoutingDestinationConfiguration.add_member(:to_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'ToPort', traits: {"smithy.api#documentation" => "<p>The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>", "smithy.api#required" => {}}))
    CustomRoutingDestinationConfiguration.add_member(:protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingProtocols, location_name: 'Protocols', traits: {"smithy.api#documentation" => "<p>The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either TCP or UDP.</p>", "smithy.api#required" => {}}))
    CustomRoutingDestinationConfiguration.type = Types::CustomRoutingDestinationConfiguration
    CustomRoutingDestinationConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationConfiguration)
    CustomRoutingDestinationDescription.add_member(:from_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'FromPort', traits: {"smithy.api#documentation" => "<p>The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>"}))
    CustomRoutingDestinationDescription.add_member(:to_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'ToPort', traits: {"smithy.api#documentation" => "<p>The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>"}))
    CustomRoutingDestinationDescription.add_member(:protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: Protocols, location_name: 'Protocols', traits: {"smithy.api#documentation" => "<p>The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either TCP or UDP.</p>"}))
    CustomRoutingDestinationDescription.type = Types::CustomRoutingDestinationDescription
    CustomRoutingDestinationDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationDescription)
    CustomRoutingDestinationTrafficState.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    CustomRoutingDestinationTrafficState.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    CustomRoutingEndpointConfiguration.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC)\n\t\t\tsubnet ID. </p>"}))
    CustomRoutingEndpointConfiguration.add_member(:attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cross-account attachment that specifies the endpoints (resources)\n\t\t\tthat can be added to accelerators and principals that have permission to add the endpoints.</p>"}))
    CustomRoutingEndpointConfiguration.type = Types::CustomRoutingEndpointConfiguration
    CustomRoutingEndpointConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointConfiguration)
    CustomRoutingEndpointDescription.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC)\n\t\t\tsubnet ID. </p>"}))
    CustomRoutingEndpointDescription.type = Types::CustomRoutingEndpointDescription
    CustomRoutingEndpointDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescription)
    CustomRoutingEndpointGroup.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>"}))
    CustomRoutingEndpointGroup.add_member(:endpoint_group_region, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region where the endpoint group is located.</p>"}))
    CustomRoutingEndpointGroup.add_member(:destination_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationDescriptions, location_name: 'DestinationDescriptions', traits: {"smithy.api#documentation" => "<p>For a custom routing accelerator, describes the port range and protocol for all endpoints\n\t\t\t(virtual private cloud subnets) in an endpoint group to accept client traffic on.</p>"}))
    CustomRoutingEndpointGroup.add_member(:endpoint_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescriptions, location_name: 'EndpointDescriptions', traits: {"smithy.api#documentation" => "<p>For a custom routing accelerator, describes the endpoints (virtual private cloud subnets) in an\n\t\t\tendpoint group to accept client traffic on.</p>"}))
    CustomRoutingEndpointGroup.type = Types::CustomRoutingEndpointGroup
    CustomRoutingEndpointGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup)
    CustomRoutingListener.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    CustomRoutingListener.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: 'PortRanges', traits: {"smithy.api#documentation" => "<p>The port range to support for connections from clients to your accelerator.</p>\n         <p>Separately, you set port ranges for endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html\">About \n\t\t\t\tendpoints for custom routing accelerators</a>.</p>"}))
    CustomRoutingListener.type = Types::CustomRoutingListener
    CustomRoutingListeners.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListener)
    CustomRoutingProtocol.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    CustomRoutingProtocol.add_member(:udp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UDP', traits: {"smithy.api#enumValue" => "UDP"}))
    CustomRoutingProtocols.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingProtocol)
    DeleteAcceleratorRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an accelerator.</p>", "smithy.api#required" => {}}))
    DeleteAcceleratorRequest.type = Types::DeleteAcceleratorRequest
    DeleteCrossAccountAttachmentRequest.add_member(:attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the cross-account attachment to delete.</p>", "smithy.api#required" => {}}))
    DeleteCrossAccountAttachmentRequest.type = Types::DeleteCrossAccountAttachmentRequest
    DeleteCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom routing accelerator to delete.</p>", "smithy.api#required" => {}}))
    DeleteCustomRoutingAcceleratorRequest.type = Types::DeleteCustomRoutingAcceleratorRequest
    DeleteCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>", "smithy.api#required" => {}}))
    DeleteCustomRoutingEndpointGroupRequest.type = Types::DeleteCustomRoutingEndpointGroupRequest
    DeleteCustomRoutingListenerRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener to delete.</p>", "smithy.api#required" => {}}))
    DeleteCustomRoutingListenerRequest.type = Types::DeleteCustomRoutingListenerRequest
    DeleteEndpointGroupRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>", "smithy.api#required" => {}}))
    DeleteEndpointGroupRequest.type = Types::DeleteEndpointGroupRequest
    DeleteListenerRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    DeleteListenerRequest.type = Types::DeleteListenerRequest
    DenyCustomRoutingTrafficRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>", "smithy.api#required" => {}}))
    DenyCustomRoutingTrafficRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>", "smithy.api#required" => {}}))
    DenyCustomRoutingTrafficRequest.add_member(:destination_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationAddresses, location_name: 'DestinationAddresses', traits: {"smithy.api#documentation" => "<p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to prevent from receiving \n\t\t\ttraffic. The IP addresses must be a subset of the IP addresses allowed for the VPC subnet associated with the \n\t\t\tendpoint group.</p>"}))
    DenyCustomRoutingTrafficRequest.add_member(:destination_ports, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPorts, location_name: 'DestinationPorts', traits: {"smithy.api#documentation" => "<p>A list of specific Amazon EC2 instance ports (destination ports) in a subnet endpoint that you want to prevent from \n\t\t\treceiving traffic.</p>"}))
    DenyCustomRoutingTrafficRequest.add_member(:deny_all_traffic_to_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'DenyAllTrafficToEndpoint', traits: {"smithy.api#documentation" => "<p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint <i>cannot</i> \n\t\t\treceive traffic from a custom routing accelerator. The value is TRUE or FALSE. </p>\n         <p>When set to TRUE, <i>no</i> destinations in the custom routing VPC subnet can receive traffic. Note \n\t\t\tthat you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>\n         <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that cannot receive\n\t\t\ttraffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is\n\t\t\tthe same as the ports configured for the endpoint group.</p>\n         <p>The default value is FALSE.</p>"}))
    DenyCustomRoutingTrafficRequest.type = Types::DenyCustomRoutingTrafficRequest
    DeprovisionByoipCidrRequest.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>The address range, in CIDR notation. The prefix must be the same prefix that you specified \n\t\t\twhen you provisioned the address range.</p>\n         <p> For more information, see\n\t\t\t<a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring your own IP addresses (BYOIP)</a> in \n\t\t\tthe Global Accelerator Developer Guide.</p>", "smithy.api#required" => {}}))
    DeprovisionByoipCidrRequest.type = Types::DeprovisionByoipCidrRequest
    DeprovisionByoipCidrResponse.add_member(:byoip_cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr, location_name: 'ByoipCidr', traits: {"smithy.api#documentation" => "<p>Information about the address range.</p>"}))
    DeprovisionByoipCidrResponse.type = Types::DeprovisionByoipCidrResponse
    DescribeAcceleratorAttributesRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator with the attributes that you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeAcceleratorAttributesRequest.type = Types::DescribeAcceleratorAttributesRequest
    DescribeAcceleratorAttributesResponse.add_member(:accelerator_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorAttributes, location_name: 'AcceleratorAttributes', traits: {"smithy.api#documentation" => "<p>The attributes of the accelerator.</p>"}))
    DescribeAcceleratorAttributesResponse.type = Types::DescribeAcceleratorAttributesResponse
    DescribeAcceleratorRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>", "smithy.api#required" => {}}))
    DescribeAcceleratorRequest.type = Types::DescribeAcceleratorRequest
    DescribeAcceleratorResponse.add_member(:accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerator, location_name: 'Accelerator', traits: {"smithy.api#documentation" => "<p>The description of the accelerator.</p>"}))
    DescribeAcceleratorResponse.type = Types::DescribeAcceleratorResponse
    DescribeCrossAccountAttachmentRequest.add_member(:attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the cross-account attachment to describe.</p>", "smithy.api#required" => {}}))
    DescribeCrossAccountAttachmentRequest.type = Types::DescribeCrossAccountAttachmentRequest
    DescribeCrossAccountAttachmentResponse.add_member(:cross_account_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'CrossAccountAttachment', traits: {"smithy.api#documentation" => "<p>Information about the cross-account attachment.</p>"}))
    DescribeCrossAccountAttachmentResponse.type = Types::DescribeCrossAccountAttachmentResponse
    DescribeCustomRoutingAcceleratorAttributesRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom routing accelerator to describe the attributes for.</p>", "smithy.api#required" => {}}))
    DescribeCustomRoutingAcceleratorAttributesRequest.type = Types::DescribeCustomRoutingAcceleratorAttributesRequest
    DescribeCustomRoutingAcceleratorAttributesResponse.add_member(:accelerator_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorAttributes, location_name: 'AcceleratorAttributes', traits: {"smithy.api#documentation" => "<p>The attributes of the custom routing accelerator.</p>"}))
    DescribeCustomRoutingAcceleratorAttributesResponse.type = Types::DescribeCustomRoutingAcceleratorAttributesResponse
    DescribeCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>", "smithy.api#required" => {}}))
    DescribeCustomRoutingAcceleratorRequest.type = Types::DescribeCustomRoutingAcceleratorRequest
    DescribeCustomRoutingAcceleratorResponse.add_member(:accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: 'Accelerator', traits: {"smithy.api#documentation" => "<p>The description of the custom routing accelerator.</p>"}))
    DescribeCustomRoutingAcceleratorResponse.type = Types::DescribeCustomRoutingAcceleratorResponse
    DescribeCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>", "smithy.api#required" => {}}))
    DescribeCustomRoutingEndpointGroupRequest.type = Types::DescribeCustomRoutingEndpointGroupRequest
    DescribeCustomRoutingEndpointGroupResponse.add_member(:endpoint_group, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup, location_name: 'EndpointGroup', traits: {"smithy.api#documentation" => "<p>The description of an endpoint group for a custom routing accelerator.</p>"}))
    DescribeCustomRoutingEndpointGroupResponse.type = Types::DescribeCustomRoutingEndpointGroupResponse
    DescribeCustomRoutingListenerRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener to describe.</p>", "smithy.api#required" => {}}))
    DescribeCustomRoutingListenerRequest.type = Types::DescribeCustomRoutingListenerRequest
    DescribeCustomRoutingListenerResponse.add_member(:listener, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: 'Listener', traits: {"smithy.api#documentation" => "<p>The description of a listener for a custom routing accelerator.</p>"}))
    DescribeCustomRoutingListenerResponse.type = Types::DescribeCustomRoutingListenerResponse
    DescribeEndpointGroupRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>", "smithy.api#required" => {}}))
    DescribeEndpointGroupRequest.type = Types::DescribeEndpointGroupRequest
    DescribeEndpointGroupResponse.add_member(:endpoint_group, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroup, location_name: 'EndpointGroup', traits: {"smithy.api#documentation" => "<p>The description of an endpoint group.</p>"}))
    DescribeEndpointGroupResponse.type = Types::DescribeEndpointGroupResponse
    DescribeListenerRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener to describe.</p>", "smithy.api#required" => {}}))
    DescribeListenerRequest.type = Types::DescribeListenerRequest
    DescribeListenerResponse.add_member(:listener, Smithy::Schema::Shapes::ShapeRef.new(shape: Listener, location_name: 'Listener', traits: {"smithy.api#documentation" => "<p>The description of a listener.</p>"}))
    DescribeListenerResponse.type = Types::DescribeListenerResponse
    DestinationAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress)
    DestinationPortMapping.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom routing accelerator \n\t\t\tthat you have port mappings for.</p>"}))
    DestinationPortMapping.add_member(:accelerator_socket_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddresses, location_name: 'AcceleratorSocketAddresses', traits: {"smithy.api#documentation" => "<p>The IP address/port combinations (sockets) that map to a given destination socket\n\t\t\taddress.</p>"}))
    DestinationPortMapping.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>"}))
    DestinationPortMapping.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID for the virtual private cloud (VPC) subnet.</p>"}))
    DestinationPortMapping.add_member(:endpoint_group_region, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region for the endpoint group.</p>"}))
    DestinationPortMapping.add_member(:destination_socket_address, Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddress, location_name: 'DestinationSocketAddress', traits: {"smithy.api#documentation" => "<p>The endpoint IP address/port combination for traffic received on the accelerator socket address.</p>"}))
    DestinationPortMapping.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>"}))
    DestinationPortMapping.add_member(:destination_traffic_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationTrafficState, location_name: 'DestinationTrafficState', traits: {"smithy.api#documentation" => "<p>Indicates whether or not a port mapping destination can receive traffic. The value is either ALLOW, if\n\t\t\ttraffic is allowed to the destination, or DENY, if traffic is not allowed to the destination.</p>"}))
    DestinationPortMapping.type = Types::DestinationPortMapping
    DestinationPortMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPortMapping)
    DestinationPorts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber)
    EndpointAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    EndpointAlreadyExistsException.type = Types::EndpointAlreadyExistsException
    EndpointConfiguration.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon\n\t\t\tResource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address\n\t\t\tallocation ID. For Amazon EC2 instances, this is the EC2 instance ID. A resource must be valid and active \n\t\t\twhen you add it as an endpoint.</p>\n         <p>For cross-account endpoints, this must be the ARN of the resource.</p>"}))
    EndpointConfiguration.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointWeight, location_name: 'Weight', traits: {"smithy.api#documentation" => "<p>The weight associated with the endpoint. When you add weights to endpoints, you configure Global Accelerator to route traffic\n\t\t\tbased on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The\n\t\t\tresult is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second\n\t\t\tand third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html\">Endpoint weights</a> in the\n\t        <i>Global Accelerator Developer Guide</i>.</p>"}))
    EndpointConfiguration.add_member(:client_ip_preservation_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'ClientIPPreservationEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether client IP address preservation is enabled for an endpoint. \n\t\t\tThe value is true or false. The default value is true for Application Load Balancer endpoints. </p>\n         <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as \n\t\t\ttraffic travels to applications on the endpoint fronted by the accelerator.</p>\n         <p>Client IP address preservation is supported, in specific Amazon Web Services Regions, for endpoints that are Application Load \n\t\t\tBalancers, Amazon EC2 instances, and Network Load Balancers with security groups. IMPORTANT: You cannot use client IP address preservation\n\t\t\twith Network Load Balancers with TLS listeners.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html\">\n\t\t\tPreserve client IP addresses in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    EndpointConfiguration.add_member(:attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cross-account attachment that specifies the endpoints (resources)\n\t\t\tthat can be added to accelerators and principals that have permission to add the endpoints.</p>"}))
    EndpointConfiguration.type = Types::EndpointConfiguration
    EndpointConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration)
    EndpointDescription.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon\n\t\t\tResource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address\n\t\t\tallocation ID. For Amazon EC2 instances, this is the EC2 instance ID. </p>\n         <p>An Application Load Balancer can be either internal or internet-facing.</p>"}))
    EndpointDescription.add_member(:weight, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointWeight, location_name: 'Weight', traits: {"smithy.api#documentation" => "<p>The weight associated with the endpoint. When you add weights to endpoints, you configure Global Accelerator to route traffic\n\t\t\tbased on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The\n\t\t\tresult is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second\n\t\t\tand third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html\">Endpoint weights</a> in the\n\t        <i>Global Accelerator Developer Guide</i>. </p>"}))
    EndpointDescription.add_member(:health_state, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthState, location_name: 'HealthState', traits: {"smithy.api#documentation" => "<p>The health status of the endpoint.</p>"}))
    EndpointDescription.add_member(:health_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'HealthReason', traits: {"smithy.api#documentation" => "<p>Returns a null result.</p>"}))
    EndpointDescription.add_member(:client_ip_preservation_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'ClientIPPreservationEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether client IP address preservation is enabled for an endpoint. \n\t\t\tThe value is true or false. The default value is true for Application Load Balancers endpoints. </p>\n         <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as \n\t\t\ttraffic travels to applications on the endpoint fronted by the accelerator.</p>\n         <p>Client IP address preservation is supported, in specific Amazon Web Services Regions, for endpoints that are Application Load \n\t\t\tBalancers, Amazon EC2 instances, and Network Load Balancers with security groups. IMPORTANT: You cannot use client IP address preservation\n\t\t\twith Network Load Balancers with TLS listeners.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html\">\n\t\t\tPreserve client IP addresses in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    EndpointDescription.type = Types::EndpointDescription
    EndpointDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescription)
    EndpointGroup.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>"}))
    EndpointGroup.add_member(:endpoint_group_region, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region where the endpoint group is located.</p>"}))
    EndpointGroup.add_member(:endpoint_descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescriptions, location_name: 'EndpointDescriptions', traits: {"smithy.api#documentation" => "<p>The list of endpoint objects.</p>"}))
    EndpointGroup.add_member(:traffic_dial_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: 'TrafficDialPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of traffic to send to an Amazon Web Services Region. Additional traffic is distributed to other endpoint groups for\n\t\t\tthis listener. </p>\n         <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is\n\t\t\tapplied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>\n         <p>The default value is 100.</p>"}))
    EndpointGroup.add_member(:health_check_port, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: 'HealthCheckPort', traits: {"smithy.api#documentation" => "<p>The port that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. </p>\n         <p>The default port is the port for the listener that this endpoint group is associated with. If the listener port is a\n\t\t    list, Global Accelerator uses the first specified port in the list of ports.</p>"}))
    EndpointGroup.add_member(:health_check_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: 'HealthCheckProtocol', traits: {"smithy.api#documentation" => "<p>The protocol that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. The default\n\t\t\tvalue is TCP.</p>"}))
    EndpointGroup.add_member(:health_check_path, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: 'HealthCheckPath', traits: {"smithy.api#documentation" => "<p>If the protocol is HTTP/S, then this value provides the ping path that Global Accelerator uses for the destination on the\n\t\t\tendpoints for health checks. The default is slash (/).</p>"}))
    EndpointGroup.add_member(:health_check_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The time—10 seconds or 30 seconds—between health checks for each endpoint. The default value is 30.</p>"}))
    EndpointGroup.add_member(:threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdCount, location_name: 'ThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an\n\t\t\tunhealthy endpoint to healthy. The default value is 3.</p>"}))
    EndpointGroup.add_member(:port_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: PortOverrides, location_name: 'PortOverrides', traits: {"smithy.api#documentation" => "<p>Allows you to override the destination ports used to route traffic to an endpoint. \n\t\t\tUsing a port override lets you map a list of external destination ports (that your\n\t\t\tusers send traffic to) to a list of internal destination ports that you want an application \n\t\t\tendpoint to receive traffic on. </p>"}))
    EndpointGroup.type = Types::EndpointGroup
    EndpointGroupAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    EndpointGroupAlreadyExistsException.type = Types::EndpointGroupAlreadyExistsException
    EndpointGroupNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    EndpointGroupNotFoundException.type = Types::EndpointGroupNotFoundException
    EndpointGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroup)
    EndpointIdentifier.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon\n\t\t\tResource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address\n\t\t\tallocation ID. For Amazon EC2 instances, this is the EC2 instance ID. </p>\n         <p>An Application Load Balancer can be either internal or internet-facing.</p>", "smithy.api#required" => {}}))
    EndpointIdentifier.add_member(:client_ip_preservation_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'ClientIPPreservationEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether client IP address preservation is enabled for an endpoint. The value is true or false. </p>\n         <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as \n\t\t\ttraffic travels to applications on the endpoint fronted by the accelerator.</p>"}))
    EndpointIdentifier.type = Types::EndpointIdentifier
    EndpointIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointIdentifier)
    EndpointIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    EndpointNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    EndpointNotFoundException.type = Types::EndpointNotFoundException
    HealthCheckProtocol.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    HealthCheckProtocol.add_member(:http, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    HealthCheckProtocol.add_member(:https, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTPS', traits: {"smithy.api#enumValue" => "HTTPS"}))
    HealthState.add_member(:initial, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIAL', traits: {"smithy.api#enumValue" => "INITIAL"}))
    HealthState.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    HealthState.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    IncorrectCidrStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    IncorrectCidrStateException.type = Types::IncorrectCidrStateException
    InternalServiceErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidArgumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidPortRangeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidPortRangeException.type = Types::InvalidPortRangeException
    IpAddressFamily.add_member(:i_pv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPv4', traits: {"smithy.api#enumValue" => "IPv4"}))
    IpAddressFamily.add_member(:i_pv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPv6', traits: {"smithy.api#enumValue" => "IPv6"}))
    IpAddressType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:dual_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL_STACK', traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    IpAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress)
    IpSet.add_member(:ip_family, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'IpFamily', traits: {"smithy.api#deprecated" => {"message" => "IpFamily has been replaced by IpAddressFamily"}, "smithy.api#documentation" => "<p>IpFamily is deprecated and has been replaced by IpAddressFamily.</p>"}))
    IpSet.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>The array of IP addresses in the IP address set. An IP address set can have a maximum of two IP addresses.</p>"}))
    IpSet.add_member(:ip_address_family, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressFamily, location_name: 'IpAddressFamily', traits: {"smithy.api#documentation" => "<p>The types of IP addresses included in this IP set. </p>"}))
    IpSet.type = Types::IpSet
    IpSets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpSet)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAcceleratorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of Global Accelerator objects that you want to return with this call. The default value is 10.</p>"}))
    ListAcceleratorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListAcceleratorsRequest.type = Types::ListAcceleratorsRequest
    ListAcceleratorsResponse.add_member(:accelerators, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerators, location_name: 'Accelerators', traits: {"smithy.api#documentation" => "<p>The list of accelerators for a customer account.</p>"}))
    ListAcceleratorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListAcceleratorsResponse.type = Types::ListAcceleratorsResponse
    ListByoipCidrsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make\n\t\t\tanother call with the returned <code>nextToken</code> value.</p>"}))
    ListByoipCidrsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListByoipCidrsRequest.type = Types::ListByoipCidrsRequest
    ListByoipCidrsResponse.add_member(:byoip_cidrs, Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrs, location_name: 'ByoipCidrs', traits: {"smithy.api#documentation" => "<p>Information about your address ranges.</p>"}))
    ListByoipCidrsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListByoipCidrsResponse.type = Types::ListByoipCidrsResponse
    ListCrossAccountAttachmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of cross-account attachment objects that you want to return with this call. The default value is 10.</p>"}))
    ListCrossAccountAttachmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCrossAccountAttachmentsRequest.type = Types::ListCrossAccountAttachmentsRequest
    ListCrossAccountAttachmentsResponse.add_member(:cross_account_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: 'CrossAccountAttachments', traits: {"smithy.api#documentation" => "<p>Information about the cross-account attachments.</p>"}))
    ListCrossAccountAttachmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCrossAccountAttachmentsResponse.type = Types::ListCrossAccountAttachmentsResponse
    ListCrossAccountResourceAccountsRequest.type = Types::ListCrossAccountResourceAccountsRequest
    ListCrossAccountResourceAccountsResponse.add_member(:resource_owner_aws_account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountIds, location_name: 'ResourceOwnerAwsAccountIds', traits: {"smithy.api#documentation" => "<p>The account IDs of principals (resource owners) in a cross-account attachment who can work\n\t\t\twith resources listed in the same attachment.</p>"}))
    ListCrossAccountResourceAccountsResponse.type = Types::ListCrossAccountResourceAccountsResponse
    ListCrossAccountResourcesRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an accelerator in a cross-account attachment.</p>"}))
    ListCrossAccountResourcesRequest.add_member(:resource_owner_aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'ResourceOwnerAwsAccountId', traits: {"smithy.api#documentation" => "<p>The account ID of a resource owner in a cross-account attachment.</p>", "smithy.api#required" => {}}))
    ListCrossAccountResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of cross-account resource objects that you want to return with this call. The default value is 10.</p>"}))
    ListCrossAccountResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCrossAccountResourcesRequest.type = Types::ListCrossAccountResourcesRequest
    ListCrossAccountResourcesResponse.add_member(:cross_account_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: CrossAccountResources, location_name: 'CrossAccountResources', traits: {"smithy.api#documentation" => "<p>The cross-account resources used with an accelerator.</p>"}))
    ListCrossAccountResourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCrossAccountResourcesResponse.type = Types::ListCrossAccountResourcesResponse
    ListCustomRoutingAcceleratorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of custom routing Global Accelerator objects that you want to return with this call. The default value is 10.</p>"}))
    ListCustomRoutingAcceleratorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingAcceleratorsRequest.type = Types::ListCustomRoutingAcceleratorsRequest
    ListCustomRoutingAcceleratorsResponse.add_member(:accelerators, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerators, location_name: 'Accelerators', traits: {"smithy.api#documentation" => "<p>The list of custom routing accelerators for a customer account.</p>"}))
    ListCustomRoutingAcceleratorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingAcceleratorsResponse.type = Types::ListCustomRoutingAcceleratorsResponse
    ListCustomRoutingEndpointGroupsRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener to list endpoint groups for.</p>", "smithy.api#required" => {}}))
    ListCustomRoutingEndpointGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>"}))
    ListCustomRoutingEndpointGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingEndpointGroupsRequest.type = Types::ListCustomRoutingEndpointGroupsRequest
    ListCustomRoutingEndpointGroupsResponse.add_member(:endpoint_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroups, location_name: 'EndpointGroups', traits: {"smithy.api#documentation" => "<p>The list of the endpoint groups associated with a listener for a custom routing accelerator.</p>"}))
    ListCustomRoutingEndpointGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingEndpointGroupsResponse.type = Types::ListCustomRoutingEndpointGroupsResponse
    ListCustomRoutingListenersRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator to list listeners for.</p>", "smithy.api#required" => {}}))
    ListCustomRoutingListenersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of listener objects that you want to return with this call. The default value is 10.</p>"}))
    ListCustomRoutingListenersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingListenersRequest.type = Types::ListCustomRoutingListenersRequest
    ListCustomRoutingListenersResponse.add_member(:listeners, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListeners, location_name: 'Listeners', traits: {"smithy.api#documentation" => "<p>The list of listeners for a custom routing accelerator.</p>"}))
    ListCustomRoutingListenersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingListenersResponse.type = Types::ListCustomRoutingListenersResponse
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID for the virtual private cloud (VPC) subnet.</p>", "smithy.api#required" => {}}))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:destination_address, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DestinationAddress', traits: {"smithy.api#documentation" => "<p>The endpoint IP address in a virtual private cloud (VPC) subnet for which you want to receive back port\n\t\tmappings.</p>", "smithy.api#required" => {}}))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PortMappingsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>"}))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingPortMappingsByDestinationRequest.type = Types::ListCustomRoutingPortMappingsByDestinationRequest
    ListCustomRoutingPortMappingsByDestinationResponse.add_member(:destination_port_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPortMappings, location_name: 'DestinationPortMappings', traits: {"smithy.api#documentation" => "<p>The port mappings for the endpoint IP address that you specified in the request.</p>"}))
    ListCustomRoutingPortMappingsByDestinationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingPortMappingsByDestinationResponse.type = Types::ListCustomRoutingPortMappingsByDestinationResponse
    ListCustomRoutingPortMappingsRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator to list the custom routing port mappings for.</p>", "smithy.api#required" => {}}))
    ListCustomRoutingPortMappingsRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group to list the custom routing port mappings for.</p>"}))
    ListCustomRoutingPortMappingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PortMappingsMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>"}))
    ListCustomRoutingPortMappingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingPortMappingsRequest.type = Types::ListCustomRoutingPortMappingsRequest
    ListCustomRoutingPortMappingsResponse.add_member(:port_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: PortMappings, location_name: 'PortMappings', traits: {"smithy.api#documentation" => "<p>The port mappings for a custom routing accelerator.</p>"}))
    ListCustomRoutingPortMappingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListCustomRoutingPortMappingsResponse.type = Types::ListCustomRoutingPortMappingsResponse
    ListEndpointGroupsRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>", "smithy.api#required" => {}}))
    ListEndpointGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>"}))
    ListEndpointGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListEndpointGroupsRequest.type = Types::ListEndpointGroupsRequest
    ListEndpointGroupsResponse.add_member(:endpoint_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroups, location_name: 'EndpointGroups', traits: {"smithy.api#documentation" => "<p>The list of the endpoint groups associated with a listener.</p>"}))
    ListEndpointGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListEndpointGroupsResponse.type = Types::ListEndpointGroupsResponse
    ListListenersRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator for which you want to list listener objects.</p>", "smithy.api#required" => {}}))
    ListListenersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The number of listener objects that you want to return with this call. The default value is 10.</p>"}))
    ListListenersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListListenersRequest.type = Types::ListListenersRequest
    ListListenersResponse.add_member(:listeners, Smithy::Schema::Shapes::ShapeRef.new(shape: Listeners, location_name: 'Listeners', traits: {"smithy.api#documentation" => "<p>The list of listeners for an accelerator.</p>"}))
    ListListenersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. You receive this token from a previous call.</p>"}))
    ListListenersResponse.type = Types::ListListenersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator to list tags for. An ARN uniquely identifies an accelerator.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Root level tag for the Tags parameters.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Listener.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener.</p>"}))
    Listener.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: 'PortRanges', traits: {"smithy.api#documentation" => "<p>The list of port ranges for the connections from clients to the accelerator.</p>"}))
    Listener.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The protocol for the connections from clients to the accelerator.</p>"}))
    Listener.add_member(:client_affinity, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAffinity, location_name: 'ClientAffinity', traits: {"smithy.api#documentation" => "<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,\n\t\t\tregardless of the port and protocol of the client request. Client affinity gives you control over whether to always\n\t\t\troute each client to the same specific endpoint.</p>\n         <p>Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client\n\t        affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port,\n\t\t\tdestination IP address, destination port, and protocol—to select the hash value, and then chooses the best\n\t\t\tendpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not\n\t\t\tbe always routed to the same endpoint because the hash value changes. </p>\n         <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>\n\t\t    instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties—\n\t\t\tsource (client) IP address and destination IP address—to select the hash value.</p>\n         <p>The default value is <code>NONE</code>.</p>"}))
    Listener.type = Types::Listener
    ListenerNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ListenerNotFoundException.type = Types::ListenerNotFoundException
    Listeners.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Listener)
    PortMapping.add_member(:accelerator_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'AcceleratorPort', traits: {"smithy.api#documentation" => "<p>The accelerator port.</p>"}))
    PortMapping.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>"}))
    PortMapping.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The IP address of the VPC subnet (the subnet ID).</p>"}))
    PortMapping.add_member(:destination_socket_address, Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddress, location_name: 'DestinationSocketAddress', traits: {"smithy.api#documentation" => "<p>The EC2 instance IP address and port number in the virtual private cloud (VPC) subnet.</p>"}))
    PortMapping.add_member(:protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingProtocols, location_name: 'Protocols', traits: {"smithy.api#documentation" => "<p>The protocols supported by the endpoint group.</p>"}))
    PortMapping.add_member(:destination_traffic_state, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationTrafficState, location_name: 'DestinationTrafficState', traits: {"smithy.api#documentation" => "<p>Indicates whether or not a port mapping destination can receive traffic. The value is either ALLOW, if\n\t\t\ttraffic is allowed to the destination, or DENY, if traffic is not allowed to the destination.</p>"}))
    PortMapping.type = Types::PortMapping
    PortMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortMapping)
    PortOverride.add_member(:listener_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'ListenerPort', traits: {"smithy.api#documentation" => "<p>The listener port that you want to map to a specific endpoint port. This is the port that user traffic\n\t\t    arrives to the Global Accelerator on.</p>"}))
    PortOverride.add_member(:endpoint_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'EndpointPort', traits: {"smithy.api#documentation" => "<p>The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint,\n\t\t    such as the Application Load Balancer or Amazon EC2 instance.</p>"}))
    PortOverride.type = Types::PortOverride
    PortOverrides.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortOverride)
    PortRange.add_member(:from_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'FromPort', traits: {"smithy.api#documentation" => "<p>The first port in the range of ports, inclusive.</p>"}))
    PortRange.add_member(:to_port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'ToPort', traits: {"smithy.api#documentation" => "<p>The last port in the range of ports, inclusive.</p>"}))
    PortRange.type = Types::PortRange
    PortRanges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PortRange)
    Principals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Principal)
    Protocol.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    Protocol.add_member(:udp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UDP', traits: {"smithy.api#enumValue" => "UDP"}))
    Protocols.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol)
    ProvisionByoipCidrRequest.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>The public IPv4 address range, in CIDR notation. The most specific IP prefix that you can\n\t\t\tspecify is /24. The address range cannot overlap with another address range that you've brought \n\t\t\tto this Amazon Web Services Region or another Region.</p>\n         <p> For more information, see\n\t\t\t<a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring your own IP addresses (BYOIP)</a> in \n\t\t\tthe Global Accelerator Developer Guide.</p>", "smithy.api#required" => {}}))
    ProvisionByoipCidrRequest.add_member(:cidr_authorization_context, Smithy::Schema::Shapes::ShapeRef.new(shape: CidrAuthorizationContext, location_name: 'CidrAuthorizationContext', traits: {"smithy.api#documentation" => "<p>A signed document that proves that you are authorized to bring the specified IP address range to\n\t\t\tAmazon using BYOIP.\n\t\t</p>", "smithy.api#required" => {}}))
    ProvisionByoipCidrRequest.type = Types::ProvisionByoipCidrRequest
    ProvisionByoipCidrResponse.add_member(:byoip_cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr, location_name: 'ByoipCidr', traits: {"smithy.api#documentation" => "<p>Information about the address range.</p>"}))
    ProvisionByoipCidrResponse.type = Types::ProvisionByoipCidrResponse
    RemoveCustomRoutingEndpointsRequest.add_member(:endpoint_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointIds, location_name: 'EndpointIds', traits: {"smithy.api#documentation" => "<p>The IDs for the endpoints. For custom routing accelerators, endpoint IDs are the virtual private cloud (VPC)\n\t\tsubnet IDs. </p>", "smithy.api#required" => {}}))
    RemoveCustomRoutingEndpointsRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group to remove endpoints from.</p>", "smithy.api#required" => {}}))
    RemoveCustomRoutingEndpointsRequest.type = Types::RemoveCustomRoutingEndpointsRequest
    RemoveEndpointsRequest.add_member(:endpoint_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointIdentifiers, location_name: 'EndpointIdentifiers', traits: {"smithy.api#documentation" => "<p>The identifiers of the endpoints that you want to remove.</p>", "smithy.api#required" => {}}))
    RemoveEndpointsRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>", "smithy.api#required" => {}}))
    RemoveEndpointsRequest.type = Types::RemoveEndpointsRequest
    Resource.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointId', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#documentation" => "<p>The endpoint ID for the endpoint that is specified as a Amazon Web Services resource. </p>\n         <p>An endpoint ID for the cross-account feature is the ARN of an Amazon Web Services resource, such as a \n\t\t\tNetwork Load Balancer, that Global Accelerator supports as an endpoint for an accelerator.</p>"}))
    Resource.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>An IP address range, in CIDR format, that is specified as resource. The address must\n\t\t\tbe provisioned and advertised in Global Accelerator by following the bring your own IP address (BYOIP) process \n\t\t\tfor Global Accelerator</p>\n         <p> For more information, see\n\t\t\t<a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring your own IP addresses (BYOIP)</a> in \n\t\t\tthe Global Accelerator Developer Guide.</p>"}))
    Resource.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region where a shared endpoint resource is located.</p>"}))
    Resource.type = Types::Resource
    Resources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    SocketAddress.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The IP address for the socket address.</p>"}))
    SocketAddress.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port for the socket address.</p>"}))
    SocketAddress.type = Types::SocketAddress
    SocketAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddress)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>A string that contains a <code>Tag</code> key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A string that contains a <code>Tag</code> value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Global Accelerator resource to add tags to. An ARN uniquely identifies a resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to add to a resource. A tag consists of a key and a value that you define.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TransactionInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TransactionInProgressException.type = Types::TransactionInProgressException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Global Accelerator resource to remove tags from. An ARN uniquely identifies a resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag key pairs that you want to remove from the specified resources.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAcceleratorAttributesRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'FlowLogsEnabled', traits: {"smithy.api#documentation" => "<p>Update whether flow logs are enabled. The default value is false. If the value is true,\n\t\t\t\t<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow Logs</a> in\n\t\t    the <i>Global Accelerator Developer Guide</i>.</p>"}))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'FlowLogsS3Bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is\n\t\t    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the\n\t\t\tbucket.</p>"}))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'FlowLogsS3Prefix', traits: {"smithy.api#documentation" => "<p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if\n\t\t\t\t<code>FlowLogsEnabled</code> is <code>true</code>. </p>\n         <p>If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), \n\t\t\tlike the following:</p>\n         <p>s3-bucket_name//AWSLogs/aws_account_id</p>"}))
    UpdateAcceleratorAttributesRequest.type = Types::UpdateAcceleratorAttributesRequest
    UpdateAcceleratorAttributesResponse.add_member(:accelerator_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorAttributes, location_name: 'AcceleratorAttributes', traits: {"smithy.api#documentation" => "<p>Updated attributes for the accelerator.</p>"}))
    UpdateAcceleratorAttributesResponse.type = Types::UpdateAcceleratorAttributesResponse
    UpdateAcceleratorRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator to update.</p>", "smithy.api#required" => {}}))
    UpdateAcceleratorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, \n\t\t\tperiods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>"}))
    UpdateAcceleratorRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that an accelerator supports. For a standard accelerator, the value can be IPV4 or DUAL_STACK.</p>"}))
    UpdateAcceleratorRequest.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>The IP addresses for an accelerator.</p>"}))
    UpdateAcceleratorRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>\n         <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>"}))
    UpdateAcceleratorRequest.type = Types::UpdateAcceleratorRequest
    UpdateAcceleratorResponse.add_member(:accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerator, location_name: 'Accelerator', traits: {"smithy.api#documentation" => "<p>Information about the updated accelerator.</p>"}))
    UpdateAcceleratorResponse.type = Types::UpdateAcceleratorResponse
    UpdateCrossAccountAttachmentRequest.add_member(:attachment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AttachmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cross-account attachment to update.</p>", "smithy.api#required" => {}}))
    UpdateCrossAccountAttachmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the cross-account attachment.  </p>"}))
    UpdateCrossAccountAttachmentRequest.add_member(:add_principals, Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: 'AddPrincipals', traits: {"smithy.api#documentation" => "<p>The principals to add to the cross-account attachment. A principal is an account or the Amazon Resource Name (ARN)\n\t\t\tof an accelerator that the attachment gives permission to work with resources from another account. The resources\n\t\t\tare also listed in the attachment.</p>\n         <p>To add more than one principal, separate the account numbers or accelerator ARNs, or both, with commas.</p>"}))
    UpdateCrossAccountAttachmentRequest.add_member(:remove_principals, Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: 'RemovePrincipals', traits: {"smithy.api#documentation" => "<p>The principals to remove from the cross-account attachment. A principal is an account or the Amazon Resource Name (ARN)\n\t\t\tof an accelerator that the attachment gives permission to work with resources from another account. The resources\n\t\t\tare also listed in the attachment.</p>\n         <p>To remove more than one principal, separate the account numbers or accelerator ARNs, or both, with commas.</p>"}))
    UpdateCrossAccountAttachmentRequest.add_member(:add_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'AddResources', traits: {"smithy.api#documentation" => "<p>The resources to add to the cross-account attachment. A resource listed in a cross-account attachment can be used\n\t\t\twith an accelerator by the principals that are listed in the attachment.</p>\n         <p>To add more than one resource, separate the resource ARNs with commas.</p>"}))
    UpdateCrossAccountAttachmentRequest.add_member(:remove_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'RemoveResources', traits: {"smithy.api#documentation" => "<p>The resources to remove from the cross-account attachment. A resource listed in a cross-account attachment can be used\n\t\t\twith an accelerator by the principals that are listed in the attachment.</p>\n         <p>To remove more than one resource, separate the resource ARNs with commas.</p>"}))
    UpdateCrossAccountAttachmentRequest.type = Types::UpdateCrossAccountAttachmentRequest
    UpdateCrossAccountAttachmentResponse.add_member(:cross_account_attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'CrossAccountAttachment', traits: {"smithy.api#documentation" => "<p>Information about the updated cross-account attachment.</p>"}))
    UpdateCrossAccountAttachmentResponse.type = Types::UpdateCrossAccountAttachmentResponse
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom routing accelerator to update attributes for.</p>", "smithy.api#required" => {}}))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'FlowLogsEnabled', traits: {"smithy.api#documentation" => "<p>Update whether flow logs are enabled. The default value is false. If the value is true,\n\t\t<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow logs</a> in\n\t    the <i>Global Accelerator Developer Guide</i>.</p>"}))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'FlowLogsS3Bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is\n\t    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the\n\t\tbucket.</p>"}))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'FlowLogsS3Prefix', traits: {"smithy.api#documentation" => "<p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if\n\t\t<code>FlowLogsEnabled</code> is <code>true</code>. </p>\n         <p>If you don’t specify a prefix, the flow logs are stored in the\n\t\troot of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>\n         <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>"}))
    UpdateCustomRoutingAcceleratorAttributesRequest.type = Types::UpdateCustomRoutingAcceleratorAttributesRequest
    UpdateCustomRoutingAcceleratorAttributesResponse.add_member(:accelerator_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorAttributes, location_name: 'AcceleratorAttributes', traits: {"smithy.api#documentation" => "<p>Updated custom routing accelerator.</p>"}))
    UpdateCustomRoutingAcceleratorAttributesResponse.type = Types::UpdateCustomRoutingAcceleratorAttributesResponse
    UpdateCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AcceleratorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accelerator to update.</p>", "smithy.api#required" => {}}))
    UpdateCustomRoutingAcceleratorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, \n\t\tperiods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>"}))
    UpdateCustomRoutingAcceleratorRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>"}))
    UpdateCustomRoutingAcceleratorRequest.add_member(:ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: 'IpAddresses', traits: {"smithy.api#documentation" => "<p>The IP addresses for an accelerator.</p>"}))
    UpdateCustomRoutingAcceleratorRequest.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>\n         <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>"}))
    UpdateCustomRoutingAcceleratorRequest.type = Types::UpdateCustomRoutingAcceleratorRequest
    UpdateCustomRoutingAcceleratorResponse.add_member(:accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: 'Accelerator', traits: {"smithy.api#documentation" => "<p>Information about the updated custom routing accelerator.</p>"}))
    UpdateCustomRoutingAcceleratorResponse.type = Types::UpdateCustomRoutingAcceleratorResponse
    UpdateCustomRoutingListenerRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener to update.</p>", "smithy.api#required" => {}}))
    UpdateCustomRoutingListenerRequest.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: 'PortRanges', traits: {"smithy.api#documentation" => "<p>The updated port range to support for connections from clients to your accelerator. If you remove ports that are\n\tcurrently being used by a subnet endpoint, the call fails.</p>\n         <p>Separately, you set port ranges for endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html\">About \n\t\tendpoints for custom routing accelerators</a>.</p>", "smithy.api#required" => {}}))
    UpdateCustomRoutingListenerRequest.type = Types::UpdateCustomRoutingListenerRequest
    UpdateCustomRoutingListenerResponse.add_member(:listener, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: 'Listener', traits: {"smithy.api#documentation" => "<p>Information for the updated listener for a custom routing accelerator.</p>"}))
    UpdateCustomRoutingListenerResponse.type = Types::UpdateCustomRoutingListenerResponse
    UpdateEndpointGroupRequest.add_member(:endpoint_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EndpointGroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>", "smithy.api#required" => {}}))
    UpdateEndpointGroupRequest.add_member(:endpoint_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: 'EndpointConfigurations', traits: {"smithy.api#documentation" => "<p>The list of endpoint objects. A resource must be valid and active when you add it as an endpoint.</p>"}))
    UpdateEndpointGroupRequest.add_member(:traffic_dial_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: 'TrafficDialPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of traffic to send to an Amazon Web Services Region. Additional traffic is distributed to other endpoint groups for\n\t\t\tthis listener. </p>\n         <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is\n\t\t\tapplied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>\n         <p>The default value is 100.</p>"}))
    UpdateEndpointGroupRequest.add_member(:health_check_port, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: 'HealthCheckPort', traits: {"smithy.api#documentation" => "<p>The port that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port\n\t        is the listener port that this endpoint group is associated with. If the listener port is a list of ports, Global Accelerator uses\n\t\t\tthe first port in the list.</p>"}))
    UpdateEndpointGroupRequest.add_member(:health_check_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: 'HealthCheckProtocol', traits: {"smithy.api#documentation" => "<p>The protocol that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default\n\t\t\tvalue is TCP.</p>"}))
    UpdateEndpointGroupRequest.add_member(:health_check_path, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: 'HealthCheckPath', traits: {"smithy.api#documentation" => "<p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The\n\t\t\tdefault value is slash (/).</p>"}))
    UpdateEndpointGroupRequest.add_member(:health_check_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: 'HealthCheckIntervalSeconds', traits: {"smithy.api#documentation" => "<p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>"}))
    UpdateEndpointGroupRequest.add_member(:threshold_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdCount, location_name: 'ThresholdCount', traits: {"smithy.api#documentation" => "<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an\n\t\t\tunhealthy endpoint to healthy. The default value is 3.</p>"}))
    UpdateEndpointGroupRequest.add_member(:port_overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: PortOverrides, location_name: 'PortOverrides', traits: {"smithy.api#documentation" => "<p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. \n\t\t\tFor example, you can create a port override in which the listener \n\t\t\treceives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 \n\t\t\tand 1443, respectively, on the endpoints.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html\">\n\t\t\tOverriding listener ports</a> in the <i>Global Accelerator Developer Guide</i>.</p>"}))
    UpdateEndpointGroupRequest.type = Types::UpdateEndpointGroupRequest
    UpdateEndpointGroupResponse.add_member(:endpoint_group, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroup, location_name: 'EndpointGroup', traits: {"smithy.api#documentation" => "<p>The information about the endpoint group that was updated.</p>"}))
    UpdateEndpointGroupResponse.type = Types::UpdateEndpointGroupResponse
    UpdateListenerRequest.add_member(:listener_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ListenerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the listener to update.</p>", "smithy.api#required" => {}}))
    UpdateListenerRequest.add_member(:port_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: 'PortRanges', traits: {"smithy.api#documentation" => "<p>The updated list of port ranges for the connections from clients to the accelerator.</p>"}))
    UpdateListenerRequest.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'Protocol', traits: {"smithy.api#documentation" => "<p>The updated protocol for the connections from clients to the accelerator.</p>"}))
    UpdateListenerRequest.add_member(:client_affinity, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAffinity, location_name: 'ClientAffinity', traits: {"smithy.api#documentation" => "<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,\n\t\t\tregardless of the port and protocol of the client request. Client affinity gives you control over whether to always\n\t\t\troute each client to the same specific endpoint.</p>\n         <p>Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client\n\t        affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port,\n\t\t\tdestination IP address, destination port, and protocol—to select the hash value, and then chooses the best\n\t\t\tendpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not\n\t\t\tbe always routed to the same endpoint because the hash value changes. </p>\n         <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>\n\t\t    instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties—\n\t\t\tsource (client) IP address and destination IP address—to select the hash value.</p>\n         <p>The default value is <code>NONE</code>.</p>"}))
    UpdateListenerRequest.type = Types::UpdateListenerRequest
    UpdateListenerResponse.add_member(:listener, Smithy::Schema::Shapes::ShapeRef.new(shape: Listener, location_name: 'Listener', traits: {"smithy.api#documentation" => "<p>Information for the updated listener.</p>"}))
    UpdateListenerResponse.type = Types::UpdateListenerResponse
    WithdrawByoipCidrRequest.add_member(:cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Cidr', traits: {"smithy.api#documentation" => "<p>The address range, in CIDR notation.</p>\n         <p> For more information, see\n\t\t\t<a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring your own IP addresses (BYOIP)</a> in \n\t\t\tthe Global Accelerator Developer Guide.</p>", "smithy.api#required" => {}}))
    WithdrawByoipCidrRequest.type = Types::WithdrawByoipCidrRequest
    WithdrawByoipCidrResponse.add_member(:byoip_cidr, Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr, location_name: 'ByoipCidr', traits: {"smithy.api#documentation" => "<p>Information about the BYOIP address pool.</p>"}))
    WithdrawByoipCidrResponse.type = Types::WithdrawByoipCidrResponse

    GlobalAcceleratorV20180706 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.globalaccelerator#GlobalAccelerator_V20180706"
      service.name = "GlobalAcceleratorV20180706"
      service.version = "2018-08-08"
      service.traits = {"aws.api#service" => {"sdkId" => "Global Accelerator", "arnNamespace" => "globalaccelerator", "cloudFormationName" => "GlobalAccelerator", "cloudTrailEventSource" => "globalaccelerator.amazonaws.com", "docId" => "globalaccelerator-2018-08-08", "endpointPrefix" => "globalaccelerator"}, "aws.auth#sigv4" => {"name" => "globalaccelerator"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Global Accelerator"}
      service.add_operation(:add_custom_routing_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#AddCustomRoutingEndpoints"
        operation.name = "AddCustomRoutingEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddCustomRoutingEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddCustomRoutingEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:add_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#AddEndpoints"
        operation.name = "AddEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:advertise_byoip_cidr, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#AdvertiseByoipCidr"
        operation.name = "AdvertiseByoipCidr"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AdvertiseByoipCidrRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AdvertiseByoipCidrResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:allow_custom_routing_traffic, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#AllowCustomRoutingTraffic"
        operation.name = "AllowCustomRoutingTraffic"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AllowCustomRoutingTrafficRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:create_accelerator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateAccelerator"
        operation.name = "CreateAccelerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAcceleratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAcceleratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:create_cross_account_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateCrossAccountAttachment"
        operation.name = "CreateCrossAccountAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCrossAccountAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCrossAccountAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_routing_accelerator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateCustomRoutingAccelerator"
        operation.name = "CreateCustomRoutingAccelerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingAcceleratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingAcceleratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_routing_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateCustomRoutingEndpointGroup"
        operation.name = "CreateCustomRoutingEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingEndpointGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingEndpointGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_routing_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateCustomRoutingListener"
        operation.name = "CreateCustomRoutingListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingListenerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingListenerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateEndpointGroup"
        operation.name = "CreateEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateListener"
        operation.name = "CreateListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListenerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListenerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:delete_accelerator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteAccelerator"
        operation.name = "DeleteAccelerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAcceleratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedListenerFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cross_account_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteCrossAccountAttachment"
        operation.name = "DeleteCrossAccountAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCrossAccountAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_routing_accelerator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteCustomRoutingAccelerator"
        operation.name = "DeleteCustomRoutingAccelerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomRoutingAcceleratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedListenerFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_routing_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteCustomRoutingEndpointGroup"
        operation.name = "DeleteCustomRoutingEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomRoutingEndpointGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_routing_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteCustomRoutingListener"
        operation.name = "DeleteCustomRoutingListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomRoutingListenerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedEndpointGroupFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteEndpointGroup"
        operation.name = "DeleteEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:delete_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteListener"
        operation.name = "DeleteListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteListenerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedEndpointGroupFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:deny_custom_routing_traffic, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DenyCustomRoutingTraffic"
        operation.name = "DenyCustomRoutingTraffic"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DenyCustomRoutingTrafficRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:deprovision_byoip_cidr, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeprovisionByoipCidr"
        operation.name = "DeprovisionByoipCidr"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeprovisionByoipCidrRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeprovisionByoipCidrResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_accelerator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeAccelerator"
        operation.name = "DescribeAccelerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAcceleratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAcceleratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_accelerator_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeAcceleratorAttributes"
        operation.name = "DescribeAcceleratorAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAcceleratorAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAcceleratorAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cross_account_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCrossAccountAttachment"
        operation.name = "DescribeCrossAccountAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCrossAccountAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCrossAccountAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_routing_accelerator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCustomRoutingAccelerator"
        operation.name = "DescribeCustomRoutingAccelerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_routing_accelerator_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorAttributes"
        operation.name = "DescribeCustomRoutingAcceleratorAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_routing_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCustomRoutingEndpointGroup"
        operation.name = "DescribeCustomRoutingEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingEndpointGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingEndpointGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_routing_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCustomRoutingListener"
        operation.name = "DescribeCustomRoutingListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingListenerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingListenerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeEndpointGroup"
        operation.name = "DescribeEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeListener"
        operation.name = "DescribeListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_accelerators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListAccelerators"
        operation.name = "ListAccelerators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAcceleratorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAcceleratorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccelerators.new
      end)
      service.add_operation(:list_byoip_cidrs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListByoipCidrs"
        operation.name = "ListByoipCidrs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListByoipCidrsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListByoipCidrsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListByoipCidrs.new
      end)
      service.add_operation(:list_cross_account_attachments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCrossAccountAttachments"
        operation.name = "ListCrossAccountAttachments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountAttachmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountAttachmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCrossAccountAttachments.new
      end)
      service.add_operation(:list_cross_account_resource_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCrossAccountResourceAccounts"
        operation.name = "ListCrossAccountResourceAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountResourceAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountResourceAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.traits = {}
      end)
      service.add_operation(:list_cross_account_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCrossAccountResources"
        operation.name = "ListCrossAccountResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountResourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCrossAccountResources.new
      end)
      service.add_operation(:list_custom_routing_accelerators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingAccelerators"
        operation.name = "ListCustomRoutingAccelerators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingAcceleratorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingAcceleratorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingAccelerators.new
      end)
      service.add_operation(:list_custom_routing_endpoint_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingEndpointGroups"
        operation.name = "ListCustomRoutingEndpointGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingEndpointGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingEndpointGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingEndpointGroups.new
      end)
      service.add_operation(:list_custom_routing_listeners, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingListeners"
        operation.name = "ListCustomRoutingListeners"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingListenersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingListenersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingListeners.new
      end)
      service.add_operation(:list_custom_routing_port_mappings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingPortMappings"
        operation.name = "ListCustomRoutingPortMappings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingPortMappings.new
      end)
      service.add_operation(:list_custom_routing_port_mappings_by_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsByDestination"
        operation.name = "ListCustomRoutingPortMappingsByDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsByDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsByDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingPortMappingsByDestination.new
      end)
      service.add_operation(:list_endpoint_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListEndpointGroups"
        operation.name = "ListEndpointGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEndpointGroups.new
      end)
      service.add_operation(:list_listeners, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListListeners"
        operation.name = "ListListeners"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListListenersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListListenersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListListeners.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:provision_byoip_cidr, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ProvisionByoipCidr"
        operation.name = "ProvisionByoipCidr"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionByoipCidrRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionByoipCidrResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:remove_custom_routing_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#RemoveCustomRoutingEndpoints"
        operation.name = "RemoveCustomRoutingEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveCustomRoutingEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:remove_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#RemoveEndpoints"
        operation.name = "RemoveEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:update_accelerator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateAccelerator"
        operation.name = "UpdateAccelerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAcceleratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAcceleratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_accelerator_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateAcceleratorAttributes"
        operation.name = "UpdateAcceleratorAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAcceleratorAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAcceleratorAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_cross_account_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateCrossAccountAttachment"
        operation.name = "UpdateCrossAccountAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCrossAccountAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCrossAccountAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_routing_accelerator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateCustomRoutingAccelerator"
        operation.name = "UpdateCustomRoutingAccelerator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_routing_accelerator_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorAttributes"
        operation.name = "UpdateCustomRoutingAcceleratorAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_routing_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateCustomRoutingListener"
        operation.name = "UpdateCustomRoutingListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingListenerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingListenerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_endpoint_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateEndpointGroup"
        operation.name = "UpdateEndpointGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:update_listener, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateListener"
        operation.name = "UpdateListener"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateListenerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateListenerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:withdraw_byoip_cidr, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#WithdrawByoipCidr"
        operation.name = "WithdrawByoipCidr"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: WithdrawByoipCidrRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: WithdrawByoipCidrResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
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
