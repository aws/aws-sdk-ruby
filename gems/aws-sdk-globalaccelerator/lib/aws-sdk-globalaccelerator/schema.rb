# frozen_string_literal: true

# This is generated code!

module Aws::GlobalAccelerator
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Accelerator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#Accelerator", name: "Accelerator")
    AcceleratorAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AcceleratorAttributes", name: "AcceleratorAttributes")
    AcceleratorEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AcceleratorEvent", name: "AcceleratorEvent")
    AcceleratorEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#AcceleratorEvents", name: "AcceleratorEvents")
    AcceleratorNotDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AcceleratorNotDisabledException", name: "AcceleratorNotDisabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AcceleratorNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AcceleratorNotFoundException", name: "AcceleratorNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AcceleratorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#AcceleratorStatus", name: "AcceleratorStatus")
    Accelerators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#Accelerators", name: "Accelerators")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddCustomRoutingEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AddCustomRoutingEndpointsRequest", name: "AddCustomRoutingEndpointsRequest")
    AddCustomRoutingEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AddCustomRoutingEndpointsResponse", name: "AddCustomRoutingEndpointsResponse")
    AddEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AddEndpointsRequest", name: "AddEndpointsRequest")
    AddEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AddEndpointsResponse", name: "AddEndpointsResponse")
    AdvertiseByoipCidrRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AdvertiseByoipCidrRequest", name: "AdvertiseByoipCidrRequest")
    AdvertiseByoipCidrResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AdvertiseByoipCidrResponse", name: "AdvertiseByoipCidrResponse")
    AllowCustomRoutingTrafficRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AllowCustomRoutingTrafficRequest", name: "AllowCustomRoutingTrafficRequest")
    AssociatedEndpointGroupFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AssociatedEndpointGroupFoundException", name: "AssociatedEndpointGroupFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AssociatedListenerFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AssociatedListenerFoundException", name: "AssociatedListenerFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Attachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#Attachment", name: "Attachment")
    AttachmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#AttachmentName", name: "AttachmentName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\S\\s]+$"})
    AttachmentNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#AttachmentNotFoundException", name: "AttachmentNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Attachments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#Attachments", name: "Attachments")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AwsAccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#AwsAccountIds", name: "AwsAccountIds")
    ByoipCidr = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ByoipCidr", name: "ByoipCidr")
    ByoipCidrEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ByoipCidrEvent", name: "ByoipCidrEvent")
    ByoipCidrEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#ByoipCidrEvents", name: "ByoipCidrEvents")
    ByoipCidrNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ByoipCidrNotFoundException", name: "ByoipCidrNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ByoipCidrState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#ByoipCidrState", name: "ByoipCidrState")
    ByoipCidrs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#ByoipCidrs", name: "ByoipCidrs")
    CidrAuthorizationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CidrAuthorizationContext", name: "CidrAuthorizationContext")
    ClientAffinity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#ClientAffinity", name: "ClientAffinity")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAcceleratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateAcceleratorRequest", name: "CreateAcceleratorRequest")
    CreateAcceleratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateAcceleratorResponse", name: "CreateAcceleratorResponse")
    CreateCrossAccountAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateCrossAccountAttachmentRequest", name: "CreateCrossAccountAttachmentRequest")
    CreateCrossAccountAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateCrossAccountAttachmentResponse", name: "CreateCrossAccountAttachmentResponse")
    CreateCustomRoutingAcceleratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateCustomRoutingAcceleratorRequest", name: "CreateCustomRoutingAcceleratorRequest")
    CreateCustomRoutingAcceleratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateCustomRoutingAcceleratorResponse", name: "CreateCustomRoutingAcceleratorResponse")
    CreateCustomRoutingEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateCustomRoutingEndpointGroupRequest", name: "CreateCustomRoutingEndpointGroupRequest")
    CreateCustomRoutingEndpointGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateCustomRoutingEndpointGroupResponse", name: "CreateCustomRoutingEndpointGroupResponse")
    CreateCustomRoutingListenerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateCustomRoutingListenerRequest", name: "CreateCustomRoutingListenerRequest")
    CreateCustomRoutingListenerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateCustomRoutingListenerResponse", name: "CreateCustomRoutingListenerResponse")
    CreateEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateEndpointGroupRequest", name: "CreateEndpointGroupRequest")
    CreateEndpointGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateEndpointGroupResponse", name: "CreateEndpointGroupResponse")
    CreateListenerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateListenerRequest", name: "CreateListenerRequest")
    CreateListenerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CreateListenerResponse", name: "CreateListenerResponse")
    CrossAccountResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CrossAccountResource", name: "CrossAccountResource")
    CrossAccountResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CrossAccountResources", name: "CrossAccountResources")
    CustomRoutingAccelerator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingAccelerator", name: "CustomRoutingAccelerator")
    CustomRoutingAcceleratorAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingAcceleratorAttributes", name: "CustomRoutingAcceleratorAttributes")
    CustomRoutingAcceleratorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingAcceleratorStatus", name: "CustomRoutingAcceleratorStatus")
    CustomRoutingAccelerators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingAccelerators", name: "CustomRoutingAccelerators")
    CustomRoutingDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingDestinationConfiguration", name: "CustomRoutingDestinationConfiguration")
    CustomRoutingDestinationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingDestinationConfigurations", name: "CustomRoutingDestinationConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CustomRoutingDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingDestinationDescription", name: "CustomRoutingDestinationDescription")
    CustomRoutingDestinationDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingDestinationDescriptions", name: "CustomRoutingDestinationDescriptions")
    CustomRoutingDestinationTrafficState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingDestinationTrafficState", name: "CustomRoutingDestinationTrafficState")
    CustomRoutingEndpointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingEndpointConfiguration", name: "CustomRoutingEndpointConfiguration")
    CustomRoutingEndpointConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingEndpointConfigurations", name: "CustomRoutingEndpointConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CustomRoutingEndpointDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingEndpointDescription", name: "CustomRoutingEndpointDescription")
    CustomRoutingEndpointDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingEndpointDescriptions", name: "CustomRoutingEndpointDescriptions")
    CustomRoutingEndpointGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingEndpointGroup", name: "CustomRoutingEndpointGroup")
    CustomRoutingEndpointGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingEndpointGroups", name: "CustomRoutingEndpointGroups")
    CustomRoutingListener = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingListener", name: "CustomRoutingListener")
    CustomRoutingListeners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingListeners", name: "CustomRoutingListeners")
    CustomRoutingProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingProtocol", name: "CustomRoutingProtocol")
    CustomRoutingProtocols = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#CustomRoutingProtocols", name: "CustomRoutingProtocols", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    DeleteAcceleratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeleteAcceleratorRequest", name: "DeleteAcceleratorRequest")
    DeleteCrossAccountAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeleteCrossAccountAttachmentRequest", name: "DeleteCrossAccountAttachmentRequest")
    DeleteCustomRoutingAcceleratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeleteCustomRoutingAcceleratorRequest", name: "DeleteCustomRoutingAcceleratorRequest")
    DeleteCustomRoutingEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeleteCustomRoutingEndpointGroupRequest", name: "DeleteCustomRoutingEndpointGroupRequest")
    DeleteCustomRoutingListenerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeleteCustomRoutingListenerRequest", name: "DeleteCustomRoutingListenerRequest")
    DeleteEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeleteEndpointGroupRequest", name: "DeleteEndpointGroupRequest")
    DeleteListenerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeleteListenerRequest", name: "DeleteListenerRequest")
    DenyCustomRoutingTrafficRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DenyCustomRoutingTrafficRequest", name: "DenyCustomRoutingTrafficRequest")
    DeprovisionByoipCidrRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeprovisionByoipCidrRequest", name: "DeprovisionByoipCidrRequest")
    DeprovisionByoipCidrResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DeprovisionByoipCidrResponse", name: "DeprovisionByoipCidrResponse")
    DescribeAcceleratorAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeAcceleratorAttributesRequest", name: "DescribeAcceleratorAttributesRequest")
    DescribeAcceleratorAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeAcceleratorAttributesResponse", name: "DescribeAcceleratorAttributesResponse")
    DescribeAcceleratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeAcceleratorRequest", name: "DescribeAcceleratorRequest")
    DescribeAcceleratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeAcceleratorResponse", name: "DescribeAcceleratorResponse")
    DescribeCrossAccountAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCrossAccountAttachmentRequest", name: "DescribeCrossAccountAttachmentRequest")
    DescribeCrossAccountAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCrossAccountAttachmentResponse", name: "DescribeCrossAccountAttachmentResponse")
    DescribeCustomRoutingAcceleratorAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorAttributesRequest", name: "DescribeCustomRoutingAcceleratorAttributesRequest")
    DescribeCustomRoutingAcceleratorAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorAttributesResponse", name: "DescribeCustomRoutingAcceleratorAttributesResponse")
    DescribeCustomRoutingAcceleratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorRequest", name: "DescribeCustomRoutingAcceleratorRequest")
    DescribeCustomRoutingAcceleratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorResponse", name: "DescribeCustomRoutingAcceleratorResponse")
    DescribeCustomRoutingEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCustomRoutingEndpointGroupRequest", name: "DescribeCustomRoutingEndpointGroupRequest")
    DescribeCustomRoutingEndpointGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCustomRoutingEndpointGroupResponse", name: "DescribeCustomRoutingEndpointGroupResponse")
    DescribeCustomRoutingListenerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCustomRoutingListenerRequest", name: "DescribeCustomRoutingListenerRequest")
    DescribeCustomRoutingListenerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeCustomRoutingListenerResponse", name: "DescribeCustomRoutingListenerResponse")
    DescribeEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeEndpointGroupRequest", name: "DescribeEndpointGroupRequest")
    DescribeEndpointGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeEndpointGroupResponse", name: "DescribeEndpointGroupResponse")
    DescribeListenerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeListenerRequest", name: "DescribeListenerRequest")
    DescribeListenerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DescribeListenerResponse", name: "DescribeListenerResponse")
    DestinationAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#DestinationAddresses", name: "DestinationAddresses", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DestinationPortMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#DestinationPortMapping", name: "DestinationPortMapping")
    DestinationPortMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#DestinationPortMappings", name: "DestinationPortMappings")
    DestinationPorts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#DestinationPorts", name: "DestinationPorts", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    EndpointAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#EndpointAlreadyExistsException", name: "EndpointAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#EndpointConfiguration", name: "EndpointConfiguration")
    EndpointConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#EndpointConfigurations", name: "EndpointConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EndpointDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#EndpointDescription", name: "EndpointDescription")
    EndpointDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#EndpointDescriptions", name: "EndpointDescriptions")
    EndpointGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#EndpointGroup", name: "EndpointGroup")
    EndpointGroupAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#EndpointGroupAlreadyExistsException", name: "EndpointGroupAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointGroupNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#EndpointGroupNotFoundException", name: "EndpointGroupNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#EndpointGroups", name: "EndpointGroups")
    EndpointIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#EndpointIdentifier", name: "EndpointIdentifier")
    EndpointIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#EndpointIdentifiers", name: "EndpointIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EndpointIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#EndpointIds", name: "EndpointIds")
    EndpointNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#EndpointNotFoundException", name: "EndpointNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.globalaccelerator#EndpointWeight", name: "EndpointWeight", traits: {"smithy.api#range" => {"min" => 0, "max" => 255}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#ErrorMessage", name: "ErrorMessage")
    GenericBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.globalaccelerator#GenericBoolean", name: "GenericBoolean")
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#GenericString", name: "GenericString", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    HealthCheckIntervalSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.globalaccelerator#HealthCheckIntervalSeconds", name: "HealthCheckIntervalSeconds", traits: {"smithy.api#range" => {"min" => 10, "max" => 30}})
    HealthCheckPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#HealthCheckPath", name: "HealthCheckPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^/[-a-zA-Z0-9@:%_\\\\+.~#?&/=]*$"})
    HealthCheckPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.globalaccelerator#HealthCheckPort", name: "HealthCheckPort", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    HealthCheckProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#HealthCheckProtocol", name: "HealthCheckProtocol")
    HealthState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#HealthState", name: "HealthState")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    IncorrectCidrStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#IncorrectCidrStateException", name: "IncorrectCidrStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPortRangeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#InvalidPortRangeException", name: "InvalidPortRangeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#IpAddress", name: "IpAddress", traits: {"smithy.api#length" => {"min" => 0, "max" => 45}})
    IpAddressFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#IpAddressFamily", name: "IpAddressFamily")
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#IpAddressType", name: "IpAddressType")
    IpAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#IpAddresses", name: "IpAddresses", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    IpSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#IpSet", name: "IpSet")
    IpSets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#IpSets", name: "IpSets")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ListAcceleratorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListAcceleratorsRequest", name: "ListAcceleratorsRequest")
    ListAcceleratorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListAcceleratorsResponse", name: "ListAcceleratorsResponse")
    ListByoipCidrsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListByoipCidrsRequest", name: "ListByoipCidrsRequest")
    ListByoipCidrsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListByoipCidrsResponse", name: "ListByoipCidrsResponse")
    ListCrossAccountAttachmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCrossAccountAttachmentsRequest", name: "ListCrossAccountAttachmentsRequest")
    ListCrossAccountAttachmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCrossAccountAttachmentsResponse", name: "ListCrossAccountAttachmentsResponse")
    ListCrossAccountResourceAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCrossAccountResourceAccountsRequest", name: "ListCrossAccountResourceAccountsRequest")
    ListCrossAccountResourceAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCrossAccountResourceAccountsResponse", name: "ListCrossAccountResourceAccountsResponse")
    ListCrossAccountResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCrossAccountResourcesRequest", name: "ListCrossAccountResourcesRequest")
    ListCrossAccountResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCrossAccountResourcesResponse", name: "ListCrossAccountResourcesResponse")
    ListCustomRoutingAcceleratorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingAcceleratorsRequest", name: "ListCustomRoutingAcceleratorsRequest")
    ListCustomRoutingAcceleratorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingAcceleratorsResponse", name: "ListCustomRoutingAcceleratorsResponse")
    ListCustomRoutingEndpointGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingEndpointGroupsRequest", name: "ListCustomRoutingEndpointGroupsRequest")
    ListCustomRoutingEndpointGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingEndpointGroupsResponse", name: "ListCustomRoutingEndpointGroupsResponse")
    ListCustomRoutingListenersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingListenersRequest", name: "ListCustomRoutingListenersRequest")
    ListCustomRoutingListenersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingListenersResponse", name: "ListCustomRoutingListenersResponse")
    ListCustomRoutingPortMappingsByDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsByDestinationRequest", name: "ListCustomRoutingPortMappingsByDestinationRequest")
    ListCustomRoutingPortMappingsByDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsByDestinationResponse", name: "ListCustomRoutingPortMappingsByDestinationResponse")
    ListCustomRoutingPortMappingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsRequest", name: "ListCustomRoutingPortMappingsRequest")
    ListCustomRoutingPortMappingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsResponse", name: "ListCustomRoutingPortMappingsResponse")
    ListEndpointGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListEndpointGroupsRequest", name: "ListEndpointGroupsRequest")
    ListEndpointGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListEndpointGroupsResponse", name: "ListEndpointGroupsResponse")
    ListListenersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListListenersRequest", name: "ListListenersRequest")
    ListListenersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListListenersResponse", name: "ListListenersResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Listener = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#Listener", name: "Listener")
    ListenerNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ListenerNotFoundException", name: "ListenerNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Listeners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#Listeners", name: "Listeners")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.globalaccelerator#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PortMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#PortMapping", name: "PortMapping")
    PortMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#PortMappings", name: "PortMappings")
    PortMappingsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.globalaccelerator#PortMappingsMaxResults", name: "PortMappingsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 20000}})
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.globalaccelerator#PortNumber", name: "PortNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PortOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#PortOverride", name: "PortOverride")
    PortOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#PortOverrides", name: "PortOverrides", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#PortRange", name: "PortRange")
    PortRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#PortRanges", name: "PortRanges", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Principal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#Principal", name: "Principal", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^(^\\d{12}$|arn:.*)$"})
    Principals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#Principals", name: "Principals")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.globalaccelerator#Protocol", name: "Protocol")
    Protocols = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#Protocols", name: "Protocols")
    ProvisionByoipCidrRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ProvisionByoipCidrRequest", name: "ProvisionByoipCidrRequest")
    ProvisionByoipCidrResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#ProvisionByoipCidrResponse", name: "ProvisionByoipCidrResponse")
    RemoveCustomRoutingEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#RemoveCustomRoutingEndpointsRequest", name: "RemoveCustomRoutingEndpointsRequest")
    RemoveEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#RemoveEndpointsRequest", name: "RemoveEndpointsRequest")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#Resource", name: "Resource")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#Resources", name: "Resources")
    SocketAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#SocketAddress", name: "SocketAddress")
    SocketAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#SocketAddresses", name: "SocketAddresses")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.globalaccelerator#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.globalaccelerator#Tags", name: "Tags")
    ThresholdCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.globalaccelerator#ThresholdCount", name: "ThresholdCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.globalaccelerator#Timestamp", name: "Timestamp")
    TrafficDialPercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.globalaccelerator#TrafficDialPercentage", name: "TrafficDialPercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    TransactionInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#TransactionInProgressException", name: "TransactionInProgressException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAcceleratorAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateAcceleratorAttributesRequest", name: "UpdateAcceleratorAttributesRequest")
    UpdateAcceleratorAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateAcceleratorAttributesResponse", name: "UpdateAcceleratorAttributesResponse")
    UpdateAcceleratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateAcceleratorRequest", name: "UpdateAcceleratorRequest")
    UpdateAcceleratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateAcceleratorResponse", name: "UpdateAcceleratorResponse")
    UpdateCrossAccountAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateCrossAccountAttachmentRequest", name: "UpdateCrossAccountAttachmentRequest")
    UpdateCrossAccountAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateCrossAccountAttachmentResponse", name: "UpdateCrossAccountAttachmentResponse")
    UpdateCustomRoutingAcceleratorAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorAttributesRequest", name: "UpdateCustomRoutingAcceleratorAttributesRequest")
    UpdateCustomRoutingAcceleratorAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorAttributesResponse", name: "UpdateCustomRoutingAcceleratorAttributesResponse")
    UpdateCustomRoutingAcceleratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorRequest", name: "UpdateCustomRoutingAcceleratorRequest")
    UpdateCustomRoutingAcceleratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorResponse", name: "UpdateCustomRoutingAcceleratorResponse")
    UpdateCustomRoutingListenerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateCustomRoutingListenerRequest", name: "UpdateCustomRoutingListenerRequest")
    UpdateCustomRoutingListenerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateCustomRoutingListenerResponse", name: "UpdateCustomRoutingListenerResponse")
    UpdateEndpointGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateEndpointGroupRequest", name: "UpdateEndpointGroupRequest")
    UpdateEndpointGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateEndpointGroupResponse", name: "UpdateEndpointGroupResponse")
    UpdateListenerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateListenerRequest", name: "UpdateListenerRequest")
    UpdateListenerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#UpdateListenerResponse", name: "UpdateListenerResponse")
    WithdrawByoipCidrRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#WithdrawByoipCidrRequest", name: "WithdrawByoipCidrRequest")
    WithdrawByoipCidrResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.globalaccelerator#WithdrawByoipCidrResponse", name: "WithdrawByoipCidrResponse")

    Accelerator.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    Accelerator.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    Accelerator.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    Accelerator.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    Accelerator.add_member(:ip_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpSets, location_name: "IpSets"))
    Accelerator.add_member(:dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "DnsName"))
    Accelerator.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorStatus, location_name: "Status"))
    Accelerator.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Accelerator.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Accelerator.add_member(:dual_stack_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "DualStackDnsName"))
    Accelerator.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorEvents, location_name: "Events"))
    Accelerator.type = Types::Accelerator
    AcceleratorAttributes.add_member(:flow_logs_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    AcceleratorAttributes.add_member(:flow_logs_s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    AcceleratorAttributes.add_member(:flow_logs_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    AcceleratorAttributes.type = Types::AcceleratorAttributes
    AcceleratorEvent.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message"))
    AcceleratorEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    AcceleratorEvent.type = Types::AcceleratorEvent
    AcceleratorEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorEvent)
    AcceleratorNotDisabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AcceleratorNotDisabledException.type = Types::AcceleratorNotDisabledException
    AcceleratorNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AcceleratorNotFoundException.type = Types::AcceleratorNotFoundException
    AcceleratorStatus.add_member(:deployed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYED", traits: {"smithy.api#enumValue" => "DEPLOYED"}))
    AcceleratorStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    Accelerators.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerator)
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddCustomRoutingEndpointsRequest.add_member(:endpoint_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointConfigurations, location_name: "EndpointConfigurations", traits: {"smithy.api#required" => {}}))
    AddCustomRoutingEndpointsRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    AddCustomRoutingEndpointsRequest.type = Types::AddCustomRoutingEndpointsRequest
    AddCustomRoutingEndpointsResponse.add_member(:endpoint_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescriptions, location_name: "EndpointDescriptions"))
    AddCustomRoutingEndpointsResponse.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    AddCustomRoutingEndpointsResponse.type = Types::AddCustomRoutingEndpointsResponse
    AddEndpointsRequest.add_member(:endpoint_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: "EndpointConfigurations", traits: {"smithy.api#required" => {}}))
    AddEndpointsRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    AddEndpointsRequest.type = Types::AddEndpointsRequest
    AddEndpointsResponse.add_member(:endpoint_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescriptions, location_name: "EndpointDescriptions"))
    AddEndpointsResponse.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    AddEndpointsResponse.type = Types::AddEndpointsResponse
    AdvertiseByoipCidrRequest.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr", traits: {"smithy.api#required" => {}}))
    AdvertiseByoipCidrRequest.type = Types::AdvertiseByoipCidrRequest
    AdvertiseByoipCidrResponse.add_member(:byoip_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    AdvertiseByoipCidrResponse.type = Types::AdvertiseByoipCidrResponse
    AllowCustomRoutingTrafficRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    AllowCustomRoutingTrafficRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId", traits: {"smithy.api#required" => {}}))
    AllowCustomRoutingTrafficRequest.add_member(:destination_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationAddresses, location_name: "DestinationAddresses"))
    AllowCustomRoutingTrafficRequest.add_member(:destination_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPorts, location_name: "DestinationPorts"))
    AllowCustomRoutingTrafficRequest.add_member(:allow_all_traffic_to_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "AllowAllTrafficToEndpoint"))
    AllowCustomRoutingTrafficRequest.type = Types::AllowCustomRoutingTrafficRequest
    AssociatedEndpointGroupFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AssociatedEndpointGroupFoundException.type = Types::AssociatedEndpointGroupFoundException
    AssociatedListenerFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AssociatedListenerFoundException.type = Types::AssociatedListenerFoundException
    Attachment.add_member(:attachment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn"))
    Attachment.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: "Name"))
    Attachment.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: "Principals"))
    Attachment.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: "Resources"))
    Attachment.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Attachment.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Attachment.type = Types::Attachment
    AttachmentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AttachmentNotFoundException.type = Types::AttachmentNotFoundException
    Attachments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment)
    AwsAccountIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    ByoipCidr.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr"))
    ByoipCidr.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrState, location_name: "State"))
    ByoipCidr.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrEvents, location_name: "Events"))
    ByoipCidr.type = Types::ByoipCidr
    ByoipCidrEvent.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message"))
    ByoipCidrEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    ByoipCidrEvent.type = Types::ByoipCidrEvent
    ByoipCidrEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrEvent)
    ByoipCidrNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ByoipCidrNotFoundException.type = Types::ByoipCidrNotFoundException
    ByoipCidrState.add_member(:pending_provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_PROVISIONING", traits: {"smithy.api#enumValue" => "PENDING_PROVISIONING"}))
    ByoipCidrState.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ByoipCidrState.add_member(:pending_advertising, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_ADVERTISING", traits: {"smithy.api#enumValue" => "PENDING_ADVERTISING"}))
    ByoipCidrState.add_member(:advertising, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADVERTISING", traits: {"smithy.api#enumValue" => "ADVERTISING"}))
    ByoipCidrState.add_member(:pending_withdrawing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_WITHDRAWING", traits: {"smithy.api#enumValue" => "PENDING_WITHDRAWING"}))
    ByoipCidrState.add_member(:pending_deprovisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DEPROVISIONING", traits: {"smithy.api#enumValue" => "PENDING_DEPROVISIONING"}))
    ByoipCidrState.add_member(:deprovisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPROVISIONED", traits: {"smithy.api#enumValue" => "DEPROVISIONED"}))
    ByoipCidrState.add_member(:failed_provision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_PROVISION", traits: {"smithy.api#enumValue" => "FAILED_PROVISION"}))
    ByoipCidrState.add_member(:failed_advertising, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_ADVERTISING", traits: {"smithy.api#enumValue" => "FAILED_ADVERTISING"}))
    ByoipCidrState.add_member(:failed_withdraw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_WITHDRAW", traits: {"smithy.api#enumValue" => "FAILED_WITHDRAW"}))
    ByoipCidrState.add_member(:failed_deprovision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED_DEPROVISION", traits: {"smithy.api#enumValue" => "FAILED_DEPROVISION"}))
    ByoipCidrs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr)
    CidrAuthorizationContext.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Message", traits: {"smithy.api#required" => {}}))
    CidrAuthorizationContext.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Signature", traits: {"smithy.api#required" => {}}))
    CidrAuthorizationContext.type = Types::CidrAuthorizationContext
    ClientAffinity.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ClientAffinity.add_member(:source_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SOURCE_IP", traits: {"smithy.api#enumValue" => "SOURCE_IP"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateAcceleratorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAcceleratorRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CreateAcceleratorRequest.add_member(:ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    CreateAcceleratorRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    CreateAcceleratorRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAcceleratorRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAcceleratorRequest.type = Types::CreateAcceleratorRequest
    CreateAcceleratorResponse.add_member(:accelerator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    CreateAcceleratorResponse.type = Types::CreateAcceleratorResponse
    CreateCrossAccountAttachmentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateCrossAccountAttachmentRequest.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: "Principals"))
    CreateCrossAccountAttachmentRequest.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: "Resources"))
    CreateCrossAccountAttachmentRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateCrossAccountAttachmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateCrossAccountAttachmentRequest.type = Types::CreateCrossAccountAttachmentRequest
    CreateCrossAccountAttachmentResponse.add_member(:cross_account_attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: "CrossAccountAttachment"))
    CreateCrossAccountAttachmentResponse.type = Types::CreateCrossAccountAttachmentResponse
    CreateCustomRoutingAcceleratorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateCustomRoutingAcceleratorRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CreateCustomRoutingAcceleratorRequest.add_member(:ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    CreateCustomRoutingAcceleratorRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    CreateCustomRoutingAcceleratorRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateCustomRoutingAcceleratorRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateCustomRoutingAcceleratorRequest.type = Types::CreateCustomRoutingAcceleratorRequest
    CreateCustomRoutingAcceleratorResponse.add_member(:accelerator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: "Accelerator"))
    CreateCustomRoutingAcceleratorResponse.type = Types::CreateCustomRoutingAcceleratorResponse
    CreateCustomRoutingEndpointGroupRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    CreateCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion", traits: {"smithy.api#required" => {}}))
    CreateCustomRoutingEndpointGroupRequest.add_member(:destination_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationConfigurations, location_name: "DestinationConfigurations", traits: {"smithy.api#required" => {}}))
    CreateCustomRoutingEndpointGroupRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateCustomRoutingEndpointGroupRequest.type = Types::CreateCustomRoutingEndpointGroupRequest
    CreateCustomRoutingEndpointGroupResponse.add_member(:endpoint_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup, location_name: "EndpointGroup"))
    CreateCustomRoutingEndpointGroupResponse.type = Types::CreateCustomRoutingEndpointGroupResponse
    CreateCustomRoutingListenerRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    CreateCustomRoutingListenerRequest.add_member(:port_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges", traits: {"smithy.api#required" => {}}))
    CreateCustomRoutingListenerRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateCustomRoutingListenerRequest.type = Types::CreateCustomRoutingListenerRequest
    CreateCustomRoutingListenerResponse.add_member(:listener, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: "Listener"))
    CreateCustomRoutingListenerResponse.type = Types::CreateCustomRoutingListenerResponse
    CreateEndpointGroupRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    CreateEndpointGroupRequest.add_member(:endpoint_group_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion", traits: {"smithy.api#required" => {}}))
    CreateEndpointGroupRequest.add_member(:endpoint_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: "EndpointConfigurations"))
    CreateEndpointGroupRequest.add_member(:traffic_dial_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    CreateEndpointGroupRequest.add_member(:health_check_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    CreateEndpointGroupRequest.add_member(:health_check_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    CreateEndpointGroupRequest.add_member(:health_check_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: "HealthCheckPath"))
    CreateEndpointGroupRequest.add_member(:health_check_interval_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    CreateEndpointGroupRequest.add_member(:threshold_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    CreateEndpointGroupRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateEndpointGroupRequest.add_member(:port_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortOverrides, location_name: "PortOverrides"))
    CreateEndpointGroupRequest.type = Types::CreateEndpointGroupRequest
    CreateEndpointGroupResponse.add_member(:endpoint_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    CreateEndpointGroupResponse.type = Types::CreateEndpointGroupResponse
    CreateListenerRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    CreateListenerRequest.add_member(:port_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges", traits: {"smithy.api#required" => {}}))
    CreateListenerRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol", traits: {"smithy.api#required" => {}}))
    CreateListenerRequest.add_member(:client_affinity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    CreateListenerRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateListenerRequest.type = Types::CreateListenerRequest
    CreateListenerResponse.add_member(:listener, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    CreateListenerResponse.type = Types::CreateListenerResponse
    CrossAccountResource.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    CrossAccountResource.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr"))
    CrossAccountResource.add_member(:attachment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn"))
    CrossAccountResource.type = Types::CrossAccountResource
    CrossAccountResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossAccountResource)
    CustomRoutingAccelerator.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    CustomRoutingAccelerator.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    CustomRoutingAccelerator.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CustomRoutingAccelerator.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    CustomRoutingAccelerator.add_member(:ip_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpSets, location_name: "IpSets"))
    CustomRoutingAccelerator.add_member(:dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "DnsName"))
    CustomRoutingAccelerator.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorStatus, location_name: "Status"))
    CustomRoutingAccelerator.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    CustomRoutingAccelerator.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    CustomRoutingAccelerator.type = Types::CustomRoutingAccelerator
    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    CustomRoutingAcceleratorAttributes.type = Types::CustomRoutingAcceleratorAttributes
    CustomRoutingAcceleratorStatus.add_member(:deployed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYED", traits: {"smithy.api#enumValue" => "DEPLOYED"}))
    CustomRoutingAcceleratorStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CustomRoutingAccelerators.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerator)
    CustomRoutingDestinationConfiguration.add_member(:from_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "FromPort", traits: {"smithy.api#required" => {}}))
    CustomRoutingDestinationConfiguration.add_member(:to_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "ToPort", traits: {"smithy.api#required" => {}}))
    CustomRoutingDestinationConfiguration.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingProtocols, location_name: "Protocols", traits: {"smithy.api#required" => {}}))
    CustomRoutingDestinationConfiguration.type = Types::CustomRoutingDestinationConfiguration
    CustomRoutingDestinationConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationConfiguration)
    CustomRoutingDestinationDescription.add_member(:from_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "FromPort"))
    CustomRoutingDestinationDescription.add_member(:to_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "ToPort"))
    CustomRoutingDestinationDescription.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocols, location_name: "Protocols"))
    CustomRoutingDestinationDescription.type = Types::CustomRoutingDestinationDescription
    CustomRoutingDestinationDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationDescription)
    CustomRoutingDestinationTrafficState.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    CustomRoutingDestinationTrafficState.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    CustomRoutingEndpointConfiguration.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    CustomRoutingEndpointConfiguration.add_member(:attachment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn"))
    CustomRoutingEndpointConfiguration.type = Types::CustomRoutingEndpointConfiguration
    CustomRoutingEndpointConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointConfiguration)
    CustomRoutingEndpointDescription.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    CustomRoutingEndpointDescription.type = Types::CustomRoutingEndpointDescription
    CustomRoutingEndpointDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescription)
    CustomRoutingEndpointGroup.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    CustomRoutingEndpointGroup.add_member(:endpoint_group_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion"))
    CustomRoutingEndpointGroup.add_member(:destination_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationDescriptions, location_name: "DestinationDescriptions"))
    CustomRoutingEndpointGroup.add_member(:endpoint_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescriptions, location_name: "EndpointDescriptions"))
    CustomRoutingEndpointGroup.type = Types::CustomRoutingEndpointGroup
    CustomRoutingEndpointGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup)
    CustomRoutingListener.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn"))
    CustomRoutingListener.add_member(:port_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges"))
    CustomRoutingListener.type = Types::CustomRoutingListener
    CustomRoutingListeners.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListener)
    CustomRoutingProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    CustomRoutingProtocol.add_member(:udp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    CustomRoutingProtocols.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingProtocol)
    DeleteAcceleratorRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    DeleteAcceleratorRequest.type = Types::DeleteAcceleratorRequest
    DeleteCrossAccountAttachmentRequest.add_member(:attachment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn", traits: {"smithy.api#required" => {}}))
    DeleteCrossAccountAttachmentRequest.type = Types::DeleteCrossAccountAttachmentRequest
    DeleteCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    DeleteCustomRoutingAcceleratorRequest.type = Types::DeleteCustomRoutingAcceleratorRequest
    DeleteCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    DeleteCustomRoutingEndpointGroupRequest.type = Types::DeleteCustomRoutingEndpointGroupRequest
    DeleteCustomRoutingListenerRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    DeleteCustomRoutingListenerRequest.type = Types::DeleteCustomRoutingListenerRequest
    DeleteEndpointGroupRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    DeleteEndpointGroupRequest.type = Types::DeleteEndpointGroupRequest
    DeleteListenerRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    DeleteListenerRequest.type = Types::DeleteListenerRequest
    DenyCustomRoutingTrafficRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    DenyCustomRoutingTrafficRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId", traits: {"smithy.api#required" => {}}))
    DenyCustomRoutingTrafficRequest.add_member(:destination_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationAddresses, location_name: "DestinationAddresses"))
    DenyCustomRoutingTrafficRequest.add_member(:destination_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPorts, location_name: "DestinationPorts"))
    DenyCustomRoutingTrafficRequest.add_member(:deny_all_traffic_to_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "DenyAllTrafficToEndpoint"))
    DenyCustomRoutingTrafficRequest.type = Types::DenyCustomRoutingTrafficRequest
    DeprovisionByoipCidrRequest.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr", traits: {"smithy.api#required" => {}}))
    DeprovisionByoipCidrRequest.type = Types::DeprovisionByoipCidrRequest
    DeprovisionByoipCidrResponse.add_member(:byoip_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    DeprovisionByoipCidrResponse.type = Types::DeprovisionByoipCidrResponse
    DescribeAcceleratorAttributesRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    DescribeAcceleratorAttributesRequest.type = Types::DescribeAcceleratorAttributesRequest
    DescribeAcceleratorAttributesResponse.add_member(:accelerator_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorAttributes, location_name: "AcceleratorAttributes"))
    DescribeAcceleratorAttributesResponse.type = Types::DescribeAcceleratorAttributesResponse
    DescribeAcceleratorRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    DescribeAcceleratorRequest.type = Types::DescribeAcceleratorRequest
    DescribeAcceleratorResponse.add_member(:accelerator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    DescribeAcceleratorResponse.type = Types::DescribeAcceleratorResponse
    DescribeCrossAccountAttachmentRequest.add_member(:attachment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn", traits: {"smithy.api#required" => {}}))
    DescribeCrossAccountAttachmentRequest.type = Types::DescribeCrossAccountAttachmentRequest
    DescribeCrossAccountAttachmentResponse.add_member(:cross_account_attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: "CrossAccountAttachment"))
    DescribeCrossAccountAttachmentResponse.type = Types::DescribeCrossAccountAttachmentResponse
    DescribeCustomRoutingAcceleratorAttributesRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    DescribeCustomRoutingAcceleratorAttributesRequest.type = Types::DescribeCustomRoutingAcceleratorAttributesRequest
    DescribeCustomRoutingAcceleratorAttributesResponse.add_member(:accelerator_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorAttributes, location_name: "AcceleratorAttributes"))
    DescribeCustomRoutingAcceleratorAttributesResponse.type = Types::DescribeCustomRoutingAcceleratorAttributesResponse
    DescribeCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    DescribeCustomRoutingAcceleratorRequest.type = Types::DescribeCustomRoutingAcceleratorRequest
    DescribeCustomRoutingAcceleratorResponse.add_member(:accelerator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: "Accelerator"))
    DescribeCustomRoutingAcceleratorResponse.type = Types::DescribeCustomRoutingAcceleratorResponse
    DescribeCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    DescribeCustomRoutingEndpointGroupRequest.type = Types::DescribeCustomRoutingEndpointGroupRequest
    DescribeCustomRoutingEndpointGroupResponse.add_member(:endpoint_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup, location_name: "EndpointGroup"))
    DescribeCustomRoutingEndpointGroupResponse.type = Types::DescribeCustomRoutingEndpointGroupResponse
    DescribeCustomRoutingListenerRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    DescribeCustomRoutingListenerRequest.type = Types::DescribeCustomRoutingListenerRequest
    DescribeCustomRoutingListenerResponse.add_member(:listener, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: "Listener"))
    DescribeCustomRoutingListenerResponse.type = Types::DescribeCustomRoutingListenerResponse
    DescribeEndpointGroupRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    DescribeEndpointGroupRequest.type = Types::DescribeEndpointGroupRequest
    DescribeEndpointGroupResponse.add_member(:endpoint_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    DescribeEndpointGroupResponse.type = Types::DescribeEndpointGroupResponse
    DescribeListenerRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    DescribeListenerRequest.type = Types::DescribeListenerRequest
    DescribeListenerResponse.add_member(:listener, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    DescribeListenerResponse.type = Types::DescribeListenerResponse
    DestinationAddresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress)
    DestinationPortMapping.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    DestinationPortMapping.add_member(:accelerator_socket_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddresses, location_name: "AcceleratorSocketAddresses"))
    DestinationPortMapping.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    DestinationPortMapping.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    DestinationPortMapping.add_member(:endpoint_group_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion"))
    DestinationPortMapping.add_member(:destination_socket_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddress, location_name: "DestinationSocketAddress"))
    DestinationPortMapping.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    DestinationPortMapping.add_member(:destination_traffic_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationTrafficState, location_name: "DestinationTrafficState"))
    DestinationPortMapping.type = Types::DestinationPortMapping
    DestinationPortMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPortMapping)
    DestinationPorts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber)
    EndpointAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointAlreadyExistsException.type = Types::EndpointAlreadyExistsException
    EndpointConfiguration.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    EndpointConfiguration.add_member(:weight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointWeight, location_name: "Weight"))
    EndpointConfiguration.add_member(:client_ip_preservation_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "ClientIPPreservationEnabled"))
    EndpointConfiguration.add_member(:attachment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn"))
    EndpointConfiguration.type = Types::EndpointConfiguration
    EndpointConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfiguration)
    EndpointDescription.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    EndpointDescription.add_member(:weight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointWeight, location_name: "Weight"))
    EndpointDescription.add_member(:health_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthState, location_name: "HealthState"))
    EndpointDescription.add_member(:health_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "HealthReason"))
    EndpointDescription.add_member(:client_ip_preservation_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "ClientIPPreservationEnabled"))
    EndpointDescription.type = Types::EndpointDescription
    EndpointDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescription)
    EndpointGroup.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    EndpointGroup.add_member(:endpoint_group_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion"))
    EndpointGroup.add_member(:endpoint_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointDescriptions, location_name: "EndpointDescriptions"))
    EndpointGroup.add_member(:traffic_dial_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    EndpointGroup.add_member(:health_check_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    EndpointGroup.add_member(:health_check_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    EndpointGroup.add_member(:health_check_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: "HealthCheckPath"))
    EndpointGroup.add_member(:health_check_interval_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    EndpointGroup.add_member(:threshold_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    EndpointGroup.add_member(:port_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortOverrides, location_name: "PortOverrides"))
    EndpointGroup.type = Types::EndpointGroup
    EndpointGroupAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointGroupAlreadyExistsException.type = Types::EndpointGroupAlreadyExistsException
    EndpointGroupNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointGroupNotFoundException.type = Types::EndpointGroupNotFoundException
    EndpointGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroup)
    EndpointIdentifier.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId", traits: {"smithy.api#required" => {}}))
    EndpointIdentifier.add_member(:client_ip_preservation_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "ClientIPPreservationEnabled"))
    EndpointIdentifier.type = Types::EndpointIdentifier
    EndpointIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointIdentifier)
    EndpointIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    EndpointNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointNotFoundException.type = Types::EndpointNotFoundException
    HealthCheckProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    HealthCheckProtocol.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    HealthCheckProtocol.add_member(:https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    HealthState.add_member(:initial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIAL", traits: {"smithy.api#enumValue" => "INITIAL"}))
    HealthState.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    HealthState.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    IncorrectCidrStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IncorrectCidrStateException.type = Types::IncorrectCidrStateException
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidPortRangeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidPortRangeException.type = Types::InvalidPortRangeException
    IpAddressFamily.add_member(:i_pv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPv4", traits: {"smithy.api#enumValue" => "IPv4"}))
    IpAddressFamily.add_member(:i_pv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPv6", traits: {"smithy.api#enumValue" => "IPv6"}))
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    IpAddresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress)
    IpSet.add_member(:ip_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "IpFamily", traits: {"smithy.api#deprecated" => {"message" => "IpFamily has been replaced by IpAddressFamily"}}))
    IpSet.add_member(:ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    IpSet.add_member(:ip_address_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressFamily, location_name: "IpAddressFamily"))
    IpSet.type = Types::IpSet
    IpSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpSet)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAcceleratorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAcceleratorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListAcceleratorsRequest.type = Types::ListAcceleratorsRequest
    ListAcceleratorsResponse.add_member(:accelerators, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerators, location_name: "Accelerators"))
    ListAcceleratorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListAcceleratorsResponse.type = Types::ListAcceleratorsResponse
    ListByoipCidrsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListByoipCidrsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListByoipCidrsRequest.type = Types::ListByoipCidrsRequest
    ListByoipCidrsResponse.add_member(:byoip_cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrs, location_name: "ByoipCidrs"))
    ListByoipCidrsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListByoipCidrsResponse.type = Types::ListByoipCidrsResponse
    ListCrossAccountAttachmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCrossAccountAttachmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCrossAccountAttachmentsRequest.type = Types::ListCrossAccountAttachmentsRequest
    ListCrossAccountAttachmentsResponse.add_member(:cross_account_attachments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: "CrossAccountAttachments"))
    ListCrossAccountAttachmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCrossAccountAttachmentsResponse.type = Types::ListCrossAccountAttachmentsResponse
    ListCrossAccountResourceAccountsRequest.type = Types::ListCrossAccountResourceAccountsRequest
    ListCrossAccountResourceAccountsResponse.add_member(:resource_owner_aws_account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountIds, location_name: "ResourceOwnerAwsAccountIds"))
    ListCrossAccountResourceAccountsResponse.type = Types::ListCrossAccountResourceAccountsResponse
    ListCrossAccountResourcesRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    ListCrossAccountResourcesRequest.add_member(:resource_owner_aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "ResourceOwnerAwsAccountId", traits: {"smithy.api#required" => {}}))
    ListCrossAccountResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCrossAccountResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCrossAccountResourcesRequest.type = Types::ListCrossAccountResourcesRequest
    ListCrossAccountResourcesResponse.add_member(:cross_account_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrossAccountResources, location_name: "CrossAccountResources"))
    ListCrossAccountResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCrossAccountResourcesResponse.type = Types::ListCrossAccountResourcesResponse
    ListCustomRoutingAcceleratorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomRoutingAcceleratorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingAcceleratorsRequest.type = Types::ListCustomRoutingAcceleratorsRequest
    ListCustomRoutingAcceleratorsResponse.add_member(:accelerators, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerators, location_name: "Accelerators"))
    ListCustomRoutingAcceleratorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingAcceleratorsResponse.type = Types::ListCustomRoutingAcceleratorsResponse
    ListCustomRoutingEndpointGroupsRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    ListCustomRoutingEndpointGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomRoutingEndpointGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingEndpointGroupsRequest.type = Types::ListCustomRoutingEndpointGroupsRequest
    ListCustomRoutingEndpointGroupsResponse.add_member(:endpoint_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroups, location_name: "EndpointGroups"))
    ListCustomRoutingEndpointGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingEndpointGroupsResponse.type = Types::ListCustomRoutingEndpointGroupsResponse
    ListCustomRoutingListenersRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    ListCustomRoutingListenersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomRoutingListenersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingListenersRequest.type = Types::ListCustomRoutingListenersRequest
    ListCustomRoutingListenersResponse.add_member(:listeners, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListeners, location_name: "Listeners"))
    ListCustomRoutingListenersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingListenersResponse.type = Types::ListCustomRoutingListenersResponse
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId", traits: {"smithy.api#required" => {}}))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:destination_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "DestinationAddress", traits: {"smithy.api#required" => {}}))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortMappingsMaxResults, location_name: "MaxResults"))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingPortMappingsByDestinationRequest.type = Types::ListCustomRoutingPortMappingsByDestinationRequest
    ListCustomRoutingPortMappingsByDestinationResponse.add_member(:destination_port_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationPortMappings, location_name: "DestinationPortMappings"))
    ListCustomRoutingPortMappingsByDestinationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingPortMappingsByDestinationResponse.type = Types::ListCustomRoutingPortMappingsByDestinationResponse
    ListCustomRoutingPortMappingsRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    ListCustomRoutingPortMappingsRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    ListCustomRoutingPortMappingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortMappingsMaxResults, location_name: "MaxResults"))
    ListCustomRoutingPortMappingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingPortMappingsRequest.type = Types::ListCustomRoutingPortMappingsRequest
    ListCustomRoutingPortMappingsResponse.add_member(:port_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortMappings, location_name: "PortMappings"))
    ListCustomRoutingPortMappingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingPortMappingsResponse.type = Types::ListCustomRoutingPortMappingsResponse
    ListEndpointGroupsRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    ListEndpointGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEndpointGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListEndpointGroupsRequest.type = Types::ListEndpointGroupsRequest
    ListEndpointGroupsResponse.add_member(:endpoint_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroups, location_name: "EndpointGroups"))
    ListEndpointGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListEndpointGroupsResponse.type = Types::ListEndpointGroupsResponse
    ListListenersRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    ListListenersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListListenersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListListenersRequest.type = Types::ListListenersRequest
    ListListenersResponse.add_member(:listeners, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    ListListenersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListListenersResponse.type = Types::ListListenersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Listener.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn"))
    Listener.add_member(:port_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges"))
    Listener.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    Listener.add_member(:client_affinity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    Listener.type = Types::Listener
    ListenerNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ListenerNotFoundException.type = Types::ListenerNotFoundException
    Listeners.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listener)
    PortMapping.add_member(:accelerator_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "AcceleratorPort"))
    PortMapping.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    PortMapping.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    PortMapping.add_member(:destination_socket_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddress, location_name: "DestinationSocketAddress"))
    PortMapping.add_member(:protocols, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingProtocols, location_name: "Protocols"))
    PortMapping.add_member(:destination_traffic_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingDestinationTrafficState, location_name: "DestinationTrafficState"))
    PortMapping.type = Types::PortMapping
    PortMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortMapping)
    PortOverride.add_member(:listener_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "ListenerPort"))
    PortOverride.add_member(:endpoint_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "EndpointPort"))
    PortOverride.type = Types::PortOverride
    PortOverrides.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortOverride)
    PortRange.add_member(:from_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "FromPort"))
    PortRange.add_member(:to_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "ToPort"))
    PortRange.type = Types::PortRange
    PortRanges.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRange)
    Principals.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principal)
    Protocol.add_member(:tcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    Protocol.add_member(:udp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    Protocols.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol)
    ProvisionByoipCidrRequest.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr", traits: {"smithy.api#required" => {}}))
    ProvisionByoipCidrRequest.add_member(:cidr_authorization_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CidrAuthorizationContext, location_name: "CidrAuthorizationContext", traits: {"smithy.api#required" => {}}))
    ProvisionByoipCidrRequest.type = Types::ProvisionByoipCidrRequest
    ProvisionByoipCidrResponse.add_member(:byoip_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    ProvisionByoipCidrResponse.type = Types::ProvisionByoipCidrResponse
    RemoveCustomRoutingEndpointsRequest.add_member(:endpoint_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointIds, location_name: "EndpointIds", traits: {"smithy.api#required" => {}}))
    RemoveCustomRoutingEndpointsRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    RemoveCustomRoutingEndpointsRequest.type = Types::RemoveCustomRoutingEndpointsRequest
    RemoveEndpointsRequest.add_member(:endpoint_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointIdentifiers, location_name: "EndpointIdentifiers", traits: {"smithy.api#required" => {}}))
    RemoveEndpointsRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    RemoveEndpointsRequest.type = Types::RemoveEndpointsRequest
    Resource.add_member(:endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    Resource.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr"))
    Resource.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    Resource.type = Types::Resource
    Resources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    SocketAddress.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "IpAddress"))
    SocketAddress.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: "Port"))
    SocketAddress.type = Types::SocketAddress
    SocketAddresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SocketAddress)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TransactionInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TransactionInProgressException.type = Types::TransactionInProgressException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAcceleratorAttributesRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    UpdateAcceleratorAttributesRequest.type = Types::UpdateAcceleratorAttributesRequest
    UpdateAcceleratorAttributesResponse.add_member(:accelerator_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorAttributes, location_name: "AcceleratorAttributes"))
    UpdateAcceleratorAttributesResponse.type = Types::UpdateAcceleratorAttributesResponse
    UpdateAcceleratorRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    UpdateAcceleratorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    UpdateAcceleratorRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    UpdateAcceleratorRequest.add_member(:ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    UpdateAcceleratorRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    UpdateAcceleratorRequest.type = Types::UpdateAcceleratorRequest
    UpdateAcceleratorResponse.add_member(:accelerator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    UpdateAcceleratorResponse.type = Types::UpdateAcceleratorResponse
    UpdateCrossAccountAttachmentRequest.add_member(:attachment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn", traits: {"smithy.api#required" => {}}))
    UpdateCrossAccountAttachmentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: "Name"))
    UpdateCrossAccountAttachmentRequest.add_member(:add_principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: "AddPrincipals"))
    UpdateCrossAccountAttachmentRequest.add_member(:remove_principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: "RemovePrincipals"))
    UpdateCrossAccountAttachmentRequest.add_member(:add_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: "AddResources"))
    UpdateCrossAccountAttachmentRequest.add_member(:remove_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: "RemoveResources"))
    UpdateCrossAccountAttachmentRequest.type = Types::UpdateCrossAccountAttachmentRequest
    UpdateCrossAccountAttachmentResponse.add_member(:cross_account_attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: "CrossAccountAttachment"))
    UpdateCrossAccountAttachmentResponse.type = Types::UpdateCrossAccountAttachmentResponse
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    UpdateCustomRoutingAcceleratorAttributesRequest.type = Types::UpdateCustomRoutingAcceleratorAttributesRequest
    UpdateCustomRoutingAcceleratorAttributesResponse.add_member(:accelerator_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorAttributes, location_name: "AcceleratorAttributes"))
    UpdateCustomRoutingAcceleratorAttributesResponse.type = Types::UpdateCustomRoutingAcceleratorAttributesResponse
    UpdateCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn", traits: {"smithy.api#required" => {}}))
    UpdateCustomRoutingAcceleratorRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    UpdateCustomRoutingAcceleratorRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    UpdateCustomRoutingAcceleratorRequest.add_member(:ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    UpdateCustomRoutingAcceleratorRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    UpdateCustomRoutingAcceleratorRequest.type = Types::UpdateCustomRoutingAcceleratorRequest
    UpdateCustomRoutingAcceleratorResponse.add_member(:accelerator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: "Accelerator"))
    UpdateCustomRoutingAcceleratorResponse.type = Types::UpdateCustomRoutingAcceleratorResponse
    UpdateCustomRoutingListenerRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    UpdateCustomRoutingListenerRequest.add_member(:port_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges", traits: {"smithy.api#required" => {}}))
    UpdateCustomRoutingListenerRequest.type = Types::UpdateCustomRoutingListenerRequest
    UpdateCustomRoutingListenerResponse.add_member(:listener, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: "Listener"))
    UpdateCustomRoutingListenerResponse.type = Types::UpdateCustomRoutingListenerResponse
    UpdateEndpointGroupRequest.add_member(:endpoint_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn", traits: {"smithy.api#required" => {}}))
    UpdateEndpointGroupRequest.add_member(:endpoint_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: "EndpointConfigurations"))
    UpdateEndpointGroupRequest.add_member(:traffic_dial_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    UpdateEndpointGroupRequest.add_member(:health_check_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    UpdateEndpointGroupRequest.add_member(:health_check_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    UpdateEndpointGroupRequest.add_member(:health_check_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: "HealthCheckPath"))
    UpdateEndpointGroupRequest.add_member(:health_check_interval_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    UpdateEndpointGroupRequest.add_member(:threshold_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    UpdateEndpointGroupRequest.add_member(:port_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortOverrides, location_name: "PortOverrides"))
    UpdateEndpointGroupRequest.type = Types::UpdateEndpointGroupRequest
    UpdateEndpointGroupResponse.add_member(:endpoint_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    UpdateEndpointGroupResponse.type = Types::UpdateEndpointGroupResponse
    UpdateListenerRequest.add_member(:listener_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn", traits: {"smithy.api#required" => {}}))
    UpdateListenerRequest.add_member(:port_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges"))
    UpdateListenerRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    UpdateListenerRequest.add_member(:client_affinity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    UpdateListenerRequest.type = Types::UpdateListenerRequest
    UpdateListenerResponse.add_member(:listener, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    UpdateListenerResponse.type = Types::UpdateListenerResponse
    WithdrawByoipCidrRequest.add_member(:cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr", traits: {"smithy.api#required" => {}}))
    WithdrawByoipCidrRequest.type = Types::WithdrawByoipCidrRequest
    WithdrawByoipCidrResponse.add_member(:byoip_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    WithdrawByoipCidrResponse.type = Types::WithdrawByoipCidrResponse

    GlobalAcceleratorV20180706 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.globalaccelerator#GlobalAccelerator_V20180706"
      service.name = "GlobalAcceleratorV20180706"
      service.version = "2018-08-08"
      service.traits = {"aws.api#service" => {"sdkId" => "Global Accelerator", "arnNamespace" => "globalaccelerator", "cloudFormationName" => "GlobalAccelerator", "cloudTrailEventSource" => "globalaccelerator.amazonaws.com", "docId" => "globalaccelerator-2018-08-08", "endpointPrefix" => "globalaccelerator"}, "aws.auth#sigv4" => {"name" => "globalaccelerator"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Global Accelerator"}
      service.add_operation(:add_custom_routing_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#AddCustomRoutingEndpoints"
        operation.name = "AddCustomRoutingEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddCustomRoutingEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddCustomRoutingEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:add_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#AddEndpoints"
        operation.name = "AddEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:advertise_byoip_cidr, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#AdvertiseByoipCidr"
        operation.name = "AdvertiseByoipCidr"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvertiseByoipCidrRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvertiseByoipCidrResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:allow_custom_routing_traffic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#AllowCustomRoutingTraffic"
        operation.name = "AllowCustomRoutingTraffic"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowCustomRoutingTrafficRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:create_accelerator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateAccelerator"
        operation.name = "CreateAccelerator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAcceleratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAcceleratorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:create_cross_account_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateCrossAccountAttachment"
        operation.name = "CreateCrossAccountAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCrossAccountAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCrossAccountAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_routing_accelerator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateCustomRoutingAccelerator"
        operation.name = "CreateCustomRoutingAccelerator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingAcceleratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingAcceleratorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_routing_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateCustomRoutingEndpointGroup"
        operation.name = "CreateCustomRoutingEndpointGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingEndpointGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingEndpointGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_routing_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateCustomRoutingListener"
        operation.name = "CreateCustomRoutingListener"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingListenerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomRoutingListenerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateEndpointGroup"
        operation.name = "CreateEndpointGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#CreateListener"
        operation.name = "CreateListener"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListenerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateListenerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:delete_accelerator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteAccelerator"
        operation.name = "DeleteAccelerator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAcceleratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotDisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedListenerFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cross_account_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteCrossAccountAttachment"
        operation.name = "DeleteCrossAccountAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCrossAccountAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_routing_accelerator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteCustomRoutingAccelerator"
        operation.name = "DeleteCustomRoutingAccelerator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomRoutingAcceleratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotDisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedListenerFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_routing_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteCustomRoutingEndpointGroup"
        operation.name = "DeleteCustomRoutingEndpointGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomRoutingEndpointGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_routing_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteCustomRoutingListener"
        operation.name = "DeleteCustomRoutingListener"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomRoutingListenerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedEndpointGroupFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteEndpointGroup"
        operation.name = "DeleteEndpointGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:delete_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeleteListener"
        operation.name = "DeleteListener"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteListenerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedEndpointGroupFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:deny_custom_routing_traffic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DenyCustomRoutingTraffic"
        operation.name = "DenyCustomRoutingTraffic"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DenyCustomRoutingTrafficRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:deprovision_byoip_cidr, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DeprovisionByoipCidr"
        operation.name = "DeprovisionByoipCidr"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprovisionByoipCidrRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprovisionByoipCidrResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_accelerator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeAccelerator"
        operation.name = "DescribeAccelerator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAcceleratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAcceleratorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_accelerator_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeAcceleratorAttributes"
        operation.name = "DescribeAcceleratorAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAcceleratorAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAcceleratorAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cross_account_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCrossAccountAttachment"
        operation.name = "DescribeCrossAccountAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCrossAccountAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCrossAccountAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_routing_accelerator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCustomRoutingAccelerator"
        operation.name = "DescribeCustomRoutingAccelerator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_routing_accelerator_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCustomRoutingAcceleratorAttributes"
        operation.name = "DescribeCustomRoutingAcceleratorAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_routing_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCustomRoutingEndpointGroup"
        operation.name = "DescribeCustomRoutingEndpointGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingEndpointGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingEndpointGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_routing_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeCustomRoutingListener"
        operation.name = "DescribeCustomRoutingListener"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingListenerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomRoutingListenerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeEndpointGroup"
        operation.name = "DescribeEndpointGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:describe_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#DescribeListener"
        operation.name = "DescribeListener"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeListenerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_accelerators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListAccelerators"
        operation.name = "ListAccelerators"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAcceleratorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAcceleratorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccelerators.new
      end)
      service.add_operation(:list_byoip_cidrs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListByoipCidrs"
        operation.name = "ListByoipCidrs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListByoipCidrsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListByoipCidrsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListByoipCidrs.new
      end)
      service.add_operation(:list_cross_account_attachments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCrossAccountAttachments"
        operation.name = "ListCrossAccountAttachments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountAttachmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountAttachmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCrossAccountAttachments.new
      end)
      service.add_operation(:list_cross_account_resource_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCrossAccountResourceAccounts"
        operation.name = "ListCrossAccountResourceAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountResourceAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountResourceAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.traits = {}
      end)
      service.add_operation(:list_cross_account_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCrossAccountResources"
        operation.name = "ListCrossAccountResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCrossAccountResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCrossAccountResources.new
      end)
      service.add_operation(:list_custom_routing_accelerators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingAccelerators"
        operation.name = "ListCustomRoutingAccelerators"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingAcceleratorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingAcceleratorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingAccelerators.new
      end)
      service.add_operation(:list_custom_routing_endpoint_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingEndpointGroups"
        operation.name = "ListCustomRoutingEndpointGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingEndpointGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingEndpointGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingEndpointGroups.new
      end)
      service.add_operation(:list_custom_routing_listeners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingListeners"
        operation.name = "ListCustomRoutingListeners"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingListenersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingListenersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingListeners.new
      end)
      service.add_operation(:list_custom_routing_port_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingPortMappings"
        operation.name = "ListCustomRoutingPortMappings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingPortMappings.new
      end)
      service.add_operation(:list_custom_routing_port_mappings_by_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListCustomRoutingPortMappingsByDestination"
        operation.name = "ListCustomRoutingPortMappingsByDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsByDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsByDestinationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCustomRoutingPortMappingsByDestination.new
      end)
      service.add_operation(:list_endpoint_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListEndpointGroups"
        operation.name = "ListEndpointGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEndpointGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEndpointGroups.new
      end)
      service.add_operation(:list_listeners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListListeners"
        operation.name = "ListListeners"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListListenersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListListenersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListListeners.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:provision_byoip_cidr, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#ProvisionByoipCidr"
        operation.name = "ProvisionByoipCidr"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionByoipCidrRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionByoipCidrResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:remove_custom_routing_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#RemoveCustomRoutingEndpoints"
        operation.name = "RemoveCustomRoutingEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveCustomRoutingEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:remove_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#RemoveEndpoints"
        operation.name = "RemoveEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.traits = {}
      end)
      service.add_operation(:update_accelerator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateAccelerator"
        operation.name = "UpdateAccelerator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAcceleratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAcceleratorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_accelerator_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateAcceleratorAttributes"
        operation.name = "UpdateAcceleratorAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAcceleratorAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAcceleratorAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_cross_account_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateCrossAccountAttachment"
        operation.name = "UpdateCrossAccountAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCrossAccountAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCrossAccountAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_routing_accelerator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateCustomRoutingAccelerator"
        operation.name = "UpdateCustomRoutingAccelerator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_routing_accelerator_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateCustomRoutingAcceleratorAttributes"
        operation.name = "UpdateCustomRoutingAcceleratorAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:update_custom_routing_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateCustomRoutingListener"
        operation.name = "UpdateCustomRoutingListener"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingListenerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomRoutingListenerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_endpoint_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateEndpointGroup"
        operation.name = "UpdateEndpointGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEndpointGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:update_listener, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#UpdateListener"
        operation.name = "UpdateListener"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateListenerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateListenerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:withdraw_byoip_cidr, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.globalaccelerator#WithdrawByoipCidr"
        operation.name = "WithdrawByoipCidr"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WithdrawByoipCidrRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WithdrawByoipCidrResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgumentException)
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
