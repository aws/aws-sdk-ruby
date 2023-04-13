# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaConnect
  # @api private
  module ClientApi

    include Seahorse::Model

    AddBridgeFlowSourceRequest = Shapes::StructureShape.new(name: 'AddBridgeFlowSourceRequest')
    AddBridgeNetworkOutputRequest = Shapes::StructureShape.new(name: 'AddBridgeNetworkOutputRequest')
    AddBridgeNetworkSourceRequest = Shapes::StructureShape.new(name: 'AddBridgeNetworkSourceRequest')
    AddBridgeOutputRequest = Shapes::StructureShape.new(name: 'AddBridgeOutputRequest')
    AddBridgeOutputsRequest = Shapes::StructureShape.new(name: 'AddBridgeOutputsRequest')
    AddBridgeOutputsResponse = Shapes::StructureShape.new(name: 'AddBridgeOutputsResponse')
    AddBridgeSourceRequest = Shapes::StructureShape.new(name: 'AddBridgeSourceRequest')
    AddBridgeSourcesRequest = Shapes::StructureShape.new(name: 'AddBridgeSourcesRequest')
    AddBridgeSourcesResponse = Shapes::StructureShape.new(name: 'AddBridgeSourcesResponse')
    AddEgressGatewayBridgeRequest = Shapes::StructureShape.new(name: 'AddEgressGatewayBridgeRequest')
    AddFlowMediaStreamsRequest = Shapes::StructureShape.new(name: 'AddFlowMediaStreamsRequest')
    AddFlowMediaStreamsResponse = Shapes::StructureShape.new(name: 'AddFlowMediaStreamsResponse')
    AddFlowOutputs420Exception = Shapes::StructureShape.new(name: 'AddFlowOutputs420Exception')
    AddFlowOutputsRequest = Shapes::StructureShape.new(name: 'AddFlowOutputsRequest')
    AddFlowOutputsResponse = Shapes::StructureShape.new(name: 'AddFlowOutputsResponse')
    AddFlowSourcesRequest = Shapes::StructureShape.new(name: 'AddFlowSourcesRequest')
    AddFlowSourcesResponse = Shapes::StructureShape.new(name: 'AddFlowSourcesResponse')
    AddFlowVpcInterfacesRequest = Shapes::StructureShape.new(name: 'AddFlowVpcInterfacesRequest')
    AddFlowVpcInterfacesResponse = Shapes::StructureShape.new(name: 'AddFlowVpcInterfacesResponse')
    AddIngressGatewayBridgeRequest = Shapes::StructureShape.new(name: 'AddIngressGatewayBridgeRequest')
    AddMaintenance = Shapes::StructureShape.new(name: 'AddMaintenance')
    AddMediaStreamRequest = Shapes::StructureShape.new(name: 'AddMediaStreamRequest')
    AddOutputRequest = Shapes::StructureShape.new(name: 'AddOutputRequest')
    Algorithm = Shapes::StringShape.new(name: 'Algorithm')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Bridge = Shapes::StructureShape.new(name: 'Bridge')
    BridgeFlowOutput = Shapes::StructureShape.new(name: 'BridgeFlowOutput')
    BridgeFlowSource = Shapes::StructureShape.new(name: 'BridgeFlowSource')
    BridgeNetworkOutput = Shapes::StructureShape.new(name: 'BridgeNetworkOutput')
    BridgeNetworkSource = Shapes::StructureShape.new(name: 'BridgeNetworkSource')
    BridgeOutput = Shapes::StructureShape.new(name: 'BridgeOutput')
    BridgePlacement = Shapes::StringShape.new(name: 'BridgePlacement')
    BridgeSource = Shapes::StructureShape.new(name: 'BridgeSource')
    BridgeState = Shapes::StringShape.new(name: 'BridgeState')
    Colorimetry = Shapes::StringShape.new(name: 'Colorimetry')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    CreateBridge420Exception = Shapes::StructureShape.new(name: 'CreateBridge420Exception')
    CreateBridgeRequest = Shapes::StructureShape.new(name: 'CreateBridgeRequest')
    CreateBridgeResponse = Shapes::StructureShape.new(name: 'CreateBridgeResponse')
    CreateFlow420Exception = Shapes::StructureShape.new(name: 'CreateFlow420Exception')
    CreateFlowRequest = Shapes::StructureShape.new(name: 'CreateFlowRequest')
    CreateFlowResponse = Shapes::StructureShape.new(name: 'CreateFlowResponse')
    CreateGateway420Exception = Shapes::StructureShape.new(name: 'CreateGateway420Exception')
    CreateGatewayRequest = Shapes::StructureShape.new(name: 'CreateGatewayRequest')
    CreateGatewayResponse = Shapes::StructureShape.new(name: 'CreateGatewayResponse')
    DeleteBridgeRequest = Shapes::StructureShape.new(name: 'DeleteBridgeRequest')
    DeleteBridgeResponse = Shapes::StructureShape.new(name: 'DeleteBridgeResponse')
    DeleteFlowRequest = Shapes::StructureShape.new(name: 'DeleteFlowRequest')
    DeleteFlowResponse = Shapes::StructureShape.new(name: 'DeleteFlowResponse')
    DeleteGatewayRequest = Shapes::StructureShape.new(name: 'DeleteGatewayRequest')
    DeleteGatewayResponse = Shapes::StructureShape.new(name: 'DeleteGatewayResponse')
    DeregisterGatewayInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterGatewayInstanceRequest')
    DeregisterGatewayInstanceResponse = Shapes::StructureShape.new(name: 'DeregisterGatewayInstanceResponse')
    DescribeBridgeRequest = Shapes::StructureShape.new(name: 'DescribeBridgeRequest')
    DescribeBridgeResponse = Shapes::StructureShape.new(name: 'DescribeBridgeResponse')
    DescribeFlowRequest = Shapes::StructureShape.new(name: 'DescribeFlowRequest')
    DescribeFlowResponse = Shapes::StructureShape.new(name: 'DescribeFlowResponse')
    DescribeGatewayInstanceRequest = Shapes::StructureShape.new(name: 'DescribeGatewayInstanceRequest')
    DescribeGatewayInstanceResponse = Shapes::StructureShape.new(name: 'DescribeGatewayInstanceResponse')
    DescribeGatewayRequest = Shapes::StructureShape.new(name: 'DescribeGatewayRequest')
    DescribeGatewayResponse = Shapes::StructureShape.new(name: 'DescribeGatewayResponse')
    DescribeOfferingRequest = Shapes::StructureShape.new(name: 'DescribeOfferingRequest')
    DescribeOfferingResponse = Shapes::StructureShape.new(name: 'DescribeOfferingResponse')
    DescribeReservationRequest = Shapes::StructureShape.new(name: 'DescribeReservationRequest')
    DescribeReservationResponse = Shapes::StructureShape.new(name: 'DescribeReservationResponse')
    DesiredState = Shapes::StringShape.new(name: 'DesiredState')
    DestinationConfiguration = Shapes::StructureShape.new(name: 'DestinationConfiguration')
    DestinationConfigurationRequest = Shapes::StructureShape.new(name: 'DestinationConfigurationRequest')
    DurationUnits = Shapes::StringShape.new(name: 'DurationUnits')
    EgressGatewayBridge = Shapes::StructureShape.new(name: 'EgressGatewayBridge')
    EncoderProfile = Shapes::StringShape.new(name: 'EncoderProfile')
    EncodingName = Shapes::StringShape.new(name: 'EncodingName')
    EncodingParameters = Shapes::StructureShape.new(name: 'EncodingParameters')
    EncodingParametersRequest = Shapes::StructureShape.new(name: 'EncodingParametersRequest')
    Encryption = Shapes::StructureShape.new(name: 'Encryption')
    Entitlement = Shapes::StructureShape.new(name: 'Entitlement')
    EntitlementStatus = Shapes::StringShape.new(name: 'EntitlementStatus')
    FailoverConfig = Shapes::StructureShape.new(name: 'FailoverConfig')
    FailoverMode = Shapes::StringShape.new(name: 'FailoverMode')
    Flow = Shapes::StructureShape.new(name: 'Flow')
    Fmtp = Shapes::StructureShape.new(name: 'Fmtp')
    FmtpRequest = Shapes::StructureShape.new(name: 'FmtpRequest')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    Gateway = Shapes::StructureShape.new(name: 'Gateway')
    GatewayBridgeSource = Shapes::StructureShape.new(name: 'GatewayBridgeSource')
    GatewayInstance = Shapes::StructureShape.new(name: 'GatewayInstance')
    GatewayNetwork = Shapes::StructureShape.new(name: 'GatewayNetwork')
    GatewayState = Shapes::StringShape.new(name: 'GatewayState')
    GrantEntitlementRequest = Shapes::StructureShape.new(name: 'GrantEntitlementRequest')
    GrantFlowEntitlements420Exception = Shapes::StructureShape.new(name: 'GrantFlowEntitlements420Exception')
    GrantFlowEntitlementsRequest = Shapes::StructureShape.new(name: 'GrantFlowEntitlementsRequest')
    GrantFlowEntitlementsResponse = Shapes::StructureShape.new(name: 'GrantFlowEntitlementsResponse')
    IngressGatewayBridge = Shapes::StructureShape.new(name: 'IngressGatewayBridge')
    InputConfiguration = Shapes::StructureShape.new(name: 'InputConfiguration')
    InputConfigurationRequest = Shapes::StructureShape.new(name: 'InputConfigurationRequest')
    InstanceState = Shapes::StringShape.new(name: 'InstanceState')
    Interface = Shapes::StructureShape.new(name: 'Interface')
    InterfaceRequest = Shapes::StructureShape.new(name: 'InterfaceRequest')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    ListBridgesRequest = Shapes::StructureShape.new(name: 'ListBridgesRequest')
    ListBridgesResponse = Shapes::StructureShape.new(name: 'ListBridgesResponse')
    ListEntitlementsRequest = Shapes::StructureShape.new(name: 'ListEntitlementsRequest')
    ListEntitlementsResponse = Shapes::StructureShape.new(name: 'ListEntitlementsResponse')
    ListFlowsRequest = Shapes::StructureShape.new(name: 'ListFlowsRequest')
    ListFlowsResponse = Shapes::StructureShape.new(name: 'ListFlowsResponse')
    ListGatewayInstancesRequest = Shapes::StructureShape.new(name: 'ListGatewayInstancesRequest')
    ListGatewayInstancesResponse = Shapes::StructureShape.new(name: 'ListGatewayInstancesResponse')
    ListGatewaysRequest = Shapes::StructureShape.new(name: 'ListGatewaysRequest')
    ListGatewaysResponse = Shapes::StructureShape.new(name: 'ListGatewaysResponse')
    ListOfferingsRequest = Shapes::StructureShape.new(name: 'ListOfferingsRequest')
    ListOfferingsResponse = Shapes::StructureShape.new(name: 'ListOfferingsResponse')
    ListReservationsRequest = Shapes::StructureShape.new(name: 'ListReservationsRequest')
    ListReservationsResponse = Shapes::StructureShape.new(name: 'ListReservationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListedBridge = Shapes::StructureShape.new(name: 'ListedBridge')
    ListedEntitlement = Shapes::StructureShape.new(name: 'ListedEntitlement')
    ListedFlow = Shapes::StructureShape.new(name: 'ListedFlow')
    ListedGateway = Shapes::StructureShape.new(name: 'ListedGateway')
    ListedGatewayInstance = Shapes::StructureShape.new(name: 'ListedGatewayInstance')
    Maintenance = Shapes::StructureShape.new(name: 'Maintenance')
    MaintenanceDay = Shapes::StringShape.new(name: 'MaintenanceDay')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaStream = Shapes::StructureShape.new(name: 'MediaStream')
    MediaStreamAttributes = Shapes::StructureShape.new(name: 'MediaStreamAttributes')
    MediaStreamAttributesRequest = Shapes::StructureShape.new(name: 'MediaStreamAttributesRequest')
    MediaStreamOutputConfiguration = Shapes::StructureShape.new(name: 'MediaStreamOutputConfiguration')
    MediaStreamOutputConfigurationRequest = Shapes::StructureShape.new(name: 'MediaStreamOutputConfigurationRequest')
    MediaStreamSourceConfiguration = Shapes::StructureShape.new(name: 'MediaStreamSourceConfiguration')
    MediaStreamSourceConfigurationRequest = Shapes::StructureShape.new(name: 'MediaStreamSourceConfigurationRequest')
    MediaStreamType = Shapes::StringShape.new(name: 'MediaStreamType')
    MessageDetail = Shapes::StructureShape.new(name: 'MessageDetail')
    Messages = Shapes::StructureShape.new(name: 'Messages')
    NetworkInterfaceType = Shapes::StringShape.new(name: 'NetworkInterfaceType')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Offering = Shapes::StructureShape.new(name: 'Offering')
    Output = Shapes::StructureShape.new(name: 'Output')
    PriceUnits = Shapes::StringShape.new(name: 'PriceUnits')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    PurchaseOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseOfferingRequest')
    PurchaseOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseOfferingResponse')
    Range = Shapes::StringShape.new(name: 'Range')
    RemoveBridgeOutputRequest = Shapes::StructureShape.new(name: 'RemoveBridgeOutputRequest')
    RemoveBridgeOutputResponse = Shapes::StructureShape.new(name: 'RemoveBridgeOutputResponse')
    RemoveBridgeSourceRequest = Shapes::StructureShape.new(name: 'RemoveBridgeSourceRequest')
    RemoveBridgeSourceResponse = Shapes::StructureShape.new(name: 'RemoveBridgeSourceResponse')
    RemoveFlowMediaStreamRequest = Shapes::StructureShape.new(name: 'RemoveFlowMediaStreamRequest')
    RemoveFlowMediaStreamResponse = Shapes::StructureShape.new(name: 'RemoveFlowMediaStreamResponse')
    RemoveFlowOutputRequest = Shapes::StructureShape.new(name: 'RemoveFlowOutputRequest')
    RemoveFlowOutputResponse = Shapes::StructureShape.new(name: 'RemoveFlowOutputResponse')
    RemoveFlowSourceRequest = Shapes::StructureShape.new(name: 'RemoveFlowSourceRequest')
    RemoveFlowSourceResponse = Shapes::StructureShape.new(name: 'RemoveFlowSourceResponse')
    RemoveFlowVpcInterfaceRequest = Shapes::StructureShape.new(name: 'RemoveFlowVpcInterfaceRequest')
    RemoveFlowVpcInterfaceResponse = Shapes::StructureShape.new(name: 'RemoveFlowVpcInterfaceResponse')
    Reservation = Shapes::StructureShape.new(name: 'Reservation')
    ReservationState = Shapes::StringShape.new(name: 'ReservationState')
    ResourceSpecification = Shapes::StructureShape.new(name: 'ResourceSpecification')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseError = Shapes::StructureShape.new(name: 'ResponseError')
    RevokeFlowEntitlementRequest = Shapes::StructureShape.new(name: 'RevokeFlowEntitlementRequest')
    RevokeFlowEntitlementResponse = Shapes::StructureShape.new(name: 'RevokeFlowEntitlementResponse')
    ScanMode = Shapes::StringShape.new(name: 'ScanMode')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetGatewayBridgeSourceRequest = Shapes::StructureShape.new(name: 'SetGatewayBridgeSourceRequest')
    SetSourceRequest = Shapes::StructureShape.new(name: 'SetSourceRequest')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourcePriority = Shapes::StructureShape.new(name: 'SourcePriority')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartFlowRequest = Shapes::StructureShape.new(name: 'StartFlowRequest')
    StartFlowResponse = Shapes::StructureShape.new(name: 'StartFlowResponse')
    State = Shapes::StringShape.new(name: 'State')
    Status = Shapes::StringShape.new(name: 'Status')
    StopFlowRequest = Shapes::StructureShape.new(name: 'StopFlowRequest')
    StopFlowResponse = Shapes::StructureShape.new(name: 'StopFlowResponse')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tcs = Shapes::StringShape.new(name: 'Tcs')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Transport = Shapes::StructureShape.new(name: 'Transport')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateBridgeFlowSourceRequest = Shapes::StructureShape.new(name: 'UpdateBridgeFlowSourceRequest')
    UpdateBridgeNetworkOutputRequest = Shapes::StructureShape.new(name: 'UpdateBridgeNetworkOutputRequest')
    UpdateBridgeNetworkSourceRequest = Shapes::StructureShape.new(name: 'UpdateBridgeNetworkSourceRequest')
    UpdateBridgeOutputRequest = Shapes::StructureShape.new(name: 'UpdateBridgeOutputRequest')
    UpdateBridgeOutputResponse = Shapes::StructureShape.new(name: 'UpdateBridgeOutputResponse')
    UpdateBridgeRequest = Shapes::StructureShape.new(name: 'UpdateBridgeRequest')
    UpdateBridgeResponse = Shapes::StructureShape.new(name: 'UpdateBridgeResponse')
    UpdateBridgeSourceRequest = Shapes::StructureShape.new(name: 'UpdateBridgeSourceRequest')
    UpdateBridgeSourceResponse = Shapes::StructureShape.new(name: 'UpdateBridgeSourceResponse')
    UpdateBridgeStateRequest = Shapes::StructureShape.new(name: 'UpdateBridgeStateRequest')
    UpdateBridgeStateResponse = Shapes::StructureShape.new(name: 'UpdateBridgeStateResponse')
    UpdateEgressGatewayBridgeRequest = Shapes::StructureShape.new(name: 'UpdateEgressGatewayBridgeRequest')
    UpdateEncryption = Shapes::StructureShape.new(name: 'UpdateEncryption')
    UpdateFailoverConfig = Shapes::StructureShape.new(name: 'UpdateFailoverConfig')
    UpdateFlowEntitlementRequest = Shapes::StructureShape.new(name: 'UpdateFlowEntitlementRequest')
    UpdateFlowEntitlementResponse = Shapes::StructureShape.new(name: 'UpdateFlowEntitlementResponse')
    UpdateFlowMediaStreamRequest = Shapes::StructureShape.new(name: 'UpdateFlowMediaStreamRequest')
    UpdateFlowMediaStreamResponse = Shapes::StructureShape.new(name: 'UpdateFlowMediaStreamResponse')
    UpdateFlowOutputRequest = Shapes::StructureShape.new(name: 'UpdateFlowOutputRequest')
    UpdateFlowOutputResponse = Shapes::StructureShape.new(name: 'UpdateFlowOutputResponse')
    UpdateFlowRequest = Shapes::StructureShape.new(name: 'UpdateFlowRequest')
    UpdateFlowResponse = Shapes::StructureShape.new(name: 'UpdateFlowResponse')
    UpdateFlowSourceRequest = Shapes::StructureShape.new(name: 'UpdateFlowSourceRequest')
    UpdateFlowSourceResponse = Shapes::StructureShape.new(name: 'UpdateFlowSourceResponse')
    UpdateGatewayBridgeSourceRequest = Shapes::StructureShape.new(name: 'UpdateGatewayBridgeSourceRequest')
    UpdateGatewayInstanceRequest = Shapes::StructureShape.new(name: 'UpdateGatewayInstanceRequest')
    UpdateGatewayInstanceResponse = Shapes::StructureShape.new(name: 'UpdateGatewayInstanceResponse')
    UpdateIngressGatewayBridgeRequest = Shapes::StructureShape.new(name: 'UpdateIngressGatewayBridgeRequest')
    UpdateMaintenance = Shapes::StructureShape.new(name: 'UpdateMaintenance')
    VpcInterface = Shapes::StructureShape.new(name: 'VpcInterface')
    VpcInterfaceAttachment = Shapes::StructureShape.new(name: 'VpcInterfaceAttachment')
    VpcInterfaceRequest = Shapes::StructureShape.new(name: 'VpcInterfaceRequest')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfAddBridgeOutputRequest = Shapes::ListShape.new(name: '__listOfAddBridgeOutputRequest')
    __listOfAddBridgeSourceRequest = Shapes::ListShape.new(name: '__listOfAddBridgeSourceRequest')
    __listOfAddMediaStreamRequest = Shapes::ListShape.new(name: '__listOfAddMediaStreamRequest')
    __listOfAddOutputRequest = Shapes::ListShape.new(name: '__listOfAddOutputRequest')
    __listOfBridgeOutput = Shapes::ListShape.new(name: '__listOfBridgeOutput')
    __listOfBridgeSource = Shapes::ListShape.new(name: '__listOfBridgeSource')
    __listOfDestinationConfiguration = Shapes::ListShape.new(name: '__listOfDestinationConfiguration')
    __listOfDestinationConfigurationRequest = Shapes::ListShape.new(name: '__listOfDestinationConfigurationRequest')
    __listOfEntitlement = Shapes::ListShape.new(name: '__listOfEntitlement')
    __listOfGatewayNetwork = Shapes::ListShape.new(name: '__listOfGatewayNetwork')
    __listOfGrantEntitlementRequest = Shapes::ListShape.new(name: '__listOfGrantEntitlementRequest')
    __listOfInputConfiguration = Shapes::ListShape.new(name: '__listOfInputConfiguration')
    __listOfInputConfigurationRequest = Shapes::ListShape.new(name: '__listOfInputConfigurationRequest')
    __listOfListedBridge = Shapes::ListShape.new(name: '__listOfListedBridge')
    __listOfListedEntitlement = Shapes::ListShape.new(name: '__listOfListedEntitlement')
    __listOfListedFlow = Shapes::ListShape.new(name: '__listOfListedFlow')
    __listOfListedGateway = Shapes::ListShape.new(name: '__listOfListedGateway')
    __listOfListedGatewayInstance = Shapes::ListShape.new(name: '__listOfListedGatewayInstance')
    __listOfMediaStream = Shapes::ListShape.new(name: '__listOfMediaStream')
    __listOfMediaStreamOutputConfiguration = Shapes::ListShape.new(name: '__listOfMediaStreamOutputConfiguration')
    __listOfMediaStreamOutputConfigurationRequest = Shapes::ListShape.new(name: '__listOfMediaStreamOutputConfigurationRequest')
    __listOfMediaStreamSourceConfiguration = Shapes::ListShape.new(name: '__listOfMediaStreamSourceConfiguration')
    __listOfMediaStreamSourceConfigurationRequest = Shapes::ListShape.new(name: '__listOfMediaStreamSourceConfigurationRequest')
    __listOfMessageDetail = Shapes::ListShape.new(name: '__listOfMessageDetail')
    __listOfOffering = Shapes::ListShape.new(name: '__listOfOffering')
    __listOfOutput = Shapes::ListShape.new(name: '__listOfOutput')
    __listOfReservation = Shapes::ListShape.new(name: '__listOfReservation')
    __listOfSetSourceRequest = Shapes::ListShape.new(name: '__listOfSetSourceRequest')
    __listOfSource = Shapes::ListShape.new(name: '__listOfSource')
    __listOfVpcInterface = Shapes::ListShape.new(name: '__listOfVpcInterface')
    __listOfVpcInterfaceRequest = Shapes::ListShape.new(name: '__listOfVpcInterfaceRequest')
    __listOf__integer = Shapes::ListShape.new(name: '__listOf__integer')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__string = Shapes::MapShape.new(name: '__mapOf__string')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AddBridgeFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    AddBridgeFlowSourceRequest.add_member(:flow_vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "flowVpcInterfaceAttachment"))
    AddBridgeFlowSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    AddBridgeFlowSourceRequest.struct_class = Types::AddBridgeFlowSourceRequest

    AddBridgeNetworkOutputRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ipAddress"))
    AddBridgeNetworkOutputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    AddBridgeNetworkOutputRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "networkName"))
    AddBridgeNetworkOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "port"))
    AddBridgeNetworkOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    AddBridgeNetworkOutputRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "ttl"))
    AddBridgeNetworkOutputRequest.struct_class = Types::AddBridgeNetworkOutputRequest

    AddBridgeNetworkSourceRequest.add_member(:multicast_ip, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "multicastIp"))
    AddBridgeNetworkSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    AddBridgeNetworkSourceRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "networkName"))
    AddBridgeNetworkSourceRequest.add_member(:port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "port"))
    AddBridgeNetworkSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    AddBridgeNetworkSourceRequest.struct_class = Types::AddBridgeNetworkSourceRequest

    AddBridgeOutputRequest.add_member(:network_output, Shapes::ShapeRef.new(shape: AddBridgeNetworkOutputRequest, location_name: "networkOutput"))
    AddBridgeOutputRequest.struct_class = Types::AddBridgeOutputRequest

    AddBridgeOutputsRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    AddBridgeOutputsRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddBridgeOutputRequest, required: true, location_name: "outputs"))
    AddBridgeOutputsRequest.struct_class = Types::AddBridgeOutputsRequest

    AddBridgeOutputsResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    AddBridgeOutputsResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfBridgeOutput, location_name: "outputs"))
    AddBridgeOutputsResponse.struct_class = Types::AddBridgeOutputsResponse

    AddBridgeSourceRequest.add_member(:flow_source, Shapes::ShapeRef.new(shape: AddBridgeFlowSourceRequest, location_name: "flowSource"))
    AddBridgeSourceRequest.add_member(:network_source, Shapes::ShapeRef.new(shape: AddBridgeNetworkSourceRequest, location_name: "networkSource"))
    AddBridgeSourceRequest.struct_class = Types::AddBridgeSourceRequest

    AddBridgeSourcesRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    AddBridgeSourcesRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfAddBridgeSourceRequest, required: true, location_name: "sources"))
    AddBridgeSourcesRequest.struct_class = Types::AddBridgeSourcesRequest

    AddBridgeSourcesResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    AddBridgeSourcesResponse.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfBridgeSource, location_name: "sources"))
    AddBridgeSourcesResponse.struct_class = Types::AddBridgeSourcesResponse

    AddEgressGatewayBridgeRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "maxBitrate"))
    AddEgressGatewayBridgeRequest.struct_class = Types::AddEgressGatewayBridgeRequest

    AddFlowMediaStreamsRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    AddFlowMediaStreamsRequest.add_member(:media_streams, Shapes::ShapeRef.new(shape: __listOfAddMediaStreamRequest, required: true, location_name: "mediaStreams"))
    AddFlowMediaStreamsRequest.struct_class = Types::AddFlowMediaStreamsRequest

    AddFlowMediaStreamsResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    AddFlowMediaStreamsResponse.add_member(:media_streams, Shapes::ShapeRef.new(shape: __listOfMediaStream, location_name: "mediaStreams"))
    AddFlowMediaStreamsResponse.struct_class = Types::AddFlowMediaStreamsResponse

    AddFlowOutputs420Exception.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    AddFlowOutputs420Exception.struct_class = Types::AddFlowOutputs420Exception

    AddFlowOutputsRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    AddFlowOutputsRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddOutputRequest, required: true, location_name: "outputs"))
    AddFlowOutputsRequest.struct_class = Types::AddFlowOutputsRequest

    AddFlowOutputsResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    AddFlowOutputsResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfOutput, location_name: "outputs"))
    AddFlowOutputsResponse.struct_class = Types::AddFlowOutputsResponse

    AddFlowSourcesRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    AddFlowSourcesRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfSetSourceRequest, required: true, location_name: "sources"))
    AddFlowSourcesRequest.struct_class = Types::AddFlowSourcesRequest

    AddFlowSourcesResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    AddFlowSourcesResponse.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfSource, location_name: "sources"))
    AddFlowSourcesResponse.struct_class = Types::AddFlowSourcesResponse

    AddFlowVpcInterfacesRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    AddFlowVpcInterfacesRequest.add_member(:vpc_interfaces, Shapes::ShapeRef.new(shape: __listOfVpcInterfaceRequest, required: true, location_name: "vpcInterfaces"))
    AddFlowVpcInterfacesRequest.struct_class = Types::AddFlowVpcInterfacesRequest

    AddFlowVpcInterfacesResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    AddFlowVpcInterfacesResponse.add_member(:vpc_interfaces, Shapes::ShapeRef.new(shape: __listOfVpcInterface, location_name: "vpcInterfaces"))
    AddFlowVpcInterfacesResponse.struct_class = Types::AddFlowVpcInterfacesResponse

    AddIngressGatewayBridgeRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "maxBitrate"))
    AddIngressGatewayBridgeRequest.add_member(:max_outputs, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "maxOutputs"))
    AddIngressGatewayBridgeRequest.struct_class = Types::AddIngressGatewayBridgeRequest

    AddMaintenance.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, required: true, location_name: "maintenanceDay"))
    AddMaintenance.add_member(:maintenance_start_hour, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "maintenanceStartHour"))
    AddMaintenance.struct_class = Types::AddMaintenance

    AddMediaStreamRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: MediaStreamAttributesRequest, location_name: "attributes"))
    AddMediaStreamRequest.add_member(:clock_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "clockRate"))
    AddMediaStreamRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    AddMediaStreamRequest.add_member(:media_stream_id, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "mediaStreamId"))
    AddMediaStreamRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "mediaStreamName"))
    AddMediaStreamRequest.add_member(:media_stream_type, Shapes::ShapeRef.new(shape: MediaStreamType, required: true, location_name: "mediaStreamType"))
    AddMediaStreamRequest.add_member(:video_format, Shapes::ShapeRef.new(shape: __string, location_name: "videoFormat"))
    AddMediaStreamRequest.struct_class = Types::AddMediaStreamRequest

    AddOutputRequest.add_member(:cidr_allow_list, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cidrAllowList"))
    AddOutputRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    AddOutputRequest.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    AddOutputRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    AddOutputRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    AddOutputRequest.add_member(:media_stream_output_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamOutputConfigurationRequest, location_name: "mediaStreamOutputConfigurations"))
    AddOutputRequest.add_member(:min_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "minLatency"))
    AddOutputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    AddOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    AddOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    AddOutputRequest.add_member(:remote_id, Shapes::ShapeRef.new(shape: __string, location_name: "remoteId"))
    AddOutputRequest.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: __integer, location_name: "senderControlPort"))
    AddOutputRequest.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "smoothingLatency"))
    AddOutputRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    AddOutputRequest.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    AddOutputRequest.struct_class = Types::AddOutputRequest

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    Bridge.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bridgeArn"))
    Bridge.add_member(:bridge_messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, location_name: "bridgeMessages"))
    Bridge.add_member(:bridge_state, Shapes::ShapeRef.new(shape: BridgeState, required: true, location_name: "bridgeState"))
    Bridge.add_member(:egress_gateway_bridge, Shapes::ShapeRef.new(shape: EgressGatewayBridge, location_name: "egressGatewayBridge"))
    Bridge.add_member(:ingress_gateway_bridge, Shapes::ShapeRef.new(shape: IngressGatewayBridge, location_name: "ingressGatewayBridge"))
    Bridge.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Bridge.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfBridgeOutput, location_name: "outputs"))
    Bridge.add_member(:placement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "placementArn"))
    Bridge.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, location_name: "sourceFailoverConfig"))
    Bridge.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfBridgeSource, location_name: "sources"))
    Bridge.struct_class = Types::Bridge

    BridgeFlowOutput.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "flowArn"))
    BridgeFlowOutput.add_member(:flow_source_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "flowSourceArn"))
    BridgeFlowOutput.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    BridgeFlowOutput.struct_class = Types::BridgeFlowOutput

    BridgeFlowSource.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "flowArn"))
    BridgeFlowSource.add_member(:flow_vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "flowVpcInterfaceAttachment"))
    BridgeFlowSource.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    BridgeFlowSource.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, location_name: "outputArn"))
    BridgeFlowSource.struct_class = Types::BridgeFlowSource

    BridgeNetworkOutput.add_member(:ip_address, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ipAddress"))
    BridgeNetworkOutput.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    BridgeNetworkOutput.add_member(:network_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "networkName"))
    BridgeNetworkOutput.add_member(:port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "port"))
    BridgeNetworkOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    BridgeNetworkOutput.add_member(:ttl, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "ttl"))
    BridgeNetworkOutput.struct_class = Types::BridgeNetworkOutput

    BridgeNetworkSource.add_member(:multicast_ip, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "multicastIp"))
    BridgeNetworkSource.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    BridgeNetworkSource.add_member(:network_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "networkName"))
    BridgeNetworkSource.add_member(:port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "port"))
    BridgeNetworkSource.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    BridgeNetworkSource.struct_class = Types::BridgeNetworkSource

    BridgeOutput.add_member(:flow_output, Shapes::ShapeRef.new(shape: BridgeFlowOutput, location_name: "flowOutput"))
    BridgeOutput.add_member(:network_output, Shapes::ShapeRef.new(shape: BridgeNetworkOutput, location_name: "networkOutput"))
    BridgeOutput.struct_class = Types::BridgeOutput

    BridgeSource.add_member(:flow_source, Shapes::ShapeRef.new(shape: BridgeFlowSource, location_name: "flowSource"))
    BridgeSource.add_member(:network_source, Shapes::ShapeRef.new(shape: BridgeNetworkSource, location_name: "networkSource"))
    BridgeSource.struct_class = Types::BridgeSource

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateBridge420Exception.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    CreateBridge420Exception.struct_class = Types::CreateBridge420Exception

    CreateBridgeRequest.add_member(:egress_gateway_bridge, Shapes::ShapeRef.new(shape: AddEgressGatewayBridgeRequest, location_name: "egressGatewayBridge"))
    CreateBridgeRequest.add_member(:ingress_gateway_bridge, Shapes::ShapeRef.new(shape: AddIngressGatewayBridgeRequest, location_name: "ingressGatewayBridge"))
    CreateBridgeRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateBridgeRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddBridgeOutputRequest, location_name: "outputs"))
    CreateBridgeRequest.add_member(:placement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "placementArn"))
    CreateBridgeRequest.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, location_name: "sourceFailoverConfig"))
    CreateBridgeRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfAddBridgeSourceRequest, required: true, location_name: "sources"))
    CreateBridgeRequest.struct_class = Types::CreateBridgeRequest

    CreateBridgeResponse.add_member(:bridge, Shapes::ShapeRef.new(shape: Bridge, location_name: "bridge"))
    CreateBridgeResponse.struct_class = Types::CreateBridgeResponse

    CreateFlow420Exception.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    CreateFlow420Exception.struct_class = Types::CreateFlow420Exception

    CreateFlowRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    CreateFlowRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfGrantEntitlementRequest, location_name: "entitlements"))
    CreateFlowRequest.add_member(:media_streams, Shapes::ShapeRef.new(shape: __listOfAddMediaStreamRequest, location_name: "mediaStreams"))
    CreateFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateFlowRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddOutputRequest, location_name: "outputs"))
    CreateFlowRequest.add_member(:source, Shapes::ShapeRef.new(shape: SetSourceRequest, location_name: "source"))
    CreateFlowRequest.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, location_name: "sourceFailoverConfig"))
    CreateFlowRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfSetSourceRequest, location_name: "sources"))
    CreateFlowRequest.add_member(:vpc_interfaces, Shapes::ShapeRef.new(shape: __listOfVpcInterfaceRequest, location_name: "vpcInterfaces"))
    CreateFlowRequest.add_member(:maintenance, Shapes::ShapeRef.new(shape: AddMaintenance, location_name: "maintenance"))
    CreateFlowRequest.struct_class = Types::CreateFlowRequest

    CreateFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: Flow, location_name: "flow"))
    CreateFlowResponse.struct_class = Types::CreateFlowResponse

    CreateGateway420Exception.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    CreateGateway420Exception.struct_class = Types::CreateGateway420Exception

    CreateGatewayRequest.add_member(:egress_cidr_blocks, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "egressCidrBlocks"))
    CreateGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateGatewayRequest.add_member(:networks, Shapes::ShapeRef.new(shape: __listOfGatewayNetwork, required: true, location_name: "networks"))
    CreateGatewayRequest.struct_class = Types::CreateGatewayRequest

    CreateGatewayResponse.add_member(:gateway, Shapes::ShapeRef.new(shape: Gateway, location_name: "gateway"))
    CreateGatewayResponse.struct_class = Types::CreateGatewayResponse

    DeleteBridgeRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    DeleteBridgeRequest.struct_class = Types::DeleteBridgeRequest

    DeleteBridgeResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    DeleteBridgeResponse.struct_class = Types::DeleteBridgeResponse

    DeleteFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    DeleteFlowRequest.struct_class = Types::DeleteFlowRequest

    DeleteFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    DeleteFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DeleteFlowResponse.struct_class = Types::DeleteFlowResponse

    DeleteGatewayRequest.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "gatewayArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:gateway:.+$"}))
    DeleteGatewayRequest.struct_class = Types::DeleteGatewayRequest

    DeleteGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: __string, location_name: "gatewayArn"))
    DeleteGatewayResponse.struct_class = Types::DeleteGatewayResponse

    DeregisterGatewayInstanceRequest.add_member(:force, Shapes::ShapeRef.new(shape: __boolean, location: "querystring", location_name: "force"))
    DeregisterGatewayInstanceRequest.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "gatewayInstanceArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:gateway:.+:instance:.+$"}))
    DeregisterGatewayInstanceRequest.struct_class = Types::DeregisterGatewayInstanceRequest

    DeregisterGatewayInstanceResponse.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "gatewayInstanceArn"))
    DeregisterGatewayInstanceResponse.add_member(:instance_state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "instanceState"))
    DeregisterGatewayInstanceResponse.struct_class = Types::DeregisterGatewayInstanceResponse

    DescribeBridgeRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    DescribeBridgeRequest.struct_class = Types::DescribeBridgeRequest

    DescribeBridgeResponse.add_member(:bridge, Shapes::ShapeRef.new(shape: Bridge, location_name: "bridge"))
    DescribeBridgeResponse.struct_class = Types::DescribeBridgeResponse

    DescribeFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    DescribeFlowRequest.struct_class = Types::DescribeFlowRequest

    DescribeFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: Flow, location_name: "flow"))
    DescribeFlowResponse.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    DescribeFlowResponse.struct_class = Types::DescribeFlowResponse

    DescribeGatewayInstanceRequest.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "gatewayInstanceArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:gateway:.+:instance:.+$"}))
    DescribeGatewayInstanceRequest.struct_class = Types::DescribeGatewayInstanceRequest

    DescribeGatewayInstanceResponse.add_member(:gateway_instance, Shapes::ShapeRef.new(shape: GatewayInstance, location_name: "gatewayInstance"))
    DescribeGatewayInstanceResponse.struct_class = Types::DescribeGatewayInstanceResponse

    DescribeGatewayRequest.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "gatewayArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:gateway:.+$"}))
    DescribeGatewayRequest.struct_class = Types::DescribeGatewayRequest

    DescribeGatewayResponse.add_member(:gateway, Shapes::ShapeRef.new(shape: Gateway, location_name: "gateway"))
    DescribeGatewayResponse.struct_class = Types::DescribeGatewayResponse

    DescribeOfferingRequest.add_member(:offering_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "offeringArn"))
    DescribeOfferingRequest.struct_class = Types::DescribeOfferingRequest

    DescribeOfferingResponse.add_member(:offering, Shapes::ShapeRef.new(shape: Offering, location_name: "offering"))
    DescribeOfferingResponse.struct_class = Types::DescribeOfferingResponse

    DescribeReservationRequest.add_member(:reservation_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "reservationArn"))
    DescribeReservationRequest.struct_class = Types::DescribeReservationRequest

    DescribeReservationResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    DescribeReservationResponse.struct_class = Types::DescribeReservationResponse

    DestinationConfiguration.add_member(:destination_ip, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "destinationIp"))
    DestinationConfiguration.add_member(:destination_port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "destinationPort"))
    DestinationConfiguration.add_member(:interface, Shapes::ShapeRef.new(shape: Interface, required: true, location_name: "interface"))
    DestinationConfiguration.add_member(:outbound_ip, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "outboundIp"))
    DestinationConfiguration.struct_class = Types::DestinationConfiguration

    DestinationConfigurationRequest.add_member(:destination_ip, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "destinationIp"))
    DestinationConfigurationRequest.add_member(:destination_port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "destinationPort"))
    DestinationConfigurationRequest.add_member(:interface, Shapes::ShapeRef.new(shape: InterfaceRequest, required: true, location_name: "interface"))
    DestinationConfigurationRequest.struct_class = Types::DestinationConfigurationRequest

    EgressGatewayBridge.add_member(:instance_id, Shapes::ShapeRef.new(shape: __string, location_name: "instanceId"))
    EgressGatewayBridge.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "maxBitrate"))
    EgressGatewayBridge.struct_class = Types::EgressGatewayBridge

    EncodingParameters.add_member(:compression_factor, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "compressionFactor"))
    EncodingParameters.add_member(:encoder_profile, Shapes::ShapeRef.new(shape: EncoderProfile, required: true, location_name: "encoderProfile"))
    EncodingParameters.struct_class = Types::EncodingParameters

    EncodingParametersRequest.add_member(:compression_factor, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "compressionFactor"))
    EncodingParametersRequest.add_member(:encoder_profile, Shapes::ShapeRef.new(shape: EncoderProfile, required: true, location_name: "encoderProfile"))
    EncodingParametersRequest.struct_class = Types::EncodingParametersRequest

    Encryption.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "algorithm"))
    Encryption.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: __string, location_name: "constantInitializationVector"))
    Encryption.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, location_name: "deviceId"))
    Encryption.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, location_name: "keyType"))
    Encryption.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    Encryption.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    Encryption.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "roleArn"))
    Encryption.add_member(:secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "secretArn"))
    Encryption.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    Encryption.struct_class = Types::Encryption

    Entitlement.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: __integer, location_name: "dataTransferSubscriberFeePercent"))
    Entitlement.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Entitlement.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    Entitlement.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "entitlementArn"))
    Entitlement.add_member(:entitlement_status, Shapes::ShapeRef.new(shape: EntitlementStatus, location_name: "entitlementStatus"))
    Entitlement.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Entitlement.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subscribers"))
    Entitlement.struct_class = Types::Entitlement

    FailoverConfig.add_member(:failover_mode, Shapes::ShapeRef.new(shape: FailoverMode, location_name: "failoverMode"))
    FailoverConfig.add_member(:recovery_window, Shapes::ShapeRef.new(shape: __integer, location_name: "recoveryWindow"))
    FailoverConfig.add_member(:source_priority, Shapes::ShapeRef.new(shape: SourcePriority, location_name: "sourcePriority"))
    FailoverConfig.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    FailoverConfig.struct_class = Types::FailoverConfig

    Flow.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "availabilityZone"))
    Flow.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Flow.add_member(:egress_ip, Shapes::ShapeRef.new(shape: __string, location_name: "egressIp"))
    Flow.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfEntitlement, required: true, location_name: "entitlements"))
    Flow.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "flowArn"))
    Flow.add_member(:media_streams, Shapes::ShapeRef.new(shape: __listOfMediaStream, location_name: "mediaStreams"))
    Flow.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Flow.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfOutput, required: true, location_name: "outputs"))
    Flow.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    Flow.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, location_name: "sourceFailoverConfig"))
    Flow.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfSource, location_name: "sources"))
    Flow.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    Flow.add_member(:vpc_interfaces, Shapes::ShapeRef.new(shape: __listOfVpcInterface, location_name: "vpcInterfaces"))
    Flow.add_member(:maintenance, Shapes::ShapeRef.new(shape: Maintenance, location_name: "maintenance"))
    Flow.struct_class = Types::Flow

    Fmtp.add_member(:channel_order, Shapes::ShapeRef.new(shape: __string, location_name: "channelOrder"))
    Fmtp.add_member(:colorimetry, Shapes::ShapeRef.new(shape: Colorimetry, location_name: "colorimetry"))
    Fmtp.add_member(:exact_framerate, Shapes::ShapeRef.new(shape: __string, location_name: "exactFramerate"))
    Fmtp.add_member(:par, Shapes::ShapeRef.new(shape: __string, location_name: "par"))
    Fmtp.add_member(:range, Shapes::ShapeRef.new(shape: Range, location_name: "range"))
    Fmtp.add_member(:scan_mode, Shapes::ShapeRef.new(shape: ScanMode, location_name: "scanMode"))
    Fmtp.add_member(:tcs, Shapes::ShapeRef.new(shape: Tcs, location_name: "tcs"))
    Fmtp.struct_class = Types::Fmtp

    FmtpRequest.add_member(:channel_order, Shapes::ShapeRef.new(shape: __string, location_name: "channelOrder"))
    FmtpRequest.add_member(:colorimetry, Shapes::ShapeRef.new(shape: Colorimetry, location_name: "colorimetry"))
    FmtpRequest.add_member(:exact_framerate, Shapes::ShapeRef.new(shape: __string, location_name: "exactFramerate"))
    FmtpRequest.add_member(:par, Shapes::ShapeRef.new(shape: __string, location_name: "par"))
    FmtpRequest.add_member(:range, Shapes::ShapeRef.new(shape: Range, location_name: "range"))
    FmtpRequest.add_member(:scan_mode, Shapes::ShapeRef.new(shape: ScanMode, location_name: "scanMode"))
    FmtpRequest.add_member(:tcs, Shapes::ShapeRef.new(shape: Tcs, location_name: "tcs"))
    FmtpRequest.struct_class = Types::FmtpRequest

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    Gateway.add_member(:egress_cidr_blocks, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "egressCidrBlocks"))
    Gateway.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "gatewayArn"))
    Gateway.add_member(:gateway_messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, location_name: "gatewayMessages"))
    Gateway.add_member(:gateway_state, Shapes::ShapeRef.new(shape: GatewayState, location_name: "gatewayState"))
    Gateway.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Gateway.add_member(:networks, Shapes::ShapeRef.new(shape: __listOfGatewayNetwork, required: true, location_name: "networks"))
    Gateway.struct_class = Types::Gateway

    GatewayBridgeSource.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bridgeArn"))
    GatewayBridgeSource.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    GatewayBridgeSource.struct_class = Types::GatewayBridgeSource

    GatewayInstance.add_member(:bridge_placement, Shapes::ShapeRef.new(shape: BridgePlacement, required: true, location_name: "bridgePlacement"))
    GatewayInstance.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatus, required: true, location_name: "connectionStatus"))
    GatewayInstance.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "gatewayArn"))
    GatewayInstance.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "gatewayInstanceArn"))
    GatewayInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "instanceId"))
    GatewayInstance.add_member(:instance_messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, location_name: "instanceMessages"))
    GatewayInstance.add_member(:instance_state, Shapes::ShapeRef.new(shape: InstanceState, required: true, location_name: "instanceState"))
    GatewayInstance.add_member(:running_bridge_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "runningBridgeCount"))
    GatewayInstance.struct_class = Types::GatewayInstance

    GatewayNetwork.add_member(:cidr_block, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "cidrBlock"))
    GatewayNetwork.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    GatewayNetwork.struct_class = Types::GatewayNetwork

    GrantEntitlementRequest.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: __integer, location_name: "dataTransferSubscriberFeePercent"))
    GrantEntitlementRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    GrantEntitlementRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    GrantEntitlementRequest.add_member(:entitlement_status, Shapes::ShapeRef.new(shape: EntitlementStatus, location_name: "entitlementStatus"))
    GrantEntitlementRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    GrantEntitlementRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subscribers"))
    GrantEntitlementRequest.struct_class = Types::GrantEntitlementRequest

    GrantFlowEntitlements420Exception.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    GrantFlowEntitlements420Exception.struct_class = Types::GrantFlowEntitlements420Exception

    GrantFlowEntitlementsRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfGrantEntitlementRequest, required: true, location_name: "entitlements"))
    GrantFlowEntitlementsRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    GrantFlowEntitlementsRequest.struct_class = Types::GrantFlowEntitlementsRequest

    GrantFlowEntitlementsResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfEntitlement, location_name: "entitlements"))
    GrantFlowEntitlementsResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    GrantFlowEntitlementsResponse.struct_class = Types::GrantFlowEntitlementsResponse

    IngressGatewayBridge.add_member(:instance_id, Shapes::ShapeRef.new(shape: __string, location_name: "instanceId"))
    IngressGatewayBridge.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "maxBitrate"))
    IngressGatewayBridge.add_member(:max_outputs, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "maxOutputs"))
    IngressGatewayBridge.struct_class = Types::IngressGatewayBridge

    InputConfiguration.add_member(:input_ip, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "inputIp"))
    InputConfiguration.add_member(:input_port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "inputPort"))
    InputConfiguration.add_member(:interface, Shapes::ShapeRef.new(shape: Interface, required: true, location_name: "interface"))
    InputConfiguration.struct_class = Types::InputConfiguration

    InputConfigurationRequest.add_member(:input_port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "inputPort"))
    InputConfigurationRequest.add_member(:interface, Shapes::ShapeRef.new(shape: InterfaceRequest, required: true, location_name: "interface"))
    InputConfigurationRequest.struct_class = Types::InputConfigurationRequest

    Interface.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Interface.struct_class = Types::Interface

    InterfaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    InterfaceRequest.struct_class = Types::InterfaceRequest

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListBridgesRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "filterArn"))
    ListBridgesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBridgesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListBridgesRequest.struct_class = Types::ListBridgesRequest

    ListBridgesResponse.add_member(:bridges, Shapes::ShapeRef.new(shape: __listOfListedBridge, location_name: "bridges"))
    ListBridgesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListBridgesResponse.struct_class = Types::ListBridgesResponse

    ListEntitlementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEntitlementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListEntitlementsRequest.struct_class = Types::ListEntitlementsRequest

    ListEntitlementsResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfListedEntitlement, location_name: "entitlements"))
    ListEntitlementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListEntitlementsResponse.struct_class = Types::ListEntitlementsResponse

    ListFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListFlowsRequest.struct_class = Types::ListFlowsRequest

    ListFlowsResponse.add_member(:flows, Shapes::ShapeRef.new(shape: __listOfListedFlow, location_name: "flows"))
    ListFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListFlowsResponse.struct_class = Types::ListFlowsResponse

    ListGatewayInstancesRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "filterArn"))
    ListGatewayInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewayInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListGatewayInstancesRequest.struct_class = Types::ListGatewayInstancesRequest

    ListGatewayInstancesResponse.add_member(:instances, Shapes::ShapeRef.new(shape: __listOfListedGatewayInstance, location_name: "instances"))
    ListGatewayInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListGatewayInstancesResponse.struct_class = Types::ListGatewayInstancesResponse

    ListGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListGatewaysRequest.struct_class = Types::ListGatewaysRequest

    ListGatewaysResponse.add_member(:gateways, Shapes::ShapeRef.new(shape: __listOfListedGateway, location_name: "gateways"))
    ListGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListGatewaysResponse.struct_class = Types::ListGatewaysResponse

    ListOfferingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListOfferingsRequest.struct_class = Types::ListOfferingsRequest

    ListOfferingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListOfferingsResponse.add_member(:offerings, Shapes::ShapeRef.new(shape: __listOfOffering, location_name: "offerings"))
    ListOfferingsResponse.struct_class = Types::ListOfferingsResponse

    ListReservationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListReservationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListReservationsRequest.struct_class = Types::ListReservationsRequest

    ListReservationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListReservationsResponse.add_member(:reservations, Shapes::ShapeRef.new(shape: __listOfReservation, location_name: "reservations"))
    ListReservationsResponse.struct_class = Types::ListReservationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListedBridge.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bridgeArn"))
    ListedBridge.add_member(:bridge_state, Shapes::ShapeRef.new(shape: BridgeState, required: true, location_name: "bridgeState"))
    ListedBridge.add_member(:bridge_type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bridgeType"))
    ListedBridge.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    ListedBridge.add_member(:placement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "placementArn"))
    ListedBridge.struct_class = Types::ListedBridge

    ListedEntitlement.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: __integer, location_name: "dataTransferSubscriberFeePercent"))
    ListedEntitlement.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "entitlementArn"))
    ListedEntitlement.add_member(:entitlement_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "entitlementName"))
    ListedEntitlement.struct_class = Types::ListedEntitlement

    ListedFlow.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "availabilityZone"))
    ListedFlow.add_member(:description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "description"))
    ListedFlow.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "flowArn"))
    ListedFlow.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    ListedFlow.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, required: true, location_name: "sourceType"))
    ListedFlow.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    ListedFlow.add_member(:maintenance, Shapes::ShapeRef.new(shape: Maintenance, location_name: "maintenance"))
    ListedFlow.struct_class = Types::ListedFlow

    ListedGateway.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "gatewayArn"))
    ListedGateway.add_member(:gateway_state, Shapes::ShapeRef.new(shape: GatewayState, required: true, location_name: "gatewayState"))
    ListedGateway.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    ListedGateway.struct_class = Types::ListedGateway

    ListedGatewayInstance.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "gatewayArn"))
    ListedGatewayInstance.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "gatewayInstanceArn"))
    ListedGatewayInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "instanceId"))
    ListedGatewayInstance.add_member(:instance_state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "instanceState"))
    ListedGatewayInstance.struct_class = Types::ListedGatewayInstance

    Maintenance.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, location_name: "maintenanceDay"))
    Maintenance.add_member(:maintenance_deadline, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceDeadline"))
    Maintenance.add_member(:maintenance_scheduled_date, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceScheduledDate"))
    Maintenance.add_member(:maintenance_start_hour, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceStartHour"))
    Maintenance.struct_class = Types::Maintenance

    MediaStream.add_member(:attributes, Shapes::ShapeRef.new(shape: MediaStreamAttributes, location_name: "attributes"))
    MediaStream.add_member(:clock_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "clockRate"))
    MediaStream.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    MediaStream.add_member(:fmt, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "fmt"))
    MediaStream.add_member(:media_stream_id, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "mediaStreamId"))
    MediaStream.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "mediaStreamName"))
    MediaStream.add_member(:media_stream_type, Shapes::ShapeRef.new(shape: MediaStreamType, required: true, location_name: "mediaStreamType"))
    MediaStream.add_member(:video_format, Shapes::ShapeRef.new(shape: __string, location_name: "videoFormat"))
    MediaStream.struct_class = Types::MediaStream

    MediaStreamAttributes.add_member(:fmtp, Shapes::ShapeRef.new(shape: Fmtp, required: true, location_name: "fmtp"))
    MediaStreamAttributes.add_member(:lang, Shapes::ShapeRef.new(shape: __string, location_name: "lang"))
    MediaStreamAttributes.struct_class = Types::MediaStreamAttributes

    MediaStreamAttributesRequest.add_member(:fmtp, Shapes::ShapeRef.new(shape: FmtpRequest, location_name: "fmtp"))
    MediaStreamAttributesRequest.add_member(:lang, Shapes::ShapeRef.new(shape: __string, location_name: "lang"))
    MediaStreamAttributesRequest.struct_class = Types::MediaStreamAttributesRequest

    MediaStreamOutputConfiguration.add_member(:destination_configurations, Shapes::ShapeRef.new(shape: __listOfDestinationConfiguration, location_name: "destinationConfigurations"))
    MediaStreamOutputConfiguration.add_member(:encoding_name, Shapes::ShapeRef.new(shape: EncodingName, required: true, location_name: "encodingName"))
    MediaStreamOutputConfiguration.add_member(:encoding_parameters, Shapes::ShapeRef.new(shape: EncodingParameters, location_name: "encodingParameters"))
    MediaStreamOutputConfiguration.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "mediaStreamName"))
    MediaStreamOutputConfiguration.struct_class = Types::MediaStreamOutputConfiguration

    MediaStreamOutputConfigurationRequest.add_member(:destination_configurations, Shapes::ShapeRef.new(shape: __listOfDestinationConfigurationRequest, location_name: "destinationConfigurations"))
    MediaStreamOutputConfigurationRequest.add_member(:encoding_name, Shapes::ShapeRef.new(shape: EncodingName, required: true, location_name: "encodingName"))
    MediaStreamOutputConfigurationRequest.add_member(:encoding_parameters, Shapes::ShapeRef.new(shape: EncodingParametersRequest, location_name: "encodingParameters"))
    MediaStreamOutputConfigurationRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "mediaStreamName"))
    MediaStreamOutputConfigurationRequest.struct_class = Types::MediaStreamOutputConfigurationRequest

    MediaStreamSourceConfiguration.add_member(:encoding_name, Shapes::ShapeRef.new(shape: EncodingName, required: true, location_name: "encodingName"))
    MediaStreamSourceConfiguration.add_member(:input_configurations, Shapes::ShapeRef.new(shape: __listOfInputConfiguration, location_name: "inputConfigurations"))
    MediaStreamSourceConfiguration.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "mediaStreamName"))
    MediaStreamSourceConfiguration.struct_class = Types::MediaStreamSourceConfiguration

    MediaStreamSourceConfigurationRequest.add_member(:encoding_name, Shapes::ShapeRef.new(shape: EncodingName, required: true, location_name: "encodingName"))
    MediaStreamSourceConfigurationRequest.add_member(:input_configurations, Shapes::ShapeRef.new(shape: __listOfInputConfigurationRequest, location_name: "inputConfigurations"))
    MediaStreamSourceConfigurationRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "mediaStreamName"))
    MediaStreamSourceConfigurationRequest.struct_class = Types::MediaStreamSourceConfigurationRequest

    MessageDetail.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "code"))
    MessageDetail.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    MessageDetail.add_member(:resource_name, Shapes::ShapeRef.new(shape: __string, location_name: "resourceName"))
    MessageDetail.struct_class = Types::MessageDetail

    Messages.add_member(:errors, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "errors"))
    Messages.struct_class = Types::Messages

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    Offering.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currencyCode"))
    Offering.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "duration"))
    Offering.add_member(:duration_units, Shapes::ShapeRef.new(shape: DurationUnits, required: true, location_name: "durationUnits"))
    Offering.add_member(:offering_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "offeringArn"))
    Offering.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "offeringDescription"))
    Offering.add_member(:price_per_unit, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "pricePerUnit"))
    Offering.add_member(:price_units, Shapes::ShapeRef.new(shape: PriceUnits, required: true, location_name: "priceUnits"))
    Offering.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ResourceSpecification, required: true, location_name: "resourceSpecification"))
    Offering.struct_class = Types::Offering

    Output.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: __integer, location_name: "dataTransferSubscriberFeePercent"))
    Output.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Output.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    Output.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    Output.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn"))
    Output.add_member(:listener_address, Shapes::ShapeRef.new(shape: __string, location_name: "listenerAddress"))
    Output.add_member(:media_live_input_arn, Shapes::ShapeRef.new(shape: __string, location_name: "mediaLiveInputArn"))
    Output.add_member(:media_stream_output_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamOutputConfiguration, location_name: "mediaStreamOutputConfigurations"))
    Output.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Output.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "outputArn"))
    Output.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    Output.add_member(:transport, Shapes::ShapeRef.new(shape: Transport, location_name: "transport"))
    Output.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    Output.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    Output.add_member(:bridge_ports, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "bridgePorts"))
    Output.struct_class = Types::Output

    PurchaseOfferingRequest.add_member(:offering_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "offeringArn"))
    PurchaseOfferingRequest.add_member(:reservation_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "reservationName"))
    PurchaseOfferingRequest.add_member(:start, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "start"))
    PurchaseOfferingRequest.struct_class = Types::PurchaseOfferingRequest

    PurchaseOfferingResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResponse.struct_class = Types::PurchaseOfferingResponse

    RemoveBridgeOutputRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    RemoveBridgeOutputRequest.add_member(:output_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "outputName"))
    RemoveBridgeOutputRequest.struct_class = Types::RemoveBridgeOutputRequest

    RemoveBridgeOutputResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    RemoveBridgeOutputResponse.add_member(:output_name, Shapes::ShapeRef.new(shape: __string, location_name: "outputName"))
    RemoveBridgeOutputResponse.struct_class = Types::RemoveBridgeOutputResponse

    RemoveBridgeSourceRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    RemoveBridgeSourceRequest.add_member(:source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sourceName"))
    RemoveBridgeSourceRequest.struct_class = Types::RemoveBridgeSourceRequest

    RemoveBridgeSourceResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    RemoveBridgeSourceResponse.add_member(:source_name, Shapes::ShapeRef.new(shape: __string, location_name: "sourceName"))
    RemoveBridgeSourceResponse.struct_class = Types::RemoveBridgeSourceResponse

    RemoveFlowMediaStreamRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    RemoveFlowMediaStreamRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "mediaStreamName"))
    RemoveFlowMediaStreamRequest.struct_class = Types::RemoveFlowMediaStreamRequest

    RemoveFlowMediaStreamResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    RemoveFlowMediaStreamResponse.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "mediaStreamName"))
    RemoveFlowMediaStreamResponse.struct_class = Types::RemoveFlowMediaStreamResponse

    RemoveFlowOutputRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    RemoveFlowOutputRequest.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "outputArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:output:.+$"}))
    RemoveFlowOutputRequest.struct_class = Types::RemoveFlowOutputRequest

    RemoveFlowOutputResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    RemoveFlowOutputResponse.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, location_name: "outputArn"))
    RemoveFlowOutputResponse.struct_class = Types::RemoveFlowOutputResponse

    RemoveFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    RemoveFlowSourceRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sourceArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:source:.+$"}))
    RemoveFlowSourceRequest.struct_class = Types::RemoveFlowSourceRequest

    RemoveFlowSourceResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    RemoveFlowSourceResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "sourceArn"))
    RemoveFlowSourceResponse.struct_class = Types::RemoveFlowSourceResponse

    RemoveFlowVpcInterfaceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    RemoveFlowVpcInterfaceRequest.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "vpcInterfaceName"))
    RemoveFlowVpcInterfaceRequest.struct_class = Types::RemoveFlowVpcInterfaceRequest

    RemoveFlowVpcInterfaceResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    RemoveFlowVpcInterfaceResponse.add_member(:non_deleted_network_interface_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nonDeletedNetworkInterfaceIds"))
    RemoveFlowVpcInterfaceResponse.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "vpcInterfaceName"))
    RemoveFlowVpcInterfaceResponse.struct_class = Types::RemoveFlowVpcInterfaceResponse

    Reservation.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currencyCode"))
    Reservation.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "duration"))
    Reservation.add_member(:duration_units, Shapes::ShapeRef.new(shape: DurationUnits, required: true, location_name: "durationUnits"))
    Reservation.add_member(:end, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "end"))
    Reservation.add_member(:offering_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "offeringArn"))
    Reservation.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "offeringDescription"))
    Reservation.add_member(:price_per_unit, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "pricePerUnit"))
    Reservation.add_member(:price_units, Shapes::ShapeRef.new(shape: PriceUnits, required: true, location_name: "priceUnits"))
    Reservation.add_member(:reservation_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "reservationArn"))
    Reservation.add_member(:reservation_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "reservationName"))
    Reservation.add_member(:reservation_state, Shapes::ShapeRef.new(shape: ReservationState, required: true, location_name: "reservationState"))
    Reservation.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ResourceSpecification, required: true, location_name: "resourceSpecification"))
    Reservation.add_member(:start, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "start"))
    Reservation.struct_class = Types::Reservation

    ResourceSpecification.add_member(:reserved_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "reservedBitrate"))
    ResourceSpecification.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceSpecification.struct_class = Types::ResourceSpecification

    ResponseError.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ResponseError.struct_class = Types::ResponseError

    RevokeFlowEntitlementRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "entitlementArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:entitlement:.+$"}))
    RevokeFlowEntitlementRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    RevokeFlowEntitlementRequest.struct_class = Types::RevokeFlowEntitlementRequest

    RevokeFlowEntitlementResponse.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn"))
    RevokeFlowEntitlementResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    RevokeFlowEntitlementResponse.struct_class = Types::RevokeFlowEntitlementResponse

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SetGatewayBridgeSourceRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    SetGatewayBridgeSourceRequest.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    SetGatewayBridgeSourceRequest.struct_class = Types::SetGatewayBridgeSourceRequest

    SetSourceRequest.add_member(:decryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "decryption"))
    SetSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    SetSourceRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:entitlement:.+$"}))
    SetSourceRequest.add_member(:ingest_port, Shapes::ShapeRef.new(shape: __integer, location_name: "ingestPort"))
    SetSourceRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    SetSourceRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    SetSourceRequest.add_member(:max_sync_buffer, Shapes::ShapeRef.new(shape: __integer, location_name: "maxSyncBuffer"))
    SetSourceRequest.add_member(:media_stream_source_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamSourceConfigurationRequest, location_name: "mediaStreamSourceConfigurations"))
    SetSourceRequest.add_member(:min_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "minLatency"))
    SetSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    SetSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    SetSourceRequest.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: __integer, location_name: "senderControlPort"))
    SetSourceRequest.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "senderIpAddress"))
    SetSourceRequest.add_member(:source_listener_address, Shapes::ShapeRef.new(shape: __string, location_name: "sourceListenerAddress"))
    SetSourceRequest.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: __integer, location_name: "sourceListenerPort"))
    SetSourceRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    SetSourceRequest.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "vpcInterfaceName"))
    SetSourceRequest.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: __string, location_name: "whitelistCidr"))
    SetSourceRequest.add_member(:gateway_bridge_source, Shapes::ShapeRef.new(shape: SetGatewayBridgeSourceRequest, location_name: "gatewayBridgeSource"))
    SetSourceRequest.struct_class = Types::SetSourceRequest

    Source.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: __integer, location_name: "dataTransferSubscriberFeePercent"))
    Source.add_member(:decryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "decryption"))
    Source.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Source.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn"))
    Source.add_member(:ingest_ip, Shapes::ShapeRef.new(shape: __string, location_name: "ingestIp"))
    Source.add_member(:ingest_port, Shapes::ShapeRef.new(shape: __integer, location_name: "ingestPort"))
    Source.add_member(:media_stream_source_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamSourceConfiguration, location_name: "mediaStreamSourceConfigurations"))
    Source.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Source.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: __integer, location_name: "senderControlPort"))
    Source.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "senderIpAddress"))
    Source.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sourceArn"))
    Source.add_member(:transport, Shapes::ShapeRef.new(shape: Transport, location_name: "transport"))
    Source.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "vpcInterfaceName"))
    Source.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: __string, location_name: "whitelistCidr"))
    Source.add_member(:gateway_bridge_source, Shapes::ShapeRef.new(shape: GatewayBridgeSource, location_name: "gatewayBridgeSource"))
    Source.struct_class = Types::Source

    SourcePriority.add_member(:primary_source, Shapes::ShapeRef.new(shape: __string, location_name: "primarySource"))
    SourcePriority.struct_class = Types::SourcePriority

    StartFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    StartFlowRequest.struct_class = Types::StartFlowRequest

    StartFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    StartFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    StartFlowResponse.struct_class = Types::StartFlowResponse

    StopFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    StopFlowRequest.struct_class = Types::StopFlowRequest

    StopFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    StopFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    StopFlowResponse.struct_class = Types::StopFlowResponse

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Transport.add_member(:cidr_allow_list, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cidrAllowList"))
    Transport.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    Transport.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    Transport.add_member(:max_sync_buffer, Shapes::ShapeRef.new(shape: __integer, location_name: "maxSyncBuffer"))
    Transport.add_member(:min_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "minLatency"))
    Transport.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    Transport.add_member(:remote_id, Shapes::ShapeRef.new(shape: __string, location_name: "remoteId"))
    Transport.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: __integer, location_name: "senderControlPort"))
    Transport.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "senderIpAddress"))
    Transport.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "smoothingLatency"))
    Transport.add_member(:source_listener_address, Shapes::ShapeRef.new(shape: __string, location_name: "sourceListenerAddress"))
    Transport.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: __integer, location_name: "sourceListenerPort"))
    Transport.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    Transport.struct_class = Types::Transport

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateBridgeFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    UpdateBridgeFlowSourceRequest.add_member(:flow_vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "flowVpcInterfaceAttachment"))
    UpdateBridgeFlowSourceRequest.struct_class = Types::UpdateBridgeFlowSourceRequest

    UpdateBridgeNetworkOutputRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "ipAddress"))
    UpdateBridgeNetworkOutputRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: __string, location_name: "networkName"))
    UpdateBridgeNetworkOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    UpdateBridgeNetworkOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateBridgeNetworkOutputRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: __integer, location_name: "ttl"))
    UpdateBridgeNetworkOutputRequest.struct_class = Types::UpdateBridgeNetworkOutputRequest

    UpdateBridgeNetworkSourceRequest.add_member(:multicast_ip, Shapes::ShapeRef.new(shape: __string, location_name: "multicastIp"))
    UpdateBridgeNetworkSourceRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: __string, location_name: "networkName"))
    UpdateBridgeNetworkSourceRequest.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    UpdateBridgeNetworkSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateBridgeNetworkSourceRequest.struct_class = Types::UpdateBridgeNetworkSourceRequest

    UpdateBridgeOutputRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    UpdateBridgeOutputRequest.add_member(:network_output, Shapes::ShapeRef.new(shape: UpdateBridgeNetworkOutputRequest, location_name: "networkOutput"))
    UpdateBridgeOutputRequest.add_member(:output_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "outputName"))
    UpdateBridgeOutputRequest.struct_class = Types::UpdateBridgeOutputRequest

    UpdateBridgeOutputResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    UpdateBridgeOutputResponse.add_member(:output, Shapes::ShapeRef.new(shape: BridgeOutput, location_name: "output"))
    UpdateBridgeOutputResponse.struct_class = Types::UpdateBridgeOutputResponse

    UpdateBridgeRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    UpdateBridgeRequest.add_member(:egress_gateway_bridge, Shapes::ShapeRef.new(shape: UpdateEgressGatewayBridgeRequest, location_name: "egressGatewayBridge"))
    UpdateBridgeRequest.add_member(:ingress_gateway_bridge, Shapes::ShapeRef.new(shape: UpdateIngressGatewayBridgeRequest, location_name: "ingressGatewayBridge"))
    UpdateBridgeRequest.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: UpdateFailoverConfig, location_name: "sourceFailoverConfig"))
    UpdateBridgeRequest.struct_class = Types::UpdateBridgeRequest

    UpdateBridgeResponse.add_member(:bridge, Shapes::ShapeRef.new(shape: Bridge, location_name: "bridge"))
    UpdateBridgeResponse.struct_class = Types::UpdateBridgeResponse

    UpdateBridgeSourceRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    UpdateBridgeSourceRequest.add_member(:flow_source, Shapes::ShapeRef.new(shape: UpdateBridgeFlowSourceRequest, location_name: "flowSource"))
    UpdateBridgeSourceRequest.add_member(:network_source, Shapes::ShapeRef.new(shape: UpdateBridgeNetworkSourceRequest, location_name: "networkSource"))
    UpdateBridgeSourceRequest.add_member(:source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sourceName"))
    UpdateBridgeSourceRequest.struct_class = Types::UpdateBridgeSourceRequest

    UpdateBridgeSourceResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    UpdateBridgeSourceResponse.add_member(:source, Shapes::ShapeRef.new(shape: BridgeSource, location_name: "source"))
    UpdateBridgeSourceResponse.struct_class = Types::UpdateBridgeSourceResponse

    UpdateBridgeStateRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    UpdateBridgeStateRequest.add_member(:desired_state, Shapes::ShapeRef.new(shape: DesiredState, required: true, location_name: "desiredState"))
    UpdateBridgeStateRequest.struct_class = Types::UpdateBridgeStateRequest

    UpdateBridgeStateResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn"))
    UpdateBridgeStateResponse.add_member(:desired_state, Shapes::ShapeRef.new(shape: DesiredState, location_name: "desiredState"))
    UpdateBridgeStateResponse.struct_class = Types::UpdateBridgeStateResponse

    UpdateEgressGatewayBridgeRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    UpdateEgressGatewayBridgeRequest.struct_class = Types::UpdateEgressGatewayBridgeRequest

    UpdateEncryption.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "algorithm"))
    UpdateEncryption.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: __string, location_name: "constantInitializationVector"))
    UpdateEncryption.add_member(:device_id, Shapes::ShapeRef.new(shape: __string, location_name: "deviceId"))
    UpdateEncryption.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, location_name: "keyType"))
    UpdateEncryption.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    UpdateEncryption.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, location_name: "resourceId"))
    UpdateEncryption.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateEncryption.add_member(:secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "secretArn"))
    UpdateEncryption.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    UpdateEncryption.struct_class = Types::UpdateEncryption

    UpdateFailoverConfig.add_member(:failover_mode, Shapes::ShapeRef.new(shape: FailoverMode, location_name: "failoverMode"))
    UpdateFailoverConfig.add_member(:recovery_window, Shapes::ShapeRef.new(shape: __integer, location_name: "recoveryWindow"))
    UpdateFailoverConfig.add_member(:source_priority, Shapes::ShapeRef.new(shape: SourcePriority, location_name: "sourcePriority"))
    UpdateFailoverConfig.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    UpdateFailoverConfig.struct_class = Types::UpdateFailoverConfig

    UpdateFlowEntitlementRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateFlowEntitlementRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "encryption"))
    UpdateFlowEntitlementRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "entitlementArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:entitlement:.+$"}))
    UpdateFlowEntitlementRequest.add_member(:entitlement_status, Shapes::ShapeRef.new(shape: EntitlementStatus, location_name: "entitlementStatus"))
    UpdateFlowEntitlementRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    UpdateFlowEntitlementRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subscribers"))
    UpdateFlowEntitlementRequest.struct_class = Types::UpdateFlowEntitlementRequest

    UpdateFlowEntitlementResponse.add_member(:entitlement, Shapes::ShapeRef.new(shape: Entitlement, location_name: "entitlement"))
    UpdateFlowEntitlementResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    UpdateFlowEntitlementResponse.struct_class = Types::UpdateFlowEntitlementResponse

    UpdateFlowMediaStreamRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: MediaStreamAttributesRequest, location_name: "attributes"))
    UpdateFlowMediaStreamRequest.add_member(:clock_rate, Shapes::ShapeRef.new(shape: __integer, location_name: "clockRate"))
    UpdateFlowMediaStreamRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateFlowMediaStreamRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    UpdateFlowMediaStreamRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "mediaStreamName"))
    UpdateFlowMediaStreamRequest.add_member(:media_stream_type, Shapes::ShapeRef.new(shape: MediaStreamType, location_name: "mediaStreamType"))
    UpdateFlowMediaStreamRequest.add_member(:video_format, Shapes::ShapeRef.new(shape: __string, location_name: "videoFormat"))
    UpdateFlowMediaStreamRequest.struct_class = Types::UpdateFlowMediaStreamRequest

    UpdateFlowMediaStreamResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    UpdateFlowMediaStreamResponse.add_member(:media_stream, Shapes::ShapeRef.new(shape: MediaStream, location_name: "mediaStream"))
    UpdateFlowMediaStreamResponse.struct_class = Types::UpdateFlowMediaStreamResponse

    UpdateFlowOutputRequest.add_member(:cidr_allow_list, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cidrAllowList"))
    UpdateFlowOutputRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateFlowOutputRequest.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    UpdateFlowOutputRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "encryption"))
    UpdateFlowOutputRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    UpdateFlowOutputRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    UpdateFlowOutputRequest.add_member(:media_stream_output_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamOutputConfigurationRequest, location_name: "mediaStreamOutputConfigurations"))
    UpdateFlowOutputRequest.add_member(:min_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "minLatency"))
    UpdateFlowOutputRequest.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "outputArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:output:.+$"}))
    UpdateFlowOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    UpdateFlowOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateFlowOutputRequest.add_member(:remote_id, Shapes::ShapeRef.new(shape: __string, location_name: "remoteId"))
    UpdateFlowOutputRequest.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: __integer, location_name: "senderControlPort"))
    UpdateFlowOutputRequest.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "senderIpAddress"))
    UpdateFlowOutputRequest.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "smoothingLatency"))
    UpdateFlowOutputRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    UpdateFlowOutputRequest.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    UpdateFlowOutputRequest.struct_class = Types::UpdateFlowOutputRequest

    UpdateFlowOutputResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    UpdateFlowOutputResponse.add_member(:output, Shapes::ShapeRef.new(shape: Output, location_name: "output"))
    UpdateFlowOutputResponse.struct_class = Types::UpdateFlowOutputResponse

    UpdateFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    UpdateFlowRequest.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: UpdateFailoverConfig, location_name: "sourceFailoverConfig"))
    UpdateFlowRequest.add_member(:maintenance, Shapes::ShapeRef.new(shape: UpdateMaintenance, location_name: "maintenance"))
    UpdateFlowRequest.struct_class = Types::UpdateFlowRequest

    UpdateFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: Flow, location_name: "flow"))
    UpdateFlowResponse.struct_class = Types::UpdateFlowResponse

    UpdateFlowSourceRequest.add_member(:decryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "decryption"))
    UpdateFlowSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateFlowSourceRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:entitlement:.+$"}))
    UpdateFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:flow:.+$"}))
    UpdateFlowSourceRequest.add_member(:ingest_port, Shapes::ShapeRef.new(shape: __integer, location_name: "ingestPort"))
    UpdateFlowSourceRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    UpdateFlowSourceRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    UpdateFlowSourceRequest.add_member(:max_sync_buffer, Shapes::ShapeRef.new(shape: __integer, location_name: "maxSyncBuffer"))
    UpdateFlowSourceRequest.add_member(:media_stream_source_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamSourceConfigurationRequest, location_name: "mediaStreamSourceConfigurations"))
    UpdateFlowSourceRequest.add_member(:min_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "minLatency"))
    UpdateFlowSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateFlowSourceRequest.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: __integer, location_name: "senderControlPort"))
    UpdateFlowSourceRequest.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "senderIpAddress"))
    UpdateFlowSourceRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sourceArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:source:.+$"}))
    UpdateFlowSourceRequest.add_member(:source_listener_address, Shapes::ShapeRef.new(shape: __string, location_name: "sourceListenerAddress"))
    UpdateFlowSourceRequest.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: __integer, location_name: "sourceListenerPort"))
    UpdateFlowSourceRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    UpdateFlowSourceRequest.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "vpcInterfaceName"))
    UpdateFlowSourceRequest.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: __string, location_name: "whitelistCidr"))
    UpdateFlowSourceRequest.add_member(:gateway_bridge_source, Shapes::ShapeRef.new(shape: UpdateGatewayBridgeSourceRequest, location_name: "gatewayBridgeSource"))
    UpdateFlowSourceRequest.struct_class = Types::UpdateFlowSourceRequest

    UpdateFlowSourceResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    UpdateFlowSourceResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    UpdateFlowSourceResponse.struct_class = Types::UpdateFlowSourceResponse

    UpdateGatewayBridgeSourceRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bridgeArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:bridge:.+$"}))
    UpdateGatewayBridgeSourceRequest.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    UpdateGatewayBridgeSourceRequest.struct_class = Types::UpdateGatewayBridgeSourceRequest

    UpdateGatewayInstanceRequest.add_member(:bridge_placement, Shapes::ShapeRef.new(shape: BridgePlacement, location_name: "bridgePlacement"))
    UpdateGatewayInstanceRequest.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "gatewayInstanceArn", metadata: {"pattern"=>"^arn:.+:mediaconnect.+:gateway:.+:instance:.+$"}))
    UpdateGatewayInstanceRequest.struct_class = Types::UpdateGatewayInstanceRequest

    UpdateGatewayInstanceResponse.add_member(:bridge_placement, Shapes::ShapeRef.new(shape: BridgePlacement, location_name: "bridgePlacement"))
    UpdateGatewayInstanceResponse.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "gatewayInstanceArn"))
    UpdateGatewayInstanceResponse.struct_class = Types::UpdateGatewayInstanceResponse

    UpdateIngressGatewayBridgeRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    UpdateIngressGatewayBridgeRequest.add_member(:max_outputs, Shapes::ShapeRef.new(shape: __integer, location_name: "maxOutputs"))
    UpdateIngressGatewayBridgeRequest.struct_class = Types::UpdateIngressGatewayBridgeRequest

    UpdateMaintenance.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, location_name: "maintenanceDay"))
    UpdateMaintenance.add_member(:maintenance_scheduled_date, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceScheduledDate"))
    UpdateMaintenance.add_member(:maintenance_start_hour, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceStartHour"))
    UpdateMaintenance.struct_class = Types::UpdateMaintenance

    VpcInterface.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    VpcInterface.add_member(:network_interface_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "networkInterfaceIds"))
    VpcInterface.add_member(:network_interface_type, Shapes::ShapeRef.new(shape: NetworkInterfaceType, required: true, location_name: "networkInterfaceType"))
    VpcInterface.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "roleArn"))
    VpcInterface.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "securityGroupIds"))
    VpcInterface.add_member(:subnet_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "subnetId"))
    VpcInterface.struct_class = Types::VpcInterface

    VpcInterfaceAttachment.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "vpcInterfaceName"))
    VpcInterfaceAttachment.struct_class = Types::VpcInterfaceAttachment

    VpcInterfaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    VpcInterfaceRequest.add_member(:network_interface_type, Shapes::ShapeRef.new(shape: NetworkInterfaceType, location_name: "networkInterfaceType"))
    VpcInterfaceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "roleArn"))
    VpcInterfaceRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "securityGroupIds"))
    VpcInterfaceRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "subnetId"))
    VpcInterfaceRequest.struct_class = Types::VpcInterfaceRequest

    __listOfAddBridgeOutputRequest.member = Shapes::ShapeRef.new(shape: AddBridgeOutputRequest)

    __listOfAddBridgeSourceRequest.member = Shapes::ShapeRef.new(shape: AddBridgeSourceRequest)

    __listOfAddMediaStreamRequest.member = Shapes::ShapeRef.new(shape: AddMediaStreamRequest)

    __listOfAddOutputRequest.member = Shapes::ShapeRef.new(shape: AddOutputRequest)

    __listOfBridgeOutput.member = Shapes::ShapeRef.new(shape: BridgeOutput)

    __listOfBridgeSource.member = Shapes::ShapeRef.new(shape: BridgeSource)

    __listOfDestinationConfiguration.member = Shapes::ShapeRef.new(shape: DestinationConfiguration)

    __listOfDestinationConfigurationRequest.member = Shapes::ShapeRef.new(shape: DestinationConfigurationRequest)

    __listOfEntitlement.member = Shapes::ShapeRef.new(shape: Entitlement)

    __listOfGatewayNetwork.member = Shapes::ShapeRef.new(shape: GatewayNetwork)

    __listOfGrantEntitlementRequest.member = Shapes::ShapeRef.new(shape: GrantEntitlementRequest)

    __listOfInputConfiguration.member = Shapes::ShapeRef.new(shape: InputConfiguration)

    __listOfInputConfigurationRequest.member = Shapes::ShapeRef.new(shape: InputConfigurationRequest)

    __listOfListedBridge.member = Shapes::ShapeRef.new(shape: ListedBridge)

    __listOfListedEntitlement.member = Shapes::ShapeRef.new(shape: ListedEntitlement)

    __listOfListedFlow.member = Shapes::ShapeRef.new(shape: ListedFlow)

    __listOfListedGateway.member = Shapes::ShapeRef.new(shape: ListedGateway)

    __listOfListedGatewayInstance.member = Shapes::ShapeRef.new(shape: ListedGatewayInstance)

    __listOfMediaStream.member = Shapes::ShapeRef.new(shape: MediaStream)

    __listOfMediaStreamOutputConfiguration.member = Shapes::ShapeRef.new(shape: MediaStreamOutputConfiguration)

    __listOfMediaStreamOutputConfigurationRequest.member = Shapes::ShapeRef.new(shape: MediaStreamOutputConfigurationRequest)

    __listOfMediaStreamSourceConfiguration.member = Shapes::ShapeRef.new(shape: MediaStreamSourceConfiguration)

    __listOfMediaStreamSourceConfigurationRequest.member = Shapes::ShapeRef.new(shape: MediaStreamSourceConfigurationRequest)

    __listOfMessageDetail.member = Shapes::ShapeRef.new(shape: MessageDetail)

    __listOfOffering.member = Shapes::ShapeRef.new(shape: Offering)

    __listOfOutput.member = Shapes::ShapeRef.new(shape: Output)

    __listOfReservation.member = Shapes::ShapeRef.new(shape: Reservation)

    __listOfSetSourceRequest.member = Shapes::ShapeRef.new(shape: SetSourceRequest)

    __listOfSource.member = Shapes::ShapeRef.new(shape: Source)

    __listOfVpcInterface.member = Shapes::ShapeRef.new(shape: VpcInterface)

    __listOfVpcInterfaceRequest.member = Shapes::ShapeRef.new(shape: VpcInterfaceRequest)

    __listOf__integer.member = Shapes::ShapeRef.new(shape: __integer)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __mapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    __mapOf__string.value = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-14"

      api.metadata = {
        "apiVersion" => "2018-11-14",
        "endpointPrefix" => "mediaconnect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS MediaConnect",
        "serviceId" => "MediaConnect",
        "signatureVersion" => "v4",
        "signingName" => "mediaconnect",
        "uid" => "mediaconnect-2018-11-14",
      }

      api.add_operation(:add_bridge_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddBridgeOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/bridges/{bridgeArn}/outputs"
        o.input = Shapes::ShapeRef.new(shape: AddBridgeOutputsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddBridgeOutputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:add_bridge_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddBridgeSources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/bridges/{bridgeArn}/sources"
        o.input = Shapes::ShapeRef.new(shape: AddBridgeSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddBridgeSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:add_flow_media_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowMediaStreams"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{flowArn}/mediaStreams"
        o.input = Shapes::ShapeRef.new(shape: AddFlowMediaStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowMediaStreamsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:add_flow_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{flowArn}/outputs"
        o.input = Shapes::ShapeRef.new(shape: AddFlowOutputsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowOutputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AddFlowOutputs420Exception)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:add_flow_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowSources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{flowArn}/source"
        o.input = Shapes::ShapeRef.new(shape: AddFlowSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:add_flow_vpc_interfaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowVpcInterfaces"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{flowArn}/vpcInterfaces"
        o.input = Shapes::ShapeRef.new(shape: AddFlowVpcInterfacesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowVpcInterfacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBridge"
        o.http_method = "POST"
        o.http_request_uri = "/v1/bridges"
        o.input = Shapes::ShapeRef.new(shape: CreateBridgeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: CreateBridge420Exception)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: CreateFlow420Exception)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGateway"
        o.http_method = "POST"
        o.http_request_uri = "/v1/gateways"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: CreateGateway420Exception)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBridge"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/bridges/{bridgeArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBridgeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/gateways/{gatewayArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:deregister_gateway_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterGatewayInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/gateway-instances/{gatewayInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterGatewayInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterGatewayInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBridge"
        o.http_method = "GET"
        o.http_request_uri = "/v1/bridges/{bridgeArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeBridgeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFlow"
        o.http_method = "GET"
        o.http_request_uri = "/v1/flows/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGateway"
        o.http_method = "GET"
        o.http_request_uri = "/v1/gateways/{gatewayArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_gateway_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGatewayInstance"
        o.http_method = "GET"
        o.http_request_uri = "/v1/gateway-instances/{gatewayInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOffering"
        o.http_method = "GET"
        o.http_request_uri = "/v1/offerings/{offeringArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/reservations/{reservationArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:grant_flow_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GrantFlowEntitlements"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{flowArn}/entitlements"
        o.input = Shapes::ShapeRef.new(shape: GrantFlowEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: GrantFlowEntitlementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: GrantFlowEntitlements420Exception)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_bridges, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBridges"
        o.http_method = "GET"
        o.http_request_uri = "/v1/bridges"
        o.input = Shapes::ShapeRef.new(shape: ListBridgesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBridgesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntitlements"
        o.http_method = "GET"
        o.http_request_uri = "/v1/entitlements"
        o.input = Shapes::ShapeRef.new(shape: ListEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitlementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlows"
        o.http_method = "GET"
        o.http_request_uri = "/v1/flows"
        o.input = Shapes::ShapeRef.new(shape: ListFlowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_gateway_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGatewayInstances"
        o.http_method = "GET"
        o.http_request_uri = "/v1/gateway-instances"
        o.input = Shapes::ShapeRef.new(shape: ListGatewayInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewayInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGateways"
        o.http_method = "GET"
        o.http_request_uri = "/v1/gateways"
        o.input = Shapes::ShapeRef.new(shape: ListGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOfferings"
        o.http_method = "GET"
        o.http_request_uri = "/v1/offerings"
        o.input = Shapes::ShapeRef.new(shape: ListOfferingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOfferingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_reservations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReservations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/reservations"
        o.input = Shapes::ShapeRef.new(shape: ListReservationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReservationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:purchase_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseOffering"
        o.http_method = "POST"
        o.http_request_uri = "/v1/offerings/{offeringArn}"
        o.input = Shapes::ShapeRef.new(shape: PurchaseOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: PurchaseOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:remove_bridge_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveBridgeOutput"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/bridges/{bridgeArn}/outputs/{outputName}"
        o.input = Shapes::ShapeRef.new(shape: RemoveBridgeOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveBridgeOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:remove_bridge_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveBridgeSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/bridges/{bridgeArn}/sources/{sourceName}"
        o.input = Shapes::ShapeRef.new(shape: RemoveBridgeSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveBridgeSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:remove_flow_media_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowMediaStream"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}/mediaStreams/{mediaStreamName}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowMediaStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowMediaStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:remove_flow_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowOutput"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}/outputs/{outputArn}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:remove_flow_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}/source/{sourceArn}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:remove_flow_vpc_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowVpcInterface"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}/vpcInterfaces/{vpcInterfaceName}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowVpcInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowVpcInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:revoke_flow_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeFlowEntitlement"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}/entitlements/{entitlementArn}"
        o.input = Shapes::ShapeRef.new(shape: RevokeFlowEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeFlowEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/start/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: StartFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/stop/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: StopFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: StopFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBridge"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/bridges/{bridgeArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBridgeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_bridge_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBridgeOutput"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/bridges/{bridgeArn}/outputs/{outputName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBridgeOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBridgeOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_bridge_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBridgeSource"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/bridges/{bridgeArn}/sources/{sourceName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBridgeSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBridgeSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_bridge_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBridgeState"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/bridges/{bridgeArn}/state"
        o.input = Shapes::ShapeRef.new(shape: UpdateBridgeStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBridgeStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_flow_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowEntitlement"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{flowArn}/entitlements/{entitlementArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_flow_media_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowMediaStream"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{flowArn}/mediaStreams/{mediaStreamName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowMediaStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowMediaStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_flow_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowOutput"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{flowArn}/outputs/{outputArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_flow_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowSource"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{flowArn}/source/{sourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_gateway_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayInstance"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/gateway-instances/{gatewayInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
