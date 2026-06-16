# frozen_string_literal: true

# This is generated code!

module Aws::MediaConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddBridgeFlowSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeFlowSourceRequest", name: "AddBridgeFlowSourceRequest")
    AddBridgeNetworkOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeNetworkOutputRequest", name: "AddBridgeNetworkOutputRequest")
    AddBridgeNetworkSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeNetworkSourceRequest", name: "AddBridgeNetworkSourceRequest")
    AddBridgeOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeOutputRequest", name: "AddBridgeOutputRequest")
    AddBridgeOutputsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeOutputsRequest", name: "AddBridgeOutputsRequest")
    AddBridgeOutputsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeOutputsResponse", name: "AddBridgeOutputsResponse")
    AddBridgeSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeSourceRequest", name: "AddBridgeSourceRequest")
    AddBridgeSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeSourcesRequest", name: "AddBridgeSourcesRequest")
    AddBridgeSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddBridgeSourcesResponse", name: "AddBridgeSourcesResponse")
    AddEgressGatewayBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddEgressGatewayBridgeRequest", name: "AddEgressGatewayBridgeRequest")
    AddFlowMediaStreamsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowMediaStreamsRequest", name: "AddFlowMediaStreamsRequest")
    AddFlowMediaStreamsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowMediaStreamsResponse", name: "AddFlowMediaStreamsResponse")
    AddFlowOutputs420Exception = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowOutputs420Exception", name: "AddFlowOutputs420Exception", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    AddFlowOutputsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowOutputsRequest", name: "AddFlowOutputsRequest")
    AddFlowOutputsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowOutputsResponse", name: "AddFlowOutputsResponse")
    AddFlowSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowSourcesRequest", name: "AddFlowSourcesRequest")
    AddFlowSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowSourcesResponse", name: "AddFlowSourcesResponse")
    AddFlowVpcInterfacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowVpcInterfacesRequest", name: "AddFlowVpcInterfacesRequest")
    AddFlowVpcInterfacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddFlowVpcInterfacesResponse", name: "AddFlowVpcInterfacesResponse")
    AddIngressGatewayBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddIngressGatewayBridgeRequest", name: "AddIngressGatewayBridgeRequest")
    AddMaintenance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddMaintenance", name: "AddMaintenance")
    AddMediaStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddMediaStreamRequest", name: "AddMediaStreamRequest")
    AddOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AddOutputRequest", name: "AddOutputRequest")
    Algorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Algorithm", name: "Algorithm")
    AudioMonitoringSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AudioMonitoringSetting", name: "AudioMonitoringSetting")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BlackFrames = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BlackFrames", name: "BlackFrames")
    Bridge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Bridge", name: "Bridge")
    BridgeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#BridgeArn", name: "BridgeArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::Bridge", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#BridgeResource"}})
    BridgeFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BridgeFlowOutput", name: "BridgeFlowOutput")
    BridgeFlowSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BridgeFlowSource", name: "BridgeFlowSource")
    BridgeNetworkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BridgeNetworkOutput", name: "BridgeNetworkOutput")
    BridgeNetworkSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BridgeNetworkSource", name: "BridgeNetworkSource")
    BridgeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BridgeOutput", name: "BridgeOutput")
    BridgePlacement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#BridgePlacement", name: "BridgePlacement")
    BridgeSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BridgeSource", name: "BridgeSource")
    BridgeState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#BridgeState", name: "BridgeState")
    Colorimetry = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Colorimetry", name: "Colorimetry")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#retryable" => {}})
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ConnectionStatus", name: "ConnectionStatus")
    ContentQualityAnalysisState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ContentQualityAnalysisState", name: "ContentQualityAnalysisState")
    CreateBridge420Exception = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateBridge420Exception", name: "CreateBridge420Exception", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    CreateBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateBridgeRequest", name: "CreateBridgeRequest")
    CreateBridgeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateBridgeResponse", name: "CreateBridgeResponse")
    CreateFlow420Exception = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateFlow420Exception", name: "CreateFlow420Exception", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    CreateFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateFlowRequest", name: "CreateFlowRequest")
    CreateFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateFlowResponse", name: "CreateFlowResponse")
    CreateGateway420Exception = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateGateway420Exception", name: "CreateGateway420Exception", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    CreateGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateGatewayRequest", name: "CreateGatewayRequest")
    CreateGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateGatewayResponse", name: "CreateGatewayResponse")
    DeleteBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteBridgeRequest", name: "DeleteBridgeRequest")
    DeleteBridgeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteBridgeResponse", name: "DeleteBridgeResponse")
    DeleteFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteFlowRequest", name: "DeleteFlowRequest")
    DeleteFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteFlowResponse", name: "DeleteFlowResponse")
    DeleteGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteGatewayRequest", name: "DeleteGatewayRequest")
    DeleteGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteGatewayResponse", name: "DeleteGatewayResponse")
    DeregisterGatewayInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeregisterGatewayInstanceRequest", name: "DeregisterGatewayInstanceRequest")
    DeregisterGatewayInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeregisterGatewayInstanceResponse", name: "DeregisterGatewayInstanceResponse")
    DescribeBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeBridgeRequest", name: "DescribeBridgeRequest")
    DescribeBridgeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeBridgeResponse", name: "DescribeBridgeResponse")
    DescribeFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeFlowRequest", name: "DescribeFlowRequest")
    DescribeFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeFlowResponse", name: "DescribeFlowResponse")
    DescribeFlowSourceMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeFlowSourceMetadataRequest", name: "DescribeFlowSourceMetadataRequest")
    DescribeFlowSourceMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeFlowSourceMetadataResponse", name: "DescribeFlowSourceMetadataResponse")
    DescribeFlowSourceThumbnailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeFlowSourceThumbnailRequest", name: "DescribeFlowSourceThumbnailRequest")
    DescribeFlowSourceThumbnailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeFlowSourceThumbnailResponse", name: "DescribeFlowSourceThumbnailResponse")
    DescribeGatewayInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeGatewayInstanceRequest", name: "DescribeGatewayInstanceRequest")
    DescribeGatewayInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeGatewayInstanceResponse", name: "DescribeGatewayInstanceResponse")
    DescribeGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeGatewayRequest", name: "DescribeGatewayRequest")
    DescribeGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeGatewayResponse", name: "DescribeGatewayResponse")
    DescribeOfferingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeOfferingRequest", name: "DescribeOfferingRequest")
    DescribeOfferingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeOfferingResponse", name: "DescribeOfferingResponse")
    DescribeReservationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeReservationRequest", name: "DescribeReservationRequest")
    DescribeReservationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DescribeReservationResponse", name: "DescribeReservationResponse")
    DesiredState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#DesiredState", name: "DesiredState")
    DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DestinationConfiguration", name: "DestinationConfiguration")
    DestinationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DestinationConfigurationRequest", name: "DestinationConfigurationRequest")
    DurationUnits = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#DurationUnits", name: "DurationUnits")
    EgressGatewayBridge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#EgressGatewayBridge", name: "EgressGatewayBridge")
    EncoderProfile = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#EncoderProfile", name: "EncoderProfile")
    EncodingName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#EncodingName", name: "EncodingName")
    EncodingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#EncodingParameters", name: "EncodingParameters")
    EncodingParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#EncodingParametersRequest", name: "EncodingParametersRequest")
    Encryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Encryption", name: "Encryption")
    Entitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Entitlement", name: "Entitlement")
    EntitlementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#EntitlementStatus", name: "EntitlementStatus")
    FailoverConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FailoverConfig", name: "FailoverConfig")
    FailoverMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#FailoverMode", name: "FailoverMode")
    Flow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Flow", name: "Flow")
    FlowArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#FlowArn", name: "FlowArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::Flow", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#FlowResource"}})
    FlowSize = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#FlowSize", name: "FlowSize")
    Fmtp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Fmtp", name: "Fmtp")
    FmtpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FmtpRequest", name: "FmtpRequest")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FrameResolution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FrameResolution", name: "FrameResolution")
    FrozenFrames = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FrozenFrames", name: "FrozenFrames")
    Gateway = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Gateway", name: "Gateway")
    GatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#GatewayArn", name: "GatewayArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::Gateway", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#GatewayResource"}})
    GatewayBridgeSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GatewayBridgeSource", name: "GatewayBridgeSource")
    GatewayInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GatewayInstance", name: "GatewayInstance")
    GatewayInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#GatewayInstanceArn", name: "GatewayInstanceArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::GatewayInstance", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#GatewayInstanceResource"}})
    GatewayNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GatewayNetwork", name: "GatewayNetwork")
    GatewayState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#GatewayState", name: "GatewayState")
    GrantEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GrantEntitlementRequest", name: "GrantEntitlementRequest")
    GrantFlowEntitlements420Exception = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GrantFlowEntitlements420Exception", name: "GrantFlowEntitlements420Exception", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    GrantFlowEntitlementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GrantFlowEntitlementsRequest", name: "GrantFlowEntitlementsRequest")
    GrantFlowEntitlementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GrantFlowEntitlementsResponse", name: "GrantFlowEntitlementsResponse")
    IngressGatewayBridge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#IngressGatewayBridge", name: "IngressGatewayBridge")
    InputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#InputConfiguration", name: "InputConfiguration")
    InputConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#InputConfigurationRequest", name: "InputConfigurationRequest")
    InstanceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#InstanceState", name: "InstanceState")
    Interface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Interface", name: "Interface")
    InterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#InterfaceRequest", name: "InterfaceRequest")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#KeyType", name: "KeyType")
    ListBridgesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListBridgesRequest", name: "ListBridgesRequest")
    ListBridgesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListBridgesResponse", name: "ListBridgesResponse")
    ListEntitlementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListEntitlementsRequest", name: "ListEntitlementsRequest")
    ListEntitlementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListEntitlementsResponse", name: "ListEntitlementsResponse")
    ListFlowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListFlowsRequest", name: "ListFlowsRequest")
    ListFlowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListFlowsResponse", name: "ListFlowsResponse")
    ListGatewayInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListGatewayInstancesRequest", name: "ListGatewayInstancesRequest")
    ListGatewayInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListGatewayInstancesResponse", name: "ListGatewayInstancesResponse")
    ListGatewaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListGatewaysRequest", name: "ListGatewaysRequest")
    ListGatewaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListGatewaysResponse", name: "ListGatewaysResponse")
    ListOfferingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListOfferingsRequest", name: "ListOfferingsRequest")
    ListOfferingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListOfferingsResponse", name: "ListOfferingsResponse")
    ListReservationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListReservationsRequest", name: "ListReservationsRequest")
    ListReservationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListReservationsResponse", name: "ListReservationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListedBridge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedBridge", name: "ListedBridge")
    ListedEntitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedEntitlement", name: "ListedEntitlement")
    ListedFlow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedFlow", name: "ListedFlow")
    ListedGateway = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedGateway", name: "ListedGateway")
    ListedGatewayInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedGatewayInstance", name: "ListedGatewayInstance")
    Maintenance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Maintenance", name: "Maintenance")
    MaintenanceDay = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MaintenanceDay", name: "MaintenanceDay")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediaconnect#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MediaStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStream", name: "MediaStream")
    MediaStreamAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamAttributes", name: "MediaStreamAttributes")
    MediaStreamAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamAttributesRequest", name: "MediaStreamAttributesRequest")
    MediaStreamOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamOutputConfiguration", name: "MediaStreamOutputConfiguration")
    MediaStreamOutputConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamOutputConfigurationRequest", name: "MediaStreamOutputConfigurationRequest")
    MediaStreamSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamSourceConfiguration", name: "MediaStreamSourceConfiguration")
    MediaStreamSourceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamSourceConfigurationRequest", name: "MediaStreamSourceConfigurationRequest")
    MediaStreamType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MediaStreamType", name: "MediaStreamType")
    MessageDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MessageDetail", name: "MessageDetail")
    Messages = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Messages", name: "Messages")
    MonitoringConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MonitoringConfig", name: "MonitoringConfig")
    MulticastSourceSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MulticastSourceSettings", name: "MulticastSourceSettings")
    NdiConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiConfig", name: "NdiConfig")
    NdiDiscoveryServerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiDiscoveryServerConfig", name: "NdiDiscoveryServerConfig")
    NdiState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#NdiState", name: "NdiState")
    NetworkInterfaceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#NetworkInterfaceType", name: "NetworkInterfaceType")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Offering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Offering", name: "Offering")
    OfferingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#OfferingArn", name: "OfferingArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::Offering", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#OfferingResource"}})
    Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Output", name: "Output")
    OutputStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#OutputStatus", name: "OutputStatus")
    PriceUnits = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#PriceUnits", name: "PriceUnits")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Protocol", name: "Protocol")
    PurchaseOfferingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#PurchaseOfferingRequest", name: "PurchaseOfferingRequest")
    PurchaseOfferingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#PurchaseOfferingResponse", name: "PurchaseOfferingResponse")
    Range = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Range", name: "Range")
    RemoveBridgeOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveBridgeOutputRequest", name: "RemoveBridgeOutputRequest")
    RemoveBridgeOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveBridgeOutputResponse", name: "RemoveBridgeOutputResponse")
    RemoveBridgeSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveBridgeSourceRequest", name: "RemoveBridgeSourceRequest")
    RemoveBridgeSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveBridgeSourceResponse", name: "RemoveBridgeSourceResponse")
    RemoveFlowMediaStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveFlowMediaStreamRequest", name: "RemoveFlowMediaStreamRequest")
    RemoveFlowMediaStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveFlowMediaStreamResponse", name: "RemoveFlowMediaStreamResponse")
    RemoveFlowOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveFlowOutputRequest", name: "RemoveFlowOutputRequest")
    RemoveFlowOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveFlowOutputResponse", name: "RemoveFlowOutputResponse")
    RemoveFlowSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveFlowSourceRequest", name: "RemoveFlowSourceRequest")
    RemoveFlowSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveFlowSourceResponse", name: "RemoveFlowSourceResponse")
    RemoveFlowVpcInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveFlowVpcInterfaceRequest", name: "RemoveFlowVpcInterfaceRequest")
    RemoveFlowVpcInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RemoveFlowVpcInterfaceResponse", name: "RemoveFlowVpcInterfaceResponse")
    Reservation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Reservation", name: "Reservation")
    ReservationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#ReservationArn", name: "ReservationArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::Reservation", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#ReservationResource"}})
    ReservationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ReservationState", name: "ReservationState")
    ResourceSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ResourceSpecification", name: "ResourceSpecification")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ResourceType", name: "ResourceType")
    RevokeFlowEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RevokeFlowEntitlementRequest", name: "RevokeFlowEntitlementRequest")
    RevokeFlowEntitlementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RevokeFlowEntitlementResponse", name: "RevokeFlowEntitlementResponse")
    ScanMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ScanMode", name: "ScanMode")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503, "smithy.api#retryable" => {}})
    SetGatewayBridgeSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SetGatewayBridgeSourceRequest", name: "SetGatewayBridgeSourceRequest")
    SetSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SetSourceRequest", name: "SetSourceRequest")
    SilentAudio = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SilentAudio", name: "SilentAudio")
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Source", name: "Source")
    SourcePriority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SourcePriority", name: "SourcePriority")
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#SourceType", name: "SourceType")
    StartFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StartFlowRequest", name: "StartFlowRequest")
    StartFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StartFlowResponse", name: "StartFlowResponse")
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#State", name: "State")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Status", name: "Status")
    StopFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StopFlowRequest", name: "StopFlowRequest")
    StopFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StopFlowResponse", name: "StopFlowResponse")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TagResourceRequest", name: "TagResourceRequest")
    Tcs = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Tcs", name: "Tcs")
    ThumbnailDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ThumbnailDetails", name: "ThumbnailDetails")
    ThumbnailState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ThumbnailState", name: "ThumbnailState")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    Transport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Transport", name: "Transport")
    TransportMediaInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TransportMediaInfo", name: "TransportMediaInfo")
    TransportStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TransportStream", name: "TransportStream")
    TransportStreamProgram = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TransportStreamProgram", name: "TransportStreamProgram")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateBridgeFlowSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeFlowSourceRequest", name: "UpdateBridgeFlowSourceRequest")
    UpdateBridgeNetworkOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeNetworkOutputRequest", name: "UpdateBridgeNetworkOutputRequest")
    UpdateBridgeNetworkSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeNetworkSourceRequest", name: "UpdateBridgeNetworkSourceRequest")
    UpdateBridgeOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeOutputRequest", name: "UpdateBridgeOutputRequest")
    UpdateBridgeOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeOutputResponse", name: "UpdateBridgeOutputResponse")
    UpdateBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeRequest", name: "UpdateBridgeRequest")
    UpdateBridgeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeResponse", name: "UpdateBridgeResponse")
    UpdateBridgeSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeSourceRequest", name: "UpdateBridgeSourceRequest")
    UpdateBridgeSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeSourceResponse", name: "UpdateBridgeSourceResponse")
    UpdateBridgeStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeStateRequest", name: "UpdateBridgeStateRequest")
    UpdateBridgeStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateBridgeStateResponse", name: "UpdateBridgeStateResponse")
    UpdateEgressGatewayBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateEgressGatewayBridgeRequest", name: "UpdateEgressGatewayBridgeRequest")
    UpdateEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateEncryption", name: "UpdateEncryption")
    UpdateFailoverConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFailoverConfig", name: "UpdateFailoverConfig")
    UpdateFlowEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowEntitlementRequest", name: "UpdateFlowEntitlementRequest")
    UpdateFlowEntitlementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowEntitlementResponse", name: "UpdateFlowEntitlementResponse")
    UpdateFlowMediaStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowMediaStreamRequest", name: "UpdateFlowMediaStreamRequest")
    UpdateFlowMediaStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowMediaStreamResponse", name: "UpdateFlowMediaStreamResponse")
    UpdateFlowOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowOutputRequest", name: "UpdateFlowOutputRequest")
    UpdateFlowOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowOutputResponse", name: "UpdateFlowOutputResponse")
    UpdateFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowRequest", name: "UpdateFlowRequest")
    UpdateFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowResponse", name: "UpdateFlowResponse")
    UpdateFlowSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowSourceRequest", name: "UpdateFlowSourceRequest")
    UpdateFlowSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateFlowSourceResponse", name: "UpdateFlowSourceResponse")
    UpdateGatewayBridgeSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateGatewayBridgeSourceRequest", name: "UpdateGatewayBridgeSourceRequest")
    UpdateGatewayInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateGatewayInstanceRequest", name: "UpdateGatewayInstanceRequest")
    UpdateGatewayInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateGatewayInstanceResponse", name: "UpdateGatewayInstanceResponse")
    UpdateIngressGatewayBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateIngressGatewayBridgeRequest", name: "UpdateIngressGatewayBridgeRequest")
    UpdateMaintenance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateMaintenance", name: "UpdateMaintenance")
    VideoMonitoringSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VideoMonitoringSetting", name: "VideoMonitoringSetting")
    VpcInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VpcInterface", name: "VpcInterface")
    VpcInterfaceAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VpcInterfaceAttachment", name: "VpcInterfaceAttachment")
    VpcInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VpcInterfaceRequest", name: "VpcInterfaceRequest")
    Listofaddbridgeoutputrequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfAddBridgeOutputRequest", name: "Listofaddbridgeoutputrequest")
    Listofaddbridgesourcerequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfAddBridgeSourceRequest", name: "Listofaddbridgesourcerequest")
    Listofaddmediastreamrequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfAddMediaStreamRequest", name: "Listofaddmediastreamrequest")
    Listofaddoutputrequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfAddOutputRequest", name: "Listofaddoutputrequest")
    Listofaudiomonitoringsetting = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfAudioMonitoringSetting", name: "Listofaudiomonitoringsetting")
    Listofbridgeoutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfBridgeOutput", name: "Listofbridgeoutput")
    Listofbridgesource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfBridgeSource", name: "Listofbridgesource")
    Listofdestinationconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfDestinationConfiguration", name: "Listofdestinationconfiguration")
    Listofdestinationconfigurationrequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfDestinationConfigurationRequest", name: "Listofdestinationconfigurationrequest")
    Listofentitlement = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfEntitlement", name: "Listofentitlement")
    Listofgatewaynetwork = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfGatewayNetwork", name: "Listofgatewaynetwork")
    Listofgrantentitlementrequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfGrantEntitlementRequest", name: "Listofgrantentitlementrequest")
    Listofinputconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfInputConfiguration", name: "Listofinputconfiguration")
    Listofinputconfigurationrequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfInputConfigurationRequest", name: "Listofinputconfigurationrequest")
    Listofinteger = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfInteger", name: "Listofinteger")
    Listoflistedbridge = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfListedBridge", name: "Listoflistedbridge")
    Listoflistedentitlement = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfListedEntitlement", name: "Listoflistedentitlement")
    Listoflistedflow = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfListedFlow", name: "Listoflistedflow")
    Listoflistedgateway = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfListedGateway", name: "Listoflistedgateway")
    Listoflistedgatewayinstance = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfListedGatewayInstance", name: "Listoflistedgatewayinstance")
    Listofmediastream = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfMediaStream", name: "Listofmediastream")
    Listofmediastreamoutputconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfMediaStreamOutputConfiguration", name: "Listofmediastreamoutputconfiguration")
    Listofmediastreamoutputconfigurationrequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfMediaStreamOutputConfigurationRequest", name: "Listofmediastreamoutputconfigurationrequest")
    Listofmediastreamsourceconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfMediaStreamSourceConfiguration", name: "Listofmediastreamsourceconfiguration")
    Listofmediastreamsourceconfigurationrequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfMediaStreamSourceConfigurationRequest", name: "Listofmediastreamsourceconfigurationrequest")
    Listofmessagedetail = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfMessageDetail", name: "Listofmessagedetail")
    Listofndidiscoveryserverconfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfNdiDiscoveryServerConfig", name: "Listofndidiscoveryserverconfig")
    Listofoffering = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfOffering", name: "Listofoffering")
    Listofoutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfOutput", name: "Listofoutput")
    Listofreservation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfReservation", name: "Listofreservation")
    Listofsetsourcerequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfSetSourceRequest", name: "Listofsetsourcerequest")
    Listofsource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfSource", name: "Listofsource")
    Listofstring = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfString", name: "Listofstring")
    Listoftransportstream = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfTransportStream", name: "Listoftransportstream")
    Listoftransportstreamprogram = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfTransportStreamProgram", name: "Listoftransportstreamprogram")
    Listofvideomonitoringsetting = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfVideoMonitoringSetting", name: "Listofvideomonitoringsetting")
    Listofvpcinterface = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfVpcInterface", name: "Listofvpcinterface")
    Listofvpcinterfacerequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfVpcInterfaceRequest", name: "Listofvpcinterfacerequest")
    Mapofstring = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediaconnect#__mapOfString", name: "Mapofstring")

    AddBridgeFlowSourceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddBridgeFlowSourceRequest.add_member(:flow_vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "FlowVpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "flowVpcInterfaceAttachment"}))
    AddBridgeFlowSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    AddBridgeFlowSourceRequest.type = Types::AddBridgeFlowSourceRequest
    AddBridgeNetworkOutputRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "IpAddress", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ipAddress", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NetworkName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkName", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "port", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Ttl", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ttl", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.type = Types::AddBridgeNetworkOutputRequest
    AddBridgeNetworkSourceRequest.add_member(:multicast_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MulticastIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "multicastIp", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.add_member(:multicast_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastSourceSettings, location_name: "MulticastSourceSettings", traits: {"smithy.api#jsonName" => "multicastSourceSettings"}))
    AddBridgeNetworkSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NetworkName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkName", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "port", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.type = Types::AddBridgeNetworkSourceRequest
    AddBridgeOutputRequest.add_member(:network_output, ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeNetworkOutputRequest, location_name: "NetworkOutput", traits: {"smithy.api#jsonName" => "networkOutput"}))
    AddBridgeOutputRequest.type = Types::AddBridgeOutputRequest
    AddBridgeOutputsRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    AddBridgeOutputsRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddbridgeoutputrequest, location_name: "Outputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outputs", "smithy.api#required" => {}}))
    AddBridgeOutputsRequest.type = Types::AddBridgeOutputsRequest
    AddBridgeOutputsResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    AddBridgeOutputsResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbridgeoutput, location_name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    AddBridgeOutputsResponse.type = Types::AddBridgeOutputsResponse
    AddBridgeSourceRequest.add_member(:flow_source, ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeFlowSourceRequest, location_name: "FlowSource", traits: {"smithy.api#jsonName" => "flowSource"}))
    AddBridgeSourceRequest.add_member(:network_source, ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeNetworkSourceRequest, location_name: "NetworkSource", traits: {"smithy.api#jsonName" => "networkSource"}))
    AddBridgeSourceRequest.type = Types::AddBridgeSourceRequest
    AddBridgeSourcesRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddBridgeSourcesRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddbridgesourcerequest, location_name: "Sources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sources", "smithy.api#required" => {}}))
    AddBridgeSourcesRequest.type = Types::AddBridgeSourcesRequest
    AddBridgeSourcesResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    AddBridgeSourcesResponse.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbridgesource, location_name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    AddBridgeSourcesResponse.type = Types::AddBridgeSourcesResponse
    AddEgressGatewayBridgeRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxBitrate", "smithy.api#required" => {}}))
    AddEgressGatewayBridgeRequest.type = Types::AddEgressGatewayBridgeRequest
    AddFlowMediaStreamsRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddFlowMediaStreamsRequest.add_member(:media_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddmediastreamrequest, location_name: "MediaStreams", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreams", "smithy.api#required" => {}}))
    AddFlowMediaStreamsRequest.type = Types::AddFlowMediaStreamsRequest
    AddFlowMediaStreamsResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    AddFlowMediaStreamsResponse.add_member(:media_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastream, location_name: "MediaStreams", traits: {"smithy.api#jsonName" => "mediaStreams"}))
    AddFlowMediaStreamsResponse.type = Types::AddFlowMediaStreamsResponse
    AddFlowOutputs420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AddFlowOutputs420Exception.type = Types::AddFlowOutputs420Exception
    AddFlowOutputsRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddFlowOutputsRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddoutputrequest, location_name: "Outputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outputs", "smithy.api#required" => {}}))
    AddFlowOutputsRequest.type = Types::AddFlowOutputsRequest
    AddFlowOutputsResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    AddFlowOutputsResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofoutput, location_name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    AddFlowOutputsResponse.type = Types::AddFlowOutputsResponse
    AddFlowSourcesRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddFlowSourcesRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsetsourcerequest, location_name: "Sources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sources", "smithy.api#required" => {}}))
    AddFlowSourcesRequest.type = Types::AddFlowSourcesRequest
    AddFlowSourcesResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    AddFlowSourcesResponse.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsource, location_name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    AddFlowSourcesResponse.type = Types::AddFlowSourcesResponse
    AddFlowVpcInterfacesRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddFlowVpcInterfacesRequest.add_member(:vpc_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcinterfacerequest, location_name: "VpcInterfaces", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcInterfaces", "smithy.api#required" => {}}))
    AddFlowVpcInterfacesRequest.type = Types::AddFlowVpcInterfacesRequest
    AddFlowVpcInterfacesResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    AddFlowVpcInterfacesResponse.add_member(:vpc_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcinterface, location_name: "VpcInterfaces", traits: {"smithy.api#jsonName" => "vpcInterfaces"}))
    AddFlowVpcInterfacesResponse.type = Types::AddFlowVpcInterfacesResponse
    AddIngressGatewayBridgeRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxBitrate", "smithy.api#required" => {}}))
    AddIngressGatewayBridgeRequest.add_member(:max_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxOutputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxOutputs", "smithy.api#required" => {}}))
    AddIngressGatewayBridgeRequest.type = Types::AddIngressGatewayBridgeRequest
    AddMaintenance.add_member(:maintenance_day, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceDay, location_name: "MaintenanceDay", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maintenanceDay", "smithy.api#required" => {}}))
    AddMaintenance.add_member(:maintenance_start_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MaintenanceStartHour", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maintenanceStartHour", "smithy.api#required" => {}}))
    AddMaintenance.type = Types::AddMaintenance
    AddMediaStreamRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamAttributesRequest, location_name: "Attributes", traits: {"smithy.api#jsonName" => "attributes"}))
    AddMediaStreamRequest.add_member(:clock_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ClockRate", traits: {"smithy.api#jsonName" => "clockRate"}))
    AddMediaStreamRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    AddMediaStreamRequest.add_member(:media_stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MediaStreamId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamId", "smithy.api#required" => {}}))
    AddMediaStreamRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    AddMediaStreamRequest.add_member(:media_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamType, location_name: "MediaStreamType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamType", "smithy.api#required" => {}}))
    AddMediaStreamRequest.add_member(:video_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VideoFormat", traits: {"smithy.api#jsonName" => "videoFormat"}))
    AddMediaStreamRequest.type = Types::AddMediaStreamRequest
    AddOutputRequest.add_member(:cidr_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "CidrAllowList", traits: {"smithy.api#jsonName" => "cidrAllowList"}))
    AddOutputRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    AddOutputRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Destination", traits: {"smithy.api#jsonName" => "destination"}))
    AddOutputRequest.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, location_name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    AddOutputRequest.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    AddOutputRequest.add_member(:media_stream_output_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamoutputconfigurationrequest, location_name: "MediaStreamOutputConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamOutputConfigurations"}))
    AddOutputRequest.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    AddOutputRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    AddOutputRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    AddOutputRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    AddOutputRequest.add_member(:remote_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RemoteId", traits: {"smithy.api#jsonName" => "remoteId"}))
    AddOutputRequest.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    AddOutputRequest.add_member(:smoothing_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SmoothingLatency", traits: {"smithy.api#jsonName" => "smoothingLatency"}))
    AddOutputRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    AddOutputRequest.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    AddOutputRequest.add_member(:output_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, location_name: "OutputStatus", traits: {"smithy.api#jsonName" => "outputStatus"}))
    AddOutputRequest.add_member(:ndi_speed_hq_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "NdiSpeedHqQuality", traits: {"smithy.api#jsonName" => "ndiSpeedHqQuality"}))
    AddOutputRequest.add_member(:ndi_program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NdiProgramName", traits: {"smithy.api#jsonName" => "ndiProgramName"}))
    AddOutputRequest.type = Types::AddOutputRequest
    Algorithm.add_member(:aes128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "aes128", traits: {"smithy.api#enumValue" => "aes128", "smithy.api#suppress" => ["EnumShape"]}))
    Algorithm.add_member(:aes192, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "aes192", traits: {"smithy.api#enumValue" => "aes192", "smithy.api#suppress" => ["EnumShape"]}))
    Algorithm.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "aes256", traits: {"smithy.api#enumValue" => "aes256", "smithy.api#suppress" => ["EnumShape"]}))
    AudioMonitoringSetting.add_member(:silent_audio, ::Smithy::Schema::Shapes::MemberShape.new(target: SilentAudio, location_name: "SilentAudio", traits: {"smithy.api#jsonName" => "silentAudio"}))
    AudioMonitoringSetting.type = Types::AudioMonitoringSetting
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    BadRequestException.type = Types::BadRequestException
    BlackFrames.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, location_name: "State", traits: {"smithy.api#jsonName" => "state"}))
    BlackFrames.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds"}))
    BlackFrames.type = Types::BlackFrames
    Bridge.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeArn", "smithy.api#required" => {}}))
    Bridge.add_member(:bridge_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, location_name: "BridgeMessages", traits: {"smithy.api#jsonName" => "bridgeMessages"}))
    Bridge.add_member(:bridge_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeState, location_name: "BridgeState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeState", "smithy.api#required" => {}}))
    Bridge.add_member(:egress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressGatewayBridge, location_name: "EgressGatewayBridge", traits: {"smithy.api#jsonName" => "egressGatewayBridge"}))
    Bridge.add_member(:ingress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressGatewayBridge, location_name: "IngressGatewayBridge", traits: {"smithy.api#jsonName" => "ingressGatewayBridge"}))
    Bridge.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Bridge.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbridgeoutput, location_name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    Bridge.add_member(:placement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "PlacementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "placementArn", "smithy.api#required" => {}}))
    Bridge.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverConfig, location_name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    Bridge.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbridgesource, location_name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    Bridge.type = Types::Bridge
    BridgeFlowOutput.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    BridgeFlowOutput.add_member(:flow_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowSourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowSourceArn", "smithy.api#required" => {}}))
    BridgeFlowOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    BridgeFlowOutput.type = Types::BridgeFlowOutput
    BridgeFlowSource.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    BridgeFlowSource.add_member(:flow_vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "FlowVpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "flowVpcInterfaceAttachment"}))
    BridgeFlowSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    BridgeFlowSource.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutputArn", traits: {"smithy.api#jsonName" => "outputArn"}))
    BridgeFlowSource.type = Types::BridgeFlowSource
    BridgeNetworkOutput.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "IpAddress", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ipAddress", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NetworkName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkName", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "port", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Ttl", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ttl", "smithy.api#required" => {}}))
    BridgeNetworkOutput.type = Types::BridgeNetworkOutput
    BridgeNetworkSource.add_member(:multicast_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MulticastIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "multicastIp", "smithy.api#required" => {}}))
    BridgeNetworkSource.add_member(:multicast_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastSourceSettings, location_name: "MulticastSourceSettings", traits: {"smithy.api#jsonName" => "multicastSourceSettings"}))
    BridgeNetworkSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    BridgeNetworkSource.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NetworkName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkName", "smithy.api#required" => {}}))
    BridgeNetworkSource.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "port", "smithy.api#required" => {}}))
    BridgeNetworkSource.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    BridgeNetworkSource.type = Types::BridgeNetworkSource
    BridgeOutput.add_member(:flow_output, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeFlowOutput, location_name: "FlowOutput", traits: {"smithy.api#jsonName" => "flowOutput"}))
    BridgeOutput.add_member(:network_output, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeNetworkOutput, location_name: "NetworkOutput", traits: {"smithy.api#jsonName" => "networkOutput"}))
    BridgeOutput.type = Types::BridgeOutput
    BridgePlacement.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    BridgePlacement.add_member(:locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCKED", traits: {"smithy.api#enumValue" => "LOCKED"}))
    BridgeSource.add_member(:flow_source, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeFlowSource, location_name: "FlowSource", traits: {"smithy.api#jsonName" => "flowSource"}))
    BridgeSource.add_member(:network_source, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeNetworkSource, location_name: "NetworkSource", traits: {"smithy.api#jsonName" => "networkSource"}))
    BridgeSource.type = Types::BridgeSource
    BridgeState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    BridgeState.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    BridgeState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    BridgeState.add_member(:deploying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPLOYING", traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    BridgeState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BridgeState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    BridgeState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    BridgeState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    BridgeState.add_member(:start_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_FAILED", traits: {"smithy.api#enumValue" => "START_FAILED"}))
    BridgeState.add_member(:start_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_PENDING", traits: {"smithy.api#enumValue" => "START_PENDING"}))
    BridgeState.add_member(:stop_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP_FAILED", traits: {"smithy.api#enumValue" => "STOP_FAILED"}))
    BridgeState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    Colorimetry.add_member(:bt601, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BT601", traits: {"smithy.api#enumValue" => "BT601"}))
    Colorimetry.add_member(:bt709, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BT709", traits: {"smithy.api#enumValue" => "BT709"}))
    Colorimetry.add_member(:bt2020, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BT2020", traits: {"smithy.api#enumValue" => "BT2020"}))
    Colorimetry.add_member(:bt2100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BT2100", traits: {"smithy.api#enumValue" => "BT2100"}))
    Colorimetry.add_member(:st2065_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ST2065_1", traits: {"smithy.api#enumValue" => "ST2065-1"}))
    Colorimetry.add_member(:st2065_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ST2065_3", traits: {"smithy.api#enumValue" => "ST2065-3"}))
    Colorimetry.add_member(:xyz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XYZ", traits: {"smithy.api#enumValue" => "XYZ"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    ConnectionStatus.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    ContentQualityAnalysisState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContentQualityAnalysisState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CreateBridge420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    CreateBridge420Exception.type = Types::CreateBridge420Exception
    CreateBridgeRequest.add_member(:egress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: AddEgressGatewayBridgeRequest, location_name: "EgressGatewayBridge", traits: {"smithy.api#jsonName" => "egressGatewayBridge"}))
    CreateBridgeRequest.add_member(:ingress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: AddIngressGatewayBridgeRequest, location_name: "IngressGatewayBridge", traits: {"smithy.api#jsonName" => "ingressGatewayBridge"}))
    CreateBridgeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateBridgeRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddbridgeoutputrequest, location_name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    CreateBridgeRequest.add_member(:placement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "PlacementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "placementArn", "smithy.api#required" => {}}))
    CreateBridgeRequest.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverConfig, location_name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    CreateBridgeRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddbridgesourcerequest, location_name: "Sources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sources", "smithy.api#required" => {}}))
    CreateBridgeRequest.type = Types::CreateBridgeRequest
    CreateBridgeResponse.add_member(:bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: Bridge, location_name: "Bridge", traits: {"smithy.api#jsonName" => "bridge"}))
    CreateBridgeResponse.type = Types::CreateBridgeResponse
    CreateFlow420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    CreateFlow420Exception.type = Types::CreateFlow420Exception
    CreateFlowRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone"}))
    CreateFlowRequest.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgrantentitlementrequest, location_name: "Entitlements", traits: {"smithy.api#jsonName" => "entitlements"}))
    CreateFlowRequest.add_member(:media_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddmediastreamrequest, location_name: "MediaStreams", traits: {"smithy.api#jsonName" => "mediaStreams"}))
    CreateFlowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddoutputrequest, location_name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    CreateFlowRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: SetSourceRequest, location_name: "Source", traits: {"smithy.api#jsonName" => "source"}))
    CreateFlowRequest.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverConfig, location_name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    CreateFlowRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsetsourcerequest, location_name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    CreateFlowRequest.add_member(:vpc_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcinterfacerequest, location_name: "VpcInterfaces", traits: {"smithy.api#jsonName" => "vpcInterfaces"}))
    CreateFlowRequest.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: AddMaintenance, location_name: "Maintenance", traits: {"smithy.api#jsonName" => "maintenance"}))
    CreateFlowRequest.add_member(:source_monitoring_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfig, location_name: "SourceMonitoringConfig", traits: {"smithy.api#jsonName" => "sourceMonitoringConfig"}))
    CreateFlowRequest.add_member(:flow_size, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowSize, location_name: "FlowSize", traits: {"smithy.api#jsonName" => "flowSize"}))
    CreateFlowRequest.add_member(:ndi_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiConfig, location_name: "NdiConfig", traits: {"smithy.api#jsonName" => "ndiConfig"}))
    CreateFlowRequest.type = Types::CreateFlowRequest
    CreateFlowResponse.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: Flow, location_name: "Flow", traits: {"smithy.api#jsonName" => "flow"}))
    CreateFlowResponse.type = Types::CreateFlowResponse
    CreateGateway420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    CreateGateway420Exception.type = Types::CreateGateway420Exception
    CreateGatewayRequest.add_member(:egress_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "EgressCidrBlocks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "egressCidrBlocks", "smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:networks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgatewaynetwork, location_name: "Networks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networks", "smithy.api#required" => {}}))
    CreateGatewayRequest.type = Types::CreateGatewayRequest
    CreateGatewayResponse.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: Gateway, location_name: "Gateway", traits: {"smithy.api#jsonName" => "gateway"}))
    CreateGatewayResponse.type = Types::CreateGatewayResponse
    DeleteBridgeRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    DeleteBridgeRequest.type = Types::DeleteBridgeRequest
    DeleteBridgeResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    DeleteBridgeResponse.type = Types::DeleteBridgeResponse
    DeleteFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    DeleteFlowRequest.type = Types::DeleteFlowRequest
    DeleteFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    DeleteFlowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    DeleteFlowResponse.type = Types::DeleteFlowResponse
    DeleteGatewayRequest.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+$", "smithy.api#required" => {}}))
    DeleteGatewayRequest.type = Types::DeleteGatewayRequest
    DeleteGatewayResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayArn", traits: {"smithy.api#jsonName" => "gatewayArn"}))
    DeleteGatewayResponse.type = Types::DeleteGatewayResponse
    DeregisterGatewayInstanceRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "Force", traits: {"smithy.api#httpQuery" => "force"}))
    DeregisterGatewayInstanceRequest.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInstanceArn, location_name: "GatewayInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+:instance:.+$", "smithy.api#required" => {}}))
    DeregisterGatewayInstanceRequest.type = Types::DeregisterGatewayInstanceRequest
    DeregisterGatewayInstanceResponse.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayInstanceArn", traits: {"smithy.api#jsonName" => "gatewayInstanceArn"}))
    DeregisterGatewayInstanceResponse.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, location_name: "InstanceState", traits: {"smithy.api#jsonName" => "instanceState"}))
    DeregisterGatewayInstanceResponse.type = Types::DeregisterGatewayInstanceResponse
    DescribeBridgeRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    DescribeBridgeRequest.type = Types::DescribeBridgeRequest
    DescribeBridgeResponse.add_member(:bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: Bridge, location_name: "Bridge", traits: {"smithy.api#jsonName" => "bridge"}))
    DescribeBridgeResponse.type = Types::DescribeBridgeResponse
    DescribeFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    DescribeFlowRequest.type = Types::DescribeFlowRequest
    DescribeFlowResponse.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: Flow, location_name: "Flow", traits: {"smithy.api#jsonName" => "flow"}))
    DescribeFlowResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, location_name: "Messages", traits: {"smithy.api#jsonName" => "messages"}))
    DescribeFlowResponse.type = Types::DescribeFlowResponse
    DescribeFlowSourceMetadataRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFlowSourceMetadataRequest.type = Types::DescribeFlowSourceMetadataRequest
    DescribeFlowSourceMetadataResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    DescribeFlowSourceMetadataResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, location_name: "Messages", traits: {"smithy.api#jsonName" => "messages"}))
    DescribeFlowSourceMetadataResponse.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "Timestamp", traits: {"smithy.api#jsonName" => "timestamp", "smithy.api#timestampFormat" => "date-time"}))
    DescribeFlowSourceMetadataResponse.add_member(:transport_media_info, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportMediaInfo, location_name: "TransportMediaInfo", traits: {"smithy.api#jsonName" => "transportMediaInfo"}))
    DescribeFlowSourceMetadataResponse.type = Types::DescribeFlowSourceMetadataResponse
    DescribeFlowSourceThumbnailRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFlowSourceThumbnailRequest.type = Types::DescribeFlowSourceThumbnailRequest
    DescribeFlowSourceThumbnailResponse.add_member(:thumbnail_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailDetails, location_name: "ThumbnailDetails", traits: {"smithy.api#jsonName" => "thumbnailDetails"}))
    DescribeFlowSourceThumbnailResponse.type = Types::DescribeFlowSourceThumbnailResponse
    DescribeGatewayInstanceRequest.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInstanceArn, location_name: "GatewayInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+:instance:.+$", "smithy.api#required" => {}}))
    DescribeGatewayInstanceRequest.type = Types::DescribeGatewayInstanceRequest
    DescribeGatewayInstanceResponse.add_member(:gateway_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInstance, location_name: "GatewayInstance", traits: {"smithy.api#jsonName" => "gatewayInstance"}))
    DescribeGatewayInstanceResponse.type = Types::DescribeGatewayInstanceResponse
    DescribeGatewayRequest.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, location_name: "GatewayArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+$", "smithy.api#required" => {}}))
    DescribeGatewayRequest.type = Types::DescribeGatewayRequest
    DescribeGatewayResponse.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: Gateway, location_name: "Gateway", traits: {"smithy.api#jsonName" => "gateway"}))
    DescribeGatewayResponse.type = Types::DescribeGatewayResponse
    DescribeOfferingRequest.add_member(:offering_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferingArn, location_name: "OfferingArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeOfferingRequest.type = Types::DescribeOfferingRequest
    DescribeOfferingResponse.add_member(:offering, ::Smithy::Schema::Shapes::MemberShape.new(target: Offering, location_name: "Offering", traits: {"smithy.api#jsonName" => "offering"}))
    DescribeOfferingResponse.type = Types::DescribeOfferingResponse
    DescribeReservationRequest.add_member(:reservation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationArn, location_name: "ReservationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeReservationRequest.type = Types::DescribeReservationRequest
    DescribeReservationResponse.add_member(:reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation, location_name: "Reservation", traits: {"smithy.api#jsonName" => "reservation"}))
    DescribeReservationResponse.type = Types::DescribeReservationResponse
    DesiredState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DesiredState.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    DesiredState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DestinationConfiguration.add_member(:destination_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DestinationIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationIp", "smithy.api#required" => {}}))
    DestinationConfiguration.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DestinationPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationPort", "smithy.api#required" => {}}))
    DestinationConfiguration.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: Interface, location_name: "Interface", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "interface", "smithy.api#required" => {}}))
    DestinationConfiguration.add_member(:outbound_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutboundIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outboundIp", "smithy.api#required" => {}}))
    DestinationConfiguration.type = Types::DestinationConfiguration
    DestinationConfigurationRequest.add_member(:destination_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DestinationIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationIp", "smithy.api#required" => {}}))
    DestinationConfigurationRequest.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DestinationPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationPort", "smithy.api#required" => {}}))
    DestinationConfigurationRequest.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceRequest, location_name: "Interface", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "interface", "smithy.api#required" => {}}))
    DestinationConfigurationRequest.type = Types::DestinationConfigurationRequest
    DurationUnits.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    EgressGatewayBridge.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "InstanceId", traits: {"smithy.api#jsonName" => "instanceId"}))
    EgressGatewayBridge.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxBitrate", "smithy.api#required" => {}}))
    EgressGatewayBridge.type = Types::EgressGatewayBridge
    EncoderProfile.add_member(:main, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "main", traits: {"smithy.api#enumValue" => "main", "smithy.api#suppress" => ["EnumShape"]}))
    EncoderProfile.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "high", traits: {"smithy.api#enumValue" => "high", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingName.add_member(:jxsv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "jxsv", traits: {"smithy.api#enumValue" => "jxsv", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingName.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "raw", traits: {"smithy.api#enumValue" => "raw", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingName.add_member(:smpte291, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "smpte291", traits: {"smithy.api#enumValue" => "smpte291", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingName.add_member(:pcm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "pcm", traits: {"smithy.api#enumValue" => "pcm", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingParameters.add_member(:compression_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "CompressionFactor", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "compressionFactor", "smithy.api#required" => {}}))
    EncodingParameters.add_member(:encoder_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderProfile, location_name: "EncoderProfile", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encoderProfile", "smithy.api#required" => {}}))
    EncodingParameters.type = Types::EncodingParameters
    EncodingParametersRequest.add_member(:compression_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "CompressionFactor", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "compressionFactor", "smithy.api#required" => {}}))
    EncodingParametersRequest.add_member(:encoder_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderProfile, location_name: "EncoderProfile", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encoderProfile", "smithy.api#required" => {}}))
    EncodingParametersRequest.type = Types::EncodingParametersRequest
    Encryption.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: Algorithm, location_name: "Algorithm", traits: {"smithy.api#jsonName" => "algorithm"}))
    Encryption.add_member(:constant_initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ConstantInitializationVector", traits: {"smithy.api#jsonName" => "constantInitializationVector"}))
    Encryption.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DeviceId", traits: {"smithy.api#jsonName" => "deviceId"}))
    Encryption.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, location_name: "KeyType", traits: {"smithy.api#jsonName" => "keyType"}))
    Encryption.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Region", traits: {"smithy.api#jsonName" => "region"}))
    Encryption.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    Encryption.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    Encryption.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SecretArn", traits: {"smithy.api#jsonName" => "secretArn"}))
    Encryption.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Url", traits: {"smithy.api#jsonName" => "url"}))
    Encryption.type = Types::Encryption
    Entitlement.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    Entitlement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Entitlement.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, location_name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    Entitlement.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlementArn", "smithy.api#required" => {}}))
    Entitlement.add_member(:entitlement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementStatus, location_name: "EntitlementStatus", traits: {"smithy.api#jsonName" => "entitlementStatus"}))
    Entitlement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Entitlement.add_member(:subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "Subscribers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subscribers", "smithy.api#required" => {}}))
    Entitlement.type = Types::Entitlement
    EntitlementStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EntitlementStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FailoverConfig.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, location_name: "FailoverMode", traits: {"smithy.api#jsonName" => "failoverMode"}))
    FailoverConfig.add_member(:recovery_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "RecoveryWindow", traits: {"smithy.api#jsonName" => "recoveryWindow"}))
    FailoverConfig.add_member(:source_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: SourcePriority, location_name: "SourcePriority", traits: {"smithy.api#jsonName" => "sourcePriority"}))
    FailoverConfig.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, location_name: "State", traits: {"smithy.api#jsonName" => "state"}))
    FailoverConfig.type = Types::FailoverConfig
    FailoverMode.add_member(:merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MERGE", traits: {"smithy.api#enumValue" => "MERGE"}))
    FailoverMode.add_member(:failover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILOVER", traits: {"smithy.api#enumValue" => "FAILOVER"}))
    Flow.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "AvailabilityZone", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "availabilityZone", "smithy.api#required" => {}}))
    Flow.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Flow.add_member(:egress_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EgressIp", traits: {"smithy.api#jsonName" => "egressIp"}))
    Flow.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofentitlement, location_name: "Entitlements", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlements", "smithy.api#required" => {}}))
    Flow.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    Flow.add_member(:media_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastream, location_name: "MediaStreams", traits: {"smithy.api#jsonName" => "mediaStreams"}))
    Flow.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Flow.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofoutput, location_name: "Outputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outputs", "smithy.api#required" => {}}))
    Flow.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "Source", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "source", "smithy.api#required" => {}}))
    Flow.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverConfig, location_name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    Flow.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsource, location_name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    Flow.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    Flow.add_member(:vpc_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcinterface, location_name: "VpcInterfaces", traits: {"smithy.api#jsonName" => "vpcInterfaces"}))
    Flow.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: Maintenance, location_name: "Maintenance", traits: {"smithy.api#jsonName" => "maintenance"}))
    Flow.add_member(:source_monitoring_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfig, location_name: "SourceMonitoringConfig", traits: {"smithy.api#jsonName" => "sourceMonitoringConfig"}))
    Flow.add_member(:flow_size, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowSize, location_name: "FlowSize", traits: {"smithy.api#jsonName" => "flowSize"}))
    Flow.add_member(:ndi_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiConfig, location_name: "NdiConfig", traits: {"smithy.api#jsonName" => "ndiConfig"}))
    Flow.type = Types::Flow
    FlowSize.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    FlowSize.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LARGE", traits: {"smithy.api#enumValue" => "LARGE"}))
    Fmtp.add_member(:channel_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ChannelOrder", traits: {"smithy.api#jsonName" => "channelOrder"}))
    Fmtp.add_member(:colorimetry, ::Smithy::Schema::Shapes::MemberShape.new(target: Colorimetry, location_name: "Colorimetry", traits: {"smithy.api#jsonName" => "colorimetry"}))
    Fmtp.add_member(:exact_framerate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ExactFramerate", traits: {"smithy.api#jsonName" => "exactFramerate"}))
    Fmtp.add_member(:par, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Par", traits: {"smithy.api#jsonName" => "par"}))
    Fmtp.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, location_name: "Range", traits: {"smithy.api#jsonName" => "range"}))
    Fmtp.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, location_name: "ScanMode", traits: {"smithy.api#jsonName" => "scanMode"}))
    Fmtp.add_member(:tcs, ::Smithy::Schema::Shapes::MemberShape.new(target: Tcs, location_name: "Tcs", traits: {"smithy.api#jsonName" => "tcs"}))
    Fmtp.type = Types::Fmtp
    FmtpRequest.add_member(:channel_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ChannelOrder", traits: {"smithy.api#jsonName" => "channelOrder"}))
    FmtpRequest.add_member(:colorimetry, ::Smithy::Schema::Shapes::MemberShape.new(target: Colorimetry, location_name: "Colorimetry", traits: {"smithy.api#jsonName" => "colorimetry"}))
    FmtpRequest.add_member(:exact_framerate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ExactFramerate", traits: {"smithy.api#jsonName" => "exactFramerate"}))
    FmtpRequest.add_member(:par, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Par", traits: {"smithy.api#jsonName" => "par"}))
    FmtpRequest.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, location_name: "Range", traits: {"smithy.api#jsonName" => "range"}))
    FmtpRequest.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, location_name: "ScanMode", traits: {"smithy.api#jsonName" => "scanMode"}))
    FmtpRequest.add_member(:tcs, ::Smithy::Schema::Shapes::MemberShape.new(target: Tcs, location_name: "Tcs", traits: {"smithy.api#jsonName" => "tcs"}))
    FmtpRequest.type = Types::FmtpRequest
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ForbiddenException.type = Types::ForbiddenException
    FrameResolution.add_member(:frame_height, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "FrameHeight", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "frameHeight", "smithy.api#required" => {}}))
    FrameResolution.add_member(:frame_width, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "FrameWidth", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "frameWidth", "smithy.api#required" => {}}))
    FrameResolution.type = Types::FrameResolution
    FrozenFrames.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, location_name: "State", traits: {"smithy.api#jsonName" => "state"}))
    FrozenFrames.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds"}))
    FrozenFrames.type = Types::FrozenFrames
    Gateway.add_member(:egress_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "EgressCidrBlocks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "egressCidrBlocks", "smithy.api#required" => {}}))
    Gateway.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayArn", "smithy.api#required" => {}}))
    Gateway.add_member(:gateway_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, location_name: "GatewayMessages", traits: {"smithy.api#jsonName" => "gatewayMessages"}))
    Gateway.add_member(:gateway_state, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayState, location_name: "GatewayState", traits: {"smithy.api#jsonName" => "gatewayState"}))
    Gateway.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Gateway.add_member(:networks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgatewaynetwork, location_name: "Networks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networks", "smithy.api#required" => {}}))
    Gateway.type = Types::Gateway
    GatewayBridgeSource.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeArn", "smithy.api#required" => {}}))
    GatewayBridgeSource.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    GatewayBridgeSource.type = Types::GatewayBridgeSource
    GatewayInstance.add_member(:bridge_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgePlacement, location_name: "BridgePlacement", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgePlacement", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatus, location_name: "ConnectionStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "connectionStatus", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayArn", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayInstanceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayInstanceArn", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "instanceId", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:instance_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, location_name: "InstanceMessages", traits: {"smithy.api#jsonName" => "instanceMessages"}))
    GatewayInstance.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, location_name: "InstanceState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "instanceState", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:running_bridge_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "RunningBridgeCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "runningBridgeCount", "smithy.api#required" => {}}))
    GatewayInstance.type = Types::GatewayInstance
    GatewayNetwork.add_member(:cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "CidrBlock", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cidrBlock", "smithy.api#required" => {}}))
    GatewayNetwork.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GatewayNetwork.type = Types::GatewayNetwork
    GatewayState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    GatewayState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GatewayState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    GatewayState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    GatewayState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    GatewayState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    GrantEntitlementRequest.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    GrantEntitlementRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GrantEntitlementRequest.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, location_name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    GrantEntitlementRequest.add_member(:entitlement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementStatus, location_name: "EntitlementStatus", traits: {"smithy.api#jsonName" => "entitlementStatus"}))
    GrantEntitlementRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    GrantEntitlementRequest.add_member(:subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "Subscribers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subscribers", "smithy.api#required" => {}}))
    GrantEntitlementRequest.type = Types::GrantEntitlementRequest
    GrantFlowEntitlements420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    GrantFlowEntitlements420Exception.type = Types::GrantFlowEntitlements420Exception
    GrantFlowEntitlementsRequest.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgrantentitlementrequest, location_name: "Entitlements", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlements", "smithy.api#required" => {}}))
    GrantFlowEntitlementsRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    GrantFlowEntitlementsRequest.type = Types::GrantFlowEntitlementsRequest
    GrantFlowEntitlementsResponse.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofentitlement, location_name: "Entitlements", traits: {"smithy.api#jsonName" => "entitlements"}))
    GrantFlowEntitlementsResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    GrantFlowEntitlementsResponse.type = Types::GrantFlowEntitlementsResponse
    IngressGatewayBridge.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "InstanceId", traits: {"smithy.api#jsonName" => "instanceId"}))
    IngressGatewayBridge.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxBitrate", "smithy.api#required" => {}}))
    IngressGatewayBridge.add_member(:max_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxOutputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxOutputs", "smithy.api#required" => {}}))
    IngressGatewayBridge.type = Types::IngressGatewayBridge
    InputConfiguration.add_member(:input_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "InputIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "inputIp", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:input_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "InputPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "inputPort", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: Interface, location_name: "Interface", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "interface", "smithy.api#required" => {}}))
    InputConfiguration.type = Types::InputConfiguration
    InputConfigurationRequest.add_member(:input_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "InputPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "inputPort", "smithy.api#required" => {}}))
    InputConfigurationRequest.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceRequest, location_name: "Interface", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "interface", "smithy.api#required" => {}}))
    InputConfigurationRequest.type = Types::InputConfigurationRequest
    InstanceState.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTERING", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    InstanceState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InstanceState.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    InstanceState.add_member(:deregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTERED", traits: {"smithy.api#enumValue" => "DEREGISTERED"}))
    InstanceState.add_member(:registration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTRATION_ERROR", traits: {"smithy.api#enumValue" => "REGISTRATION_ERROR"}))
    InstanceState.add_member(:deregistration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTRATION_ERROR", traits: {"smithy.api#enumValue" => "DEREGISTRATION_ERROR"}))
    Interface.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Interface.type = Types::Interface
    InterfaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    InterfaceRequest.type = Types::InterfaceRequest
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    KeyType.add_member(:speke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "speke", traits: {"smithy.api#enumValue" => "speke", "smithy.api#suppress" => ["EnumShape"]}))
    KeyType.add_member(:static_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "static_key", traits: {"smithy.api#enumValue" => "static-key", "smithy.api#suppress" => ["EnumShape"]}))
    KeyType.add_member(:srt_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "srt_password", traits: {"smithy.api#enumValue" => "srt-password", "smithy.api#suppress" => ["EnumShape"]}))
    ListBridgesRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FilterArn", traits: {"smithy.api#httpQuery" => "filterArn"}))
    ListBridgesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBridgesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBridgesRequest.type = Types::ListBridgesRequest
    ListBridgesResponse.add_member(:bridges, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedbridge, location_name: "Bridges", traits: {"smithy.api#jsonName" => "bridges"}))
    ListBridgesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListBridgesResponse.type = Types::ListBridgesResponse
    ListEntitlementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEntitlementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEntitlementsRequest.type = Types::ListEntitlementsRequest
    ListEntitlementsResponse.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedentitlement, location_name: "Entitlements", traits: {"smithy.api#jsonName" => "entitlements"}))
    ListEntitlementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListEntitlementsResponse.type = Types::ListEntitlementsResponse
    ListFlowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFlowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFlowsRequest.type = Types::ListFlowsRequest
    ListFlowsResponse.add_member(:flows, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedflow, location_name: "Flows", traits: {"smithy.api#jsonName" => "flows"}))
    ListFlowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListFlowsResponse.type = Types::ListFlowsResponse
    ListGatewayInstancesRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FilterArn", traits: {"smithy.api#httpQuery" => "filterArn"}))
    ListGatewayInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGatewayInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGatewayInstancesRequest.type = Types::ListGatewayInstancesRequest
    ListGatewayInstancesResponse.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedgatewayinstance, location_name: "Instances", traits: {"smithy.api#jsonName" => "instances"}))
    ListGatewayInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListGatewayInstancesResponse.type = Types::ListGatewayInstancesResponse
    ListGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGatewaysRequest.type = Types::ListGatewaysRequest
    ListGatewaysResponse.add_member(:gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedgateway, location_name: "Gateways", traits: {"smithy.api#jsonName" => "gateways"}))
    ListGatewaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListGatewaysResponse.type = Types::ListGatewaysResponse
    ListOfferingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListOfferingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListOfferingsRequest.type = Types::ListOfferingsRequest
    ListOfferingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListOfferingsResponse.add_member(:offerings, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofoffering, location_name: "Offerings", traits: {"smithy.api#jsonName" => "offerings"}))
    ListOfferingsResponse.type = Types::ListOfferingsResponse
    ListReservationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListReservationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReservationsRequest.type = Types::ListReservationsRequest
    ListReservationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListReservationsResponse.add_member(:reservations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreservation, location_name: "Reservations", traits: {"smithy.api#jsonName" => "reservations"}))
    ListReservationsResponse.type = Types::ListReservationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, location_name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListedBridge.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeArn", "smithy.api#required" => {}}))
    ListedBridge.add_member(:bridge_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeState, location_name: "BridgeState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeState", "smithy.api#required" => {}}))
    ListedBridge.add_member(:bridge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeType", "smithy.api#required" => {}}))
    ListedBridge.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedBridge.add_member(:placement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "PlacementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "placementArn", "smithy.api#required" => {}}))
    ListedBridge.type = Types::ListedBridge
    ListedEntitlement.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    ListedEntitlement.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlementArn", "smithy.api#required" => {}}))
    ListedEntitlement.add_member(:entitlement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlementName", "smithy.api#required" => {}}))
    ListedEntitlement.type = Types::ListedEntitlement
    ListedFlow.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "AvailabilityZone", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "availabilityZone", "smithy.api#required" => {}}))
    ListedFlow.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    ListedFlow.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    ListedFlow.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedFlow.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, location_name: "SourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceType", "smithy.api#required" => {}}))
    ListedFlow.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    ListedFlow.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: Maintenance, location_name: "Maintenance", traits: {"smithy.api#jsonName" => "maintenance"}))
    ListedFlow.type = Types::ListedFlow
    ListedGateway.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayArn", "smithy.api#required" => {}}))
    ListedGateway.add_member(:gateway_state, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayState, location_name: "GatewayState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayState", "smithy.api#required" => {}}))
    ListedGateway.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedGateway.type = Types::ListedGateway
    ListedGatewayInstance.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayArn", "smithy.api#required" => {}}))
    ListedGatewayInstance.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayInstanceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayInstanceArn", "smithy.api#required" => {}}))
    ListedGatewayInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "instanceId", "smithy.api#required" => {}}))
    ListedGatewayInstance.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, location_name: "InstanceState", traits: {"smithy.api#jsonName" => "instanceState"}))
    ListedGatewayInstance.type = Types::ListedGatewayInstance
    Maintenance.add_member(:maintenance_day, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceDay, location_name: "MaintenanceDay", traits: {"smithy.api#jsonName" => "maintenanceDay"}))
    Maintenance.add_member(:maintenance_deadline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MaintenanceDeadline", traits: {"smithy.api#jsonName" => "maintenanceDeadline"}))
    Maintenance.add_member(:maintenance_scheduled_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MaintenanceScheduledDate", traits: {"smithy.api#jsonName" => "maintenanceScheduledDate"}))
    Maintenance.add_member(:maintenance_start_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MaintenanceStartHour", traits: {"smithy.api#jsonName" => "maintenanceStartHour"}))
    Maintenance.type = Types::Maintenance
    MaintenanceDay.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Monday", traits: {"smithy.api#enumValue" => "Monday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Tuesday", traits: {"smithy.api#enumValue" => "Tuesday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Wednesday", traits: {"smithy.api#enumValue" => "Wednesday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Thursday", traits: {"smithy.api#enumValue" => "Thursday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Friday", traits: {"smithy.api#enumValue" => "Friday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Saturday", traits: {"smithy.api#enumValue" => "Saturday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Sunday", traits: {"smithy.api#enumValue" => "Sunday", "smithy.api#suppress" => ["EnumShape"]}))
    MediaStream.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamAttributes, location_name: "Attributes", traits: {"smithy.api#jsonName" => "attributes"}))
    MediaStream.add_member(:clock_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ClockRate", traits: {"smithy.api#jsonName" => "clockRate"}))
    MediaStream.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    MediaStream.add_member(:fmt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Fmt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "fmt", "smithy.api#required" => {}}))
    MediaStream.add_member(:media_stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MediaStreamId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamId", "smithy.api#required" => {}}))
    MediaStream.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStream.add_member(:media_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamType, location_name: "MediaStreamType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamType", "smithy.api#required" => {}}))
    MediaStream.add_member(:video_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VideoFormat", traits: {"smithy.api#jsonName" => "videoFormat"}))
    MediaStream.type = Types::MediaStream
    MediaStreamAttributes.add_member(:fmtp, ::Smithy::Schema::Shapes::MemberShape.new(target: Fmtp, location_name: "Fmtp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "fmtp", "smithy.api#required" => {}}))
    MediaStreamAttributes.add_member(:lang, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Lang", traits: {"smithy.api#jsonName" => "lang"}))
    MediaStreamAttributes.type = Types::MediaStreamAttributes
    MediaStreamAttributesRequest.add_member(:fmtp, ::Smithy::Schema::Shapes::MemberShape.new(target: FmtpRequest, location_name: "Fmtp", traits: {"smithy.api#jsonName" => "fmtp"}))
    MediaStreamAttributesRequest.add_member(:lang, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Lang", traits: {"smithy.api#jsonName" => "lang"}))
    MediaStreamAttributesRequest.type = Types::MediaStreamAttributesRequest
    MediaStreamOutputConfiguration.add_member(:destination_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdestinationconfiguration, location_name: "DestinationConfigurations", traits: {"smithy.api#jsonName" => "destinationConfigurations"}))
    MediaStreamOutputConfiguration.add_member(:encoding_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingName, location_name: "EncodingName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encodingName", "smithy.api#required" => {}}))
    MediaStreamOutputConfiguration.add_member(:encoding_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingParameters, location_name: "EncodingParameters", traits: {"smithy.api#jsonName" => "encodingParameters"}))
    MediaStreamOutputConfiguration.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStreamOutputConfiguration.type = Types::MediaStreamOutputConfiguration
    MediaStreamOutputConfigurationRequest.add_member(:destination_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdestinationconfigurationrequest, location_name: "DestinationConfigurations", traits: {"smithy.api#jsonName" => "destinationConfigurations"}))
    MediaStreamOutputConfigurationRequest.add_member(:encoding_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingName, location_name: "EncodingName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encodingName", "smithy.api#required" => {}}))
    MediaStreamOutputConfigurationRequest.add_member(:encoding_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingParametersRequest, location_name: "EncodingParameters", traits: {"smithy.api#jsonName" => "encodingParameters"}))
    MediaStreamOutputConfigurationRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStreamOutputConfigurationRequest.type = Types::MediaStreamOutputConfigurationRequest
    MediaStreamSourceConfiguration.add_member(:encoding_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingName, location_name: "EncodingName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encodingName", "smithy.api#required" => {}}))
    MediaStreamSourceConfiguration.add_member(:input_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofinputconfiguration, location_name: "InputConfigurations", traits: {"smithy.api#jsonName" => "inputConfigurations"}))
    MediaStreamSourceConfiguration.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStreamSourceConfiguration.type = Types::MediaStreamSourceConfiguration
    MediaStreamSourceConfigurationRequest.add_member(:encoding_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingName, location_name: "EncodingName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encodingName", "smithy.api#required" => {}}))
    MediaStreamSourceConfigurationRequest.add_member(:input_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofinputconfigurationrequest, location_name: "InputConfigurations", traits: {"smithy.api#jsonName" => "inputConfigurations"}))
    MediaStreamSourceConfigurationRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStreamSourceConfigurationRequest.type = Types::MediaStreamSourceConfigurationRequest
    MediaStreamType.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "video", traits: {"smithy.api#enumValue" => "video", "smithy.api#suppress" => ["EnumShape"]}))
    MediaStreamType.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "audio", traits: {"smithy.api#enumValue" => "audio", "smithy.api#suppress" => ["EnumShape"]}))
    MediaStreamType.add_member(:ancillary_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ancillary_data", traits: {"smithy.api#enumValue" => "ancillary-data", "smithy.api#suppress" => ["EnumShape"]}))
    MessageDetail.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    MessageDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    MessageDetail.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceName", traits: {"smithy.api#jsonName" => "resourceName"}))
    MessageDetail.type = Types::MessageDetail
    Messages.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "Errors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "errors", "smithy.api#required" => {}}))
    Messages.type = Types::Messages
    MonitoringConfig.add_member(:thumbnail_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailState, location_name: "ThumbnailState", traits: {"smithy.api#jsonName" => "thumbnailState"}))
    MonitoringConfig.add_member(:audio_monitoring_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaudiomonitoringsetting, location_name: "AudioMonitoringSettings", traits: {"smithy.api#jsonName" => "audioMonitoringSettings"}))
    MonitoringConfig.add_member(:content_quality_analysis_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentQualityAnalysisState, location_name: "ContentQualityAnalysisState", traits: {"smithy.api#jsonName" => "contentQualityAnalysisState"}))
    MonitoringConfig.add_member(:video_monitoring_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvideomonitoringsetting, location_name: "VideoMonitoringSettings", traits: {"smithy.api#jsonName" => "videoMonitoringSettings"}))
    MonitoringConfig.type = Types::MonitoringConfig
    MulticastSourceSettings.add_member(:multicast_source_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MulticastSourceIp", traits: {"smithy.api#jsonName" => "multicastSourceIp"}))
    MulticastSourceSettings.type = Types::MulticastSourceSettings
    NdiConfig.add_member(:ndi_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiState, location_name: "NdiState", traits: {"smithy.api#jsonName" => "ndiState"}))
    NdiConfig.add_member(:machine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MachineName", traits: {"smithy.api#jsonName" => "machineName"}))
    NdiConfig.add_member(:ndi_discovery_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofndidiscoveryserverconfig, location_name: "NdiDiscoveryServers", traits: {"smithy.api#jsonName" => "ndiDiscoveryServers"}))
    NdiConfig.type = Types::NdiConfig
    NdiDiscoveryServerConfig.add_member(:discovery_server_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DiscoveryServerAddress", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "discoveryServerAddress", "smithy.api#required" => {}}))
    NdiDiscoveryServerConfig.add_member(:discovery_server_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DiscoveryServerPort", traits: {"smithy.api#jsonName" => "discoveryServerPort"}))
    NdiDiscoveryServerConfig.add_member(:vpc_interface_adapter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VpcInterfaceAdapter", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcInterfaceAdapter", "smithy.api#required" => {}}))
    NdiDiscoveryServerConfig.type = Types::NdiDiscoveryServerConfig
    NdiState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    NdiState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    NetworkInterfaceType.add_member(:ena, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ena", traits: {"smithy.api#enumValue" => "ena", "smithy.api#suppress" => ["EnumShape"]}))
    NetworkInterfaceType.add_member(:efa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "efa", traits: {"smithy.api#enumValue" => "efa", "smithy.api#suppress" => ["EnumShape"]}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    NotFoundException.type = Types::NotFoundException
    Offering.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "CurrencyCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currencyCode", "smithy.api#required" => {}}))
    Offering.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Duration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "duration", "smithy.api#required" => {}}))
    Offering.add_member(:duration_units, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnits, location_name: "DurationUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "durationUnits", "smithy.api#required" => {}}))
    Offering.add_member(:offering_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OfferingArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "offeringArn", "smithy.api#required" => {}}))
    Offering.add_member(:offering_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OfferingDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "offeringDescription", "smithy.api#required" => {}}))
    Offering.add_member(:price_per_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "PricePerUnit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "pricePerUnit", "smithy.api#required" => {}}))
    Offering.add_member(:price_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceUnits, location_name: "PriceUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "priceUnits", "smithy.api#required" => {}}))
    Offering.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecification, location_name: "ResourceSpecification", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSpecification", "smithy.api#required" => {}}))
    Offering.type = Types::Offering
    Output.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    Output.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Output.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Destination", traits: {"smithy.api#jsonName" => "destination"}))
    Output.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, location_name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    Output.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn"}))
    Output.add_member(:listener_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ListenerAddress", traits: {"smithy.api#jsonName" => "listenerAddress"}))
    Output.add_member(:media_live_input_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaLiveInputArn", traits: {"smithy.api#jsonName" => "mediaLiveInputArn"}))
    Output.add_member(:media_stream_output_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamoutputconfiguration, location_name: "MediaStreamOutputConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamOutputConfigurations"}))
    Output.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Output.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutputArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outputArn", "smithy.api#required" => {}}))
    Output.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    Output.add_member(:transport, ::Smithy::Schema::Shapes::MemberShape.new(target: Transport, location_name: "Transport", traits: {"smithy.api#jsonName" => "transport"}))
    Output.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    Output.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    Output.add_member(:bridge_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofinteger, location_name: "BridgePorts", traits: {"smithy.api#jsonName" => "bridgePorts"}))
    Output.add_member(:output_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, location_name: "OutputStatus", traits: {"smithy.api#jsonName" => "outputStatus"}))
    Output.add_member(:peer_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "PeerIpAddress", traits: {"smithy.api#jsonName" => "peerIpAddress"}))
    Output.type = Types::Output
    OutputStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OutputStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PriceUnits.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    Protocol.add_member(:zixi_push, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "zixi_push", traits: {"smithy.api#enumValue" => "zixi-push", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:rtp_fec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rtp_fec", traits: {"smithy.api#enumValue" => "rtp-fec", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:rtp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rtp", traits: {"smithy.api#enumValue" => "rtp", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:zixi_pull, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "zixi_pull", traits: {"smithy.api#enumValue" => "zixi-pull", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:rist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "rist", traits: {"smithy.api#enumValue" => "rist", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:st2110_jpegxs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "st2110_jpegxs", traits: {"smithy.api#enumValue" => "st2110-jpegxs", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:cdi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cdi", traits: {"smithy.api#enumValue" => "cdi", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:srt_listener, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "srt_listener", traits: {"smithy.api#enumValue" => "srt-listener", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:srt_caller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "srt_caller", traits: {"smithy.api#enumValue" => "srt-caller", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:fujitsu_qos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "fujitsu_qos", traits: {"smithy.api#enumValue" => "fujitsu-qos", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "udp", traits: {"smithy.api#enumValue" => "udp", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:ndi_speed_hq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ndi_speed_hq", traits: {"smithy.api#enumValue" => "ndi-speed-hq", "smithy.api#suppress" => ["EnumShape"]}))
    PurchaseOfferingRequest.add_member(:offering_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OfferingArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PurchaseOfferingRequest.add_member(:reservation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ReservationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "reservationName", "smithy.api#required" => {}}))
    PurchaseOfferingRequest.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Start", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "start", "smithy.api#required" => {}}))
    PurchaseOfferingRequest.type = Types::PurchaseOfferingRequest
    PurchaseOfferingResponse.add_member(:reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation, location_name: "Reservation", traits: {"smithy.api#jsonName" => "reservation"}))
    PurchaseOfferingResponse.type = Types::PurchaseOfferingResponse
    Range.add_member(:narrow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NARROW", traits: {"smithy.api#enumValue" => "NARROW"}))
    Range.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    Range.add_member(:fullprotect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULLPROTECT", traits: {"smithy.api#enumValue" => "FULLPROTECT"}))
    RemoveBridgeOutputRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    RemoveBridgeOutputRequest.add_member(:output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutputName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveBridgeOutputRequest.type = Types::RemoveBridgeOutputRequest
    RemoveBridgeOutputResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    RemoveBridgeOutputResponse.add_member(:output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutputName", traits: {"smithy.api#jsonName" => "outputName"}))
    RemoveBridgeOutputResponse.type = Types::RemoveBridgeOutputResponse
    RemoveBridgeSourceRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    RemoveBridgeSourceRequest.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveBridgeSourceRequest.type = Types::RemoveBridgeSourceRequest
    RemoveBridgeSourceResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    RemoveBridgeSourceResponse.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceName", traits: {"smithy.api#jsonName" => "sourceName"}))
    RemoveBridgeSourceResponse.type = Types::RemoveBridgeSourceResponse
    RemoveFlowMediaStreamRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RemoveFlowMediaStreamRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveFlowMediaStreamRequest.type = Types::RemoveFlowMediaStreamRequest
    RemoveFlowMediaStreamResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RemoveFlowMediaStreamResponse.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#jsonName" => "mediaStreamName"}))
    RemoveFlowMediaStreamResponse.type = Types::RemoveFlowMediaStreamResponse
    RemoveFlowOutputRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RemoveFlowOutputRequest.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutputArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:output:.+$", "smithy.api#required" => {}}))
    RemoveFlowOutputRequest.type = Types::RemoveFlowOutputRequest
    RemoveFlowOutputResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RemoveFlowOutputResponse.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutputArn", traits: {"smithy.api#jsonName" => "outputArn"}))
    RemoveFlowOutputResponse.type = Types::RemoveFlowOutputResponse
    RemoveFlowSourceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RemoveFlowSourceRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:source:.+$", "smithy.api#required" => {}}))
    RemoveFlowSourceRequest.type = Types::RemoveFlowSourceRequest
    RemoveFlowSourceResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RemoveFlowSourceResponse.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceArn", traits: {"smithy.api#jsonName" => "sourceArn"}))
    RemoveFlowSourceResponse.type = Types::RemoveFlowSourceResponse
    RemoveFlowVpcInterfaceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RemoveFlowVpcInterfaceRequest.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VpcInterfaceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveFlowVpcInterfaceRequest.type = Types::RemoveFlowVpcInterfaceRequest
    RemoveFlowVpcInterfaceResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RemoveFlowVpcInterfaceResponse.add_member(:non_deleted_network_interface_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "NonDeletedNetworkInterfaceIds", traits: {"smithy.api#jsonName" => "nonDeletedNetworkInterfaceIds"}))
    RemoveFlowVpcInterfaceResponse.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    RemoveFlowVpcInterfaceResponse.type = Types::RemoveFlowVpcInterfaceResponse
    Reservation.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "CurrencyCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currencyCode", "smithy.api#required" => {}}))
    Reservation.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Duration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "duration", "smithy.api#required" => {}}))
    Reservation.add_member(:duration_units, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnits, location_name: "DurationUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "durationUnits", "smithy.api#required" => {}}))
    Reservation.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "End", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "end", "smithy.api#required" => {}}))
    Reservation.add_member(:offering_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OfferingArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "offeringArn", "smithy.api#required" => {}}))
    Reservation.add_member(:offering_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OfferingDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "offeringDescription", "smithy.api#required" => {}}))
    Reservation.add_member(:price_per_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "PricePerUnit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "pricePerUnit", "smithy.api#required" => {}}))
    Reservation.add_member(:price_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceUnits, location_name: "PriceUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "priceUnits", "smithy.api#required" => {}}))
    Reservation.add_member(:reservation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ReservationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "reservationArn", "smithy.api#required" => {}}))
    Reservation.add_member(:reservation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ReservationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "reservationName", "smithy.api#required" => {}}))
    Reservation.add_member(:reservation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationState, location_name: "ReservationState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "reservationState", "smithy.api#required" => {}}))
    Reservation.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecification, location_name: "ResourceSpecification", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSpecification", "smithy.api#required" => {}}))
    Reservation.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Start", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "start", "smithy.api#required" => {}}))
    Reservation.type = Types::Reservation
    ReservationState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReservationState.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ReservationState.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ReservationState.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ResourceSpecification.add_member(:reserved_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ReservedBitrate", traits: {"smithy.api#jsonName" => "reservedBitrate"}))
    ResourceSpecification.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceType", "smithy.api#required" => {}}))
    ResourceSpecification.type = Types::ResourceSpecification
    ResourceType.add_member(:mbps_outbound_bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Mbps_Outbound_Bandwidth", traits: {"smithy.api#enumValue" => "Mbps_Outbound_Bandwidth", "smithy.api#suppress" => ["EnumShape"]}))
    RevokeFlowEntitlementRequest.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:entitlement:.+$", "smithy.api#required" => {}}))
    RevokeFlowEntitlementRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RevokeFlowEntitlementRequest.type = Types::RevokeFlowEntitlementRequest
    RevokeFlowEntitlementResponse.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn"}))
    RevokeFlowEntitlementResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RevokeFlowEntitlementResponse.type = Types::RevokeFlowEntitlementResponse
    ScanMode.add_member(:progressive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "progressive", traits: {"smithy.api#enumValue" => "progressive", "smithy.api#suppress" => ["EnumShape"]}))
    ScanMode.add_member(:interlace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "interlace", traits: {"smithy.api#enumValue" => "interlace", "smithy.api#suppress" => ["EnumShape"]}))
    ScanMode.add_member(:progressive_segmented_frame, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "progressive_segmented_frame", traits: {"smithy.api#enumValue" => "progressive-segmented-frame", "smithy.api#suppress" => ["EnumShape"]}))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SetGatewayBridgeSourceRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    SetGatewayBridgeSourceRequest.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    SetGatewayBridgeSourceRequest.type = Types::SetGatewayBridgeSourceRequest
    SetSourceRequest.add_member(:decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, location_name: "Decryption", traits: {"smithy.api#jsonName" => "decryption"}))
    SetSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    SetSourceRequest.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:entitlement:.+$"}))
    SetSourceRequest.add_member(:ingest_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "IngestPort", traits: {"smithy.api#jsonName" => "ingestPort"}))
    SetSourceRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    SetSourceRequest.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    SetSourceRequest.add_member(:max_sync_buffer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxSyncBuffer", traits: {"smithy.api#jsonName" => "maxSyncBuffer"}))
    SetSourceRequest.add_member(:media_stream_source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamsourceconfigurationrequest, location_name: "MediaStreamSourceConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamSourceConfigurations"}))
    SetSourceRequest.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    SetSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    SetSourceRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    SetSourceRequest.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    SetSourceRequest.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    SetSourceRequest.add_member(:source_listener_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceListenerAddress", traits: {"smithy.api#jsonName" => "sourceListenerAddress"}))
    SetSourceRequest.add_member(:source_listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SourceListenerPort", traits: {"smithy.api#jsonName" => "sourceListenerPort"}))
    SetSourceRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    SetSourceRequest.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    SetSourceRequest.add_member(:whitelist_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "WhitelistCidr", traits: {"smithy.api#jsonName" => "whitelistCidr"}))
    SetSourceRequest.add_member(:gateway_bridge_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SetGatewayBridgeSourceRequest, location_name: "GatewayBridgeSource", traits: {"smithy.api#jsonName" => "gatewayBridgeSource"}))
    SetSourceRequest.type = Types::SetSourceRequest
    SilentAudio.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, location_name: "State", traits: {"smithy.api#jsonName" => "state"}))
    SilentAudio.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds"}))
    SilentAudio.type = Types::SilentAudio
    Source.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    Source.add_member(:decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, location_name: "Decryption", traits: {"smithy.api#jsonName" => "decryption"}))
    Source.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Source.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn"}))
    Source.add_member(:ingest_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "IngestIp", traits: {"smithy.api#jsonName" => "ingestIp"}))
    Source.add_member(:ingest_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "IngestPort", traits: {"smithy.api#jsonName" => "ingestPort"}))
    Source.add_member(:media_stream_source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamsourceconfiguration, location_name: "MediaStreamSourceConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamSourceConfigurations"}))
    Source.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Source.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    Source.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    Source.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceArn", "smithy.api#required" => {}}))
    Source.add_member(:transport, ::Smithy::Schema::Shapes::MemberShape.new(target: Transport, location_name: "Transport", traits: {"smithy.api#jsonName" => "transport"}))
    Source.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    Source.add_member(:whitelist_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "WhitelistCidr", traits: {"smithy.api#jsonName" => "whitelistCidr"}))
    Source.add_member(:gateway_bridge_source, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayBridgeSource, location_name: "GatewayBridgeSource", traits: {"smithy.api#jsonName" => "gatewayBridgeSource"}))
    Source.add_member(:peer_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "PeerIpAddress", traits: {"smithy.api#jsonName" => "peerIpAddress"}))
    Source.type = Types::Source
    SourcePriority.add_member(:primary_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "PrimarySource", traits: {"smithy.api#jsonName" => "primarySource"}))
    SourcePriority.type = Types::SourcePriority
    SourceType.add_member(:owned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OWNED", traits: {"smithy.api#enumValue" => "OWNED"}))
    SourceType.add_member(:entitled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENTITLED", traits: {"smithy.api#enumValue" => "ENTITLED"}))
    StartFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    StartFlowRequest.type = Types::StartFlowRequest
    StartFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    StartFlowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    StartFlowResponse.type = Types::StartFlowResponse
    State.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    State.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Status.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    Status.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Status.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    Status.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    Status.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    Status.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    Status.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    StopFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    StopFlowRequest.type = Types::StopFlowRequest
    StopFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    StopFlowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    StopFlowResponse.type = Types::StopFlowResponse
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, location_name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tcs.add_member(:sdr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SDR", traits: {"smithy.api#enumValue" => "SDR"}))
    Tcs.add_member(:pq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PQ", traits: {"smithy.api#enumValue" => "PQ"}))
    Tcs.add_member(:hlg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HLG", traits: {"smithy.api#enumValue" => "HLG"}))
    Tcs.add_member(:linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINEAR", traits: {"smithy.api#enumValue" => "LINEAR"}))
    Tcs.add_member(:bt2100_linpq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BT2100LINPQ", traits: {"smithy.api#enumValue" => "BT2100LINPQ"}))
    Tcs.add_member(:bt2100_linhlg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BT2100LINHLG", traits: {"smithy.api#enumValue" => "BT2100LINHLG"}))
    Tcs.add_member(:st2065_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ST2065_1", traits: {"smithy.api#enumValue" => "ST2065-1"}))
    Tcs.add_member(:st428_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ST428_1", traits: {"smithy.api#enumValue" => "ST428-1"}))
    Tcs.add_member(:density, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENSITY", traits: {"smithy.api#enumValue" => "DENSITY"}))
    ThumbnailDetails.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    ThumbnailDetails.add_member(:thumbnail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Thumbnail", traits: {"smithy.api#jsonName" => "thumbnail"}))
    ThumbnailDetails.add_member(:thumbnail_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, location_name: "ThumbnailMessages", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "thumbnailMessages", "smithy.api#required" => {}}))
    ThumbnailDetails.add_member(:timecode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Timecode", traits: {"smithy.api#jsonName" => "timecode"}))
    ThumbnailDetails.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "Timestamp", traits: {"smithy.api#jsonName" => "timestamp", "smithy.api#timestampFormat" => "date-time"}))
    ThumbnailDetails.type = Types::ThumbnailDetails
    ThumbnailState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ThumbnailState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Transport.add_member(:cidr_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "CidrAllowList", traits: {"smithy.api#jsonName" => "cidrAllowList"}))
    Transport.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    Transport.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    Transport.add_member(:max_sync_buffer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxSyncBuffer", traits: {"smithy.api#jsonName" => "maxSyncBuffer"}))
    Transport.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    Transport.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    Transport.add_member(:remote_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RemoteId", traits: {"smithy.api#jsonName" => "remoteId"}))
    Transport.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    Transport.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    Transport.add_member(:smoothing_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SmoothingLatency", traits: {"smithy.api#jsonName" => "smoothingLatency"}))
    Transport.add_member(:source_listener_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceListenerAddress", traits: {"smithy.api#jsonName" => "sourceListenerAddress"}))
    Transport.add_member(:source_listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SourceListenerPort", traits: {"smithy.api#jsonName" => "sourceListenerPort"}))
    Transport.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    Transport.add_member(:ndi_speed_hq_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "NdiSpeedHqQuality", traits: {"smithy.api#jsonName" => "ndiSpeedHqQuality"}))
    Transport.add_member(:ndi_program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NdiProgramName", traits: {"smithy.api#jsonName" => "ndiProgramName"}))
    Transport.type = Types::Transport
    TransportMediaInfo.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftransportstreamprogram, location_name: "Programs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "programs", "smithy.api#required" => {}}))
    TransportMediaInfo.type = Types::TransportMediaInfo
    TransportStream.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Channels", traits: {"smithy.api#jsonName" => "channels"}))
    TransportStream.add_member(:codec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Codec", traits: {"smithy.api#jsonName" => "codec"}))
    TransportStream.add_member(:frame_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FrameRate", traits: {"smithy.api#jsonName" => "frameRate"}))
    TransportStream.add_member(:frame_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameResolution, location_name: "FrameResolution", traits: {"smithy.api#jsonName" => "frameResolution"}))
    TransportStream.add_member(:pid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Pid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "pid", "smithy.api#required" => {}}))
    TransportStream.add_member(:sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SampleRate", traits: {"smithy.api#jsonName" => "sampleRate"}))
    TransportStream.add_member(:sample_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SampleSize", traits: {"smithy.api#jsonName" => "sampleSize"}))
    TransportStream.add_member(:stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StreamType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "streamType", "smithy.api#required" => {}}))
    TransportStream.type = Types::TransportStream
    TransportStreamProgram.add_member(:pcr_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "PcrPid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "pcrPid", "smithy.api#required" => {}}))
    TransportStreamProgram.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ProgramName", traits: {"smithy.api#jsonName" => "programName"}))
    TransportStreamProgram.add_member(:program_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ProgramNumber", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "programNumber", "smithy.api#required" => {}}))
    TransportStreamProgram.add_member(:program_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ProgramPid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "programPid", "smithy.api#required" => {}}))
    TransportStreamProgram.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftransportstream, location_name: "Streams", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "streams", "smithy.api#required" => {}}))
    TransportStreamProgram.type = Types::TransportStreamProgram
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateBridgeFlowSourceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$"}))
    UpdateBridgeFlowSourceRequest.add_member(:flow_vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "FlowVpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "flowVpcInterfaceAttachment"}))
    UpdateBridgeFlowSourceRequest.type = Types::UpdateBridgeFlowSourceRequest
    UpdateBridgeNetworkOutputRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "IpAddress", traits: {"smithy.api#jsonName" => "ipAddress"}))
    UpdateBridgeNetworkOutputRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NetworkName", traits: {"smithy.api#jsonName" => "networkName"}))
    UpdateBridgeNetworkOutputRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    UpdateBridgeNetworkOutputRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    UpdateBridgeNetworkOutputRequest.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Ttl", traits: {"smithy.api#jsonName" => "ttl"}))
    UpdateBridgeNetworkOutputRequest.type = Types::UpdateBridgeNetworkOutputRequest
    UpdateBridgeNetworkSourceRequest.add_member(:multicast_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MulticastIp", traits: {"smithy.api#jsonName" => "multicastIp"}))
    UpdateBridgeNetworkSourceRequest.add_member(:multicast_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastSourceSettings, location_name: "MulticastSourceSettings", traits: {"smithy.api#jsonName" => "multicastSourceSettings"}))
    UpdateBridgeNetworkSourceRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NetworkName", traits: {"smithy.api#jsonName" => "networkName"}))
    UpdateBridgeNetworkSourceRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    UpdateBridgeNetworkSourceRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    UpdateBridgeNetworkSourceRequest.type = Types::UpdateBridgeNetworkSourceRequest
    UpdateBridgeOutputRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    UpdateBridgeOutputRequest.add_member(:network_output, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateBridgeNetworkOutputRequest, location_name: "NetworkOutput", traits: {"smithy.api#jsonName" => "networkOutput"}))
    UpdateBridgeOutputRequest.add_member(:output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutputName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBridgeOutputRequest.type = Types::UpdateBridgeOutputRequest
    UpdateBridgeOutputResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    UpdateBridgeOutputResponse.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeOutput, location_name: "Output", traits: {"smithy.api#jsonName" => "output"}))
    UpdateBridgeOutputResponse.type = Types::UpdateBridgeOutputResponse
    UpdateBridgeRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    UpdateBridgeRequest.add_member(:egress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateEgressGatewayBridgeRequest, location_name: "EgressGatewayBridge", traits: {"smithy.api#jsonName" => "egressGatewayBridge"}))
    UpdateBridgeRequest.add_member(:ingress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateIngressGatewayBridgeRequest, location_name: "IngressGatewayBridge", traits: {"smithy.api#jsonName" => "ingressGatewayBridge"}))
    UpdateBridgeRequest.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFailoverConfig, location_name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    UpdateBridgeRequest.type = Types::UpdateBridgeRequest
    UpdateBridgeResponse.add_member(:bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: Bridge, location_name: "Bridge", traits: {"smithy.api#jsonName" => "bridge"}))
    UpdateBridgeResponse.type = Types::UpdateBridgeResponse
    UpdateBridgeSourceRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    UpdateBridgeSourceRequest.add_member(:flow_source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateBridgeFlowSourceRequest, location_name: "FlowSource", traits: {"smithy.api#jsonName" => "flowSource"}))
    UpdateBridgeSourceRequest.add_member(:network_source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateBridgeNetworkSourceRequest, location_name: "NetworkSource", traits: {"smithy.api#jsonName" => "networkSource"}))
    UpdateBridgeSourceRequest.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBridgeSourceRequest.type = Types::UpdateBridgeSourceRequest
    UpdateBridgeSourceResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    UpdateBridgeSourceResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeSource, location_name: "Source", traits: {"smithy.api#jsonName" => "source"}))
    UpdateBridgeSourceResponse.type = Types::UpdateBridgeSourceResponse
    UpdateBridgeStateRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, location_name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    UpdateBridgeStateRequest.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredState, location_name: "DesiredState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "desiredState", "smithy.api#required" => {}}))
    UpdateBridgeStateRequest.type = Types::UpdateBridgeStateRequest
    UpdateBridgeStateResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    UpdateBridgeStateResponse.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredState, location_name: "DesiredState", traits: {"smithy.api#jsonName" => "desiredState"}))
    UpdateBridgeStateResponse.type = Types::UpdateBridgeStateResponse
    UpdateEgressGatewayBridgeRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    UpdateEgressGatewayBridgeRequest.type = Types::UpdateEgressGatewayBridgeRequest
    UpdateEncryption.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: Algorithm, location_name: "Algorithm", traits: {"smithy.api#jsonName" => "algorithm"}))
    UpdateEncryption.add_member(:constant_initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ConstantInitializationVector", traits: {"smithy.api#jsonName" => "constantInitializationVector"}))
    UpdateEncryption.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "DeviceId", traits: {"smithy.api#jsonName" => "deviceId"}))
    UpdateEncryption.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, location_name: "KeyType", traits: {"smithy.api#jsonName" => "keyType"}))
    UpdateEncryption.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Region", traits: {"smithy.api#jsonName" => "region"}))
    UpdateEncryption.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    UpdateEncryption.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RoleArn", traits: {"smithy.api#jsonName" => "roleArn"}))
    UpdateEncryption.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SecretArn", traits: {"smithy.api#jsonName" => "secretArn"}))
    UpdateEncryption.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Url", traits: {"smithy.api#jsonName" => "url"}))
    UpdateEncryption.type = Types::UpdateEncryption
    UpdateFailoverConfig.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, location_name: "FailoverMode", traits: {"smithy.api#jsonName" => "failoverMode"}))
    UpdateFailoverConfig.add_member(:recovery_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "RecoveryWindow", traits: {"smithy.api#jsonName" => "recoveryWindow"}))
    UpdateFailoverConfig.add_member(:source_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: SourcePriority, location_name: "SourcePriority", traits: {"smithy.api#jsonName" => "sourcePriority"}))
    UpdateFailoverConfig.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, location_name: "State", traits: {"smithy.api#jsonName" => "state"}))
    UpdateFailoverConfig.type = Types::UpdateFailoverConfig
    UpdateFlowEntitlementRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFlowEntitlementRequest.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateEncryption, location_name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    UpdateFlowEntitlementRequest.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:entitlement:.+$", "smithy.api#required" => {}}))
    UpdateFlowEntitlementRequest.add_member(:entitlement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementStatus, location_name: "EntitlementStatus", traits: {"smithy.api#jsonName" => "entitlementStatus"}))
    UpdateFlowEntitlementRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowEntitlementRequest.add_member(:subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "Subscribers", traits: {"smithy.api#jsonName" => "subscribers"}))
    UpdateFlowEntitlementRequest.type = Types::UpdateFlowEntitlementRequest
    UpdateFlowEntitlementResponse.add_member(:entitlement, ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, location_name: "Entitlement", traits: {"smithy.api#jsonName" => "entitlement"}))
    UpdateFlowEntitlementResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    UpdateFlowEntitlementResponse.type = Types::UpdateFlowEntitlementResponse
    UpdateFlowMediaStreamRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamAttributesRequest, location_name: "Attributes", traits: {"smithy.api#jsonName" => "attributes"}))
    UpdateFlowMediaStreamRequest.add_member(:clock_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ClockRate", traits: {"smithy.api#jsonName" => "clockRate"}))
    UpdateFlowMediaStreamRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFlowMediaStreamRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowMediaStreamRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MediaStreamName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFlowMediaStreamRequest.add_member(:media_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamType, location_name: "MediaStreamType", traits: {"smithy.api#jsonName" => "mediaStreamType"}))
    UpdateFlowMediaStreamRequest.add_member(:video_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VideoFormat", traits: {"smithy.api#jsonName" => "videoFormat"}))
    UpdateFlowMediaStreamRequest.type = Types::UpdateFlowMediaStreamRequest
    UpdateFlowMediaStreamResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    UpdateFlowMediaStreamResponse.add_member(:media_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStream, location_name: "MediaStream", traits: {"smithy.api#jsonName" => "mediaStream"}))
    UpdateFlowMediaStreamResponse.type = Types::UpdateFlowMediaStreamResponse
    UpdateFlowOutputRequest.add_member(:cidr_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "CidrAllowList", traits: {"smithy.api#jsonName" => "cidrAllowList"}))
    UpdateFlowOutputRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFlowOutputRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Destination", traits: {"smithy.api#jsonName" => "destination"}))
    UpdateFlowOutputRequest.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateEncryption, location_name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    UpdateFlowOutputRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowOutputRequest.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    UpdateFlowOutputRequest.add_member(:media_stream_output_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamoutputconfigurationrequest, location_name: "MediaStreamOutputConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamOutputConfigurations"}))
    UpdateFlowOutputRequest.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    UpdateFlowOutputRequest.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "OutputArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:output:.+$", "smithy.api#required" => {}}))
    UpdateFlowOutputRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    UpdateFlowOutputRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    UpdateFlowOutputRequest.add_member(:remote_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RemoteId", traits: {"smithy.api#jsonName" => "remoteId"}))
    UpdateFlowOutputRequest.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    UpdateFlowOutputRequest.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    UpdateFlowOutputRequest.add_member(:smoothing_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SmoothingLatency", traits: {"smithy.api#jsonName" => "smoothingLatency"}))
    UpdateFlowOutputRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    UpdateFlowOutputRequest.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    UpdateFlowOutputRequest.add_member(:output_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, location_name: "OutputStatus", traits: {"smithy.api#jsonName" => "outputStatus"}))
    UpdateFlowOutputRequest.add_member(:ndi_program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "NdiProgramName", traits: {"smithy.api#jsonName" => "ndiProgramName"}))
    UpdateFlowOutputRequest.add_member(:ndi_speed_hq_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "NdiSpeedHqQuality", traits: {"smithy.api#jsonName" => "ndiSpeedHqQuality"}))
    UpdateFlowOutputRequest.type = Types::UpdateFlowOutputRequest
    UpdateFlowOutputResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    UpdateFlowOutputResponse.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: Output, location_name: "Output", traits: {"smithy.api#jsonName" => "output"}))
    UpdateFlowOutputResponse.type = Types::UpdateFlowOutputResponse
    UpdateFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFailoverConfig, location_name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    UpdateFlowRequest.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateMaintenance, location_name: "Maintenance", traits: {"smithy.api#jsonName" => "maintenance"}))
    UpdateFlowRequest.add_member(:source_monitoring_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfig, location_name: "SourceMonitoringConfig", traits: {"smithy.api#jsonName" => "sourceMonitoringConfig"}))
    UpdateFlowRequest.add_member(:ndi_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiConfig, location_name: "NdiConfig", traits: {"smithy.api#jsonName" => "ndiConfig"}))
    UpdateFlowRequest.type = Types::UpdateFlowRequest
    UpdateFlowResponse.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: Flow, location_name: "Flow", traits: {"smithy.api#jsonName" => "flow"}))
    UpdateFlowResponse.type = Types::UpdateFlowResponse
    UpdateFlowSourceRequest.add_member(:decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateEncryption, location_name: "Decryption", traits: {"smithy.api#jsonName" => "decryption"}))
    UpdateFlowSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFlowSourceRequest.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:entitlement:.+$"}))
    UpdateFlowSourceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, location_name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowSourceRequest.add_member(:ingest_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "IngestPort", traits: {"smithy.api#jsonName" => "ingestPort"}))
    UpdateFlowSourceRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    UpdateFlowSourceRequest.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    UpdateFlowSourceRequest.add_member(:max_sync_buffer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxSyncBuffer", traits: {"smithy.api#jsonName" => "maxSyncBuffer"}))
    UpdateFlowSourceRequest.add_member(:media_stream_source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamsourceconfigurationrequest, location_name: "MediaStreamSourceConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamSourceConfigurations"}))
    UpdateFlowSourceRequest.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    UpdateFlowSourceRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, location_name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    UpdateFlowSourceRequest.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    UpdateFlowSourceRequest.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    UpdateFlowSourceRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:source:.+$", "smithy.api#required" => {}}))
    UpdateFlowSourceRequest.add_member(:source_listener_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SourceListenerAddress", traits: {"smithy.api#jsonName" => "sourceListenerAddress"}))
    UpdateFlowSourceRequest.add_member(:source_listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "SourceListenerPort", traits: {"smithy.api#jsonName" => "sourceListenerPort"}))
    UpdateFlowSourceRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    UpdateFlowSourceRequest.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    UpdateFlowSourceRequest.add_member(:whitelist_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "WhitelistCidr", traits: {"smithy.api#jsonName" => "whitelistCidr"}))
    UpdateFlowSourceRequest.add_member(:gateway_bridge_source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateGatewayBridgeSourceRequest, location_name: "GatewayBridgeSource", traits: {"smithy.api#jsonName" => "gatewayBridgeSource"}))
    UpdateFlowSourceRequest.type = Types::UpdateFlowSourceRequest
    UpdateFlowSourceResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    UpdateFlowSourceResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "Source", traits: {"smithy.api#jsonName" => "source"}))
    UpdateFlowSourceResponse.type = Types::UpdateFlowSourceResponse
    UpdateGatewayBridgeSourceRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$"}))
    UpdateGatewayBridgeSourceRequest.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, location_name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    UpdateGatewayBridgeSourceRequest.type = Types::UpdateGatewayBridgeSourceRequest
    UpdateGatewayInstanceRequest.add_member(:bridge_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgePlacement, location_name: "BridgePlacement", traits: {"smithy.api#jsonName" => "bridgePlacement"}))
    UpdateGatewayInstanceRequest.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInstanceArn, location_name: "GatewayInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+:instance:.+$", "smithy.api#required" => {}}))
    UpdateGatewayInstanceRequest.type = Types::UpdateGatewayInstanceRequest
    UpdateGatewayInstanceResponse.add_member(:bridge_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgePlacement, location_name: "BridgePlacement", traits: {"smithy.api#jsonName" => "bridgePlacement"}))
    UpdateGatewayInstanceResponse.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "GatewayInstanceArn", traits: {"smithy.api#jsonName" => "gatewayInstanceArn"}))
    UpdateGatewayInstanceResponse.type = Types::UpdateGatewayInstanceResponse
    UpdateIngressGatewayBridgeRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    UpdateIngressGatewayBridgeRequest.add_member(:max_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "MaxOutputs", traits: {"smithy.api#jsonName" => "maxOutputs"}))
    UpdateIngressGatewayBridgeRequest.type = Types::UpdateIngressGatewayBridgeRequest
    UpdateMaintenance.add_member(:maintenance_day, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceDay, location_name: "MaintenanceDay", traits: {"smithy.api#jsonName" => "maintenanceDay"}))
    UpdateMaintenance.add_member(:maintenance_scheduled_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MaintenanceScheduledDate", traits: {"smithy.api#jsonName" => "maintenanceScheduledDate"}))
    UpdateMaintenance.add_member(:maintenance_start_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "MaintenanceStartHour", traits: {"smithy.api#jsonName" => "maintenanceStartHour"}))
    UpdateMaintenance.type = Types::UpdateMaintenance
    VideoMonitoringSetting.add_member(:black_frames, ::Smithy::Schema::Shapes::MemberShape.new(target: BlackFrames, location_name: "BlackFrames", traits: {"smithy.api#jsonName" => "blackFrames"}))
    VideoMonitoringSetting.add_member(:frozen_frames, ::Smithy::Schema::Shapes::MemberShape.new(target: FrozenFrames, location_name: "FrozenFrames", traits: {"smithy.api#jsonName" => "frozenFrames"}))
    VideoMonitoringSetting.type = Types::VideoMonitoringSetting
    VpcInterface.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    VpcInterface.add_member(:network_interface_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "NetworkInterfaceIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkInterfaceIds", "smithy.api#required" => {}}))
    VpcInterface.add_member(:network_interface_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceType, location_name: "NetworkInterfaceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkInterfaceType", "smithy.api#required" => {}}))
    VpcInterface.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    VpcInterface.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "SecurityGroupIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "securityGroupIds", "smithy.api#required" => {}}))
    VpcInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SubnetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subnetId", "smithy.api#required" => {}}))
    VpcInterface.type = Types::VpcInterface
    VpcInterfaceAttachment.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    VpcInterfaceAttachment.type = Types::VpcInterfaceAttachment
    VpcInterfaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    VpcInterfaceRequest.add_member(:network_interface_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceType, location_name: "NetworkInterfaceType", traits: {"smithy.api#jsonName" => "networkInterfaceType"}))
    VpcInterfaceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    VpcInterfaceRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, location_name: "SecurityGroupIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "securityGroupIds", "smithy.api#required" => {}}))
    VpcInterfaceRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "SubnetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subnetId", "smithy.api#required" => {}}))
    VpcInterfaceRequest.type = Types::VpcInterfaceRequest
    Listofaddbridgeoutputrequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeOutputRequest)
    Listofaddbridgesourcerequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeSourceRequest)
    Listofaddmediastreamrequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddMediaStreamRequest)
    Listofaddoutputrequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AddOutputRequest)
    Listofaudiomonitoringsetting.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AudioMonitoringSetting)
    Listofbridgeoutput.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeOutput)
    Listofbridgesource.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeSource)
    Listofdestinationconfiguration.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration)
    Listofdestinationconfigurationrequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfigurationRequest)
    Listofentitlement.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement)
    Listofgatewaynetwork.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayNetwork)
    Listofgrantentitlementrequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GrantEntitlementRequest)
    Listofinputconfiguration.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InputConfiguration)
    Listofinputconfigurationrequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InputConfigurationRequest)
    Listofinteger.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer)
    Listoflistedbridge.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListedBridge)
    Listoflistedentitlement.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListedEntitlement)
    Listoflistedflow.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListedFlow)
    Listoflistedgateway.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListedGateway)
    Listoflistedgatewayinstance.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListedGatewayInstance)
    Listofmediastream.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStream)
    Listofmediastreamoutputconfiguration.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamOutputConfiguration)
    Listofmediastreamoutputconfigurationrequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamOutputConfigurationRequest)
    Listofmediastreamsourceconfiguration.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSourceConfiguration)
    Listofmediastreamsourceconfigurationrequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSourceConfigurationRequest)
    Listofmessagedetail.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDetail)
    Listofndidiscoveryserverconfig.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NdiDiscoveryServerConfig)
    Listofoffering.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Offering)
    Listofoutput.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Output)
    Listofreservation.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation)
    Listofsetsourcerequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SetSourceRequest)
    Listofsource.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Source)
    Listofstring.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    Listoftransportstream.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TransportStream)
    Listoftransportstreamprogram.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TransportStreamProgram)
    Listofvideomonitoringsetting.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VideoMonitoringSetting)
    Listofvpcinterface.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterface)
    Listofvpcinterfacerequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceRequest)
    Mapofstring.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    Mapofstring.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)

    MediaConnect = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediaconnect#MediaConnect"
      service.name = "MediaConnect"
      service.version = "2018-11-14"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaConnect", "arnNamespace" => "mediaconnect"}, "aws.auth#sigv4" => {"name" => "mediaconnect"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"maxAge" => 86400}, "smithy.api#title" => "AWS MediaConnect"}
      service.add_operation(:add_bridge_outputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#AddBridgeOutputs"
        operation.name = "AddBridgeOutputs"
        operation.input = AddBridgeOutputsRequest
        operation.output = AddBridgeOutputsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/bridges/{BridgeArn}/outputs", "code" => 202}}
      end)
      service.add_operation(:add_bridge_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#AddBridgeSources"
        operation.name = "AddBridgeSources"
        operation.input = AddBridgeSourcesRequest
        operation.output = AddBridgeSourcesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/bridges/{BridgeArn}/sources", "code" => 202}}
      end)
      service.add_operation(:add_flow_media_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#AddFlowMediaStreams"
        operation.name = "AddFlowMediaStreams"
        operation.input = AddFlowMediaStreamsRequest
        operation.output = AddFlowMediaStreamsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/mediaStreams", "code" => 201}}
      end)
      service.add_operation(:add_flow_outputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#AddFlowOutputs"
        operation.name = "AddFlowOutputs"
        operation.input = AddFlowOutputsRequest
        operation.output = AddFlowOutputsResponse
        operation.errors << AddFlowOutputs420Exception
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/outputs", "code" => 201}}
      end)
      service.add_operation(:add_flow_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#AddFlowSources"
        operation.name = "AddFlowSources"
        operation.input = AddFlowSourcesRequest
        operation.output = AddFlowSourcesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/source", "code" => 201}}
      end)
      service.add_operation(:add_flow_vpc_interfaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#AddFlowVpcInterfaces"
        operation.name = "AddFlowVpcInterfaces"
        operation.input = AddFlowVpcInterfacesRequest
        operation.output = AddFlowVpcInterfacesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/vpcInterfaces", "code" => 201}}
      end)
      service.add_operation(:create_bridge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#CreateBridge"
        operation.name = "CreateBridge"
        operation.input = CreateBridgeRequest
        operation.output = CreateBridgeResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << CreateBridge420Exception
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/bridges", "code" => 201}}
      end)
      service.add_operation(:create_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#CreateFlow"
        operation.name = "CreateFlow"
        operation.input = CreateFlowRequest
        operation.output = CreateFlowResponse
        operation.errors << BadRequestException
        operation.errors << CreateFlow420Exception
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows", "code" => 201}}
      end)
      service.add_operation(:create_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#CreateGateway"
        operation.name = "CreateGateway"
        operation.input = CreateGatewayRequest
        operation.output = CreateGatewayResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << CreateGateway420Exception
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/gateways", "code" => 201}}
      end)
      service.add_operation(:delete_bridge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DeleteBridge"
        operation.name = "DeleteBridge"
        operation.input = DeleteBridgeRequest
        operation.output = DeleteBridgeResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/bridges/{BridgeArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DeleteFlow"
        operation.name = "DeleteFlow"
        operation.input = DeleteFlowRequest
        operation.output = DeleteFlowResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = DeleteGatewayRequest
        operation.output = DeleteGatewayResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/gateways/{GatewayArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_gateway_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DeregisterGatewayInstance"
        operation.name = "DeregisterGatewayInstance"
        operation.input = DeregisterGatewayInstanceRequest
        operation.output = DeregisterGatewayInstanceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/gateway-instances/{GatewayInstanceArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_bridge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DescribeBridge"
        operation.name = "DescribeBridge"
        operation.input = DescribeBridgeRequest
        operation.output = DescribeBridgeResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/bridges/{BridgeArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DescribeFlow"
        operation.name = "DescribeFlow"
        operation.input = DescribeFlowRequest
        operation.output = DescribeFlowResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/flows/{FlowArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_flow_source_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DescribeFlowSourceMetadata"
        operation.name = "DescribeFlowSourceMetadata"
        operation.input = DescribeFlowSourceMetadataRequest
        operation.output = DescribeFlowSourceMetadataResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/flows/{FlowArn}/source-metadata", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_flow_source_thumbnail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DescribeFlowSourceThumbnail"
        operation.name = "DescribeFlowSourceThumbnail"
        operation.input = DescribeFlowSourceThumbnailRequest
        operation.output = DescribeFlowSourceThumbnailResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/flows/{FlowArn}/source-thumbnail", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DescribeGateway"
        operation.name = "DescribeGateway"
        operation.input = DescribeGatewayRequest
        operation.output = DescribeGatewayResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/gateways/{GatewayArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_gateway_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DescribeGatewayInstance"
        operation.name = "DescribeGatewayInstance"
        operation.input = DescribeGatewayInstanceRequest
        operation.output = DescribeGatewayInstanceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/gateway-instances/{GatewayInstanceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DescribeOffering"
        operation.name = "DescribeOffering"
        operation.input = DescribeOfferingRequest
        operation.output = DescribeOfferingResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/offerings/{OfferingArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_reservation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DescribeReservation"
        operation.name = "DescribeReservation"
        operation.input = DescribeReservationRequest
        operation.output = DescribeReservationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/reservations/{ReservationArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:grant_flow_entitlements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#GrantFlowEntitlements"
        operation.name = "GrantFlowEntitlements"
        operation.input = GrantFlowEntitlementsRequest
        operation.output = GrantFlowEntitlementsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << GrantFlowEntitlements420Exception
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/entitlements", "code" => 200}}
      end)
      service.add_operation(:list_bridges, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListBridges"
        operation.name = "ListBridges"
        operation.input = ListBridgesRequest
        operation.output = ListBridgesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/bridges", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBridges.new
      end)
      service.add_operation(:list_entitlements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListEntitlements"
        operation.name = "ListEntitlements"
        operation.input = ListEntitlementsRequest
        operation.output = ListEntitlementsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/entitlements", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEntitlements.new
      end)
      service.add_operation(:list_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListFlows"
        operation.name = "ListFlows"
        operation.input = ListFlowsRequest
        operation.output = ListFlowsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/flows", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFlows.new
      end)
      service.add_operation(:list_gateway_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListGatewayInstances"
        operation.name = "ListGatewayInstances"
        operation.input = ListGatewayInstancesRequest
        operation.output = ListGatewayInstancesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/gateway-instances", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGatewayInstances.new
      end)
      service.add_operation(:list_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListGateways"
        operation.name = "ListGateways"
        operation.input = ListGatewaysRequest
        operation.output = ListGatewaysResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/gateways", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListOfferings"
        operation.name = "ListOfferings"
        operation.input = ListOfferingsRequest
        operation.output = ListOfferingsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/offerings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOfferings.new
      end)
      service.add_operation(:list_reservations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListReservations"
        operation.name = "ListReservations"
        operation.input = ListReservationsRequest
        operation.output = ListReservationsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/reservations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReservations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:purchase_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#PurchaseOffering"
        operation.name = "PurchaseOffering"
        operation.input = PurchaseOfferingRequest
        operation.output = PurchaseOfferingResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/offerings/{OfferingArn}", "code" => 201}}
      end)
      service.add_operation(:remove_bridge_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RemoveBridgeOutput"
        operation.name = "RemoveBridgeOutput"
        operation.input = RemoveBridgeOutputRequest
        operation.output = RemoveBridgeOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/bridges/{BridgeArn}/outputs/{OutputName}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_bridge_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RemoveBridgeSource"
        operation.name = "RemoveBridgeSource"
        operation.input = RemoveBridgeSourceRequest
        operation.output = RemoveBridgeSourceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/bridges/{BridgeArn}/sources/{SourceName}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_flow_media_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RemoveFlowMediaStream"
        operation.name = "RemoveFlowMediaStream"
        operation.input = RemoveFlowMediaStreamRequest
        operation.output = RemoveFlowMediaStreamResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_flow_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RemoveFlowOutput"
        operation.name = "RemoveFlowOutput"
        operation.input = RemoveFlowOutputRequest
        operation.output = RemoveFlowOutputResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/outputs/{OutputArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_flow_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RemoveFlowSource"
        operation.name = "RemoveFlowSource"
        operation.input = RemoveFlowSourceRequest
        operation.output = RemoveFlowSourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/source/{SourceArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_flow_vpc_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RemoveFlowVpcInterface"
        operation.name = "RemoveFlowVpcInterface"
        operation.input = RemoveFlowVpcInterfaceRequest
        operation.output = RemoveFlowVpcInterfaceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/vpcInterfaces/{VpcInterfaceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:revoke_flow_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RevokeFlowEntitlement"
        operation.name = "RevokeFlowEntitlement"
        operation.input = RevokeFlowEntitlementRequest
        operation.output = RevokeFlowEntitlementResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#StartFlow"
        operation.name = "StartFlow"
        operation.input = StartFlowRequest
        operation.output = StartFlowResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/start/{FlowArn}", "code" => 202}}
      end)
      service.add_operation(:stop_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#StopFlow"
        operation.name = "StopFlow"
        operation.input = StopFlowRequest
        operation.output = StopFlowResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/stop/{FlowArn}", "code" => 202}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_bridge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateBridge"
        operation.name = "UpdateBridge"
        operation.input = UpdateBridgeRequest
        operation.output = UpdateBridgeResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/bridges/{BridgeArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_bridge_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateBridgeOutput"
        operation.name = "UpdateBridgeOutput"
        operation.input = UpdateBridgeOutputRequest
        operation.output = UpdateBridgeOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/bridges/{BridgeArn}/outputs/{OutputName}", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#suppress" => ["OperationNameAmbiguity"]}
      end)
      service.add_operation(:update_bridge_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateBridgeSource"
        operation.name = "UpdateBridgeSource"
        operation.input = UpdateBridgeSourceRequest
        operation.output = UpdateBridgeSourceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/bridges/{BridgeArn}/sources/{SourceName}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_bridge_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateBridgeState"
        operation.name = "UpdateBridgeState"
        operation.input = UpdateBridgeStateRequest
        operation.output = UpdateBridgeStateResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/bridges/{BridgeArn}/state", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateFlow"
        operation.name = "UpdateFlow"
        operation.input = UpdateFlowRequest
        operation.output = UpdateFlowResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_flow_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateFlowEntitlement"
        operation.name = "UpdateFlowEntitlement"
        operation.input = UpdateFlowEntitlementRequest
        operation.output = UpdateFlowEntitlementResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_flow_media_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateFlowMediaStream"
        operation.name = "UpdateFlowMediaStream"
        operation.input = UpdateFlowMediaStreamRequest
        operation.output = UpdateFlowMediaStreamResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_flow_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateFlowOutput"
        operation.name = "UpdateFlowOutput"
        operation.input = UpdateFlowOutputRequest
        operation.output = UpdateFlowOutputResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}/outputs/{OutputArn}", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#suppress" => ["OperationNameAmbiguity"]}
      end)
      service.add_operation(:update_flow_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateFlowSource"
        operation.name = "UpdateFlowSource"
        operation.input = UpdateFlowSourceRequest
        operation.output = UpdateFlowSourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}/source/{SourceArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_gateway_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateGatewayInstance"
        operation.name = "UpdateGatewayInstance"
        operation.input = UpdateGatewayInstanceRequest
        operation.output = UpdateGatewayInstanceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/gateway-instances/{GatewayInstanceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
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
