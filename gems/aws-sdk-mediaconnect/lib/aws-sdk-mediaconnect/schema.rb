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
    AutomaticEncryptionKeyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#AutomaticEncryptionKeyConfiguration", name: "AutomaticEncryptionKeyConfiguration")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchGetRouterInputError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterInputError", name: "BatchGetRouterInputError", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediaconnect#RouterInputResource"}]})
    BatchGetRouterInputErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterInputErrorList", name: "BatchGetRouterInputErrorList")
    BatchGetRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterInputRequest", name: "BatchGetRouterInputRequest")
    BatchGetRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterInputResponse", name: "BatchGetRouterInputResponse")
    BatchGetRouterNetworkInterfaceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterNetworkInterfaceError", name: "BatchGetRouterNetworkInterfaceError", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediaconnect#RouterNetworkInterfaceResource"}]})
    BatchGetRouterNetworkInterfaceErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterNetworkInterfaceErrorList", name: "BatchGetRouterNetworkInterfaceErrorList")
    BatchGetRouterNetworkInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterNetworkInterfaceRequest", name: "BatchGetRouterNetworkInterfaceRequest")
    BatchGetRouterNetworkInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterNetworkInterfaceResponse", name: "BatchGetRouterNetworkInterfaceResponse")
    BatchGetRouterOutputError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterOutputError", name: "BatchGetRouterOutputError", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediaconnect#RouterOutputResource"}]})
    BatchGetRouterOutputErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterOutputErrorList", name: "BatchGetRouterOutputErrorList")
    BatchGetRouterOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterOutputRequest", name: "BatchGetRouterOutputRequest")
    BatchGetRouterOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BatchGetRouterOutputResponse", name: "BatchGetRouterOutputResponse")
    BlackFrames = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BlackFrames", name: "BlackFrames")
    BlackFramesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#BlackFramesConfiguration", name: "BlackFramesConfiguration")
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
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^[!-~]+$"})
    ColorInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ColorInformation", name: "ColorInformation")
    Colorimetry = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Colorimetry", name: "Colorimetry")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#retryable" => {}})
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ConnectionStatus", name: "ConnectionStatus")
    ContentQualityAnalysisFeatureConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ContentQualityAnalysisFeatureConfiguration", name: "ContentQualityAnalysisFeatureConfiguration")
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
    CreateRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateRouterInputRequest", name: "CreateRouterInputRequest")
    CreateRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateRouterInputResponse", name: "CreateRouterInputResponse", traits: {"smithy.api#private" => {}})
    CreateRouterNetworkInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateRouterNetworkInterfaceRequest", name: "CreateRouterNetworkInterfaceRequest")
    CreateRouterNetworkInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateRouterNetworkInterfaceResponse", name: "CreateRouterNetworkInterfaceResponse", traits: {"smithy.api#private" => {}})
    CreateRouterOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateRouterOutputRequest", name: "CreateRouterOutputRequest")
    CreateRouterOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#CreateRouterOutputResponse", name: "CreateRouterOutputResponse", traits: {"smithy.api#private" => {}})
    Day = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Day", name: "Day")
    DefaultMaintenanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DefaultMaintenanceConfiguration", name: "DefaultMaintenanceConfiguration")
    DeleteBridgeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteBridgeRequest", name: "DeleteBridgeRequest")
    DeleteBridgeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteBridgeResponse", name: "DeleteBridgeResponse")
    DeleteFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteFlowRequest", name: "DeleteFlowRequest")
    DeleteFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteFlowResponse", name: "DeleteFlowResponse")
    DeleteGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteGatewayRequest", name: "DeleteGatewayRequest")
    DeleteGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteGatewayResponse", name: "DeleteGatewayResponse")
    DeleteRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteRouterInputRequest", name: "DeleteRouterInputRequest", traits: {"smithy.api#private" => {}})
    DeleteRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteRouterInputResponse", name: "DeleteRouterInputResponse", traits: {"smithy.api#private" => {}})
    DeleteRouterNetworkInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteRouterNetworkInterfaceRequest", name: "DeleteRouterNetworkInterfaceRequest", traits: {"smithy.api#private" => {}})
    DeleteRouterNetworkInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteRouterNetworkInterfaceResponse", name: "DeleteRouterNetworkInterfaceResponse", traits: {"smithy.api#private" => {}})
    DeleteRouterOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteRouterOutputRequest", name: "DeleteRouterOutputRequest", traits: {"smithy.api#private" => {}})
    DeleteRouterOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#DeleteRouterOutputResponse", name: "DeleteRouterOutputResponse", traits: {"smithy.api#private" => {}})
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
    EncodingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#EncodingConfig", name: "EncodingConfig")
    EncodingName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#EncodingName", name: "EncodingName")
    EncodingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#EncodingParameters", name: "EncodingParameters")
    EncodingParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#EncodingParametersRequest", name: "EncodingParametersRequest")
    EncodingProfile = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#EncodingProfile", name: "EncodingProfile")
    Encryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Encryption", name: "Encryption")
    Entitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Entitlement", name: "Entitlement")
    EntitlementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#EntitlementStatus", name: "EntitlementStatus")
    FabricConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FabricConfiguration", name: "FabricConfiguration")
    FabricLatencyMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#FabricLatencyMode", name: "FabricLatencyMode")
    FailoverConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FailoverConfig", name: "FailoverConfig")
    FailoverInputSourcePriorityMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#FailoverInputSourcePriorityMode", name: "FailoverInputSourcePriorityMode")
    FailoverMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#FailoverMode", name: "FailoverMode")
    FailoverRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FailoverRouterInputConfiguration", name: "FailoverRouterInputConfiguration")
    FailoverRouterInputIndexedStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FailoverRouterInputIndexedStreamDetails", name: "FailoverRouterInputIndexedStreamDetails", traits: {"smithy.api#private" => {}})
    FailoverRouterInputProtocolConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#FailoverRouterInputProtocolConfiguration", name: "FailoverRouterInputProtocolConfiguration")
    FailoverRouterInputProtocolConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#FailoverRouterInputProtocolConfigurationList", name: "FailoverRouterInputProtocolConfigurationList")
    FailoverRouterInputStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FailoverRouterInputStreamDetails", name: "FailoverRouterInputStreamDetails")
    Flow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Flow", name: "Flow")
    FlowArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#FlowArn", name: "FlowArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::Flow", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#FlowResource"}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:flow:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"})
    FlowOutputArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#FlowOutputArn", name: "FlowOutputArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:output:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"})
    FlowSize = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#FlowSize", name: "FlowSize")
    FlowSourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#FlowSourceArn", name: "FlowSourceArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:source:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"})
    FlowTransitEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FlowTransitEncryption", name: "FlowTransitEncryption")
    FlowTransitEncryptionKeyConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#FlowTransitEncryptionKeyConfiguration", name: "FlowTransitEncryptionKeyConfiguration")
    FlowTransitEncryptionKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#FlowTransitEncryptionKeyType", name: "FlowTransitEncryptionKeyType")
    Fmtp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Fmtp", name: "Fmtp")
    FmtpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FmtpRequest", name: "FmtpRequest")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ForwardErrorCorrectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ForwardErrorCorrectionState", name: "ForwardErrorCorrectionState")
    FrameResolution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FrameResolution", name: "FrameResolution")
    FrozenFrames = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FrozenFrames", name: "FrozenFrames")
    FrozenFramesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#FrozenFramesConfiguration", name: "FrozenFramesConfiguration")
    Gateway = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Gateway", name: "Gateway")
    GatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#GatewayArn", name: "GatewayArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::Gateway", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#GatewayResource"}})
    GatewayBridgeSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GatewayBridgeSource", name: "GatewayBridgeSource")
    GatewayInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GatewayInstance", name: "GatewayInstance")
    GatewayInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#GatewayInstanceArn", name: "GatewayInstanceArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::GatewayInstance", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#GatewayInstanceResource"}})
    GatewayNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GatewayNetwork", name: "GatewayNetwork")
    GatewayState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#GatewayState", name: "GatewayState")
    GetRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterInputRequest", name: "GetRouterInputRequest", traits: {"smithy.api#private" => {}})
    GetRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterInputResponse", name: "GetRouterInputResponse", traits: {"smithy.api#private" => {}})
    GetRouterInputSourceMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterInputSourceMetadataRequest", name: "GetRouterInputSourceMetadataRequest", traits: {"smithy.api#private" => {}})
    GetRouterInputSourceMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterInputSourceMetadataResponse", name: "GetRouterInputSourceMetadataResponse")
    GetRouterInputThumbnailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterInputThumbnailRequest", name: "GetRouterInputThumbnailRequest", traits: {"smithy.api#private" => {}})
    GetRouterInputThumbnailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterInputThumbnailResponse", name: "GetRouterInputThumbnailResponse")
    GetRouterNetworkInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterNetworkInterfaceRequest", name: "GetRouterNetworkInterfaceRequest", traits: {"smithy.api#private" => {}})
    GetRouterNetworkInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterNetworkInterfaceResponse", name: "GetRouterNetworkInterfaceResponse", traits: {"smithy.api#private" => {}})
    GetRouterOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterOutputRequest", name: "GetRouterOutputRequest", traits: {"smithy.api#private" => {}})
    GetRouterOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#GetRouterOutputResponse", name: "GetRouterOutputResponse", traits: {"smithy.api#private" => {}})
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
    ListRouterInputsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListRouterInputsRequest", name: "ListRouterInputsRequest")
    ListRouterInputsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListRouterInputsResponse", name: "ListRouterInputsResponse")
    ListRouterNetworkInterfacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListRouterNetworkInterfacesRequest", name: "ListRouterNetworkInterfacesRequest")
    ListRouterNetworkInterfacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListRouterNetworkInterfacesResponse", name: "ListRouterNetworkInterfacesResponse")
    ListRouterOutputsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListRouterOutputsRequest", name: "ListRouterOutputsRequest")
    ListRouterOutputsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListRouterOutputsResponse", name: "ListRouterOutputsResponse")
    ListTagsForGlobalResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListTagsForGlobalResourceRequest", name: "ListTagsForGlobalResourceRequest")
    ListTagsForGlobalResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListTagsForGlobalResourceResponse", name: "ListTagsForGlobalResourceResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListedBridge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedBridge", name: "ListedBridge")
    ListedEntitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedEntitlement", name: "ListedEntitlement")
    ListedFlow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedFlow", name: "ListedFlow")
    ListedGateway = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedGateway", name: "ListedGateway")
    ListedGatewayInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedGatewayInstance", name: "ListedGatewayInstance")
    ListedRouterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedRouterInput", name: "ListedRouterInput")
    ListedRouterInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#ListedRouterInputList", name: "ListedRouterInputList")
    ListedRouterNetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedRouterNetworkInterface", name: "ListedRouterNetworkInterface")
    ListedRouterNetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#ListedRouterNetworkInterfaceList", name: "ListedRouterNetworkInterfaceList")
    ListedRouterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ListedRouterOutput", name: "ListedRouterOutput")
    ListedRouterOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#ListedRouterOutputList", name: "ListedRouterOutputList")
    Maintenance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Maintenance", name: "Maintenance")
    MaintenanceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#MaintenanceConfiguration", name: "MaintenanceConfiguration")
    MaintenanceDay = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MaintenanceDay", name: "MaintenanceDay")
    MaintenanceSchedule = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#MaintenanceSchedule", name: "MaintenanceSchedule")
    MaintenanceScheduleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MaintenanceScheduleType", name: "MaintenanceScheduleType")
    MaintenanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MaintenanceType", name: "MaintenanceType")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediaconnect#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MediaConnectFlowRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaConnectFlowRouterInputConfiguration", name: "MediaConnectFlowRouterInputConfiguration", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediaconnect#FlowResource"}]})
    MediaConnectFlowRouterInputStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaConnectFlowRouterInputStreamDetails", name: "MediaConnectFlowRouterInputStreamDetails")
    MediaConnectFlowRouterOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaConnectFlowRouterOutputConfiguration", name: "MediaConnectFlowRouterOutputConfiguration", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediaconnect#FlowResource"}]})
    MediaConnectFlowRouterOutputStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaConnectFlowRouterOutputStreamDetails", name: "MediaConnectFlowRouterOutputStreamDetails")
    MediaLiveChannelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#MediaLiveChannelArn", name: "MediaLiveChannelArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):medialive:[a-z0-9-]+:[0-9]{12}:channel:[a-zA-Z0-9]+$"})
    MediaLiveChannelPipelineId = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MediaLiveChannelPipelineId", name: "MediaLiveChannelPipelineId")
    MediaLiveChannelRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaLiveChannelRouterInputConfiguration", name: "MediaLiveChannelRouterInputConfiguration")
    MediaLiveChannelRouterInputStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaLiveChannelRouterInputStreamDetails", name: "MediaLiveChannelRouterInputStreamDetails")
    MediaLiveInputArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#MediaLiveInputArn", name: "MediaLiveInputArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):medialive:[a-z0-9-]+:[0-9]{12}:input:[a-zA-Z0-9]+$"})
    MediaLiveInputPipelineId = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MediaLiveInputPipelineId", name: "MediaLiveInputPipelineId")
    MediaLiveInputRouterOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaLiveInputRouterOutputConfiguration", name: "MediaLiveInputRouterOutputConfiguration")
    MediaLiveInputRouterOutputStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaLiveInputRouterOutputStreamDetails", name: "MediaLiveInputRouterOutputStreamDetails")
    MediaLiveTransitEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaLiveTransitEncryption", name: "MediaLiveTransitEncryption")
    MediaLiveTransitEncryptionKeyConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#MediaLiveTransitEncryptionKeyConfiguration", name: "MediaLiveTransitEncryptionKeyConfiguration")
    MediaLiveTransitEncryptionKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MediaLiveTransitEncryptionKeyType", name: "MediaLiveTransitEncryptionKeyType")
    MediaStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStream", name: "MediaStream")
    MediaStreamAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamAttributes", name: "MediaStreamAttributes")
    MediaStreamAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamAttributesRequest", name: "MediaStreamAttributesRequest")
    MediaStreamOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamOutputConfiguration", name: "MediaStreamOutputConfiguration")
    MediaStreamOutputConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamOutputConfigurationRequest", name: "MediaStreamOutputConfigurationRequest")
    MediaStreamSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamSourceConfiguration", name: "MediaStreamSourceConfiguration")
    MediaStreamSourceConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MediaStreamSourceConfigurationRequest", name: "MediaStreamSourceConfigurationRequest")
    MediaStreamType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#MediaStreamType", name: "MediaStreamType")
    MergeRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MergeRouterInputConfiguration", name: "MergeRouterInputConfiguration")
    MergeRouterInputIndexedStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MergeRouterInputIndexedStreamDetails", name: "MergeRouterInputIndexedStreamDetails", traits: {"smithy.api#private" => {}})
    MergeRouterInputProtocolConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#MergeRouterInputProtocolConfiguration", name: "MergeRouterInputProtocolConfiguration")
    MergeRouterInputProtocolConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#MergeRouterInputProtocolConfigurationList", name: "MergeRouterInputProtocolConfigurationList")
    MergeRouterInputStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MergeRouterInputStreamDetails", name: "MergeRouterInputStreamDetails")
    MessageDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MessageDetail", name: "MessageDetail")
    Messages = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Messages", name: "Messages")
    MonitoringConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MonitoringConfig", name: "MonitoringConfig")
    MulticastSourceSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#MulticastSourceSettings", name: "MulticastSourceSettings")
    NdiAudioReferenceLevel = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediaconnect#NdiAudioReferenceLevel", name: "NdiAudioReferenceLevel", traits: {"smithy.api#range" => {"min" => -40, "max" => 0}})
    NdiConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiConfig", name: "NdiConfig")
    NdiDiscoveryServerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiDiscoveryServerConfig", name: "NdiDiscoveryServerConfig")
    NdiMediaInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiMediaInfo", name: "NdiMediaInfo")
    NdiMediaStreamInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiMediaStreamInfo", name: "NdiMediaStreamInfo")
    NdiOutputTimecodeSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#NdiOutputTimecodeSource", name: "NdiOutputTimecodeSource")
    NdiSourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiSourceInfo", name: "NdiSourceInfo")
    NdiSourceMetadataInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiSourceMetadataInfo", name: "NdiSourceMetadataInfo")
    NdiSourceSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NdiSourceSettings", name: "NdiSourceSettings")
    NdiState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#NdiState", name: "NdiState")
    NetworkInterfaceRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#NetworkInterfaceRuleList", name: "NetworkInterfaceRuleList")
    NetworkInterfaceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#NetworkInterfaceType", name: "NetworkInterfaceType")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Offering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Offering", name: "Offering")
    OfferingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#OfferingArn", name: "OfferingArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::Offering", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#OfferingResource"}})
    Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Output", name: "Output")
    OutputStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#OutputStatus", name: "OutputStatus")
    PreferredDayTimeMaintenanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#PreferredDayTimeMaintenanceConfiguration", name: "PreferredDayTimeMaintenanceConfiguration")
    PriceUnits = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#PriceUnits", name: "PriceUnits")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Protocol", name: "Protocol")
    PublicRouterNetworkInterfaceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#PublicRouterNetworkInterfaceConfiguration", name: "PublicRouterNetworkInterfaceConfiguration")
    PublicRouterNetworkInterfaceRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#PublicRouterNetworkInterfaceRule", name: "PublicRouterNetworkInterfaceRule")
    PublicTlsEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#PublicTlsEncryptionConfiguration", name: "PublicTlsEncryptionConfiguration")
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
    RestartRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RestartRouterInputRequest", name: "RestartRouterInputRequest", traits: {"smithy.api#private" => {}})
    RestartRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RestartRouterInputResponse", name: "RestartRouterInputResponse", traits: {"smithy.api#private" => {}})
    RestartRouterOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RestartRouterOutputRequest", name: "RestartRouterOutputRequest", traits: {"smithy.api#private" => {}})
    RestartRouterOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RestartRouterOutputResponse", name: "RestartRouterOutputResponse", traits: {"smithy.api#private" => {}})
    RevokeFlowEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RevokeFlowEntitlementRequest", name: "RevokeFlowEntitlementRequest")
    RevokeFlowEntitlementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RevokeFlowEntitlementResponse", name: "RevokeFlowEntitlementResponse")
    RistRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RistRouterInputConfiguration", name: "RistRouterInputConfiguration")
    RistRouterOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RistRouterOutputConfiguration", name: "RistRouterOutputConfiguration")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#RoleArn", name: "RoleArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):iam::[0-9]{12}:role/[a-zA-Z0-9_+=,.@-]+$"})
    RouterContentQualityAnalysisConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterContentQualityAnalysisConfiguration", name: "RouterContentQualityAnalysisConfiguration")
    RouterContentQualityAnalysisType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterContentQualityAnalysisType", name: "RouterContentQualityAnalysisType")
    RouterCqaThresholdSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediaconnect#RouterCqaThresholdSeconds", name: "RouterCqaThresholdSeconds", traits: {"smithy.api#range" => {"min" => 10, "max" => 60}})
    RouterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterInput", name: "RouterInput")
    RouterInputArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#RouterInputArn", name: "RouterInputArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::RouterInput", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#RouterInputResource"}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerInput:[a-z0-9]{12}$"})
    RouterInputArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterInputArnList", name: "RouterInputArnList")
    RouterInputConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterInputConfiguration", name: "RouterInputConfiguration")
    RouterInputFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterInputFilter", name: "RouterInputFilter")
    RouterInputFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterInputFilterList", name: "RouterInputFilterList")
    RouterInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterInputList", name: "RouterInputList")
    RouterInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterInputMessage", name: "RouterInputMessage")
    RouterInputMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterInputMessages", name: "RouterInputMessages")
    RouterInputMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterInputMetadata", name: "RouterInputMetadata")
    RouterInputProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterInputProtocol", name: "RouterInputProtocol")
    RouterInputProtocolConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterInputProtocolConfiguration", name: "RouterInputProtocolConfiguration")
    RouterInputServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterInputServiceQuotaExceededException", name: "RouterInputServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    RouterInputSourceMetadataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterInputSourceMetadataDetails", name: "RouterInputSourceMetadataDetails")
    RouterInputState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterInputState", name: "RouterInputState")
    RouterInputStreamDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterInputStreamDetails", name: "RouterInputStreamDetails")
    RouterInputThumbnailDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterInputThumbnailDetails", name: "RouterInputThumbnailDetails")
    RouterInputTier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterInputTier", name: "RouterInputTier")
    RouterInputTransitEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterInputTransitEncryption", name: "RouterInputTransitEncryption")
    RouterInputTransitEncryptionKeyConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterInputTransitEncryptionKeyConfiguration", name: "RouterInputTransitEncryptionKeyConfiguration")
    RouterInputTransitEncryptionKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterInputTransitEncryptionKeyType", name: "RouterInputTransitEncryptionKeyType")
    RouterInputType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterInputType", name: "RouterInputType")
    RouterInputTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterInputTypeList", name: "RouterInputTypeList")
    RouterNetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterface", name: "RouterNetworkInterface")
    RouterNetworkInterfaceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceArn", name: "RouterNetworkInterfaceArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::RouterNetworkInterface", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#RouterNetworkInterfaceResource"}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerNetworkInterface:[a-z0-9]{12}$"})
    RouterNetworkInterfaceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceArnList", name: "RouterNetworkInterfaceArnList")
    RouterNetworkInterfaceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceConfiguration", name: "RouterNetworkInterfaceConfiguration")
    RouterNetworkInterfaceFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceFilter", name: "RouterNetworkInterfaceFilter")
    RouterNetworkInterfaceFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceFilterList", name: "RouterNetworkInterfaceFilterList")
    RouterNetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceList", name: "RouterNetworkInterfaceList")
    RouterNetworkInterfaceServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceServiceQuotaExceededException", name: "RouterNetworkInterfaceServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    RouterNetworkInterfaceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceState", name: "RouterNetworkInterfaceState")
    RouterNetworkInterfaceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceType", name: "RouterNetworkInterfaceType")
    RouterNetworkInterfaceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterNetworkInterfaceTypeList", name: "RouterNetworkInterfaceTypeList")
    RouterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterOutput", name: "RouterOutput")
    RouterOutputArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#RouterOutputArn", name: "RouterOutputArn", traits: {"aws.api#arnReference" => {"type" => "AWS::MediaConnect::RouterOutput", "service" => "com.amazonaws.mediaconnect#MediaConnect", "resource" => "com.amazonaws.mediaconnect#RouterOutputResource"}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerOutput:[a-z0-9]{12}$"})
    RouterOutputArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterOutputArnList", name: "RouterOutputArnList")
    RouterOutputConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterOutputConfiguration", name: "RouterOutputConfiguration")
    RouterOutputFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterOutputFilter", name: "RouterOutputFilter")
    RouterOutputFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterOutputFilterList", name: "RouterOutputFilterList")
    RouterOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterOutputList", name: "RouterOutputList")
    RouterOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterOutputMessage", name: "RouterOutputMessage")
    RouterOutputMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterOutputMessages", name: "RouterOutputMessages")
    RouterOutputProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterOutputProtocol", name: "RouterOutputProtocol")
    RouterOutputProtocolConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterOutputProtocolConfiguration", name: "RouterOutputProtocolConfiguration")
    RouterOutputRoutedState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterOutputRoutedState", name: "RouterOutputRoutedState")
    RouterOutputServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RouterOutputServiceQuotaExceededException", name: "RouterOutputServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 420})
    RouterOutputState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterOutputState", name: "RouterOutputState")
    RouterOutputStreamDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#RouterOutputStreamDetails", name: "RouterOutputStreamDetails")
    RouterOutputTier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterOutputTier", name: "RouterOutputTier")
    RouterOutputType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RouterOutputType", name: "RouterOutputType")
    RouterOutputTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RouterOutputTypeList", name: "RouterOutputTypeList")
    RoutingScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#RoutingScope", name: "RoutingScope")
    RoutingScopeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#RoutingScopeList", name: "RoutingScopeList")
    RtmpPushRouterOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RtmpPushRouterOutputConfiguration", name: "RtmpPushRouterOutputConfiguration")
    RtpRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RtpRouterInputConfiguration", name: "RtpRouterInputConfiguration")
    RtpRouterOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#RtpRouterOutputConfiguration", name: "RtpRouterOutputConfiguration")
    ScanMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ScanMode", name: "ScanMode")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediaconnect#SecretArn", name: "SecretArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):secretsmanager:[a-z0-9-]+:[0-9]{12}:secret:[a-zA-Z0-9/_+=.@-]+$"})
    SecretsManagerEncryptionKeyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SecretsManagerEncryptionKeyConfiguration", name: "SecretsManagerEncryptionKeyConfiguration")
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#SecurityGroupIdList", name: "SecurityGroupIdList")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503, "smithy.api#retryable" => {}})
    SetGatewayBridgeSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SetGatewayBridgeSourceRequest", name: "SetGatewayBridgeSourceRequest")
    SetSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SetSourceRequest", name: "SetSourceRequest")
    SilentAudio = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SilentAudio", name: "SilentAudio")
    SilentAudioConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SilentAudioConfiguration", name: "SilentAudioConfiguration")
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Source", name: "Source")
    SourcePriority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SourcePriority", name: "SourcePriority")
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#SourceType", name: "SourceType")
    SrtCallerRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SrtCallerRouterInputConfiguration", name: "SrtCallerRouterInputConfiguration")
    SrtCallerRouterOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SrtCallerRouterOutputConfiguration", name: "SrtCallerRouterOutputConfiguration")
    SrtDecryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SrtDecryptionConfiguration", name: "SrtDecryptionConfiguration")
    SrtEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SrtEncryptionConfiguration", name: "SrtEncryptionConfiguration")
    SrtListenerRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SrtListenerRouterInputConfiguration", name: "SrtListenerRouterInputConfiguration")
    SrtListenerRouterOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#SrtListenerRouterOutputConfiguration", name: "SrtListenerRouterOutputConfiguration")
    StandardRouterInputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StandardRouterInputConfiguration", name: "StandardRouterInputConfiguration")
    StandardRouterInputStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StandardRouterInputStreamDetails", name: "StandardRouterInputStreamDetails", traits: {"smithy.api#private" => {}})
    StandardRouterOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StandardRouterOutputConfiguration", name: "StandardRouterOutputConfiguration")
    StandardRouterOutputStreamDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StandardRouterOutputStreamDetails", name: "StandardRouterOutputStreamDetails")
    StartFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StartFlowRequest", name: "StartFlowRequest")
    StartFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StartFlowResponse", name: "StartFlowResponse")
    StartRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StartRouterInputRequest", name: "StartRouterInputRequest", traits: {"smithy.api#private" => {}})
    StartRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StartRouterInputResponse", name: "StartRouterInputResponse", traits: {"smithy.api#private" => {}})
    StartRouterOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StartRouterOutputRequest", name: "StartRouterOutputRequest", traits: {"smithy.api#private" => {}})
    StartRouterOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StartRouterOutputResponse", name: "StartRouterOutputResponse", traits: {"smithy.api#private" => {}})
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#State", name: "State")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Status", name: "Status")
    StopFlowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StopFlowRequest", name: "StopFlowRequest")
    StopFlowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StopFlowResponse", name: "StopFlowResponse")
    StopRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StopRouterInputRequest", name: "StopRouterInputRequest", traits: {"smithy.api#private" => {}})
    StopRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StopRouterInputResponse", name: "StopRouterInputResponse", traits: {"smithy.api#private" => {}})
    StopRouterOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StopRouterOutputRequest", name: "StopRouterOutputRequest", traits: {"smithy.api#private" => {}})
    StopRouterOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#StopRouterOutputResponse", name: "StopRouterOutputResponse", traits: {"smithy.api#private" => {}})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#StringList", name: "StringList")
    TagGlobalResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TagGlobalResourceRequest", name: "TagGlobalResourceRequest")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TagResourceRequest", name: "TagResourceRequest")
    TakeRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TakeRouterInputRequest", name: "TakeRouterInputRequest")
    TakeRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TakeRouterInputResponse", name: "TakeRouterInputResponse")
    Tcs = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#Tcs", name: "Tcs")
    ThumbnailDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#ThumbnailDetails", name: "ThumbnailDetails")
    ThumbnailState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#ThumbnailState", name: "ThumbnailState")
    TlsEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TlsEncryption", name: "TlsEncryption")
    TlsEncryptionConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mediaconnect#TlsEncryptionConfiguration", name: "TlsEncryptionConfiguration")
    TlsEncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#TlsEncryptionType", name: "TlsEncryptionType")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    Transport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#Transport", name: "Transport")
    TransportMediaInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TransportMediaInfo", name: "TransportMediaInfo")
    TransportStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TransportStream", name: "TransportStream")
    TransportStreamProgram = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#TransportStreamProgram", name: "TransportStreamProgram")
    UntagGlobalResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UntagGlobalResourceRequest", name: "UntagGlobalResourceRequest")
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
    UpdateRouterInputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateRouterInputRequest", name: "UpdateRouterInputRequest", traits: {"smithy.api#private" => {}})
    UpdateRouterInputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateRouterInputResponse", name: "UpdateRouterInputResponse", traits: {"smithy.api#private" => {}})
    UpdateRouterNetworkInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateRouterNetworkInterfaceRequest", name: "UpdateRouterNetworkInterfaceRequest", traits: {"smithy.api#private" => {}})
    UpdateRouterNetworkInterfaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateRouterNetworkInterfaceResponse", name: "UpdateRouterNetworkInterfaceResponse", traits: {"smithy.api#private" => {}})
    UpdateRouterOutputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateRouterOutputRequest", name: "UpdateRouterOutputRequest", traits: {"smithy.api#private" => {}})
    UpdateRouterOutputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#UpdateRouterOutputResponse", name: "UpdateRouterOutputResponse", traits: {"smithy.api#private" => {}})
    VideoColorimetry = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#VideoColorimetry", name: "VideoColorimetry")
    VideoMatrixCoefficients = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#VideoMatrixCoefficients", name: "VideoMatrixCoefficients")
    VideoMonitoringSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VideoMonitoringSetting", name: "VideoMonitoringSetting")
    VideoTransferCharacteristics = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediaconnect#VideoTransferCharacteristics", name: "VideoTransferCharacteristics")
    VpcInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VpcInterface", name: "VpcInterface")
    VpcInterfaceAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VpcInterfaceAttachment", name: "VpcInterfaceAttachment")
    VpcInterfaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VpcInterfaceRequest", name: "VpcInterfaceRequest")
    VpcRouterNetworkInterfaceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#VpcRouterNetworkInterfaceConfiguration", name: "VpcRouterNetworkInterfaceConfiguration")
    WindowMaintenanceSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediaconnect#WindowMaintenanceSchedule", name: "WindowMaintenanceSchedule")
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
    Listofndimediastreaminfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfNdiMediaStreamInfo", name: "Listofndimediastreaminfo")
    Listofndisourceinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediaconnect#__listOfNdiSourceInfo", name: "Listofndisourceinfo")
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

    AddBridgeFlowSourceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddBridgeFlowSourceRequest.add_member(:flow_vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "FlowVpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "flowVpcInterfaceAttachment"}))
    AddBridgeFlowSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    AddBridgeFlowSourceRequest.type = Types::AddBridgeFlowSourceRequest
    AddBridgeNetworkOutputRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IpAddress", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ipAddress", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NetworkName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkName", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "port", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Ttl", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ttl", "smithy.api#required" => {}}))
    AddBridgeNetworkOutputRequest.type = Types::AddBridgeNetworkOutputRequest
    AddBridgeNetworkSourceRequest.add_member(:multicast_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MulticastIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "multicastIp", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.add_member(:multicast_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastSourceSettings, name: "MulticastSourceSettings", traits: {"smithy.api#jsonName" => "multicastSourceSettings"}))
    AddBridgeNetworkSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NetworkName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkName", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "port", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    AddBridgeNetworkSourceRequest.type = Types::AddBridgeNetworkSourceRequest
    AddBridgeOutputRequest.add_member(:network_output, ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeNetworkOutputRequest, name: "NetworkOutput", traits: {"smithy.api#jsonName" => "networkOutput"}))
    AddBridgeOutputRequest.type = Types::AddBridgeOutputRequest
    AddBridgeOutputsRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    AddBridgeOutputsRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddbridgeoutputrequest, name: "Outputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outputs", "smithy.api#required" => {}}))
    AddBridgeOutputsRequest.type = Types::AddBridgeOutputsRequest
    AddBridgeOutputsResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    AddBridgeOutputsResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbridgeoutput, name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    AddBridgeOutputsResponse.type = Types::AddBridgeOutputsResponse
    AddBridgeSourceRequest.add_member(:flow_source, ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeFlowSourceRequest, name: "FlowSource", traits: {"smithy.api#jsonName" => "flowSource"}))
    AddBridgeSourceRequest.add_member(:network_source, ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeNetworkSourceRequest, name: "NetworkSource", traits: {"smithy.api#jsonName" => "networkSource"}))
    AddBridgeSourceRequest.type = Types::AddBridgeSourceRequest
    AddBridgeSourcesRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddBridgeSourcesRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddbridgesourcerequest, name: "Sources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sources", "smithy.api#required" => {}}))
    AddBridgeSourcesRequest.type = Types::AddBridgeSourcesRequest
    AddBridgeSourcesResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    AddBridgeSourcesResponse.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbridgesource, name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    AddBridgeSourcesResponse.type = Types::AddBridgeSourcesResponse
    AddEgressGatewayBridgeRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxBitrate", "smithy.api#required" => {}}))
    AddEgressGatewayBridgeRequest.type = Types::AddEgressGatewayBridgeRequest
    AddFlowMediaStreamsRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddFlowMediaStreamsRequest.add_member(:media_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddmediastreamrequest, name: "MediaStreams", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreams", "smithy.api#required" => {}}))
    AddFlowMediaStreamsRequest.type = Types::AddFlowMediaStreamsRequest
    AddFlowMediaStreamsResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    AddFlowMediaStreamsResponse.add_member(:media_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastream, name: "MediaStreams", traits: {"smithy.api#jsonName" => "mediaStreams"}))
    AddFlowMediaStreamsResponse.type = Types::AddFlowMediaStreamsResponse
    AddFlowOutputs420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    AddFlowOutputs420Exception.type = Types::AddFlowOutputs420Exception
    AddFlowOutputsRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddFlowOutputsRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddoutputrequest, name: "Outputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outputs", "smithy.api#required" => {}}))
    AddFlowOutputsRequest.type = Types::AddFlowOutputsRequest
    AddFlowOutputsResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    AddFlowOutputsResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofoutput, name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    AddFlowOutputsResponse.type = Types::AddFlowOutputsResponse
    AddFlowSourcesRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddFlowSourcesRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsetsourcerequest, name: "Sources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sources", "smithy.api#required" => {}}))
    AddFlowSourcesRequest.type = Types::AddFlowSourcesRequest
    AddFlowSourcesResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    AddFlowSourcesResponse.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsource, name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    AddFlowSourcesResponse.type = Types::AddFlowSourcesResponse
    AddFlowVpcInterfacesRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    AddFlowVpcInterfacesRequest.add_member(:vpc_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcinterfacerequest, name: "VpcInterfaces", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcInterfaces", "smithy.api#required" => {}}))
    AddFlowVpcInterfacesRequest.type = Types::AddFlowVpcInterfacesRequest
    AddFlowVpcInterfacesResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    AddFlowVpcInterfacesResponse.add_member(:vpc_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcinterface, name: "VpcInterfaces", traits: {"smithy.api#jsonName" => "vpcInterfaces"}))
    AddFlowVpcInterfacesResponse.type = Types::AddFlowVpcInterfacesResponse
    AddIngressGatewayBridgeRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxBitrate", "smithy.api#required" => {}}))
    AddIngressGatewayBridgeRequest.add_member(:max_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxOutputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxOutputs", "smithy.api#required" => {}}))
    AddIngressGatewayBridgeRequest.type = Types::AddIngressGatewayBridgeRequest
    AddMaintenance.add_member(:maintenance_day, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceDay, name: "MaintenanceDay", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maintenanceDay", "smithy.api#required" => {}}))
    AddMaintenance.add_member(:maintenance_start_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MaintenanceStartHour", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maintenanceStartHour", "smithy.api#required" => {}}))
    AddMaintenance.type = Types::AddMaintenance
    AddMediaStreamRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamAttributesRequest, name: "Attributes", traits: {"smithy.api#jsonName" => "attributes"}))
    AddMediaStreamRequest.add_member(:clock_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ClockRate", traits: {"smithy.api#jsonName" => "clockRate"}))
    AddMediaStreamRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    AddMediaStreamRequest.add_member(:media_stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MediaStreamId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamId", "smithy.api#required" => {}}))
    AddMediaStreamRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    AddMediaStreamRequest.add_member(:media_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamType, name: "MediaStreamType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamType", "smithy.api#required" => {}}))
    AddMediaStreamRequest.add_member(:video_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VideoFormat", traits: {"smithy.api#jsonName" => "videoFormat"}))
    AddMediaStreamRequest.add_member(:media_stream_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "MediaStreamTags", traits: {"smithy.api#jsonName" => "mediaStreamTags"}))
    AddMediaStreamRequest.type = Types::AddMediaStreamRequest
    AddOutputRequest.add_member(:cidr_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "CidrAllowList", traits: {"smithy.api#jsonName" => "cidrAllowList"}))
    AddOutputRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    AddOutputRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Destination", traits: {"smithy.api#jsonName" => "destination"}))
    AddOutputRequest.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    AddOutputRequest.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    AddOutputRequest.add_member(:media_stream_output_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamoutputconfigurationrequest, name: "MediaStreamOutputConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamOutputConfigurations"}))
    AddOutputRequest.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    AddOutputRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    AddOutputRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    AddOutputRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    AddOutputRequest.add_member(:remote_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RemoteId", traits: {"smithy.api#jsonName" => "remoteId"}))
    AddOutputRequest.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    AddOutputRequest.add_member(:smoothing_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SmoothingLatency", traits: {"smithy.api#jsonName" => "smoothingLatency"}))
    AddOutputRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    AddOutputRequest.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    AddOutputRequest.add_member(:output_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, name: "OutputStatus", traits: {"smithy.api#jsonName" => "outputStatus"}))
    AddOutputRequest.add_member(:ndi_speed_hq_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "NdiSpeedHqQuality", traits: {"smithy.api#jsonName" => "ndiSpeedHqQuality"}))
    AddOutputRequest.add_member(:ndi_program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NdiProgramName", traits: {"smithy.api#jsonName" => "ndiProgramName"}))
    AddOutputRequest.add_member(:output_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "OutputTags", traits: {"smithy.api#jsonName" => "outputTags"}))
    AddOutputRequest.add_member(:router_integration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "RouterIntegrationState", traits: {"smithy.api#jsonName" => "routerIntegrationState"}))
    AddOutputRequest.add_member(:router_integration_transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryption, name: "RouterIntegrationTransitEncryption", traits: {"smithy.api#jsonName" => "routerIntegrationTransitEncryption"}))
    AddOutputRequest.add_member(:ndi_output_timecode_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiOutputTimecodeSource, name: "NdiOutputTimecodeSource", traits: {"smithy.api#jsonName" => "ndiOutputTimecodeSource"}))
    AddOutputRequest.add_member(:ndi_audio_reference_level, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiAudioReferenceLevel, name: "NdiAudioReferenceLevel", traits: {"smithy.api#jsonName" => "ndiAudioReferenceLevel"}))
    AddOutputRequest.type = Types::AddOutputRequest
    Algorithm.add_member(:aes128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aes128", traits: {"smithy.api#enumValue" => "aes128", "smithy.api#suppress" => ["EnumShape"]}))
    Algorithm.add_member(:aes192, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aes192", traits: {"smithy.api#enumValue" => "aes192", "smithy.api#suppress" => ["EnumShape"]}))
    Algorithm.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aes256", traits: {"smithy.api#enumValue" => "aes256", "smithy.api#suppress" => ["EnumShape"]}))
    AudioMonitoringSetting.add_member(:silent_audio, ::Smithy::Schema::Shapes::MemberShape.new(target: SilentAudio, name: "SilentAudio", traits: {"smithy.api#jsonName" => "silentAudio"}))
    AudioMonitoringSetting.type = Types::AudioMonitoringSetting
    AutomaticEncryptionKeyConfiguration.type = Types::AutomaticEncryptionKeyConfiguration
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    BadRequestException.type = Types::BadRequestException
    BatchGetRouterInputError.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    BatchGetRouterInputError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Code", traits: {"smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    BatchGetRouterInputError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    BatchGetRouterInputError.type = Types::BatchGetRouterInputError
    BatchGetRouterInputErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRouterInputError, name: "member"))
    BatchGetRouterInputRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArnList, name: "Arns", traits: {"smithy.api#httpQuery" => "arns", "smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#required" => {}}))
    BatchGetRouterInputRequest.type = Types::BatchGetRouterInputRequest
    BatchGetRouterInputResponse.add_member(:router_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputList, name: "RouterInputs", traits: {"smithy.api#jsonName" => "routerInputs", "smithy.api#required" => {}}))
    BatchGetRouterInputResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRouterInputErrorList, name: "Errors", traits: {"smithy.api#jsonName" => "errors", "smithy.api#required" => {}}))
    BatchGetRouterInputResponse.type = Types::BatchGetRouterInputResponse
    BatchGetRouterNetworkInterfaceError.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    BatchGetRouterNetworkInterfaceError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Code", traits: {"smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    BatchGetRouterNetworkInterfaceError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    BatchGetRouterNetworkInterfaceError.type = Types::BatchGetRouterNetworkInterfaceError
    BatchGetRouterNetworkInterfaceErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRouterNetworkInterfaceError, name: "member"))
    BatchGetRouterNetworkInterfaceRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArnList, name: "Arns", traits: {"smithy.api#httpQuery" => "arns", "smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#required" => {}}))
    BatchGetRouterNetworkInterfaceRequest.type = Types::BatchGetRouterNetworkInterfaceRequest
    BatchGetRouterNetworkInterfaceResponse.add_member(:router_network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceList, name: "RouterNetworkInterfaces", traits: {"smithy.api#jsonName" => "routerNetworkInterfaces", "smithy.api#required" => {}}))
    BatchGetRouterNetworkInterfaceResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRouterNetworkInterfaceErrorList, name: "Errors", traits: {"smithy.api#jsonName" => "errors", "smithy.api#required" => {}}))
    BatchGetRouterNetworkInterfaceResponse.type = Types::BatchGetRouterNetworkInterfaceResponse
    BatchGetRouterOutputError.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    BatchGetRouterOutputError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Code", traits: {"smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    BatchGetRouterOutputError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    BatchGetRouterOutputError.type = Types::BatchGetRouterOutputError
    BatchGetRouterOutputErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRouterOutputError, name: "member"))
    BatchGetRouterOutputRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArnList, name: "Arns", traits: {"smithy.api#httpQuery" => "arns", "smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#required" => {}}))
    BatchGetRouterOutputRequest.type = Types::BatchGetRouterOutputRequest
    BatchGetRouterOutputResponse.add_member(:router_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputList, name: "RouterOutputs", traits: {"smithy.api#jsonName" => "routerOutputs", "smithy.api#required" => {}}))
    BatchGetRouterOutputResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRouterOutputErrorList, name: "Errors", traits: {"smithy.api#jsonName" => "errors", "smithy.api#required" => {}}))
    BatchGetRouterOutputResponse.type = Types::BatchGetRouterOutputResponse
    BlackFrames.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    BlackFrames.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds"}))
    BlackFrames.type = Types::BlackFrames
    BlackFramesConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentQualityAnalysisState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    BlackFramesConfiguration.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterCqaThresholdSeconds, name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds", "smithy.api#required" => {}}))
    BlackFramesConfiguration.type = Types::BlackFramesConfiguration
    Bridge.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeArn", "smithy.api#required" => {}}))
    Bridge.add_member(:bridge_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, name: "BridgeMessages", traits: {"smithy.api#jsonName" => "bridgeMessages"}))
    Bridge.add_member(:bridge_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeState, name: "BridgeState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeState", "smithy.api#required" => {}}))
    Bridge.add_member(:egress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressGatewayBridge, name: "EgressGatewayBridge", traits: {"smithy.api#jsonName" => "egressGatewayBridge"}))
    Bridge.add_member(:ingress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressGatewayBridge, name: "IngressGatewayBridge", traits: {"smithy.api#jsonName" => "ingressGatewayBridge"}))
    Bridge.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Bridge.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbridgeoutput, name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    Bridge.add_member(:placement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PlacementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "placementArn", "smithy.api#required" => {}}))
    Bridge.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverConfig, name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    Bridge.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbridgesource, name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    Bridge.type = Types::Bridge
    BridgeFlowOutput.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    BridgeFlowOutput.add_member(:flow_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowSourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowSourceArn", "smithy.api#required" => {}}))
    BridgeFlowOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    BridgeFlowOutput.type = Types::BridgeFlowOutput
    BridgeFlowSource.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    BridgeFlowSource.add_member(:flow_vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "FlowVpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "flowVpcInterfaceAttachment"}))
    BridgeFlowSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    BridgeFlowSource.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutputArn", traits: {"smithy.api#jsonName" => "outputArn"}))
    BridgeFlowSource.type = Types::BridgeFlowSource
    BridgeNetworkOutput.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IpAddress", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ipAddress", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NetworkName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkName", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "port", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    BridgeNetworkOutput.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Ttl", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ttl", "smithy.api#required" => {}}))
    BridgeNetworkOutput.type = Types::BridgeNetworkOutput
    BridgeNetworkSource.add_member(:multicast_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MulticastIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "multicastIp", "smithy.api#required" => {}}))
    BridgeNetworkSource.add_member(:multicast_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastSourceSettings, name: "MulticastSourceSettings", traits: {"smithy.api#jsonName" => "multicastSourceSettings"}))
    BridgeNetworkSource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    BridgeNetworkSource.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NetworkName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkName", "smithy.api#required" => {}}))
    BridgeNetworkSource.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "port", "smithy.api#required" => {}}))
    BridgeNetworkSource.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    BridgeNetworkSource.type = Types::BridgeNetworkSource
    BridgeOutput.add_member(:flow_output, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeFlowOutput, name: "FlowOutput", traits: {"smithy.api#jsonName" => "flowOutput"}))
    BridgeOutput.add_member(:network_output, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeNetworkOutput, name: "NetworkOutput", traits: {"smithy.api#jsonName" => "networkOutput"}))
    BridgeOutput.type = Types::BridgeOutput
    BridgePlacement.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    BridgePlacement.add_member(:locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCKED", traits: {"smithy.api#enumValue" => "LOCKED"}))
    BridgeSource.add_member(:flow_source, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeFlowSource, name: "FlowSource", traits: {"smithy.api#jsonName" => "flowSource"}))
    BridgeSource.add_member(:network_source, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeNetworkSource, name: "NetworkSource", traits: {"smithy.api#jsonName" => "networkSource"}))
    BridgeSource.type = Types::BridgeSource
    BridgeState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    BridgeState.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    BridgeState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    BridgeState.add_member(:deploying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYING", traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    BridgeState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BridgeState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    BridgeState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    BridgeState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    BridgeState.add_member(:start_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_FAILED", traits: {"smithy.api#enumValue" => "START_FAILED"}))
    BridgeState.add_member(:start_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_PENDING", traits: {"smithy.api#enumValue" => "START_PENDING"}))
    BridgeState.add_member(:stop_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_FAILED", traits: {"smithy.api#enumValue" => "STOP_FAILED"}))
    BridgeState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ColorInformation.add_member(:colorimetry, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoColorimetry, name: "Colorimetry", traits: {"smithy.api#jsonName" => "colorimetry"}))
    ColorInformation.add_member(:transfer_characteristics, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoTransferCharacteristics, name: "TransferCharacteristics", traits: {"smithy.api#jsonName" => "transferCharacteristics"}))
    ColorInformation.add_member(:matrix_coefficients, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoMatrixCoefficients, name: "MatrixCoefficients", traits: {"smithy.api#jsonName" => "matrixCoefficients"}))
    ColorInformation.type = Types::ColorInformation
    Colorimetry.add_member(:bt601, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT601", traits: {"smithy.api#enumValue" => "BT601"}))
    Colorimetry.add_member(:bt709, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT709", traits: {"smithy.api#enumValue" => "BT709"}))
    Colorimetry.add_member(:bt2020, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2020", traits: {"smithy.api#enumValue" => "BT2020"}))
    Colorimetry.add_member(:bt2100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2100", traits: {"smithy.api#enumValue" => "BT2100"}))
    Colorimetry.add_member(:st2065_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST2065_1", traits: {"smithy.api#enumValue" => "ST2065-1"}))
    Colorimetry.add_member(:st2065_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST2065_3", traits: {"smithy.api#enumValue" => "ST2065-3"}))
    Colorimetry.add_member(:xyz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XYZ", traits: {"smithy.api#enumValue" => "XYZ"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    ConnectionStatus.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    ContentQualityAnalysisFeatureConfiguration.add_member(:black_frames, ::Smithy::Schema::Shapes::MemberShape.new(target: BlackFramesConfiguration, name: "BlackFrames", traits: {"smithy.api#jsonName" => "blackFrames"}))
    ContentQualityAnalysisFeatureConfiguration.add_member(:frozen_frames, ::Smithy::Schema::Shapes::MemberShape.new(target: FrozenFramesConfiguration, name: "FrozenFrames", traits: {"smithy.api#jsonName" => "frozenFrames"}))
    ContentQualityAnalysisFeatureConfiguration.add_member(:silent_audio, ::Smithy::Schema::Shapes::MemberShape.new(target: SilentAudioConfiguration, name: "SilentAudio", traits: {"smithy.api#jsonName" => "silentAudio"}))
    ContentQualityAnalysisFeatureConfiguration.type = Types::ContentQualityAnalysisFeatureConfiguration
    ContentQualityAnalysisState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContentQualityAnalysisState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CreateBridge420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    CreateBridge420Exception.type = Types::CreateBridge420Exception
    CreateBridgeRequest.add_member(:egress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: AddEgressGatewayBridgeRequest, name: "EgressGatewayBridge", traits: {"smithy.api#jsonName" => "egressGatewayBridge"}))
    CreateBridgeRequest.add_member(:ingress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: AddIngressGatewayBridgeRequest, name: "IngressGatewayBridge", traits: {"smithy.api#jsonName" => "ingressGatewayBridge"}))
    CreateBridgeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateBridgeRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddbridgeoutputrequest, name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    CreateBridgeRequest.add_member(:placement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PlacementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "placementArn", "smithy.api#required" => {}}))
    CreateBridgeRequest.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverConfig, name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    CreateBridgeRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddbridgesourcerequest, name: "Sources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sources", "smithy.api#required" => {}}))
    CreateBridgeRequest.type = Types::CreateBridgeRequest
    CreateBridgeResponse.add_member(:bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: Bridge, name: "Bridge", traits: {"smithy.api#jsonName" => "bridge"}))
    CreateBridgeResponse.type = Types::CreateBridgeResponse
    CreateFlow420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    CreateFlow420Exception.type = Types::CreateFlow420Exception
    CreateFlowRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone"}))
    CreateFlowRequest.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgrantentitlementrequest, name: "Entitlements", traits: {"smithy.api#jsonName" => "entitlements"}))
    CreateFlowRequest.add_member(:media_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddmediastreamrequest, name: "MediaStreams", traits: {"smithy.api#jsonName" => "mediaStreams"}))
    CreateFlowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateFlowRequest.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaddoutputrequest, name: "Outputs", traits: {"smithy.api#jsonName" => "outputs"}))
    CreateFlowRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: SetSourceRequest, name: "Source", traits: {"smithy.api#jsonName" => "source"}))
    CreateFlowRequest.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverConfig, name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    CreateFlowRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsetsourcerequest, name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    CreateFlowRequest.add_member(:vpc_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcinterfacerequest, name: "VpcInterfaces", traits: {"smithy.api#jsonName" => "vpcInterfaces"}))
    CreateFlowRequest.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: AddMaintenance, name: "Maintenance", traits: {"smithy.api#jsonName" => "maintenance"}))
    CreateFlowRequest.add_member(:source_monitoring_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfig, name: "SourceMonitoringConfig", traits: {"smithy.api#jsonName" => "sourceMonitoringConfig"}))
    CreateFlowRequest.add_member(:flow_size, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowSize, name: "FlowSize", traits: {"smithy.api#jsonName" => "flowSize"}))
    CreateFlowRequest.add_member(:ndi_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiConfig, name: "NdiConfig", traits: {"smithy.api#jsonName" => "ndiConfig"}))
    CreateFlowRequest.add_member(:encoding_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingConfig, name: "EncodingConfig", traits: {"smithy.api#jsonName" => "encodingConfig"}))
    CreateFlowRequest.add_member(:flow_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "FlowTags", traits: {"smithy.api#jsonName" => "flowTags"}))
    CreateFlowRequest.type = Types::CreateFlowRequest
    CreateFlowResponse.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: Flow, name: "Flow", traits: {"smithy.api#jsonName" => "flow"}))
    CreateFlowResponse.type = Types::CreateFlowResponse
    CreateGateway420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    CreateGateway420Exception.type = Types::CreateGateway420Exception
    CreateGatewayRequest.add_member(:egress_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "EgressCidrBlocks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "egressCidrBlocks", "smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:networks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgatewaynetwork, name: "Networks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networks", "smithy.api#required" => {}}))
    CreateGatewayRequest.type = Types::CreateGatewayRequest
    CreateGatewayResponse.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: Gateway, name: "Gateway", traits: {"smithy.api#jsonName" => "gateway"}))
    CreateGatewayResponse.type = Types::CreateGatewayResponse
    CreateRouterInputRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    CreateRouterInputRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    CreateRouterInputRequest.add_member(:maximum_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MaximumBitrate", traits: {"smithy.api#jsonName" => "maximumBitrate", "smithy.api#required" => {}}))
    CreateRouterInputRequest.add_member(:routing_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "RoutingScope", traits: {"smithy.api#jsonName" => "routingScope", "smithy.api#required" => {}}))
    CreateRouterInputRequest.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTier, name: "Tier", traits: {"smithy.api#jsonName" => "tier", "smithy.api#required" => {}}))
    CreateRouterInputRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName"}))
    CreateRouterInputRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone"}))
    CreateRouterInputRequest.add_member(:transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTransitEncryption, name: "TransitEncryption", traits: {"smithy.api#jsonName" => "transitEncryption"}))
    CreateRouterInputRequest.add_member(:maintenance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceConfiguration, name: "MaintenanceConfiguration", traits: {"smithy.api#jsonName" => "maintenanceConfiguration"}))
    CreateRouterInputRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#jsonName" => "tags"}))
    CreateRouterInputRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateRouterInputRequest.add_member(:content_quality_analysis_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterContentQualityAnalysisConfiguration, name: "ContentQualityAnalysisConfiguration", traits: {"smithy.api#jsonName" => "contentQualityAnalysisConfiguration"}))
    CreateRouterInputRequest.type = Types::CreateRouterInputRequest
    CreateRouterInputResponse.add_member(:router_input, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInput, name: "RouterInput", traits: {"smithy.api#jsonName" => "routerInput", "smithy.api#required" => {}}))
    CreateRouterInputResponse.type = Types::CreateRouterInputResponse
    CreateRouterNetworkInterfaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]([a-zA-Z0-9\\-_]*[a-zA-Z0-9])?$", "smithy.api#required" => {}}))
    CreateRouterNetworkInterfaceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    CreateRouterNetworkInterfaceRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName"}))
    CreateRouterNetworkInterfaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#jsonName" => "tags"}))
    CreateRouterNetworkInterfaceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateRouterNetworkInterfaceRequest.type = Types::CreateRouterNetworkInterfaceRequest
    CreateRouterNetworkInterfaceResponse.add_member(:router_network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterface, name: "RouterNetworkInterface", traits: {"smithy.api#jsonName" => "routerNetworkInterface", "smithy.api#required" => {}}))
    CreateRouterNetworkInterfaceResponse.type = Types::CreateRouterNetworkInterfaceResponse
    CreateRouterOutputRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    CreateRouterOutputRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration", "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateRouterOutputRequest.add_member(:maximum_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MaximumBitrate", traits: {"smithy.api#jsonName" => "maximumBitrate", "smithy.api#required" => {}}))
    CreateRouterOutputRequest.add_member(:routing_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "RoutingScope", traits: {"smithy.api#jsonName" => "routingScope", "smithy.api#required" => {}}))
    CreateRouterOutputRequest.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputTier, name: "Tier", traits: {"smithy.api#jsonName" => "tier", "smithy.api#required" => {}}))
    CreateRouterOutputRequest.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName"}))
    CreateRouterOutputRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone"}))
    CreateRouterOutputRequest.add_member(:maintenance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceConfiguration, name: "MaintenanceConfiguration", traits: {"smithy.api#jsonName" => "maintenanceConfiguration"}))
    CreateRouterOutputRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#jsonName" => "tags"}))
    CreateRouterOutputRequest.add_member(:fabric_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FabricConfiguration, name: "FabricConfiguration", traits: {"smithy.api#jsonName" => "fabricConfiguration"}))
    CreateRouterOutputRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateRouterOutputRequest.type = Types::CreateRouterOutputRequest
    CreateRouterOutputResponse.add_member(:router_output, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutput, name: "RouterOutput", traits: {"smithy.api#jsonName" => "routerOutput", "smithy.api#required" => {}}))
    CreateRouterOutputResponse.type = Types::CreateRouterOutputResponse
    Day.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONDAY", traits: {"smithy.api#enumValue" => "MONDAY"}))
    Day.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TUESDAY", traits: {"smithy.api#enumValue" => "TUESDAY"}))
    Day.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEDNESDAY", traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    Day.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THURSDAY", traits: {"smithy.api#enumValue" => "THURSDAY"}))
    Day.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRIDAY", traits: {"smithy.api#enumValue" => "FRIDAY"}))
    Day.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATURDAY", traits: {"smithy.api#enumValue" => "SATURDAY"}))
    Day.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUNDAY", traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DefaultMaintenanceConfiguration.type = Types::DefaultMaintenanceConfiguration
    DeleteBridgeRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    DeleteBridgeRequest.type = Types::DeleteBridgeRequest
    DeleteBridgeResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    DeleteBridgeResponse.type = Types::DeleteBridgeResponse
    DeleteFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    DeleteFlowRequest.type = Types::DeleteFlowRequest
    DeleteFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    DeleteFlowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    DeleteFlowResponse.type = Types::DeleteFlowResponse
    DeleteGatewayRequest.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+$", "smithy.api#required" => {}}))
    DeleteGatewayRequest.type = Types::DeleteGatewayRequest
    DeleteGatewayResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayArn", traits: {"smithy.api#jsonName" => "gatewayArn"}))
    DeleteGatewayResponse.type = Types::DeleteGatewayResponse
    DeleteRouterInputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouterInputRequest.type = Types::DeleteRouterInputRequest
    DeleteRouterInputResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    DeleteRouterInputResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    DeleteRouterInputResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    DeleteRouterInputResponse.type = Types::DeleteRouterInputResponse
    DeleteRouterNetworkInterfaceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouterNetworkInterfaceRequest.type = Types::DeleteRouterNetworkInterfaceRequest
    DeleteRouterNetworkInterfaceResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    DeleteRouterNetworkInterfaceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    DeleteRouterNetworkInterfaceResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    DeleteRouterNetworkInterfaceResponse.type = Types::DeleteRouterNetworkInterfaceResponse
    DeleteRouterOutputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouterOutputRequest.type = Types::DeleteRouterOutputRequest
    DeleteRouterOutputResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    DeleteRouterOutputResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    DeleteRouterOutputResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    DeleteRouterOutputResponse.type = Types::DeleteRouterOutputResponse
    DeregisterGatewayInstanceRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Force", traits: {"smithy.api#httpQuery" => "force"}))
    DeregisterGatewayInstanceRequest.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInstanceArn, name: "GatewayInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+:instance:.+$", "smithy.api#required" => {}}))
    DeregisterGatewayInstanceRequest.type = Types::DeregisterGatewayInstanceRequest
    DeregisterGatewayInstanceResponse.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayInstanceArn", traits: {"smithy.api#jsonName" => "gatewayInstanceArn"}))
    DeregisterGatewayInstanceResponse.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "InstanceState", traits: {"smithy.api#jsonName" => "instanceState"}))
    DeregisterGatewayInstanceResponse.type = Types::DeregisterGatewayInstanceResponse
    DescribeBridgeRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    DescribeBridgeRequest.type = Types::DescribeBridgeRequest
    DescribeBridgeResponse.add_member(:bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: Bridge, name: "Bridge", traits: {"smithy.api#jsonName" => "bridge"}))
    DescribeBridgeResponse.type = Types::DescribeBridgeResponse
    DescribeFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    DescribeFlowRequest.type = Types::DescribeFlowRequest
    DescribeFlowResponse.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: Flow, name: "Flow", traits: {"smithy.api#jsonName" => "flow"}))
    DescribeFlowResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, name: "Messages", traits: {"smithy.api#jsonName" => "messages"}))
    DescribeFlowResponse.type = Types::DescribeFlowResponse
    DescribeFlowSourceMetadataRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFlowSourceMetadataRequest.type = Types::DescribeFlowSourceMetadataRequest
    DescribeFlowSourceMetadataResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    DescribeFlowSourceMetadataResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, name: "Messages", traits: {"smithy.api#jsonName" => "messages"}))
    DescribeFlowSourceMetadataResponse.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp", traits: {"smithy.api#jsonName" => "timestamp", "smithy.api#timestampFormat" => "date-time"}))
    DescribeFlowSourceMetadataResponse.add_member(:transport_media_info, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportMediaInfo, name: "TransportMediaInfo", traits: {"smithy.api#jsonName" => "transportMediaInfo"}))
    DescribeFlowSourceMetadataResponse.add_member(:ndi_info, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiSourceMetadataInfo, name: "NdiInfo", traits: {"smithy.api#jsonName" => "ndiInfo"}))
    DescribeFlowSourceMetadataResponse.type = Types::DescribeFlowSourceMetadataResponse
    DescribeFlowSourceThumbnailRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFlowSourceThumbnailRequest.type = Types::DescribeFlowSourceThumbnailRequest
    DescribeFlowSourceThumbnailResponse.add_member(:thumbnail_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailDetails, name: "ThumbnailDetails", traits: {"smithy.api#jsonName" => "thumbnailDetails"}))
    DescribeFlowSourceThumbnailResponse.type = Types::DescribeFlowSourceThumbnailResponse
    DescribeGatewayInstanceRequest.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInstanceArn, name: "GatewayInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+:instance:.+$", "smithy.api#required" => {}}))
    DescribeGatewayInstanceRequest.type = Types::DescribeGatewayInstanceRequest
    DescribeGatewayInstanceResponse.add_member(:gateway_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInstance, name: "GatewayInstance", traits: {"smithy.api#jsonName" => "gatewayInstance"}))
    DescribeGatewayInstanceResponse.type = Types::DescribeGatewayInstanceResponse
    DescribeGatewayRequest.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "GatewayArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+$", "smithy.api#required" => {}}))
    DescribeGatewayRequest.type = Types::DescribeGatewayRequest
    DescribeGatewayResponse.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: Gateway, name: "Gateway", traits: {"smithy.api#jsonName" => "gateway"}))
    DescribeGatewayResponse.type = Types::DescribeGatewayResponse
    DescribeOfferingRequest.add_member(:offering_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferingArn, name: "OfferingArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeOfferingRequest.type = Types::DescribeOfferingRequest
    DescribeOfferingResponse.add_member(:offering, ::Smithy::Schema::Shapes::MemberShape.new(target: Offering, name: "Offering", traits: {"smithy.api#jsonName" => "offering"}))
    DescribeOfferingResponse.type = Types::DescribeOfferingResponse
    DescribeReservationRequest.add_member(:reservation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationArn, name: "ReservationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeReservationRequest.type = Types::DescribeReservationRequest
    DescribeReservationResponse.add_member(:reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation, name: "Reservation", traits: {"smithy.api#jsonName" => "reservation"}))
    DescribeReservationResponse.type = Types::DescribeReservationResponse
    DesiredState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DesiredState.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    DesiredState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DestinationConfiguration.add_member(:destination_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationIp", "smithy.api#required" => {}}))
    DestinationConfiguration.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DestinationPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationPort", "smithy.api#required" => {}}))
    DestinationConfiguration.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: Interface, name: "Interface", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "interface", "smithy.api#required" => {}}))
    DestinationConfiguration.add_member(:outbound_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutboundIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outboundIp", "smithy.api#required" => {}}))
    DestinationConfiguration.type = Types::DestinationConfiguration
    DestinationConfigurationRequest.add_member(:destination_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationIp", "smithy.api#required" => {}}))
    DestinationConfigurationRequest.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DestinationPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationPort", "smithy.api#required" => {}}))
    DestinationConfigurationRequest.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceRequest, name: "Interface", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "interface", "smithy.api#required" => {}}))
    DestinationConfigurationRequest.type = Types::DestinationConfigurationRequest
    DurationUnits.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    EgressGatewayBridge.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId", traits: {"smithy.api#jsonName" => "instanceId"}))
    EgressGatewayBridge.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxBitrate", "smithy.api#required" => {}}))
    EgressGatewayBridge.type = Types::EgressGatewayBridge
    EncoderProfile.add_member(:main, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "main", traits: {"smithy.api#enumValue" => "main", "smithy.api#suppress" => ["EnumShape"]}))
    EncoderProfile.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "high", traits: {"smithy.api#enumValue" => "high", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingConfig.add_member(:encoding_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingProfile, name: "EncodingProfile", traits: {"smithy.api#jsonName" => "encodingProfile"}))
    EncodingConfig.add_member(:video_max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "VideoMaxBitrate", traits: {"smithy.api#jsonName" => "videoMaxBitrate"}))
    EncodingConfig.type = Types::EncodingConfig
    EncodingName.add_member(:jxsv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "jxsv", traits: {"smithy.api#enumValue" => "jxsv", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingName.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "raw", traits: {"smithy.api#enumValue" => "raw", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingName.add_member(:smpte291, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "smpte291", traits: {"smithy.api#enumValue" => "smpte291", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingName.add_member(:pcm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pcm", traits: {"smithy.api#enumValue" => "pcm", "smithy.api#suppress" => ["EnumShape"]}))
    EncodingParameters.add_member(:compression_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "CompressionFactor", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "compressionFactor", "smithy.api#required" => {}}))
    EncodingParameters.add_member(:encoder_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderProfile, name: "EncoderProfile", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encoderProfile", "smithy.api#required" => {}}))
    EncodingParameters.type = Types::EncodingParameters
    EncodingParametersRequest.add_member(:compression_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "CompressionFactor", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "compressionFactor", "smithy.api#required" => {}}))
    EncodingParametersRequest.add_member(:encoder_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: EncoderProfile, name: "EncoderProfile", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encoderProfile", "smithy.api#required" => {}}))
    EncodingParametersRequest.type = Types::EncodingParametersRequest
    EncodingProfile.add_member(:distribution_h264_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTION_H264_DEFAULT", traits: {"smithy.api#enumValue" => "DISTRIBUTION_H264_DEFAULT"}))
    EncodingProfile.add_member(:contribution_h264_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRIBUTION_H264_DEFAULT", traits: {"smithy.api#enumValue" => "CONTRIBUTION_H264_DEFAULT"}))
    Encryption.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: Algorithm, name: "Algorithm", traits: {"smithy.api#jsonName" => "algorithm"}))
    Encryption.add_member(:constant_initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConstantInitializationVector", traits: {"smithy.api#jsonName" => "constantInitializationVector"}))
    Encryption.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DeviceId", traits: {"smithy.api#jsonName" => "deviceId"}))
    Encryption.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyType", traits: {"smithy.api#jsonName" => "keyType"}))
    Encryption.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region", traits: {"smithy.api#jsonName" => "region"}))
    Encryption.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    Encryption.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    Encryption.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SecretArn", traits: {"smithy.api#jsonName" => "secretArn"}))
    Encryption.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#jsonName" => "url"}))
    Encryption.type = Types::Encryption
    Entitlement.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    Entitlement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Entitlement.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    Entitlement.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlementArn", "smithy.api#required" => {}}))
    Entitlement.add_member(:entitlement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementStatus, name: "EntitlementStatus", traits: {"smithy.api#jsonName" => "entitlementStatus"}))
    Entitlement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Entitlement.add_member(:subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "Subscribers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subscribers", "smithy.api#required" => {}}))
    Entitlement.type = Types::Entitlement
    EntitlementStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EntitlementStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FabricConfiguration.add_member(:recovery_latency_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FabricLatencyMode, name: "RecoveryLatencyMode", traits: {"smithy.api#jsonName" => "recoveryLatencyMode", "smithy.api#required" => {}}))
    FabricConfiguration.type = Types::FabricConfiguration
    FabricLatencyMode.add_member(:balanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BALANCED", traits: {"smithy.api#enumValue" => "BALANCED"}))
    FabricLatencyMode.add_member(:low_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW_LATENCY", traits: {"smithy.api#enumValue" => "LOW_LATENCY"}))
    FailoverConfig.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, name: "FailoverMode", traits: {"smithy.api#jsonName" => "failoverMode"}))
    FailoverConfig.add_member(:recovery_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RecoveryWindow", traits: {"smithy.api#jsonName" => "recoveryWindow"}))
    FailoverConfig.add_member(:source_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: SourcePriority, name: "SourcePriority", traits: {"smithy.api#jsonName" => "sourcePriority"}))
    FailoverConfig.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    FailoverConfig.type = Types::FailoverConfig
    FailoverInputSourcePriorityMode.add_member(:no_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PRIORITY", traits: {"smithy.api#enumValue" => "NO_PRIORITY"}))
    FailoverInputSourcePriorityMode.add_member(:primary_secondary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY_SECONDARY", traits: {"smithy.api#enumValue" => "PRIMARY_SECONDARY"}))
    FailoverMode.add_member(:merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE", traits: {"smithy.api#enumValue" => "MERGE"}))
    FailoverMode.add_member(:failover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILOVER", traits: {"smithy.api#enumValue" => "FAILOVER"}))
    FailoverRouterInputConfiguration.add_member(:network_interface_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "NetworkInterfaceArn", traits: {"smithy.api#jsonName" => "networkInterfaceArn", "smithy.api#required" => {}}))
    FailoverRouterInputConfiguration.add_member(:protocol_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverRouterInputProtocolConfigurationList, name: "ProtocolConfigurations", traits: {"smithy.api#jsonName" => "protocolConfigurations", "smithy.api#required" => {}}))
    FailoverRouterInputConfiguration.add_member(:source_priority_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverInputSourcePriorityMode, name: "SourcePriorityMode", traits: {"smithy.api#jsonName" => "sourcePriorityMode", "smithy.api#required" => {}}))
    FailoverRouterInputConfiguration.add_member(:primary_source_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "PrimarySourceIndex", traits: {"smithy.api#jsonName" => "primarySourceIndex", "smithy.api#range" => {"min" => 0, "max" => 1}}))
    FailoverRouterInputConfiguration.type = Types::FailoverRouterInputConfiguration
    FailoverRouterInputIndexedStreamDetails.add_member(:source_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SourceIndex", traits: {"smithy.api#jsonName" => "sourceIndex", "smithy.api#required" => {}}))
    FailoverRouterInputIndexedStreamDetails.add_member(:source_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceIpAddress", traits: {"smithy.api#jsonName" => "sourceIpAddress"}))
    FailoverRouterInputIndexedStreamDetails.type = Types::FailoverRouterInputIndexedStreamDetails
    FailoverRouterInputProtocolConfiguration.add_member(:rist, Types::FailoverRouterInputProtocolConfiguration::Rist, ::Smithy::Schema::Shapes::MemberShape.new(target: RistRouterInputConfiguration, name: "Rist", traits: {"smithy.api#jsonName" => "rist"}))
    FailoverRouterInputProtocolConfiguration.add_member(:srt_listener, Types::FailoverRouterInputProtocolConfiguration::SrtListener, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtListenerRouterInputConfiguration, name: "SrtListener", traits: {"smithy.api#jsonName" => "srtListener"}))
    FailoverRouterInputProtocolConfiguration.add_member(:srt_caller, Types::FailoverRouterInputProtocolConfiguration::SrtCaller, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtCallerRouterInputConfiguration, name: "SrtCaller", traits: {"smithy.api#jsonName" => "srtCaller"}))
    FailoverRouterInputProtocolConfiguration.add_member(:rtp, Types::FailoverRouterInputProtocolConfiguration::Rtp, ::Smithy::Schema::Shapes::MemberShape.new(target: RtpRouterInputConfiguration, name: "Rtp", traits: {"smithy.api#jsonName" => "rtp"}))
    FailoverRouterInputProtocolConfiguration.add_member(:unknown, Types::FailoverRouterInputProtocolConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FailoverRouterInputProtocolConfiguration.type = Types::FailoverRouterInputProtocolConfiguration
    FailoverRouterInputProtocolConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverRouterInputProtocolConfiguration, name: "member"))
    FailoverRouterInputStreamDetails.add_member(:source_index_zero_stream_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverRouterInputIndexedStreamDetails, name: "SourceIndexZeroStreamDetails", traits: {"smithy.api#jsonName" => "sourceIndexZeroStreamDetails", "smithy.api#required" => {}}))
    FailoverRouterInputStreamDetails.add_member(:source_index_one_stream_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverRouterInputIndexedStreamDetails, name: "SourceIndexOneStreamDetails", traits: {"smithy.api#jsonName" => "sourceIndexOneStreamDetails", "smithy.api#required" => {}}))
    FailoverRouterInputStreamDetails.type = Types::FailoverRouterInputStreamDetails
    Flow.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "availabilityZone", "smithy.api#required" => {}}))
    Flow.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Flow.add_member(:egress_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EgressIp", traits: {"smithy.api#jsonName" => "egressIp"}))
    Flow.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofentitlement, name: "Entitlements", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlements", "smithy.api#required" => {}}))
    Flow.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    Flow.add_member(:media_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastream, name: "MediaStreams", traits: {"smithy.api#jsonName" => "mediaStreams"}))
    Flow.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Flow.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofoutput, name: "Outputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outputs", "smithy.api#required" => {}}))
    Flow.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "Source", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "source", "smithy.api#required" => {}}))
    Flow.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverConfig, name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    Flow.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsource, name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    Flow.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    Flow.add_member(:vpc_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcinterface, name: "VpcInterfaces", traits: {"smithy.api#jsonName" => "vpcInterfaces"}))
    Flow.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: Maintenance, name: "Maintenance", traits: {"smithy.api#jsonName" => "maintenance"}))
    Flow.add_member(:source_monitoring_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfig, name: "SourceMonitoringConfig", traits: {"smithy.api#jsonName" => "sourceMonitoringConfig"}))
    Flow.add_member(:flow_size, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowSize, name: "FlowSize", traits: {"smithy.api#jsonName" => "flowSize"}))
    Flow.add_member(:ndi_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiConfig, name: "NdiConfig", traits: {"smithy.api#jsonName" => "ndiConfig"}))
    Flow.add_member(:encoding_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingConfig, name: "EncodingConfig", traits: {"smithy.api#jsonName" => "encodingConfig"}))
    Flow.type = Types::Flow
    FlowSize.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    FlowSize.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE", traits: {"smithy.api#enumValue" => "LARGE"}))
    FlowSize.add_member(:large_4_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE_4X", traits: {"smithy.api#enumValue" => "LARGE_4X"}))
    FlowTransitEncryption.add_member(:encryption_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryptionKeyType, name: "EncryptionKeyType", traits: {"smithy.api#jsonName" => "encryptionKeyType"}))
    FlowTransitEncryption.add_member(:encryption_key_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryptionKeyConfiguration, name: "EncryptionKeyConfiguration", traits: {"smithy.api#jsonName" => "encryptionKeyConfiguration", "smithy.api#required" => {}}))
    FlowTransitEncryption.type = Types::FlowTransitEncryption
    FlowTransitEncryptionKeyConfiguration.add_member(:secrets_manager, Types::FlowTransitEncryptionKeyConfiguration::SecretsManager, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerEncryptionKeyConfiguration, name: "SecretsManager", traits: {"smithy.api#jsonName" => "secretsManager"}))
    FlowTransitEncryptionKeyConfiguration.add_member(:automatic, Types::FlowTransitEncryptionKeyConfiguration::Automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticEncryptionKeyConfiguration, name: "Automatic", traits: {"smithy.api#jsonName" => "automatic"}))
    FlowTransitEncryptionKeyConfiguration.add_member(:unknown, Types::FlowTransitEncryptionKeyConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FlowTransitEncryptionKeyConfiguration.type = Types::FlowTransitEncryptionKeyConfiguration
    FlowTransitEncryptionKeyType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    FlowTransitEncryptionKeyType.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    Fmtp.add_member(:channel_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelOrder", traits: {"smithy.api#jsonName" => "channelOrder"}))
    Fmtp.add_member(:colorimetry, ::Smithy::Schema::Shapes::MemberShape.new(target: Colorimetry, name: "Colorimetry", traits: {"smithy.api#jsonName" => "colorimetry"}))
    Fmtp.add_member(:exact_framerate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ExactFramerate", traits: {"smithy.api#jsonName" => "exactFramerate"}))
    Fmtp.add_member(:par, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Par", traits: {"smithy.api#jsonName" => "par"}))
    Fmtp.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, name: "Range", traits: {"smithy.api#jsonName" => "range"}))
    Fmtp.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "ScanMode", traits: {"smithy.api#jsonName" => "scanMode"}))
    Fmtp.add_member(:tcs, ::Smithy::Schema::Shapes::MemberShape.new(target: Tcs, name: "Tcs", traits: {"smithy.api#jsonName" => "tcs"}))
    Fmtp.type = Types::Fmtp
    FmtpRequest.add_member(:channel_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ChannelOrder", traits: {"smithy.api#jsonName" => "channelOrder"}))
    FmtpRequest.add_member(:colorimetry, ::Smithy::Schema::Shapes::MemberShape.new(target: Colorimetry, name: "Colorimetry", traits: {"smithy.api#jsonName" => "colorimetry"}))
    FmtpRequest.add_member(:exact_framerate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ExactFramerate", traits: {"smithy.api#jsonName" => "exactFramerate"}))
    FmtpRequest.add_member(:par, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Par", traits: {"smithy.api#jsonName" => "par"}))
    FmtpRequest.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, name: "Range", traits: {"smithy.api#jsonName" => "range"}))
    FmtpRequest.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "ScanMode", traits: {"smithy.api#jsonName" => "scanMode"}))
    FmtpRequest.add_member(:tcs, ::Smithy::Schema::Shapes::MemberShape.new(target: Tcs, name: "Tcs", traits: {"smithy.api#jsonName" => "tcs"}))
    FmtpRequest.type = Types::FmtpRequest
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ForbiddenException.type = Types::ForbiddenException
    ForwardErrorCorrectionState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ForwardErrorCorrectionState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    FrameResolution.add_member(:frame_height, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "FrameHeight", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "frameHeight", "smithy.api#required" => {}}))
    FrameResolution.add_member(:frame_width, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "FrameWidth", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "frameWidth", "smithy.api#required" => {}}))
    FrameResolution.type = Types::FrameResolution
    FrozenFrames.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    FrozenFrames.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds"}))
    FrozenFrames.type = Types::FrozenFrames
    FrozenFramesConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentQualityAnalysisState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    FrozenFramesConfiguration.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterCqaThresholdSeconds, name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds", "smithy.api#required" => {}}))
    FrozenFramesConfiguration.type = Types::FrozenFramesConfiguration
    Gateway.add_member(:egress_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "EgressCidrBlocks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "egressCidrBlocks", "smithy.api#required" => {}}))
    Gateway.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayArn", "smithy.api#required" => {}}))
    Gateway.add_member(:gateway_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, name: "GatewayMessages", traits: {"smithy.api#jsonName" => "gatewayMessages"}))
    Gateway.add_member(:gateway_state, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayState, name: "GatewayState", traits: {"smithy.api#jsonName" => "gatewayState"}))
    Gateway.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Gateway.add_member(:networks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgatewaynetwork, name: "Networks", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networks", "smithy.api#required" => {}}))
    Gateway.type = Types::Gateway
    GatewayBridgeSource.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeArn", "smithy.api#required" => {}}))
    GatewayBridgeSource.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    GatewayBridgeSource.type = Types::GatewayBridgeSource
    GatewayInstance.add_member(:bridge_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgePlacement, name: "BridgePlacement", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgePlacement", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatus, name: "ConnectionStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "connectionStatus", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayArn", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayInstanceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayInstanceArn", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "instanceId", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:instance_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, name: "InstanceMessages", traits: {"smithy.api#jsonName" => "instanceMessages"}))
    GatewayInstance.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "InstanceState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "instanceState", "smithy.api#required" => {}}))
    GatewayInstance.add_member(:running_bridge_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RunningBridgeCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "runningBridgeCount", "smithy.api#required" => {}}))
    GatewayInstance.type = Types::GatewayInstance
    GatewayNetwork.add_member(:cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CidrBlock", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cidrBlock", "smithy.api#required" => {}}))
    GatewayNetwork.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GatewayNetwork.type = Types::GatewayNetwork
    GatewayState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    GatewayState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GatewayState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    GatewayState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    GatewayState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    GatewayState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    GetRouterInputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouterInputRequest.type = Types::GetRouterInputRequest
    GetRouterInputResponse.add_member(:router_input, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInput, name: "RouterInput", traits: {"smithy.api#jsonName" => "routerInput", "smithy.api#required" => {}}))
    GetRouterInputResponse.type = Types::GetRouterInputResponse
    GetRouterInputSourceMetadataRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouterInputSourceMetadataRequest.type = Types::GetRouterInputSourceMetadataRequest
    GetRouterInputSourceMetadataResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    GetRouterInputSourceMetadataResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GetRouterInputSourceMetadataResponse.add_member(:source_metadata_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputSourceMetadataDetails, name: "SourceMetadataDetails", traits: {"smithy.api#jsonName" => "sourceMetadataDetails", "smithy.api#required" => {}}))
    GetRouterInputSourceMetadataResponse.type = Types::GetRouterInputSourceMetadataResponse
    GetRouterInputThumbnailRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouterInputThumbnailRequest.type = Types::GetRouterInputThumbnailRequest
    GetRouterInputThumbnailResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    GetRouterInputThumbnailResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GetRouterInputThumbnailResponse.add_member(:thumbnail_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputThumbnailDetails, name: "ThumbnailDetails", traits: {"smithy.api#jsonName" => "thumbnailDetails", "smithy.api#required" => {}}))
    GetRouterInputThumbnailResponse.type = Types::GetRouterInputThumbnailResponse
    GetRouterNetworkInterfaceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouterNetworkInterfaceRequest.type = Types::GetRouterNetworkInterfaceRequest
    GetRouterNetworkInterfaceResponse.add_member(:router_network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterface, name: "RouterNetworkInterface", traits: {"smithy.api#jsonName" => "routerNetworkInterface", "smithy.api#required" => {}}))
    GetRouterNetworkInterfaceResponse.type = Types::GetRouterNetworkInterfaceResponse
    GetRouterOutputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRouterOutputRequest.type = Types::GetRouterOutputRequest
    GetRouterOutputResponse.add_member(:router_output, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutput, name: "RouterOutput", traits: {"smithy.api#jsonName" => "routerOutput", "smithy.api#required" => {}}))
    GetRouterOutputResponse.type = Types::GetRouterOutputResponse
    GrantEntitlementRequest.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    GrantEntitlementRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GrantEntitlementRequest.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    GrantEntitlementRequest.add_member(:entitlement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementStatus, name: "EntitlementStatus", traits: {"smithy.api#jsonName" => "entitlementStatus"}))
    GrantEntitlementRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    GrantEntitlementRequest.add_member(:subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "Subscribers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subscribers", "smithy.api#required" => {}}))
    GrantEntitlementRequest.add_member(:entitlement_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "EntitlementTags", traits: {"smithy.api#jsonName" => "entitlementTags"}))
    GrantEntitlementRequest.type = Types::GrantEntitlementRequest
    GrantFlowEntitlements420Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    GrantFlowEntitlements420Exception.type = Types::GrantFlowEntitlements420Exception
    GrantFlowEntitlementsRequest.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgrantentitlementrequest, name: "Entitlements", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlements", "smithy.api#required" => {}}))
    GrantFlowEntitlementsRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    GrantFlowEntitlementsRequest.type = Types::GrantFlowEntitlementsRequest
    GrantFlowEntitlementsResponse.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofentitlement, name: "Entitlements", traits: {"smithy.api#jsonName" => "entitlements"}))
    GrantFlowEntitlementsResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    GrantFlowEntitlementsResponse.type = Types::GrantFlowEntitlementsResponse
    IngressGatewayBridge.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId", traits: {"smithy.api#jsonName" => "instanceId"}))
    IngressGatewayBridge.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxBitrate", "smithy.api#required" => {}}))
    IngressGatewayBridge.add_member(:max_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxOutputs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "maxOutputs", "smithy.api#required" => {}}))
    IngressGatewayBridge.type = Types::IngressGatewayBridge
    InputConfiguration.add_member(:input_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InputIp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "inputIp", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:input_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "InputPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "inputPort", "smithy.api#required" => {}}))
    InputConfiguration.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: Interface, name: "Interface", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "interface", "smithy.api#required" => {}}))
    InputConfiguration.type = Types::InputConfiguration
    InputConfigurationRequest.add_member(:input_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "InputPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "inputPort", "smithy.api#required" => {}}))
    InputConfigurationRequest.add_member(:interface, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceRequest, name: "Interface", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "interface", "smithy.api#required" => {}}))
    InputConfigurationRequest.type = Types::InputConfigurationRequest
    InstanceState.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERING", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    InstanceState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InstanceState.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    InstanceState.add_member(:deregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTERED", traits: {"smithy.api#enumValue" => "DEREGISTERED"}))
    InstanceState.add_member(:registration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTRATION_ERROR", traits: {"smithy.api#enumValue" => "REGISTRATION_ERROR"}))
    InstanceState.add_member(:deregistration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTRATION_ERROR", traits: {"smithy.api#enumValue" => "DEREGISTRATION_ERROR"}))
    Interface.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Interface.type = Types::Interface
    InterfaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    InterfaceRequest.type = Types::InterfaceRequest
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    KeyType.add_member(:speke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "speke", traits: {"smithy.api#enumValue" => "speke", "smithy.api#suppress" => ["EnumShape"]}))
    KeyType.add_member(:static_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "static_key", traits: {"smithy.api#enumValue" => "static-key", "smithy.api#suppress" => ["EnumShape"]}))
    KeyType.add_member(:srt_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "srt_password", traits: {"smithy.api#enumValue" => "srt-password", "smithy.api#suppress" => ["EnumShape"]}))
    ListBridgesRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FilterArn", traits: {"smithy.api#httpQuery" => "filterArn"}))
    ListBridgesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBridgesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBridgesRequest.type = Types::ListBridgesRequest
    ListBridgesResponse.add_member(:bridges, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedbridge, name: "Bridges", traits: {"smithy.api#jsonName" => "bridges"}))
    ListBridgesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListBridgesResponse.type = Types::ListBridgesResponse
    ListEntitlementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEntitlementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEntitlementsRequest.type = Types::ListEntitlementsRequest
    ListEntitlementsResponse.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedentitlement, name: "Entitlements", traits: {"smithy.api#jsonName" => "entitlements"}))
    ListEntitlementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListEntitlementsResponse.type = Types::ListEntitlementsResponse
    ListFlowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFlowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFlowsRequest.type = Types::ListFlowsRequest
    ListFlowsResponse.add_member(:flows, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedflow, name: "Flows", traits: {"smithy.api#jsonName" => "flows"}))
    ListFlowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListFlowsResponse.type = Types::ListFlowsResponse
    ListGatewayInstancesRequest.add_member(:filter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FilterArn", traits: {"smithy.api#httpQuery" => "filterArn"}))
    ListGatewayInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGatewayInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGatewayInstancesRequest.type = Types::ListGatewayInstancesRequest
    ListGatewayInstancesResponse.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedgatewayinstance, name: "Instances", traits: {"smithy.api#jsonName" => "instances"}))
    ListGatewayInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListGatewayInstancesResponse.type = Types::ListGatewayInstancesResponse
    ListGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGatewaysRequest.type = Types::ListGatewaysRequest
    ListGatewaysResponse.add_member(:gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistedgateway, name: "Gateways", traits: {"smithy.api#jsonName" => "gateways"}))
    ListGatewaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListGatewaysResponse.type = Types::ListGatewaysResponse
    ListOfferingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListOfferingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListOfferingsRequest.type = Types::ListOfferingsRequest
    ListOfferingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListOfferingsResponse.add_member(:offerings, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofoffering, name: "Offerings", traits: {"smithy.api#jsonName" => "offerings"}))
    ListOfferingsResponse.type = Types::ListOfferingsResponse
    ListReservationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListReservationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReservationsRequest.type = Types::ListReservationsRequest
    ListReservationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListReservationsResponse.add_member(:reservations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreservation, name: "Reservations", traits: {"smithy.api#jsonName" => "reservations"}))
    ListReservationsResponse.type = Types::ListReservationsResponse
    ListRouterInputsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRouterInputsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRouterInputsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputFilterList, name: "Filters", traits: {"smithy.api#jsonName" => "filters"}))
    ListRouterInputsRequest.type = Types::ListRouterInputsRequest
    ListRouterInputsResponse.add_member(:router_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedRouterInputList, name: "RouterInputs", traits: {"smithy.api#jsonName" => "routerInputs", "smithy.api#required" => {}}))
    ListRouterInputsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListRouterInputsResponse.type = Types::ListRouterInputsResponse
    ListRouterNetworkInterfacesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRouterNetworkInterfacesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRouterNetworkInterfacesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceFilterList, name: "Filters", traits: {"smithy.api#jsonName" => "filters"}))
    ListRouterNetworkInterfacesRequest.type = Types::ListRouterNetworkInterfacesRequest
    ListRouterNetworkInterfacesResponse.add_member(:router_network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedRouterNetworkInterfaceList, name: "RouterNetworkInterfaces", traits: {"smithy.api#jsonName" => "routerNetworkInterfaces", "smithy.api#required" => {}}))
    ListRouterNetworkInterfacesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListRouterNetworkInterfacesResponse.type = Types::ListRouterNetworkInterfacesResponse
    ListRouterOutputsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRouterOutputsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRouterOutputsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputFilterList, name: "Filters", traits: {"smithy.api#jsonName" => "filters"}))
    ListRouterOutputsRequest.type = Types::ListRouterOutputsRequest
    ListRouterOutputsResponse.add_member(:router_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedRouterOutputList, name: "RouterOutputs", traits: {"smithy.api#jsonName" => "routerOutputs", "smithy.api#required" => {}}))
    ListRouterOutputsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListRouterOutputsResponse.type = Types::ListRouterOutputsResponse
    ListTagsForGlobalResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForGlobalResourceRequest.type = Types::ListTagsForGlobalResourceRequest
    ListTagsForGlobalResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForGlobalResourceResponse.type = Types::ListTagsForGlobalResourceResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListedBridge.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeArn", "smithy.api#required" => {}}))
    ListedBridge.add_member(:bridge_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeState, name: "BridgeState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeState", "smithy.api#required" => {}}))
    ListedBridge.add_member(:bridge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeType", "smithy.api#required" => {}}))
    ListedBridge.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedBridge.add_member(:placement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PlacementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "placementArn", "smithy.api#required" => {}}))
    ListedBridge.type = Types::ListedBridge
    ListedEntitlement.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    ListedEntitlement.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlementArn", "smithy.api#required" => {}}))
    ListedEntitlement.add_member(:entitlement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "entitlementName", "smithy.api#required" => {}}))
    ListedEntitlement.type = Types::ListedEntitlement
    ListedFlow.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "availabilityZone", "smithy.api#required" => {}}))
    ListedFlow.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    ListedFlow.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    ListedFlow.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedFlow.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceType", "smithy.api#required" => {}}))
    ListedFlow.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    ListedFlow.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: Maintenance, name: "Maintenance", traits: {"smithy.api#jsonName" => "maintenance"}))
    ListedFlow.type = Types::ListedFlow
    ListedGateway.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayArn", "smithy.api#required" => {}}))
    ListedGateway.add_member(:gateway_state, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayState, name: "GatewayState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayState", "smithy.api#required" => {}}))
    ListedGateway.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedGateway.type = Types::ListedGateway
    ListedGatewayInstance.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayArn", "smithy.api#required" => {}}))
    ListedGatewayInstance.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayInstanceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gatewayInstanceArn", "smithy.api#required" => {}}))
    ListedGatewayInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "instanceId", "smithy.api#required" => {}}))
    ListedGatewayInstance.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "InstanceState", traits: {"smithy.api#jsonName" => "instanceState"}))
    ListedGatewayInstance.type = Types::ListedGatewayInstance
    ListedRouterInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputType, name: "InputType", traits: {"smithy.api#jsonName" => "inputType", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:routed_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RoutedOutputs", traits: {"smithy.api#jsonName" => "routedOutputs", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:maximum_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MaximumBitrate", traits: {"smithy.api#jsonName" => "maximumBitrate", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:routing_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "RoutingScope", traits: {"smithy.api#jsonName" => "routingScope", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListedRouterInput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListedRouterInput.add_member(:message_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MessageCount", traits: {"smithy.api#jsonName" => "messageCount", "smithy.api#required" => {}}))
    ListedRouterInput.add_member(:network_interface_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "NetworkInterfaceArn", traits: {"smithy.api#jsonName" => "networkInterfaceArn"}))
    ListedRouterInput.add_member(:maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceScheduleType, name: "MaintenanceScheduleType", traits: {"smithy.api#jsonName" => "maintenanceScheduleType"}))
    ListedRouterInput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "MaintenanceSchedule", traits: {"smithy.api#jsonName" => "maintenanceSchedule"}))
    ListedRouterInput.type = Types::ListedRouterInput
    ListedRouterInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedRouterInput, name: "member"))
    ListedRouterNetworkInterface.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedRouterNetworkInterface.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    ListedRouterNetworkInterface.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    ListedRouterNetworkInterface.add_member(:network_interface_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceType, name: "NetworkInterfaceType", traits: {"smithy.api#jsonName" => "networkInterfaceType", "smithy.api#required" => {}}))
    ListedRouterNetworkInterface.add_member(:associated_output_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "AssociatedOutputCount", traits: {"smithy.api#jsonName" => "associatedOutputCount", "smithy.api#required" => {}}))
    ListedRouterNetworkInterface.add_member(:associated_input_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "AssociatedInputCount", traits: {"smithy.api#jsonName" => "associatedInputCount", "smithy.api#required" => {}}))
    ListedRouterNetworkInterface.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    ListedRouterNetworkInterface.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName", "smithy.api#required" => {}}))
    ListedRouterNetworkInterface.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListedRouterNetworkInterface.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListedRouterNetworkInterface.type = Types::ListedRouterNetworkInterface
    ListedRouterNetworkInterfaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedRouterNetworkInterface, name: "member"))
    ListedRouterOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:output_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputType, name: "OutputType", traits: {"smithy.api#jsonName" => "outputType", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:routed_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputRoutedState, name: "RoutedState", traits: {"smithy.api#jsonName" => "routedState", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:maximum_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MaximumBitrate", traits: {"smithy.api#jsonName" => "maximumBitrate", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:routing_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "RoutingScope", traits: {"smithy.api#jsonName" => "routingScope", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListedRouterOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListedRouterOutput.add_member(:message_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MessageCount", traits: {"smithy.api#jsonName" => "messageCount", "smithy.api#required" => {}}))
    ListedRouterOutput.add_member(:routed_input_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "RoutedInputArn", traits: {"smithy.api#jsonName" => "routedInputArn"}))
    ListedRouterOutput.add_member(:network_interface_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "NetworkInterfaceArn", traits: {"smithy.api#jsonName" => "networkInterfaceArn"}))
    ListedRouterOutput.add_member(:maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceScheduleType, name: "MaintenanceScheduleType", traits: {"smithy.api#jsonName" => "maintenanceScheduleType"}))
    ListedRouterOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "MaintenanceSchedule", traits: {"smithy.api#jsonName" => "maintenanceSchedule"}))
    ListedRouterOutput.type = Types::ListedRouterOutput
    ListedRouterOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedRouterOutput, name: "member"))
    Maintenance.add_member(:maintenance_day, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceDay, name: "MaintenanceDay", traits: {"smithy.api#jsonName" => "maintenanceDay"}))
    Maintenance.add_member(:maintenance_deadline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MaintenanceDeadline", traits: {"smithy.api#jsonName" => "maintenanceDeadline"}))
    Maintenance.add_member(:maintenance_scheduled_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MaintenanceScheduledDate", traits: {"smithy.api#jsonName" => "maintenanceScheduledDate"}))
    Maintenance.add_member(:maintenance_start_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MaintenanceStartHour", traits: {"smithy.api#jsonName" => "maintenanceStartHour"}))
    Maintenance.type = Types::Maintenance
    MaintenanceConfiguration.add_member(:preferred_day_time, Types::MaintenanceConfiguration::PreferredDayTime, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredDayTimeMaintenanceConfiguration, name: "PreferredDayTime", traits: {"smithy.api#jsonName" => "preferredDayTime"}))
    MaintenanceConfiguration.add_member(:default, Types::MaintenanceConfiguration::Default, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultMaintenanceConfiguration, name: "Default", traits: {"smithy.api#jsonName" => "default"}))
    MaintenanceConfiguration.add_member(:unknown, Types::MaintenanceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MaintenanceConfiguration.type = Types::MaintenanceConfiguration
    MaintenanceDay.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Monday", traits: {"smithy.api#enumValue" => "Monday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Tuesday", traits: {"smithy.api#enumValue" => "Tuesday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Wednesday", traits: {"smithy.api#enumValue" => "Wednesday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Thursday", traits: {"smithy.api#enumValue" => "Thursday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Friday", traits: {"smithy.api#enumValue" => "Friday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Saturday", traits: {"smithy.api#enumValue" => "Saturday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceDay.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sunday", traits: {"smithy.api#enumValue" => "Sunday", "smithy.api#suppress" => ["EnumShape"]}))
    MaintenanceSchedule.add_member(:window, Types::MaintenanceSchedule::Window, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowMaintenanceSchedule, name: "Window", traits: {"smithy.api#jsonName" => "window"}))
    MaintenanceSchedule.add_member(:unknown, Types::MaintenanceSchedule::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MaintenanceSchedule.type = Types::MaintenanceSchedule
    MaintenanceScheduleType.add_member(:window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOW", traits: {"smithy.api#enumValue" => "WINDOW"}))
    MaintenanceType.add_member(:preferred_day_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFERRED_DAY_TIME", traits: {"smithy.api#enumValue" => "PREFERRED_DAY_TIME"}))
    MaintenanceType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    MediaConnectFlowRouterInputConfiguration.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    MediaConnectFlowRouterInputConfiguration.add_member(:flow_output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowOutputArn, name: "FlowOutputArn", traits: {"smithy.api#jsonName" => "flowOutputArn"}))
    MediaConnectFlowRouterInputConfiguration.add_member(:source_transit_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryption, name: "SourceTransitDecryption", traits: {"smithy.api#jsonName" => "sourceTransitDecryption", "smithy.api#required" => {}}))
    MediaConnectFlowRouterInputConfiguration.type = Types::MediaConnectFlowRouterInputConfiguration
    MediaConnectFlowRouterInputStreamDetails.type = Types::MediaConnectFlowRouterInputStreamDetails
    MediaConnectFlowRouterOutputConfiguration.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    MediaConnectFlowRouterOutputConfiguration.add_member(:flow_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowSourceArn, name: "FlowSourceArn", traits: {"smithy.api#jsonName" => "flowSourceArn"}))
    MediaConnectFlowRouterOutputConfiguration.add_member(:destination_transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryption, name: "DestinationTransitEncryption", traits: {"smithy.api#jsonName" => "destinationTransitEncryption", "smithy.api#required" => {}}))
    MediaConnectFlowRouterOutputConfiguration.type = Types::MediaConnectFlowRouterOutputConfiguration
    MediaConnectFlowRouterOutputStreamDetails.type = Types::MediaConnectFlowRouterOutputStreamDetails
    MediaLiveChannelPipelineId.add_member(:pipeline_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIPELINE_0", traits: {"smithy.api#enumValue" => "PIPELINE_0"}))
    MediaLiveChannelPipelineId.add_member(:pipeline_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIPELINE_1", traits: {"smithy.api#enumValue" => "PIPELINE_1"}))
    MediaLiveChannelRouterInputConfiguration.add_member(:media_live_channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveChannelArn, name: "MediaLiveChannelArn", traits: {"smithy.api#jsonName" => "mediaLiveChannelArn"}))
    MediaLiveChannelRouterInputConfiguration.add_member(:media_live_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveChannelPipelineId, name: "MediaLivePipelineId", traits: {"smithy.api#jsonName" => "mediaLivePipelineId"}))
    MediaLiveChannelRouterInputConfiguration.add_member(:media_live_channel_output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaLiveChannelOutputName", traits: {"smithy.api#jsonName" => "mediaLiveChannelOutputName"}))
    MediaLiveChannelRouterInputConfiguration.add_member(:source_transit_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveTransitEncryption, name: "SourceTransitDecryption", traits: {"smithy.api#jsonName" => "sourceTransitDecryption", "smithy.api#required" => {}}))
    MediaLiveChannelRouterInputConfiguration.type = Types::MediaLiveChannelRouterInputConfiguration
    MediaLiveChannelRouterInputStreamDetails.type = Types::MediaLiveChannelRouterInputStreamDetails
    MediaLiveInputPipelineId.add_member(:pipeline_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIPELINE_0", traits: {"smithy.api#enumValue" => "PIPELINE_0"}))
    MediaLiveInputPipelineId.add_member(:pipeline_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIPELINE_1", traits: {"smithy.api#enumValue" => "PIPELINE_1"}))
    MediaLiveInputRouterOutputConfiguration.add_member(:media_live_input_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveInputArn, name: "MediaLiveInputArn", traits: {"smithy.api#jsonName" => "mediaLiveInputArn"}))
    MediaLiveInputRouterOutputConfiguration.add_member(:media_live_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveInputPipelineId, name: "MediaLivePipelineId", traits: {"smithy.api#jsonName" => "mediaLivePipelineId"}))
    MediaLiveInputRouterOutputConfiguration.add_member(:destination_transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveTransitEncryption, name: "DestinationTransitEncryption", traits: {"smithy.api#jsonName" => "destinationTransitEncryption", "smithy.api#required" => {}}))
    MediaLiveInputRouterOutputConfiguration.type = Types::MediaLiveInputRouterOutputConfiguration
    MediaLiveInputRouterOutputStreamDetails.type = Types::MediaLiveInputRouterOutputStreamDetails
    MediaLiveTransitEncryption.add_member(:encryption_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveTransitEncryptionKeyType, name: "EncryptionKeyType", traits: {"smithy.api#jsonName" => "encryptionKeyType"}))
    MediaLiveTransitEncryption.add_member(:encryption_key_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveTransitEncryptionKeyConfiguration, name: "EncryptionKeyConfiguration", traits: {"smithy.api#jsonName" => "encryptionKeyConfiguration", "smithy.api#required" => {}}))
    MediaLiveTransitEncryption.type = Types::MediaLiveTransitEncryption
    MediaLiveTransitEncryptionKeyConfiguration.add_member(:secrets_manager, Types::MediaLiveTransitEncryptionKeyConfiguration::SecretsManager, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerEncryptionKeyConfiguration, name: "SecretsManager", traits: {"smithy.api#jsonName" => "secretsManager"}))
    MediaLiveTransitEncryptionKeyConfiguration.add_member(:automatic, Types::MediaLiveTransitEncryptionKeyConfiguration::Automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticEncryptionKeyConfiguration, name: "Automatic", traits: {"smithy.api#jsonName" => "automatic"}))
    MediaLiveTransitEncryptionKeyConfiguration.add_member(:unknown, Types::MediaLiveTransitEncryptionKeyConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MediaLiveTransitEncryptionKeyConfiguration.type = Types::MediaLiveTransitEncryptionKeyConfiguration
    MediaLiveTransitEncryptionKeyType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    MediaLiveTransitEncryptionKeyType.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    MediaStream.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamAttributes, name: "Attributes", traits: {"smithy.api#jsonName" => "attributes"}))
    MediaStream.add_member(:clock_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ClockRate", traits: {"smithy.api#jsonName" => "clockRate"}))
    MediaStream.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    MediaStream.add_member(:fmt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Fmt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "fmt", "smithy.api#required" => {}}))
    MediaStream.add_member(:media_stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MediaStreamId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamId", "smithy.api#required" => {}}))
    MediaStream.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStream.add_member(:media_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamType, name: "MediaStreamType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamType", "smithy.api#required" => {}}))
    MediaStream.add_member(:video_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VideoFormat", traits: {"smithy.api#jsonName" => "videoFormat"}))
    MediaStream.type = Types::MediaStream
    MediaStreamAttributes.add_member(:fmtp, ::Smithy::Schema::Shapes::MemberShape.new(target: Fmtp, name: "Fmtp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "fmtp", "smithy.api#required" => {}}))
    MediaStreamAttributes.add_member(:lang, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Lang", traits: {"smithy.api#jsonName" => "lang"}))
    MediaStreamAttributes.type = Types::MediaStreamAttributes
    MediaStreamAttributesRequest.add_member(:fmtp, ::Smithy::Schema::Shapes::MemberShape.new(target: FmtpRequest, name: "Fmtp", traits: {"smithy.api#jsonName" => "fmtp"}))
    MediaStreamAttributesRequest.add_member(:lang, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Lang", traits: {"smithy.api#jsonName" => "lang"}))
    MediaStreamAttributesRequest.type = Types::MediaStreamAttributesRequest
    MediaStreamOutputConfiguration.add_member(:destination_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdestinationconfiguration, name: "DestinationConfigurations", traits: {"smithy.api#jsonName" => "destinationConfigurations"}))
    MediaStreamOutputConfiguration.add_member(:encoding_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingName, name: "EncodingName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encodingName", "smithy.api#required" => {}}))
    MediaStreamOutputConfiguration.add_member(:encoding_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingParameters, name: "EncodingParameters", traits: {"smithy.api#jsonName" => "encodingParameters"}))
    MediaStreamOutputConfiguration.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStreamOutputConfiguration.type = Types::MediaStreamOutputConfiguration
    MediaStreamOutputConfigurationRequest.add_member(:destination_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdestinationconfigurationrequest, name: "DestinationConfigurations", traits: {"smithy.api#jsonName" => "destinationConfigurations"}))
    MediaStreamOutputConfigurationRequest.add_member(:encoding_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingName, name: "EncodingName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encodingName", "smithy.api#required" => {}}))
    MediaStreamOutputConfigurationRequest.add_member(:encoding_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingParametersRequest, name: "EncodingParameters", traits: {"smithy.api#jsonName" => "encodingParameters"}))
    MediaStreamOutputConfigurationRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStreamOutputConfigurationRequest.type = Types::MediaStreamOutputConfigurationRequest
    MediaStreamSourceConfiguration.add_member(:encoding_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingName, name: "EncodingName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encodingName", "smithy.api#required" => {}}))
    MediaStreamSourceConfiguration.add_member(:input_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofinputconfiguration, name: "InputConfigurations", traits: {"smithy.api#jsonName" => "inputConfigurations"}))
    MediaStreamSourceConfiguration.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStreamSourceConfiguration.type = Types::MediaStreamSourceConfiguration
    MediaStreamSourceConfigurationRequest.add_member(:encoding_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingName, name: "EncodingName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encodingName", "smithy.api#required" => {}}))
    MediaStreamSourceConfigurationRequest.add_member(:input_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofinputconfigurationrequest, name: "InputConfigurations", traits: {"smithy.api#jsonName" => "inputConfigurations"}))
    MediaStreamSourceConfigurationRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaStreamName", "smithy.api#required" => {}}))
    MediaStreamSourceConfigurationRequest.type = Types::MediaStreamSourceConfigurationRequest
    MediaStreamType.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "video", traits: {"smithy.api#enumValue" => "video", "smithy.api#suppress" => ["EnumShape"]}))
    MediaStreamType.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "audio", traits: {"smithy.api#enumValue" => "audio", "smithy.api#suppress" => ["EnumShape"]}))
    MediaStreamType.add_member(:ancillary_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ancillary_data", traits: {"smithy.api#enumValue" => "ancillary-data", "smithy.api#suppress" => ["EnumShape"]}))
    MergeRouterInputConfiguration.add_member(:network_interface_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "NetworkInterfaceArn", traits: {"smithy.api#jsonName" => "networkInterfaceArn", "smithy.api#required" => {}}))
    MergeRouterInputConfiguration.add_member(:protocol_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeRouterInputProtocolConfigurationList, name: "ProtocolConfigurations", traits: {"smithy.api#jsonName" => "protocolConfigurations", "smithy.api#required" => {}}))
    MergeRouterInputConfiguration.add_member(:merge_recovery_window_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MergeRecoveryWindowMilliseconds", traits: {"smithy.api#jsonName" => "mergeRecoveryWindowMilliseconds", "smithy.api#required" => {}}))
    MergeRouterInputConfiguration.type = Types::MergeRouterInputConfiguration
    MergeRouterInputIndexedStreamDetails.add_member(:source_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SourceIndex", traits: {"smithy.api#jsonName" => "sourceIndex", "smithy.api#required" => {}}))
    MergeRouterInputIndexedStreamDetails.add_member(:source_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceIpAddress", traits: {"smithy.api#jsonName" => "sourceIpAddress"}))
    MergeRouterInputIndexedStreamDetails.type = Types::MergeRouterInputIndexedStreamDetails
    MergeRouterInputProtocolConfiguration.add_member(:rtp, Types::MergeRouterInputProtocolConfiguration::Rtp, ::Smithy::Schema::Shapes::MemberShape.new(target: RtpRouterInputConfiguration, name: "Rtp", traits: {"smithy.api#jsonName" => "rtp"}))
    MergeRouterInputProtocolConfiguration.add_member(:rist, Types::MergeRouterInputProtocolConfiguration::Rist, ::Smithy::Schema::Shapes::MemberShape.new(target: RistRouterInputConfiguration, name: "Rist", traits: {"smithy.api#jsonName" => "rist"}))
    MergeRouterInputProtocolConfiguration.add_member(:unknown, Types::MergeRouterInputProtocolConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MergeRouterInputProtocolConfiguration.type = Types::MergeRouterInputProtocolConfiguration
    MergeRouterInputProtocolConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeRouterInputProtocolConfiguration, name: "member"))
    MergeRouterInputStreamDetails.add_member(:source_index_zero_stream_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeRouterInputIndexedStreamDetails, name: "SourceIndexZeroStreamDetails", traits: {"smithy.api#jsonName" => "sourceIndexZeroStreamDetails", "smithy.api#required" => {}}))
    MergeRouterInputStreamDetails.add_member(:source_index_one_stream_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeRouterInputIndexedStreamDetails, name: "SourceIndexOneStreamDetails", traits: {"smithy.api#jsonName" => "sourceIndexOneStreamDetails", "smithy.api#required" => {}}))
    MergeRouterInputStreamDetails.type = Types::MergeRouterInputStreamDetails
    MessageDetail.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    MessageDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    MessageDetail.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceName", traits: {"smithy.api#jsonName" => "resourceName"}))
    MessageDetail.type = Types::MessageDetail
    Messages.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "Errors", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "errors", "smithy.api#required" => {}}))
    Messages.type = Types::Messages
    MonitoringConfig.add_member(:thumbnail_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailState, name: "ThumbnailState", traits: {"smithy.api#jsonName" => "thumbnailState"}))
    MonitoringConfig.add_member(:audio_monitoring_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaudiomonitoringsetting, name: "AudioMonitoringSettings", traits: {"smithy.api#jsonName" => "audioMonitoringSettings"}))
    MonitoringConfig.add_member(:content_quality_analysis_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentQualityAnalysisState, name: "ContentQualityAnalysisState", traits: {"smithy.api#jsonName" => "contentQualityAnalysisState"}))
    MonitoringConfig.add_member(:video_monitoring_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvideomonitoringsetting, name: "VideoMonitoringSettings", traits: {"smithy.api#jsonName" => "videoMonitoringSettings"}))
    MonitoringConfig.type = Types::MonitoringConfig
    MulticastSourceSettings.add_member(:multicast_source_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MulticastSourceIp", traits: {"smithy.api#jsonName" => "multicastSourceIp"}))
    MulticastSourceSettings.type = Types::MulticastSourceSettings
    NdiConfig.add_member(:ndi_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiState, name: "NdiState", traits: {"smithy.api#jsonName" => "ndiState"}))
    NdiConfig.add_member(:machine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MachineName", traits: {"smithy.api#jsonName" => "machineName"}))
    NdiConfig.add_member(:ndi_discovery_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofndidiscoveryserverconfig, name: "NdiDiscoveryServers", traits: {"smithy.api#jsonName" => "ndiDiscoveryServers"}))
    NdiConfig.type = Types::NdiConfig
    NdiDiscoveryServerConfig.add_member(:discovery_server_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DiscoveryServerAddress", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "discoveryServerAddress", "smithy.api#required" => {}}))
    NdiDiscoveryServerConfig.add_member(:discovery_server_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DiscoveryServerPort", traits: {"smithy.api#jsonName" => "discoveryServerPort"}))
    NdiDiscoveryServerConfig.add_member(:vpc_interface_adapter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VpcInterfaceAdapter", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcInterfaceAdapter", "smithy.api#required" => {}}))
    NdiDiscoveryServerConfig.type = Types::NdiDiscoveryServerConfig
    NdiMediaInfo.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofndimediastreaminfo, name: "Streams", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "streams", "smithy.api#required" => {}}))
    NdiMediaInfo.type = Types::NdiMediaInfo
    NdiMediaStreamInfo.add_member(:stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "streamType", "smithy.api#required" => {}}))
    NdiMediaStreamInfo.add_member(:codec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Codec", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "codec", "smithy.api#required" => {}}))
    NdiMediaStreamInfo.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "StreamId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "streamId", "smithy.api#required" => {}}))
    NdiMediaStreamInfo.add_member(:scan_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanMode, name: "ScanMode", traits: {"smithy.api#jsonName" => "scanMode"}))
    NdiMediaStreamInfo.add_member(:color, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorInformation, name: "Color", traits: {"smithy.api#jsonName" => "color"}))
    NdiMediaStreamInfo.add_member(:frame_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameResolution, name: "FrameResolution", traits: {"smithy.api#jsonName" => "frameResolution"}))
    NdiMediaStreamInfo.add_member(:frame_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FrameRate", traits: {"smithy.api#jsonName" => "frameRate"}))
    NdiMediaStreamInfo.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Channels", traits: {"smithy.api#jsonName" => "channels"}))
    NdiMediaStreamInfo.add_member(:sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SampleRate", traits: {"smithy.api#jsonName" => "sampleRate"}))
    NdiMediaStreamInfo.type = Types::NdiMediaStreamInfo
    NdiOutputTimecodeSource.add_member(:embedded_timecode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMBEDDED_TIMECODE", traits: {"smithy.api#enumValue" => "EMBEDDED_TIMECODE"}))
    NdiOutputTimecodeSource.add_member(:utc_system_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTC_SYSTEM_TIME", traits: {"smithy.api#enumValue" => "UTC_SYSTEM_TIME"}))
    NdiSourceInfo.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceName", "smithy.api#required" => {}}))
    NdiSourceInfo.type = Types::NdiSourceInfo
    NdiSourceMetadataInfo.add_member(:active_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiSourceInfo, name: "ActiveSource", traits: {"smithy.api#jsonName" => "activeSource"}))
    NdiSourceMetadataInfo.add_member(:discovered_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofndisourceinfo, name: "DiscoveredSources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "discoveredSources", "smithy.api#required" => {}}))
    NdiSourceMetadataInfo.add_member(:media_info, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiMediaInfo, name: "MediaInfo", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mediaInfo", "smithy.api#required" => {}}))
    NdiSourceMetadataInfo.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, name: "Messages", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "messages", "smithy.api#required" => {}}))
    NdiSourceMetadataInfo.type = Types::NdiSourceMetadataInfo
    NdiSourceSettings.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceName", traits: {"smithy.api#jsonName" => "sourceName"}))
    NdiSourceSettings.add_member(:audio_reference_level, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiAudioReferenceLevel, name: "AudioReferenceLevel", traits: {"smithy.api#jsonName" => "audioReferenceLevel"}))
    NdiSourceSettings.type = Types::NdiSourceSettings
    NdiState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    NdiState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    NetworkInterfaceRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicRouterNetworkInterfaceRule, name: "member"))
    NetworkInterfaceType.add_member(:ena, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ena", traits: {"smithy.api#enumValue" => "ena", "smithy.api#suppress" => ["EnumShape"]}))
    NetworkInterfaceType.add_member(:efa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "efa", traits: {"smithy.api#enumValue" => "efa", "smithy.api#suppress" => ["EnumShape"]}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    NotFoundException.type = Types::NotFoundException
    Offering.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CurrencyCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currencyCode", "smithy.api#required" => {}}))
    Offering.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Duration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "duration", "smithy.api#required" => {}}))
    Offering.add_member(:duration_units, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnits, name: "DurationUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "durationUnits", "smithy.api#required" => {}}))
    Offering.add_member(:offering_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OfferingArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "offeringArn", "smithy.api#required" => {}}))
    Offering.add_member(:offering_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OfferingDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "offeringDescription", "smithy.api#required" => {}}))
    Offering.add_member(:price_per_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricePerUnit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "pricePerUnit", "smithy.api#required" => {}}))
    Offering.add_member(:price_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceUnits, name: "PriceUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "priceUnits", "smithy.api#required" => {}}))
    Offering.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecification, name: "ResourceSpecification", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSpecification", "smithy.api#required" => {}}))
    Offering.type = Types::Offering
    Output.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    Output.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Output.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Destination", traits: {"smithy.api#jsonName" => "destination"}))
    Output.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    Output.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn"}))
    Output.add_member(:listener_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ListenerAddress", traits: {"smithy.api#jsonName" => "listenerAddress"}))
    Output.add_member(:media_live_input_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaLiveInputArn", traits: {"smithy.api#jsonName" => "mediaLiveInputArn"}))
    Output.add_member(:media_stream_output_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamoutputconfiguration, name: "MediaStreamOutputConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamOutputConfigurations"}))
    Output.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Output.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutputArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "outputArn", "smithy.api#required" => {}}))
    Output.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    Output.add_member(:transport, ::Smithy::Schema::Shapes::MemberShape.new(target: Transport, name: "Transport", traits: {"smithy.api#jsonName" => "transport"}))
    Output.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    Output.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    Output.add_member(:bridge_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofinteger, name: "BridgePorts", traits: {"smithy.api#jsonName" => "bridgePorts"}))
    Output.add_member(:output_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, name: "OutputStatus", traits: {"smithy.api#jsonName" => "outputStatus"}))
    Output.add_member(:peer_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PeerIpAddress", traits: {"smithy.api#jsonName" => "peerIpAddress"}))
    Output.add_member(:router_integration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "RouterIntegrationState", traits: {"smithy.api#jsonName" => "routerIntegrationState"}))
    Output.add_member(:router_integration_transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryption, name: "RouterIntegrationTransitEncryption", traits: {"smithy.api#jsonName" => "routerIntegrationTransitEncryption"}))
    Output.add_member(:connected_router_input_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConnectedRouterInputArn", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "connectedRouterInputArn"}))
    Output.type = Types::Output
    OutputStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OutputStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PreferredDayTimeMaintenanceConfiguration.add_member(:day, ::Smithy::Schema::Shapes::MemberShape.new(target: Day, name: "Day", traits: {"smithy.api#jsonName" => "day", "smithy.api#required" => {}}))
    PreferredDayTimeMaintenanceConfiguration.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Time", traits: {"smithy.api#jsonName" => "time", "smithy.api#required" => {}}))
    PreferredDayTimeMaintenanceConfiguration.type = Types::PreferredDayTimeMaintenanceConfiguration
    PriceUnits.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    Protocol.add_member(:zixi_push, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "zixi_push", traits: {"smithy.api#enumValue" => "zixi-push", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:rtp_fec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "rtp_fec", traits: {"smithy.api#enumValue" => "rtp-fec", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:rtp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "rtp", traits: {"smithy.api#enumValue" => "rtp", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:zixi_pull, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "zixi_pull", traits: {"smithy.api#enumValue" => "zixi-pull", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:rist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "rist", traits: {"smithy.api#enumValue" => "rist", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:st2110_jpegxs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "st2110_jpegxs", traits: {"smithy.api#enumValue" => "st2110-jpegxs", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:cdi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cdi", traits: {"smithy.api#enumValue" => "cdi", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:srt_listener, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "srt_listener", traits: {"smithy.api#enumValue" => "srt-listener", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:srt_caller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "srt_caller", traits: {"smithy.api#enumValue" => "srt-caller", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:fujitsu_qos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "fujitsu_qos", traits: {"smithy.api#enumValue" => "fujitsu-qos", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "udp", traits: {"smithy.api#enumValue" => "udp", "smithy.api#suppress" => ["EnumShape"]}))
    Protocol.add_member(:ndi_speed_hq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ndi_speed_hq", traits: {"smithy.api#enumValue" => "ndi-speed-hq", "smithy.api#suppress" => ["EnumShape"]}))
    PublicRouterNetworkInterfaceConfiguration.add_member(:allow_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceRuleList, name: "AllowRules", traits: {"smithy.api#jsonName" => "allowRules", "smithy.api#length" => {"min" => 0, "max" => 10}, "smithy.api#required" => {}}))
    PublicRouterNetworkInterfaceConfiguration.type = Types::PublicRouterNetworkInterfaceConfiguration
    PublicRouterNetworkInterfaceRule.add_member(:cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Cidr", traits: {"smithy.api#jsonName" => "cidr", "smithy.api#pattern" => "^(?:[0-9]{1,3}\\.){3}[0-9]{1,3}/([0-9]|[12][0-9]|3[0-2])$", "smithy.api#required" => {}}))
    PublicRouterNetworkInterfaceRule.type = Types::PublicRouterNetworkInterfaceRule
    PublicTlsEncryptionConfiguration.type = Types::PublicTlsEncryptionConfiguration
    PurchaseOfferingRequest.add_member(:offering_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OfferingArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PurchaseOfferingRequest.add_member(:reservation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ReservationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "reservationName", "smithy.api#required" => {}}))
    PurchaseOfferingRequest.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Start", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "start", "smithy.api#required" => {}}))
    PurchaseOfferingRequest.type = Types::PurchaseOfferingRequest
    PurchaseOfferingResponse.add_member(:reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation, name: "Reservation", traits: {"smithy.api#jsonName" => "reservation"}))
    PurchaseOfferingResponse.type = Types::PurchaseOfferingResponse
    Range.add_member(:narrow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NARROW", traits: {"smithy.api#enumValue" => "NARROW"}))
    Range.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    Range.add_member(:fullprotect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULLPROTECT", traits: {"smithy.api#enumValue" => "FULLPROTECT"}))
    RemoveBridgeOutputRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    RemoveBridgeOutputRequest.add_member(:output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutputName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveBridgeOutputRequest.type = Types::RemoveBridgeOutputRequest
    RemoveBridgeOutputResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    RemoveBridgeOutputResponse.add_member(:output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutputName", traits: {"smithy.api#jsonName" => "outputName"}))
    RemoveBridgeOutputResponse.type = Types::RemoveBridgeOutputResponse
    RemoveBridgeSourceRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    RemoveBridgeSourceRequest.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveBridgeSourceRequest.type = Types::RemoveBridgeSourceRequest
    RemoveBridgeSourceResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    RemoveBridgeSourceResponse.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceName", traits: {"smithy.api#jsonName" => "sourceName"}))
    RemoveBridgeSourceResponse.type = Types::RemoveBridgeSourceResponse
    RemoveFlowMediaStreamRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RemoveFlowMediaStreamRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveFlowMediaStreamRequest.type = Types::RemoveFlowMediaStreamRequest
    RemoveFlowMediaStreamResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RemoveFlowMediaStreamResponse.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#jsonName" => "mediaStreamName"}))
    RemoveFlowMediaStreamResponse.type = Types::RemoveFlowMediaStreamResponse
    RemoveFlowOutputRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RemoveFlowOutputRequest.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutputArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:output:.+$", "smithy.api#required" => {}}))
    RemoveFlowOutputRequest.type = Types::RemoveFlowOutputRequest
    RemoveFlowOutputResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RemoveFlowOutputResponse.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutputArn", traits: {"smithy.api#jsonName" => "outputArn"}))
    RemoveFlowOutputResponse.type = Types::RemoveFlowOutputResponse
    RemoveFlowSourceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RemoveFlowSourceRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:source:.+$", "smithy.api#required" => {}}))
    RemoveFlowSourceRequest.type = Types::RemoveFlowSourceRequest
    RemoveFlowSourceResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RemoveFlowSourceResponse.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceArn", traits: {"smithy.api#jsonName" => "sourceArn"}))
    RemoveFlowSourceResponse.type = Types::RemoveFlowSourceResponse
    RemoveFlowVpcInterfaceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RemoveFlowVpcInterfaceRequest.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VpcInterfaceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveFlowVpcInterfaceRequest.type = Types::RemoveFlowVpcInterfaceRequest
    RemoveFlowVpcInterfaceResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RemoveFlowVpcInterfaceResponse.add_member(:non_deleted_network_interface_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "NonDeletedNetworkInterfaceIds", traits: {"smithy.api#jsonName" => "nonDeletedNetworkInterfaceIds"}))
    RemoveFlowVpcInterfaceResponse.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    RemoveFlowVpcInterfaceResponse.type = Types::RemoveFlowVpcInterfaceResponse
    Reservation.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CurrencyCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currencyCode", "smithy.api#required" => {}}))
    Reservation.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Duration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "duration", "smithy.api#required" => {}}))
    Reservation.add_member(:duration_units, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnits, name: "DurationUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "durationUnits", "smithy.api#required" => {}}))
    Reservation.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "End", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "end", "smithy.api#required" => {}}))
    Reservation.add_member(:offering_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OfferingArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "offeringArn", "smithy.api#required" => {}}))
    Reservation.add_member(:offering_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OfferingDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "offeringDescription", "smithy.api#required" => {}}))
    Reservation.add_member(:price_per_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PricePerUnit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "pricePerUnit", "smithy.api#required" => {}}))
    Reservation.add_member(:price_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceUnits, name: "PriceUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "priceUnits", "smithy.api#required" => {}}))
    Reservation.add_member(:reservation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ReservationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "reservationArn", "smithy.api#required" => {}}))
    Reservation.add_member(:reservation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ReservationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "reservationName", "smithy.api#required" => {}}))
    Reservation.add_member(:reservation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservationState, name: "ReservationState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "reservationState", "smithy.api#required" => {}}))
    Reservation.add_member(:resource_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSpecification, name: "ResourceSpecification", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSpecification", "smithy.api#required" => {}}))
    Reservation.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Start", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "start", "smithy.api#required" => {}}))
    Reservation.type = Types::Reservation
    ReservationState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReservationState.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ReservationState.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ReservationState.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ResourceSpecification.add_member(:reserved_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ReservedBitrate", traits: {"smithy.api#jsonName" => "reservedBitrate"}))
    ResourceSpecification.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceType", "smithy.api#required" => {}}))
    ResourceSpecification.type = Types::ResourceSpecification
    ResourceType.add_member(:mbps_outbound_bandwidth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mbps_Outbound_Bandwidth", traits: {"smithy.api#enumValue" => "Mbps_Outbound_Bandwidth", "smithy.api#suppress" => ["EnumShape"]}))
    RestartRouterInputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestartRouterInputRequest.type = Types::RestartRouterInputRequest
    RestartRouterInputResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    RestartRouterInputResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    RestartRouterInputResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    RestartRouterInputResponse.type = Types::RestartRouterInputResponse
    RestartRouterOutputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestartRouterOutputRequest.type = Types::RestartRouterOutputRequest
    RestartRouterOutputResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    RestartRouterOutputResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    RestartRouterOutputResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    RestartRouterOutputResponse.type = Types::RestartRouterOutputResponse
    RevokeFlowEntitlementRequest.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:entitlement:.+$", "smithy.api#required" => {}}))
    RevokeFlowEntitlementRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    RevokeFlowEntitlementRequest.type = Types::RevokeFlowEntitlementRequest
    RevokeFlowEntitlementResponse.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn"}))
    RevokeFlowEntitlementResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    RevokeFlowEntitlementResponse.type = Types::RevokeFlowEntitlementResponse
    RistRouterInputConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port", "smithy.api#range" => {"min" => 3000, "max" => 30000}, "smithy.api#required" => {}}))
    RistRouterInputConfiguration.add_member(:recovery_latency_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "RecoveryLatencyMilliseconds", traits: {"smithy.api#jsonName" => "recoveryLatencyMilliseconds", "smithy.api#range" => {"min" => 10, "max" => 10000}, "smithy.api#required" => {}}))
    RistRouterInputConfiguration.type = Types::RistRouterInputConfiguration
    RistRouterOutputConfiguration.add_member(:destination_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationAddress", traits: {"smithy.api#jsonName" => "destinationAddress", "smithy.api#required" => {}}))
    RistRouterOutputConfiguration.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DestinationPort", traits: {"smithy.api#jsonName" => "destinationPort", "smithy.api#range" => {"min" => 1024, "max" => 65535}, "smithy.api#required" => {}}))
    RistRouterOutputConfiguration.type = Types::RistRouterOutputConfiguration
    RouterContentQualityAnalysisConfiguration.add_member(:content_level, Types::RouterContentQualityAnalysisConfiguration::ContentLevel, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentQualityAnalysisFeatureConfiguration, name: "ContentLevel", traits: {"smithy.api#jsonName" => "contentLevel"}))
    RouterContentQualityAnalysisConfiguration.add_member(:unknown, Types::RouterContentQualityAnalysisConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterContentQualityAnalysisConfiguration.type = Types::RouterContentQualityAnalysisConfiguration
    RouterContentQualityAnalysisType.add_member(:content_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_LEVEL", traits: {"smithy.api#enumValue" => "CONTENT_LEVEL"}))
    RouterInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    RouterInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    RouterInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    RouterInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    RouterInput.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputType, name: "InputType", traits: {"smithy.api#jsonName" => "inputType", "smithy.api#required" => {}}))
    RouterInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    RouterInput.add_member(:routed_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RoutedOutputs", traits: {"smithy.api#jsonName" => "routedOutputs", "smithy.api#required" => {}}))
    RouterInput.add_member(:maximum_routed_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaximumRoutedOutputs", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "maximumRoutedOutputs"}))
    RouterInput.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName", "smithy.api#required" => {}}))
    RouterInput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone", "smithy.api#required" => {}}))
    RouterInput.add_member(:maximum_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MaximumBitrate", traits: {"smithy.api#jsonName" => "maximumBitrate", "smithy.api#required" => {}}))
    RouterInput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTier, name: "Tier", traits: {"smithy.api#jsonName" => "tier", "smithy.api#required" => {}}))
    RouterInput.add_member(:routing_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "RoutingScope", traits: {"smithy.api#jsonName" => "routingScope", "smithy.api#required" => {}}))
    RouterInput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RouterInput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RouterInput.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputMessages, name: "Messages", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "messages", "smithy.api#required" => {}}))
    RouterInput.add_member(:transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTransitEncryption, name: "TransitEncryption", traits: {"smithy.api#jsonName" => "transitEncryption", "smithy.api#required" => {}}))
    RouterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    RouterInput.add_member(:stream_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputStreamDetails, name: "StreamDetails", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "streamDetails", "smithy.api#required" => {}}))
    RouterInput.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IpAddress", traits: {"smithy.api#jsonName" => "ipAddress"}))
    RouterInput.add_member(:maintenance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceType, name: "MaintenanceType", traits: {"smithy.api#jsonName" => "maintenanceType", "smithy.api#required" => {}}))
    RouterInput.add_member(:maintenance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceConfiguration, name: "MaintenanceConfiguration", traits: {"smithy.api#jsonName" => "maintenanceConfiguration", "smithy.api#required" => {}}))
    RouterInput.add_member(:maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceScheduleType, name: "MaintenanceScheduleType", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "maintenanceScheduleType"}))
    RouterInput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "MaintenanceSchedule", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "maintenanceSchedule"}))
    RouterInput.add_member(:content_quality_analysis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterContentQualityAnalysisType, name: "ContentQualityAnalysisType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "contentQualityAnalysisType", "smithy.api#required" => {}}))
    RouterInput.add_member(:content_quality_analysis_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterContentQualityAnalysisConfiguration, name: "ContentQualityAnalysisConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "contentQualityAnalysisConfiguration", "smithy.api#required" => {}}))
    RouterInput.type = Types::RouterInput
    RouterInputArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "member"))
    RouterInputConfiguration.add_member(:standard, Types::RouterInputConfiguration::Standard, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardRouterInputConfiguration, name: "Standard", traits: {"smithy.api#jsonName" => "standard"}))
    RouterInputConfiguration.add_member(:media_live_channel, Types::RouterInputConfiguration::MediaLiveChannel, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveChannelRouterInputConfiguration, name: "MediaLiveChannel", traits: {"smithy.api#jsonName" => "mediaLiveChannel"}))
    RouterInputConfiguration.add_member(:failover, Types::RouterInputConfiguration::Failover, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverRouterInputConfiguration, name: "Failover", traits: {"smithy.api#jsonName" => "failover"}))
    RouterInputConfiguration.add_member(:media_connect_flow, Types::RouterInputConfiguration::MediaConnectFlow, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaConnectFlowRouterInputConfiguration, name: "MediaConnectFlow", traits: {"smithy.api#jsonName" => "mediaConnectFlow"}))
    RouterInputConfiguration.add_member(:merge, Types::RouterInputConfiguration::Merge, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeRouterInputConfiguration, name: "Merge", traits: {"smithy.api#jsonName" => "merge"}))
    RouterInputConfiguration.add_member(:unknown, Types::RouterInputConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterInputConfiguration.type = Types::RouterInputConfiguration
    RouterInputFilter.add_member(:name_contains, Types::RouterInputFilter::NameContains, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "NameContains", traits: {"smithy.api#jsonName" => "nameContains"}))
    RouterInputFilter.add_member(:region_names, Types::RouterInputFilter::RegionNames, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "RegionNames", traits: {"smithy.api#jsonName" => "regionNames"}))
    RouterInputFilter.add_member(:network_interface_arns, Types::RouterInputFilter::NetworkInterfaceArns, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArnList, name: "NetworkInterfaceArns", traits: {"smithy.api#jsonName" => "networkInterfaceArns"}))
    RouterInputFilter.add_member(:routing_scopes, Types::RouterInputFilter::RoutingScopes, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScopeList, name: "RoutingScopes", traits: {"smithy.api#jsonName" => "routingScopes"}))
    RouterInputFilter.add_member(:input_types, Types::RouterInputFilter::InputTypes, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTypeList, name: "InputTypes", traits: {"smithy.api#jsonName" => "inputTypes"}))
    RouterInputFilter.add_member(:unknown, Types::RouterInputFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterInputFilter.type = Types::RouterInputFilter
    RouterInputFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputFilter, name: "member"))
    RouterInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInput, name: "member"))
    RouterInputMessage.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Code", traits: {"smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    RouterInputMessage.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    RouterInputMessage.type = Types::RouterInputMessage
    RouterInputMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputMessage, name: "member"))
    RouterInputMetadata.add_member(:transport_stream_media_info, Types::RouterInputMetadata::TransportStreamMediaInfo, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportMediaInfo, name: "TransportStreamMediaInfo", traits: {"smithy.api#jsonName" => "transportStreamMediaInfo"}))
    RouterInputMetadata.add_member(:unknown, Types::RouterInputMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterInputMetadata.type = Types::RouterInputMetadata
    RouterInputProtocol.add_member(:rtp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTP", traits: {"smithy.api#enumValue" => "RTP"}))
    RouterInputProtocol.add_member(:rist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RIST", traits: {"smithy.api#enumValue" => "RIST"}))
    RouterInputProtocol.add_member(:srt_caller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SRT_CALLER", traits: {"smithy.api#enumValue" => "SRT_CALLER"}))
    RouterInputProtocol.add_member(:srt_listener, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SRT_LISTENER", traits: {"smithy.api#enumValue" => "SRT_LISTENER"}))
    RouterInputProtocolConfiguration.add_member(:rist, Types::RouterInputProtocolConfiguration::Rist, ::Smithy::Schema::Shapes::MemberShape.new(target: RistRouterInputConfiguration, name: "Rist", traits: {"smithy.api#jsonName" => "rist"}))
    RouterInputProtocolConfiguration.add_member(:srt_listener, Types::RouterInputProtocolConfiguration::SrtListener, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtListenerRouterInputConfiguration, name: "SrtListener", traits: {"smithy.api#jsonName" => "srtListener"}))
    RouterInputProtocolConfiguration.add_member(:srt_caller, Types::RouterInputProtocolConfiguration::SrtCaller, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtCallerRouterInputConfiguration, name: "SrtCaller", traits: {"smithy.api#jsonName" => "srtCaller"}))
    RouterInputProtocolConfiguration.add_member(:rtp, Types::RouterInputProtocolConfiguration::Rtp, ::Smithy::Schema::Shapes::MemberShape.new(target: RtpRouterInputConfiguration, name: "Rtp", traits: {"smithy.api#jsonName" => "rtp"}))
    RouterInputProtocolConfiguration.add_member(:unknown, Types::RouterInputProtocolConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterInputProtocolConfiguration.type = Types::RouterInputProtocolConfiguration
    RouterInputServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    RouterInputServiceQuotaExceededException.type = Types::RouterInputServiceQuotaExceededException
    RouterInputSourceMetadataDetails.add_member(:source_metadata_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputMessages, name: "SourceMetadataMessages", traits: {"smithy.api#jsonName" => "sourceMetadataMessages", "smithy.api#required" => {}}))
    RouterInputSourceMetadataDetails.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp", traits: {"smithy.api#jsonName" => "timestamp", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RouterInputSourceMetadataDetails.add_member(:router_input_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputMetadata, name: "RouterInputMetadata", traits: {"smithy.api#jsonName" => "routerInputMetadata"}))
    RouterInputSourceMetadataDetails.type = Types::RouterInputSourceMetadataDetails
    RouterInputState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RouterInputState.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    RouterInputState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    RouterInputState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RouterInputState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    RouterInputState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RouterInputState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RouterInputState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    RouterInputState.add_member(:recovering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOVERING", traits: {"smithy.api#enumValue" => "RECOVERING"}))
    RouterInputState.add_member(:migrating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIGRATING", traits: {"smithy.api#enumValue" => "MIGRATING"}))
    RouterInputStreamDetails.add_member(:standard, Types::RouterInputStreamDetails::Standard, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardRouterInputStreamDetails, name: "Standard", traits: {"smithy.api#jsonName" => "standard"}))
    RouterInputStreamDetails.add_member(:media_live_channel, Types::RouterInputStreamDetails::MediaLiveChannel, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveChannelRouterInputStreamDetails, name: "MediaLiveChannel", traits: {"smithy.api#jsonName" => "mediaLiveChannel"}))
    RouterInputStreamDetails.add_member(:failover, Types::RouterInputStreamDetails::Failover, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverRouterInputStreamDetails, name: "Failover", traits: {"smithy.api#jsonName" => "failover"}))
    RouterInputStreamDetails.add_member(:media_connect_flow, Types::RouterInputStreamDetails::MediaConnectFlow, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaConnectFlowRouterInputStreamDetails, name: "MediaConnectFlow", traits: {"smithy.api#jsonName" => "mediaConnectFlow"}))
    RouterInputStreamDetails.add_member(:merge, Types::RouterInputStreamDetails::Merge, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeRouterInputStreamDetails, name: "Merge", traits: {"smithy.api#jsonName" => "merge"}))
    RouterInputStreamDetails.add_member(:unknown, Types::RouterInputStreamDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterInputStreamDetails.type = Types::RouterInputStreamDetails
    RouterInputThumbnailDetails.add_member(:thumbnail_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputMessages, name: "ThumbnailMessages", traits: {"smithy.api#jsonName" => "thumbnailMessages", "smithy.api#required" => {}}))
    RouterInputThumbnailDetails.add_member(:thumbnail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "Thumbnail", traits: {"smithy.api#jsonName" => "thumbnail"}))
    RouterInputThumbnailDetails.add_member(:timecode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Timecode", traits: {"smithy.api#jsonName" => "timecode"}))
    RouterInputThumbnailDetails.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp", traits: {"smithy.api#jsonName" => "timestamp", "smithy.api#timestampFormat" => "date-time"}))
    RouterInputThumbnailDetails.type = Types::RouterInputThumbnailDetails
    RouterInputTier.add_member(:input_100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_100", traits: {"smithy.api#enumValue" => "INPUT_100"}))
    RouterInputTier.add_member(:input_50, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_50", traits: {"smithy.api#enumValue" => "INPUT_50"}))
    RouterInputTier.add_member(:input_20, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_20", traits: {"smithy.api#enumValue" => "INPUT_20"}))
    RouterInputTier.add_member(:input_500, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_500", traits: {"smithy.api#enumValue" => "INPUT_500"}))
    RouterInputTier.add_member(:input_250, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_250", traits: {"smithy.api#enumValue" => "INPUT_250"}))
    RouterInputTransitEncryption.add_member(:encryption_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTransitEncryptionKeyType, name: "EncryptionKeyType", traits: {"smithy.api#jsonName" => "encryptionKeyType"}))
    RouterInputTransitEncryption.add_member(:encryption_key_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTransitEncryptionKeyConfiguration, name: "EncryptionKeyConfiguration", traits: {"smithy.api#jsonName" => "encryptionKeyConfiguration", "smithy.api#required" => {}}))
    RouterInputTransitEncryption.type = Types::RouterInputTransitEncryption
    RouterInputTransitEncryptionKeyConfiguration.add_member(:secrets_manager, Types::RouterInputTransitEncryptionKeyConfiguration::SecretsManager, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerEncryptionKeyConfiguration, name: "SecretsManager", traits: {"smithy.api#jsonName" => "secretsManager"}))
    RouterInputTransitEncryptionKeyConfiguration.add_member(:automatic, Types::RouterInputTransitEncryptionKeyConfiguration::Automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticEncryptionKeyConfiguration, name: "Automatic", traits: {"smithy.api#jsonName" => "automatic"}))
    RouterInputTransitEncryptionKeyConfiguration.add_member(:unknown, Types::RouterInputTransitEncryptionKeyConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterInputTransitEncryptionKeyConfiguration.type = Types::RouterInputTransitEncryptionKeyConfiguration
    RouterInputTransitEncryptionKeyType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    RouterInputTransitEncryptionKeyType.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    RouterInputType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    RouterInputType.add_member(:failover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILOVER", traits: {"smithy.api#enumValue" => "FAILOVER"}))
    RouterInputType.add_member(:merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE", traits: {"smithy.api#enumValue" => "MERGE"}))
    RouterInputType.add_member(:mediaconnect_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIACONNECT_FLOW", traits: {"smithy.api#enumValue" => "MEDIACONNECT_FLOW"}))
    RouterInputType.add_member(:medialive_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIALIVE_CHANNEL", traits: {"smithy.api#enumValue" => "MEDIALIVE_CHANNEL"}))
    RouterInputTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputType, name: "member"))
    RouterNetworkInterface.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:network_interface_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceType, name: "NetworkInterfaceType", traits: {"smithy.api#jsonName" => "networkInterfaceType", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:associated_output_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "AssociatedOutputCount", traits: {"smithy.api#jsonName" => "associatedOutputCount", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:associated_input_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "AssociatedInputCount", traits: {"smithy.api#jsonName" => "associatedInputCount", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName", "smithy.api#required" => {}}))
    RouterNetworkInterface.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RouterNetworkInterface.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RouterNetworkInterface.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    RouterNetworkInterface.type = Types::RouterNetworkInterface
    RouterNetworkInterfaceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "member"))
    RouterNetworkInterfaceConfiguration.add_member(:public, Types::RouterNetworkInterfaceConfiguration::Public, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicRouterNetworkInterfaceConfiguration, name: "Public", traits: {"smithy.api#jsonName" => "public"}))
    RouterNetworkInterfaceConfiguration.add_member(:vpc, Types::RouterNetworkInterfaceConfiguration::Vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcRouterNetworkInterfaceConfiguration, name: "Vpc", traits: {"smithy.api#jsonName" => "vpc"}))
    RouterNetworkInterfaceConfiguration.add_member(:unknown, Types::RouterNetworkInterfaceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterNetworkInterfaceConfiguration.type = Types::RouterNetworkInterfaceConfiguration
    RouterNetworkInterfaceFilter.add_member(:region_names, Types::RouterNetworkInterfaceFilter::RegionNames, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "RegionNames", traits: {"smithy.api#jsonName" => "regionNames"}))
    RouterNetworkInterfaceFilter.add_member(:network_interface_types, Types::RouterNetworkInterfaceFilter::NetworkInterfaceTypes, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceTypeList, name: "NetworkInterfaceTypes", traits: {"smithy.api#jsonName" => "networkInterfaceTypes"}))
    RouterNetworkInterfaceFilter.add_member(:name_contains, Types::RouterNetworkInterfaceFilter::NameContains, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "NameContains", traits: {"smithy.api#jsonName" => "nameContains"}))
    RouterNetworkInterfaceFilter.add_member(:unknown, Types::RouterNetworkInterfaceFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterNetworkInterfaceFilter.type = Types::RouterNetworkInterfaceFilter
    RouterNetworkInterfaceFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceFilter, name: "member"))
    RouterNetworkInterfaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterface, name: "member"))
    RouterNetworkInterfaceServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    RouterNetworkInterfaceServiceQuotaExceededException.type = Types::RouterNetworkInterfaceServiceQuotaExceededException
    RouterNetworkInterfaceState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RouterNetworkInterfaceState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RouterNetworkInterfaceState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RouterNetworkInterfaceState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RouterNetworkInterfaceState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    RouterNetworkInterfaceState.add_member(:recovering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOVERING", traits: {"smithy.api#enumValue" => "RECOVERING"}))
    RouterNetworkInterfaceType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    RouterNetworkInterfaceType.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC", traits: {"smithy.api#enumValue" => "VPC"}))
    RouterNetworkInterfaceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceType, name: "member"))
    RouterOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    RouterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    RouterOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    RouterOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    RouterOutput.add_member(:output_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputType, name: "OutputType", traits: {"smithy.api#jsonName" => "outputType", "smithy.api#required" => {}}))
    RouterOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    RouterOutput.add_member(:routed_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputRoutedState, name: "RoutedState", traits: {"smithy.api#jsonName" => "routedState", "smithy.api#required" => {}}))
    RouterOutput.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RegionName", traits: {"smithy.api#jsonName" => "regionName", "smithy.api#required" => {}}))
    RouterOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone", "smithy.api#required" => {}}))
    RouterOutput.add_member(:maximum_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MaximumBitrate", traits: {"smithy.api#jsonName" => "maximumBitrate", "smithy.api#required" => {}}))
    RouterOutput.add_member(:routing_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "RoutingScope", traits: {"smithy.api#jsonName" => "routingScope", "smithy.api#required" => {}}))
    RouterOutput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputTier, name: "Tier", traits: {"smithy.api#jsonName" => "tier", "smithy.api#required" => {}}))
    RouterOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RouterOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RouterOutput.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputMessages, name: "Messages", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "messages", "smithy.api#required" => {}}))
    RouterOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    RouterOutput.add_member(:stream_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputStreamDetails, name: "StreamDetails", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "streamDetails", "smithy.api#required" => {}}))
    RouterOutput.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IpAddress", traits: {"smithy.api#jsonName" => "ipAddress"}))
    RouterOutput.add_member(:routed_input_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "RoutedInputArn", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "routedInputArn"}))
    RouterOutput.add_member(:maintenance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceType, name: "MaintenanceType", traits: {"smithy.api#jsonName" => "maintenanceType", "smithy.api#required" => {}}))
    RouterOutput.add_member(:maintenance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceConfiguration, name: "MaintenanceConfiguration", traits: {"smithy.api#jsonName" => "maintenanceConfiguration", "smithy.api#required" => {}}))
    RouterOutput.add_member(:maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceScheduleType, name: "MaintenanceScheduleType", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "maintenanceScheduleType"}))
    RouterOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "MaintenanceSchedule", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "maintenanceSchedule"}))
    RouterOutput.add_member(:fabric_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FabricConfiguration, name: "FabricConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "fabricConfiguration", "smithy.api#required" => {}}))
    RouterOutput.type = Types::RouterOutput
    RouterOutputArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "member"))
    RouterOutputConfiguration.add_member(:standard, Types::RouterOutputConfiguration::Standard, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardRouterOutputConfiguration, name: "Standard", traits: {"smithy.api#jsonName" => "standard"}))
    RouterOutputConfiguration.add_member(:media_connect_flow, Types::RouterOutputConfiguration::MediaConnectFlow, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaConnectFlowRouterOutputConfiguration, name: "MediaConnectFlow", traits: {"smithy.api#jsonName" => "mediaConnectFlow"}))
    RouterOutputConfiguration.add_member(:media_live_input, Types::RouterOutputConfiguration::MediaLiveInput, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveInputRouterOutputConfiguration, name: "MediaLiveInput", traits: {"smithy.api#jsonName" => "mediaLiveInput"}))
    RouterOutputConfiguration.add_member(:unknown, Types::RouterOutputConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterOutputConfiguration.type = Types::RouterOutputConfiguration
    RouterOutputFilter.add_member(:region_names, Types::RouterOutputFilter::RegionNames, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "RegionNames", traits: {"smithy.api#jsonName" => "regionNames"}))
    RouterOutputFilter.add_member(:network_interface_arns, Types::RouterOutputFilter::NetworkInterfaceArns, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArnList, name: "NetworkInterfaceArns", traits: {"smithy.api#jsonName" => "networkInterfaceArns"}))
    RouterOutputFilter.add_member(:routing_scopes, Types::RouterOutputFilter::RoutingScopes, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScopeList, name: "RoutingScopes", traits: {"smithy.api#jsonName" => "routingScopes"}))
    RouterOutputFilter.add_member(:output_types, Types::RouterOutputFilter::OutputTypes, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputTypeList, name: "OutputTypes", traits: {"smithy.api#jsonName" => "outputTypes"}))
    RouterOutputFilter.add_member(:routed_input_arns, Types::RouterOutputFilter::RoutedInputArns, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArnList, name: "RoutedInputArns", traits: {"smithy.api#jsonName" => "routedInputArns"}))
    RouterOutputFilter.add_member(:name_contains, Types::RouterOutputFilter::NameContains, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "NameContains", traits: {"smithy.api#jsonName" => "nameContains"}))
    RouterOutputFilter.add_member(:unknown, Types::RouterOutputFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterOutputFilter.type = Types::RouterOutputFilter
    RouterOutputFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputFilter, name: "member"))
    RouterOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutput, name: "member"))
    RouterOutputMessage.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Code", traits: {"smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    RouterOutputMessage.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    RouterOutputMessage.type = Types::RouterOutputMessage
    RouterOutputMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputMessage, name: "member"))
    RouterOutputProtocol.add_member(:rtp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTP", traits: {"smithy.api#enumValue" => "RTP"}))
    RouterOutputProtocol.add_member(:rist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RIST", traits: {"smithy.api#enumValue" => "RIST"}))
    RouterOutputProtocol.add_member(:srt_caller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SRT_CALLER", traits: {"smithy.api#enumValue" => "SRT_CALLER"}))
    RouterOutputProtocol.add_member(:srt_listener, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SRT_LISTENER", traits: {"smithy.api#enumValue" => "SRT_LISTENER"}))
    RouterOutputProtocol.add_member(:rtmp_push, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTMP_PUSH", traits: {"smithy.api#enumValue" => "RTMP_PUSH"}))
    RouterOutputProtocolConfiguration.add_member(:rist, Types::RouterOutputProtocolConfiguration::Rist, ::Smithy::Schema::Shapes::MemberShape.new(target: RistRouterOutputConfiguration, name: "Rist", traits: {"smithy.api#jsonName" => "rist"}))
    RouterOutputProtocolConfiguration.add_member(:srt_listener, Types::RouterOutputProtocolConfiguration::SrtListener, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtListenerRouterOutputConfiguration, name: "SrtListener", traits: {"smithy.api#jsonName" => "srtListener"}))
    RouterOutputProtocolConfiguration.add_member(:rtmp_push, Types::RouterOutputProtocolConfiguration::RtmpPush, ::Smithy::Schema::Shapes::MemberShape.new(target: RtmpPushRouterOutputConfiguration, name: "RtmpPush", traits: {"smithy.api#jsonName" => "rtmpPush"}))
    RouterOutputProtocolConfiguration.add_member(:srt_caller, Types::RouterOutputProtocolConfiguration::SrtCaller, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtCallerRouterOutputConfiguration, name: "SrtCaller", traits: {"smithy.api#jsonName" => "srtCaller"}))
    RouterOutputProtocolConfiguration.add_member(:rtp, Types::RouterOutputProtocolConfiguration::Rtp, ::Smithy::Schema::Shapes::MemberShape.new(target: RtpRouterOutputConfiguration, name: "Rtp", traits: {"smithy.api#jsonName" => "rtp"}))
    RouterOutputProtocolConfiguration.add_member(:unknown, Types::RouterOutputProtocolConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterOutputProtocolConfiguration.type = Types::RouterOutputProtocolConfiguration
    RouterOutputRoutedState.add_member(:routed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTED", traits: {"smithy.api#enumValue" => "ROUTED"}))
    RouterOutputRoutedState.add_member(:routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTING", traits: {"smithy.api#enumValue" => "ROUTING"}))
    RouterOutputRoutedState.add_member(:unrouted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNROUTED", traits: {"smithy.api#enumValue" => "UNROUTED"}))
    RouterOutputServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    RouterOutputServiceQuotaExceededException.type = Types::RouterOutputServiceQuotaExceededException
    RouterOutputState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RouterOutputState.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    RouterOutputState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    RouterOutputState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RouterOutputState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    RouterOutputState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RouterOutputState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RouterOutputState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    RouterOutputState.add_member(:recovering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOVERING", traits: {"smithy.api#enumValue" => "RECOVERING"}))
    RouterOutputState.add_member(:migrating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIGRATING", traits: {"smithy.api#enumValue" => "MIGRATING"}))
    RouterOutputStreamDetails.add_member(:standard, Types::RouterOutputStreamDetails::Standard, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardRouterOutputStreamDetails, name: "Standard", traits: {"smithy.api#jsonName" => "standard"}))
    RouterOutputStreamDetails.add_member(:media_connect_flow, Types::RouterOutputStreamDetails::MediaConnectFlow, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaConnectFlowRouterOutputStreamDetails, name: "MediaConnectFlow", traits: {"smithy.api#jsonName" => "mediaConnectFlow"}))
    RouterOutputStreamDetails.add_member(:media_live_input, Types::RouterOutputStreamDetails::MediaLiveInput, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveInputRouterOutputStreamDetails, name: "MediaLiveInput", traits: {"smithy.api#jsonName" => "mediaLiveInput"}))
    RouterOutputStreamDetails.add_member(:unknown, Types::RouterOutputStreamDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RouterOutputStreamDetails.type = Types::RouterOutputStreamDetails
    RouterOutputTier.add_member(:output_100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPUT_100", traits: {"smithy.api#enumValue" => "OUTPUT_100"}))
    RouterOutputTier.add_member(:output_50, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPUT_50", traits: {"smithy.api#enumValue" => "OUTPUT_50"}))
    RouterOutputTier.add_member(:output_20, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPUT_20", traits: {"smithy.api#enumValue" => "OUTPUT_20"}))
    RouterOutputTier.add_member(:output_500, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPUT_500", traits: {"smithy.api#enumValue" => "OUTPUT_500"}))
    RouterOutputTier.add_member(:output_250, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPUT_250", traits: {"smithy.api#enumValue" => "OUTPUT_250"}))
    RouterOutputType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    RouterOutputType.add_member(:mediaconnect_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIACONNECT_FLOW", traits: {"smithy.api#enumValue" => "MEDIACONNECT_FLOW"}))
    RouterOutputType.add_member(:medialive_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIALIVE_INPUT", traits: {"smithy.api#enumValue" => "MEDIALIVE_INPUT"}))
    RouterOutputTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputType, name: "member"))
    RoutingScope.add_member(:regional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGIONAL", traits: {"smithy.api#enumValue" => "REGIONAL"}))
    RoutingScope.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLOBAL", traits: {"smithy.api#enumValue" => "GLOBAL"}))
    RoutingScopeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "member"))
    RtmpPushRouterOutputConfiguration.add_member(:destination_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationAddress", traits: {"smithy.api#jsonName" => "destinationAddress", "smithy.api#required" => {}}))
    RtmpPushRouterOutputConfiguration.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DestinationPort", traits: {"smithy.api#jsonName" => "destinationPort", "smithy.api#range" => {"min" => 443, "max" => 65535}, "smithy.api#required" => {}}))
    RtmpPushRouterOutputConfiguration.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ApplicationName", traits: {"smithy.api#jsonName" => "applicationName", "smithy.api#required" => {}}))
    RtmpPushRouterOutputConfiguration.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamName", traits: {"smithy.api#jsonName" => "streamName", "smithy.api#required" => {}}))
    RtmpPushRouterOutputConfiguration.add_member(:tls_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsEncryption, name: "TlsEncryption", traits: {"smithy.api#jsonName" => "tlsEncryption"}))
    RtmpPushRouterOutputConfiguration.type = Types::RtmpPushRouterOutputConfiguration
    RtpRouterInputConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port", "smithy.api#range" => {"min" => 3000, "max" => 30000}, "smithy.api#required" => {}}))
    RtpRouterInputConfiguration.add_member(:forward_error_correction, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardErrorCorrectionState, name: "ForwardErrorCorrection", traits: {"smithy.api#jsonName" => "forwardErrorCorrection"}))
    RtpRouterInputConfiguration.type = Types::RtpRouterInputConfiguration
    RtpRouterOutputConfiguration.add_member(:destination_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationAddress", traits: {"smithy.api#jsonName" => "destinationAddress", "smithy.api#required" => {}}))
    RtpRouterOutputConfiguration.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DestinationPort", traits: {"smithy.api#jsonName" => "destinationPort", "smithy.api#range" => {"min" => 1024, "max" => 65531}, "smithy.api#required" => {}}))
    RtpRouterOutputConfiguration.add_member(:forward_error_correction, ::Smithy::Schema::Shapes::MemberShape.new(target: ForwardErrorCorrectionState, name: "ForwardErrorCorrection", traits: {"smithy.api#jsonName" => "forwardErrorCorrection"}))
    RtpRouterOutputConfiguration.type = Types::RtpRouterOutputConfiguration
    ScanMode.add_member(:progressive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "progressive", traits: {"smithy.api#enumValue" => "progressive", "smithy.api#suppress" => ["EnumShape"]}))
    ScanMode.add_member(:interlace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "interlace", traits: {"smithy.api#enumValue" => "interlace", "smithy.api#suppress" => ["EnumShape"]}))
    ScanMode.add_member(:progressive_segmented_frame, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "progressive_segmented_frame", traits: {"smithy.api#enumValue" => "progressive-segmented-frame", "smithy.api#suppress" => ["EnumShape"]}))
    SecretsManagerEncryptionKeyConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#jsonName" => "secretArn", "smithy.api#required" => {}}))
    SecretsManagerEncryptionKeyConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    SecretsManagerEncryptionKeyConfiguration.type = Types::SecretsManagerEncryptionKeyConfiguration
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SetGatewayBridgeSourceRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bridgeArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    SetGatewayBridgeSourceRequest.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    SetGatewayBridgeSourceRequest.type = Types::SetGatewayBridgeSourceRequest
    SetSourceRequest.add_member(:decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Decryption", traits: {"smithy.api#jsonName" => "decryption"}))
    SetSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    SetSourceRequest.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:entitlement:.+$"}))
    SetSourceRequest.add_member(:ingest_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "IngestPort", traits: {"smithy.api#jsonName" => "ingestPort"}))
    SetSourceRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    SetSourceRequest.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    SetSourceRequest.add_member(:max_sync_buffer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxSyncBuffer", traits: {"smithy.api#jsonName" => "maxSyncBuffer"}))
    SetSourceRequest.add_member(:media_stream_source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamsourceconfigurationrequest, name: "MediaStreamSourceConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamSourceConfigurations"}))
    SetSourceRequest.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    SetSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    SetSourceRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    SetSourceRequest.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    SetSourceRequest.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    SetSourceRequest.add_member(:source_listener_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceListenerAddress", traits: {"smithy.api#jsonName" => "sourceListenerAddress"}))
    SetSourceRequest.add_member(:source_listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SourceListenerPort", traits: {"smithy.api#jsonName" => "sourceListenerPort"}))
    SetSourceRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    SetSourceRequest.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    SetSourceRequest.add_member(:whitelist_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "WhitelistCidr", traits: {"smithy.api#jsonName" => "whitelistCidr"}))
    SetSourceRequest.add_member(:gateway_bridge_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SetGatewayBridgeSourceRequest, name: "GatewayBridgeSource", traits: {"smithy.api#jsonName" => "gatewayBridgeSource"}))
    SetSourceRequest.add_member(:ndi_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiSourceSettings, name: "NdiSourceSettings", traits: {"smithy.api#jsonName" => "ndiSourceSettings"}))
    SetSourceRequest.add_member(:source_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "SourceTags", traits: {"smithy.api#jsonName" => "sourceTags"}))
    SetSourceRequest.add_member(:router_integration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "RouterIntegrationState", traits: {"smithy.api#jsonName" => "routerIntegrationState"}))
    SetSourceRequest.add_member(:router_integration_transit_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryption, name: "RouterIntegrationTransitDecryption", traits: {"smithy.api#jsonName" => "routerIntegrationTransitDecryption"}))
    SetSourceRequest.type = Types::SetSourceRequest
    SilentAudio.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    SilentAudio.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds"}))
    SilentAudio.type = Types::SilentAudio
    SilentAudioConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentQualityAnalysisState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    SilentAudioConfiguration.add_member(:threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterCqaThresholdSeconds, name: "ThresholdSeconds", traits: {"smithy.api#jsonName" => "thresholdSeconds", "smithy.api#required" => {}}))
    SilentAudioConfiguration.type = Types::SilentAudioConfiguration
    Source.add_member(:data_transfer_subscriber_fee_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DataTransferSubscriberFeePercent", traits: {"smithy.api#jsonName" => "dataTransferSubscriberFeePercent"}))
    Source.add_member(:decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Decryption", traits: {"smithy.api#jsonName" => "decryption"}))
    Source.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Source.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn"}))
    Source.add_member(:ingest_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IngestIp", traits: {"smithy.api#jsonName" => "ingestIp"}))
    Source.add_member(:ingest_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "IngestPort", traits: {"smithy.api#jsonName" => "ingestPort"}))
    Source.add_member(:media_stream_source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamsourceconfiguration, name: "MediaStreamSourceConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamSourceConfigurations"}))
    Source.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Source.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    Source.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    Source.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sourceArn", "smithy.api#required" => {}}))
    Source.add_member(:transport, ::Smithy::Schema::Shapes::MemberShape.new(target: Transport, name: "Transport", traits: {"smithy.api#jsonName" => "transport"}))
    Source.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    Source.add_member(:whitelist_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "WhitelistCidr", traits: {"smithy.api#jsonName" => "whitelistCidr"}))
    Source.add_member(:gateway_bridge_source, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayBridgeSource, name: "GatewayBridgeSource", traits: {"smithy.api#jsonName" => "gatewayBridgeSource"}))
    Source.add_member(:peer_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PeerIpAddress", traits: {"smithy.api#jsonName" => "peerIpAddress"}))
    Source.add_member(:router_integration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "RouterIntegrationState", traits: {"smithy.api#jsonName" => "routerIntegrationState"}))
    Source.add_member(:router_integration_transit_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryption, name: "RouterIntegrationTransitDecryption", traits: {"smithy.api#jsonName" => "routerIntegrationTransitDecryption"}))
    Source.add_member(:connected_router_output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConnectedRouterOutputArn", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "connectedRouterOutputArn"}))
    Source.type = Types::Source
    SourcePriority.add_member(:primary_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PrimarySource", traits: {"smithy.api#jsonName" => "primarySource"}))
    SourcePriority.type = Types::SourcePriority
    SourceType.add_member(:owned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNED", traits: {"smithy.api#enumValue" => "OWNED"}))
    SourceType.add_member(:entitled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTITLED", traits: {"smithy.api#enumValue" => "ENTITLED"}))
    SrtCallerRouterInputConfiguration.add_member(:source_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceAddress", traits: {"smithy.api#jsonName" => "sourceAddress", "smithy.api#required" => {}}))
    SrtCallerRouterInputConfiguration.add_member(:source_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SourcePort", traits: {"smithy.api#jsonName" => "sourcePort", "smithy.api#range" => {"min" => 1024, "max" => 65535}, "smithy.api#required" => {}}))
    SrtCallerRouterInputConfiguration.add_member(:minimum_latency_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MinimumLatencyMilliseconds", traits: {"smithy.api#jsonName" => "minimumLatencyMilliseconds", "smithy.api#range" => {"min" => 10, "max" => 10000}, "smithy.api#required" => {}}))
    SrtCallerRouterInputConfiguration.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    SrtCallerRouterInputConfiguration.add_member(:decryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtDecryptionConfiguration, name: "DecryptionConfiguration", traits: {"smithy.api#jsonName" => "decryptionConfiguration"}))
    SrtCallerRouterInputConfiguration.type = Types::SrtCallerRouterInputConfiguration
    SrtCallerRouterOutputConfiguration.add_member(:destination_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationAddress", traits: {"smithy.api#jsonName" => "destinationAddress", "smithy.api#required" => {}}))
    SrtCallerRouterOutputConfiguration.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DestinationPort", traits: {"smithy.api#jsonName" => "destinationPort", "smithy.api#range" => {"min" => 1024, "max" => 65535}, "smithy.api#required" => {}}))
    SrtCallerRouterOutputConfiguration.add_member(:minimum_latency_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MinimumLatencyMilliseconds", traits: {"smithy.api#jsonName" => "minimumLatencyMilliseconds", "smithy.api#range" => {"min" => 10, "max" => 10000}, "smithy.api#required" => {}}))
    SrtCallerRouterOutputConfiguration.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    SrtCallerRouterOutputConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtEncryptionConfiguration, name: "EncryptionConfiguration", traits: {"smithy.api#jsonName" => "encryptionConfiguration"}))
    SrtCallerRouterOutputConfiguration.type = Types::SrtCallerRouterOutputConfiguration
    SrtDecryptionConfiguration.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerEncryptionKeyConfiguration, name: "EncryptionKey", traits: {"smithy.api#jsonName" => "encryptionKey", "smithy.api#required" => {}}))
    SrtDecryptionConfiguration.type = Types::SrtDecryptionConfiguration
    SrtEncryptionConfiguration.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerEncryptionKeyConfiguration, name: "EncryptionKey", traits: {"smithy.api#jsonName" => "encryptionKey", "smithy.api#required" => {}}))
    SrtEncryptionConfiguration.type = Types::SrtEncryptionConfiguration
    SrtListenerRouterInputConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port", "smithy.api#range" => {"min" => 3000, "max" => 30000}, "smithy.api#required" => {}}))
    SrtListenerRouterInputConfiguration.add_member(:minimum_latency_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MinimumLatencyMilliseconds", traits: {"smithy.api#jsonName" => "minimumLatencyMilliseconds", "smithy.api#range" => {"min" => 10, "max" => 10000}, "smithy.api#required" => {}}))
    SrtListenerRouterInputConfiguration.add_member(:decryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtDecryptionConfiguration, name: "DecryptionConfiguration", traits: {"smithy.api#jsonName" => "decryptionConfiguration"}))
    SrtListenerRouterInputConfiguration.type = Types::SrtListenerRouterInputConfiguration
    SrtListenerRouterOutputConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port", "smithy.api#range" => {"min" => 3000, "max" => 30000}, "smithy.api#required" => {}}))
    SrtListenerRouterOutputConfiguration.add_member(:minimum_latency_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MinimumLatencyMilliseconds", traits: {"smithy.api#jsonName" => "minimumLatencyMilliseconds", "smithy.api#range" => {"min" => 10, "max" => 10000}, "smithy.api#required" => {}}))
    SrtListenerRouterOutputConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SrtEncryptionConfiguration, name: "EncryptionConfiguration", traits: {"smithy.api#jsonName" => "encryptionConfiguration"}))
    SrtListenerRouterOutputConfiguration.type = Types::SrtListenerRouterOutputConfiguration
    StandardRouterInputConfiguration.add_member(:network_interface_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "NetworkInterfaceArn", traits: {"smithy.api#jsonName" => "networkInterfaceArn", "smithy.api#required" => {}}))
    StandardRouterInputConfiguration.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputProtocolConfiguration, name: "ProtocolConfiguration", traits: {"smithy.api#jsonName" => "protocolConfiguration", "smithy.api#required" => {}}))
    StandardRouterInputConfiguration.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputProtocol, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    StandardRouterInputConfiguration.type = Types::StandardRouterInputConfiguration
    StandardRouterInputStreamDetails.add_member(:source_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceIpAddress", traits: {"smithy.api#jsonName" => "sourceIpAddress"}))
    StandardRouterInputStreamDetails.type = Types::StandardRouterInputStreamDetails
    StandardRouterOutputConfiguration.add_member(:network_interface_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "NetworkInterfaceArn", traits: {"smithy.api#jsonName" => "networkInterfaceArn", "smithy.api#required" => {}}))
    StandardRouterOutputConfiguration.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputProtocolConfiguration, name: "ProtocolConfiguration", traits: {"smithy.api#jsonName" => "protocolConfiguration", "smithy.api#required" => {}}))
    StandardRouterOutputConfiguration.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputProtocol, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    StandardRouterOutputConfiguration.type = Types::StandardRouterOutputConfiguration
    StandardRouterOutputStreamDetails.add_member(:destination_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DestinationIpAddress", traits: {"smithy.api#jsonName" => "destinationIpAddress"}))
    StandardRouterOutputStreamDetails.type = Types::StandardRouterOutputStreamDetails
    StartFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    StartFlowRequest.type = Types::StartFlowRequest
    StartFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    StartFlowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    StartFlowResponse.type = Types::StartFlowResponse
    StartRouterInputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartRouterInputRequest.type = Types::StartRouterInputRequest
    StartRouterInputResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    StartRouterInputResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    StartRouterInputResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    StartRouterInputResponse.add_member(:maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceScheduleType, name: "MaintenanceScheduleType", traits: {"smithy.api#jsonName" => "maintenanceScheduleType", "smithy.api#required" => {}}))
    StartRouterInputResponse.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "MaintenanceSchedule", traits: {"smithy.api#jsonName" => "maintenanceSchedule", "smithy.api#required" => {}}))
    StartRouterInputResponse.type = Types::StartRouterInputResponse
    StartRouterOutputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartRouterOutputRequest.type = Types::StartRouterOutputRequest
    StartRouterOutputResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    StartRouterOutputResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    StartRouterOutputResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    StartRouterOutputResponse.add_member(:maintenance_schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceScheduleType, name: "MaintenanceScheduleType", traits: {"smithy.api#jsonName" => "maintenanceScheduleType", "smithy.api#required" => {}}))
    StartRouterOutputResponse.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "MaintenanceSchedule", traits: {"smithy.api#jsonName" => "maintenanceSchedule", "smithy.api#required" => {}}))
    StartRouterOutputResponse.type = Types::StartRouterOutputResponse
    State.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    State.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Status.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    Status.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Status.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    Status.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    Status.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    Status.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    Status.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    StopFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    StopFlowRequest.type = Types::StopFlowRequest
    StopFlowResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    StopFlowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    StopFlowResponse.type = Types::StopFlowResponse
    StopRouterInputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopRouterInputRequest.type = Types::StopRouterInputRequest
    StopRouterInputResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    StopRouterInputResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    StopRouterInputResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    StopRouterInputResponse.type = Types::StopRouterInputResponse
    StopRouterOutputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopRouterOutputRequest.type = Types::StopRouterOutputRequest
    StopRouterOutputResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    StopRouterOutputResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    StopRouterOutputResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputState, name: "State", traits: {"smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    StopRouterOutputResponse.type = Types::StopRouterOutputResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagGlobalResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagGlobalResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagGlobalResourceRequest.type = Types::TagGlobalResourceRequest
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TakeRouterInputRequest.add_member(:router_output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "RouterOutputArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    TakeRouterInputRequest.add_member(:router_input_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "RouterInputArn", traits: {"smithy.api#jsonName" => "routerInputArn"}))
    TakeRouterInputRequest.type = Types::TakeRouterInputRequest
    TakeRouterInputResponse.add_member(:routed_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputRoutedState, name: "RoutedState", traits: {"smithy.api#jsonName" => "routedState", "smithy.api#required" => {}}))
    TakeRouterInputResponse.add_member(:router_output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "RouterOutputArn", traits: {"smithy.api#jsonName" => "routerOutputArn", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    TakeRouterInputResponse.add_member(:router_output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RouterOutputName", traits: {"smithy.api#jsonName" => "routerOutputName", "smithy.api#required" => {}}))
    TakeRouterInputResponse.add_member(:router_input_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "RouterInputArn", traits: {"smithy.api#jsonName" => "routerInputArn"}))
    TakeRouterInputResponse.add_member(:router_input_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RouterInputName", traits: {"smithy.api#jsonName" => "routerInputName"}))
    TakeRouterInputResponse.type = Types::TakeRouterInputResponse
    Tcs.add_member(:sdr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SDR", traits: {"smithy.api#enumValue" => "SDR"}))
    Tcs.add_member(:pq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PQ", traits: {"smithy.api#enumValue" => "PQ"}))
    Tcs.add_member(:hlg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HLG", traits: {"smithy.api#enumValue" => "HLG"}))
    Tcs.add_member(:linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINEAR", traits: {"smithy.api#enumValue" => "LINEAR"}))
    Tcs.add_member(:bt2100_linpq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2100LINPQ", traits: {"smithy.api#enumValue" => "BT2100LINPQ"}))
    Tcs.add_member(:bt2100_linhlg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2100LINHLG", traits: {"smithy.api#enumValue" => "BT2100LINHLG"}))
    Tcs.add_member(:st2065_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST2065_1", traits: {"smithy.api#enumValue" => "ST2065-1"}))
    Tcs.add_member(:st428_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST428_1", traits: {"smithy.api#enumValue" => "ST428-1"}))
    Tcs.add_member(:density, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENSITY", traits: {"smithy.api#enumValue" => "DENSITY"}))
    ThumbnailDetails.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowArn", "smithy.api#required" => {}}))
    ThumbnailDetails.add_member(:thumbnail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Thumbnail", traits: {"smithy.api#jsonName" => "thumbnail"}))
    ThumbnailDetails.add_member(:thumbnail_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessagedetail, name: "ThumbnailMessages", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "thumbnailMessages", "smithy.api#required" => {}}))
    ThumbnailDetails.add_member(:timecode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Timecode", traits: {"smithy.api#jsonName" => "timecode"}))
    ThumbnailDetails.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Timestamp", traits: {"smithy.api#jsonName" => "timestamp", "smithy.api#timestampFormat" => "date-time"}))
    ThumbnailDetails.type = Types::ThumbnailDetails
    ThumbnailState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ThumbnailState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TlsEncryption.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsEncryptionType, name: "EncryptionType", traits: {"smithy.api#jsonName" => "encryptionType"}))
    TlsEncryption.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsEncryptionConfiguration, name: "EncryptionConfiguration", traits: {"smithy.api#jsonName" => "encryptionConfiguration", "smithy.api#required" => {}}))
    TlsEncryption.type = Types::TlsEncryption
    TlsEncryptionConfiguration.add_member(:public, Types::TlsEncryptionConfiguration::Public, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicTlsEncryptionConfiguration, name: "Public", traits: {"smithy.api#jsonName" => "public"}))
    TlsEncryptionConfiguration.add_member(:unknown, Types::TlsEncryptionConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TlsEncryptionConfiguration.type = Types::TlsEncryptionConfiguration
    TlsEncryptionType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Transport.add_member(:cidr_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "CidrAllowList", traits: {"smithy.api#jsonName" => "cidrAllowList"}))
    Transport.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    Transport.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    Transport.add_member(:max_sync_buffer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxSyncBuffer", traits: {"smithy.api#jsonName" => "maxSyncBuffer"}))
    Transport.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    Transport.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protocol", "smithy.api#required" => {}}))
    Transport.add_member(:remote_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RemoteId", traits: {"smithy.api#jsonName" => "remoteId"}))
    Transport.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    Transport.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    Transport.add_member(:smoothing_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SmoothingLatency", traits: {"smithy.api#jsonName" => "smoothingLatency"}))
    Transport.add_member(:source_listener_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceListenerAddress", traits: {"smithy.api#jsonName" => "sourceListenerAddress"}))
    Transport.add_member(:source_listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SourceListenerPort", traits: {"smithy.api#jsonName" => "sourceListenerPort"}))
    Transport.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    Transport.add_member(:ndi_speed_hq_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "NdiSpeedHqQuality", traits: {"smithy.api#jsonName" => "ndiSpeedHqQuality"}))
    Transport.add_member(:ndi_program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NdiProgramName", traits: {"smithy.api#jsonName" => "ndiProgramName"}))
    Transport.add_member(:ndi_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiSourceSettings, name: "NdiSourceSettings", traits: {"smithy.api#jsonName" => "ndiSourceSettings"}))
    Transport.add_member(:ndi_output_timecode_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiOutputTimecodeSource, name: "NdiOutputTimecodeSource", traits: {"smithy.api#jsonName" => "ndiOutputTimecodeSource"}))
    Transport.add_member(:ndi_audio_reference_level, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiAudioReferenceLevel, name: "NdiAudioReferenceLevel", traits: {"smithy.api#jsonName" => "ndiAudioReferenceLevel"}))
    Transport.type = Types::Transport
    TransportMediaInfo.add_member(:programs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftransportstreamprogram, name: "Programs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "programs", "smithy.api#required" => {}}))
    TransportMediaInfo.add_member(:ts_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "TsId", traits: {"smithy.api#jsonName" => "tsId"}))
    TransportMediaInfo.type = Types::TransportMediaInfo
    TransportStream.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Channels", traits: {"smithy.api#jsonName" => "channels"}))
    TransportStream.add_member(:codec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Codec", traits: {"smithy.api#jsonName" => "codec"}))
    TransportStream.add_member(:color, ::Smithy::Schema::Shapes::MemberShape.new(target: ColorInformation, name: "Color", traits: {"smithy.api#jsonName" => "color"}))
    TransportStream.add_member(:frame_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FrameRate", traits: {"smithy.api#jsonName" => "frameRate"}))
    TransportStream.add_member(:frame_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameResolution, name: "FrameResolution", traits: {"smithy.api#jsonName" => "frameResolution"}))
    TransportStream.add_member(:pid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Pid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "pid", "smithy.api#required" => {}}))
    TransportStream.add_member(:sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SampleRate", traits: {"smithy.api#jsonName" => "sampleRate"}))
    TransportStream.add_member(:sample_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SampleSize", traits: {"smithy.api#jsonName" => "sampleSize"}))
    TransportStream.add_member(:stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "streamType", "smithy.api#required" => {}}))
    TransportStream.type = Types::TransportStream
    TransportStreamProgram.add_member(:pcr_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "PcrPid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "pcrPid", "smithy.api#required" => {}}))
    TransportStreamProgram.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ProgramName", traits: {"smithy.api#jsonName" => "programName"}))
    TransportStreamProgram.add_member(:program_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ProgramNumber", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "programNumber", "smithy.api#required" => {}}))
    TransportStreamProgram.add_member(:program_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ProgramPid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "programPid", "smithy.api#required" => {}}))
    TransportStreamProgram.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftransportstream, name: "Streams", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "streams", "smithy.api#required" => {}}))
    TransportStreamProgram.type = Types::TransportStreamProgram
    UntagGlobalResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagGlobalResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagGlobalResourceRequest.type = Types::UntagGlobalResourceRequest
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateBridgeFlowSourceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$"}))
    UpdateBridgeFlowSourceRequest.add_member(:flow_vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "FlowVpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "flowVpcInterfaceAttachment"}))
    UpdateBridgeFlowSourceRequest.type = Types::UpdateBridgeFlowSourceRequest
    UpdateBridgeNetworkOutputRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IpAddress", traits: {"smithy.api#jsonName" => "ipAddress"}))
    UpdateBridgeNetworkOutputRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NetworkName", traits: {"smithy.api#jsonName" => "networkName"}))
    UpdateBridgeNetworkOutputRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    UpdateBridgeNetworkOutputRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    UpdateBridgeNetworkOutputRequest.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Ttl", traits: {"smithy.api#jsonName" => "ttl"}))
    UpdateBridgeNetworkOutputRequest.type = Types::UpdateBridgeNetworkOutputRequest
    UpdateBridgeNetworkSourceRequest.add_member(:multicast_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MulticastIp", traits: {"smithy.api#jsonName" => "multicastIp"}))
    UpdateBridgeNetworkSourceRequest.add_member(:multicast_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastSourceSettings, name: "MulticastSourceSettings", traits: {"smithy.api#jsonName" => "multicastSourceSettings"}))
    UpdateBridgeNetworkSourceRequest.add_member(:network_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NetworkName", traits: {"smithy.api#jsonName" => "networkName"}))
    UpdateBridgeNetworkSourceRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    UpdateBridgeNetworkSourceRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    UpdateBridgeNetworkSourceRequest.type = Types::UpdateBridgeNetworkSourceRequest
    UpdateBridgeOutputRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    UpdateBridgeOutputRequest.add_member(:network_output, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateBridgeNetworkOutputRequest, name: "NetworkOutput", traits: {"smithy.api#jsonName" => "networkOutput"}))
    UpdateBridgeOutputRequest.add_member(:output_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutputName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBridgeOutputRequest.type = Types::UpdateBridgeOutputRequest
    UpdateBridgeOutputResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    UpdateBridgeOutputResponse.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeOutput, name: "Output", traits: {"smithy.api#jsonName" => "output"}))
    UpdateBridgeOutputResponse.type = Types::UpdateBridgeOutputResponse
    UpdateBridgeRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    UpdateBridgeRequest.add_member(:egress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateEgressGatewayBridgeRequest, name: "EgressGatewayBridge", traits: {"smithy.api#jsonName" => "egressGatewayBridge"}))
    UpdateBridgeRequest.add_member(:ingress_gateway_bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateIngressGatewayBridgeRequest, name: "IngressGatewayBridge", traits: {"smithy.api#jsonName" => "ingressGatewayBridge"}))
    UpdateBridgeRequest.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFailoverConfig, name: "SourceFailoverConfig", traits: {"smithy.api#jsonName" => "sourceFailoverConfig"}))
    UpdateBridgeRequest.type = Types::UpdateBridgeRequest
    UpdateBridgeResponse.add_member(:bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: Bridge, name: "Bridge", traits: {"smithy.api#jsonName" => "bridge"}))
    UpdateBridgeResponse.type = Types::UpdateBridgeResponse
    UpdateBridgeSourceRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    UpdateBridgeSourceRequest.add_member(:flow_source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateBridgeFlowSourceRequest, name: "FlowSource", traits: {"smithy.api#jsonName" => "flowSource"}))
    UpdateBridgeSourceRequest.add_member(:network_source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateBridgeNetworkSourceRequest, name: "NetworkSource", traits: {"smithy.api#jsonName" => "networkSource"}))
    UpdateBridgeSourceRequest.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBridgeSourceRequest.type = Types::UpdateBridgeSourceRequest
    UpdateBridgeSourceResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    UpdateBridgeSourceResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeSource, name: "Source", traits: {"smithy.api#jsonName" => "source"}))
    UpdateBridgeSourceResponse.type = Types::UpdateBridgeSourceResponse
    UpdateBridgeStateRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeArn, name: "BridgeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$", "smithy.api#required" => {}}))
    UpdateBridgeStateRequest.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredState, name: "DesiredState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "desiredState", "smithy.api#required" => {}}))
    UpdateBridgeStateRequest.type = Types::UpdateBridgeStateRequest
    UpdateBridgeStateResponse.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn"}))
    UpdateBridgeStateResponse.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredState, name: "DesiredState", traits: {"smithy.api#jsonName" => "desiredState"}))
    UpdateBridgeStateResponse.type = Types::UpdateBridgeStateResponse
    UpdateEgressGatewayBridgeRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    UpdateEgressGatewayBridgeRequest.type = Types::UpdateEgressGatewayBridgeRequest
    UpdateEncryption.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: Algorithm, name: "Algorithm", traits: {"smithy.api#jsonName" => "algorithm"}))
    UpdateEncryption.add_member(:constant_initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConstantInitializationVector", traits: {"smithy.api#jsonName" => "constantInitializationVector"}))
    UpdateEncryption.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "DeviceId", traits: {"smithy.api#jsonName" => "deviceId"}))
    UpdateEncryption.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyType", traits: {"smithy.api#jsonName" => "keyType"}))
    UpdateEncryption.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region", traits: {"smithy.api#jsonName" => "region"}))
    UpdateEncryption.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    UpdateEncryption.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RoleArn", traits: {"smithy.api#jsonName" => "roleArn"}))
    UpdateEncryption.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SecretArn", traits: {"smithy.api#jsonName" => "secretArn"}))
    UpdateEncryption.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Url", traits: {"smithy.api#jsonName" => "url"}))
    UpdateEncryption.type = Types::UpdateEncryption
    UpdateFailoverConfig.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, name: "FailoverMode", traits: {"smithy.api#jsonName" => "failoverMode"}))
    UpdateFailoverConfig.add_member(:recovery_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RecoveryWindow", traits: {"smithy.api#jsonName" => "recoveryWindow"}))
    UpdateFailoverConfig.add_member(:source_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: SourcePriority, name: "SourcePriority", traits: {"smithy.api#jsonName" => "sourcePriority"}))
    UpdateFailoverConfig.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    UpdateFailoverConfig.type = Types::UpdateFailoverConfig
    UpdateFlowEntitlementRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFlowEntitlementRequest.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateEncryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    UpdateFlowEntitlementRequest.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:entitlement:.+$", "smithy.api#required" => {}}))
    UpdateFlowEntitlementRequest.add_member(:entitlement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementStatus, name: "EntitlementStatus", traits: {"smithy.api#jsonName" => "entitlementStatus"}))
    UpdateFlowEntitlementRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowEntitlementRequest.add_member(:subscribers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "Subscribers", traits: {"smithy.api#jsonName" => "subscribers"}))
    UpdateFlowEntitlementRequest.type = Types::UpdateFlowEntitlementRequest
    UpdateFlowEntitlementResponse.add_member(:entitlement, ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, name: "Entitlement", traits: {"smithy.api#jsonName" => "entitlement"}))
    UpdateFlowEntitlementResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    UpdateFlowEntitlementResponse.type = Types::UpdateFlowEntitlementResponse
    UpdateFlowMediaStreamRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamAttributesRequest, name: "Attributes", traits: {"smithy.api#jsonName" => "attributes"}))
    UpdateFlowMediaStreamRequest.add_member(:clock_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ClockRate", traits: {"smithy.api#jsonName" => "clockRate"}))
    UpdateFlowMediaStreamRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFlowMediaStreamRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowMediaStreamRequest.add_member(:media_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MediaStreamName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFlowMediaStreamRequest.add_member(:media_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamType, name: "MediaStreamType", traits: {"smithy.api#jsonName" => "mediaStreamType"}))
    UpdateFlowMediaStreamRequest.add_member(:video_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VideoFormat", traits: {"smithy.api#jsonName" => "videoFormat"}))
    UpdateFlowMediaStreamRequest.type = Types::UpdateFlowMediaStreamRequest
    UpdateFlowMediaStreamResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    UpdateFlowMediaStreamResponse.add_member(:media_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStream, name: "MediaStream", traits: {"smithy.api#jsonName" => "mediaStream"}))
    UpdateFlowMediaStreamResponse.type = Types::UpdateFlowMediaStreamResponse
    UpdateFlowOutputRequest.add_member(:cidr_allow_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "CidrAllowList", traits: {"smithy.api#jsonName" => "cidrAllowList"}))
    UpdateFlowOutputRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFlowOutputRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Destination", traits: {"smithy.api#jsonName" => "destination"}))
    UpdateFlowOutputRequest.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateEncryption, name: "Encryption", traits: {"smithy.api#jsonName" => "encryption"}))
    UpdateFlowOutputRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowOutputRequest.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    UpdateFlowOutputRequest.add_member(:media_stream_output_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamoutputconfigurationrequest, name: "MediaStreamOutputConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamOutputConfigurations"}))
    UpdateFlowOutputRequest.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    UpdateFlowOutputRequest.add_member(:output_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OutputArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:output:.+$", "smithy.api#required" => {}}))
    UpdateFlowOutputRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    UpdateFlowOutputRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    UpdateFlowOutputRequest.add_member(:remote_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RemoteId", traits: {"smithy.api#jsonName" => "remoteId"}))
    UpdateFlowOutputRequest.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    UpdateFlowOutputRequest.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    UpdateFlowOutputRequest.add_member(:smoothing_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SmoothingLatency", traits: {"smithy.api#jsonName" => "smoothingLatency"}))
    UpdateFlowOutputRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    UpdateFlowOutputRequest.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    UpdateFlowOutputRequest.add_member(:output_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputStatus, name: "OutputStatus", traits: {"smithy.api#jsonName" => "outputStatus"}))
    UpdateFlowOutputRequest.add_member(:ndi_program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NdiProgramName", traits: {"smithy.api#jsonName" => "ndiProgramName"}))
    UpdateFlowOutputRequest.add_member(:ndi_speed_hq_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "NdiSpeedHqQuality", traits: {"smithy.api#jsonName" => "ndiSpeedHqQuality"}))
    UpdateFlowOutputRequest.add_member(:router_integration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "RouterIntegrationState", traits: {"smithy.api#jsonName" => "routerIntegrationState"}))
    UpdateFlowOutputRequest.add_member(:router_integration_transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryption, name: "RouterIntegrationTransitEncryption", traits: {"smithy.api#jsonName" => "routerIntegrationTransitEncryption"}))
    UpdateFlowOutputRequest.add_member(:ndi_output_timecode_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiOutputTimecodeSource, name: "NdiOutputTimecodeSource", traits: {"smithy.api#jsonName" => "ndiOutputTimecodeSource"}))
    UpdateFlowOutputRequest.add_member(:ndi_audio_reference_level, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiAudioReferenceLevel, name: "NdiAudioReferenceLevel", traits: {"smithy.api#jsonName" => "ndiAudioReferenceLevel"}))
    UpdateFlowOutputRequest.type = Types::UpdateFlowOutputRequest
    UpdateFlowOutputResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    UpdateFlowOutputResponse.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: Output, name: "Output", traits: {"smithy.api#jsonName" => "output"}))
    UpdateFlowOutputResponse.type = Types::UpdateFlowOutputResponse
    UpdateFlowRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowRequest.add_member(:source_failover_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFailoverConfig, name: "SourceFailoverConfig", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "sourceFailoverConfig"}))
    UpdateFlowRequest.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateMaintenance, name: "Maintenance", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#jsonName" => "maintenance"}))
    UpdateFlowRequest.add_member(:source_monitoring_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfig, name: "SourceMonitoringConfig", traits: {"smithy.api#jsonName" => "sourceMonitoringConfig"}))
    UpdateFlowRequest.add_member(:ndi_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiConfig, name: "NdiConfig", traits: {"smithy.api#jsonName" => "ndiConfig"}))
    UpdateFlowRequest.add_member(:flow_size, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowSize, name: "FlowSize", traits: {"smithy.api#jsonName" => "flowSize"}))
    UpdateFlowRequest.add_member(:encoding_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingConfig, name: "EncodingConfig", traits: {"smithy.api#jsonName" => "encodingConfig"}))
    UpdateFlowRequest.type = Types::UpdateFlowRequest
    UpdateFlowResponse.add_member(:flow, ::Smithy::Schema::Shapes::MemberShape.new(target: Flow, name: "Flow", traits: {"smithy.api#jsonName" => "flow"}))
    UpdateFlowResponse.type = Types::UpdateFlowResponse
    UpdateFlowSourceRequest.add_member(:decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateEncryption, name: "Decryption", traits: {"smithy.api#jsonName" => "decryption"}))
    UpdateFlowSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFlowSourceRequest.add_member(:entitlement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EntitlementArn", traits: {"smithy.api#jsonName" => "entitlementArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:entitlement:.+$"}))
    UpdateFlowSourceRequest.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowArn, name: "FlowArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:flow:.+$", "smithy.api#required" => {}}))
    UpdateFlowSourceRequest.add_member(:ingest_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "IngestPort", traits: {"smithy.api#jsonName" => "ingestPort"}))
    UpdateFlowSourceRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    UpdateFlowSourceRequest.add_member(:max_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxLatency", traits: {"smithy.api#jsonName" => "maxLatency"}))
    UpdateFlowSourceRequest.add_member(:max_sync_buffer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxSyncBuffer", traits: {"smithy.api#jsonName" => "maxSyncBuffer"}))
    UpdateFlowSourceRequest.add_member(:media_stream_source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmediastreamsourceconfigurationrequest, name: "MediaStreamSourceConfigurations", traits: {"smithy.api#jsonName" => "mediaStreamSourceConfigurations"}))
    UpdateFlowSourceRequest.add_member(:min_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MinLatency", traits: {"smithy.api#jsonName" => "minLatency"}))
    UpdateFlowSourceRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    UpdateFlowSourceRequest.add_member(:sender_control_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SenderControlPort", traits: {"smithy.api#jsonName" => "senderControlPort"}))
    UpdateFlowSourceRequest.add_member(:sender_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderIpAddress", traits: {"smithy.api#jsonName" => "senderIpAddress"}))
    UpdateFlowSourceRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:source:.+$", "smithy.api#required" => {}}))
    UpdateFlowSourceRequest.add_member(:source_listener_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SourceListenerAddress", traits: {"smithy.api#jsonName" => "sourceListenerAddress"}))
    UpdateFlowSourceRequest.add_member(:source_listener_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SourceListenerPort", traits: {"smithy.api#jsonName" => "sourceListenerPort"}))
    UpdateFlowSourceRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamId", traits: {"smithy.api#jsonName" => "streamId"}))
    UpdateFlowSourceRequest.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    UpdateFlowSourceRequest.add_member(:whitelist_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "WhitelistCidr", traits: {"smithy.api#jsonName" => "whitelistCidr"}))
    UpdateFlowSourceRequest.add_member(:gateway_bridge_source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateGatewayBridgeSourceRequest, name: "GatewayBridgeSource", traits: {"smithy.api#jsonName" => "gatewayBridgeSource"}))
    UpdateFlowSourceRequest.add_member(:ndi_source_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiSourceSettings, name: "NdiSourceSettings", traits: {"smithy.api#jsonName" => "ndiSourceSettings"}))
    UpdateFlowSourceRequest.add_member(:router_integration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "RouterIntegrationState", traits: {"smithy.api#jsonName" => "routerIntegrationState"}))
    UpdateFlowSourceRequest.add_member(:router_integration_transit_decryption, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowTransitEncryption, name: "RouterIntegrationTransitDecryption", traits: {"smithy.api#jsonName" => "routerIntegrationTransitDecryption"}))
    UpdateFlowSourceRequest.type = Types::UpdateFlowSourceRequest
    UpdateFlowSourceResponse.add_member(:flow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FlowArn", traits: {"smithy.api#jsonName" => "flowArn"}))
    UpdateFlowSourceResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "Source", traits: {"smithy.api#jsonName" => "source"}))
    UpdateFlowSourceResponse.type = Types::UpdateFlowSourceResponse
    UpdateGatewayBridgeSourceRequest.add_member(:bridge_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "BridgeArn", traits: {"smithy.api#jsonName" => "bridgeArn", "smithy.api#pattern" => "^arn:.+:mediaconnect.+:bridge:.+$"}))
    UpdateGatewayBridgeSourceRequest.add_member(:vpc_interface_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceAttachment, name: "VpcInterfaceAttachment", traits: {"smithy.api#jsonName" => "vpcInterfaceAttachment"}))
    UpdateGatewayBridgeSourceRequest.type = Types::UpdateGatewayBridgeSourceRequest
    UpdateGatewayInstanceRequest.add_member(:bridge_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgePlacement, name: "BridgePlacement", traits: {"smithy.api#jsonName" => "bridgePlacement"}))
    UpdateGatewayInstanceRequest.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayInstanceArn, name: "GatewayInstanceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:.+:mediaconnect.+:gateway:.+:instance:.+$", "smithy.api#required" => {}}))
    UpdateGatewayInstanceRequest.type = Types::UpdateGatewayInstanceRequest
    UpdateGatewayInstanceResponse.add_member(:bridge_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgePlacement, name: "BridgePlacement", traits: {"smithy.api#jsonName" => "bridgePlacement"}))
    UpdateGatewayInstanceResponse.add_member(:gateway_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "GatewayInstanceArn", traits: {"smithy.api#jsonName" => "gatewayInstanceArn"}))
    UpdateGatewayInstanceResponse.type = Types::UpdateGatewayInstanceResponse
    UpdateIngressGatewayBridgeRequest.add_member(:max_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxBitrate", traits: {"smithy.api#jsonName" => "maxBitrate"}))
    UpdateIngressGatewayBridgeRequest.add_member(:max_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxOutputs", traits: {"smithy.api#jsonName" => "maxOutputs"}))
    UpdateIngressGatewayBridgeRequest.type = Types::UpdateIngressGatewayBridgeRequest
    UpdateMaintenance.add_member(:maintenance_day, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceDay, name: "MaintenanceDay", traits: {"smithy.api#jsonName" => "maintenanceDay"}))
    UpdateMaintenance.add_member(:maintenance_scheduled_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MaintenanceScheduledDate", traits: {"smithy.api#jsonName" => "maintenanceScheduledDate"}))
    UpdateMaintenance.add_member(:maintenance_start_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "MaintenanceStartHour", traits: {"smithy.api#jsonName" => "maintenanceStartHour"}))
    UpdateMaintenance.type = Types::UpdateMaintenance
    UpdateRouterInputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouterInputRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#length" => {"min" => 1, "max" => 128}}))
    UpdateRouterInputRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration"}))
    UpdateRouterInputRequest.add_member(:maximum_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MaximumBitrate", traits: {"smithy.api#jsonName" => "maximumBitrate"}))
    UpdateRouterInputRequest.add_member(:routing_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "RoutingScope", traits: {"smithy.api#jsonName" => "routingScope"}))
    UpdateRouterInputRequest.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTier, name: "Tier", traits: {"smithy.api#jsonName" => "tier"}))
    UpdateRouterInputRequest.add_member(:transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInputTransitEncryption, name: "TransitEncryption", traits: {"smithy.api#jsonName" => "transitEncryption"}))
    UpdateRouterInputRequest.add_member(:maintenance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceConfiguration, name: "MaintenanceConfiguration", traits: {"smithy.api#jsonName" => "maintenanceConfiguration"}))
    UpdateRouterInputRequest.add_member(:content_quality_analysis_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterContentQualityAnalysisConfiguration, name: "ContentQualityAnalysisConfiguration", traits: {"smithy.api#jsonName" => "contentQualityAnalysisConfiguration"}))
    UpdateRouterInputRequest.type = Types::UpdateRouterInputRequest
    UpdateRouterInputResponse.add_member(:router_input, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterInput, name: "RouterInput", traits: {"smithy.api#jsonName" => "routerInput", "smithy.api#required" => {}}))
    UpdateRouterInputResponse.type = Types::UpdateRouterInputResponse
    UpdateRouterNetworkInterfaceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouterNetworkInterfaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]([a-zA-Z0-9\\-_]*[a-zA-Z0-9])?$"}))
    UpdateRouterNetworkInterfaceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterfaceConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration"}))
    UpdateRouterNetworkInterfaceRequest.type = Types::UpdateRouterNetworkInterfaceRequest
    UpdateRouterNetworkInterfaceResponse.add_member(:router_network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterNetworkInterface, name: "RouterNetworkInterface", traits: {"smithy.api#jsonName" => "routerNetworkInterface", "smithy.api#required" => {}}))
    UpdateRouterNetworkInterfaceResponse.type = Types::UpdateRouterNetworkInterfaceResponse
    UpdateRouterOutputRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouterOutputRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#jsonName" => "name", "smithy.api#length" => {"min" => 1, "max" => 128}}))
    UpdateRouterOutputRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputConfiguration, name: "Configuration", traits: {"smithy.api#jsonName" => "configuration"}))
    UpdateRouterOutputRequest.add_member(:maximum_bitrate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "MaximumBitrate", traits: {"smithy.api#jsonName" => "maximumBitrate"}))
    UpdateRouterOutputRequest.add_member(:routing_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingScope, name: "RoutingScope", traits: {"smithy.api#jsonName" => "routingScope"}))
    UpdateRouterOutputRequest.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutputTier, name: "Tier", traits: {"smithy.api#jsonName" => "tier"}))
    UpdateRouterOutputRequest.add_member(:maintenance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceConfiguration, name: "MaintenanceConfiguration", traits: {"smithy.api#jsonName" => "maintenanceConfiguration"}))
    UpdateRouterOutputRequest.add_member(:fabric_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FabricConfiguration, name: "FabricConfiguration", traits: {"smithy.api#jsonName" => "fabricConfiguration"}))
    UpdateRouterOutputRequest.type = Types::UpdateRouterOutputRequest
    UpdateRouterOutputResponse.add_member(:router_output, ::Smithy::Schema::Shapes::MemberShape.new(target: RouterOutput, name: "RouterOutput", traits: {"smithy.api#jsonName" => "routerOutput", "smithy.api#required" => {}}))
    UpdateRouterOutputResponse.type = Types::UpdateRouterOutputResponse
    VideoColorimetry.add_member(:bt709, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT709", traits: {"smithy.api#enumValue" => "BT709"}))
    VideoColorimetry.add_member(:bt470_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT470M", traits: {"smithy.api#enumValue" => "BT470M"}))
    VideoColorimetry.add_member(:bt470_bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT470BG", traits: {"smithy.api#enumValue" => "BT470BG"}))
    VideoColorimetry.add_member(:bt601, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT601", traits: {"smithy.api#enumValue" => "BT601"}))
    VideoColorimetry.add_member(:smpte240_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMPTE240M", traits: {"smithy.api#enumValue" => "SMPTE240M"}))
    VideoColorimetry.add_member(:generic_film, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERIC_FILM", traits: {"smithy.api#enumValue" => "GENERIC_FILM"}))
    VideoColorimetry.add_member(:bt2020, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2020", traits: {"smithy.api#enumValue" => "BT2020"}))
    VideoColorimetry.add_member(:smpte428, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMPTE428", traits: {"smithy.api#enumValue" => "SMPTE428"}))
    VideoColorimetry.add_member(:smpte431, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMPTE431", traits: {"smithy.api#enumValue" => "SMPTE431"}))
    VideoColorimetry.add_member(:smpte432, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMPTE432", traits: {"smithy.api#enumValue" => "SMPTE432"}))
    VideoMatrixCoefficients.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY", traits: {"smithy.api#enumValue" => "IDENTITY"}))
    VideoMatrixCoefficients.add_member(:bt709, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT709", traits: {"smithy.api#enumValue" => "BT709"}))
    VideoMatrixCoefficients.add_member(:fcc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FCC", traits: {"smithy.api#enumValue" => "FCC"}))
    VideoMatrixCoefficients.add_member(:bt470_bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT470BG", traits: {"smithy.api#enumValue" => "BT470BG"}))
    VideoMatrixCoefficients.add_member(:bt601, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT601", traits: {"smithy.api#enumValue" => "BT601"}))
    VideoMatrixCoefficients.add_member(:smpte240_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMPTE240M", traits: {"smithy.api#enumValue" => "SMPTE240M"}))
    VideoMatrixCoefficients.add_member(:ycgco, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YCGCO", traits: {"smithy.api#enumValue" => "YCGCO"}))
    VideoMatrixCoefficients.add_member(:bt2020_ncl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2020_NCL", traits: {"smithy.api#enumValue" => "BT2020_NCL"}))
    VideoMatrixCoefficients.add_member(:bt2020_cl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2020_CL", traits: {"smithy.api#enumValue" => "BT2020_CL"}))
    VideoMatrixCoefficients.add_member(:smpte2085, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMPTE2085", traits: {"smithy.api#enumValue" => "SMPTE2085"}))
    VideoMatrixCoefficients.add_member(:chromaticity_derived_ncl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHROMATICITY_DERIVED_NCL", traits: {"smithy.api#enumValue" => "CHROMATICITY_DERIVED_NCL"}))
    VideoMatrixCoefficients.add_member(:chromaticity_derived_cl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHROMATICITY_DERIVED_CL", traits: {"smithy.api#enumValue" => "CHROMATICITY_DERIVED_CL"}))
    VideoMatrixCoefficients.add_member(:bt2100_ictcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2100_ICTCP", traits: {"smithy.api#enumValue" => "BT2100_ICTCP"}))
    VideoMatrixCoefficients.add_member(:ipt_c2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPT_C2", traits: {"smithy.api#enumValue" => "IPT_C2"}))
    VideoMonitoringSetting.add_member(:black_frames, ::Smithy::Schema::Shapes::MemberShape.new(target: BlackFrames, name: "BlackFrames", traits: {"smithy.api#jsonName" => "blackFrames"}))
    VideoMonitoringSetting.add_member(:frozen_frames, ::Smithy::Schema::Shapes::MemberShape.new(target: FrozenFrames, name: "FrozenFrames", traits: {"smithy.api#jsonName" => "frozenFrames"}))
    VideoMonitoringSetting.type = Types::VideoMonitoringSetting
    VideoTransferCharacteristics.add_member(:bt709, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT709", traits: {"smithy.api#enumValue" => "BT709"}))
    VideoTransferCharacteristics.add_member(:bt470_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT470M", traits: {"smithy.api#enumValue" => "BT470M"}))
    VideoTransferCharacteristics.add_member(:bt470_bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT470BG", traits: {"smithy.api#enumValue" => "BT470BG"}))
    VideoTransferCharacteristics.add_member(:bt601, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT601", traits: {"smithy.api#enumValue" => "BT601"}))
    VideoTransferCharacteristics.add_member(:smpte240_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMPTE240M", traits: {"smithy.api#enumValue" => "SMPTE240M"}))
    VideoTransferCharacteristics.add_member(:linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINEAR", traits: {"smithy.api#enumValue" => "LINEAR"}))
    VideoTransferCharacteristics.add_member(:log100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOG100", traits: {"smithy.api#enumValue" => "LOG100"}))
    VideoTransferCharacteristics.add_member(:log316, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOG316", traits: {"smithy.api#enumValue" => "LOG316"}))
    VideoTransferCharacteristics.add_member(:iec61966_2_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IEC61966_2_4", traits: {"smithy.api#enumValue" => "IEC61966_2_4"}))
    VideoTransferCharacteristics.add_member(:bt1361_ecg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT1361_ECG", traits: {"smithy.api#enumValue" => "BT1361_ECG"}))
    VideoTransferCharacteristics.add_member(:iec61966_2_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IEC61966_2_1", traits: {"smithy.api#enumValue" => "IEC61966_2_1"}))
    VideoTransferCharacteristics.add_member(:bt2020_10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2020_10", traits: {"smithy.api#enumValue" => "BT2020_10"}))
    VideoTransferCharacteristics.add_member(:bt2020_12, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2020_12", traits: {"smithy.api#enumValue" => "BT2020_12"}))
    VideoTransferCharacteristics.add_member(:bt2100_pq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2100_PQ", traits: {"smithy.api#enumValue" => "BT2100_PQ"}))
    VideoTransferCharacteristics.add_member(:smpte428, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMPTE428", traits: {"smithy.api#enumValue" => "SMPTE428"}))
    VideoTransferCharacteristics.add_member(:bt2100_hlg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT2100_HLG", traits: {"smithy.api#enumValue" => "BT2100_HLG"}))
    VpcInterface.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    VpcInterface.add_member(:network_interface_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "NetworkInterfaceIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkInterfaceIds", "smithy.api#required" => {}}))
    VpcInterface.add_member(:network_interface_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceType, name: "NetworkInterfaceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "networkInterfaceType", "smithy.api#required" => {}}))
    VpcInterface.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    VpcInterface.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "SecurityGroupIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "securityGroupIds", "smithy.api#required" => {}}))
    VpcInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubnetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subnetId", "smithy.api#required" => {}}))
    VpcInterface.type = Types::VpcInterface
    VpcInterfaceAttachment.add_member(:vpc_interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "VpcInterfaceName", traits: {"smithy.api#jsonName" => "vpcInterfaceName"}))
    VpcInterfaceAttachment.type = Types::VpcInterfaceAttachment
    VpcInterfaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    VpcInterfaceRequest.add_member(:network_interface_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceType, name: "NetworkInterfaceType", traits: {"smithy.api#jsonName" => "networkInterfaceType"}))
    VpcInterfaceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "roleArn", "smithy.api#required" => {}}))
    VpcInterfaceRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofstring, name: "SecurityGroupIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "securityGroupIds", "smithy.api#required" => {}}))
    VpcInterfaceRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubnetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subnetId", "smithy.api#required" => {}}))
    VpcInterfaceRequest.add_member(:vpc_interface_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Mapofstring, name: "VpcInterfaceTags", traits: {"smithy.api#jsonName" => "vpcInterfaceTags"}))
    VpcInterfaceRequest.type = Types::VpcInterfaceRequest
    VpcRouterNetworkInterfaceConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "SecurityGroupIds", traits: {"smithy.api#jsonName" => "securityGroupIds", "smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    VpcRouterNetworkInterfaceConfiguration.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SubnetId", traits: {"smithy.api#jsonName" => "subnetId", "smithy.api#required" => {}}))
    VpcRouterNetworkInterfaceConfiguration.type = Types::VpcRouterNetworkInterfaceConfiguration
    WindowMaintenanceSchedule.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "Start", traits: {"smithy.api#jsonName" => "start", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    WindowMaintenanceSchedule.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "End", traits: {"smithy.api#jsonName" => "end", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    WindowMaintenanceSchedule.add_member(:scheduled_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ScheduledTime", traits: {"smithy.api#jsonName" => "scheduledTime", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    WindowMaintenanceSchedule.type = Types::WindowMaintenanceSchedule
    Listofaddbridgeoutputrequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeOutputRequest, name: "member"))
    Listofaddbridgesourcerequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddBridgeSourceRequest, name: "member"))
    Listofaddmediastreamrequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddMediaStreamRequest, name: "member"))
    Listofaddoutputrequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddOutputRequest, name: "member"))
    Listofaudiomonitoringsetting.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioMonitoringSetting, name: "member"))
    Listofbridgeoutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeOutput, name: "member"))
    Listofbridgesource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BridgeSource, name: "member"))
    Listofdestinationconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "member"))
    Listofdestinationconfigurationrequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfigurationRequest, name: "member"))
    Listofentitlement.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, name: "member"))
    Listofgatewaynetwork.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayNetwork, name: "member"))
    Listofgrantentitlementrequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantEntitlementRequest, name: "member"))
    Listofinputconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConfiguration, name: "member"))
    Listofinputconfigurationrequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConfigurationRequest, name: "member"))
    Listofinteger.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    Listoflistedbridge.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedBridge, name: "member"))
    Listoflistedentitlement.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedEntitlement, name: "member"))
    Listoflistedflow.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedFlow, name: "member"))
    Listoflistedgateway.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedGateway, name: "member"))
    Listoflistedgatewayinstance.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListedGatewayInstance, name: "member"))
    Listofmediastream.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStream, name: "member"))
    Listofmediastreamoutputconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamOutputConfiguration, name: "member"))
    Listofmediastreamoutputconfigurationrequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamOutputConfigurationRequest, name: "member"))
    Listofmediastreamsourceconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSourceConfiguration, name: "member"))
    Listofmediastreamsourceconfigurationrequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSourceConfigurationRequest, name: "member"))
    Listofmessagedetail.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDetail, name: "member"))
    Listofndidiscoveryserverconfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiDiscoveryServerConfig, name: "member"))
    Listofndimediastreaminfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiMediaStreamInfo, name: "member"))
    Listofndisourceinfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NdiSourceInfo, name: "member"))
    Listofoffering.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Offering, name: "member"))
    Listofoutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Output, name: "member"))
    Listofreservation.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Reservation, name: "member"))
    Listofsetsourcerequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SetSourceRequest, name: "member"))
    Listofsource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "member"))
    Listofstring.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    Listoftransportstream.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportStream, name: "member"))
    Listoftransportstreamprogram.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportStreamProgram, name: "member"))
    Listofvideomonitoringsetting.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoMonitoringSetting, name: "member"))
    Listofvpcinterface.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterface, name: "member"))
    Listofvpcinterfacerequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcInterfaceRequest, name: "member"))
    Mapofstring.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Mapofstring.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))

    MediaConnect = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediaconnect#MediaConnect"
      service.name = "MediaConnect"
      service.version = "2018-11-14"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaConnect", "arnNamespace" => "mediaconnect", "cloudFormationName" => "MediaConnect"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "mediaconnect"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"maxAge" => 86400}, "smithy.api#suppress" => ["UnstableTrait.aws.api#tagEnabled"], "smithy.api#title" => "AWS MediaConnect", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://mediaconnect-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://mediaconnect-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://mediaconnect.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://mediaconnect.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to add outputs to an existing bridge"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/bridges/{BridgeArn}/outputs", "code" => 202}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to add sources to an existing bridge"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/bridges/{BridgeArn}/sources", "code" => 202}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add media streams to any flow", "createsResources" => ["MediaStream"], "resources" => {"required" => {"Flow" => {}, "MediaStream" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/mediaStreams", "code" => 201}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add outputs to any flow", "createsResources" => ["Output"], "resources" => {"required" => {"Flow" => {}, "Output" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/outputs", "code" => 201}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add sources to any flow", "createsResources" => ["Source"], "resources" => {"required" => {"Flow" => {}, "Source" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/source", "code" => 201}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add VPC interfaces to any flow", "createsResources" => ["VpcInterface"], "resources" => {"required" => {"Flow" => {}, "VpcInterface" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/vpcInterfaces", "code" => 201}}
      end)
      service.add_operation(:batch_get_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#BatchGetRouterInput"
        operation.name = "BatchGetRouterInput"
        operation.input = BatchGetRouterInputRequest
        operation.output = BatchGetRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetRouterInput", "resources" => {"required" => {"RouterInput" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/routerInputs", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["sdfExclude"]}
      end)
      service.add_operation(:batch_get_router_network_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#BatchGetRouterNetworkInterface"
        operation.name = "BatchGetRouterNetworkInterface"
        operation.input = BatchGetRouterNetworkInterfaceRequest
        operation.output = BatchGetRouterNetworkInterfaceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetRouterNetworkInterface", "resources" => {"required" => {"RouterNetworkInterface" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/routerNetworkInterfaces", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["sdfExclude"]}
      end)
      service.add_operation(:batch_get_router_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#BatchGetRouterOutput"
        operation.name = "BatchGetRouterOutput"
        operation.input = BatchGetRouterOutputRequest
        operation.output = BatchGetRouterOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetRouterOutput", "resources" => {"required" => {"RouterOutput" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/routerOutputs", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["sdfExclude"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create bridges"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/bridges", "code" => 201}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create flows", "createsResources" => ["Flow", "Source", "Output", "Entitlement"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows", "code" => 201}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create gateways"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/gateways", "code" => 201}}
      end)
      service.add_operation(:create_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#CreateRouterInput"
        operation.name = "CreateRouterInput"
        operation.input = CreateRouterInputRequest
        operation.output = CreateRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << RouterInputServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"name" => "CreateRouterInput", "documentation" => "Grants permission to create a new router input in AWS Elemental MediaConnect", "requiredActions" => ["mediaconnect:CreateRouterInput", "mediaconnect:AssociateRouterNetworkInterface", "mediaconnect:AssociateDestination", "mediaconnect:RegisterDestinationEndpoint", "mediaconnect:UpdateFlowOutput", "mediaconnect:TagResource", "medialive:UpdateChannel", "ec2:CreateNetworkInterface", "ec2:CreateTags", "iam:PassRole"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerInput", "code" => 201}}
      end)
      service.add_operation(:create_router_network_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#CreateRouterNetworkInterface"
        operation.name = "CreateRouterNetworkInterface"
        operation.input = CreateRouterNetworkInterfaceRequest
        operation.output = CreateRouterNetworkInterfaceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << RouterNetworkInterfaceServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"name" => "CreateRouterNetworkInterface", "documentation" => "Grants permission to create a new router network interface in AWS Elemental MediaConnect", "requiredActions" => ["mediaconnect:CreateRouterNetworkInterface", "mediaconnect:TagResource", "iam:CreateServiceLinkedRole"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerNetworkInterface", "code" => 201}}
      end)
      service.add_operation(:create_router_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#CreateRouterOutput"
        operation.name = "CreateRouterOutput"
        operation.input = CreateRouterOutputRequest
        operation.output = CreateRouterOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << RouterOutputServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"name" => "CreateRouterOutput", "documentation" => "Grants permission to create a new router output in AWS Elemental MediaConnect", "requiredActions" => ["mediaconnect:CreateRouterOutput", "mediaconnect:AssociateRouterNetworkInterface", "mediaconnect:AssociateSource", "mediaconnect:RegisterSourceEndpoint", "mediaconnect:UpdateFlowSource", "mediaconnect:TagResource", "medialive:UpdateInput", "ec2:CreateNetworkInterface", "ec2:CreateTags", "iam:PassRole"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerOutput", "code" => 201}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete bridges"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/bridges/{BridgeArn}", "code" => 200}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete flows"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete gateways"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/gateways/{GatewayArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DeleteRouterInput"
        operation.name = "DeleteRouterInput"
        operation.input = DeleteRouterInputRequest
        operation.output = DeleteRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteRouterInput", "documentation" => "Grants permission to delete a router input in AWS Elemental MediaConnect", "requiredActions" => ["mediaconnect:DeregisterDestinationEndpoint", "mediaconnect:DisassociateDestination"]}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/routerInput/{Arn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_router_network_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DeleteRouterNetworkInterface"
        operation.name = "DeleteRouterNetworkInterface"
        operation.input = DeleteRouterNetworkInterfaceRequest
        operation.output = DeleteRouterNetworkInterfaceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteRouterNetworkInterface", "documentation" => "Grants permission to delete a router network interface from AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/routerNetworkInterface/{Arn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_router_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#DeleteRouterOutput"
        operation.name = "DeleteRouterOutput"
        operation.input = DeleteRouterOutputRequest
        operation.output = DeleteRouterOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteRouterOutput", "documentation" => "Grants permission to delete a router output from AWS Elemental MediaConnect", "requiredActions" => ["mediaconnect:DeregisterSourceEndpoint", "mediaconnect:DisassociateSource"]}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/routerOutput/{Arn}", "code" => 200}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to deregister gateway instance"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/gateway-instances/{GatewayInstanceArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display the details of a bridge"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/bridges/{BridgeArn}", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display the details of a flow including the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/flows/{FlowArn}", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view information about the flow's source transport stream and programs"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/flows/{FlowArn}/source-metadata", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view flow's source thumbnail"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/flows/{FlowArn}/source-thumbnail", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display the details of a gateway including the gateway ARN, name, and CIDR blocks, as well as details about the networks"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/gateways/{GatewayArn}", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display the details of a gateway instance"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/gateway-instances/{GatewayInstanceArn}", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display the details of an offering"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/offerings/{OfferingArn}", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display the details of a reservation"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/reservations/{ReservationArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#GetRouterInput"
        operation.name = "GetRouterInput"
        operation.input = GetRouterInputRequest
        operation.output = GetRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetRouterInput", "documentation" => "Grants permission to retrieve information about a specific router input in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/routerInput/{Arn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_router_input_source_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#GetRouterInputSourceMetadata"
        operation.name = "GetRouterInputSourceMetadata"
        operation.input = GetRouterInputSourceMetadataRequest
        operation.output = GetRouterInputSourceMetadataResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetRouterInputSourceMetadata", "documentation" => "Grants permission to retrieve metadata about a router input source in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/routerInput/{Arn}/source-metadata", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_router_input_thumbnail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#GetRouterInputThumbnail"
        operation.name = "GetRouterInputThumbnail"
        operation.input = GetRouterInputThumbnailRequest
        operation.output = GetRouterInputThumbnailResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetRouterInputThumbnail", "documentation" => "Grants permission to retrieve the thumbnail for a router input in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/routerInput/{Arn}/thumbnail", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_router_network_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#GetRouterNetworkInterface"
        operation.name = "GetRouterNetworkInterface"
        operation.input = GetRouterNetworkInterfaceRequest
        operation.output = GetRouterNetworkInterfaceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetRouterNetworkInterface", "documentation" => "Grants permission to retrieve information about a specific router network interface in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/routerNetworkInterface/{Arn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_router_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#GetRouterOutput"
        operation.name = "GetRouterOutput"
        operation.input = GetRouterOutputRequest
        operation.output = GetRouterOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetRouterOutput", "documentation" => "Grants permission to retrieve information about a specific router output in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/routerOutput/{Arn}", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to grant entitlements on any flow", "createsResources" => ["Entitlement"], "resources" => {"required" => {"Flow" => {}, "Entitlement" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/{FlowArn}/entitlements", "code" => 200}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display a list of bridges that are associated with this account and an optionally specified Arn"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/bridges", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display a list of all entitlements that have been granted to the account"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/entitlements", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display a list of flows that are associated with this account"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/flows", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display a list of instances that are associated with this gateway"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/gateway-instances", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display a list of gateways that are associated with this account"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/gateways", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display a list of all offerings that are available to the account in the current AWS Region"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/offerings", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display a list of all reservations that have been purchased by the account in the current AWS Region"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/reservations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReservations.new
      end)
      service.add_operation(:list_router_inputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListRouterInputs"
        operation.name = "ListRouterInputs"
        operation.input = ListRouterInputsRequest
        operation.output = ListRouterInputsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListRouterInputs", "documentation" => "Grants permission to retrieve a list of router inputs in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerInputs", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
        operation[:paginator] = Paginators::ListRouterInputs.new
      end)
      service.add_operation(:list_router_network_interfaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListRouterNetworkInterfaces"
        operation.name = "ListRouterNetworkInterfaces"
        operation.input = ListRouterNetworkInterfacesRequest
        operation.output = ListRouterNetworkInterfacesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListRouterNetworkInterfaces", "documentation" => "Grants permission to retrieve a list of router network interfaces in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerNetworkInterfaces", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
        operation[:paginator] = Paginators::ListRouterNetworkInterfaces.new
      end)
      service.add_operation(:list_router_outputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListRouterOutputs"
        operation.name = "ListRouterOutputs"
        operation.input = ListRouterOutputsRequest
        operation.output = ListRouterOutputsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListRouterOutputs", "documentation" => "Grants permission to retrieve a list of router outputs in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerOutputs", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics.UnnecessaryReadonlyTrait"]}
        operation[:paginator] = Paginators::ListRouterOutputs.new
      end)
      service.add_operation(:list_tags_for_global_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListTagsForGlobalResource"
        operation.name = "ListTagsForGlobalResource"
        operation.input = ListTagsForGlobalResourceRequest
        operation.output = ListTagsForGlobalResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/global/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["sdfExclude"]}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to display a list of all tags associated with a resource"}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to purchase an offering"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/offerings/{OfferingArn}", "code" => 201}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove an output of an existing bridge"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/bridges/{BridgeArn}/outputs/{OutputName}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove a source of an existing bridge"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/bridges/{BridgeArn}/sources/{SourceName}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove media streams from any flow", "resources" => {"required" => {"Flow" => {}, "MediaStream" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}", "code" => 200}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove outputs from any flow", "resources" => {"required" => {"Flow" => {}, "Output" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/outputs/{OutputArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove sources from any flow", "resources" => {"required" => {"Flow" => {}, "Source" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/source/{SourceArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove VPC interfaces from any flow", "resources" => {"required" => {"Flow" => {}, "VpcInterface" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/vpcInterfaces/{VpcInterfaceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:restart_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RestartRouterInput"
        operation.name = "RestartRouterInput"
        operation.input = RestartRouterInputRequest
        operation.output = RestartRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "RestartRouterInput", "documentation" => "Grants permission to restart a router input in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerInput/restart/{Arn}", "code" => 202}}
      end)
      service.add_operation(:restart_router_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#RestartRouterOutput"
        operation.name = "RestartRouterOutput"
        operation.input = RestartRouterOutputRequest
        operation.output = RestartRouterOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "RestartRouterOutput", "documentation" => "Grants permission to restart a router output in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerOutput/restart/{Arn}", "code" => 202}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to revoke entitlements on any flow", "resources" => {"required" => {"Flow" => {}, "Entitlement" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to start flows"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/start/{FlowArn}", "code" => 202}}
      end)
      service.add_operation(:start_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#StartRouterInput"
        operation.name = "StartRouterInput"
        operation.input = StartRouterInputRequest
        operation.output = StartRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "StartRouterInput", "documentation" => "Grants permission to start a router input in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerInput/start/{Arn}", "code" => 202}}
      end)
      service.add_operation(:start_router_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#StartRouterOutput"
        operation.name = "StartRouterOutput"
        operation.input = StartRouterOutputRequest
        operation.output = StartRouterOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "StartRouterOutput", "documentation" => "Grants permission to start a router output in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerOutput/start/{Arn}", "code" => 202}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to stop flows"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/flows/stop/{FlowArn}", "code" => 202}}
      end)
      service.add_operation(:stop_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#StopRouterInput"
        operation.name = "StopRouterInput"
        operation.input = StopRouterInputRequest
        operation.output = StopRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "StopRouterInput", "documentation" => "Grants permission to stop a router input in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerInput/stop/{Arn}", "code" => 202}}
      end)
      service.add_operation(:stop_router_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#StopRouterOutput"
        operation.name = "StopRouterOutput"
        operation.input = StopRouterOutputRequest
        operation.output = StopRouterOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "StopRouterOutput", "documentation" => "Grants permission to stops a router output in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/routerOutput/stop/{Arn}", "code" => 202}}
      end)
      service.add_operation(:tag_global_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#TagGlobalResource"
        operation.name = "TagGlobalResource"
        operation.input = TagGlobalResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/global/{ResourceArn}", "code" => 204}, "smithy.api#tags" => ["sdfExclude"]}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to associate tags with resources", "resources" => {"optional" => {"Flow" => {}, "Output" => {}, "Source" => {}, "Entitlement" => {}, "RouterInput" => {}, "RouterOutput" => {}, "RouterNetworkInterface" => {}, "VpcInterface" => {}, "MediaStream" => {}, "SourceEndpoint" => {}, "DestinationEndpoint" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:take_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#TakeRouterInput"
        operation.name = "TakeRouterInput"
        operation.input = TakeRouterInputRequest
        operation.output = TakeRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "TakeRouterInput", "documentation" => "Grants permission to associate a router input with a router output in AWS Elemental MediaConnect"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/routerOutput/takeRouterInput/{RouterOutputArn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_global_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UntagGlobalResource"
        operation.name = "UntagGlobalResource"
        operation.input = UntagGlobalResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/global/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["sdfExclude"]}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from resources", "resources" => {"optional" => {"Flow" => {}, "Output" => {}, "Source" => {}, "Entitlement" => {}, "RouterInput" => {}, "RouterOutput" => {}, "RouterNetworkInterface" => {}, "VpcInterface" => {}, "MediaStream" => {}, "SourceEndpoint" => {}, "DestinationEndpoint" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update bridges"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/bridges/{BridgeArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an output of an existing bridge"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/bridges/{BridgeArn}/outputs/{OutputName}", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#suppress" => ["OperationNameAmbiguity"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a source of an existing bridge"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/bridges/{BridgeArn}/sources/{SourceName}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the state of an existing bridge"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/bridges/{BridgeArn}/state", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update flows"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update entitlements on any flow"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update media streams on any flow", "resources" => {"required" => {"Flow" => {}, "MediaStream" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update outputs on any flow", "resources" => {"required" => {"Flow" => {}, "Output" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}/outputs/{OutputArn}", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#suppress" => ["OperationNameAmbiguity"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the source of any flow", "resources" => {"required" => {"Flow" => {}, "Source" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/flows/{FlowArn}/source/{SourceArn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the configuration of an existing Gateway Instance"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/gateway-instances/{GatewayInstanceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_router_input, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateRouterInput"
        operation.name = "UpdateRouterInput"
        operation.input = UpdateRouterInputRequest
        operation.output = UpdateRouterInputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateRouterInput", "documentation" => "Grants permission to update the configuration of a router input in AWS Elemental MediaConnect", "requiredActions" => ["mediaconnect:UpdateRouterInput", "mediaconnect:AssociateRouterNetworkInterface", "mediaconnect:UpdateFlowOutput", "medialive:UpdateChannel", "ec2:CreateNetworkInterface", "ec2:CreateTags", "iam:PassRole"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/routerInput/{Arn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_router_network_interface, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateRouterNetworkInterface"
        operation.name = "UpdateRouterNetworkInterface"
        operation.input = UpdateRouterNetworkInterfaceRequest
        operation.output = UpdateRouterNetworkInterfaceResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateRouterNetworkInterface", "documentation" => "Grants permission to updated the configuration of a router network interface in AWS Elemental MediaConnect", "requiredActions" => ["mediaconnect:UpdateRouterNetworkInterface", "iam:CreateServiceLinkedRole"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/routerNetworkInterface/{Arn}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_router_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediaconnect#UpdateRouterOutput"
        operation.name = "UpdateRouterOutput"
        operation.input = UpdateRouterOutputRequest
        operation.output = UpdateRouterOutputResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateRouterOutput", "documentation" => "Grants permission to update the configuration of a router output in AWS Elemental MediaConnect", "requiredActions" => ["mediaconnect:UpdateRouterOutput", "mediaconnect:AssociateRouterNetworkInterface", "mediaconnect:UpdateFlowSource", "medialive:UpdateInput", "ec2:CreateNetworkInterface", "ec2:CreateTags", "iam:PassRole"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/routerOutput/{Arn}", "code" => 202}, "smithy.api#idempotent" => {}}
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
