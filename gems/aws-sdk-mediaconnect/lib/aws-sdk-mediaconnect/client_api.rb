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
    AddBridgeFlowSourceRequestFlowArnString = Shapes::StringShape.new(name: 'AddBridgeFlowSourceRequestFlowArnString')
    AddBridgeNetworkOutputRequest = Shapes::StructureShape.new(name: 'AddBridgeNetworkOutputRequest')
    AddBridgeNetworkSourceRequest = Shapes::StructureShape.new(name: 'AddBridgeNetworkSourceRequest')
    AddBridgeOutputRequest = Shapes::StructureShape.new(name: 'AddBridgeOutputRequest')
    AddBridgeOutputsRequest = Shapes::StructureShape.new(name: 'AddBridgeOutputsRequest')
    AddBridgeOutputsRequestBridgeArnString = Shapes::StringShape.new(name: 'AddBridgeOutputsRequestBridgeArnString')
    AddBridgeOutputsResponse = Shapes::StructureShape.new(name: 'AddBridgeOutputsResponse')
    AddBridgeSourceRequest = Shapes::StructureShape.new(name: 'AddBridgeSourceRequest')
    AddBridgeSourcesRequest = Shapes::StructureShape.new(name: 'AddBridgeSourcesRequest')
    AddBridgeSourcesResponse = Shapes::StructureShape.new(name: 'AddBridgeSourcesResponse')
    AddEgressGatewayBridgeRequest = Shapes::StructureShape.new(name: 'AddEgressGatewayBridgeRequest')
    AddFlowMediaStreamsRequest = Shapes::StructureShape.new(name: 'AddFlowMediaStreamsRequest')
    AddFlowMediaStreamsRequestFlowArnString = Shapes::StringShape.new(name: 'AddFlowMediaStreamsRequestFlowArnString')
    AddFlowMediaStreamsResponse = Shapes::StructureShape.new(name: 'AddFlowMediaStreamsResponse')
    AddFlowOutputs420Exception = Shapes::StructureShape.new(name: 'AddFlowOutputs420Exception')
    AddFlowOutputsRequest = Shapes::StructureShape.new(name: 'AddFlowOutputsRequest')
    AddFlowOutputsRequestFlowArnString = Shapes::StringShape.new(name: 'AddFlowOutputsRequestFlowArnString')
    AddFlowOutputsResponse = Shapes::StructureShape.new(name: 'AddFlowOutputsResponse')
    AddFlowSourcesRequest = Shapes::StructureShape.new(name: 'AddFlowSourcesRequest')
    AddFlowSourcesRequestFlowArnString = Shapes::StringShape.new(name: 'AddFlowSourcesRequestFlowArnString')
    AddFlowSourcesResponse = Shapes::StructureShape.new(name: 'AddFlowSourcesResponse')
    AddFlowVpcInterfacesRequest = Shapes::StructureShape.new(name: 'AddFlowVpcInterfacesRequest')
    AddFlowVpcInterfacesRequestFlowArnString = Shapes::StringShape.new(name: 'AddFlowVpcInterfacesRequestFlowArnString')
    AddFlowVpcInterfacesResponse = Shapes::StructureShape.new(name: 'AddFlowVpcInterfacesResponse')
    AddIngressGatewayBridgeRequest = Shapes::StructureShape.new(name: 'AddIngressGatewayBridgeRequest')
    AddMaintenance = Shapes::StructureShape.new(name: 'AddMaintenance')
    AddMediaStreamRequest = Shapes::StructureShape.new(name: 'AddMediaStreamRequest')
    AddOutputRequest = Shapes::StructureShape.new(name: 'AddOutputRequest')
    Algorithm = Shapes::StringShape.new(name: 'Algorithm')
    AudioMonitoringSetting = Shapes::StructureShape.new(name: 'AudioMonitoringSetting')
    AutomaticEncryptionKeyConfiguration = Shapes::StructureShape.new(name: 'AutomaticEncryptionKeyConfiguration')
    AutomaticEndpointEncryptionConfiguration = Shapes::StructureShape.new(name: 'AutomaticEndpointEncryptionConfiguration')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchGetDestinationEndpointError = Shapes::StructureShape.new(name: 'BatchGetDestinationEndpointError')
    BatchGetDestinationEndpointErrorList = Shapes::ListShape.new(name: 'BatchGetDestinationEndpointErrorList')
    BatchGetDestinationEndpointRequest = Shapes::StructureShape.new(name: 'BatchGetDestinationEndpointRequest')
    BatchGetDestinationEndpointRequestArnsList = Shapes::ListShape.new(name: 'BatchGetDestinationEndpointRequestArnsList')
    BatchGetDestinationEndpointResponse = Shapes::StructureShape.new(name: 'BatchGetDestinationEndpointResponse')
    BatchGetRouterInputError = Shapes::StructureShape.new(name: 'BatchGetRouterInputError')
    BatchGetRouterInputErrorList = Shapes::ListShape.new(name: 'BatchGetRouterInputErrorList')
    BatchGetRouterInputRequest = Shapes::StructureShape.new(name: 'BatchGetRouterInputRequest')
    BatchGetRouterInputRequestArnsList = Shapes::ListShape.new(name: 'BatchGetRouterInputRequestArnsList')
    BatchGetRouterInputResponse = Shapes::StructureShape.new(name: 'BatchGetRouterInputResponse')
    BatchGetRouterNetworkInterfaceError = Shapes::StructureShape.new(name: 'BatchGetRouterNetworkInterfaceError')
    BatchGetRouterNetworkInterfaceErrorList = Shapes::ListShape.new(name: 'BatchGetRouterNetworkInterfaceErrorList')
    BatchGetRouterNetworkInterfaceRequest = Shapes::StructureShape.new(name: 'BatchGetRouterNetworkInterfaceRequest')
    BatchGetRouterNetworkInterfaceRequestArnsList = Shapes::ListShape.new(name: 'BatchGetRouterNetworkInterfaceRequestArnsList')
    BatchGetRouterNetworkInterfaceResponse = Shapes::StructureShape.new(name: 'BatchGetRouterNetworkInterfaceResponse')
    BatchGetRouterOutputError = Shapes::StructureShape.new(name: 'BatchGetRouterOutputError')
    BatchGetRouterOutputErrorList = Shapes::ListShape.new(name: 'BatchGetRouterOutputErrorList')
    BatchGetRouterOutputRequest = Shapes::StructureShape.new(name: 'BatchGetRouterOutputRequest')
    BatchGetRouterOutputRequestArnsList = Shapes::ListShape.new(name: 'BatchGetRouterOutputRequestArnsList')
    BatchGetRouterOutputResponse = Shapes::StructureShape.new(name: 'BatchGetRouterOutputResponse')
    BatchGetSourceEndpointError = Shapes::StructureShape.new(name: 'BatchGetSourceEndpointError')
    BatchGetSourceEndpointErrorList = Shapes::ListShape.new(name: 'BatchGetSourceEndpointErrorList')
    BatchGetSourceEndpointRequest = Shapes::StructureShape.new(name: 'BatchGetSourceEndpointRequest')
    BatchGetSourceEndpointRequestArnsList = Shapes::ListShape.new(name: 'BatchGetSourceEndpointRequestArnsList')
    BatchGetSourceEndpointResponse = Shapes::StructureShape.new(name: 'BatchGetSourceEndpointResponse')
    BlackFrames = Shapes::StructureShape.new(name: 'BlackFrames')
    BlackFramesConfiguration = Shapes::StructureShape.new(name: 'BlackFramesConfiguration')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Bridge = Shapes::StructureShape.new(name: 'Bridge')
    BridgeArn = Shapes::StringShape.new(name: 'BridgeArn')
    BridgeFlowOutput = Shapes::StructureShape.new(name: 'BridgeFlowOutput')
    BridgeFlowSource = Shapes::StructureShape.new(name: 'BridgeFlowSource')
    BridgeNetworkOutput = Shapes::StructureShape.new(name: 'BridgeNetworkOutput')
    BridgeNetworkSource = Shapes::StructureShape.new(name: 'BridgeNetworkSource')
    BridgeOutput = Shapes::StructureShape.new(name: 'BridgeOutput')
    BridgePlacement = Shapes::StringShape.new(name: 'BridgePlacement')
    BridgeSource = Shapes::StructureShape.new(name: 'BridgeSource')
    BridgeState = Shapes::StringShape.new(name: 'BridgeState')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ColorInformation = Shapes::StructureShape.new(name: 'ColorInformation')
    Colorimetry = Shapes::StringShape.new(name: 'Colorimetry')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectEndpointsRequest = Shapes::StructureShape.new(name: 'ConnectEndpointsRequest')
    ConnectEndpointsResponse = Shapes::StructureShape.new(name: 'ConnectEndpointsResponse')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    ConsumedResourceShareDetails = Shapes::StructureShape.new(name: 'ConsumedResourceShareDetails')
    ContentQualityAnalysisFeatureConfiguration = Shapes::StructureShape.new(name: 'ContentQualityAnalysisFeatureConfiguration')
    ContentQualityAnalysisState = Shapes::StringShape.new(name: 'ContentQualityAnalysisState')
    CreateBridge420Exception = Shapes::StructureShape.new(name: 'CreateBridge420Exception')
    CreateBridgeRequest = Shapes::StructureShape.new(name: 'CreateBridgeRequest')
    CreateBridgeResponse = Shapes::StructureShape.new(name: 'CreateBridgeResponse')
    CreateFlow420Exception = Shapes::StructureShape.new(name: 'CreateFlow420Exception')
    CreateFlowRequest = Shapes::StructureShape.new(name: 'CreateFlowRequest')
    CreateFlowResponse = Shapes::StructureShape.new(name: 'CreateFlowResponse')
    CreateGateway420Exception = Shapes::StructureShape.new(name: 'CreateGateway420Exception')
    CreateGatewayRequest = Shapes::StructureShape.new(name: 'CreateGatewayRequest')
    CreateGatewayResponse = Shapes::StructureShape.new(name: 'CreateGatewayResponse')
    CreateRouterInputRequest = Shapes::StructureShape.new(name: 'CreateRouterInputRequest')
    CreateRouterInputRequestNameString = Shapes::StringShape.new(name: 'CreateRouterInputRequestNameString')
    CreateRouterInputResponse = Shapes::StructureShape.new(name: 'CreateRouterInputResponse')
    CreateRouterNetworkInterfaceRequest = Shapes::StructureShape.new(name: 'CreateRouterNetworkInterfaceRequest')
    CreateRouterNetworkInterfaceRequestNameString = Shapes::StringShape.new(name: 'CreateRouterNetworkInterfaceRequestNameString')
    CreateRouterNetworkInterfaceResponse = Shapes::StructureShape.new(name: 'CreateRouterNetworkInterfaceResponse')
    CreateRouterOutputRequest = Shapes::StructureShape.new(name: 'CreateRouterOutputRequest')
    CreateRouterOutputRequestNameString = Shapes::StringShape.new(name: 'CreateRouterOutputRequestNameString')
    CreateRouterOutputResponse = Shapes::StructureShape.new(name: 'CreateRouterOutputResponse')
    Day = Shapes::StringShape.new(name: 'Day')
    DefaultMaintenanceConfiguration = Shapes::StructureShape.new(name: 'DefaultMaintenanceConfiguration')
    DeleteBridgeRequest = Shapes::StructureShape.new(name: 'DeleteBridgeRequest')
    DeleteBridgeRequestBridgeArnString = Shapes::StringShape.new(name: 'DeleteBridgeRequestBridgeArnString')
    DeleteBridgeResponse = Shapes::StructureShape.new(name: 'DeleteBridgeResponse')
    DeleteFlowRequest = Shapes::StructureShape.new(name: 'DeleteFlowRequest')
    DeleteFlowRequestFlowArnString = Shapes::StringShape.new(name: 'DeleteFlowRequestFlowArnString')
    DeleteFlowResponse = Shapes::StructureShape.new(name: 'DeleteFlowResponse')
    DeleteGatewayRequest = Shapes::StructureShape.new(name: 'DeleteGatewayRequest')
    DeleteGatewayRequestGatewayArnString = Shapes::StringShape.new(name: 'DeleteGatewayRequestGatewayArnString')
    DeleteGatewayResponse = Shapes::StructureShape.new(name: 'DeleteGatewayResponse')
    DeleteRouterInputRequest = Shapes::StructureShape.new(name: 'DeleteRouterInputRequest')
    DeleteRouterInputResponse = Shapes::StructureShape.new(name: 'DeleteRouterInputResponse')
    DeleteRouterNetworkInterfaceRequest = Shapes::StructureShape.new(name: 'DeleteRouterNetworkInterfaceRequest')
    DeleteRouterNetworkInterfaceResponse = Shapes::StructureShape.new(name: 'DeleteRouterNetworkInterfaceResponse')
    DeleteRouterOutputRequest = Shapes::StructureShape.new(name: 'DeleteRouterOutputRequest')
    DeleteRouterOutputResponse = Shapes::StructureShape.new(name: 'DeleteRouterOutputResponse')
    DeregisterDestinationEndpointRequest = Shapes::StructureShape.new(name: 'DeregisterDestinationEndpointRequest')
    DeregisterDestinationEndpointResponse = Shapes::StructureShape.new(name: 'DeregisterDestinationEndpointResponse')
    DeregisterGatewayInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterGatewayInstanceRequest')
    DeregisterGatewayInstanceRequestGatewayInstanceArnString = Shapes::StringShape.new(name: 'DeregisterGatewayInstanceRequestGatewayInstanceArnString')
    DeregisterGatewayInstanceResponse = Shapes::StructureShape.new(name: 'DeregisterGatewayInstanceResponse')
    DeregisterSourceEndpointRequest = Shapes::StructureShape.new(name: 'DeregisterSourceEndpointRequest')
    DeregisterSourceEndpointResponse = Shapes::StructureShape.new(name: 'DeregisterSourceEndpointResponse')
    DescribeBridgeRequest = Shapes::StructureShape.new(name: 'DescribeBridgeRequest')
    DescribeBridgeRequestBridgeArnString = Shapes::StringShape.new(name: 'DescribeBridgeRequestBridgeArnString')
    DescribeBridgeResponse = Shapes::StructureShape.new(name: 'DescribeBridgeResponse')
    DescribeFlowRequest = Shapes::StructureShape.new(name: 'DescribeFlowRequest')
    DescribeFlowRequestFlowArnString = Shapes::StringShape.new(name: 'DescribeFlowRequestFlowArnString')
    DescribeFlowResponse = Shapes::StructureShape.new(name: 'DescribeFlowResponse')
    DescribeFlowSourceMetadataRequest = Shapes::StructureShape.new(name: 'DescribeFlowSourceMetadataRequest')
    DescribeFlowSourceMetadataResponse = Shapes::StructureShape.new(name: 'DescribeFlowSourceMetadataResponse')
    DescribeFlowSourceThumbnailRequest = Shapes::StructureShape.new(name: 'DescribeFlowSourceThumbnailRequest')
    DescribeFlowSourceThumbnailResponse = Shapes::StructureShape.new(name: 'DescribeFlowSourceThumbnailResponse')
    DescribeGatewayInstanceRequest = Shapes::StructureShape.new(name: 'DescribeGatewayInstanceRequest')
    DescribeGatewayInstanceRequestGatewayInstanceArnString = Shapes::StringShape.new(name: 'DescribeGatewayInstanceRequestGatewayInstanceArnString')
    DescribeGatewayInstanceResponse = Shapes::StructureShape.new(name: 'DescribeGatewayInstanceResponse')
    DescribeGatewayRequest = Shapes::StructureShape.new(name: 'DescribeGatewayRequest')
    DescribeGatewayRequestGatewayArnString = Shapes::StringShape.new(name: 'DescribeGatewayRequestGatewayArnString')
    DescribeGatewayResponse = Shapes::StructureShape.new(name: 'DescribeGatewayResponse')
    DescribeOfferingRequest = Shapes::StructureShape.new(name: 'DescribeOfferingRequest')
    DescribeOfferingResponse = Shapes::StructureShape.new(name: 'DescribeOfferingResponse')
    DescribeReservationRequest = Shapes::StructureShape.new(name: 'DescribeReservationRequest')
    DescribeReservationResponse = Shapes::StructureShape.new(name: 'DescribeReservationResponse')
    DesiredState = Shapes::StringShape.new(name: 'DesiredState')
    DestinationConfiguration = Shapes::StructureShape.new(name: 'DestinationConfiguration')
    DestinationConfigurationRequest = Shapes::StructureShape.new(name: 'DestinationConfigurationRequest')
    DestinationEndpoint = Shapes::StructureShape.new(name: 'DestinationEndpoint')
    DestinationEndpointArn = Shapes::StringShape.new(name: 'DestinationEndpointArn')
    DestinationEndpointArnList = Shapes::ListShape.new(name: 'DestinationEndpointArnList')
    DestinationEndpointAssociatedResourceDetails = Shapes::UnionShape.new(name: 'DestinationEndpointAssociatedResourceDetails')
    DestinationEndpointConfiguration = Shapes::UnionShape.new(name: 'DestinationEndpointConfiguration')
    DestinationEndpointConnectionDetails = Shapes::UnionShape.new(name: 'DestinationEndpointConnectionDetails')
    DestinationEndpointConnectionState = Shapes::StringShape.new(name: 'DestinationEndpointConnectionState')
    DestinationEndpointFilter = Shapes::UnionShape.new(name: 'DestinationEndpointFilter')
    DestinationEndpointFilterList = Shapes::ListShape.new(name: 'DestinationEndpointFilterList')
    DestinationEndpointList = Shapes::ListShape.new(name: 'DestinationEndpointList')
    DestinationEndpointMessage = Shapes::StructureShape.new(name: 'DestinationEndpointMessage')
    DestinationEndpointMessageList = Shapes::ListShape.new(name: 'DestinationEndpointMessageList')
    DestinationEndpointNetworkingType = Shapes::StringShape.new(name: 'DestinationEndpointNetworkingType')
    DestinationEndpointProtocol = Shapes::StringShape.new(name: 'DestinationEndpointProtocol')
    DestinationEndpointRegistrationState = Shapes::StringShape.new(name: 'DestinationEndpointRegistrationState')
    DestinationEndpointRouterInputConfiguration = Shapes::StructureShape.new(name: 'DestinationEndpointRouterInputConfiguration')
    DestinationEndpointRouterInputStreamDetails = Shapes::StructureShape.new(name: 'DestinationEndpointRouterInputStreamDetails')
    DestinationEndpointServiceQuotaExceededException = Shapes::StructureShape.new(name: 'DestinationEndpointServiceQuotaExceededException')
    DestinationEndpointType = Shapes::StringShape.new(name: 'DestinationEndpointType')
    DestinationEndpointTypeList = Shapes::ListShape.new(name: 'DestinationEndpointTypeList')
    DisconnectEndpointsRequest = Shapes::StructureShape.new(name: 'DisconnectEndpointsRequest')
    DisconnectEndpointsResponse = Shapes::StructureShape.new(name: 'DisconnectEndpointsResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    DurationUnits = Shapes::StringShape.new(name: 'DurationUnits')
    EgressGatewayBridge = Shapes::StructureShape.new(name: 'EgressGatewayBridge')
    EncoderProfile = Shapes::StringShape.new(name: 'EncoderProfile')
    EncodingConfig = Shapes::StructureShape.new(name: 'EncodingConfig')
    EncodingName = Shapes::StringShape.new(name: 'EncodingName')
    EncodingParameters = Shapes::StructureShape.new(name: 'EncodingParameters')
    EncodingParametersRequest = Shapes::StructureShape.new(name: 'EncodingParametersRequest')
    EncodingProfile = Shapes::StringShape.new(name: 'EncodingProfile')
    Encryption = Shapes::StructureShape.new(name: 'Encryption')
    EndpointEncryptionConfiguration = Shapes::UnionShape.new(name: 'EndpointEncryptionConfiguration')
    EndpointEncryptionSecretConfiguration = Shapes::StructureShape.new(name: 'EndpointEncryptionSecretConfiguration')
    EndpointEncryptionSecretType = Shapes::StringShape.new(name: 'EndpointEncryptionSecretType')
    EndpointEncryptionType = Shapes::StringShape.new(name: 'EndpointEncryptionType')
    EndpointLifecycle = Shapes::StringShape.new(name: 'EndpointLifecycle')
    Entitlement = Shapes::StructureShape.new(name: 'Entitlement')
    EntitlementStatus = Shapes::StringShape.new(name: 'EntitlementStatus')
    FabricConfiguration = Shapes::StructureShape.new(name: 'FabricConfiguration')
    FabricLatencyMode = Shapes::StringShape.new(name: 'FabricLatencyMode')
    FailoverConfig = Shapes::StructureShape.new(name: 'FailoverConfig')
    FailoverInputSourcePriorityMode = Shapes::StringShape.new(name: 'FailoverInputSourcePriorityMode')
    FailoverMode = Shapes::StringShape.new(name: 'FailoverMode')
    FailoverRouterInputConfiguration = Shapes::StructureShape.new(name: 'FailoverRouterInputConfiguration')
    FailoverRouterInputConfigurationPrimarySourceIndexInteger = Shapes::IntegerShape.new(name: 'FailoverRouterInputConfigurationPrimarySourceIndexInteger')
    FailoverRouterInputIndexedStreamDetails = Shapes::StructureShape.new(name: 'FailoverRouterInputIndexedStreamDetails')
    FailoverRouterInputProtocolConfiguration = Shapes::UnionShape.new(name: 'FailoverRouterInputProtocolConfiguration')
    FailoverRouterInputProtocolConfigurationList = Shapes::ListShape.new(name: 'FailoverRouterInputProtocolConfigurationList')
    FailoverRouterInputStreamDetails = Shapes::StructureShape.new(name: 'FailoverRouterInputStreamDetails')
    Flow = Shapes::StructureShape.new(name: 'Flow')
    FlowArn = Shapes::StringShape.new(name: 'FlowArn')
    FlowOutputArn = Shapes::StringShape.new(name: 'FlowOutputArn')
    FlowSize = Shapes::StringShape.new(name: 'FlowSize')
    FlowSourceArn = Shapes::StringShape.new(name: 'FlowSourceArn')
    FlowTransitEncryption = Shapes::StructureShape.new(name: 'FlowTransitEncryption')
    FlowTransitEncryptionKeyConfiguration = Shapes::UnionShape.new(name: 'FlowTransitEncryptionKeyConfiguration')
    FlowTransitEncryptionKeyType = Shapes::StringShape.new(name: 'FlowTransitEncryptionKeyType')
    Fmtp = Shapes::StructureShape.new(name: 'Fmtp')
    FmtpRequest = Shapes::StructureShape.new(name: 'FmtpRequest')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    ForwardErrorCorrectionState = Shapes::StringShape.new(name: 'ForwardErrorCorrectionState')
    FrameResolution = Shapes::StructureShape.new(name: 'FrameResolution')
    FrozenFrames = Shapes::StructureShape.new(name: 'FrozenFrames')
    FrozenFramesConfiguration = Shapes::StructureShape.new(name: 'FrozenFramesConfiguration')
    Gateway = Shapes::StructureShape.new(name: 'Gateway')
    GatewayBridgeSource = Shapes::StructureShape.new(name: 'GatewayBridgeSource')
    GatewayInstance = Shapes::StructureShape.new(name: 'GatewayInstance')
    GatewayNetwork = Shapes::StructureShape.new(name: 'GatewayNetwork')
    GatewayState = Shapes::StringShape.new(name: 'GatewayState')
    GetDestinationEndpointRequest = Shapes::StructureShape.new(name: 'GetDestinationEndpointRequest')
    GetDestinationEndpointResponse = Shapes::StructureShape.new(name: 'GetDestinationEndpointResponse')
    GetRouterInputRequest = Shapes::StructureShape.new(name: 'GetRouterInputRequest')
    GetRouterInputResponse = Shapes::StructureShape.new(name: 'GetRouterInputResponse')
    GetRouterInputSourceMetadataRequest = Shapes::StructureShape.new(name: 'GetRouterInputSourceMetadataRequest')
    GetRouterInputSourceMetadataResponse = Shapes::StructureShape.new(name: 'GetRouterInputSourceMetadataResponse')
    GetRouterInputThumbnailRequest = Shapes::StructureShape.new(name: 'GetRouterInputThumbnailRequest')
    GetRouterInputThumbnailResponse = Shapes::StructureShape.new(name: 'GetRouterInputThumbnailResponse')
    GetRouterNetworkInterfaceRequest = Shapes::StructureShape.new(name: 'GetRouterNetworkInterfaceRequest')
    GetRouterNetworkInterfaceResponse = Shapes::StructureShape.new(name: 'GetRouterNetworkInterfaceResponse')
    GetRouterOutputRequest = Shapes::StructureShape.new(name: 'GetRouterOutputRequest')
    GetRouterOutputResponse = Shapes::StructureShape.new(name: 'GetRouterOutputResponse')
    GetSourceEndpointRequest = Shapes::StructureShape.new(name: 'GetSourceEndpointRequest')
    GetSourceEndpointResponse = Shapes::StructureShape.new(name: 'GetSourceEndpointResponse')
    GrantEntitlementRequest = Shapes::StructureShape.new(name: 'GrantEntitlementRequest')
    GrantFlowEntitlements420Exception = Shapes::StructureShape.new(name: 'GrantFlowEntitlements420Exception')
    GrantFlowEntitlementsRequest = Shapes::StructureShape.new(name: 'GrantFlowEntitlementsRequest')
    GrantFlowEntitlementsRequestFlowArnString = Shapes::StringShape.new(name: 'GrantFlowEntitlementsRequestFlowArnString')
    GrantFlowEntitlementsResponse = Shapes::StructureShape.new(name: 'GrantFlowEntitlementsResponse')
    IngressGatewayBridge = Shapes::StructureShape.new(name: 'IngressGatewayBridge')
    InputConfiguration = Shapes::StructureShape.new(name: 'InputConfiguration')
    InputConfigurationRequest = Shapes::StructureShape.new(name: 'InputConfigurationRequest')
    InstanceState = Shapes::StringShape.new(name: 'InstanceState')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    Interface = Shapes::StructureShape.new(name: 'Interface')
    InterfaceRequest = Shapes::StructureShape.new(name: 'InterfaceRequest')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    ListBridgesRequest = Shapes::StructureShape.new(name: 'ListBridgesRequest')
    ListBridgesResponse = Shapes::StructureShape.new(name: 'ListBridgesResponse')
    ListDestinationEndpointsRequest = Shapes::StructureShape.new(name: 'ListDestinationEndpointsRequest')
    ListDestinationEndpointsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDestinationEndpointsRequestMaxResultsInteger')
    ListDestinationEndpointsResponse = Shapes::StructureShape.new(name: 'ListDestinationEndpointsResponse')
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
    ListRouterInputsRequest = Shapes::StructureShape.new(name: 'ListRouterInputsRequest')
    ListRouterInputsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRouterInputsRequestMaxResultsInteger')
    ListRouterInputsResponse = Shapes::StructureShape.new(name: 'ListRouterInputsResponse')
    ListRouterNetworkInterfacesRequest = Shapes::StructureShape.new(name: 'ListRouterNetworkInterfacesRequest')
    ListRouterNetworkInterfacesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRouterNetworkInterfacesRequestMaxResultsInteger')
    ListRouterNetworkInterfacesResponse = Shapes::StructureShape.new(name: 'ListRouterNetworkInterfacesResponse')
    ListRouterOutputsRequest = Shapes::StructureShape.new(name: 'ListRouterOutputsRequest')
    ListRouterOutputsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRouterOutputsRequestMaxResultsInteger')
    ListRouterOutputsResponse = Shapes::StructureShape.new(name: 'ListRouterOutputsResponse')
    ListSourceEndpointsRequest = Shapes::StructureShape.new(name: 'ListSourceEndpointsRequest')
    ListSourceEndpointsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSourceEndpointsRequestMaxResultsInteger')
    ListSourceEndpointsResponse = Shapes::StructureShape.new(name: 'ListSourceEndpointsResponse')
    ListTagsForGlobalResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForGlobalResourceRequest')
    ListTagsForGlobalResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForGlobalResourceResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListedBridge = Shapes::StructureShape.new(name: 'ListedBridge')
    ListedDestinationEndpoint = Shapes::StructureShape.new(name: 'ListedDestinationEndpoint')
    ListedDestinationEndpointList = Shapes::ListShape.new(name: 'ListedDestinationEndpointList')
    ListedEntitlement = Shapes::StructureShape.new(name: 'ListedEntitlement')
    ListedFlow = Shapes::StructureShape.new(name: 'ListedFlow')
    ListedGateway = Shapes::StructureShape.new(name: 'ListedGateway')
    ListedGatewayInstance = Shapes::StructureShape.new(name: 'ListedGatewayInstance')
    ListedRouterInput = Shapes::StructureShape.new(name: 'ListedRouterInput')
    ListedRouterInputList = Shapes::ListShape.new(name: 'ListedRouterInputList')
    ListedRouterNetworkInterface = Shapes::StructureShape.new(name: 'ListedRouterNetworkInterface')
    ListedRouterNetworkInterfaceList = Shapes::ListShape.new(name: 'ListedRouterNetworkInterfaceList')
    ListedRouterOutput = Shapes::StructureShape.new(name: 'ListedRouterOutput')
    ListedRouterOutputList = Shapes::ListShape.new(name: 'ListedRouterOutputList')
    ListedSourceEndpoint = Shapes::StructureShape.new(name: 'ListedSourceEndpoint')
    ListedSourceEndpointList = Shapes::ListShape.new(name: 'ListedSourceEndpointList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Maintenance = Shapes::StructureShape.new(name: 'Maintenance')
    MaintenanceConfiguration = Shapes::UnionShape.new(name: 'MaintenanceConfiguration')
    MaintenanceDay = Shapes::StringShape.new(name: 'MaintenanceDay')
    MaintenanceSchedule = Shapes::UnionShape.new(name: 'MaintenanceSchedule')
    MaintenanceScheduleType = Shapes::StringShape.new(name: 'MaintenanceScheduleType')
    MaintenanceType = Shapes::StringShape.new(name: 'MaintenanceType')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaConnectFlowRouterInputConfiguration = Shapes::StructureShape.new(name: 'MediaConnectFlowRouterInputConfiguration')
    MediaConnectFlowRouterInputStreamDetails = Shapes::StructureShape.new(name: 'MediaConnectFlowRouterInputStreamDetails')
    MediaConnectFlowRouterOutputConfiguration = Shapes::StructureShape.new(name: 'MediaConnectFlowRouterOutputConfiguration')
    MediaConnectFlowRouterOutputStreamDetails = Shapes::StructureShape.new(name: 'MediaConnectFlowRouterOutputStreamDetails')
    MediaLiveChannelArn = Shapes::StringShape.new(name: 'MediaLiveChannelArn')
    MediaLiveChannelPipelineId = Shapes::StringShape.new(name: 'MediaLiveChannelPipelineId')
    MediaLiveChannelRouterInputConfiguration = Shapes::StructureShape.new(name: 'MediaLiveChannelRouterInputConfiguration')
    MediaLiveChannelRouterInputStreamDetails = Shapes::StructureShape.new(name: 'MediaLiveChannelRouterInputStreamDetails')
    MediaLiveInputArn = Shapes::StringShape.new(name: 'MediaLiveInputArn')
    MediaLiveInputPipelineId = Shapes::StringShape.new(name: 'MediaLiveInputPipelineId')
    MediaLiveInputRouterOutputConfiguration = Shapes::StructureShape.new(name: 'MediaLiveInputRouterOutputConfiguration')
    MediaLiveInputRouterOutputStreamDetails = Shapes::StructureShape.new(name: 'MediaLiveInputRouterOutputStreamDetails')
    MediaLiveTransitEncryption = Shapes::StructureShape.new(name: 'MediaLiveTransitEncryption')
    MediaLiveTransitEncryptionKeyConfiguration = Shapes::UnionShape.new(name: 'MediaLiveTransitEncryptionKeyConfiguration')
    MediaLiveTransitEncryptionKeyType = Shapes::StringShape.new(name: 'MediaLiveTransitEncryptionKeyType')
    MediaStream = Shapes::StructureShape.new(name: 'MediaStream')
    MediaStreamAttributes = Shapes::StructureShape.new(name: 'MediaStreamAttributes')
    MediaStreamAttributesRequest = Shapes::StructureShape.new(name: 'MediaStreamAttributesRequest')
    MediaStreamOutputConfiguration = Shapes::StructureShape.new(name: 'MediaStreamOutputConfiguration')
    MediaStreamOutputConfigurationRequest = Shapes::StructureShape.new(name: 'MediaStreamOutputConfigurationRequest')
    MediaStreamSourceConfiguration = Shapes::StructureShape.new(name: 'MediaStreamSourceConfiguration')
    MediaStreamSourceConfigurationRequest = Shapes::StructureShape.new(name: 'MediaStreamSourceConfigurationRequest')
    MediaStreamType = Shapes::StringShape.new(name: 'MediaStreamType')
    MergeRouterInputConfiguration = Shapes::StructureShape.new(name: 'MergeRouterInputConfiguration')
    MergeRouterInputIndexedStreamDetails = Shapes::StructureShape.new(name: 'MergeRouterInputIndexedStreamDetails')
    MergeRouterInputProtocolConfiguration = Shapes::UnionShape.new(name: 'MergeRouterInputProtocolConfiguration')
    MergeRouterInputProtocolConfigurationList = Shapes::ListShape.new(name: 'MergeRouterInputProtocolConfigurationList')
    MergeRouterInputStreamDetails = Shapes::StructureShape.new(name: 'MergeRouterInputStreamDetails')
    MessageDetail = Shapes::StructureShape.new(name: 'MessageDetail')
    Messages = Shapes::StructureShape.new(name: 'Messages')
    MonitoringConfig = Shapes::StructureShape.new(name: 'MonitoringConfig')
    MulticastSourceSettings = Shapes::StructureShape.new(name: 'MulticastSourceSettings')
    NdiAudioReferenceLevel = Shapes::IntegerShape.new(name: 'NdiAudioReferenceLevel')
    NdiConfig = Shapes::StructureShape.new(name: 'NdiConfig')
    NdiDiscoveryServerConfig = Shapes::StructureShape.new(name: 'NdiDiscoveryServerConfig')
    NdiMediaInfo = Shapes::StructureShape.new(name: 'NdiMediaInfo')
    NdiMediaStreamInfo = Shapes::StructureShape.new(name: 'NdiMediaStreamInfo')
    NdiOutputTimecodeSource = Shapes::StringShape.new(name: 'NdiOutputTimecodeSource')
    NdiSourceInfo = Shapes::StructureShape.new(name: 'NdiSourceInfo')
    NdiSourceMetadataInfo = Shapes::StructureShape.new(name: 'NdiSourceMetadataInfo')
    NdiSourceSettings = Shapes::StructureShape.new(name: 'NdiSourceSettings')
    NdiState = Shapes::StringShape.new(name: 'NdiState')
    NetworkInterfaceType = Shapes::StringShape.new(name: 'NetworkInterfaceType')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Offering = Shapes::StructureShape.new(name: 'Offering')
    OfferingArn = Shapes::StringShape.new(name: 'OfferingArn')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputStatus = Shapes::StringShape.new(name: 'OutputStatus')
    OwnedResourceShareDetails = Shapes::StructureShape.new(name: 'OwnedResourceShareDetails')
    PreferredDayTimeMaintenanceConfiguration = Shapes::StructureShape.new(name: 'PreferredDayTimeMaintenanceConfiguration')
    PriceUnits = Shapes::StringShape.new(name: 'PriceUnits')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    PublicDestinationEndpointNetworkingConfiguration = Shapes::StructureShape.new(name: 'PublicDestinationEndpointNetworkingConfiguration')
    PublicDestinationEndpointNetworkingConfigurationAllowRule = Shapes::StructureShape.new(name: 'PublicDestinationEndpointNetworkingConfigurationAllowRule')
    PublicDestinationEndpointNetworkingConfigurationAllowRuleCidrString = Shapes::StringShape.new(name: 'PublicDestinationEndpointNetworkingConfigurationAllowRuleCidrString')
    PublicDestinationEndpointNetworkingConfigurationDestinationAllowRulesList = Shapes::ListShape.new(name: 'PublicDestinationEndpointNetworkingConfigurationDestinationAllowRulesList')
    PublicRouterNetworkInterfaceConfiguration = Shapes::StructureShape.new(name: 'PublicRouterNetworkInterfaceConfiguration')
    PublicRouterNetworkInterfaceConfigurationAllowRulesList = Shapes::ListShape.new(name: 'PublicRouterNetworkInterfaceConfigurationAllowRulesList')
    PublicRouterNetworkInterfaceRule = Shapes::StructureShape.new(name: 'PublicRouterNetworkInterfaceRule')
    PublicRouterNetworkInterfaceRuleCidrString = Shapes::StringShape.new(name: 'PublicRouterNetworkInterfaceRuleCidrString')
    PublicSourceEndpointNetworkingConfiguration = Shapes::StructureShape.new(name: 'PublicSourceEndpointNetworkingConfiguration')
    PublicSourceEndpointNetworkingConfigurationAllowRule = Shapes::StructureShape.new(name: 'PublicSourceEndpointNetworkingConfigurationAllowRule')
    PublicSourceEndpointNetworkingConfigurationAllowRuleCidrString = Shapes::StringShape.new(name: 'PublicSourceEndpointNetworkingConfigurationAllowRuleCidrString')
    PublicSourceEndpointNetworkingConfigurationSourceAllowRulesList = Shapes::ListShape.new(name: 'PublicSourceEndpointNetworkingConfigurationSourceAllowRulesList')
    PublicTlsEncryptionConfiguration = Shapes::StructureShape.new(name: 'PublicTlsEncryptionConfiguration')
    PurchaseOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseOfferingRequest')
    PurchaseOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseOfferingResponse')
    Range = Shapes::StringShape.new(name: 'Range')
    RegisterDestinationEndpointRequest = Shapes::StructureShape.new(name: 'RegisterDestinationEndpointRequest')
    RegisterDestinationEndpointRequestDescriptionString = Shapes::StringShape.new(name: 'RegisterDestinationEndpointRequestDescriptionString')
    RegisterDestinationEndpointResponse = Shapes::StructureShape.new(name: 'RegisterDestinationEndpointResponse')
    RegisterSourceEndpointRequest = Shapes::StructureShape.new(name: 'RegisterSourceEndpointRequest')
    RegisterSourceEndpointRequestDescriptionString = Shapes::StringShape.new(name: 'RegisterSourceEndpointRequestDescriptionString')
    RegisterSourceEndpointResponse = Shapes::StructureShape.new(name: 'RegisterSourceEndpointResponse')
    RemoveBridgeOutputRequest = Shapes::StructureShape.new(name: 'RemoveBridgeOutputRequest')
    RemoveBridgeOutputRequestBridgeArnString = Shapes::StringShape.new(name: 'RemoveBridgeOutputRequestBridgeArnString')
    RemoveBridgeOutputResponse = Shapes::StructureShape.new(name: 'RemoveBridgeOutputResponse')
    RemoveBridgeSourceRequest = Shapes::StructureShape.new(name: 'RemoveBridgeSourceRequest')
    RemoveBridgeSourceRequestBridgeArnString = Shapes::StringShape.new(name: 'RemoveBridgeSourceRequestBridgeArnString')
    RemoveBridgeSourceResponse = Shapes::StructureShape.new(name: 'RemoveBridgeSourceResponse')
    RemoveFlowMediaStreamRequest = Shapes::StructureShape.new(name: 'RemoveFlowMediaStreamRequest')
    RemoveFlowMediaStreamRequestFlowArnString = Shapes::StringShape.new(name: 'RemoveFlowMediaStreamRequestFlowArnString')
    RemoveFlowMediaStreamResponse = Shapes::StructureShape.new(name: 'RemoveFlowMediaStreamResponse')
    RemoveFlowOutputRequest = Shapes::StructureShape.new(name: 'RemoveFlowOutputRequest')
    RemoveFlowOutputRequestFlowArnString = Shapes::StringShape.new(name: 'RemoveFlowOutputRequestFlowArnString')
    RemoveFlowOutputRequestOutputArnString = Shapes::StringShape.new(name: 'RemoveFlowOutputRequestOutputArnString')
    RemoveFlowOutputResponse = Shapes::StructureShape.new(name: 'RemoveFlowOutputResponse')
    RemoveFlowSourceRequest = Shapes::StructureShape.new(name: 'RemoveFlowSourceRequest')
    RemoveFlowSourceRequestFlowArnString = Shapes::StringShape.new(name: 'RemoveFlowSourceRequestFlowArnString')
    RemoveFlowSourceRequestSourceArnString = Shapes::StringShape.new(name: 'RemoveFlowSourceRequestSourceArnString')
    RemoveFlowSourceResponse = Shapes::StructureShape.new(name: 'RemoveFlowSourceResponse')
    RemoveFlowVpcInterfaceRequest = Shapes::StructureShape.new(name: 'RemoveFlowVpcInterfaceRequest')
    RemoveFlowVpcInterfaceRequestFlowArnString = Shapes::StringShape.new(name: 'RemoveFlowVpcInterfaceRequestFlowArnString')
    RemoveFlowVpcInterfaceResponse = Shapes::StructureShape.new(name: 'RemoveFlowVpcInterfaceResponse')
    Reservation = Shapes::StructureShape.new(name: 'Reservation')
    ReservationArn = Shapes::StringShape.new(name: 'ReservationArn')
    ReservationState = Shapes::StringShape.new(name: 'ReservationState')
    ResourceShareDetails = Shapes::UnionShape.new(name: 'ResourceShareDetails')
    ResourceShareOwnership = Shapes::StringShape.new(name: 'ResourceShareOwnership')
    ResourceShareState = Shapes::StringShape.new(name: 'ResourceShareState')
    ResourceSpecification = Shapes::StructureShape.new(name: 'ResourceSpecification')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RestartRouterInputRequest = Shapes::StructureShape.new(name: 'RestartRouterInputRequest')
    RestartRouterInputResponse = Shapes::StructureShape.new(name: 'RestartRouterInputResponse')
    RestartRouterOutputRequest = Shapes::StructureShape.new(name: 'RestartRouterOutputRequest')
    RestartRouterOutputResponse = Shapes::StructureShape.new(name: 'RestartRouterOutputResponse')
    RevokeFlowEntitlementRequest = Shapes::StructureShape.new(name: 'RevokeFlowEntitlementRequest')
    RevokeFlowEntitlementRequestEntitlementArnString = Shapes::StringShape.new(name: 'RevokeFlowEntitlementRequestEntitlementArnString')
    RevokeFlowEntitlementRequestFlowArnString = Shapes::StringShape.new(name: 'RevokeFlowEntitlementRequestFlowArnString')
    RevokeFlowEntitlementResponse = Shapes::StructureShape.new(name: 'RevokeFlowEntitlementResponse')
    RistRouterInputConfiguration = Shapes::StructureShape.new(name: 'RistRouterInputConfiguration')
    RistRouterInputConfigurationPortInteger = Shapes::IntegerShape.new(name: 'RistRouterInputConfigurationPortInteger')
    RistRouterInputConfigurationRecoveryLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'RistRouterInputConfigurationRecoveryLatencyMillisecondsLong')
    RistRouterOutputConfiguration = Shapes::StructureShape.new(name: 'RistRouterOutputConfiguration')
    RistRouterOutputConfigurationDestinationPortInteger = Shapes::IntegerShape.new(name: 'RistRouterOutputConfigurationDestinationPortInteger')
    RistStandardDestinationEndpointConfiguration = Shapes::StructureShape.new(name: 'RistStandardDestinationEndpointConfiguration')
    RistStandardDestinationEndpointConfigurationDestinationIngestPortInteger = Shapes::IntegerShape.new(name: 'RistStandardDestinationEndpointConfigurationDestinationIngestPortInteger')
    RistStandardSourceEndpointConfiguration = Shapes::StructureShape.new(name: 'RistStandardSourceEndpointConfiguration')
    RistStandardSourceEndpointConfigurationDestinationIngestPortInteger = Shapes::IntegerShape.new(name: 'RistStandardSourceEndpointConfigurationDestinationIngestPortInteger')
    RistStandardSourceEndpointConfigurationRecoveryLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'RistStandardSourceEndpointConfigurationRecoveryLatencyMillisecondsLong')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RouterContentQualityAnalysisConfiguration = Shapes::UnionShape.new(name: 'RouterContentQualityAnalysisConfiguration')
    RouterContentQualityAnalysisType = Shapes::StringShape.new(name: 'RouterContentQualityAnalysisType')
    RouterCqaThresholdSeconds = Shapes::IntegerShape.new(name: 'RouterCqaThresholdSeconds')
    RouterInput = Shapes::StructureShape.new(name: 'RouterInput')
    RouterInputArn = Shapes::StringShape.new(name: 'RouterInputArn')
    RouterInputArnList = Shapes::ListShape.new(name: 'RouterInputArnList')
    RouterInputConfiguration = Shapes::UnionShape.new(name: 'RouterInputConfiguration')
    RouterInputDestinationEndpointAssociatedResourceDetails = Shapes::StructureShape.new(name: 'RouterInputDestinationEndpointAssociatedResourceDetails')
    RouterInputDestinationEndpointConfiguration = Shapes::StructureShape.new(name: 'RouterInputDestinationEndpointConfiguration')
    RouterInputDestinationEndpointConnectionDetails = Shapes::StructureShape.new(name: 'RouterInputDestinationEndpointConnectionDetails')
    RouterInputFilter = Shapes::UnionShape.new(name: 'RouterInputFilter')
    RouterInputFilterList = Shapes::ListShape.new(name: 'RouterInputFilterList')
    RouterInputList = Shapes::ListShape.new(name: 'RouterInputList')
    RouterInputMessage = Shapes::StructureShape.new(name: 'RouterInputMessage')
    RouterInputMessages = Shapes::ListShape.new(name: 'RouterInputMessages')
    RouterInputMetadata = Shapes::UnionShape.new(name: 'RouterInputMetadata')
    RouterInputProtocol = Shapes::StringShape.new(name: 'RouterInputProtocol')
    RouterInputProtocolConfiguration = Shapes::UnionShape.new(name: 'RouterInputProtocolConfiguration')
    RouterInputServiceQuotaExceededException = Shapes::StructureShape.new(name: 'RouterInputServiceQuotaExceededException')
    RouterInputSourceMetadataDetails = Shapes::StructureShape.new(name: 'RouterInputSourceMetadataDetails')
    RouterInputState = Shapes::StringShape.new(name: 'RouterInputState')
    RouterInputStreamDetails = Shapes::UnionShape.new(name: 'RouterInputStreamDetails')
    RouterInputThumbnailDetails = Shapes::StructureShape.new(name: 'RouterInputThumbnailDetails')
    RouterInputTier = Shapes::StringShape.new(name: 'RouterInputTier')
    RouterInputTransitEncryption = Shapes::StructureShape.new(name: 'RouterInputTransitEncryption')
    RouterInputTransitEncryptionKeyConfiguration = Shapes::UnionShape.new(name: 'RouterInputTransitEncryptionKeyConfiguration')
    RouterInputTransitEncryptionKeyType = Shapes::StringShape.new(name: 'RouterInputTransitEncryptionKeyType')
    RouterInputType = Shapes::StringShape.new(name: 'RouterInputType')
    RouterInputTypeList = Shapes::ListShape.new(name: 'RouterInputTypeList')
    RouterNetworkInterface = Shapes::StructureShape.new(name: 'RouterNetworkInterface')
    RouterNetworkInterfaceArn = Shapes::StringShape.new(name: 'RouterNetworkInterfaceArn')
    RouterNetworkInterfaceArnList = Shapes::ListShape.new(name: 'RouterNetworkInterfaceArnList')
    RouterNetworkInterfaceConfiguration = Shapes::UnionShape.new(name: 'RouterNetworkInterfaceConfiguration')
    RouterNetworkInterfaceFilter = Shapes::UnionShape.new(name: 'RouterNetworkInterfaceFilter')
    RouterNetworkInterfaceFilterList = Shapes::ListShape.new(name: 'RouterNetworkInterfaceFilterList')
    RouterNetworkInterfaceList = Shapes::ListShape.new(name: 'RouterNetworkInterfaceList')
    RouterNetworkInterfaceServiceQuotaExceededException = Shapes::StructureShape.new(name: 'RouterNetworkInterfaceServiceQuotaExceededException')
    RouterNetworkInterfaceState = Shapes::StringShape.new(name: 'RouterNetworkInterfaceState')
    RouterNetworkInterfaceType = Shapes::StringShape.new(name: 'RouterNetworkInterfaceType')
    RouterNetworkInterfaceTypeList = Shapes::ListShape.new(name: 'RouterNetworkInterfaceTypeList')
    RouterOutput = Shapes::StructureShape.new(name: 'RouterOutput')
    RouterOutputArn = Shapes::StringShape.new(name: 'RouterOutputArn')
    RouterOutputConfiguration = Shapes::UnionShape.new(name: 'RouterOutputConfiguration')
    RouterOutputFilter = Shapes::UnionShape.new(name: 'RouterOutputFilter')
    RouterOutputFilterList = Shapes::ListShape.new(name: 'RouterOutputFilterList')
    RouterOutputList = Shapes::ListShape.new(name: 'RouterOutputList')
    RouterOutputMessage = Shapes::StructureShape.new(name: 'RouterOutputMessage')
    RouterOutputMessages = Shapes::ListShape.new(name: 'RouterOutputMessages')
    RouterOutputProtocol = Shapes::StringShape.new(name: 'RouterOutputProtocol')
    RouterOutputProtocolConfiguration = Shapes::UnionShape.new(name: 'RouterOutputProtocolConfiguration')
    RouterOutputRoutedState = Shapes::StringShape.new(name: 'RouterOutputRoutedState')
    RouterOutputServiceQuotaExceededException = Shapes::StructureShape.new(name: 'RouterOutputServiceQuotaExceededException')
    RouterOutputSourceEndpointAssociatedResourceDetails = Shapes::StructureShape.new(name: 'RouterOutputSourceEndpointAssociatedResourceDetails')
    RouterOutputSourceEndpointConfiguration = Shapes::StructureShape.new(name: 'RouterOutputSourceEndpointConfiguration')
    RouterOutputSourceEndpointConnectionDetails = Shapes::StructureShape.new(name: 'RouterOutputSourceEndpointConnectionDetails')
    RouterOutputState = Shapes::StringShape.new(name: 'RouterOutputState')
    RouterOutputStreamDetails = Shapes::UnionShape.new(name: 'RouterOutputStreamDetails')
    RouterOutputTier = Shapes::StringShape.new(name: 'RouterOutputTier')
    RouterOutputType = Shapes::StringShape.new(name: 'RouterOutputType')
    RouterOutputTypeList = Shapes::ListShape.new(name: 'RouterOutputTypeList')
    RoutingScope = Shapes::StringShape.new(name: 'RoutingScope')
    RoutingScopeList = Shapes::ListShape.new(name: 'RoutingScopeList')
    RtmpPushRouterOutputConfiguration = Shapes::StructureShape.new(name: 'RtmpPushRouterOutputConfiguration')
    RtmpPushRouterOutputConfigurationDestinationPortInteger = Shapes::IntegerShape.new(name: 'RtmpPushRouterOutputConfigurationDestinationPortInteger')
    RtpRouterInputConfiguration = Shapes::StructureShape.new(name: 'RtpRouterInputConfiguration')
    RtpRouterInputConfigurationPortInteger = Shapes::IntegerShape.new(name: 'RtpRouterInputConfigurationPortInteger')
    RtpRouterOutputConfiguration = Shapes::StructureShape.new(name: 'RtpRouterOutputConfiguration')
    RtpRouterOutputConfigurationDestinationPortInteger = Shapes::IntegerShape.new(name: 'RtpRouterOutputConfigurationDestinationPortInteger')
    RtpStandardDestinationEndpointConfiguration = Shapes::StructureShape.new(name: 'RtpStandardDestinationEndpointConfiguration')
    RtpStandardDestinationEndpointConfigurationDestinationIngestPortInteger = Shapes::IntegerShape.new(name: 'RtpStandardDestinationEndpointConfigurationDestinationIngestPortInteger')
    RtpStandardSourceEndpointConfiguration = Shapes::StructureShape.new(name: 'RtpStandardSourceEndpointConfiguration')
    RtpStandardSourceEndpointConfigurationDestinationIngestPortInteger = Shapes::IntegerShape.new(name: 'RtpStandardSourceEndpointConfigurationDestinationIngestPortInteger')
    ScanMode = Shapes::StringShape.new(name: 'ScanMode')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecretsManagerEncryptionKeyConfiguration = Shapes::StructureShape.new(name: 'SecretsManagerEncryptionKeyConfiguration')
    SecretsManagerEndpointEncryptionConfiguration = Shapes::StructureShape.new(name: 'SecretsManagerEndpointEncryptionConfiguration')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetGatewayBridgeSourceRequest = Shapes::StructureShape.new(name: 'SetGatewayBridgeSourceRequest')
    SetGatewayBridgeSourceRequestBridgeArnString = Shapes::StringShape.new(name: 'SetGatewayBridgeSourceRequestBridgeArnString')
    SetSourceRequest = Shapes::StructureShape.new(name: 'SetSourceRequest')
    SetSourceRequestEntitlementArnString = Shapes::StringShape.new(name: 'SetSourceRequestEntitlementArnString')
    SilentAudio = Shapes::StructureShape.new(name: 'SilentAudio')
    SilentAudioConfiguration = Shapes::StructureShape.new(name: 'SilentAudioConfiguration')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceEndpoint = Shapes::StructureShape.new(name: 'SourceEndpoint')
    SourceEndpointArn = Shapes::StringShape.new(name: 'SourceEndpointArn')
    SourceEndpointArnList = Shapes::ListShape.new(name: 'SourceEndpointArnList')
    SourceEndpointAssociatedResourceDetails = Shapes::UnionShape.new(name: 'SourceEndpointAssociatedResourceDetails')
    SourceEndpointConfiguration = Shapes::UnionShape.new(name: 'SourceEndpointConfiguration')
    SourceEndpointConnectionDetails = Shapes::UnionShape.new(name: 'SourceEndpointConnectionDetails')
    SourceEndpointConnectionState = Shapes::StringShape.new(name: 'SourceEndpointConnectionState')
    SourceEndpointFilter = Shapes::UnionShape.new(name: 'SourceEndpointFilter')
    SourceEndpointFilterList = Shapes::ListShape.new(name: 'SourceEndpointFilterList')
    SourceEndpointList = Shapes::ListShape.new(name: 'SourceEndpointList')
    SourceEndpointMessage = Shapes::StructureShape.new(name: 'SourceEndpointMessage')
    SourceEndpointMessageList = Shapes::ListShape.new(name: 'SourceEndpointMessageList')
    SourceEndpointNetworkingType = Shapes::StringShape.new(name: 'SourceEndpointNetworkingType')
    SourceEndpointProtocol = Shapes::StringShape.new(name: 'SourceEndpointProtocol')
    SourceEndpointRegistrationState = Shapes::StringShape.new(name: 'SourceEndpointRegistrationState')
    SourceEndpointRouterOutputConfiguration = Shapes::StructureShape.new(name: 'SourceEndpointRouterOutputConfiguration')
    SourceEndpointRouterOutputStreamDetails = Shapes::StructureShape.new(name: 'SourceEndpointRouterOutputStreamDetails')
    SourceEndpointServiceQuotaExceededException = Shapes::StructureShape.new(name: 'SourceEndpointServiceQuotaExceededException')
    SourceEndpointType = Shapes::StringShape.new(name: 'SourceEndpointType')
    SourceEndpointTypeList = Shapes::ListShape.new(name: 'SourceEndpointTypeList')
    SourcePriority = Shapes::StructureShape.new(name: 'SourcePriority')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    SrtCallerRouterInputConfiguration = Shapes::StructureShape.new(name: 'SrtCallerRouterInputConfiguration')
    SrtCallerRouterInputConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtCallerRouterInputConfigurationMinimumLatencyMillisecondsLong')
    SrtCallerRouterInputConfigurationSourcePortInteger = Shapes::IntegerShape.new(name: 'SrtCallerRouterInputConfigurationSourcePortInteger')
    SrtCallerRouterOutputConfiguration = Shapes::StructureShape.new(name: 'SrtCallerRouterOutputConfiguration')
    SrtCallerRouterOutputConfigurationDestinationPortInteger = Shapes::IntegerShape.new(name: 'SrtCallerRouterOutputConfigurationDestinationPortInteger')
    SrtCallerRouterOutputConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtCallerRouterOutputConfigurationMinimumLatencyMillisecondsLong')
    SrtCallerStandardDestinationEndpointConfiguration = Shapes::StructureShape.new(name: 'SrtCallerStandardDestinationEndpointConfiguration')
    SrtCallerStandardDestinationEndpointConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtCallerStandardDestinationEndpointConfigurationMinimumLatencyMillisecondsLong')
    SrtCallerStandardDestinationEndpointConfigurationSourceListenerPortInteger = Shapes::IntegerShape.new(name: 'SrtCallerStandardDestinationEndpointConfigurationSourceListenerPortInteger')
    SrtCallerStandardSourceEndpointConfiguration = Shapes::StructureShape.new(name: 'SrtCallerStandardSourceEndpointConfiguration')
    SrtCallerStandardSourceEndpointConfigurationDestinationIngestPortInteger = Shapes::IntegerShape.new(name: 'SrtCallerStandardSourceEndpointConfigurationDestinationIngestPortInteger')
    SrtCallerStandardSourceEndpointConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtCallerStandardSourceEndpointConfigurationMinimumLatencyMillisecondsLong')
    SrtDecryptionConfiguration = Shapes::StructureShape.new(name: 'SrtDecryptionConfiguration')
    SrtEncryptionConfiguration = Shapes::StructureShape.new(name: 'SrtEncryptionConfiguration')
    SrtListenerRouterInputConfiguration = Shapes::StructureShape.new(name: 'SrtListenerRouterInputConfiguration')
    SrtListenerRouterInputConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtListenerRouterInputConfigurationMinimumLatencyMillisecondsLong')
    SrtListenerRouterInputConfigurationPortInteger = Shapes::IntegerShape.new(name: 'SrtListenerRouterInputConfigurationPortInteger')
    SrtListenerRouterOutputConfiguration = Shapes::StructureShape.new(name: 'SrtListenerRouterOutputConfiguration')
    SrtListenerRouterOutputConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtListenerRouterOutputConfigurationMinimumLatencyMillisecondsLong')
    SrtListenerRouterOutputConfigurationPortInteger = Shapes::IntegerShape.new(name: 'SrtListenerRouterOutputConfigurationPortInteger')
    SrtListenerStandardDestinationEndpointConfiguration = Shapes::StructureShape.new(name: 'SrtListenerStandardDestinationEndpointConfiguration')
    SrtListenerStandardDestinationEndpointConfigurationDestinationIngestPortInteger = Shapes::IntegerShape.new(name: 'SrtListenerStandardDestinationEndpointConfigurationDestinationIngestPortInteger')
    SrtListenerStandardDestinationEndpointConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtListenerStandardDestinationEndpointConfigurationMinimumLatencyMillisecondsLong')
    SrtListenerStandardSourceEndpointConfiguration = Shapes::StructureShape.new(name: 'SrtListenerStandardSourceEndpointConfiguration')
    SrtListenerStandardSourceEndpointConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtListenerStandardSourceEndpointConfigurationMinimumLatencyMillisecondsLong')
    SrtListenerStandardSourceEndpointConfigurationSourceListenerPortInteger = Shapes::IntegerShape.new(name: 'SrtListenerStandardSourceEndpointConfigurationSourceListenerPortInteger')
    StandardDestinationEndpointAssociatedResourceDetails = Shapes::StructureShape.new(name: 'StandardDestinationEndpointAssociatedResourceDetails')
    StandardDestinationEndpointConfiguration = Shapes::StructureShape.new(name: 'StandardDestinationEndpointConfiguration')
    StandardDestinationEndpointConfigurationNameString = Shapes::StringShape.new(name: 'StandardDestinationEndpointConfigurationNameString')
    StandardDestinationEndpointConnectionDetails = Shapes::StructureShape.new(name: 'StandardDestinationEndpointConnectionDetails')
    StandardDestinationEndpointNetworkingConfiguration = Shapes::UnionShape.new(name: 'StandardDestinationEndpointNetworkingConfiguration')
    StandardDestinationEndpointProtocolConfiguration = Shapes::UnionShape.new(name: 'StandardDestinationEndpointProtocolConfiguration')
    StandardRouterInputConfiguration = Shapes::StructureShape.new(name: 'StandardRouterInputConfiguration')
    StandardRouterInputStreamDetails = Shapes::StructureShape.new(name: 'StandardRouterInputStreamDetails')
    StandardRouterOutputConfiguration = Shapes::StructureShape.new(name: 'StandardRouterOutputConfiguration')
    StandardRouterOutputStreamDetails = Shapes::StructureShape.new(name: 'StandardRouterOutputStreamDetails')
    StandardSourceEndpointAssociatedResourceDetails = Shapes::StructureShape.new(name: 'StandardSourceEndpointAssociatedResourceDetails')
    StandardSourceEndpointConfiguration = Shapes::StructureShape.new(name: 'StandardSourceEndpointConfiguration')
    StandardSourceEndpointConfigurationNameString = Shapes::StringShape.new(name: 'StandardSourceEndpointConfigurationNameString')
    StandardSourceEndpointConnectionDetails = Shapes::StructureShape.new(name: 'StandardSourceEndpointConnectionDetails')
    StandardSourceEndpointNetworkingConfiguration = Shapes::UnionShape.new(name: 'StandardSourceEndpointNetworkingConfiguration')
    StandardSourceEndpointProtocolConfiguration = Shapes::UnionShape.new(name: 'StandardSourceEndpointProtocolConfiguration')
    StartFlowRequest = Shapes::StructureShape.new(name: 'StartFlowRequest')
    StartFlowRequestFlowArnString = Shapes::StringShape.new(name: 'StartFlowRequestFlowArnString')
    StartFlowResponse = Shapes::StructureShape.new(name: 'StartFlowResponse')
    StartRouterInputRequest = Shapes::StructureShape.new(name: 'StartRouterInputRequest')
    StartRouterInputResponse = Shapes::StructureShape.new(name: 'StartRouterInputResponse')
    StartRouterOutputRequest = Shapes::StructureShape.new(name: 'StartRouterOutputRequest')
    StartRouterOutputResponse = Shapes::StructureShape.new(name: 'StartRouterOutputResponse')
    State = Shapes::StringShape.new(name: 'State')
    Status = Shapes::StringShape.new(name: 'Status')
    StopFlowRequest = Shapes::StructureShape.new(name: 'StopFlowRequest')
    StopFlowRequestFlowArnString = Shapes::StringShape.new(name: 'StopFlowRequestFlowArnString')
    StopFlowResponse = Shapes::StructureShape.new(name: 'StopFlowResponse')
    StopRouterInputRequest = Shapes::StructureShape.new(name: 'StopRouterInputRequest')
    StopRouterInputResponse = Shapes::StructureShape.new(name: 'StopRouterInputResponse')
    StopRouterOutputRequest = Shapes::StructureShape.new(name: 'StopRouterOutputRequest')
    StopRouterOutputResponse = Shapes::StructureShape.new(name: 'StopRouterOutputResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagGlobalResourceRequest = Shapes::StructureShape.new(name: 'TagGlobalResourceRequest')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TakeRouterInputRequest = Shapes::StructureShape.new(name: 'TakeRouterInputRequest')
    TakeRouterInputResponse = Shapes::StructureShape.new(name: 'TakeRouterInputResponse')
    Tcs = Shapes::StringShape.new(name: 'Tcs')
    ThumbnailDetails = Shapes::StructureShape.new(name: 'ThumbnailDetails')
    ThumbnailState = Shapes::StringShape.new(name: 'ThumbnailState')
    TlsEncryption = Shapes::StructureShape.new(name: 'TlsEncryption')
    TlsEncryptionConfiguration = Shapes::UnionShape.new(name: 'TlsEncryptionConfiguration')
    TlsEncryptionType = Shapes::StringShape.new(name: 'TlsEncryptionType')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Transport = Shapes::StructureShape.new(name: 'Transport')
    TransportMediaInfo = Shapes::StructureShape.new(name: 'TransportMediaInfo')
    TransportStream = Shapes::StructureShape.new(name: 'TransportStream')
    TransportStreamProgram = Shapes::StructureShape.new(name: 'TransportStreamProgram')
    UntagGlobalResourceRequest = Shapes::StructureShape.new(name: 'UntagGlobalResourceRequest')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateBridgeFlowSourceRequest = Shapes::StructureShape.new(name: 'UpdateBridgeFlowSourceRequest')
    UpdateBridgeFlowSourceRequestFlowArnString = Shapes::StringShape.new(name: 'UpdateBridgeFlowSourceRequestFlowArnString')
    UpdateBridgeNetworkOutputRequest = Shapes::StructureShape.new(name: 'UpdateBridgeNetworkOutputRequest')
    UpdateBridgeNetworkSourceRequest = Shapes::StructureShape.new(name: 'UpdateBridgeNetworkSourceRequest')
    UpdateBridgeOutputRequest = Shapes::StructureShape.new(name: 'UpdateBridgeOutputRequest')
    UpdateBridgeOutputRequestBridgeArnString = Shapes::StringShape.new(name: 'UpdateBridgeOutputRequestBridgeArnString')
    UpdateBridgeOutputResponse = Shapes::StructureShape.new(name: 'UpdateBridgeOutputResponse')
    UpdateBridgeRequest = Shapes::StructureShape.new(name: 'UpdateBridgeRequest')
    UpdateBridgeRequestBridgeArnString = Shapes::StringShape.new(name: 'UpdateBridgeRequestBridgeArnString')
    UpdateBridgeResponse = Shapes::StructureShape.new(name: 'UpdateBridgeResponse')
    UpdateBridgeSourceRequest = Shapes::StructureShape.new(name: 'UpdateBridgeSourceRequest')
    UpdateBridgeSourceRequestBridgeArnString = Shapes::StringShape.new(name: 'UpdateBridgeSourceRequestBridgeArnString')
    UpdateBridgeSourceResponse = Shapes::StructureShape.new(name: 'UpdateBridgeSourceResponse')
    UpdateBridgeStateRequest = Shapes::StructureShape.new(name: 'UpdateBridgeStateRequest')
    UpdateBridgeStateRequestBridgeArnString = Shapes::StringShape.new(name: 'UpdateBridgeStateRequestBridgeArnString')
    UpdateBridgeStateResponse = Shapes::StructureShape.new(name: 'UpdateBridgeStateResponse')
    UpdateDestinationEndpointRequest = Shapes::StructureShape.new(name: 'UpdateDestinationEndpointRequest')
    UpdateDestinationEndpointRequestDescriptionString = Shapes::StringShape.new(name: 'UpdateDestinationEndpointRequestDescriptionString')
    UpdateDestinationEndpointResponse = Shapes::StructureShape.new(name: 'UpdateDestinationEndpointResponse')
    UpdateEgressGatewayBridgeRequest = Shapes::StructureShape.new(name: 'UpdateEgressGatewayBridgeRequest')
    UpdateEncryption = Shapes::StructureShape.new(name: 'UpdateEncryption')
    UpdateFailoverConfig = Shapes::StructureShape.new(name: 'UpdateFailoverConfig')
    UpdateFlowEntitlementRequest = Shapes::StructureShape.new(name: 'UpdateFlowEntitlementRequest')
    UpdateFlowEntitlementRequestEntitlementArnString = Shapes::StringShape.new(name: 'UpdateFlowEntitlementRequestEntitlementArnString')
    UpdateFlowEntitlementRequestFlowArnString = Shapes::StringShape.new(name: 'UpdateFlowEntitlementRequestFlowArnString')
    UpdateFlowEntitlementResponse = Shapes::StructureShape.new(name: 'UpdateFlowEntitlementResponse')
    UpdateFlowMediaStreamRequest = Shapes::StructureShape.new(name: 'UpdateFlowMediaStreamRequest')
    UpdateFlowMediaStreamRequestFlowArnString = Shapes::StringShape.new(name: 'UpdateFlowMediaStreamRequestFlowArnString')
    UpdateFlowMediaStreamResponse = Shapes::StructureShape.new(name: 'UpdateFlowMediaStreamResponse')
    UpdateFlowOutputRequest = Shapes::StructureShape.new(name: 'UpdateFlowOutputRequest')
    UpdateFlowOutputRequestFlowArnString = Shapes::StringShape.new(name: 'UpdateFlowOutputRequestFlowArnString')
    UpdateFlowOutputRequestOutputArnString = Shapes::StringShape.new(name: 'UpdateFlowOutputRequestOutputArnString')
    UpdateFlowOutputResponse = Shapes::StructureShape.new(name: 'UpdateFlowOutputResponse')
    UpdateFlowRequest = Shapes::StructureShape.new(name: 'UpdateFlowRequest')
    UpdateFlowRequestFlowArnString = Shapes::StringShape.new(name: 'UpdateFlowRequestFlowArnString')
    UpdateFlowResponse = Shapes::StructureShape.new(name: 'UpdateFlowResponse')
    UpdateFlowSourceRequest = Shapes::StructureShape.new(name: 'UpdateFlowSourceRequest')
    UpdateFlowSourceRequestEntitlementArnString = Shapes::StringShape.new(name: 'UpdateFlowSourceRequestEntitlementArnString')
    UpdateFlowSourceRequestFlowArnString = Shapes::StringShape.new(name: 'UpdateFlowSourceRequestFlowArnString')
    UpdateFlowSourceRequestSourceArnString = Shapes::StringShape.new(name: 'UpdateFlowSourceRequestSourceArnString')
    UpdateFlowSourceResponse = Shapes::StructureShape.new(name: 'UpdateFlowSourceResponse')
    UpdateGatewayBridgeSourceRequest = Shapes::StructureShape.new(name: 'UpdateGatewayBridgeSourceRequest')
    UpdateGatewayBridgeSourceRequestBridgeArnString = Shapes::StringShape.new(name: 'UpdateGatewayBridgeSourceRequestBridgeArnString')
    UpdateGatewayInstanceRequest = Shapes::StructureShape.new(name: 'UpdateGatewayInstanceRequest')
    UpdateGatewayInstanceRequestGatewayInstanceArnString = Shapes::StringShape.new(name: 'UpdateGatewayInstanceRequestGatewayInstanceArnString')
    UpdateGatewayInstanceResponse = Shapes::StructureShape.new(name: 'UpdateGatewayInstanceResponse')
    UpdateIngressGatewayBridgeRequest = Shapes::StructureShape.new(name: 'UpdateIngressGatewayBridgeRequest')
    UpdateMaintenance = Shapes::StructureShape.new(name: 'UpdateMaintenance')
    UpdateRouterInputRequest = Shapes::StructureShape.new(name: 'UpdateRouterInputRequest')
    UpdateRouterInputRequestNameString = Shapes::StringShape.new(name: 'UpdateRouterInputRequestNameString')
    UpdateRouterInputResponse = Shapes::StructureShape.new(name: 'UpdateRouterInputResponse')
    UpdateRouterNetworkInterfaceRequest = Shapes::StructureShape.new(name: 'UpdateRouterNetworkInterfaceRequest')
    UpdateRouterNetworkInterfaceRequestNameString = Shapes::StringShape.new(name: 'UpdateRouterNetworkInterfaceRequestNameString')
    UpdateRouterNetworkInterfaceResponse = Shapes::StructureShape.new(name: 'UpdateRouterNetworkInterfaceResponse')
    UpdateRouterOutputRequest = Shapes::StructureShape.new(name: 'UpdateRouterOutputRequest')
    UpdateRouterOutputRequestNameString = Shapes::StringShape.new(name: 'UpdateRouterOutputRequestNameString')
    UpdateRouterOutputResponse = Shapes::StructureShape.new(name: 'UpdateRouterOutputResponse')
    UpdateSourceEndpointRequest = Shapes::StructureShape.new(name: 'UpdateSourceEndpointRequest')
    UpdateSourceEndpointRequestDescriptionString = Shapes::StringShape.new(name: 'UpdateSourceEndpointRequestDescriptionString')
    UpdateSourceEndpointResponse = Shapes::StructureShape.new(name: 'UpdateSourceEndpointResponse')
    VideoColorimetry = Shapes::StringShape.new(name: 'VideoColorimetry')
    VideoMatrixCoefficients = Shapes::StringShape.new(name: 'VideoMatrixCoefficients')
    VideoMonitoringSetting = Shapes::StructureShape.new(name: 'VideoMonitoringSetting')
    VideoTransferCharacteristics = Shapes::StringShape.new(name: 'VideoTransferCharacteristics')
    VpcDestinationEndpointNetworkingConfiguration = Shapes::StructureShape.new(name: 'VpcDestinationEndpointNetworkingConfiguration')
    VpcDestinationEndpointNetworkingConfigurationSecurityGroupIdsList = Shapes::ListShape.new(name: 'VpcDestinationEndpointNetworkingConfigurationSecurityGroupIdsList')
    VpcInterface = Shapes::StructureShape.new(name: 'VpcInterface')
    VpcInterfaceAttachment = Shapes::StructureShape.new(name: 'VpcInterfaceAttachment')
    VpcInterfaceRequest = Shapes::StructureShape.new(name: 'VpcInterfaceRequest')
    VpcRouterNetworkInterfaceConfiguration = Shapes::StructureShape.new(name: 'VpcRouterNetworkInterfaceConfiguration')
    VpcRouterNetworkInterfaceConfigurationSecurityGroupIdsList = Shapes::ListShape.new(name: 'VpcRouterNetworkInterfaceConfigurationSecurityGroupIdsList')
    VpcSourceEndpointNetworkingConfiguration = Shapes::StructureShape.new(name: 'VpcSourceEndpointNetworkingConfiguration')
    VpcSourceEndpointNetworkingConfigurationSecurityGroupIdsList = Shapes::ListShape.new(name: 'VpcSourceEndpointNetworkingConfigurationSecurityGroupIdsList')
    WindowMaintenanceSchedule = Shapes::StructureShape.new(name: 'WindowMaintenanceSchedule')
    __listOfAddBridgeOutputRequest = Shapes::ListShape.new(name: '__listOfAddBridgeOutputRequest')
    __listOfAddBridgeSourceRequest = Shapes::ListShape.new(name: '__listOfAddBridgeSourceRequest')
    __listOfAddMediaStreamRequest = Shapes::ListShape.new(name: '__listOfAddMediaStreamRequest')
    __listOfAddOutputRequest = Shapes::ListShape.new(name: '__listOfAddOutputRequest')
    __listOfAudioMonitoringSetting = Shapes::ListShape.new(name: '__listOfAudioMonitoringSetting')
    __listOfBridgeOutput = Shapes::ListShape.new(name: '__listOfBridgeOutput')
    __listOfBridgeSource = Shapes::ListShape.new(name: '__listOfBridgeSource')
    __listOfDestinationConfiguration = Shapes::ListShape.new(name: '__listOfDestinationConfiguration')
    __listOfDestinationConfigurationRequest = Shapes::ListShape.new(name: '__listOfDestinationConfigurationRequest')
    __listOfEntitlement = Shapes::ListShape.new(name: '__listOfEntitlement')
    __listOfGatewayNetwork = Shapes::ListShape.new(name: '__listOfGatewayNetwork')
    __listOfGrantEntitlementRequest = Shapes::ListShape.new(name: '__listOfGrantEntitlementRequest')
    __listOfInputConfiguration = Shapes::ListShape.new(name: '__listOfInputConfiguration')
    __listOfInputConfigurationRequest = Shapes::ListShape.new(name: '__listOfInputConfigurationRequest')
    __listOfInteger = Shapes::ListShape.new(name: '__listOfInteger')
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
    __listOfNdiDiscoveryServerConfig = Shapes::ListShape.new(name: '__listOfNdiDiscoveryServerConfig')
    __listOfNdiMediaStreamInfo = Shapes::ListShape.new(name: '__listOfNdiMediaStreamInfo')
    __listOfNdiSourceInfo = Shapes::ListShape.new(name: '__listOfNdiSourceInfo')
    __listOfOffering = Shapes::ListShape.new(name: '__listOfOffering')
    __listOfOutput = Shapes::ListShape.new(name: '__listOfOutput')
    __listOfReservation = Shapes::ListShape.new(name: '__listOfReservation')
    __listOfSetSourceRequest = Shapes::ListShape.new(name: '__listOfSetSourceRequest')
    __listOfSource = Shapes::ListShape.new(name: '__listOfSource')
    __listOfString = Shapes::ListShape.new(name: '__listOfString')
    __listOfTransportStream = Shapes::ListShape.new(name: '__listOfTransportStream')
    __listOfTransportStreamProgram = Shapes::ListShape.new(name: '__listOfTransportStreamProgram')
    __listOfVideoMonitoringSetting = Shapes::ListShape.new(name: '__listOfVideoMonitoringSetting')
    __listOfVpcInterface = Shapes::ListShape.new(name: '__listOfVpcInterface')
    __listOfVpcInterfaceRequest = Shapes::ListShape.new(name: '__listOfVpcInterfaceRequest')
    __mapOfString = Shapes::MapShape.new(name: '__mapOfString')

    AddBridgeFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: AddBridgeFlowSourceRequestFlowArnString, required: true, location_name: "flowArn"))
    AddBridgeFlowSourceRequest.add_member(:flow_vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "flowVpcInterfaceAttachment"))
    AddBridgeFlowSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AddBridgeFlowSourceRequest.struct_class = Types::AddBridgeFlowSourceRequest

    AddBridgeNetworkOutputRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ipAddress"))
    AddBridgeNetworkOutputRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AddBridgeNetworkOutputRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "networkName"))
    AddBridgeNetworkOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "port"))
    AddBridgeNetworkOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    AddBridgeNetworkOutputRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ttl"))
    AddBridgeNetworkOutputRequest.struct_class = Types::AddBridgeNetworkOutputRequest

    AddBridgeNetworkSourceRequest.add_member(:multicast_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "multicastIp"))
    AddBridgeNetworkSourceRequest.add_member(:multicast_source_settings, Shapes::ShapeRef.new(shape: MulticastSourceSettings, location_name: "multicastSourceSettings"))
    AddBridgeNetworkSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AddBridgeNetworkSourceRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "networkName"))
    AddBridgeNetworkSourceRequest.add_member(:port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "port"))
    AddBridgeNetworkSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    AddBridgeNetworkSourceRequest.struct_class = Types::AddBridgeNetworkSourceRequest

    AddBridgeOutputRequest.add_member(:network_output, Shapes::ShapeRef.new(shape: AddBridgeNetworkOutputRequest, location_name: "networkOutput"))
    AddBridgeOutputRequest.struct_class = Types::AddBridgeOutputRequest

    AddBridgeOutputsRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: AddBridgeOutputsRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    AddBridgeOutputsRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddBridgeOutputRequest, required: true, location_name: "outputs"))
    AddBridgeOutputsRequest.struct_class = Types::AddBridgeOutputsRequest

    AddBridgeOutputsResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    AddBridgeOutputsResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfBridgeOutput, location_name: "outputs"))
    AddBridgeOutputsResponse.struct_class = Types::AddBridgeOutputsResponse

    AddBridgeSourceRequest.add_member(:flow_source, Shapes::ShapeRef.new(shape: AddBridgeFlowSourceRequest, location_name: "flowSource"))
    AddBridgeSourceRequest.add_member(:network_source, Shapes::ShapeRef.new(shape: AddBridgeNetworkSourceRequest, location_name: "networkSource"))
    AddBridgeSourceRequest.struct_class = Types::AddBridgeSourceRequest

    AddBridgeSourcesRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: BridgeArn, required: true, location: "uri", location_name: "BridgeArn"))
    AddBridgeSourcesRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfAddBridgeSourceRequest, required: true, location_name: "sources"))
    AddBridgeSourcesRequest.struct_class = Types::AddBridgeSourcesRequest

    AddBridgeSourcesResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    AddBridgeSourcesResponse.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfBridgeSource, location_name: "sources"))
    AddBridgeSourcesResponse.struct_class = Types::AddBridgeSourcesResponse

    AddEgressGatewayBridgeRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxBitrate"))
    AddEgressGatewayBridgeRequest.struct_class = Types::AddEgressGatewayBridgeRequest

    AddFlowMediaStreamsRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: AddFlowMediaStreamsRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    AddFlowMediaStreamsRequest.add_member(:media_streams, Shapes::ShapeRef.new(shape: __listOfAddMediaStreamRequest, required: true, location_name: "mediaStreams"))
    AddFlowMediaStreamsRequest.struct_class = Types::AddFlowMediaStreamsRequest

    AddFlowMediaStreamsResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    AddFlowMediaStreamsResponse.add_member(:media_streams, Shapes::ShapeRef.new(shape: __listOfMediaStream, location_name: "mediaStreams"))
    AddFlowMediaStreamsResponse.struct_class = Types::AddFlowMediaStreamsResponse

    AddFlowOutputs420Exception.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AddFlowOutputs420Exception.struct_class = Types::AddFlowOutputs420Exception

    AddFlowOutputsRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: AddFlowOutputsRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    AddFlowOutputsRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddOutputRequest, required: true, location_name: "outputs"))
    AddFlowOutputsRequest.struct_class = Types::AddFlowOutputsRequest

    AddFlowOutputsResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    AddFlowOutputsResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfOutput, location_name: "outputs"))
    AddFlowOutputsResponse.struct_class = Types::AddFlowOutputsResponse

    AddFlowSourcesRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: AddFlowSourcesRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    AddFlowSourcesRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfSetSourceRequest, required: true, location_name: "sources"))
    AddFlowSourcesRequest.struct_class = Types::AddFlowSourcesRequest

    AddFlowSourcesResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    AddFlowSourcesResponse.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfSource, location_name: "sources"))
    AddFlowSourcesResponse.struct_class = Types::AddFlowSourcesResponse

    AddFlowVpcInterfacesRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: AddFlowVpcInterfacesRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    AddFlowVpcInterfacesRequest.add_member(:vpc_interfaces, Shapes::ShapeRef.new(shape: __listOfVpcInterfaceRequest, required: true, location_name: "vpcInterfaces"))
    AddFlowVpcInterfacesRequest.struct_class = Types::AddFlowVpcInterfacesRequest

    AddFlowVpcInterfacesResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    AddFlowVpcInterfacesResponse.add_member(:vpc_interfaces, Shapes::ShapeRef.new(shape: __listOfVpcInterface, location_name: "vpcInterfaces"))
    AddFlowVpcInterfacesResponse.struct_class = Types::AddFlowVpcInterfacesResponse

    AddIngressGatewayBridgeRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxBitrate"))
    AddIngressGatewayBridgeRequest.add_member(:max_outputs, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxOutputs"))
    AddIngressGatewayBridgeRequest.struct_class = Types::AddIngressGatewayBridgeRequest

    AddMaintenance.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, required: true, location_name: "maintenanceDay"))
    AddMaintenance.add_member(:maintenance_start_hour, Shapes::ShapeRef.new(shape: String, required: true, location_name: "maintenanceStartHour"))
    AddMaintenance.struct_class = Types::AddMaintenance

    AddMediaStreamRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: MediaStreamAttributesRequest, location_name: "attributes"))
    AddMediaStreamRequest.add_member(:clock_rate, Shapes::ShapeRef.new(shape: Integer, location_name: "clockRate"))
    AddMediaStreamRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AddMediaStreamRequest.add_member(:media_stream_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "mediaStreamId"))
    AddMediaStreamRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "mediaStreamName"))
    AddMediaStreamRequest.add_member(:media_stream_type, Shapes::ShapeRef.new(shape: MediaStreamType, required: true, location_name: "mediaStreamType"))
    AddMediaStreamRequest.add_member(:video_format, Shapes::ShapeRef.new(shape: String, location_name: "videoFormat"))
    AddMediaStreamRequest.add_member(:media_stream_tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "mediaStreamTags"))
    AddMediaStreamRequest.struct_class = Types::AddMediaStreamRequest

    AddOutputRequest.add_member(:cidr_allow_list, Shapes::ShapeRef.new(shape: __listOfString, location_name: "cidrAllowList"))
    AddOutputRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AddOutputRequest.add_member(:destination, Shapes::ShapeRef.new(shape: String, location_name: "destination"))
    AddOutputRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    AddOutputRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "maxLatency"))
    AddOutputRequest.add_member(:media_stream_output_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamOutputConfigurationRequest, location_name: "mediaStreamOutputConfigurations"))
    AddOutputRequest.add_member(:min_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "minLatency"))
    AddOutputRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AddOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    AddOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    AddOutputRequest.add_member(:remote_id, Shapes::ShapeRef.new(shape: String, location_name: "remoteId"))
    AddOutputRequest.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: Integer, location_name: "senderControlPort"))
    AddOutputRequest.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "smoothingLatency"))
    AddOutputRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    AddOutputRequest.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    AddOutputRequest.add_member(:output_status, Shapes::ShapeRef.new(shape: OutputStatus, location_name: "outputStatus"))
    AddOutputRequest.add_member(:ndi_speed_hq_quality, Shapes::ShapeRef.new(shape: Integer, location_name: "ndiSpeedHqQuality"))
    AddOutputRequest.add_member(:ndi_program_name, Shapes::ShapeRef.new(shape: String, location_name: "ndiProgramName"))
    AddOutputRequest.add_member(:output_tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "outputTags"))
    AddOutputRequest.add_member(:router_integration_state, Shapes::ShapeRef.new(shape: State, location_name: "routerIntegrationState"))
    AddOutputRequest.add_member(:router_integration_transit_encryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, location_name: "routerIntegrationTransitEncryption"))
    AddOutputRequest.add_member(:ndi_output_timecode_source, Shapes::ShapeRef.new(shape: NdiOutputTimecodeSource, location_name: "ndiOutputTimecodeSource"))
    AddOutputRequest.add_member(:ndi_audio_reference_level, Shapes::ShapeRef.new(shape: NdiAudioReferenceLevel, location_name: "ndiAudioReferenceLevel"))
    AddOutputRequest.struct_class = Types::AddOutputRequest

    AudioMonitoringSetting.add_member(:silent_audio, Shapes::ShapeRef.new(shape: SilentAudio, location_name: "silentAudio"))
    AudioMonitoringSetting.struct_class = Types::AudioMonitoringSetting

    AutomaticEncryptionKeyConfiguration.struct_class = Types::AutomaticEncryptionKeyConfiguration

    AutomaticEndpointEncryptionConfiguration.struct_class = Types::AutomaticEndpointEncryptionConfiguration

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchGetDestinationEndpointError.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location_name: "arn"))
    BatchGetDestinationEndpointError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetDestinationEndpointError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetDestinationEndpointError.struct_class = Types::BatchGetDestinationEndpointError

    BatchGetDestinationEndpointErrorList.member = Shapes::ShapeRef.new(shape: BatchGetDestinationEndpointError)

    BatchGetDestinationEndpointRequest.add_member(:arns, Shapes::ShapeRef.new(shape: BatchGetDestinationEndpointRequestArnsList, required: true, location: "querystring", location_name: "arns"))
    BatchGetDestinationEndpointRequest.struct_class = Types::BatchGetDestinationEndpointRequest

    BatchGetDestinationEndpointRequestArnsList.member = Shapes::ShapeRef.new(shape: DestinationEndpointArn)

    BatchGetDestinationEndpointResponse.add_member(:destination_endpoints, Shapes::ShapeRef.new(shape: DestinationEndpointList, required: true, location_name: "destinationEndpoints"))
    BatchGetDestinationEndpointResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetDestinationEndpointErrorList, required: true, location_name: "errors"))
    BatchGetDestinationEndpointResponse.struct_class = Types::BatchGetDestinationEndpointResponse

    BatchGetRouterInputError.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    BatchGetRouterInputError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetRouterInputError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetRouterInputError.struct_class = Types::BatchGetRouterInputError

    BatchGetRouterInputErrorList.member = Shapes::ShapeRef.new(shape: BatchGetRouterInputError)

    BatchGetRouterInputRequest.add_member(:arns, Shapes::ShapeRef.new(shape: BatchGetRouterInputRequestArnsList, required: true, location: "querystring", location_name: "arns"))
    BatchGetRouterInputRequest.struct_class = Types::BatchGetRouterInputRequest

    BatchGetRouterInputRequestArnsList.member = Shapes::ShapeRef.new(shape: RouterInputArn)

    BatchGetRouterInputResponse.add_member(:router_inputs, Shapes::ShapeRef.new(shape: RouterInputList, required: true, location_name: "routerInputs"))
    BatchGetRouterInputResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetRouterInputErrorList, required: true, location_name: "errors"))
    BatchGetRouterInputResponse.struct_class = Types::BatchGetRouterInputResponse

    BatchGetRouterNetworkInterfaceError.add_member(:arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location_name: "arn"))
    BatchGetRouterNetworkInterfaceError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetRouterNetworkInterfaceError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetRouterNetworkInterfaceError.struct_class = Types::BatchGetRouterNetworkInterfaceError

    BatchGetRouterNetworkInterfaceErrorList.member = Shapes::ShapeRef.new(shape: BatchGetRouterNetworkInterfaceError)

    BatchGetRouterNetworkInterfaceRequest.add_member(:arns, Shapes::ShapeRef.new(shape: BatchGetRouterNetworkInterfaceRequestArnsList, required: true, location: "querystring", location_name: "arns"))
    BatchGetRouterNetworkInterfaceRequest.struct_class = Types::BatchGetRouterNetworkInterfaceRequest

    BatchGetRouterNetworkInterfaceRequestArnsList.member = Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn)

    BatchGetRouterNetworkInterfaceResponse.add_member(:router_network_interfaces, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceList, required: true, location_name: "routerNetworkInterfaces"))
    BatchGetRouterNetworkInterfaceResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetRouterNetworkInterfaceErrorList, required: true, location_name: "errors"))
    BatchGetRouterNetworkInterfaceResponse.struct_class = Types::BatchGetRouterNetworkInterfaceResponse

    BatchGetRouterOutputError.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "arn"))
    BatchGetRouterOutputError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetRouterOutputError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetRouterOutputError.struct_class = Types::BatchGetRouterOutputError

    BatchGetRouterOutputErrorList.member = Shapes::ShapeRef.new(shape: BatchGetRouterOutputError)

    BatchGetRouterOutputRequest.add_member(:arns, Shapes::ShapeRef.new(shape: BatchGetRouterOutputRequestArnsList, required: true, location: "querystring", location_name: "arns"))
    BatchGetRouterOutputRequest.struct_class = Types::BatchGetRouterOutputRequest

    BatchGetRouterOutputRequestArnsList.member = Shapes::ShapeRef.new(shape: RouterOutputArn)

    BatchGetRouterOutputResponse.add_member(:router_outputs, Shapes::ShapeRef.new(shape: RouterOutputList, required: true, location_name: "routerOutputs"))
    BatchGetRouterOutputResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetRouterOutputErrorList, required: true, location_name: "errors"))
    BatchGetRouterOutputResponse.struct_class = Types::BatchGetRouterOutputResponse

    BatchGetSourceEndpointError.add_member(:arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location_name: "arn"))
    BatchGetSourceEndpointError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchGetSourceEndpointError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetSourceEndpointError.struct_class = Types::BatchGetSourceEndpointError

    BatchGetSourceEndpointErrorList.member = Shapes::ShapeRef.new(shape: BatchGetSourceEndpointError)

    BatchGetSourceEndpointRequest.add_member(:arns, Shapes::ShapeRef.new(shape: BatchGetSourceEndpointRequestArnsList, required: true, location: "querystring", location_name: "arns"))
    BatchGetSourceEndpointRequest.struct_class = Types::BatchGetSourceEndpointRequest

    BatchGetSourceEndpointRequestArnsList.member = Shapes::ShapeRef.new(shape: SourceEndpointArn)

    BatchGetSourceEndpointResponse.add_member(:source_endpoints, Shapes::ShapeRef.new(shape: SourceEndpointList, required: true, location_name: "sourceEndpoints"))
    BatchGetSourceEndpointResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetSourceEndpointErrorList, required: true, location_name: "errors"))
    BatchGetSourceEndpointResponse.struct_class = Types::BatchGetSourceEndpointResponse

    BlackFrames.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    BlackFrames.add_member(:threshold_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "thresholdSeconds"))
    BlackFrames.struct_class = Types::BlackFrames

    BlackFramesConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ContentQualityAnalysisState, required: true, location_name: "state"))
    BlackFramesConfiguration.add_member(:threshold_seconds, Shapes::ShapeRef.new(shape: RouterCqaThresholdSeconds, required: true, location_name: "thresholdSeconds"))
    BlackFramesConfiguration.struct_class = Types::BlackFramesConfiguration

    Bridge.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "bridgeArn"))
    Bridge.add_member(:bridge_messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, location_name: "bridgeMessages"))
    Bridge.add_member(:bridge_state, Shapes::ShapeRef.new(shape: BridgeState, required: true, location_name: "bridgeState"))
    Bridge.add_member(:egress_gateway_bridge, Shapes::ShapeRef.new(shape: EgressGatewayBridge, location_name: "egressGatewayBridge"))
    Bridge.add_member(:ingress_gateway_bridge, Shapes::ShapeRef.new(shape: IngressGatewayBridge, location_name: "ingressGatewayBridge"))
    Bridge.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Bridge.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfBridgeOutput, location_name: "outputs"))
    Bridge.add_member(:placement_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "placementArn"))
    Bridge.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, location_name: "sourceFailoverConfig"))
    Bridge.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfBridgeSource, location_name: "sources"))
    Bridge.struct_class = Types::Bridge

    BridgeFlowOutput.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "flowArn"))
    BridgeFlowOutput.add_member(:flow_source_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "flowSourceArn"))
    BridgeFlowOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    BridgeFlowOutput.struct_class = Types::BridgeFlowOutput

    BridgeFlowSource.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "flowArn"))
    BridgeFlowSource.add_member(:flow_vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "flowVpcInterfaceAttachment"))
    BridgeFlowSource.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    BridgeFlowSource.add_member(:output_arn, Shapes::ShapeRef.new(shape: String, location_name: "outputArn"))
    BridgeFlowSource.struct_class = Types::BridgeFlowSource

    BridgeNetworkOutput.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ipAddress"))
    BridgeNetworkOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    BridgeNetworkOutput.add_member(:network_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "networkName"))
    BridgeNetworkOutput.add_member(:port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "port"))
    BridgeNetworkOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    BridgeNetworkOutput.add_member(:ttl, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ttl"))
    BridgeNetworkOutput.struct_class = Types::BridgeNetworkOutput

    BridgeNetworkSource.add_member(:multicast_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "multicastIp"))
    BridgeNetworkSource.add_member(:multicast_source_settings, Shapes::ShapeRef.new(shape: MulticastSourceSettings, location_name: "multicastSourceSettings"))
    BridgeNetworkSource.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    BridgeNetworkSource.add_member(:network_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "networkName"))
    BridgeNetworkSource.add_member(:port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "port"))
    BridgeNetworkSource.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    BridgeNetworkSource.struct_class = Types::BridgeNetworkSource

    BridgeOutput.add_member(:flow_output, Shapes::ShapeRef.new(shape: BridgeFlowOutput, location_name: "flowOutput"))
    BridgeOutput.add_member(:network_output, Shapes::ShapeRef.new(shape: BridgeNetworkOutput, location_name: "networkOutput"))
    BridgeOutput.struct_class = Types::BridgeOutput

    BridgeSource.add_member(:flow_source, Shapes::ShapeRef.new(shape: BridgeFlowSource, location_name: "flowSource"))
    BridgeSource.add_member(:network_source, Shapes::ShapeRef.new(shape: BridgeNetworkSource, location_name: "networkSource"))
    BridgeSource.struct_class = Types::BridgeSource

    ColorInformation.add_member(:colorimetry, Shapes::ShapeRef.new(shape: VideoColorimetry, location_name: "colorimetry"))
    ColorInformation.add_member(:transfer_characteristics, Shapes::ShapeRef.new(shape: VideoTransferCharacteristics, location_name: "transferCharacteristics"))
    ColorInformation.add_member(:matrix_coefficients, Shapes::ShapeRef.new(shape: VideoMatrixCoefficients, location_name: "matrixCoefficients"))
    ColorInformation.struct_class = Types::ColorInformation

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectEndpointsRequest.add_member(:destination_endpoint_arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location: "uri", location_name: "DestinationEndpointArn"))
    ConnectEndpointsRequest.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location_name: "sourceEndpointArn"))
    ConnectEndpointsRequest.struct_class = Types::ConnectEndpointsRequest

    ConnectEndpointsResponse.add_member(:destination_endpoint_arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location_name: "destinationEndpointArn"))
    ConnectEndpointsResponse.add_member(:destination_endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationEndpointName"))
    ConnectEndpointsResponse.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location_name: "sourceEndpointArn"))
    ConnectEndpointsResponse.add_member(:source_endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceEndpointName"))
    ConnectEndpointsResponse.struct_class = Types::ConnectEndpointsResponse

    ConsumedResourceShareDetails.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ownerAccountId"))
    ConsumedResourceShareDetails.struct_class = Types::ConsumedResourceShareDetails

    ContentQualityAnalysisFeatureConfiguration.add_member(:black_frames, Shapes::ShapeRef.new(shape: BlackFramesConfiguration, location_name: "blackFrames"))
    ContentQualityAnalysisFeatureConfiguration.add_member(:frozen_frames, Shapes::ShapeRef.new(shape: FrozenFramesConfiguration, location_name: "frozenFrames"))
    ContentQualityAnalysisFeatureConfiguration.add_member(:silent_audio, Shapes::ShapeRef.new(shape: SilentAudioConfiguration, location_name: "silentAudio"))
    ContentQualityAnalysisFeatureConfiguration.struct_class = Types::ContentQualityAnalysisFeatureConfiguration

    CreateBridge420Exception.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    CreateBridge420Exception.struct_class = Types::CreateBridge420Exception

    CreateBridgeRequest.add_member(:egress_gateway_bridge, Shapes::ShapeRef.new(shape: AddEgressGatewayBridgeRequest, location_name: "egressGatewayBridge"))
    CreateBridgeRequest.add_member(:ingress_gateway_bridge, Shapes::ShapeRef.new(shape: AddIngressGatewayBridgeRequest, location_name: "ingressGatewayBridge"))
    CreateBridgeRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateBridgeRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddBridgeOutputRequest, location_name: "outputs"))
    CreateBridgeRequest.add_member(:placement_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "placementArn"))
    CreateBridgeRequest.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, location_name: "sourceFailoverConfig"))
    CreateBridgeRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfAddBridgeSourceRequest, required: true, location_name: "sources"))
    CreateBridgeRequest.struct_class = Types::CreateBridgeRequest

    CreateBridgeResponse.add_member(:bridge, Shapes::ShapeRef.new(shape: Bridge, location_name: "bridge"))
    CreateBridgeResponse.struct_class = Types::CreateBridgeResponse

    CreateFlow420Exception.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    CreateFlow420Exception.struct_class = Types::CreateFlow420Exception

    CreateFlowRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CreateFlowRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfGrantEntitlementRequest, location_name: "entitlements"))
    CreateFlowRequest.add_member(:media_streams, Shapes::ShapeRef.new(shape: __listOfAddMediaStreamRequest, location_name: "mediaStreams"))
    CreateFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateFlowRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddOutputRequest, location_name: "outputs"))
    CreateFlowRequest.add_member(:source, Shapes::ShapeRef.new(shape: SetSourceRequest, location_name: "source"))
    CreateFlowRequest.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, location_name: "sourceFailoverConfig"))
    CreateFlowRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfSetSourceRequest, location_name: "sources"))
    CreateFlowRequest.add_member(:vpc_interfaces, Shapes::ShapeRef.new(shape: __listOfVpcInterfaceRequest, location_name: "vpcInterfaces"))
    CreateFlowRequest.add_member(:maintenance, Shapes::ShapeRef.new(shape: AddMaintenance, location_name: "maintenance"))
    CreateFlowRequest.add_member(:source_monitoring_config, Shapes::ShapeRef.new(shape: MonitoringConfig, location_name: "sourceMonitoringConfig"))
    CreateFlowRequest.add_member(:flow_size, Shapes::ShapeRef.new(shape: FlowSize, location_name: "flowSize"))
    CreateFlowRequest.add_member(:ndi_config, Shapes::ShapeRef.new(shape: NdiConfig, location_name: "ndiConfig"))
    CreateFlowRequest.add_member(:encoding_config, Shapes::ShapeRef.new(shape: EncodingConfig, location_name: "encodingConfig"))
    CreateFlowRequest.add_member(:flow_tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "flowTags"))
    CreateFlowRequest.struct_class = Types::CreateFlowRequest

    CreateFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: Flow, location_name: "flow"))
    CreateFlowResponse.struct_class = Types::CreateFlowResponse

    CreateGateway420Exception.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    CreateGateway420Exception.struct_class = Types::CreateGateway420Exception

    CreateGatewayRequest.add_member(:egress_cidr_blocks, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "egressCidrBlocks"))
    CreateGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateGatewayRequest.add_member(:networks, Shapes::ShapeRef.new(shape: __listOfGatewayNetwork, required: true, location_name: "networks"))
    CreateGatewayRequest.struct_class = Types::CreateGatewayRequest

    CreateGatewayResponse.add_member(:gateway, Shapes::ShapeRef.new(shape: Gateway, location_name: "gateway"))
    CreateGatewayResponse.struct_class = Types::CreateGatewayResponse

    CreateRouterInputRequest.add_member(:name, Shapes::ShapeRef.new(shape: CreateRouterInputRequestNameString, required: true, location_name: "name"))
    CreateRouterInputRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterInputConfiguration, required: true, location_name: "configuration"))
    CreateRouterInputRequest.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "maximumBitrate"))
    CreateRouterInputRequest.add_member(:routing_scope, Shapes::ShapeRef.new(shape: RoutingScope, required: true, location_name: "routingScope"))
    CreateRouterInputRequest.add_member(:tier, Shapes::ShapeRef.new(shape: RouterInputTier, required: true, location_name: "tier"))
    CreateRouterInputRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "regionName"))
    CreateRouterInputRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CreateRouterInputRequest.add_member(:transit_encryption, Shapes::ShapeRef.new(shape: RouterInputTransitEncryption, location_name: "transitEncryption"))
    CreateRouterInputRequest.add_member(:maintenance_configuration, Shapes::ShapeRef.new(shape: MaintenanceConfiguration, location_name: "maintenanceConfiguration"))
    CreateRouterInputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "tags"))
    CreateRouterInputRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRouterInputRequest.add_member(:content_quality_analysis_configuration, Shapes::ShapeRef.new(shape: RouterContentQualityAnalysisConfiguration, location_name: "contentQualityAnalysisConfiguration"))
    CreateRouterInputRequest.struct_class = Types::CreateRouterInputRequest

    CreateRouterInputResponse.add_member(:router_input, Shapes::ShapeRef.new(shape: RouterInput, required: true, location_name: "routerInput"))
    CreateRouterInputResponse.struct_class = Types::CreateRouterInputResponse

    CreateRouterNetworkInterfaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: CreateRouterNetworkInterfaceRequestNameString, required: true, location_name: "name"))
    CreateRouterNetworkInterfaceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceConfiguration, required: true, location_name: "configuration"))
    CreateRouterNetworkInterfaceRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "regionName"))
    CreateRouterNetworkInterfaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "tags"))
    CreateRouterNetworkInterfaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRouterNetworkInterfaceRequest.struct_class = Types::CreateRouterNetworkInterfaceRequest

    CreateRouterNetworkInterfaceResponse.add_member(:router_network_interface, Shapes::ShapeRef.new(shape: RouterNetworkInterface, required: true, location_name: "routerNetworkInterface"))
    CreateRouterNetworkInterfaceResponse.struct_class = Types::CreateRouterNetworkInterfaceResponse

    CreateRouterOutputRequest.add_member(:name, Shapes::ShapeRef.new(shape: CreateRouterOutputRequestNameString, required: true, location_name: "name"))
    CreateRouterOutputRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterOutputConfiguration, required: true, location_name: "configuration"))
    CreateRouterOutputRequest.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "maximumBitrate"))
    CreateRouterOutputRequest.add_member(:routing_scope, Shapes::ShapeRef.new(shape: RoutingScope, required: true, location_name: "routingScope"))
    CreateRouterOutputRequest.add_member(:tier, Shapes::ShapeRef.new(shape: RouterOutputTier, required: true, location_name: "tier"))
    CreateRouterOutputRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "regionName"))
    CreateRouterOutputRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CreateRouterOutputRequest.add_member(:maintenance_configuration, Shapes::ShapeRef.new(shape: MaintenanceConfiguration, location_name: "maintenanceConfiguration"))
    CreateRouterOutputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "tags"))
    CreateRouterOutputRequest.add_member(:fabric_configuration, Shapes::ShapeRef.new(shape: FabricConfiguration, location_name: "fabricConfiguration"))
    CreateRouterOutputRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRouterOutputRequest.struct_class = Types::CreateRouterOutputRequest

    CreateRouterOutputResponse.add_member(:router_output, Shapes::ShapeRef.new(shape: RouterOutput, required: true, location_name: "routerOutput"))
    CreateRouterOutputResponse.struct_class = Types::CreateRouterOutputResponse

    DefaultMaintenanceConfiguration.struct_class = Types::DefaultMaintenanceConfiguration

    DeleteBridgeRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: DeleteBridgeRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    DeleteBridgeRequest.struct_class = Types::DeleteBridgeRequest

    DeleteBridgeResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    DeleteBridgeResponse.struct_class = Types::DeleteBridgeResponse

    DeleteFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: DeleteFlowRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    DeleteFlowRequest.struct_class = Types::DeleteFlowRequest

    DeleteFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    DeleteFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DeleteFlowResponse.struct_class = Types::DeleteFlowResponse

    DeleteGatewayRequest.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: DeleteGatewayRequestGatewayArnString, required: true, location: "uri", location_name: "GatewayArn"))
    DeleteGatewayRequest.struct_class = Types::DeleteGatewayRequest

    DeleteGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: String, location_name: "gatewayArn"))
    DeleteGatewayResponse.struct_class = Types::DeleteGatewayResponse

    DeleteRouterInputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location: "uri", location_name: "Arn"))
    DeleteRouterInputRequest.struct_class = Types::DeleteRouterInputRequest

    DeleteRouterInputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    DeleteRouterInputResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    DeleteRouterInputResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterInputState, required: true, location_name: "state"))
    DeleteRouterInputResponse.struct_class = Types::DeleteRouterInputResponse

    DeleteRouterNetworkInterfaceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location: "uri", location_name: "Arn"))
    DeleteRouterNetworkInterfaceRequest.struct_class = Types::DeleteRouterNetworkInterfaceRequest

    DeleteRouterNetworkInterfaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location_name: "arn"))
    DeleteRouterNetworkInterfaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    DeleteRouterNetworkInterfaceResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceState, required: true, location_name: "state"))
    DeleteRouterNetworkInterfaceResponse.struct_class = Types::DeleteRouterNetworkInterfaceResponse

    DeleteRouterOutputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location: "uri", location_name: "Arn"))
    DeleteRouterOutputRequest.struct_class = Types::DeleteRouterOutputRequest

    DeleteRouterOutputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "arn"))
    DeleteRouterOutputResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    DeleteRouterOutputResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterOutputState, required: true, location_name: "state"))
    DeleteRouterOutputResponse.struct_class = Types::DeleteRouterOutputResponse

    DeregisterDestinationEndpointRequest.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location: "uri", location_name: "Arn"))
    DeregisterDestinationEndpointRequest.struct_class = Types::DeregisterDestinationEndpointRequest

    DeregisterDestinationEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location_name: "arn"))
    DeregisterDestinationEndpointResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    DeregisterDestinationEndpointResponse.struct_class = Types::DeregisterDestinationEndpointResponse

    DeregisterGatewayInstanceRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "force"))
    DeregisterGatewayInstanceRequest.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: DeregisterGatewayInstanceRequestGatewayInstanceArnString, required: true, location: "uri", location_name: "GatewayInstanceArn"))
    DeregisterGatewayInstanceRequest.struct_class = Types::DeregisterGatewayInstanceRequest

    DeregisterGatewayInstanceResponse.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "gatewayInstanceArn"))
    DeregisterGatewayInstanceResponse.add_member(:instance_state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "instanceState"))
    DeregisterGatewayInstanceResponse.struct_class = Types::DeregisterGatewayInstanceResponse

    DeregisterSourceEndpointRequest.add_member(:arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location: "uri", location_name: "Arn"))
    DeregisterSourceEndpointRequest.struct_class = Types::DeregisterSourceEndpointRequest

    DeregisterSourceEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location_name: "arn"))
    DeregisterSourceEndpointResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    DeregisterSourceEndpointResponse.struct_class = Types::DeregisterSourceEndpointResponse

    DescribeBridgeRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: DescribeBridgeRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    DescribeBridgeRequest.struct_class = Types::DescribeBridgeRequest

    DescribeBridgeResponse.add_member(:bridge, Shapes::ShapeRef.new(shape: Bridge, location_name: "bridge"))
    DescribeBridgeResponse.struct_class = Types::DescribeBridgeResponse

    DescribeFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: DescribeFlowRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    DescribeFlowRequest.struct_class = Types::DescribeFlowRequest

    DescribeFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: Flow, location_name: "flow"))
    DescribeFlowResponse.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    DescribeFlowResponse.struct_class = Types::DescribeFlowResponse

    DescribeFlowSourceMetadataRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location: "uri", location_name: "FlowArn"))
    DescribeFlowSourceMetadataRequest.struct_class = Types::DescribeFlowSourceMetadataRequest

    DescribeFlowSourceMetadataResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    DescribeFlowSourceMetadataResponse.add_member(:messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, location_name: "messages"))
    DescribeFlowSourceMetadataResponse.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timestamp"))
    DescribeFlowSourceMetadataResponse.add_member(:transport_media_info, Shapes::ShapeRef.new(shape: TransportMediaInfo, location_name: "transportMediaInfo"))
    DescribeFlowSourceMetadataResponse.add_member(:ndi_info, Shapes::ShapeRef.new(shape: NdiSourceMetadataInfo, location_name: "ndiInfo"))
    DescribeFlowSourceMetadataResponse.struct_class = Types::DescribeFlowSourceMetadataResponse

    DescribeFlowSourceThumbnailRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, required: true, location: "uri", location_name: "FlowArn"))
    DescribeFlowSourceThumbnailRequest.struct_class = Types::DescribeFlowSourceThumbnailRequest

    DescribeFlowSourceThumbnailResponse.add_member(:thumbnail_details, Shapes::ShapeRef.new(shape: ThumbnailDetails, location_name: "thumbnailDetails"))
    DescribeFlowSourceThumbnailResponse.struct_class = Types::DescribeFlowSourceThumbnailResponse

    DescribeGatewayInstanceRequest.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: DescribeGatewayInstanceRequestGatewayInstanceArnString, required: true, location: "uri", location_name: "GatewayInstanceArn"))
    DescribeGatewayInstanceRequest.struct_class = Types::DescribeGatewayInstanceRequest

    DescribeGatewayInstanceResponse.add_member(:gateway_instance, Shapes::ShapeRef.new(shape: GatewayInstance, location_name: "gatewayInstance"))
    DescribeGatewayInstanceResponse.struct_class = Types::DescribeGatewayInstanceResponse

    DescribeGatewayRequest.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: DescribeGatewayRequestGatewayArnString, required: true, location: "uri", location_name: "GatewayArn"))
    DescribeGatewayRequest.struct_class = Types::DescribeGatewayRequest

    DescribeGatewayResponse.add_member(:gateway, Shapes::ShapeRef.new(shape: Gateway, location_name: "gateway"))
    DescribeGatewayResponse.struct_class = Types::DescribeGatewayResponse

    DescribeOfferingRequest.add_member(:offering_arn, Shapes::ShapeRef.new(shape: OfferingArn, required: true, location: "uri", location_name: "OfferingArn"))
    DescribeOfferingRequest.struct_class = Types::DescribeOfferingRequest

    DescribeOfferingResponse.add_member(:offering, Shapes::ShapeRef.new(shape: Offering, location_name: "offering"))
    DescribeOfferingResponse.struct_class = Types::DescribeOfferingResponse

    DescribeReservationRequest.add_member(:reservation_arn, Shapes::ShapeRef.new(shape: ReservationArn, required: true, location: "uri", location_name: "ReservationArn"))
    DescribeReservationRequest.struct_class = Types::DescribeReservationRequest

    DescribeReservationResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    DescribeReservationResponse.struct_class = Types::DescribeReservationResponse

    DestinationConfiguration.add_member(:destination_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationIp"))
    DestinationConfiguration.add_member(:destination_port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "destinationPort"))
    DestinationConfiguration.add_member(:interface, Shapes::ShapeRef.new(shape: Interface, required: true, location_name: "interface"))
    DestinationConfiguration.add_member(:outbound_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outboundIp"))
    DestinationConfiguration.struct_class = Types::DestinationConfiguration

    DestinationConfigurationRequest.add_member(:destination_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationIp"))
    DestinationConfigurationRequest.add_member(:destination_port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "destinationPort"))
    DestinationConfigurationRequest.add_member(:interface, Shapes::ShapeRef.new(shape: InterfaceRequest, required: true, location_name: "interface"))
    DestinationConfigurationRequest.struct_class = Types::DestinationConfigurationRequest

    DestinationEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    DestinationEndpoint.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location_name: "arn"))
    DestinationEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    DestinationEndpoint.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    DestinationEndpoint.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    DestinationEndpoint.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    DestinationEndpoint.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    DestinationEndpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    DestinationEndpoint.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    DestinationEndpoint.add_member(:lifecycle_management, Shapes::ShapeRef.new(shape: EndpointLifecycle, required: true, location_name: "lifecycleManagement"))
    DestinationEndpoint.add_member(:messages, Shapes::ShapeRef.new(shape: DestinationEndpointMessageList, required: true, location_name: "messages"))
    DestinationEndpoint.add_member(:destination_type, Shapes::ShapeRef.new(shape: DestinationEndpointType, required: true, location_name: "destinationType"))
    DestinationEndpoint.add_member(:configuration, Shapes::ShapeRef.new(shape: DestinationEndpointConfiguration, required: true, location_name: "configuration"))
    DestinationEndpoint.add_member(:resource_share_ownership, Shapes::ShapeRef.new(shape: ResourceShareOwnership, required: true, location_name: "resourceShareOwnership"))
    DestinationEndpoint.add_member(:resource_share_details, Shapes::ShapeRef.new(shape: ResourceShareDetails, required: true, location_name: "resourceShareDetails"))
    DestinationEndpoint.add_member(:registration_state, Shapes::ShapeRef.new(shape: DestinationEndpointRegistrationState, required: true, location_name: "registrationState"))
    DestinationEndpoint.add_member(:connection_details, Shapes::ShapeRef.new(shape: DestinationEndpointConnectionDetails, location_name: "connectionDetails"))
    DestinationEndpoint.add_member(:connection_state, Shapes::ShapeRef.new(shape: DestinationEndpointConnectionState, required: true, location_name: "connectionState"))
    DestinationEndpoint.add_member(:connected_source, Shapes::ShapeRef.new(shape: SourceEndpointArn, location_name: "connectedSource"))
    DestinationEndpoint.add_member(:decryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "decryptionType"))
    DestinationEndpoint.add_member(:decryption_configuration, Shapes::ShapeRef.new(shape: EndpointEncryptionConfiguration, location_name: "decryptionConfiguration"))
    DestinationEndpoint.add_member(:associated_resource_details, Shapes::ShapeRef.new(shape: DestinationEndpointAssociatedResourceDetails, required: true, location_name: "associatedResourceDetails"))
    DestinationEndpoint.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, required: true, location_name: "tags"))
    DestinationEndpoint.struct_class = Types::DestinationEndpoint

    DestinationEndpointArnList.member = Shapes::ShapeRef.new(shape: DestinationEndpointArn)

    DestinationEndpointAssociatedResourceDetails.add_member(:standard, Shapes::ShapeRef.new(shape: StandardDestinationEndpointAssociatedResourceDetails, location_name: "standard"))
    DestinationEndpointAssociatedResourceDetails.add_member(:router_input, Shapes::ShapeRef.new(shape: RouterInputDestinationEndpointAssociatedResourceDetails, location_name: "routerInput"))
    DestinationEndpointAssociatedResourceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DestinationEndpointAssociatedResourceDetails.add_member_subclass(:standard, Types::DestinationEndpointAssociatedResourceDetails::Standard)
    DestinationEndpointAssociatedResourceDetails.add_member_subclass(:router_input, Types::DestinationEndpointAssociatedResourceDetails::RouterInput)
    DestinationEndpointAssociatedResourceDetails.add_member_subclass(:unknown, Types::DestinationEndpointAssociatedResourceDetails::Unknown)
    DestinationEndpointAssociatedResourceDetails.struct_class = Types::DestinationEndpointAssociatedResourceDetails

    DestinationEndpointConfiguration.add_member(:standard, Shapes::ShapeRef.new(shape: StandardDestinationEndpointConfiguration, location_name: "standard"))
    DestinationEndpointConfiguration.add_member(:router_input, Shapes::ShapeRef.new(shape: RouterInputDestinationEndpointConfiguration, location_name: "routerInput"))
    DestinationEndpointConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DestinationEndpointConfiguration.add_member_subclass(:standard, Types::DestinationEndpointConfiguration::Standard)
    DestinationEndpointConfiguration.add_member_subclass(:router_input, Types::DestinationEndpointConfiguration::RouterInput)
    DestinationEndpointConfiguration.add_member_subclass(:unknown, Types::DestinationEndpointConfiguration::Unknown)
    DestinationEndpointConfiguration.struct_class = Types::DestinationEndpointConfiguration

    DestinationEndpointConnectionDetails.add_member(:standard, Shapes::ShapeRef.new(shape: StandardDestinationEndpointConnectionDetails, location_name: "standard"))
    DestinationEndpointConnectionDetails.add_member(:router_input, Shapes::ShapeRef.new(shape: RouterInputDestinationEndpointConnectionDetails, location_name: "routerInput"))
    DestinationEndpointConnectionDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DestinationEndpointConnectionDetails.add_member_subclass(:standard, Types::DestinationEndpointConnectionDetails::Standard)
    DestinationEndpointConnectionDetails.add_member_subclass(:router_input, Types::DestinationEndpointConnectionDetails::RouterInput)
    DestinationEndpointConnectionDetails.add_member_subclass(:unknown, Types::DestinationEndpointConnectionDetails::Unknown)
    DestinationEndpointConnectionDetails.struct_class = Types::DestinationEndpointConnectionDetails

    DestinationEndpointFilter.add_member(:region_names, Shapes::ShapeRef.new(shape: StringList, location_name: "regionNames"))
    DestinationEndpointFilter.add_member(:destination_types, Shapes::ShapeRef.new(shape: DestinationEndpointTypeList, location_name: "destinationTypes"))
    DestinationEndpointFilter.add_member(:name_contains, Shapes::ShapeRef.new(shape: StringList, location_name: "nameContains"))
    DestinationEndpointFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DestinationEndpointFilter.add_member_subclass(:region_names, Types::DestinationEndpointFilter::RegionNames)
    DestinationEndpointFilter.add_member_subclass(:destination_types, Types::DestinationEndpointFilter::DestinationTypes)
    DestinationEndpointFilter.add_member_subclass(:name_contains, Types::DestinationEndpointFilter::NameContains)
    DestinationEndpointFilter.add_member_subclass(:unknown, Types::DestinationEndpointFilter::Unknown)
    DestinationEndpointFilter.struct_class = Types::DestinationEndpointFilter

    DestinationEndpointFilterList.member = Shapes::ShapeRef.new(shape: DestinationEndpointFilter)

    DestinationEndpointList.member = Shapes::ShapeRef.new(shape: DestinationEndpoint)

    DestinationEndpointMessage.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    DestinationEndpointMessage.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DestinationEndpointMessage.struct_class = Types::DestinationEndpointMessage

    DestinationEndpointMessageList.member = Shapes::ShapeRef.new(shape: DestinationEndpointMessage)

    DestinationEndpointRouterInputConfiguration.add_member(:endpoint_lifecycle_management, Shapes::ShapeRef.new(shape: EndpointLifecycle, required: true, location_name: "endpointLifecycleManagement"))
    DestinationEndpointRouterInputConfiguration.add_member(:source_transit_decryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "sourceTransitDecryptionType"))
    DestinationEndpointRouterInputConfiguration.add_member(:source_transit_decryption, Shapes::ShapeRef.new(shape: EndpointEncryptionConfiguration, required: true, location_name: "sourceTransitDecryption"))
    DestinationEndpointRouterInputConfiguration.struct_class = Types::DestinationEndpointRouterInputConfiguration

    DestinationEndpointRouterInputStreamDetails.struct_class = Types::DestinationEndpointRouterInputStreamDetails

    DestinationEndpointServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DestinationEndpointServiceQuotaExceededException.struct_class = Types::DestinationEndpointServiceQuotaExceededException

    DestinationEndpointTypeList.member = Shapes::ShapeRef.new(shape: DestinationEndpointType)

    DisconnectEndpointsRequest.add_member(:destination_endpoint_arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location: "uri", location_name: "DestinationEndpointArn"))
    DisconnectEndpointsRequest.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location_name: "sourceEndpointArn"))
    DisconnectEndpointsRequest.struct_class = Types::DisconnectEndpointsRequest

    DisconnectEndpointsResponse.add_member(:destination_endpoint_arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location_name: "destinationEndpointArn"))
    DisconnectEndpointsResponse.add_member(:destination_endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationEndpointName"))
    DisconnectEndpointsResponse.add_member(:source_endpoint_arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location_name: "sourceEndpointArn"))
    DisconnectEndpointsResponse.add_member(:source_endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceEndpointName"))
    DisconnectEndpointsResponse.struct_class = Types::DisconnectEndpointsResponse

    EgressGatewayBridge.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "instanceId"))
    EgressGatewayBridge.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxBitrate"))
    EgressGatewayBridge.struct_class = Types::EgressGatewayBridge

    EncodingConfig.add_member(:encoding_profile, Shapes::ShapeRef.new(shape: EncodingProfile, location_name: "encodingProfile"))
    EncodingConfig.add_member(:video_max_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "videoMaxBitrate"))
    EncodingConfig.struct_class = Types::EncodingConfig

    EncodingParameters.add_member(:compression_factor, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "compressionFactor"))
    EncodingParameters.add_member(:encoder_profile, Shapes::ShapeRef.new(shape: EncoderProfile, required: true, location_name: "encoderProfile"))
    EncodingParameters.struct_class = Types::EncodingParameters

    EncodingParametersRequest.add_member(:compression_factor, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "compressionFactor"))
    EncodingParametersRequest.add_member(:encoder_profile, Shapes::ShapeRef.new(shape: EncoderProfile, required: true, location_name: "encoderProfile"))
    EncodingParametersRequest.struct_class = Types::EncodingParametersRequest

    Encryption.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "algorithm"))
    Encryption.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: String, location_name: "constantInitializationVector"))
    Encryption.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location_name: "deviceId"))
    Encryption.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, location_name: "keyType"))
    Encryption.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    Encryption.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    Encryption.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    Encryption.add_member(:secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "secretArn"))
    Encryption.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    Encryption.struct_class = Types::Encryption

    EndpointEncryptionConfiguration.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManagerEndpointEncryptionConfiguration, location_name: "secretsManager"))
    EndpointEncryptionConfiguration.add_member(:automatic, Shapes::ShapeRef.new(shape: AutomaticEndpointEncryptionConfiguration, location_name: "automatic"))
    EndpointEncryptionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EndpointEncryptionConfiguration.add_member_subclass(:secrets_manager, Types::EndpointEncryptionConfiguration::SecretsManager)
    EndpointEncryptionConfiguration.add_member_subclass(:automatic, Types::EndpointEncryptionConfiguration::Automatic)
    EndpointEncryptionConfiguration.add_member_subclass(:unknown, Types::EndpointEncryptionConfiguration::Unknown)
    EndpointEncryptionConfiguration.struct_class = Types::EndpointEncryptionConfiguration

    EndpointEncryptionSecretConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    EndpointEncryptionSecretConfiguration.struct_class = Types::EndpointEncryptionSecretConfiguration

    Entitlement.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "dataTransferSubscriberFeePercent"))
    Entitlement.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Entitlement.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    Entitlement.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "entitlementArn"))
    Entitlement.add_member(:entitlement_status, Shapes::ShapeRef.new(shape: EntitlementStatus, location_name: "entitlementStatus"))
    Entitlement.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Entitlement.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "subscribers"))
    Entitlement.struct_class = Types::Entitlement

    FabricConfiguration.add_member(:recovery_latency_mode, Shapes::ShapeRef.new(shape: FabricLatencyMode, required: true, location_name: "recoveryLatencyMode"))
    FabricConfiguration.struct_class = Types::FabricConfiguration

    FailoverConfig.add_member(:failover_mode, Shapes::ShapeRef.new(shape: FailoverMode, location_name: "failoverMode"))
    FailoverConfig.add_member(:recovery_window, Shapes::ShapeRef.new(shape: Integer, location_name: "recoveryWindow"))
    FailoverConfig.add_member(:source_priority, Shapes::ShapeRef.new(shape: SourcePriority, location_name: "sourcePriority"))
    FailoverConfig.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    FailoverConfig.struct_class = Types::FailoverConfig

    FailoverRouterInputConfiguration.add_member(:network_interface_arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location_name: "networkInterfaceArn"))
    FailoverRouterInputConfiguration.add_member(:protocol_configurations, Shapes::ShapeRef.new(shape: FailoverRouterInputProtocolConfigurationList, required: true, location_name: "protocolConfigurations"))
    FailoverRouterInputConfiguration.add_member(:source_priority_mode, Shapes::ShapeRef.new(shape: FailoverInputSourcePriorityMode, required: true, location_name: "sourcePriorityMode"))
    FailoverRouterInputConfiguration.add_member(:primary_source_index, Shapes::ShapeRef.new(shape: FailoverRouterInputConfigurationPrimarySourceIndexInteger, location_name: "primarySourceIndex"))
    FailoverRouterInputConfiguration.struct_class = Types::FailoverRouterInputConfiguration

    FailoverRouterInputIndexedStreamDetails.add_member(:source_index, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "sourceIndex"))
    FailoverRouterInputIndexedStreamDetails.add_member(:source_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "sourceIpAddress"))
    FailoverRouterInputIndexedStreamDetails.struct_class = Types::FailoverRouterInputIndexedStreamDetails

    FailoverRouterInputProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistRouterInputConfiguration, location_name: "rist"))
    FailoverRouterInputProtocolConfiguration.add_member(:srt_listener, Shapes::ShapeRef.new(shape: SrtListenerRouterInputConfiguration, location_name: "srtListener"))
    FailoverRouterInputProtocolConfiguration.add_member(:srt_caller, Shapes::ShapeRef.new(shape: SrtCallerRouterInputConfiguration, location_name: "srtCaller"))
    FailoverRouterInputProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpRouterInputConfiguration, location_name: "rtp"))
    FailoverRouterInputProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:rist, Types::FailoverRouterInputProtocolConfiguration::Rist)
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:srt_listener, Types::FailoverRouterInputProtocolConfiguration::SrtListener)
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:srt_caller, Types::FailoverRouterInputProtocolConfiguration::SrtCaller)
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:rtp, Types::FailoverRouterInputProtocolConfiguration::Rtp)
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:unknown, Types::FailoverRouterInputProtocolConfiguration::Unknown)
    FailoverRouterInputProtocolConfiguration.struct_class = Types::FailoverRouterInputProtocolConfiguration

    FailoverRouterInputProtocolConfigurationList.member = Shapes::ShapeRef.new(shape: FailoverRouterInputProtocolConfiguration)

    FailoverRouterInputStreamDetails.add_member(:source_index_zero_stream_details, Shapes::ShapeRef.new(shape: FailoverRouterInputIndexedStreamDetails, required: true, location_name: "sourceIndexZeroStreamDetails"))
    FailoverRouterInputStreamDetails.add_member(:source_index_one_stream_details, Shapes::ShapeRef.new(shape: FailoverRouterInputIndexedStreamDetails, required: true, location_name: "sourceIndexOneStreamDetails"))
    FailoverRouterInputStreamDetails.struct_class = Types::FailoverRouterInputStreamDetails

    Flow.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, required: true, location_name: "availabilityZone"))
    Flow.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Flow.add_member(:egress_ip, Shapes::ShapeRef.new(shape: String, location_name: "egressIp"))
    Flow.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfEntitlement, required: true, location_name: "entitlements"))
    Flow.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "flowArn"))
    Flow.add_member(:media_streams, Shapes::ShapeRef.new(shape: __listOfMediaStream, location_name: "mediaStreams"))
    Flow.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Flow.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfOutput, required: true, location_name: "outputs"))
    Flow.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    Flow.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, location_name: "sourceFailoverConfig"))
    Flow.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfSource, location_name: "sources"))
    Flow.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    Flow.add_member(:vpc_interfaces, Shapes::ShapeRef.new(shape: __listOfVpcInterface, location_name: "vpcInterfaces"))
    Flow.add_member(:maintenance, Shapes::ShapeRef.new(shape: Maintenance, location_name: "maintenance"))
    Flow.add_member(:source_monitoring_config, Shapes::ShapeRef.new(shape: MonitoringConfig, location_name: "sourceMonitoringConfig"))
    Flow.add_member(:flow_size, Shapes::ShapeRef.new(shape: FlowSize, location_name: "flowSize"))
    Flow.add_member(:ndi_config, Shapes::ShapeRef.new(shape: NdiConfig, location_name: "ndiConfig"))
    Flow.add_member(:encoding_config, Shapes::ShapeRef.new(shape: EncodingConfig, location_name: "encodingConfig"))
    Flow.struct_class = Types::Flow

    FlowTransitEncryption.add_member(:encryption_key_type, Shapes::ShapeRef.new(shape: FlowTransitEncryptionKeyType, location_name: "encryptionKeyType"))
    FlowTransitEncryption.add_member(:encryption_key_configuration, Shapes::ShapeRef.new(shape: FlowTransitEncryptionKeyConfiguration, required: true, location_name: "encryptionKeyConfiguration"))
    FlowTransitEncryption.struct_class = Types::FlowTransitEncryption

    FlowTransitEncryptionKeyConfiguration.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManagerEncryptionKeyConfiguration, location_name: "secretsManager"))
    FlowTransitEncryptionKeyConfiguration.add_member(:automatic, Shapes::ShapeRef.new(shape: AutomaticEncryptionKeyConfiguration, location_name: "automatic"))
    FlowTransitEncryptionKeyConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FlowTransitEncryptionKeyConfiguration.add_member_subclass(:secrets_manager, Types::FlowTransitEncryptionKeyConfiguration::SecretsManager)
    FlowTransitEncryptionKeyConfiguration.add_member_subclass(:automatic, Types::FlowTransitEncryptionKeyConfiguration::Automatic)
    FlowTransitEncryptionKeyConfiguration.add_member_subclass(:unknown, Types::FlowTransitEncryptionKeyConfiguration::Unknown)
    FlowTransitEncryptionKeyConfiguration.struct_class = Types::FlowTransitEncryptionKeyConfiguration

    Fmtp.add_member(:channel_order, Shapes::ShapeRef.new(shape: String, location_name: "channelOrder"))
    Fmtp.add_member(:colorimetry, Shapes::ShapeRef.new(shape: Colorimetry, location_name: "colorimetry"))
    Fmtp.add_member(:exact_framerate, Shapes::ShapeRef.new(shape: String, location_name: "exactFramerate"))
    Fmtp.add_member(:par, Shapes::ShapeRef.new(shape: String, location_name: "par"))
    Fmtp.add_member(:range, Shapes::ShapeRef.new(shape: Range, location_name: "range"))
    Fmtp.add_member(:scan_mode, Shapes::ShapeRef.new(shape: ScanMode, location_name: "scanMode"))
    Fmtp.add_member(:tcs, Shapes::ShapeRef.new(shape: Tcs, location_name: "tcs"))
    Fmtp.struct_class = Types::Fmtp

    FmtpRequest.add_member(:channel_order, Shapes::ShapeRef.new(shape: String, location_name: "channelOrder"))
    FmtpRequest.add_member(:colorimetry, Shapes::ShapeRef.new(shape: Colorimetry, location_name: "colorimetry"))
    FmtpRequest.add_member(:exact_framerate, Shapes::ShapeRef.new(shape: String, location_name: "exactFramerate"))
    FmtpRequest.add_member(:par, Shapes::ShapeRef.new(shape: String, location_name: "par"))
    FmtpRequest.add_member(:range, Shapes::ShapeRef.new(shape: Range, location_name: "range"))
    FmtpRequest.add_member(:scan_mode, Shapes::ShapeRef.new(shape: ScanMode, location_name: "scanMode"))
    FmtpRequest.add_member(:tcs, Shapes::ShapeRef.new(shape: Tcs, location_name: "tcs"))
    FmtpRequest.struct_class = Types::FmtpRequest

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    FrameResolution.add_member(:frame_height, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "frameHeight"))
    FrameResolution.add_member(:frame_width, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "frameWidth"))
    FrameResolution.struct_class = Types::FrameResolution

    FrozenFrames.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    FrozenFrames.add_member(:threshold_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "thresholdSeconds"))
    FrozenFrames.struct_class = Types::FrozenFrames

    FrozenFramesConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ContentQualityAnalysisState, required: true, location_name: "state"))
    FrozenFramesConfiguration.add_member(:threshold_seconds, Shapes::ShapeRef.new(shape: RouterCqaThresholdSeconds, required: true, location_name: "thresholdSeconds"))
    FrozenFramesConfiguration.struct_class = Types::FrozenFramesConfiguration

    Gateway.add_member(:egress_cidr_blocks, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "egressCidrBlocks"))
    Gateway.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gatewayArn"))
    Gateway.add_member(:gateway_messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, location_name: "gatewayMessages"))
    Gateway.add_member(:gateway_state, Shapes::ShapeRef.new(shape: GatewayState, location_name: "gatewayState"))
    Gateway.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Gateway.add_member(:networks, Shapes::ShapeRef.new(shape: __listOfGatewayNetwork, required: true, location_name: "networks"))
    Gateway.struct_class = Types::Gateway

    GatewayBridgeSource.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "bridgeArn"))
    GatewayBridgeSource.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    GatewayBridgeSource.struct_class = Types::GatewayBridgeSource

    GatewayInstance.add_member(:bridge_placement, Shapes::ShapeRef.new(shape: BridgePlacement, required: true, location_name: "bridgePlacement"))
    GatewayInstance.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatus, required: true, location_name: "connectionStatus"))
    GatewayInstance.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gatewayArn"))
    GatewayInstance.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gatewayInstanceArn"))
    GatewayInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "instanceId"))
    GatewayInstance.add_member(:instance_messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, location_name: "instanceMessages"))
    GatewayInstance.add_member(:instance_state, Shapes::ShapeRef.new(shape: InstanceState, required: true, location_name: "instanceState"))
    GatewayInstance.add_member(:running_bridge_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "runningBridgeCount"))
    GatewayInstance.struct_class = Types::GatewayInstance

    GatewayNetwork.add_member(:cidr_block, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cidrBlock"))
    GatewayNetwork.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GatewayNetwork.struct_class = Types::GatewayNetwork

    GetDestinationEndpointRequest.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location: "uri", location_name: "Arn"))
    GetDestinationEndpointRequest.struct_class = Types::GetDestinationEndpointRequest

    GetDestinationEndpointResponse.add_member(:destination_endpoint, Shapes::ShapeRef.new(shape: DestinationEndpoint, required: true, location_name: "destinationEndpoint"))
    GetDestinationEndpointResponse.struct_class = Types::GetDestinationEndpointResponse

    GetRouterInputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location: "uri", location_name: "Arn"))
    GetRouterInputRequest.struct_class = Types::GetRouterInputRequest

    GetRouterInputResponse.add_member(:router_input, Shapes::ShapeRef.new(shape: RouterInput, required: true, location_name: "routerInput"))
    GetRouterInputResponse.struct_class = Types::GetRouterInputResponse

    GetRouterInputSourceMetadataRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location: "uri", location_name: "Arn"))
    GetRouterInputSourceMetadataRequest.struct_class = Types::GetRouterInputSourceMetadataRequest

    GetRouterInputSourceMetadataResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    GetRouterInputSourceMetadataResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetRouterInputSourceMetadataResponse.add_member(:source_metadata_details, Shapes::ShapeRef.new(shape: RouterInputSourceMetadataDetails, required: true, location_name: "sourceMetadataDetails"))
    GetRouterInputSourceMetadataResponse.struct_class = Types::GetRouterInputSourceMetadataResponse

    GetRouterInputThumbnailRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location: "uri", location_name: "Arn"))
    GetRouterInputThumbnailRequest.struct_class = Types::GetRouterInputThumbnailRequest

    GetRouterInputThumbnailResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    GetRouterInputThumbnailResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetRouterInputThumbnailResponse.add_member(:thumbnail_details, Shapes::ShapeRef.new(shape: RouterInputThumbnailDetails, required: true, location_name: "thumbnailDetails"))
    GetRouterInputThumbnailResponse.struct_class = Types::GetRouterInputThumbnailResponse

    GetRouterNetworkInterfaceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location: "uri", location_name: "Arn"))
    GetRouterNetworkInterfaceRequest.struct_class = Types::GetRouterNetworkInterfaceRequest

    GetRouterNetworkInterfaceResponse.add_member(:router_network_interface, Shapes::ShapeRef.new(shape: RouterNetworkInterface, required: true, location_name: "routerNetworkInterface"))
    GetRouterNetworkInterfaceResponse.struct_class = Types::GetRouterNetworkInterfaceResponse

    GetRouterOutputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location: "uri", location_name: "Arn"))
    GetRouterOutputRequest.struct_class = Types::GetRouterOutputRequest

    GetRouterOutputResponse.add_member(:router_output, Shapes::ShapeRef.new(shape: RouterOutput, required: true, location_name: "routerOutput"))
    GetRouterOutputResponse.struct_class = Types::GetRouterOutputResponse

    GetSourceEndpointRequest.add_member(:arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location: "uri", location_name: "Arn"))
    GetSourceEndpointRequest.struct_class = Types::GetSourceEndpointRequest

    GetSourceEndpointResponse.add_member(:source_endpoint, Shapes::ShapeRef.new(shape: SourceEndpoint, required: true, location_name: "sourceEndpoint"))
    GetSourceEndpointResponse.struct_class = Types::GetSourceEndpointResponse

    GrantEntitlementRequest.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "dataTransferSubscriberFeePercent"))
    GrantEntitlementRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GrantEntitlementRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    GrantEntitlementRequest.add_member(:entitlement_status, Shapes::ShapeRef.new(shape: EntitlementStatus, location_name: "entitlementStatus"))
    GrantEntitlementRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GrantEntitlementRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "subscribers"))
    GrantEntitlementRequest.add_member(:entitlement_tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "entitlementTags"))
    GrantEntitlementRequest.struct_class = Types::GrantEntitlementRequest

    GrantFlowEntitlements420Exception.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    GrantFlowEntitlements420Exception.struct_class = Types::GrantFlowEntitlements420Exception

    GrantFlowEntitlementsRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfGrantEntitlementRequest, required: true, location_name: "entitlements"))
    GrantFlowEntitlementsRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: GrantFlowEntitlementsRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    GrantFlowEntitlementsRequest.struct_class = Types::GrantFlowEntitlementsRequest

    GrantFlowEntitlementsResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfEntitlement, location_name: "entitlements"))
    GrantFlowEntitlementsResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    GrantFlowEntitlementsResponse.struct_class = Types::GrantFlowEntitlementsResponse

    IngressGatewayBridge.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "instanceId"))
    IngressGatewayBridge.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxBitrate"))
    IngressGatewayBridge.add_member(:max_outputs, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxOutputs"))
    IngressGatewayBridge.struct_class = Types::IngressGatewayBridge

    InputConfiguration.add_member(:input_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "inputIp"))
    InputConfiguration.add_member(:input_port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "inputPort"))
    InputConfiguration.add_member(:interface, Shapes::ShapeRef.new(shape: Interface, required: true, location_name: "interface"))
    InputConfiguration.struct_class = Types::InputConfiguration

    InputConfigurationRequest.add_member(:input_port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "inputPort"))
    InputConfigurationRequest.add_member(:interface, Shapes::ShapeRef.new(shape: InterfaceRequest, required: true, location_name: "interface"))
    InputConfigurationRequest.struct_class = Types::InputConfigurationRequest

    Interface.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Interface.struct_class = Types::Interface

    InterfaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    InterfaceRequest.struct_class = Types::InterfaceRequest

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListBridgesRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "filterArn"))
    ListBridgesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBridgesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListBridgesRequest.struct_class = Types::ListBridgesRequest

    ListBridgesResponse.add_member(:bridges, Shapes::ShapeRef.new(shape: __listOfListedBridge, location_name: "bridges"))
    ListBridgesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBridgesResponse.struct_class = Types::ListBridgesResponse

    ListDestinationEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDestinationEndpointsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDestinationEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListDestinationEndpointsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DestinationEndpointFilterList, location_name: "filters"))
    ListDestinationEndpointsRequest.struct_class = Types::ListDestinationEndpointsRequest

    ListDestinationEndpointsResponse.add_member(:destination_endpoints, Shapes::ShapeRef.new(shape: ListedDestinationEndpointList, required: true, location_name: "destinationEndpoints"))
    ListDestinationEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDestinationEndpointsResponse.struct_class = Types::ListDestinationEndpointsResponse

    ListEntitlementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEntitlementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListEntitlementsRequest.struct_class = Types::ListEntitlementsRequest

    ListEntitlementsResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfListedEntitlement, location_name: "entitlements"))
    ListEntitlementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEntitlementsResponse.struct_class = Types::ListEntitlementsResponse

    ListFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFlowsRequest.struct_class = Types::ListFlowsRequest

    ListFlowsResponse.add_member(:flows, Shapes::ShapeRef.new(shape: __listOfListedFlow, location_name: "flows"))
    ListFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFlowsResponse.struct_class = Types::ListFlowsResponse

    ListGatewayInstancesRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "filterArn"))
    ListGatewayInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewayInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListGatewayInstancesRequest.struct_class = Types::ListGatewayInstancesRequest

    ListGatewayInstancesResponse.add_member(:instances, Shapes::ShapeRef.new(shape: __listOfListedGatewayInstance, location_name: "instances"))
    ListGatewayInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListGatewayInstancesResponse.struct_class = Types::ListGatewayInstancesResponse

    ListGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListGatewaysRequest.struct_class = Types::ListGatewaysRequest

    ListGatewaysResponse.add_member(:gateways, Shapes::ShapeRef.new(shape: __listOfListedGateway, location_name: "gateways"))
    ListGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListGatewaysResponse.struct_class = Types::ListGatewaysResponse

    ListOfferingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListOfferingsRequest.struct_class = Types::ListOfferingsRequest

    ListOfferingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListOfferingsResponse.add_member(:offerings, Shapes::ShapeRef.new(shape: __listOfOffering, location_name: "offerings"))
    ListOfferingsResponse.struct_class = Types::ListOfferingsResponse

    ListReservationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListReservationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListReservationsRequest.struct_class = Types::ListReservationsRequest

    ListReservationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListReservationsResponse.add_member(:reservations, Shapes::ShapeRef.new(shape: __listOfReservation, location_name: "reservations"))
    ListReservationsResponse.struct_class = Types::ListReservationsResponse

    ListRouterInputsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRouterInputsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRouterInputsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRouterInputsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RouterInputFilterList, location_name: "filters"))
    ListRouterInputsRequest.struct_class = Types::ListRouterInputsRequest

    ListRouterInputsResponse.add_member(:router_inputs, Shapes::ShapeRef.new(shape: ListedRouterInputList, required: true, location_name: "routerInputs"))
    ListRouterInputsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRouterInputsResponse.struct_class = Types::ListRouterInputsResponse

    ListRouterNetworkInterfacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRouterNetworkInterfacesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRouterNetworkInterfacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRouterNetworkInterfacesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceFilterList, location_name: "filters"))
    ListRouterNetworkInterfacesRequest.struct_class = Types::ListRouterNetworkInterfacesRequest

    ListRouterNetworkInterfacesResponse.add_member(:router_network_interfaces, Shapes::ShapeRef.new(shape: ListedRouterNetworkInterfaceList, required: true, location_name: "routerNetworkInterfaces"))
    ListRouterNetworkInterfacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRouterNetworkInterfacesResponse.struct_class = Types::ListRouterNetworkInterfacesResponse

    ListRouterOutputsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRouterOutputsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRouterOutputsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRouterOutputsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RouterOutputFilterList, location_name: "filters"))
    ListRouterOutputsRequest.struct_class = Types::ListRouterOutputsRequest

    ListRouterOutputsResponse.add_member(:router_outputs, Shapes::ShapeRef.new(shape: ListedRouterOutputList, required: true, location_name: "routerOutputs"))
    ListRouterOutputsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRouterOutputsResponse.struct_class = Types::ListRouterOutputsResponse

    ListSourceEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSourceEndpointsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListSourceEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSourceEndpointsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SourceEndpointFilterList, location_name: "filters"))
    ListSourceEndpointsRequest.struct_class = Types::ListSourceEndpointsRequest

    ListSourceEndpointsResponse.add_member(:source_endpoints, Shapes::ShapeRef.new(shape: ListedSourceEndpointList, required: true, location_name: "sourceEndpoints"))
    ListSourceEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSourceEndpointsResponse.struct_class = Types::ListSourceEndpointsResponse

    ListTagsForGlobalResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForGlobalResourceRequest.struct_class = Types::ListTagsForGlobalResourceRequest

    ListTagsForGlobalResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "tags"))
    ListTagsForGlobalResourceResponse.struct_class = Types::ListTagsForGlobalResourceResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListedBridge.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "bridgeArn"))
    ListedBridge.add_member(:bridge_state, Shapes::ShapeRef.new(shape: BridgeState, required: true, location_name: "bridgeState"))
    ListedBridge.add_member(:bridge_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "bridgeType"))
    ListedBridge.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ListedBridge.add_member(:placement_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "placementArn"))
    ListedBridge.struct_class = Types::ListedBridge

    ListedDestinationEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ListedDestinationEndpoint.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location_name: "arn"))
    ListedDestinationEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    ListedDestinationEndpoint.add_member(:destination_type, Shapes::ShapeRef.new(shape: DestinationEndpointType, required: true, location_name: "destinationType"))
    ListedDestinationEndpoint.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    ListedDestinationEndpoint.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    ListedDestinationEndpoint.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    ListedDestinationEndpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListedDestinationEndpoint.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    ListedDestinationEndpoint.add_member(:lifecycle_management, Shapes::ShapeRef.new(shape: EndpointLifecycle, required: true, location_name: "lifecycleManagement"))
    ListedDestinationEndpoint.add_member(:message_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "messageCount"))
    ListedDestinationEndpoint.add_member(:resource_share_ownership, Shapes::ShapeRef.new(shape: ResourceShareOwnership, required: true, location_name: "resourceShareOwnership"))
    ListedDestinationEndpoint.add_member(:resource_share_state, Shapes::ShapeRef.new(shape: ResourceShareState, required: true, location_name: "resourceShareState"))
    ListedDestinationEndpoint.add_member(:registration_state, Shapes::ShapeRef.new(shape: DestinationEndpointRegistrationState, required: true, location_name: "registrationState"))
    ListedDestinationEndpoint.add_member(:connection_state, Shapes::ShapeRef.new(shape: DestinationEndpointConnectionState, required: true, location_name: "connectionState"))
    ListedDestinationEndpoint.add_member(:decryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "decryptionType"))
    ListedDestinationEndpoint.add_member(:connected_source, Shapes::ShapeRef.new(shape: SourceEndpointArn, location_name: "connectedSource"))
    ListedDestinationEndpoint.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "associatedResourceArn"))
    ListedDestinationEndpoint.struct_class = Types::ListedDestinationEndpoint

    ListedDestinationEndpointList.member = Shapes::ShapeRef.new(shape: ListedDestinationEndpoint)

    ListedEntitlement.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "dataTransferSubscriberFeePercent"))
    ListedEntitlement.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "entitlementArn"))
    ListedEntitlement.add_member(:entitlement_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "entitlementName"))
    ListedEntitlement.struct_class = Types::ListedEntitlement

    ListedFlow.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, required: true, location_name: "availabilityZone"))
    ListedFlow.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    ListedFlow.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "flowArn"))
    ListedFlow.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ListedFlow.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, required: true, location_name: "sourceType"))
    ListedFlow.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    ListedFlow.add_member(:maintenance, Shapes::ShapeRef.new(shape: Maintenance, location_name: "maintenance"))
    ListedFlow.struct_class = Types::ListedFlow

    ListedGateway.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gatewayArn"))
    ListedGateway.add_member(:gateway_state, Shapes::ShapeRef.new(shape: GatewayState, required: true, location_name: "gatewayState"))
    ListedGateway.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ListedGateway.struct_class = Types::ListedGateway

    ListedGatewayInstance.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gatewayArn"))
    ListedGatewayInstance.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "gatewayInstanceArn"))
    ListedGatewayInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "instanceId"))
    ListedGatewayInstance.add_member(:instance_state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "instanceState"))
    ListedGatewayInstance.struct_class = Types::ListedGatewayInstance

    ListedRouterInput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ListedRouterInput.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    ListedRouterInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    ListedRouterInput.add_member(:input_type, Shapes::ShapeRef.new(shape: RouterInputType, required: true, location_name: "inputType"))
    ListedRouterInput.add_member(:state, Shapes::ShapeRef.new(shape: RouterInputState, required: true, location_name: "state"))
    ListedRouterInput.add_member(:routed_outputs, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "routedOutputs"))
    ListedRouterInput.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    ListedRouterInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, required: true, location_name: "availabilityZone"))
    ListedRouterInput.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "maximumBitrate"))
    ListedRouterInput.add_member(:routing_scope, Shapes::ShapeRef.new(shape: RoutingScope, required: true, location_name: "routingScope"))
    ListedRouterInput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListedRouterInput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    ListedRouterInput.add_member(:message_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "messageCount"))
    ListedRouterInput.add_member(:network_interface_arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, location_name: "networkInterfaceArn"))
    ListedRouterInput.add_member(:maintenance_schedule_type, Shapes::ShapeRef.new(shape: MaintenanceScheduleType, location_name: "maintenanceScheduleType"))
    ListedRouterInput.add_member(:maintenance_schedule, Shapes::ShapeRef.new(shape: MaintenanceSchedule, location_name: "maintenanceSchedule"))
    ListedRouterInput.struct_class = Types::ListedRouterInput

    ListedRouterInputList.member = Shapes::ShapeRef.new(shape: ListedRouterInput)

    ListedRouterNetworkInterface.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ListedRouterNetworkInterface.add_member(:arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location_name: "arn"))
    ListedRouterNetworkInterface.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    ListedRouterNetworkInterface.add_member(:network_interface_type, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceType, required: true, location_name: "networkInterfaceType"))
    ListedRouterNetworkInterface.add_member(:associated_output_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "associatedOutputCount"))
    ListedRouterNetworkInterface.add_member(:associated_input_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "associatedInputCount"))
    ListedRouterNetworkInterface.add_member(:state, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceState, required: true, location_name: "state"))
    ListedRouterNetworkInterface.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    ListedRouterNetworkInterface.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListedRouterNetworkInterface.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    ListedRouterNetworkInterface.struct_class = Types::ListedRouterNetworkInterface

    ListedRouterNetworkInterfaceList.member = Shapes::ShapeRef.new(shape: ListedRouterNetworkInterface)

    ListedRouterOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ListedRouterOutput.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "arn"))
    ListedRouterOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    ListedRouterOutput.add_member(:output_type, Shapes::ShapeRef.new(shape: RouterOutputType, required: true, location_name: "outputType"))
    ListedRouterOutput.add_member(:state, Shapes::ShapeRef.new(shape: RouterOutputState, required: true, location_name: "state"))
    ListedRouterOutput.add_member(:routed_state, Shapes::ShapeRef.new(shape: RouterOutputRoutedState, required: true, location_name: "routedState"))
    ListedRouterOutput.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    ListedRouterOutput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, required: true, location_name: "availabilityZone"))
    ListedRouterOutput.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "maximumBitrate"))
    ListedRouterOutput.add_member(:routing_scope, Shapes::ShapeRef.new(shape: RoutingScope, required: true, location_name: "routingScope"))
    ListedRouterOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListedRouterOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    ListedRouterOutput.add_member(:message_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "messageCount"))
    ListedRouterOutput.add_member(:routed_input_arn, Shapes::ShapeRef.new(shape: RouterInputArn, location_name: "routedInputArn"))
    ListedRouterOutput.add_member(:network_interface_arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, location_name: "networkInterfaceArn"))
    ListedRouterOutput.add_member(:maintenance_schedule_type, Shapes::ShapeRef.new(shape: MaintenanceScheduleType, location_name: "maintenanceScheduleType"))
    ListedRouterOutput.add_member(:maintenance_schedule, Shapes::ShapeRef.new(shape: MaintenanceSchedule, location_name: "maintenanceSchedule"))
    ListedRouterOutput.struct_class = Types::ListedRouterOutput

    ListedRouterOutputList.member = Shapes::ShapeRef.new(shape: ListedRouterOutput)

    ListedSourceEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ListedSourceEndpoint.add_member(:arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location_name: "arn"))
    ListedSourceEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    ListedSourceEndpoint.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceEndpointType, required: true, location_name: "sourceType"))
    ListedSourceEndpoint.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    ListedSourceEndpoint.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    ListedSourceEndpoint.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    ListedSourceEndpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListedSourceEndpoint.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    ListedSourceEndpoint.add_member(:lifecycle_management, Shapes::ShapeRef.new(shape: EndpointLifecycle, required: true, location_name: "lifecycleManagement"))
    ListedSourceEndpoint.add_member(:message_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "messageCount"))
    ListedSourceEndpoint.add_member(:resource_share_ownership, Shapes::ShapeRef.new(shape: ResourceShareOwnership, required: true, location_name: "resourceShareOwnership"))
    ListedSourceEndpoint.add_member(:resource_share_state, Shapes::ShapeRef.new(shape: ResourceShareState, required: true, location_name: "resourceShareState"))
    ListedSourceEndpoint.add_member(:registration_state, Shapes::ShapeRef.new(shape: SourceEndpointRegistrationState, required: true, location_name: "registrationState"))
    ListedSourceEndpoint.add_member(:connection_state, Shapes::ShapeRef.new(shape: SourceEndpointConnectionState, required: true, location_name: "connectionState"))
    ListedSourceEndpoint.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "encryptionType"))
    ListedSourceEndpoint.add_member(:connected_destination_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "connectedDestinationCount"))
    ListedSourceEndpoint.add_member(:associated_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "associatedResourceArn"))
    ListedSourceEndpoint.struct_class = Types::ListedSourceEndpoint

    ListedSourceEndpointList.member = Shapes::ShapeRef.new(shape: ListedSourceEndpoint)

    Maintenance.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, location_name: "maintenanceDay"))
    Maintenance.add_member(:maintenance_deadline, Shapes::ShapeRef.new(shape: String, location_name: "maintenanceDeadline"))
    Maintenance.add_member(:maintenance_scheduled_date, Shapes::ShapeRef.new(shape: String, location_name: "maintenanceScheduledDate"))
    Maintenance.add_member(:maintenance_start_hour, Shapes::ShapeRef.new(shape: String, location_name: "maintenanceStartHour"))
    Maintenance.struct_class = Types::Maintenance

    MaintenanceConfiguration.add_member(:preferred_day_time, Shapes::ShapeRef.new(shape: PreferredDayTimeMaintenanceConfiguration, location_name: "preferredDayTime"))
    MaintenanceConfiguration.add_member(:default, Shapes::ShapeRef.new(shape: DefaultMaintenanceConfiguration, location_name: "default"))
    MaintenanceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MaintenanceConfiguration.add_member_subclass(:preferred_day_time, Types::MaintenanceConfiguration::PreferredDayTime)
    MaintenanceConfiguration.add_member_subclass(:default, Types::MaintenanceConfiguration::Default)
    MaintenanceConfiguration.add_member_subclass(:unknown, Types::MaintenanceConfiguration::Unknown)
    MaintenanceConfiguration.struct_class = Types::MaintenanceConfiguration

    MaintenanceSchedule.add_member(:window, Shapes::ShapeRef.new(shape: WindowMaintenanceSchedule, location_name: "window"))
    MaintenanceSchedule.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MaintenanceSchedule.add_member_subclass(:window, Types::MaintenanceSchedule::Window)
    MaintenanceSchedule.add_member_subclass(:unknown, Types::MaintenanceSchedule::Unknown)
    MaintenanceSchedule.struct_class = Types::MaintenanceSchedule

    MediaConnectFlowRouterInputConfiguration.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    MediaConnectFlowRouterInputConfiguration.add_member(:flow_output_arn, Shapes::ShapeRef.new(shape: FlowOutputArn, location_name: "flowOutputArn"))
    MediaConnectFlowRouterInputConfiguration.add_member(:source_transit_decryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, required: true, location_name: "sourceTransitDecryption"))
    MediaConnectFlowRouterInputConfiguration.struct_class = Types::MediaConnectFlowRouterInputConfiguration

    MediaConnectFlowRouterInputStreamDetails.struct_class = Types::MediaConnectFlowRouterInputStreamDetails

    MediaConnectFlowRouterOutputConfiguration.add_member(:flow_arn, Shapes::ShapeRef.new(shape: FlowArn, location_name: "flowArn"))
    MediaConnectFlowRouterOutputConfiguration.add_member(:flow_source_arn, Shapes::ShapeRef.new(shape: FlowSourceArn, location_name: "flowSourceArn"))
    MediaConnectFlowRouterOutputConfiguration.add_member(:destination_transit_encryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, required: true, location_name: "destinationTransitEncryption"))
    MediaConnectFlowRouterOutputConfiguration.struct_class = Types::MediaConnectFlowRouterOutputConfiguration

    MediaConnectFlowRouterOutputStreamDetails.struct_class = Types::MediaConnectFlowRouterOutputStreamDetails

    MediaLiveChannelRouterInputConfiguration.add_member(:media_live_channel_arn, Shapes::ShapeRef.new(shape: MediaLiveChannelArn, location_name: "mediaLiveChannelArn"))
    MediaLiveChannelRouterInputConfiguration.add_member(:media_live_pipeline_id, Shapes::ShapeRef.new(shape: MediaLiveChannelPipelineId, location_name: "mediaLivePipelineId"))
    MediaLiveChannelRouterInputConfiguration.add_member(:media_live_channel_output_name, Shapes::ShapeRef.new(shape: String, location_name: "mediaLiveChannelOutputName"))
    MediaLiveChannelRouterInputConfiguration.add_member(:source_transit_decryption, Shapes::ShapeRef.new(shape: MediaLiveTransitEncryption, required: true, location_name: "sourceTransitDecryption"))
    MediaLiveChannelRouterInputConfiguration.struct_class = Types::MediaLiveChannelRouterInputConfiguration

    MediaLiveChannelRouterInputStreamDetails.struct_class = Types::MediaLiveChannelRouterInputStreamDetails

    MediaLiveInputRouterOutputConfiguration.add_member(:media_live_input_arn, Shapes::ShapeRef.new(shape: MediaLiveInputArn, location_name: "mediaLiveInputArn"))
    MediaLiveInputRouterOutputConfiguration.add_member(:media_live_pipeline_id, Shapes::ShapeRef.new(shape: MediaLiveInputPipelineId, location_name: "mediaLivePipelineId"))
    MediaLiveInputRouterOutputConfiguration.add_member(:destination_transit_encryption, Shapes::ShapeRef.new(shape: MediaLiveTransitEncryption, required: true, location_name: "destinationTransitEncryption"))
    MediaLiveInputRouterOutputConfiguration.struct_class = Types::MediaLiveInputRouterOutputConfiguration

    MediaLiveInputRouterOutputStreamDetails.struct_class = Types::MediaLiveInputRouterOutputStreamDetails

    MediaLiveTransitEncryption.add_member(:encryption_key_type, Shapes::ShapeRef.new(shape: MediaLiveTransitEncryptionKeyType, location_name: "encryptionKeyType"))
    MediaLiveTransitEncryption.add_member(:encryption_key_configuration, Shapes::ShapeRef.new(shape: MediaLiveTransitEncryptionKeyConfiguration, required: true, location_name: "encryptionKeyConfiguration"))
    MediaLiveTransitEncryption.struct_class = Types::MediaLiveTransitEncryption

    MediaLiveTransitEncryptionKeyConfiguration.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManagerEncryptionKeyConfiguration, location_name: "secretsManager"))
    MediaLiveTransitEncryptionKeyConfiguration.add_member(:automatic, Shapes::ShapeRef.new(shape: AutomaticEncryptionKeyConfiguration, location_name: "automatic"))
    MediaLiveTransitEncryptionKeyConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MediaLiveTransitEncryptionKeyConfiguration.add_member_subclass(:secrets_manager, Types::MediaLiveTransitEncryptionKeyConfiguration::SecretsManager)
    MediaLiveTransitEncryptionKeyConfiguration.add_member_subclass(:automatic, Types::MediaLiveTransitEncryptionKeyConfiguration::Automatic)
    MediaLiveTransitEncryptionKeyConfiguration.add_member_subclass(:unknown, Types::MediaLiveTransitEncryptionKeyConfiguration::Unknown)
    MediaLiveTransitEncryptionKeyConfiguration.struct_class = Types::MediaLiveTransitEncryptionKeyConfiguration

    MediaStream.add_member(:attributes, Shapes::ShapeRef.new(shape: MediaStreamAttributes, location_name: "attributes"))
    MediaStream.add_member(:clock_rate, Shapes::ShapeRef.new(shape: Integer, location_name: "clockRate"))
    MediaStream.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    MediaStream.add_member(:fmt, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "fmt"))
    MediaStream.add_member(:media_stream_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "mediaStreamId"))
    MediaStream.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "mediaStreamName"))
    MediaStream.add_member(:media_stream_type, Shapes::ShapeRef.new(shape: MediaStreamType, required: true, location_name: "mediaStreamType"))
    MediaStream.add_member(:video_format, Shapes::ShapeRef.new(shape: String, location_name: "videoFormat"))
    MediaStream.struct_class = Types::MediaStream

    MediaStreamAttributes.add_member(:fmtp, Shapes::ShapeRef.new(shape: Fmtp, required: true, location_name: "fmtp"))
    MediaStreamAttributes.add_member(:lang, Shapes::ShapeRef.new(shape: String, location_name: "lang"))
    MediaStreamAttributes.struct_class = Types::MediaStreamAttributes

    MediaStreamAttributesRequest.add_member(:fmtp, Shapes::ShapeRef.new(shape: FmtpRequest, location_name: "fmtp"))
    MediaStreamAttributesRequest.add_member(:lang, Shapes::ShapeRef.new(shape: String, location_name: "lang"))
    MediaStreamAttributesRequest.struct_class = Types::MediaStreamAttributesRequest

    MediaStreamOutputConfiguration.add_member(:destination_configurations, Shapes::ShapeRef.new(shape: __listOfDestinationConfiguration, location_name: "destinationConfigurations"))
    MediaStreamOutputConfiguration.add_member(:encoding_name, Shapes::ShapeRef.new(shape: EncodingName, required: true, location_name: "encodingName"))
    MediaStreamOutputConfiguration.add_member(:encoding_parameters, Shapes::ShapeRef.new(shape: EncodingParameters, location_name: "encodingParameters"))
    MediaStreamOutputConfiguration.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "mediaStreamName"))
    MediaStreamOutputConfiguration.struct_class = Types::MediaStreamOutputConfiguration

    MediaStreamOutputConfigurationRequest.add_member(:destination_configurations, Shapes::ShapeRef.new(shape: __listOfDestinationConfigurationRequest, location_name: "destinationConfigurations"))
    MediaStreamOutputConfigurationRequest.add_member(:encoding_name, Shapes::ShapeRef.new(shape: EncodingName, required: true, location_name: "encodingName"))
    MediaStreamOutputConfigurationRequest.add_member(:encoding_parameters, Shapes::ShapeRef.new(shape: EncodingParametersRequest, location_name: "encodingParameters"))
    MediaStreamOutputConfigurationRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "mediaStreamName"))
    MediaStreamOutputConfigurationRequest.struct_class = Types::MediaStreamOutputConfigurationRequest

    MediaStreamSourceConfiguration.add_member(:encoding_name, Shapes::ShapeRef.new(shape: EncodingName, required: true, location_name: "encodingName"))
    MediaStreamSourceConfiguration.add_member(:input_configurations, Shapes::ShapeRef.new(shape: __listOfInputConfiguration, location_name: "inputConfigurations"))
    MediaStreamSourceConfiguration.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "mediaStreamName"))
    MediaStreamSourceConfiguration.struct_class = Types::MediaStreamSourceConfiguration

    MediaStreamSourceConfigurationRequest.add_member(:encoding_name, Shapes::ShapeRef.new(shape: EncodingName, required: true, location_name: "encodingName"))
    MediaStreamSourceConfigurationRequest.add_member(:input_configurations, Shapes::ShapeRef.new(shape: __listOfInputConfigurationRequest, location_name: "inputConfigurations"))
    MediaStreamSourceConfigurationRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "mediaStreamName"))
    MediaStreamSourceConfigurationRequest.struct_class = Types::MediaStreamSourceConfigurationRequest

    MergeRouterInputConfiguration.add_member(:network_interface_arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location_name: "networkInterfaceArn"))
    MergeRouterInputConfiguration.add_member(:protocol_configurations, Shapes::ShapeRef.new(shape: MergeRouterInputProtocolConfigurationList, required: true, location_name: "protocolConfigurations"))
    MergeRouterInputConfiguration.add_member(:merge_recovery_window_milliseconds, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "mergeRecoveryWindowMilliseconds"))
    MergeRouterInputConfiguration.struct_class = Types::MergeRouterInputConfiguration

    MergeRouterInputIndexedStreamDetails.add_member(:source_index, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "sourceIndex"))
    MergeRouterInputIndexedStreamDetails.add_member(:source_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "sourceIpAddress"))
    MergeRouterInputIndexedStreamDetails.struct_class = Types::MergeRouterInputIndexedStreamDetails

    MergeRouterInputProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpRouterInputConfiguration, location_name: "rtp"))
    MergeRouterInputProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistRouterInputConfiguration, location_name: "rist"))
    MergeRouterInputProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MergeRouterInputProtocolConfiguration.add_member_subclass(:rtp, Types::MergeRouterInputProtocolConfiguration::Rtp)
    MergeRouterInputProtocolConfiguration.add_member_subclass(:rist, Types::MergeRouterInputProtocolConfiguration::Rist)
    MergeRouterInputProtocolConfiguration.add_member_subclass(:unknown, Types::MergeRouterInputProtocolConfiguration::Unknown)
    MergeRouterInputProtocolConfiguration.struct_class = Types::MergeRouterInputProtocolConfiguration

    MergeRouterInputProtocolConfigurationList.member = Shapes::ShapeRef.new(shape: MergeRouterInputProtocolConfiguration)

    MergeRouterInputStreamDetails.add_member(:source_index_zero_stream_details, Shapes::ShapeRef.new(shape: MergeRouterInputIndexedStreamDetails, required: true, location_name: "sourceIndexZeroStreamDetails"))
    MergeRouterInputStreamDetails.add_member(:source_index_one_stream_details, Shapes::ShapeRef.new(shape: MergeRouterInputIndexedStreamDetails, required: true, location_name: "sourceIndexOneStreamDetails"))
    MergeRouterInputStreamDetails.struct_class = Types::MergeRouterInputStreamDetails

    MessageDetail.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    MessageDetail.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    MessageDetail.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "resourceName"))
    MessageDetail.struct_class = Types::MessageDetail

    Messages.add_member(:errors, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "errors"))
    Messages.struct_class = Types::Messages

    MonitoringConfig.add_member(:thumbnail_state, Shapes::ShapeRef.new(shape: ThumbnailState, location_name: "thumbnailState"))
    MonitoringConfig.add_member(:audio_monitoring_settings, Shapes::ShapeRef.new(shape: __listOfAudioMonitoringSetting, location_name: "audioMonitoringSettings"))
    MonitoringConfig.add_member(:content_quality_analysis_state, Shapes::ShapeRef.new(shape: ContentQualityAnalysisState, location_name: "contentQualityAnalysisState"))
    MonitoringConfig.add_member(:video_monitoring_settings, Shapes::ShapeRef.new(shape: __listOfVideoMonitoringSetting, location_name: "videoMonitoringSettings"))
    MonitoringConfig.struct_class = Types::MonitoringConfig

    MulticastSourceSettings.add_member(:multicast_source_ip, Shapes::ShapeRef.new(shape: String, location_name: "multicastSourceIp"))
    MulticastSourceSettings.struct_class = Types::MulticastSourceSettings

    NdiConfig.add_member(:ndi_state, Shapes::ShapeRef.new(shape: NdiState, location_name: "ndiState"))
    NdiConfig.add_member(:machine_name, Shapes::ShapeRef.new(shape: String, location_name: "machineName"))
    NdiConfig.add_member(:ndi_discovery_servers, Shapes::ShapeRef.new(shape: __listOfNdiDiscoveryServerConfig, location_name: "ndiDiscoveryServers"))
    NdiConfig.struct_class = Types::NdiConfig

    NdiDiscoveryServerConfig.add_member(:discovery_server_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "discoveryServerAddress"))
    NdiDiscoveryServerConfig.add_member(:discovery_server_port, Shapes::ShapeRef.new(shape: Integer, location_name: "discoveryServerPort"))
    NdiDiscoveryServerConfig.add_member(:vpc_interface_adapter, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vpcInterfaceAdapter"))
    NdiDiscoveryServerConfig.struct_class = Types::NdiDiscoveryServerConfig

    NdiMediaInfo.add_member(:streams, Shapes::ShapeRef.new(shape: __listOfNdiMediaStreamInfo, required: true, location_name: "streams"))
    NdiMediaInfo.struct_class = Types::NdiMediaInfo

    NdiMediaStreamInfo.add_member(:stream_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "streamType"))
    NdiMediaStreamInfo.add_member(:codec, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codec"))
    NdiMediaStreamInfo.add_member(:stream_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "streamId"))
    NdiMediaStreamInfo.add_member(:scan_mode, Shapes::ShapeRef.new(shape: ScanMode, location_name: "scanMode"))
    NdiMediaStreamInfo.add_member(:color, Shapes::ShapeRef.new(shape: ColorInformation, location_name: "color"))
    NdiMediaStreamInfo.add_member(:frame_resolution, Shapes::ShapeRef.new(shape: FrameResolution, location_name: "frameResolution"))
    NdiMediaStreamInfo.add_member(:frame_rate, Shapes::ShapeRef.new(shape: String, location_name: "frameRate"))
    NdiMediaStreamInfo.add_member(:channels, Shapes::ShapeRef.new(shape: Integer, location_name: "channels"))
    NdiMediaStreamInfo.add_member(:sample_rate, Shapes::ShapeRef.new(shape: Integer, location_name: "sampleRate"))
    NdiMediaStreamInfo.struct_class = Types::NdiMediaStreamInfo

    NdiSourceInfo.add_member(:source_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceName"))
    NdiSourceInfo.struct_class = Types::NdiSourceInfo

    NdiSourceMetadataInfo.add_member(:active_source, Shapes::ShapeRef.new(shape: NdiSourceInfo, location_name: "activeSource"))
    NdiSourceMetadataInfo.add_member(:discovered_sources, Shapes::ShapeRef.new(shape: __listOfNdiSourceInfo, required: true, location_name: "discoveredSources"))
    NdiSourceMetadataInfo.add_member(:media_info, Shapes::ShapeRef.new(shape: NdiMediaInfo, required: true, location_name: "mediaInfo"))
    NdiSourceMetadataInfo.add_member(:messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, required: true, location_name: "messages"))
    NdiSourceMetadataInfo.struct_class = Types::NdiSourceMetadataInfo

    NdiSourceSettings.add_member(:source_name, Shapes::ShapeRef.new(shape: String, location_name: "sourceName"))
    NdiSourceSettings.add_member(:audio_reference_level, Shapes::ShapeRef.new(shape: NdiAudioReferenceLevel, location_name: "audioReferenceLevel"))
    NdiSourceSettings.struct_class = Types::NdiSourceSettings

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    Offering.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "currencyCode"))
    Offering.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "duration"))
    Offering.add_member(:duration_units, Shapes::ShapeRef.new(shape: DurationUnits, required: true, location_name: "durationUnits"))
    Offering.add_member(:offering_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "offeringArn"))
    Offering.add_member(:offering_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "offeringDescription"))
    Offering.add_member(:price_per_unit, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pricePerUnit"))
    Offering.add_member(:price_units, Shapes::ShapeRef.new(shape: PriceUnits, required: true, location_name: "priceUnits"))
    Offering.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ResourceSpecification, required: true, location_name: "resourceSpecification"))
    Offering.struct_class = Types::Offering

    Output.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "dataTransferSubscriberFeePercent"))
    Output.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Output.add_member(:destination, Shapes::ShapeRef.new(shape: String, location_name: "destination"))
    Output.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    Output.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: String, location_name: "entitlementArn"))
    Output.add_member(:listener_address, Shapes::ShapeRef.new(shape: String, location_name: "listenerAddress"))
    Output.add_member(:media_live_input_arn, Shapes::ShapeRef.new(shape: String, location_name: "mediaLiveInputArn"))
    Output.add_member(:media_stream_output_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamOutputConfiguration, location_name: "mediaStreamOutputConfigurations"))
    Output.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Output.add_member(:output_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "outputArn"))
    Output.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    Output.add_member(:transport, Shapes::ShapeRef.new(shape: Transport, location_name: "transport"))
    Output.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    Output.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    Output.add_member(:bridge_ports, Shapes::ShapeRef.new(shape: __listOfInteger, location_name: "bridgePorts"))
    Output.add_member(:output_status, Shapes::ShapeRef.new(shape: OutputStatus, location_name: "outputStatus"))
    Output.add_member(:peer_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "peerIpAddress"))
    Output.add_member(:router_integration_state, Shapes::ShapeRef.new(shape: State, location_name: "routerIntegrationState"))
    Output.add_member(:router_integration_transit_encryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, location_name: "routerIntegrationTransitEncryption"))
    Output.add_member(:connected_router_input_arn, Shapes::ShapeRef.new(shape: String, location_name: "connectedRouterInputArn"))
    Output.struct_class = Types::Output

    OwnedResourceShareDetails.add_member(:share_state, Shapes::ShapeRef.new(shape: ResourceShareState, required: true, location_name: "shareState"))
    OwnedResourceShareDetails.struct_class = Types::OwnedResourceShareDetails

    PreferredDayTimeMaintenanceConfiguration.add_member(:day, Shapes::ShapeRef.new(shape: Day, required: true, location_name: "day"))
    PreferredDayTimeMaintenanceConfiguration.add_member(:time, Shapes::ShapeRef.new(shape: String, required: true, location_name: "time"))
    PreferredDayTimeMaintenanceConfiguration.struct_class = Types::PreferredDayTimeMaintenanceConfiguration

    PublicDestinationEndpointNetworkingConfiguration.add_member(:destination_allow_rules, Shapes::ShapeRef.new(shape: PublicDestinationEndpointNetworkingConfigurationDestinationAllowRulesList, required: true, location_name: "destinationAllowRules"))
    PublicDestinationEndpointNetworkingConfiguration.struct_class = Types::PublicDestinationEndpointNetworkingConfiguration

    PublicDestinationEndpointNetworkingConfigurationAllowRule.add_member(:cidr, Shapes::ShapeRef.new(shape: PublicDestinationEndpointNetworkingConfigurationAllowRuleCidrString, required: true, location_name: "cidr"))
    PublicDestinationEndpointNetworkingConfigurationAllowRule.struct_class = Types::PublicDestinationEndpointNetworkingConfigurationAllowRule

    PublicDestinationEndpointNetworkingConfigurationDestinationAllowRulesList.member = Shapes::ShapeRef.new(shape: PublicDestinationEndpointNetworkingConfigurationAllowRule)

    PublicRouterNetworkInterfaceConfiguration.add_member(:allow_rules, Shapes::ShapeRef.new(shape: PublicRouterNetworkInterfaceConfigurationAllowRulesList, required: true, location_name: "allowRules"))
    PublicRouterNetworkInterfaceConfiguration.struct_class = Types::PublicRouterNetworkInterfaceConfiguration

    PublicRouterNetworkInterfaceConfigurationAllowRulesList.member = Shapes::ShapeRef.new(shape: PublicRouterNetworkInterfaceRule)

    PublicRouterNetworkInterfaceRule.add_member(:cidr, Shapes::ShapeRef.new(shape: PublicRouterNetworkInterfaceRuleCidrString, required: true, location_name: "cidr"))
    PublicRouterNetworkInterfaceRule.struct_class = Types::PublicRouterNetworkInterfaceRule

    PublicSourceEndpointNetworkingConfiguration.add_member(:source_allow_rules, Shapes::ShapeRef.new(shape: PublicSourceEndpointNetworkingConfigurationSourceAllowRulesList, required: true, location_name: "sourceAllowRules"))
    PublicSourceEndpointNetworkingConfiguration.struct_class = Types::PublicSourceEndpointNetworkingConfiguration

    PublicSourceEndpointNetworkingConfigurationAllowRule.add_member(:cidr, Shapes::ShapeRef.new(shape: PublicSourceEndpointNetworkingConfigurationAllowRuleCidrString, required: true, location_name: "cidr"))
    PublicSourceEndpointNetworkingConfigurationAllowRule.struct_class = Types::PublicSourceEndpointNetworkingConfigurationAllowRule

    PublicSourceEndpointNetworkingConfigurationSourceAllowRulesList.member = Shapes::ShapeRef.new(shape: PublicSourceEndpointNetworkingConfigurationAllowRule)

    PublicTlsEncryptionConfiguration.struct_class = Types::PublicTlsEncryptionConfiguration

    PurchaseOfferingRequest.add_member(:offering_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "OfferingArn"))
    PurchaseOfferingRequest.add_member(:reservation_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reservationName"))
    PurchaseOfferingRequest.add_member(:start, Shapes::ShapeRef.new(shape: String, required: true, location_name: "start"))
    PurchaseOfferingRequest.struct_class = Types::PurchaseOfferingRequest

    PurchaseOfferingResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResponse.struct_class = Types::PurchaseOfferingResponse

    RegisterDestinationEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: RegisterDestinationEndpointRequestDescriptionString, location_name: "description"))
    RegisterDestinationEndpointRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DestinationEndpointConfiguration, required: true, location_name: "configuration"))
    RegisterDestinationEndpointRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "regionName"))
    RegisterDestinationEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "tags"))
    RegisterDestinationEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    RegisterDestinationEndpointRequest.struct_class = Types::RegisterDestinationEndpointRequest

    RegisterDestinationEndpointResponse.add_member(:destination_endpoint, Shapes::ShapeRef.new(shape: DestinationEndpoint, required: true, location_name: "destinationEndpoint"))
    RegisterDestinationEndpointResponse.struct_class = Types::RegisterDestinationEndpointResponse

    RegisterSourceEndpointRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "regionName"))
    RegisterSourceEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: RegisterSourceEndpointRequestDescriptionString, location_name: "description"))
    RegisterSourceEndpointRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: SourceEndpointConfiguration, required: true, location_name: "configuration"))
    RegisterSourceEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "tags"))
    RegisterSourceEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    RegisterSourceEndpointRequest.struct_class = Types::RegisterSourceEndpointRequest

    RegisterSourceEndpointResponse.add_member(:source_endpoint, Shapes::ShapeRef.new(shape: SourceEndpoint, required: true, location_name: "sourceEndpoint"))
    RegisterSourceEndpointResponse.struct_class = Types::RegisterSourceEndpointResponse

    RemoveBridgeOutputRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: RemoveBridgeOutputRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    RemoveBridgeOutputRequest.add_member(:output_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "OutputName"))
    RemoveBridgeOutputRequest.struct_class = Types::RemoveBridgeOutputRequest

    RemoveBridgeOutputResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    RemoveBridgeOutputResponse.add_member(:output_name, Shapes::ShapeRef.new(shape: String, location_name: "outputName"))
    RemoveBridgeOutputResponse.struct_class = Types::RemoveBridgeOutputResponse

    RemoveBridgeSourceRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: RemoveBridgeSourceRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    RemoveBridgeSourceRequest.add_member(:source_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "SourceName"))
    RemoveBridgeSourceRequest.struct_class = Types::RemoveBridgeSourceRequest

    RemoveBridgeSourceResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    RemoveBridgeSourceResponse.add_member(:source_name, Shapes::ShapeRef.new(shape: String, location_name: "sourceName"))
    RemoveBridgeSourceResponse.struct_class = Types::RemoveBridgeSourceResponse

    RemoveFlowMediaStreamRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: RemoveFlowMediaStreamRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    RemoveFlowMediaStreamRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "MediaStreamName"))
    RemoveFlowMediaStreamRequest.struct_class = Types::RemoveFlowMediaStreamRequest

    RemoveFlowMediaStreamResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    RemoveFlowMediaStreamResponse.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "mediaStreamName"))
    RemoveFlowMediaStreamResponse.struct_class = Types::RemoveFlowMediaStreamResponse

    RemoveFlowOutputRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: RemoveFlowOutputRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    RemoveFlowOutputRequest.add_member(:output_arn, Shapes::ShapeRef.new(shape: RemoveFlowOutputRequestOutputArnString, required: true, location: "uri", location_name: "OutputArn"))
    RemoveFlowOutputRequest.struct_class = Types::RemoveFlowOutputRequest

    RemoveFlowOutputResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    RemoveFlowOutputResponse.add_member(:output_arn, Shapes::ShapeRef.new(shape: String, location_name: "outputArn"))
    RemoveFlowOutputResponse.struct_class = Types::RemoveFlowOutputResponse

    RemoveFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: RemoveFlowSourceRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    RemoveFlowSourceRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: RemoveFlowSourceRequestSourceArnString, required: true, location: "uri", location_name: "SourceArn"))
    RemoveFlowSourceRequest.struct_class = Types::RemoveFlowSourceRequest

    RemoveFlowSourceResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    RemoveFlowSourceResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, location_name: "sourceArn"))
    RemoveFlowSourceResponse.struct_class = Types::RemoveFlowSourceResponse

    RemoveFlowVpcInterfaceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: RemoveFlowVpcInterfaceRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    RemoveFlowVpcInterfaceRequest.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "VpcInterfaceName"))
    RemoveFlowVpcInterfaceRequest.struct_class = Types::RemoveFlowVpcInterfaceRequest

    RemoveFlowVpcInterfaceResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    RemoveFlowVpcInterfaceResponse.add_member(:non_deleted_network_interface_ids, Shapes::ShapeRef.new(shape: __listOfString, location_name: "nonDeletedNetworkInterfaceIds"))
    RemoveFlowVpcInterfaceResponse.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: String, location_name: "vpcInterfaceName"))
    RemoveFlowVpcInterfaceResponse.struct_class = Types::RemoveFlowVpcInterfaceResponse

    Reservation.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "currencyCode"))
    Reservation.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "duration"))
    Reservation.add_member(:duration_units, Shapes::ShapeRef.new(shape: DurationUnits, required: true, location_name: "durationUnits"))
    Reservation.add_member(:end, Shapes::ShapeRef.new(shape: String, required: true, location_name: "end"))
    Reservation.add_member(:offering_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "offeringArn"))
    Reservation.add_member(:offering_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "offeringDescription"))
    Reservation.add_member(:price_per_unit, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pricePerUnit"))
    Reservation.add_member(:price_units, Shapes::ShapeRef.new(shape: PriceUnits, required: true, location_name: "priceUnits"))
    Reservation.add_member(:reservation_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reservationArn"))
    Reservation.add_member(:reservation_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reservationName"))
    Reservation.add_member(:reservation_state, Shapes::ShapeRef.new(shape: ReservationState, required: true, location_name: "reservationState"))
    Reservation.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ResourceSpecification, required: true, location_name: "resourceSpecification"))
    Reservation.add_member(:start, Shapes::ShapeRef.new(shape: String, required: true, location_name: "start"))
    Reservation.struct_class = Types::Reservation

    ResourceShareDetails.add_member(:owned, Shapes::ShapeRef.new(shape: OwnedResourceShareDetails, location_name: "owned"))
    ResourceShareDetails.add_member(:consumed, Shapes::ShapeRef.new(shape: ConsumedResourceShareDetails, location_name: "consumed"))
    ResourceShareDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceShareDetails.add_member_subclass(:owned, Types::ResourceShareDetails::Owned)
    ResourceShareDetails.add_member_subclass(:consumed, Types::ResourceShareDetails::Consumed)
    ResourceShareDetails.add_member_subclass(:unknown, Types::ResourceShareDetails::Unknown)
    ResourceShareDetails.struct_class = Types::ResourceShareDetails

    ResourceSpecification.add_member(:reserved_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "reservedBitrate"))
    ResourceSpecification.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceSpecification.struct_class = Types::ResourceSpecification

    RestartRouterInputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location: "uri", location_name: "Arn"))
    RestartRouterInputRequest.struct_class = Types::RestartRouterInputRequest

    RestartRouterInputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    RestartRouterInputResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RestartRouterInputResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterInputState, required: true, location_name: "state"))
    RestartRouterInputResponse.struct_class = Types::RestartRouterInputResponse

    RestartRouterOutputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location: "uri", location_name: "Arn"))
    RestartRouterOutputRequest.struct_class = Types::RestartRouterOutputRequest

    RestartRouterOutputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "arn"))
    RestartRouterOutputResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RestartRouterOutputResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterOutputState, required: true, location_name: "state"))
    RestartRouterOutputResponse.struct_class = Types::RestartRouterOutputResponse

    RevokeFlowEntitlementRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: RevokeFlowEntitlementRequestEntitlementArnString, required: true, location: "uri", location_name: "EntitlementArn"))
    RevokeFlowEntitlementRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: RevokeFlowEntitlementRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    RevokeFlowEntitlementRequest.struct_class = Types::RevokeFlowEntitlementRequest

    RevokeFlowEntitlementResponse.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: String, location_name: "entitlementArn"))
    RevokeFlowEntitlementResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    RevokeFlowEntitlementResponse.struct_class = Types::RevokeFlowEntitlementResponse

    RistRouterInputConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: RistRouterInputConfigurationPortInteger, required: true, location_name: "port"))
    RistRouterInputConfiguration.add_member(:recovery_latency_milliseconds, Shapes::ShapeRef.new(shape: RistRouterInputConfigurationRecoveryLatencyMillisecondsLong, required: true, location_name: "recoveryLatencyMilliseconds"))
    RistRouterInputConfiguration.struct_class = Types::RistRouterInputConfiguration

    RistRouterOutputConfiguration.add_member(:destination_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationAddress"))
    RistRouterOutputConfiguration.add_member(:destination_port, Shapes::ShapeRef.new(shape: RistRouterOutputConfigurationDestinationPortInteger, required: true, location_name: "destinationPort"))
    RistRouterOutputConfiguration.struct_class = Types::RistRouterOutputConfiguration

    RistStandardDestinationEndpointConfiguration.add_member(:destination_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationAddress"))
    RistStandardDestinationEndpointConfiguration.add_member(:destination_ingest_port, Shapes::ShapeRef.new(shape: RistStandardDestinationEndpointConfigurationDestinationIngestPortInteger, required: true, location_name: "destinationIngestPort"))
    RistStandardDestinationEndpointConfiguration.struct_class = Types::RistStandardDestinationEndpointConfiguration

    RistStandardSourceEndpointConfiguration.add_member(:destination_ingest_port, Shapes::ShapeRef.new(shape: RistStandardSourceEndpointConfigurationDestinationIngestPortInteger, required: true, location_name: "destinationIngestPort"))
    RistStandardSourceEndpointConfiguration.add_member(:recovery_latency_milliseconds, Shapes::ShapeRef.new(shape: RistStandardSourceEndpointConfigurationRecoveryLatencyMillisecondsLong, required: true, location_name: "recoveryLatencyMilliseconds"))
    RistStandardSourceEndpointConfiguration.struct_class = Types::RistStandardSourceEndpointConfiguration

    RouterContentQualityAnalysisConfiguration.add_member(:content_level, Shapes::ShapeRef.new(shape: ContentQualityAnalysisFeatureConfiguration, location_name: "contentLevel"))
    RouterContentQualityAnalysisConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterContentQualityAnalysisConfiguration.add_member_subclass(:content_level, Types::RouterContentQualityAnalysisConfiguration::ContentLevel)
    RouterContentQualityAnalysisConfiguration.add_member_subclass(:unknown, Types::RouterContentQualityAnalysisConfiguration::Unknown)
    RouterContentQualityAnalysisConfiguration.struct_class = Types::RouterContentQualityAnalysisConfiguration

    RouterInput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RouterInput.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    RouterInput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    RouterInput.add_member(:state, Shapes::ShapeRef.new(shape: RouterInputState, required: true, location_name: "state"))
    RouterInput.add_member(:input_type, Shapes::ShapeRef.new(shape: RouterInputType, required: true, location_name: "inputType"))
    RouterInput.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterInputConfiguration, required: true, location_name: "configuration"))
    RouterInput.add_member(:routed_outputs, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "routedOutputs"))
    RouterInput.add_member(:maximum_routed_outputs, Shapes::ShapeRef.new(shape: Integer, location_name: "maximumRoutedOutputs"))
    RouterInput.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    RouterInput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, required: true, location_name: "availabilityZone"))
    RouterInput.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "maximumBitrate"))
    RouterInput.add_member(:tier, Shapes::ShapeRef.new(shape: RouterInputTier, required: true, location_name: "tier"))
    RouterInput.add_member(:routing_scope, Shapes::ShapeRef.new(shape: RoutingScope, required: true, location_name: "routingScope"))
    RouterInput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    RouterInput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    RouterInput.add_member(:messages, Shapes::ShapeRef.new(shape: RouterInputMessages, required: true, location_name: "messages"))
    RouterInput.add_member(:transit_encryption, Shapes::ShapeRef.new(shape: RouterInputTransitEncryption, required: true, location_name: "transitEncryption"))
    RouterInput.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, required: true, location_name: "tags"))
    RouterInput.add_member(:stream_details, Shapes::ShapeRef.new(shape: RouterInputStreamDetails, required: true, location_name: "streamDetails"))
    RouterInput.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "ipAddress"))
    RouterInput.add_member(:maintenance_type, Shapes::ShapeRef.new(shape: MaintenanceType, required: true, location_name: "maintenanceType"))
    RouterInput.add_member(:maintenance_configuration, Shapes::ShapeRef.new(shape: MaintenanceConfiguration, required: true, location_name: "maintenanceConfiguration"))
    RouterInput.add_member(:maintenance_schedule_type, Shapes::ShapeRef.new(shape: MaintenanceScheduleType, location_name: "maintenanceScheduleType"))
    RouterInput.add_member(:maintenance_schedule, Shapes::ShapeRef.new(shape: MaintenanceSchedule, location_name: "maintenanceSchedule"))
    RouterInput.add_member(:content_quality_analysis_type, Shapes::ShapeRef.new(shape: RouterContentQualityAnalysisType, required: true, location_name: "contentQualityAnalysisType"))
    RouterInput.add_member(:content_quality_analysis_configuration, Shapes::ShapeRef.new(shape: RouterContentQualityAnalysisConfiguration, required: true, location_name: "contentQualityAnalysisConfiguration"))
    RouterInput.add_member(:associated_destination_endpoint_arns, Shapes::ShapeRef.new(shape: DestinationEndpointArnList, location_name: "associatedDestinationEndpointArns"))
    RouterInput.struct_class = Types::RouterInput

    RouterInputArnList.member = Shapes::ShapeRef.new(shape: RouterInputArn)

    RouterInputConfiguration.add_member(:destination_endpoint, Shapes::ShapeRef.new(shape: DestinationEndpointRouterInputConfiguration, location_name: "destinationEndpoint"))
    RouterInputConfiguration.add_member(:standard, Shapes::ShapeRef.new(shape: StandardRouterInputConfiguration, location_name: "standard"))
    RouterInputConfiguration.add_member(:media_live_channel, Shapes::ShapeRef.new(shape: MediaLiveChannelRouterInputConfiguration, location_name: "mediaLiveChannel"))
    RouterInputConfiguration.add_member(:failover, Shapes::ShapeRef.new(shape: FailoverRouterInputConfiguration, location_name: "failover"))
    RouterInputConfiguration.add_member(:media_connect_flow, Shapes::ShapeRef.new(shape: MediaConnectFlowRouterInputConfiguration, location_name: "mediaConnectFlow"))
    RouterInputConfiguration.add_member(:merge, Shapes::ShapeRef.new(shape: MergeRouterInputConfiguration, location_name: "merge"))
    RouterInputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputConfiguration.add_member_subclass(:destination_endpoint, Types::RouterInputConfiguration::DestinationEndpoint)
    RouterInputConfiguration.add_member_subclass(:standard, Types::RouterInputConfiguration::Standard)
    RouterInputConfiguration.add_member_subclass(:media_live_channel, Types::RouterInputConfiguration::MediaLiveChannel)
    RouterInputConfiguration.add_member_subclass(:failover, Types::RouterInputConfiguration::Failover)
    RouterInputConfiguration.add_member_subclass(:media_connect_flow, Types::RouterInputConfiguration::MediaConnectFlow)
    RouterInputConfiguration.add_member_subclass(:merge, Types::RouterInputConfiguration::Merge)
    RouterInputConfiguration.add_member_subclass(:unknown, Types::RouterInputConfiguration::Unknown)
    RouterInputConfiguration.struct_class = Types::RouterInputConfiguration

    RouterInputDestinationEndpointAssociatedResourceDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RouterInputDestinationEndpointAssociatedResourceDetails.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "maximumBitrate"))
    RouterInputDestinationEndpointAssociatedResourceDetails.add_member(:state, Shapes::ShapeRef.new(shape: RouterInputState, required: true, location_name: "state"))
    RouterInputDestinationEndpointAssociatedResourceDetails.add_member(:messages, Shapes::ShapeRef.new(shape: RouterInputMessages, required: true, location_name: "messages"))
    RouterInputDestinationEndpointAssociatedResourceDetails.struct_class = Types::RouterInputDestinationEndpointAssociatedResourceDetails

    RouterInputDestinationEndpointConfiguration.add_member(:router_input_arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "routerInputArn"))
    RouterInputDestinationEndpointConfiguration.struct_class = Types::RouterInputDestinationEndpointConfiguration

    RouterInputDestinationEndpointConnectionDetails.add_member(:source_encryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "sourceEncryptionType"))
    RouterInputDestinationEndpointConnectionDetails.add_member(:source_encryption_configuration, Shapes::ShapeRef.new(shape: EndpointEncryptionConfiguration, location_name: "sourceEncryptionConfiguration"))
    RouterInputDestinationEndpointConnectionDetails.add_member(:source_endpoint_type, Shapes::ShapeRef.new(shape: SourceEndpointType, location_name: "sourceEndpointType"))
    RouterInputDestinationEndpointConnectionDetails.struct_class = Types::RouterInputDestinationEndpointConnectionDetails

    RouterInputFilter.add_member(:name_contains, Shapes::ShapeRef.new(shape: StringList, location_name: "nameContains"))
    RouterInputFilter.add_member(:region_names, Shapes::ShapeRef.new(shape: StringList, location_name: "regionNames"))
    RouterInputFilter.add_member(:network_interface_arns, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArnList, location_name: "networkInterfaceArns"))
    RouterInputFilter.add_member(:routing_scopes, Shapes::ShapeRef.new(shape: RoutingScopeList, location_name: "routingScopes"))
    RouterInputFilter.add_member(:input_types, Shapes::ShapeRef.new(shape: RouterInputTypeList, location_name: "inputTypes"))
    RouterInputFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputFilter.add_member_subclass(:name_contains, Types::RouterInputFilter::NameContains)
    RouterInputFilter.add_member_subclass(:region_names, Types::RouterInputFilter::RegionNames)
    RouterInputFilter.add_member_subclass(:network_interface_arns, Types::RouterInputFilter::NetworkInterfaceArns)
    RouterInputFilter.add_member_subclass(:routing_scopes, Types::RouterInputFilter::RoutingScopes)
    RouterInputFilter.add_member_subclass(:input_types, Types::RouterInputFilter::InputTypes)
    RouterInputFilter.add_member_subclass(:unknown, Types::RouterInputFilter::Unknown)
    RouterInputFilter.struct_class = Types::RouterInputFilter

    RouterInputFilterList.member = Shapes::ShapeRef.new(shape: RouterInputFilter)

    RouterInputList.member = Shapes::ShapeRef.new(shape: RouterInput)

    RouterInputMessage.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    RouterInputMessage.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RouterInputMessage.struct_class = Types::RouterInputMessage

    RouterInputMessages.member = Shapes::ShapeRef.new(shape: RouterInputMessage)

    RouterInputMetadata.add_member(:transport_stream_media_info, Shapes::ShapeRef.new(shape: TransportMediaInfo, location_name: "transportStreamMediaInfo"))
    RouterInputMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputMetadata.add_member_subclass(:transport_stream_media_info, Types::RouterInputMetadata::TransportStreamMediaInfo)
    RouterInputMetadata.add_member_subclass(:unknown, Types::RouterInputMetadata::Unknown)
    RouterInputMetadata.struct_class = Types::RouterInputMetadata

    RouterInputProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistRouterInputConfiguration, location_name: "rist"))
    RouterInputProtocolConfiguration.add_member(:srt_listener, Shapes::ShapeRef.new(shape: SrtListenerRouterInputConfiguration, location_name: "srtListener"))
    RouterInputProtocolConfiguration.add_member(:srt_caller, Shapes::ShapeRef.new(shape: SrtCallerRouterInputConfiguration, location_name: "srtCaller"))
    RouterInputProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpRouterInputConfiguration, location_name: "rtp"))
    RouterInputProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputProtocolConfiguration.add_member_subclass(:rist, Types::RouterInputProtocolConfiguration::Rist)
    RouterInputProtocolConfiguration.add_member_subclass(:srt_listener, Types::RouterInputProtocolConfiguration::SrtListener)
    RouterInputProtocolConfiguration.add_member_subclass(:srt_caller, Types::RouterInputProtocolConfiguration::SrtCaller)
    RouterInputProtocolConfiguration.add_member_subclass(:rtp, Types::RouterInputProtocolConfiguration::Rtp)
    RouterInputProtocolConfiguration.add_member_subclass(:unknown, Types::RouterInputProtocolConfiguration::Unknown)
    RouterInputProtocolConfiguration.struct_class = Types::RouterInputProtocolConfiguration

    RouterInputServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RouterInputServiceQuotaExceededException.struct_class = Types::RouterInputServiceQuotaExceededException

    RouterInputSourceMetadataDetails.add_member(:source_metadata_messages, Shapes::ShapeRef.new(shape: RouterInputMessages, required: true, location_name: "sourceMetadataMessages"))
    RouterInputSourceMetadataDetails.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "timestamp"))
    RouterInputSourceMetadataDetails.add_member(:router_input_metadata, Shapes::ShapeRef.new(shape: RouterInputMetadata, location_name: "routerInputMetadata"))
    RouterInputSourceMetadataDetails.struct_class = Types::RouterInputSourceMetadataDetails

    RouterInputStreamDetails.add_member(:destination_endpoint, Shapes::ShapeRef.new(shape: DestinationEndpointRouterInputStreamDetails, location_name: "destinationEndpoint"))
    RouterInputStreamDetails.add_member(:standard, Shapes::ShapeRef.new(shape: StandardRouterInputStreamDetails, location_name: "standard"))
    RouterInputStreamDetails.add_member(:media_live_channel, Shapes::ShapeRef.new(shape: MediaLiveChannelRouterInputStreamDetails, location_name: "mediaLiveChannel"))
    RouterInputStreamDetails.add_member(:failover, Shapes::ShapeRef.new(shape: FailoverRouterInputStreamDetails, location_name: "failover"))
    RouterInputStreamDetails.add_member(:media_connect_flow, Shapes::ShapeRef.new(shape: MediaConnectFlowRouterInputStreamDetails, location_name: "mediaConnectFlow"))
    RouterInputStreamDetails.add_member(:merge, Shapes::ShapeRef.new(shape: MergeRouterInputStreamDetails, location_name: "merge"))
    RouterInputStreamDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputStreamDetails.add_member_subclass(:destination_endpoint, Types::RouterInputStreamDetails::DestinationEndpoint)
    RouterInputStreamDetails.add_member_subclass(:standard, Types::RouterInputStreamDetails::Standard)
    RouterInputStreamDetails.add_member_subclass(:media_live_channel, Types::RouterInputStreamDetails::MediaLiveChannel)
    RouterInputStreamDetails.add_member_subclass(:failover, Types::RouterInputStreamDetails::Failover)
    RouterInputStreamDetails.add_member_subclass(:media_connect_flow, Types::RouterInputStreamDetails::MediaConnectFlow)
    RouterInputStreamDetails.add_member_subclass(:merge, Types::RouterInputStreamDetails::Merge)
    RouterInputStreamDetails.add_member_subclass(:unknown, Types::RouterInputStreamDetails::Unknown)
    RouterInputStreamDetails.struct_class = Types::RouterInputStreamDetails

    RouterInputThumbnailDetails.add_member(:thumbnail_messages, Shapes::ShapeRef.new(shape: RouterInputMessages, required: true, location_name: "thumbnailMessages"))
    RouterInputThumbnailDetails.add_member(:thumbnail, Shapes::ShapeRef.new(shape: Blob, location_name: "thumbnail"))
    RouterInputThumbnailDetails.add_member(:timecode, Shapes::ShapeRef.new(shape: String, location_name: "timecode"))
    RouterInputThumbnailDetails.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timestamp"))
    RouterInputThumbnailDetails.struct_class = Types::RouterInputThumbnailDetails

    RouterInputTransitEncryption.add_member(:encryption_key_type, Shapes::ShapeRef.new(shape: RouterInputTransitEncryptionKeyType, location_name: "encryptionKeyType"))
    RouterInputTransitEncryption.add_member(:encryption_key_configuration, Shapes::ShapeRef.new(shape: RouterInputTransitEncryptionKeyConfiguration, required: true, location_name: "encryptionKeyConfiguration"))
    RouterInputTransitEncryption.struct_class = Types::RouterInputTransitEncryption

    RouterInputTransitEncryptionKeyConfiguration.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManagerEncryptionKeyConfiguration, location_name: "secretsManager"))
    RouterInputTransitEncryptionKeyConfiguration.add_member(:automatic, Shapes::ShapeRef.new(shape: AutomaticEncryptionKeyConfiguration, location_name: "automatic"))
    RouterInputTransitEncryptionKeyConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputTransitEncryptionKeyConfiguration.add_member_subclass(:secrets_manager, Types::RouterInputTransitEncryptionKeyConfiguration::SecretsManager)
    RouterInputTransitEncryptionKeyConfiguration.add_member_subclass(:automatic, Types::RouterInputTransitEncryptionKeyConfiguration::Automatic)
    RouterInputTransitEncryptionKeyConfiguration.add_member_subclass(:unknown, Types::RouterInputTransitEncryptionKeyConfiguration::Unknown)
    RouterInputTransitEncryptionKeyConfiguration.struct_class = Types::RouterInputTransitEncryptionKeyConfiguration

    RouterInputTypeList.member = Shapes::ShapeRef.new(shape: RouterInputType)

    RouterNetworkInterface.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RouterNetworkInterface.add_member(:arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location_name: "arn"))
    RouterNetworkInterface.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    RouterNetworkInterface.add_member(:state, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceState, required: true, location_name: "state"))
    RouterNetworkInterface.add_member(:network_interface_type, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceType, required: true, location_name: "networkInterfaceType"))
    RouterNetworkInterface.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceConfiguration, required: true, location_name: "configuration"))
    RouterNetworkInterface.add_member(:associated_output_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "associatedOutputCount"))
    RouterNetworkInterface.add_member(:associated_input_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "associatedInputCount"))
    RouterNetworkInterface.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    RouterNetworkInterface.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    RouterNetworkInterface.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    RouterNetworkInterface.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, required: true, location_name: "tags"))
    RouterNetworkInterface.struct_class = Types::RouterNetworkInterface

    RouterNetworkInterfaceArnList.member = Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn)

    RouterNetworkInterfaceConfiguration.add_member(:public, Shapes::ShapeRef.new(shape: PublicRouterNetworkInterfaceConfiguration, location_name: "public"))
    RouterNetworkInterfaceConfiguration.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcRouterNetworkInterfaceConfiguration, location_name: "vpc"))
    RouterNetworkInterfaceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterNetworkInterfaceConfiguration.add_member_subclass(:public, Types::RouterNetworkInterfaceConfiguration::Public)
    RouterNetworkInterfaceConfiguration.add_member_subclass(:vpc, Types::RouterNetworkInterfaceConfiguration::Vpc)
    RouterNetworkInterfaceConfiguration.add_member_subclass(:unknown, Types::RouterNetworkInterfaceConfiguration::Unknown)
    RouterNetworkInterfaceConfiguration.struct_class = Types::RouterNetworkInterfaceConfiguration

    RouterNetworkInterfaceFilter.add_member(:region_names, Shapes::ShapeRef.new(shape: StringList, location_name: "regionNames"))
    RouterNetworkInterfaceFilter.add_member(:network_interface_types, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceTypeList, location_name: "networkInterfaceTypes"))
    RouterNetworkInterfaceFilter.add_member(:name_contains, Shapes::ShapeRef.new(shape: StringList, location_name: "nameContains"))
    RouterNetworkInterfaceFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterNetworkInterfaceFilter.add_member_subclass(:region_names, Types::RouterNetworkInterfaceFilter::RegionNames)
    RouterNetworkInterfaceFilter.add_member_subclass(:network_interface_types, Types::RouterNetworkInterfaceFilter::NetworkInterfaceTypes)
    RouterNetworkInterfaceFilter.add_member_subclass(:name_contains, Types::RouterNetworkInterfaceFilter::NameContains)
    RouterNetworkInterfaceFilter.add_member_subclass(:unknown, Types::RouterNetworkInterfaceFilter::Unknown)
    RouterNetworkInterfaceFilter.struct_class = Types::RouterNetworkInterfaceFilter

    RouterNetworkInterfaceFilterList.member = Shapes::ShapeRef.new(shape: RouterNetworkInterfaceFilter)

    RouterNetworkInterfaceList.member = Shapes::ShapeRef.new(shape: RouterNetworkInterface)

    RouterNetworkInterfaceServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RouterNetworkInterfaceServiceQuotaExceededException.struct_class = Types::RouterNetworkInterfaceServiceQuotaExceededException

    RouterNetworkInterfaceTypeList.member = Shapes::ShapeRef.new(shape: RouterNetworkInterfaceType)

    RouterOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RouterOutput.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "arn"))
    RouterOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    RouterOutput.add_member(:state, Shapes::ShapeRef.new(shape: RouterOutputState, required: true, location_name: "state"))
    RouterOutput.add_member(:output_type, Shapes::ShapeRef.new(shape: RouterOutputType, required: true, location_name: "outputType"))
    RouterOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterOutputConfiguration, required: true, location_name: "configuration"))
    RouterOutput.add_member(:routed_state, Shapes::ShapeRef.new(shape: RouterOutputRoutedState, required: true, location_name: "routedState"))
    RouterOutput.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    RouterOutput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, required: true, location_name: "availabilityZone"))
    RouterOutput.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "maximumBitrate"))
    RouterOutput.add_member(:routing_scope, Shapes::ShapeRef.new(shape: RoutingScope, required: true, location_name: "routingScope"))
    RouterOutput.add_member(:tier, Shapes::ShapeRef.new(shape: RouterOutputTier, required: true, location_name: "tier"))
    RouterOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    RouterOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    RouterOutput.add_member(:messages, Shapes::ShapeRef.new(shape: RouterOutputMessages, required: true, location_name: "messages"))
    RouterOutput.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, required: true, location_name: "tags"))
    RouterOutput.add_member(:stream_details, Shapes::ShapeRef.new(shape: RouterOutputStreamDetails, required: true, location_name: "streamDetails"))
    RouterOutput.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "ipAddress"))
    RouterOutput.add_member(:routed_input_arn, Shapes::ShapeRef.new(shape: RouterInputArn, location_name: "routedInputArn"))
    RouterOutput.add_member(:maintenance_type, Shapes::ShapeRef.new(shape: MaintenanceType, required: true, location_name: "maintenanceType"))
    RouterOutput.add_member(:maintenance_configuration, Shapes::ShapeRef.new(shape: MaintenanceConfiguration, required: true, location_name: "maintenanceConfiguration"))
    RouterOutput.add_member(:maintenance_schedule_type, Shapes::ShapeRef.new(shape: MaintenanceScheduleType, location_name: "maintenanceScheduleType"))
    RouterOutput.add_member(:maintenance_schedule, Shapes::ShapeRef.new(shape: MaintenanceSchedule, location_name: "maintenanceSchedule"))
    RouterOutput.add_member(:fabric_configuration, Shapes::ShapeRef.new(shape: FabricConfiguration, required: true, location_name: "fabricConfiguration"))
    RouterOutput.add_member(:associated_source_endpoint_arns, Shapes::ShapeRef.new(shape: SourceEndpointArnList, location_name: "associatedSourceEndpointArns"))
    RouterOutput.struct_class = Types::RouterOutput

    RouterOutputConfiguration.add_member(:standard, Shapes::ShapeRef.new(shape: StandardRouterOutputConfiguration, location_name: "standard"))
    RouterOutputConfiguration.add_member(:media_connect_flow, Shapes::ShapeRef.new(shape: MediaConnectFlowRouterOutputConfiguration, location_name: "mediaConnectFlow"))
    RouterOutputConfiguration.add_member(:media_live_input, Shapes::ShapeRef.new(shape: MediaLiveInputRouterOutputConfiguration, location_name: "mediaLiveInput"))
    RouterOutputConfiguration.add_member(:source_endpoint, Shapes::ShapeRef.new(shape: SourceEndpointRouterOutputConfiguration, location_name: "sourceEndpoint"))
    RouterOutputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterOutputConfiguration.add_member_subclass(:standard, Types::RouterOutputConfiguration::Standard)
    RouterOutputConfiguration.add_member_subclass(:media_connect_flow, Types::RouterOutputConfiguration::MediaConnectFlow)
    RouterOutputConfiguration.add_member_subclass(:media_live_input, Types::RouterOutputConfiguration::MediaLiveInput)
    RouterOutputConfiguration.add_member_subclass(:source_endpoint, Types::RouterOutputConfiguration::SourceEndpoint)
    RouterOutputConfiguration.add_member_subclass(:unknown, Types::RouterOutputConfiguration::Unknown)
    RouterOutputConfiguration.struct_class = Types::RouterOutputConfiguration

    RouterOutputFilter.add_member(:region_names, Shapes::ShapeRef.new(shape: StringList, location_name: "regionNames"))
    RouterOutputFilter.add_member(:network_interface_arns, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArnList, location_name: "networkInterfaceArns"))
    RouterOutputFilter.add_member(:routing_scopes, Shapes::ShapeRef.new(shape: RoutingScopeList, location_name: "routingScopes"))
    RouterOutputFilter.add_member(:output_types, Shapes::ShapeRef.new(shape: RouterOutputTypeList, location_name: "outputTypes"))
    RouterOutputFilter.add_member(:routed_input_arns, Shapes::ShapeRef.new(shape: RouterInputArnList, location_name: "routedInputArns"))
    RouterOutputFilter.add_member(:name_contains, Shapes::ShapeRef.new(shape: StringList, location_name: "nameContains"))
    RouterOutputFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterOutputFilter.add_member_subclass(:region_names, Types::RouterOutputFilter::RegionNames)
    RouterOutputFilter.add_member_subclass(:network_interface_arns, Types::RouterOutputFilter::NetworkInterfaceArns)
    RouterOutputFilter.add_member_subclass(:routing_scopes, Types::RouterOutputFilter::RoutingScopes)
    RouterOutputFilter.add_member_subclass(:output_types, Types::RouterOutputFilter::OutputTypes)
    RouterOutputFilter.add_member_subclass(:routed_input_arns, Types::RouterOutputFilter::RoutedInputArns)
    RouterOutputFilter.add_member_subclass(:name_contains, Types::RouterOutputFilter::NameContains)
    RouterOutputFilter.add_member_subclass(:unknown, Types::RouterOutputFilter::Unknown)
    RouterOutputFilter.struct_class = Types::RouterOutputFilter

    RouterOutputFilterList.member = Shapes::ShapeRef.new(shape: RouterOutputFilter)

    RouterOutputList.member = Shapes::ShapeRef.new(shape: RouterOutput)

    RouterOutputMessage.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    RouterOutputMessage.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RouterOutputMessage.struct_class = Types::RouterOutputMessage

    RouterOutputMessages.member = Shapes::ShapeRef.new(shape: RouterOutputMessage)

    RouterOutputProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistRouterOutputConfiguration, location_name: "rist"))
    RouterOutputProtocolConfiguration.add_member(:srt_listener, Shapes::ShapeRef.new(shape: SrtListenerRouterOutputConfiguration, location_name: "srtListener"))
    RouterOutputProtocolConfiguration.add_member(:rtmp_push, Shapes::ShapeRef.new(shape: RtmpPushRouterOutputConfiguration, location_name: "rtmpPush"))
    RouterOutputProtocolConfiguration.add_member(:srt_caller, Shapes::ShapeRef.new(shape: SrtCallerRouterOutputConfiguration, location_name: "srtCaller"))
    RouterOutputProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpRouterOutputConfiguration, location_name: "rtp"))
    RouterOutputProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterOutputProtocolConfiguration.add_member_subclass(:rist, Types::RouterOutputProtocolConfiguration::Rist)
    RouterOutputProtocolConfiguration.add_member_subclass(:srt_listener, Types::RouterOutputProtocolConfiguration::SrtListener)
    RouterOutputProtocolConfiguration.add_member_subclass(:rtmp_push, Types::RouterOutputProtocolConfiguration::RtmpPush)
    RouterOutputProtocolConfiguration.add_member_subclass(:srt_caller, Types::RouterOutputProtocolConfiguration::SrtCaller)
    RouterOutputProtocolConfiguration.add_member_subclass(:rtp, Types::RouterOutputProtocolConfiguration::Rtp)
    RouterOutputProtocolConfiguration.add_member_subclass(:unknown, Types::RouterOutputProtocolConfiguration::Unknown)
    RouterOutputProtocolConfiguration.struct_class = Types::RouterOutputProtocolConfiguration

    RouterOutputServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RouterOutputServiceQuotaExceededException.struct_class = Types::RouterOutputServiceQuotaExceededException

    RouterOutputSourceEndpointAssociatedResourceDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RouterOutputSourceEndpointAssociatedResourceDetails.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "maximumBitrate"))
    RouterOutputSourceEndpointAssociatedResourceDetails.add_member(:state, Shapes::ShapeRef.new(shape: RouterOutputState, required: true, location_name: "state"))
    RouterOutputSourceEndpointAssociatedResourceDetails.add_member(:messages, Shapes::ShapeRef.new(shape: RouterOutputMessages, required: true, location_name: "messages"))
    RouterOutputSourceEndpointAssociatedResourceDetails.struct_class = Types::RouterOutputSourceEndpointAssociatedResourceDetails

    RouterOutputSourceEndpointConfiguration.add_member(:router_output_arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "routerOutputArn"))
    RouterOutputSourceEndpointConfiguration.struct_class = Types::RouterOutputSourceEndpointConfiguration

    RouterOutputSourceEndpointConnectionDetails.add_member(:destination_decryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "destinationDecryptionType"))
    RouterOutputSourceEndpointConnectionDetails.add_member(:destination_decryption_configuration, Shapes::ShapeRef.new(shape: EndpointEncryptionConfiguration, location_name: "destinationDecryptionConfiguration"))
    RouterOutputSourceEndpointConnectionDetails.add_member(:destination_endpoint_type, Shapes::ShapeRef.new(shape: DestinationEndpointType, location_name: "destinationEndpointType"))
    RouterOutputSourceEndpointConnectionDetails.struct_class = Types::RouterOutputSourceEndpointConnectionDetails

    RouterOutputStreamDetails.add_member(:standard, Shapes::ShapeRef.new(shape: StandardRouterOutputStreamDetails, location_name: "standard"))
    RouterOutputStreamDetails.add_member(:media_connect_flow, Shapes::ShapeRef.new(shape: MediaConnectFlowRouterOutputStreamDetails, location_name: "mediaConnectFlow"))
    RouterOutputStreamDetails.add_member(:media_live_input, Shapes::ShapeRef.new(shape: MediaLiveInputRouterOutputStreamDetails, location_name: "mediaLiveInput"))
    RouterOutputStreamDetails.add_member(:source_endpoint, Shapes::ShapeRef.new(shape: SourceEndpointRouterOutputStreamDetails, location_name: "sourceEndpoint"))
    RouterOutputStreamDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterOutputStreamDetails.add_member_subclass(:standard, Types::RouterOutputStreamDetails::Standard)
    RouterOutputStreamDetails.add_member_subclass(:media_connect_flow, Types::RouterOutputStreamDetails::MediaConnectFlow)
    RouterOutputStreamDetails.add_member_subclass(:media_live_input, Types::RouterOutputStreamDetails::MediaLiveInput)
    RouterOutputStreamDetails.add_member_subclass(:source_endpoint, Types::RouterOutputStreamDetails::SourceEndpoint)
    RouterOutputStreamDetails.add_member_subclass(:unknown, Types::RouterOutputStreamDetails::Unknown)
    RouterOutputStreamDetails.struct_class = Types::RouterOutputStreamDetails

    RouterOutputTypeList.member = Shapes::ShapeRef.new(shape: RouterOutputType)

    RoutingScopeList.member = Shapes::ShapeRef.new(shape: RoutingScope)

    RtmpPushRouterOutputConfiguration.add_member(:destination_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationAddress"))
    RtmpPushRouterOutputConfiguration.add_member(:destination_port, Shapes::ShapeRef.new(shape: RtmpPushRouterOutputConfigurationDestinationPortInteger, required: true, location_name: "destinationPort"))
    RtmpPushRouterOutputConfiguration.add_member(:application_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "applicationName"))
    RtmpPushRouterOutputConfiguration.add_member(:stream_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "streamName"))
    RtmpPushRouterOutputConfiguration.add_member(:tls_encryption, Shapes::ShapeRef.new(shape: TlsEncryption, location_name: "tlsEncryption"))
    RtmpPushRouterOutputConfiguration.struct_class = Types::RtmpPushRouterOutputConfiguration

    RtpRouterInputConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: RtpRouterInputConfigurationPortInteger, required: true, location_name: "port"))
    RtpRouterInputConfiguration.add_member(:forward_error_correction, Shapes::ShapeRef.new(shape: ForwardErrorCorrectionState, location_name: "forwardErrorCorrection"))
    RtpRouterInputConfiguration.struct_class = Types::RtpRouterInputConfiguration

    RtpRouterOutputConfiguration.add_member(:destination_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationAddress"))
    RtpRouterOutputConfiguration.add_member(:destination_port, Shapes::ShapeRef.new(shape: RtpRouterOutputConfigurationDestinationPortInteger, required: true, location_name: "destinationPort"))
    RtpRouterOutputConfiguration.add_member(:forward_error_correction, Shapes::ShapeRef.new(shape: ForwardErrorCorrectionState, location_name: "forwardErrorCorrection"))
    RtpRouterOutputConfiguration.struct_class = Types::RtpRouterOutputConfiguration

    RtpStandardDestinationEndpointConfiguration.add_member(:destination_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationAddress"))
    RtpStandardDestinationEndpointConfiguration.add_member(:destination_ingest_port, Shapes::ShapeRef.new(shape: RtpStandardDestinationEndpointConfigurationDestinationIngestPortInteger, required: true, location_name: "destinationIngestPort"))
    RtpStandardDestinationEndpointConfiguration.add_member(:forward_error_correction_state, Shapes::ShapeRef.new(shape: ForwardErrorCorrectionState, required: true, location_name: "forwardErrorCorrectionState"))
    RtpStandardDestinationEndpointConfiguration.struct_class = Types::RtpStandardDestinationEndpointConfiguration

    RtpStandardSourceEndpointConfiguration.add_member(:destination_ingest_port, Shapes::ShapeRef.new(shape: RtpStandardSourceEndpointConfigurationDestinationIngestPortInteger, required: true, location_name: "destinationIngestPort"))
    RtpStandardSourceEndpointConfiguration.add_member(:forward_error_correction_state, Shapes::ShapeRef.new(shape: ForwardErrorCorrectionState, required: true, location_name: "forwardErrorCorrectionState"))
    RtpStandardSourceEndpointConfiguration.struct_class = Types::RtpStandardSourceEndpointConfiguration

    SecretsManagerEncryptionKeyConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    SecretsManagerEncryptionKeyConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    SecretsManagerEncryptionKeyConfiguration.struct_class = Types::SecretsManagerEncryptionKeyConfiguration

    SecretsManagerEndpointEncryptionConfiguration.add_member(:encryption_secret_type, Shapes::ShapeRef.new(shape: EndpointEncryptionSecretType, location_name: "encryptionSecretType"))
    SecretsManagerEndpointEncryptionConfiguration.add_member(:encryption_secret, Shapes::ShapeRef.new(shape: EndpointEncryptionSecretConfiguration, required: true, location_name: "encryptionSecret"))
    SecretsManagerEndpointEncryptionConfiguration.struct_class = Types::SecretsManagerEndpointEncryptionConfiguration

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SetGatewayBridgeSourceRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: SetGatewayBridgeSourceRequestBridgeArnString, required: true, location_name: "bridgeArn"))
    SetGatewayBridgeSourceRequest.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    SetGatewayBridgeSourceRequest.struct_class = Types::SetGatewayBridgeSourceRequest

    SetSourceRequest.add_member(:decryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "decryption"))
    SetSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SetSourceRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: SetSourceRequestEntitlementArnString, location_name: "entitlementArn"))
    SetSourceRequest.add_member(:ingest_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ingestPort"))
    SetSourceRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "maxBitrate"))
    SetSourceRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "maxLatency"))
    SetSourceRequest.add_member(:max_sync_buffer, Shapes::ShapeRef.new(shape: Integer, location_name: "maxSyncBuffer"))
    SetSourceRequest.add_member(:media_stream_source_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamSourceConfigurationRequest, location_name: "mediaStreamSourceConfigurations"))
    SetSourceRequest.add_member(:min_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "minLatency"))
    SetSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    SetSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    SetSourceRequest.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: Integer, location_name: "senderControlPort"))
    SetSourceRequest.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "senderIpAddress"))
    SetSourceRequest.add_member(:source_listener_address, Shapes::ShapeRef.new(shape: String, location_name: "sourceListenerAddress"))
    SetSourceRequest.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "sourceListenerPort"))
    SetSourceRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    SetSourceRequest.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: String, location_name: "vpcInterfaceName"))
    SetSourceRequest.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: String, location_name: "whitelistCidr"))
    SetSourceRequest.add_member(:gateway_bridge_source, Shapes::ShapeRef.new(shape: SetGatewayBridgeSourceRequest, location_name: "gatewayBridgeSource"))
    SetSourceRequest.add_member(:ndi_source_settings, Shapes::ShapeRef.new(shape: NdiSourceSettings, location_name: "ndiSourceSettings"))
    SetSourceRequest.add_member(:source_tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "sourceTags"))
    SetSourceRequest.add_member(:router_integration_state, Shapes::ShapeRef.new(shape: State, location_name: "routerIntegrationState"))
    SetSourceRequest.add_member(:router_integration_transit_decryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, location_name: "routerIntegrationTransitDecryption"))
    SetSourceRequest.struct_class = Types::SetSourceRequest

    SilentAudio.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    SilentAudio.add_member(:threshold_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "thresholdSeconds"))
    SilentAudio.struct_class = Types::SilentAudio

    SilentAudioConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ContentQualityAnalysisState, required: true, location_name: "state"))
    SilentAudioConfiguration.add_member(:threshold_seconds, Shapes::ShapeRef.new(shape: RouterCqaThresholdSeconds, required: true, location_name: "thresholdSeconds"))
    SilentAudioConfiguration.struct_class = Types::SilentAudioConfiguration

    Source.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "dataTransferSubscriberFeePercent"))
    Source.add_member(:decryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "decryption"))
    Source.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Source.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: String, location_name: "entitlementArn"))
    Source.add_member(:ingest_ip, Shapes::ShapeRef.new(shape: String, location_name: "ingestIp"))
    Source.add_member(:ingest_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ingestPort"))
    Source.add_member(:media_stream_source_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamSourceConfiguration, location_name: "mediaStreamSourceConfigurations"))
    Source.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Source.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: Integer, location_name: "senderControlPort"))
    Source.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "senderIpAddress"))
    Source.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceArn"))
    Source.add_member(:transport, Shapes::ShapeRef.new(shape: Transport, location_name: "transport"))
    Source.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: String, location_name: "vpcInterfaceName"))
    Source.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: String, location_name: "whitelistCidr"))
    Source.add_member(:gateway_bridge_source, Shapes::ShapeRef.new(shape: GatewayBridgeSource, location_name: "gatewayBridgeSource"))
    Source.add_member(:peer_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "peerIpAddress"))
    Source.add_member(:router_integration_state, Shapes::ShapeRef.new(shape: State, location_name: "routerIntegrationState"))
    Source.add_member(:router_integration_transit_decryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, location_name: "routerIntegrationTransitDecryption"))
    Source.add_member(:connected_router_output_arn, Shapes::ShapeRef.new(shape: String, location_name: "connectedRouterOutputArn"))
    Source.struct_class = Types::Source

    SourceEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SourceEndpoint.add_member(:arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location_name: "arn"))
    SourceEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    SourceEndpoint.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    SourceEndpoint.add_member(:region_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "regionName"))
    SourceEndpoint.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    SourceEndpoint.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZoneId"))
    SourceEndpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    SourceEndpoint.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    SourceEndpoint.add_member(:lifecycle_management, Shapes::ShapeRef.new(shape: EndpointLifecycle, required: true, location_name: "lifecycleManagement"))
    SourceEndpoint.add_member(:messages, Shapes::ShapeRef.new(shape: SourceEndpointMessageList, required: true, location_name: "messages"))
    SourceEndpoint.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceEndpointType, required: true, location_name: "sourceType"))
    SourceEndpoint.add_member(:configuration, Shapes::ShapeRef.new(shape: SourceEndpointConfiguration, required: true, location_name: "configuration"))
    SourceEndpoint.add_member(:resource_share_ownership, Shapes::ShapeRef.new(shape: ResourceShareOwnership, required: true, location_name: "resourceShareOwnership"))
    SourceEndpoint.add_member(:resource_share_details, Shapes::ShapeRef.new(shape: ResourceShareDetails, required: true, location_name: "resourceShareDetails"))
    SourceEndpoint.add_member(:registration_state, Shapes::ShapeRef.new(shape: SourceEndpointRegistrationState, required: true, location_name: "registrationState"))
    SourceEndpoint.add_member(:connection_state, Shapes::ShapeRef.new(shape: SourceEndpointConnectionState, required: true, location_name: "connectionState"))
    SourceEndpoint.add_member(:connection_details, Shapes::ShapeRef.new(shape: SourceEndpointConnectionDetails, location_name: "connectionDetails"))
    SourceEndpoint.add_member(:connected_destinations, Shapes::ShapeRef.new(shape: DestinationEndpointArnList, required: true, location_name: "connectedDestinations"))
    SourceEndpoint.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "encryptionType"))
    SourceEndpoint.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EndpointEncryptionConfiguration, location_name: "encryptionConfiguration"))
    SourceEndpoint.add_member(:associated_resource_details, Shapes::ShapeRef.new(shape: SourceEndpointAssociatedResourceDetails, required: true, location_name: "associatedResourceDetails"))
    SourceEndpoint.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, required: true, location_name: "tags"))
    SourceEndpoint.struct_class = Types::SourceEndpoint

    SourceEndpointArnList.member = Shapes::ShapeRef.new(shape: SourceEndpointArn)

    SourceEndpointAssociatedResourceDetails.add_member(:standard, Shapes::ShapeRef.new(shape: StandardSourceEndpointAssociatedResourceDetails, location_name: "standard"))
    SourceEndpointAssociatedResourceDetails.add_member(:router_output, Shapes::ShapeRef.new(shape: RouterOutputSourceEndpointAssociatedResourceDetails, location_name: "routerOutput"))
    SourceEndpointAssociatedResourceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceEndpointAssociatedResourceDetails.add_member_subclass(:standard, Types::SourceEndpointAssociatedResourceDetails::Standard)
    SourceEndpointAssociatedResourceDetails.add_member_subclass(:router_output, Types::SourceEndpointAssociatedResourceDetails::RouterOutput)
    SourceEndpointAssociatedResourceDetails.add_member_subclass(:unknown, Types::SourceEndpointAssociatedResourceDetails::Unknown)
    SourceEndpointAssociatedResourceDetails.struct_class = Types::SourceEndpointAssociatedResourceDetails

    SourceEndpointConfiguration.add_member(:standard, Shapes::ShapeRef.new(shape: StandardSourceEndpointConfiguration, location_name: "standard"))
    SourceEndpointConfiguration.add_member(:router_output, Shapes::ShapeRef.new(shape: RouterOutputSourceEndpointConfiguration, location_name: "routerOutput"))
    SourceEndpointConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceEndpointConfiguration.add_member_subclass(:standard, Types::SourceEndpointConfiguration::Standard)
    SourceEndpointConfiguration.add_member_subclass(:router_output, Types::SourceEndpointConfiguration::RouterOutput)
    SourceEndpointConfiguration.add_member_subclass(:unknown, Types::SourceEndpointConfiguration::Unknown)
    SourceEndpointConfiguration.struct_class = Types::SourceEndpointConfiguration

    SourceEndpointConnectionDetails.add_member(:standard, Shapes::ShapeRef.new(shape: StandardSourceEndpointConnectionDetails, location_name: "standard"))
    SourceEndpointConnectionDetails.add_member(:router_output, Shapes::ShapeRef.new(shape: RouterOutputSourceEndpointConnectionDetails, location_name: "routerOutput"))
    SourceEndpointConnectionDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceEndpointConnectionDetails.add_member_subclass(:standard, Types::SourceEndpointConnectionDetails::Standard)
    SourceEndpointConnectionDetails.add_member_subclass(:router_output, Types::SourceEndpointConnectionDetails::RouterOutput)
    SourceEndpointConnectionDetails.add_member_subclass(:unknown, Types::SourceEndpointConnectionDetails::Unknown)
    SourceEndpointConnectionDetails.struct_class = Types::SourceEndpointConnectionDetails

    SourceEndpointFilter.add_member(:region_names, Shapes::ShapeRef.new(shape: StringList, location_name: "regionNames"))
    SourceEndpointFilter.add_member(:source_types, Shapes::ShapeRef.new(shape: SourceEndpointTypeList, location_name: "sourceTypes"))
    SourceEndpointFilter.add_member(:name_contains, Shapes::ShapeRef.new(shape: StringList, location_name: "nameContains"))
    SourceEndpointFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceEndpointFilter.add_member_subclass(:region_names, Types::SourceEndpointFilter::RegionNames)
    SourceEndpointFilter.add_member_subclass(:source_types, Types::SourceEndpointFilter::SourceTypes)
    SourceEndpointFilter.add_member_subclass(:name_contains, Types::SourceEndpointFilter::NameContains)
    SourceEndpointFilter.add_member_subclass(:unknown, Types::SourceEndpointFilter::Unknown)
    SourceEndpointFilter.struct_class = Types::SourceEndpointFilter

    SourceEndpointFilterList.member = Shapes::ShapeRef.new(shape: SourceEndpointFilter)

    SourceEndpointList.member = Shapes::ShapeRef.new(shape: SourceEndpoint)

    SourceEndpointMessage.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    SourceEndpointMessage.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    SourceEndpointMessage.struct_class = Types::SourceEndpointMessage

    SourceEndpointMessageList.member = Shapes::ShapeRef.new(shape: SourceEndpointMessage)

    SourceEndpointRouterOutputConfiguration.add_member(:endpoint_lifecycle_management, Shapes::ShapeRef.new(shape: EndpointLifecycle, required: true, location_name: "endpointLifecycleManagement"))
    SourceEndpointRouterOutputConfiguration.add_member(:destination_transit_encryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "destinationTransitEncryptionType"))
    SourceEndpointRouterOutputConfiguration.add_member(:destination_transit_encryption, Shapes::ShapeRef.new(shape: EndpointEncryptionConfiguration, required: true, location_name: "destinationTransitEncryption"))
    SourceEndpointRouterOutputConfiguration.struct_class = Types::SourceEndpointRouterOutputConfiguration

    SourceEndpointRouterOutputStreamDetails.struct_class = Types::SourceEndpointRouterOutputStreamDetails

    SourceEndpointServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    SourceEndpointServiceQuotaExceededException.struct_class = Types::SourceEndpointServiceQuotaExceededException

    SourceEndpointTypeList.member = Shapes::ShapeRef.new(shape: SourceEndpointType)

    SourcePriority.add_member(:primary_source, Shapes::ShapeRef.new(shape: String, location_name: "primarySource"))
    SourcePriority.struct_class = Types::SourcePriority

    SrtCallerRouterInputConfiguration.add_member(:source_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceAddress"))
    SrtCallerRouterInputConfiguration.add_member(:source_port, Shapes::ShapeRef.new(shape: SrtCallerRouterInputConfigurationSourcePortInteger, required: true, location_name: "sourcePort"))
    SrtCallerRouterInputConfiguration.add_member(:minimum_latency_milliseconds, Shapes::ShapeRef.new(shape: SrtCallerRouterInputConfigurationMinimumLatencyMillisecondsLong, required: true, location_name: "minimumLatencyMilliseconds"))
    SrtCallerRouterInputConfiguration.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    SrtCallerRouterInputConfiguration.add_member(:decryption_configuration, Shapes::ShapeRef.new(shape: SrtDecryptionConfiguration, location_name: "decryptionConfiguration"))
    SrtCallerRouterInputConfiguration.struct_class = Types::SrtCallerRouterInputConfiguration

    SrtCallerRouterOutputConfiguration.add_member(:destination_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationAddress"))
    SrtCallerRouterOutputConfiguration.add_member(:destination_port, Shapes::ShapeRef.new(shape: SrtCallerRouterOutputConfigurationDestinationPortInteger, required: true, location_name: "destinationPort"))
    SrtCallerRouterOutputConfiguration.add_member(:minimum_latency_milliseconds, Shapes::ShapeRef.new(shape: SrtCallerRouterOutputConfigurationMinimumLatencyMillisecondsLong, required: true, location_name: "minimumLatencyMilliseconds"))
    SrtCallerRouterOutputConfiguration.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    SrtCallerRouterOutputConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: SrtEncryptionConfiguration, location_name: "encryptionConfiguration"))
    SrtCallerRouterOutputConfiguration.struct_class = Types::SrtCallerRouterOutputConfiguration

    SrtCallerStandardDestinationEndpointConfiguration.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: SrtCallerStandardDestinationEndpointConfigurationSourceListenerPortInteger, required: true, location_name: "sourceListenerPort"))
    SrtCallerStandardDestinationEndpointConfiguration.add_member(:minimum_latency_milliseconds, Shapes::ShapeRef.new(shape: SrtCallerStandardDestinationEndpointConfigurationMinimumLatencyMillisecondsLong, required: true, location_name: "minimumLatencyMilliseconds"))
    SrtCallerStandardDestinationEndpointConfiguration.add_member(:encryption_passphrase, Shapes::ShapeRef.new(shape: EndpointEncryptionSecretConfiguration, location_name: "encryptionPassphrase"))
    SrtCallerStandardDestinationEndpointConfiguration.struct_class = Types::SrtCallerStandardDestinationEndpointConfiguration

    SrtCallerStandardSourceEndpointConfiguration.add_member(:destination_ingest_port, Shapes::ShapeRef.new(shape: SrtCallerStandardSourceEndpointConfigurationDestinationIngestPortInteger, required: true, location_name: "destinationIngestPort"))
    SrtCallerStandardSourceEndpointConfiguration.add_member(:minimum_latency_milliseconds, Shapes::ShapeRef.new(shape: SrtCallerStandardSourceEndpointConfigurationMinimumLatencyMillisecondsLong, required: true, location_name: "minimumLatencyMilliseconds"))
    SrtCallerStandardSourceEndpointConfiguration.add_member(:encryption_passphrase, Shapes::ShapeRef.new(shape: EndpointEncryptionSecretConfiguration, location_name: "encryptionPassphrase"))
    SrtCallerStandardSourceEndpointConfiguration.struct_class = Types::SrtCallerStandardSourceEndpointConfiguration

    SrtDecryptionConfiguration.add_member(:encryption_key, Shapes::ShapeRef.new(shape: SecretsManagerEncryptionKeyConfiguration, required: true, location_name: "encryptionKey"))
    SrtDecryptionConfiguration.struct_class = Types::SrtDecryptionConfiguration

    SrtEncryptionConfiguration.add_member(:encryption_key, Shapes::ShapeRef.new(shape: SecretsManagerEncryptionKeyConfiguration, required: true, location_name: "encryptionKey"))
    SrtEncryptionConfiguration.struct_class = Types::SrtEncryptionConfiguration

    SrtListenerRouterInputConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: SrtListenerRouterInputConfigurationPortInteger, required: true, location_name: "port"))
    SrtListenerRouterInputConfiguration.add_member(:minimum_latency_milliseconds, Shapes::ShapeRef.new(shape: SrtListenerRouterInputConfigurationMinimumLatencyMillisecondsLong, required: true, location_name: "minimumLatencyMilliseconds"))
    SrtListenerRouterInputConfiguration.add_member(:decryption_configuration, Shapes::ShapeRef.new(shape: SrtDecryptionConfiguration, location_name: "decryptionConfiguration"))
    SrtListenerRouterInputConfiguration.struct_class = Types::SrtListenerRouterInputConfiguration

    SrtListenerRouterOutputConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: SrtListenerRouterOutputConfigurationPortInteger, required: true, location_name: "port"))
    SrtListenerRouterOutputConfiguration.add_member(:minimum_latency_milliseconds, Shapes::ShapeRef.new(shape: SrtListenerRouterOutputConfigurationMinimumLatencyMillisecondsLong, required: true, location_name: "minimumLatencyMilliseconds"))
    SrtListenerRouterOutputConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: SrtEncryptionConfiguration, location_name: "encryptionConfiguration"))
    SrtListenerRouterOutputConfiguration.struct_class = Types::SrtListenerRouterOutputConfiguration

    SrtListenerStandardDestinationEndpointConfiguration.add_member(:destination_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationAddress"))
    SrtListenerStandardDestinationEndpointConfiguration.add_member(:destination_ingest_port, Shapes::ShapeRef.new(shape: SrtListenerStandardDestinationEndpointConfigurationDestinationIngestPortInteger, required: true, location_name: "destinationIngestPort"))
    SrtListenerStandardDestinationEndpointConfiguration.add_member(:minimum_latency_milliseconds, Shapes::ShapeRef.new(shape: SrtListenerStandardDestinationEndpointConfigurationMinimumLatencyMillisecondsLong, required: true, location_name: "minimumLatencyMilliseconds"))
    SrtListenerStandardDestinationEndpointConfiguration.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    SrtListenerStandardDestinationEndpointConfiguration.add_member(:encryption_passphrase, Shapes::ShapeRef.new(shape: EndpointEncryptionSecretConfiguration, location_name: "encryptionPassphrase"))
    SrtListenerStandardDestinationEndpointConfiguration.struct_class = Types::SrtListenerStandardDestinationEndpointConfiguration

    SrtListenerStandardSourceEndpointConfiguration.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: SrtListenerStandardSourceEndpointConfigurationSourceListenerPortInteger, required: true, location_name: "sourceListenerPort"))
    SrtListenerStandardSourceEndpointConfiguration.add_member(:source_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceAddress"))
    SrtListenerStandardSourceEndpointConfiguration.add_member(:minimum_latency_milliseconds, Shapes::ShapeRef.new(shape: SrtListenerStandardSourceEndpointConfigurationMinimumLatencyMillisecondsLong, required: true, location_name: "minimumLatencyMilliseconds"))
    SrtListenerStandardSourceEndpointConfiguration.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    SrtListenerStandardSourceEndpointConfiguration.add_member(:encryption_passphrase, Shapes::ShapeRef.new(shape: EndpointEncryptionSecretConfiguration, location_name: "encryptionPassphrase"))
    SrtListenerStandardSourceEndpointConfiguration.struct_class = Types::SrtListenerStandardSourceEndpointConfiguration

    StandardDestinationEndpointAssociatedResourceDetails.struct_class = Types::StandardDestinationEndpointAssociatedResourceDetails

    StandardDestinationEndpointConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: StandardDestinationEndpointConfigurationNameString, required: true, location_name: "name"))
    StandardDestinationEndpointConfiguration.add_member(:destination_networking_configuration, Shapes::ShapeRef.new(shape: StandardDestinationEndpointNetworkingConfiguration, required: true, location_name: "destinationNetworkingConfiguration"))
    StandardDestinationEndpointConfiguration.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: StandardDestinationEndpointProtocolConfiguration, required: true, location_name: "protocolConfiguration"))
    StandardDestinationEndpointConfiguration.add_member(:destination_networking_type, Shapes::ShapeRef.new(shape: DestinationEndpointNetworkingType, location_name: "destinationNetworkingType"))
    StandardDestinationEndpointConfiguration.add_member(:protocol, Shapes::ShapeRef.new(shape: DestinationEndpointProtocol, location_name: "protocol"))
    StandardDestinationEndpointConfiguration.struct_class = Types::StandardDestinationEndpointConfiguration

    StandardDestinationEndpointConnectionDetails.add_member(:source_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "sourceIpAddress"))
    StandardDestinationEndpointConnectionDetails.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "sourceListenerPort"))
    StandardDestinationEndpointConnectionDetails.add_member(:source_encryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "sourceEncryptionType"))
    StandardDestinationEndpointConnectionDetails.add_member(:source_encryption_configuration, Shapes::ShapeRef.new(shape: EndpointEncryptionConfiguration, location_name: "sourceEncryptionConfiguration"))
    StandardDestinationEndpointConnectionDetails.add_member(:source_endpoint_type, Shapes::ShapeRef.new(shape: SourceEndpointType, location_name: "sourceEndpointType"))
    StandardDestinationEndpointConnectionDetails.struct_class = Types::StandardDestinationEndpointConnectionDetails

    StandardDestinationEndpointNetworkingConfiguration.add_member(:public, Shapes::ShapeRef.new(shape: PublicDestinationEndpointNetworkingConfiguration, location_name: "public"))
    StandardDestinationEndpointNetworkingConfiguration.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcDestinationEndpointNetworkingConfiguration, location_name: "vpc"))
    StandardDestinationEndpointNetworkingConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StandardDestinationEndpointNetworkingConfiguration.add_member_subclass(:public, Types::StandardDestinationEndpointNetworkingConfiguration::Public)
    StandardDestinationEndpointNetworkingConfiguration.add_member_subclass(:vpc, Types::StandardDestinationEndpointNetworkingConfiguration::Vpc)
    StandardDestinationEndpointNetworkingConfiguration.add_member_subclass(:unknown, Types::StandardDestinationEndpointNetworkingConfiguration::Unknown)
    StandardDestinationEndpointNetworkingConfiguration.struct_class = Types::StandardDestinationEndpointNetworkingConfiguration

    StandardDestinationEndpointProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistStandardDestinationEndpointConfiguration, location_name: "rist"))
    StandardDestinationEndpointProtocolConfiguration.add_member(:srt_listener, Shapes::ShapeRef.new(shape: SrtListenerStandardDestinationEndpointConfiguration, location_name: "srtListener"))
    StandardDestinationEndpointProtocolConfiguration.add_member(:srt_caller, Shapes::ShapeRef.new(shape: SrtCallerStandardDestinationEndpointConfiguration, location_name: "srtCaller"))
    StandardDestinationEndpointProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpStandardDestinationEndpointConfiguration, location_name: "rtp"))
    StandardDestinationEndpointProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StandardDestinationEndpointProtocolConfiguration.add_member_subclass(:rist, Types::StandardDestinationEndpointProtocolConfiguration::Rist)
    StandardDestinationEndpointProtocolConfiguration.add_member_subclass(:srt_listener, Types::StandardDestinationEndpointProtocolConfiguration::SrtListener)
    StandardDestinationEndpointProtocolConfiguration.add_member_subclass(:srt_caller, Types::StandardDestinationEndpointProtocolConfiguration::SrtCaller)
    StandardDestinationEndpointProtocolConfiguration.add_member_subclass(:rtp, Types::StandardDestinationEndpointProtocolConfiguration::Rtp)
    StandardDestinationEndpointProtocolConfiguration.add_member_subclass(:unknown, Types::StandardDestinationEndpointProtocolConfiguration::Unknown)
    StandardDestinationEndpointProtocolConfiguration.struct_class = Types::StandardDestinationEndpointProtocolConfiguration

    StandardRouterInputConfiguration.add_member(:network_interface_arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location_name: "networkInterfaceArn"))
    StandardRouterInputConfiguration.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: RouterInputProtocolConfiguration, required: true, location_name: "protocolConfiguration"))
    StandardRouterInputConfiguration.add_member(:protocol, Shapes::ShapeRef.new(shape: RouterInputProtocol, location_name: "protocol"))
    StandardRouterInputConfiguration.struct_class = Types::StandardRouterInputConfiguration

    StandardRouterInputStreamDetails.add_member(:source_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "sourceIpAddress"))
    StandardRouterInputStreamDetails.struct_class = Types::StandardRouterInputStreamDetails

    StandardRouterOutputConfiguration.add_member(:network_interface_arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location_name: "networkInterfaceArn"))
    StandardRouterOutputConfiguration.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: RouterOutputProtocolConfiguration, required: true, location_name: "protocolConfiguration"))
    StandardRouterOutputConfiguration.add_member(:protocol, Shapes::ShapeRef.new(shape: RouterOutputProtocol, location_name: "protocol"))
    StandardRouterOutputConfiguration.struct_class = Types::StandardRouterOutputConfiguration

    StandardRouterOutputStreamDetails.add_member(:destination_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "destinationIpAddress"))
    StandardRouterOutputStreamDetails.struct_class = Types::StandardRouterOutputStreamDetails

    StandardSourceEndpointAssociatedResourceDetails.struct_class = Types::StandardSourceEndpointAssociatedResourceDetails

    StandardSourceEndpointConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: StandardSourceEndpointConfigurationNameString, required: true, location_name: "name"))
    StandardSourceEndpointConfiguration.add_member(:source_networking_configuration, Shapes::ShapeRef.new(shape: StandardSourceEndpointNetworkingConfiguration, required: true, location_name: "sourceNetworkingConfiguration"))
    StandardSourceEndpointConfiguration.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: StandardSourceEndpointProtocolConfiguration, required: true, location_name: "protocolConfiguration"))
    StandardSourceEndpointConfiguration.add_member(:source_networking_type, Shapes::ShapeRef.new(shape: SourceEndpointNetworkingType, location_name: "sourceNetworkingType"))
    StandardSourceEndpointConfiguration.add_member(:protocol, Shapes::ShapeRef.new(shape: SourceEndpointProtocol, location_name: "protocol"))
    StandardSourceEndpointConfiguration.struct_class = Types::StandardSourceEndpointConfiguration

    StandardSourceEndpointConnectionDetails.add_member(:destination_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "destinationIpAddress"))
    StandardSourceEndpointConnectionDetails.add_member(:destination_ingest_port, Shapes::ShapeRef.new(shape: Integer, location_name: "destinationIngestPort"))
    StandardSourceEndpointConnectionDetails.add_member(:destination_decryption_type, Shapes::ShapeRef.new(shape: EndpointEncryptionType, location_name: "destinationDecryptionType"))
    StandardSourceEndpointConnectionDetails.add_member(:destination_decryption_configuration, Shapes::ShapeRef.new(shape: EndpointEncryptionConfiguration, location_name: "destinationDecryptionConfiguration"))
    StandardSourceEndpointConnectionDetails.add_member(:destination_endpoint_type, Shapes::ShapeRef.new(shape: DestinationEndpointType, location_name: "destinationEndpointType"))
    StandardSourceEndpointConnectionDetails.struct_class = Types::StandardSourceEndpointConnectionDetails

    StandardSourceEndpointNetworkingConfiguration.add_member(:public, Shapes::ShapeRef.new(shape: PublicSourceEndpointNetworkingConfiguration, location_name: "public"))
    StandardSourceEndpointNetworkingConfiguration.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcSourceEndpointNetworkingConfiguration, location_name: "vpc"))
    StandardSourceEndpointNetworkingConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StandardSourceEndpointNetworkingConfiguration.add_member_subclass(:public, Types::StandardSourceEndpointNetworkingConfiguration::Public)
    StandardSourceEndpointNetworkingConfiguration.add_member_subclass(:vpc, Types::StandardSourceEndpointNetworkingConfiguration::Vpc)
    StandardSourceEndpointNetworkingConfiguration.add_member_subclass(:unknown, Types::StandardSourceEndpointNetworkingConfiguration::Unknown)
    StandardSourceEndpointNetworkingConfiguration.struct_class = Types::StandardSourceEndpointNetworkingConfiguration

    StandardSourceEndpointProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistStandardSourceEndpointConfiguration, location_name: "rist"))
    StandardSourceEndpointProtocolConfiguration.add_member(:srt_listener, Shapes::ShapeRef.new(shape: SrtListenerStandardSourceEndpointConfiguration, location_name: "srtListener"))
    StandardSourceEndpointProtocolConfiguration.add_member(:srt_caller, Shapes::ShapeRef.new(shape: SrtCallerStandardSourceEndpointConfiguration, location_name: "srtCaller"))
    StandardSourceEndpointProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpStandardSourceEndpointConfiguration, location_name: "rtp"))
    StandardSourceEndpointProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StandardSourceEndpointProtocolConfiguration.add_member_subclass(:rist, Types::StandardSourceEndpointProtocolConfiguration::Rist)
    StandardSourceEndpointProtocolConfiguration.add_member_subclass(:srt_listener, Types::StandardSourceEndpointProtocolConfiguration::SrtListener)
    StandardSourceEndpointProtocolConfiguration.add_member_subclass(:srt_caller, Types::StandardSourceEndpointProtocolConfiguration::SrtCaller)
    StandardSourceEndpointProtocolConfiguration.add_member_subclass(:rtp, Types::StandardSourceEndpointProtocolConfiguration::Rtp)
    StandardSourceEndpointProtocolConfiguration.add_member_subclass(:unknown, Types::StandardSourceEndpointProtocolConfiguration::Unknown)
    StandardSourceEndpointProtocolConfiguration.struct_class = Types::StandardSourceEndpointProtocolConfiguration

    StartFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: StartFlowRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    StartFlowRequest.struct_class = Types::StartFlowRequest

    StartFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    StartFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    StartFlowResponse.struct_class = Types::StartFlowResponse

    StartRouterInputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location: "uri", location_name: "Arn"))
    StartRouterInputRequest.struct_class = Types::StartRouterInputRequest

    StartRouterInputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    StartRouterInputResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    StartRouterInputResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterInputState, required: true, location_name: "state"))
    StartRouterInputResponse.add_member(:maintenance_schedule_type, Shapes::ShapeRef.new(shape: MaintenanceScheduleType, required: true, location_name: "maintenanceScheduleType"))
    StartRouterInputResponse.add_member(:maintenance_schedule, Shapes::ShapeRef.new(shape: MaintenanceSchedule, required: true, location_name: "maintenanceSchedule"))
    StartRouterInputResponse.struct_class = Types::StartRouterInputResponse

    StartRouterOutputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location: "uri", location_name: "Arn"))
    StartRouterOutputRequest.struct_class = Types::StartRouterOutputRequest

    StartRouterOutputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "arn"))
    StartRouterOutputResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    StartRouterOutputResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterOutputState, required: true, location_name: "state"))
    StartRouterOutputResponse.add_member(:maintenance_schedule_type, Shapes::ShapeRef.new(shape: MaintenanceScheduleType, required: true, location_name: "maintenanceScheduleType"))
    StartRouterOutputResponse.add_member(:maintenance_schedule, Shapes::ShapeRef.new(shape: MaintenanceSchedule, required: true, location_name: "maintenanceSchedule"))
    StartRouterOutputResponse.struct_class = Types::StartRouterOutputResponse

    StopFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: StopFlowRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    StopFlowRequest.struct_class = Types::StopFlowRequest

    StopFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    StopFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    StopFlowResponse.struct_class = Types::StopFlowResponse

    StopRouterInputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location: "uri", location_name: "Arn"))
    StopRouterInputRequest.struct_class = Types::StopRouterInputRequest

    StopRouterInputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location_name: "arn"))
    StopRouterInputResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    StopRouterInputResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterInputState, required: true, location_name: "state"))
    StopRouterInputResponse.struct_class = Types::StopRouterInputResponse

    StopRouterOutputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location: "uri", location_name: "Arn"))
    StopRouterOutputRequest.struct_class = Types::StopRouterOutputRequest

    StopRouterOutputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "arn"))
    StopRouterOutputResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    StopRouterOutputResponse.add_member(:state, Shapes::ShapeRef.new(shape: RouterOutputState, required: true, location_name: "state"))
    StopRouterOutputResponse.struct_class = Types::StopRouterOutputResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagGlobalResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    TagGlobalResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, required: true, location_name: "tags"))
    TagGlobalResourceRequest.struct_class = Types::TagGlobalResourceRequest

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TakeRouterInputRequest.add_member(:router_output_arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location: "uri", location_name: "RouterOutputArn"))
    TakeRouterInputRequest.add_member(:router_input_arn, Shapes::ShapeRef.new(shape: RouterInputArn, location_name: "routerInputArn"))
    TakeRouterInputRequest.struct_class = Types::TakeRouterInputRequest

    TakeRouterInputResponse.add_member(:routed_state, Shapes::ShapeRef.new(shape: RouterOutputRoutedState, required: true, location_name: "routedState"))
    TakeRouterInputResponse.add_member(:router_output_arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location_name: "routerOutputArn"))
    TakeRouterInputResponse.add_member(:router_output_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "routerOutputName"))
    TakeRouterInputResponse.add_member(:router_input_arn, Shapes::ShapeRef.new(shape: RouterInputArn, location_name: "routerInputArn"))
    TakeRouterInputResponse.add_member(:router_input_name, Shapes::ShapeRef.new(shape: String, location_name: "routerInputName"))
    TakeRouterInputResponse.struct_class = Types::TakeRouterInputResponse

    ThumbnailDetails.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "flowArn"))
    ThumbnailDetails.add_member(:thumbnail, Shapes::ShapeRef.new(shape: String, location_name: "thumbnail"))
    ThumbnailDetails.add_member(:thumbnail_messages, Shapes::ShapeRef.new(shape: __listOfMessageDetail, required: true, location_name: "thumbnailMessages"))
    ThumbnailDetails.add_member(:timecode, Shapes::ShapeRef.new(shape: String, location_name: "timecode"))
    ThumbnailDetails.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timestamp"))
    ThumbnailDetails.struct_class = Types::ThumbnailDetails

    TlsEncryption.add_member(:encryption_type, Shapes::ShapeRef.new(shape: TlsEncryptionType, location_name: "encryptionType"))
    TlsEncryption.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: TlsEncryptionConfiguration, required: true, location_name: "encryptionConfiguration"))
    TlsEncryption.struct_class = Types::TlsEncryption

    TlsEncryptionConfiguration.add_member(:public, Shapes::ShapeRef.new(shape: PublicTlsEncryptionConfiguration, location_name: "public"))
    TlsEncryptionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TlsEncryptionConfiguration.add_member_subclass(:public, Types::TlsEncryptionConfiguration::Public)
    TlsEncryptionConfiguration.add_member_subclass(:unknown, Types::TlsEncryptionConfiguration::Unknown)
    TlsEncryptionConfiguration.struct_class = Types::TlsEncryptionConfiguration

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Transport.add_member(:cidr_allow_list, Shapes::ShapeRef.new(shape: __listOfString, location_name: "cidrAllowList"))
    Transport.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "maxBitrate"))
    Transport.add_member(:max_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "maxLatency"))
    Transport.add_member(:max_sync_buffer, Shapes::ShapeRef.new(shape: Integer, location_name: "maxSyncBuffer"))
    Transport.add_member(:min_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "minLatency"))
    Transport.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    Transport.add_member(:remote_id, Shapes::ShapeRef.new(shape: String, location_name: "remoteId"))
    Transport.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: Integer, location_name: "senderControlPort"))
    Transport.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "senderIpAddress"))
    Transport.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "smoothingLatency"))
    Transport.add_member(:source_listener_address, Shapes::ShapeRef.new(shape: String, location_name: "sourceListenerAddress"))
    Transport.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "sourceListenerPort"))
    Transport.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    Transport.add_member(:ndi_speed_hq_quality, Shapes::ShapeRef.new(shape: Integer, location_name: "ndiSpeedHqQuality"))
    Transport.add_member(:ndi_program_name, Shapes::ShapeRef.new(shape: String, location_name: "ndiProgramName"))
    Transport.add_member(:ndi_source_settings, Shapes::ShapeRef.new(shape: NdiSourceSettings, location_name: "ndiSourceSettings"))
    Transport.add_member(:ndi_output_timecode_source, Shapes::ShapeRef.new(shape: NdiOutputTimecodeSource, location_name: "ndiOutputTimecodeSource"))
    Transport.add_member(:ndi_audio_reference_level, Shapes::ShapeRef.new(shape: NdiAudioReferenceLevel, location_name: "ndiAudioReferenceLevel"))
    Transport.struct_class = Types::Transport

    TransportMediaInfo.add_member(:programs, Shapes::ShapeRef.new(shape: __listOfTransportStreamProgram, required: true, location_name: "programs"))
    TransportMediaInfo.add_member(:ts_id, Shapes::ShapeRef.new(shape: Integer, location_name: "tsId"))
    TransportMediaInfo.struct_class = Types::TransportMediaInfo

    TransportStream.add_member(:channels, Shapes::ShapeRef.new(shape: Integer, location_name: "channels"))
    TransportStream.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "codec"))
    TransportStream.add_member(:color, Shapes::ShapeRef.new(shape: ColorInformation, location_name: "color"))
    TransportStream.add_member(:frame_rate, Shapes::ShapeRef.new(shape: String, location_name: "frameRate"))
    TransportStream.add_member(:frame_resolution, Shapes::ShapeRef.new(shape: FrameResolution, location_name: "frameResolution"))
    TransportStream.add_member(:pid, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "pid"))
    TransportStream.add_member(:sample_rate, Shapes::ShapeRef.new(shape: Integer, location_name: "sampleRate"))
    TransportStream.add_member(:sample_size, Shapes::ShapeRef.new(shape: Integer, location_name: "sampleSize"))
    TransportStream.add_member(:stream_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "streamType"))
    TransportStream.struct_class = Types::TransportStream

    TransportStreamProgram.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "pcrPid"))
    TransportStreamProgram.add_member(:program_name, Shapes::ShapeRef.new(shape: String, location_name: "programName"))
    TransportStreamProgram.add_member(:program_number, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "programNumber"))
    TransportStreamProgram.add_member(:program_pid, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "programPid"))
    TransportStreamProgram.add_member(:streams, Shapes::ShapeRef.new(shape: __listOfTransportStream, required: true, location_name: "streams"))
    TransportStreamProgram.struct_class = Types::TransportStreamProgram

    UntagGlobalResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    UntagGlobalResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOfString, required: true, location: "querystring", location_name: "tagKeys"))
    UntagGlobalResourceRequest.struct_class = Types::UntagGlobalResourceRequest

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOfString, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateBridgeFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: UpdateBridgeFlowSourceRequestFlowArnString, location_name: "flowArn"))
    UpdateBridgeFlowSourceRequest.add_member(:flow_vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "flowVpcInterfaceAttachment"))
    UpdateBridgeFlowSourceRequest.struct_class = Types::UpdateBridgeFlowSourceRequest

    UpdateBridgeNetworkOutputRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "ipAddress"))
    UpdateBridgeNetworkOutputRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: String, location_name: "networkName"))
    UpdateBridgeNetworkOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    UpdateBridgeNetworkOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateBridgeNetworkOutputRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: Integer, location_name: "ttl"))
    UpdateBridgeNetworkOutputRequest.struct_class = Types::UpdateBridgeNetworkOutputRequest

    UpdateBridgeNetworkSourceRequest.add_member(:multicast_ip, Shapes::ShapeRef.new(shape: String, location_name: "multicastIp"))
    UpdateBridgeNetworkSourceRequest.add_member(:multicast_source_settings, Shapes::ShapeRef.new(shape: MulticastSourceSettings, location_name: "multicastSourceSettings"))
    UpdateBridgeNetworkSourceRequest.add_member(:network_name, Shapes::ShapeRef.new(shape: String, location_name: "networkName"))
    UpdateBridgeNetworkSourceRequest.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    UpdateBridgeNetworkSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateBridgeNetworkSourceRequest.struct_class = Types::UpdateBridgeNetworkSourceRequest

    UpdateBridgeOutputRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: UpdateBridgeOutputRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    UpdateBridgeOutputRequest.add_member(:network_output, Shapes::ShapeRef.new(shape: UpdateBridgeNetworkOutputRequest, location_name: "networkOutput"))
    UpdateBridgeOutputRequest.add_member(:output_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "OutputName"))
    UpdateBridgeOutputRequest.struct_class = Types::UpdateBridgeOutputRequest

    UpdateBridgeOutputResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    UpdateBridgeOutputResponse.add_member(:output, Shapes::ShapeRef.new(shape: BridgeOutput, location_name: "output"))
    UpdateBridgeOutputResponse.struct_class = Types::UpdateBridgeOutputResponse

    UpdateBridgeRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: UpdateBridgeRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    UpdateBridgeRequest.add_member(:egress_gateway_bridge, Shapes::ShapeRef.new(shape: UpdateEgressGatewayBridgeRequest, location_name: "egressGatewayBridge"))
    UpdateBridgeRequest.add_member(:ingress_gateway_bridge, Shapes::ShapeRef.new(shape: UpdateIngressGatewayBridgeRequest, location_name: "ingressGatewayBridge"))
    UpdateBridgeRequest.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: UpdateFailoverConfig, location_name: "sourceFailoverConfig"))
    UpdateBridgeRequest.struct_class = Types::UpdateBridgeRequest

    UpdateBridgeResponse.add_member(:bridge, Shapes::ShapeRef.new(shape: Bridge, location_name: "bridge"))
    UpdateBridgeResponse.struct_class = Types::UpdateBridgeResponse

    UpdateBridgeSourceRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: UpdateBridgeSourceRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    UpdateBridgeSourceRequest.add_member(:flow_source, Shapes::ShapeRef.new(shape: UpdateBridgeFlowSourceRequest, location_name: "flowSource"))
    UpdateBridgeSourceRequest.add_member(:network_source, Shapes::ShapeRef.new(shape: UpdateBridgeNetworkSourceRequest, location_name: "networkSource"))
    UpdateBridgeSourceRequest.add_member(:source_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "SourceName"))
    UpdateBridgeSourceRequest.struct_class = Types::UpdateBridgeSourceRequest

    UpdateBridgeSourceResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    UpdateBridgeSourceResponse.add_member(:source, Shapes::ShapeRef.new(shape: BridgeSource, location_name: "source"))
    UpdateBridgeSourceResponse.struct_class = Types::UpdateBridgeSourceResponse

    UpdateBridgeStateRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: UpdateBridgeStateRequestBridgeArnString, required: true, location: "uri", location_name: "BridgeArn"))
    UpdateBridgeStateRequest.add_member(:desired_state, Shapes::ShapeRef.new(shape: DesiredState, required: true, location_name: "desiredState"))
    UpdateBridgeStateRequest.struct_class = Types::UpdateBridgeStateRequest

    UpdateBridgeStateResponse.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: String, location_name: "bridgeArn"))
    UpdateBridgeStateResponse.add_member(:desired_state, Shapes::ShapeRef.new(shape: DesiredState, location_name: "desiredState"))
    UpdateBridgeStateResponse.struct_class = Types::UpdateBridgeStateResponse

    UpdateDestinationEndpointRequest.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationEndpointArn, required: true, location: "uri", location_name: "Arn"))
    UpdateDestinationEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateDestinationEndpointRequestDescriptionString, location_name: "description"))
    UpdateDestinationEndpointRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DestinationEndpointConfiguration, location_name: "configuration"))
    UpdateDestinationEndpointRequest.struct_class = Types::UpdateDestinationEndpointRequest

    UpdateDestinationEndpointResponse.add_member(:destination_endpoint, Shapes::ShapeRef.new(shape: DestinationEndpoint, required: true, location_name: "destinationEndpoint"))
    UpdateDestinationEndpointResponse.struct_class = Types::UpdateDestinationEndpointResponse

    UpdateEgressGatewayBridgeRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "maxBitrate"))
    UpdateEgressGatewayBridgeRequest.struct_class = Types::UpdateEgressGatewayBridgeRequest

    UpdateEncryption.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "algorithm"))
    UpdateEncryption.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: String, location_name: "constantInitializationVector"))
    UpdateEncryption.add_member(:device_id, Shapes::ShapeRef.new(shape: String, location_name: "deviceId"))
    UpdateEncryption.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, location_name: "keyType"))
    UpdateEncryption.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    UpdateEncryption.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    UpdateEncryption.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    UpdateEncryption.add_member(:secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "secretArn"))
    UpdateEncryption.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    UpdateEncryption.struct_class = Types::UpdateEncryption

    UpdateFailoverConfig.add_member(:failover_mode, Shapes::ShapeRef.new(shape: FailoverMode, location_name: "failoverMode"))
    UpdateFailoverConfig.add_member(:recovery_window, Shapes::ShapeRef.new(shape: Integer, location_name: "recoveryWindow"))
    UpdateFailoverConfig.add_member(:source_priority, Shapes::ShapeRef.new(shape: SourcePriority, location_name: "sourcePriority"))
    UpdateFailoverConfig.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    UpdateFailoverConfig.struct_class = Types::UpdateFailoverConfig

    UpdateFlowEntitlementRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateFlowEntitlementRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "encryption"))
    UpdateFlowEntitlementRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: UpdateFlowEntitlementRequestEntitlementArnString, required: true, location: "uri", location_name: "EntitlementArn"))
    UpdateFlowEntitlementRequest.add_member(:entitlement_status, Shapes::ShapeRef.new(shape: EntitlementStatus, location_name: "entitlementStatus"))
    UpdateFlowEntitlementRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: UpdateFlowEntitlementRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    UpdateFlowEntitlementRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOfString, location_name: "subscribers"))
    UpdateFlowEntitlementRequest.struct_class = Types::UpdateFlowEntitlementRequest

    UpdateFlowEntitlementResponse.add_member(:entitlement, Shapes::ShapeRef.new(shape: Entitlement, location_name: "entitlement"))
    UpdateFlowEntitlementResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    UpdateFlowEntitlementResponse.struct_class = Types::UpdateFlowEntitlementResponse

    UpdateFlowMediaStreamRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: MediaStreamAttributesRequest, location_name: "attributes"))
    UpdateFlowMediaStreamRequest.add_member(:clock_rate, Shapes::ShapeRef.new(shape: Integer, location_name: "clockRate"))
    UpdateFlowMediaStreamRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateFlowMediaStreamRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: UpdateFlowMediaStreamRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    UpdateFlowMediaStreamRequest.add_member(:media_stream_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "MediaStreamName"))
    UpdateFlowMediaStreamRequest.add_member(:media_stream_type, Shapes::ShapeRef.new(shape: MediaStreamType, location_name: "mediaStreamType"))
    UpdateFlowMediaStreamRequest.add_member(:video_format, Shapes::ShapeRef.new(shape: String, location_name: "videoFormat"))
    UpdateFlowMediaStreamRequest.struct_class = Types::UpdateFlowMediaStreamRequest

    UpdateFlowMediaStreamResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    UpdateFlowMediaStreamResponse.add_member(:media_stream, Shapes::ShapeRef.new(shape: MediaStream, location_name: "mediaStream"))
    UpdateFlowMediaStreamResponse.struct_class = Types::UpdateFlowMediaStreamResponse

    UpdateFlowOutputRequest.add_member(:cidr_allow_list, Shapes::ShapeRef.new(shape: __listOfString, location_name: "cidrAllowList"))
    UpdateFlowOutputRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateFlowOutputRequest.add_member(:destination, Shapes::ShapeRef.new(shape: String, location_name: "destination"))
    UpdateFlowOutputRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "encryption"))
    UpdateFlowOutputRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: UpdateFlowOutputRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    UpdateFlowOutputRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "maxLatency"))
    UpdateFlowOutputRequest.add_member(:media_stream_output_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamOutputConfigurationRequest, location_name: "mediaStreamOutputConfigurations"))
    UpdateFlowOutputRequest.add_member(:min_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "minLatency"))
    UpdateFlowOutputRequest.add_member(:output_arn, Shapes::ShapeRef.new(shape: UpdateFlowOutputRequestOutputArnString, required: true, location: "uri", location_name: "OutputArn"))
    UpdateFlowOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    UpdateFlowOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateFlowOutputRequest.add_member(:remote_id, Shapes::ShapeRef.new(shape: String, location_name: "remoteId"))
    UpdateFlowOutputRequest.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: Integer, location_name: "senderControlPort"))
    UpdateFlowOutputRequest.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "senderIpAddress"))
    UpdateFlowOutputRequest.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "smoothingLatency"))
    UpdateFlowOutputRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    UpdateFlowOutputRequest.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    UpdateFlowOutputRequest.add_member(:output_status, Shapes::ShapeRef.new(shape: OutputStatus, location_name: "outputStatus"))
    UpdateFlowOutputRequest.add_member(:ndi_program_name, Shapes::ShapeRef.new(shape: String, location_name: "ndiProgramName"))
    UpdateFlowOutputRequest.add_member(:ndi_speed_hq_quality, Shapes::ShapeRef.new(shape: Integer, location_name: "ndiSpeedHqQuality"))
    UpdateFlowOutputRequest.add_member(:router_integration_state, Shapes::ShapeRef.new(shape: State, location_name: "routerIntegrationState"))
    UpdateFlowOutputRequest.add_member(:router_integration_transit_encryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, location_name: "routerIntegrationTransitEncryption"))
    UpdateFlowOutputRequest.add_member(:ndi_output_timecode_source, Shapes::ShapeRef.new(shape: NdiOutputTimecodeSource, location_name: "ndiOutputTimecodeSource"))
    UpdateFlowOutputRequest.add_member(:ndi_audio_reference_level, Shapes::ShapeRef.new(shape: NdiAudioReferenceLevel, location_name: "ndiAudioReferenceLevel"))
    UpdateFlowOutputRequest.struct_class = Types::UpdateFlowOutputRequest

    UpdateFlowOutputResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    UpdateFlowOutputResponse.add_member(:output, Shapes::ShapeRef.new(shape: Output, location_name: "output"))
    UpdateFlowOutputResponse.struct_class = Types::UpdateFlowOutputResponse

    UpdateFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: UpdateFlowRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    UpdateFlowRequest.add_member(:source_failover_config, Shapes::ShapeRef.new(shape: UpdateFailoverConfig, location_name: "sourceFailoverConfig"))
    UpdateFlowRequest.add_member(:maintenance, Shapes::ShapeRef.new(shape: UpdateMaintenance, location_name: "maintenance"))
    UpdateFlowRequest.add_member(:source_monitoring_config, Shapes::ShapeRef.new(shape: MonitoringConfig, location_name: "sourceMonitoringConfig"))
    UpdateFlowRequest.add_member(:ndi_config, Shapes::ShapeRef.new(shape: NdiConfig, location_name: "ndiConfig"))
    UpdateFlowRequest.add_member(:flow_size, Shapes::ShapeRef.new(shape: FlowSize, location_name: "flowSize"))
    UpdateFlowRequest.add_member(:encoding_config, Shapes::ShapeRef.new(shape: EncodingConfig, location_name: "encodingConfig"))
    UpdateFlowRequest.struct_class = Types::UpdateFlowRequest

    UpdateFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: Flow, location_name: "flow"))
    UpdateFlowResponse.struct_class = Types::UpdateFlowResponse

    UpdateFlowSourceRequest.add_member(:decryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "decryption"))
    UpdateFlowSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateFlowSourceRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: UpdateFlowSourceRequestEntitlementArnString, location_name: "entitlementArn"))
    UpdateFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: UpdateFlowSourceRequestFlowArnString, required: true, location: "uri", location_name: "FlowArn"))
    UpdateFlowSourceRequest.add_member(:ingest_port, Shapes::ShapeRef.new(shape: Integer, location_name: "ingestPort"))
    UpdateFlowSourceRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "maxBitrate"))
    UpdateFlowSourceRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "maxLatency"))
    UpdateFlowSourceRequest.add_member(:max_sync_buffer, Shapes::ShapeRef.new(shape: Integer, location_name: "maxSyncBuffer"))
    UpdateFlowSourceRequest.add_member(:media_stream_source_configurations, Shapes::ShapeRef.new(shape: __listOfMediaStreamSourceConfigurationRequest, location_name: "mediaStreamSourceConfigurations"))
    UpdateFlowSourceRequest.add_member(:min_latency, Shapes::ShapeRef.new(shape: Integer, location_name: "minLatency"))
    UpdateFlowSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateFlowSourceRequest.add_member(:sender_control_port, Shapes::ShapeRef.new(shape: Integer, location_name: "senderControlPort"))
    UpdateFlowSourceRequest.add_member(:sender_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "senderIpAddress"))
    UpdateFlowSourceRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: UpdateFlowSourceRequestSourceArnString, required: true, location: "uri", location_name: "SourceArn"))
    UpdateFlowSourceRequest.add_member(:source_listener_address, Shapes::ShapeRef.new(shape: String, location_name: "sourceListenerAddress"))
    UpdateFlowSourceRequest.add_member(:source_listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "sourceListenerPort"))
    UpdateFlowSourceRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: String, location_name: "streamId"))
    UpdateFlowSourceRequest.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: String, location_name: "vpcInterfaceName"))
    UpdateFlowSourceRequest.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: String, location_name: "whitelistCidr"))
    UpdateFlowSourceRequest.add_member(:gateway_bridge_source, Shapes::ShapeRef.new(shape: UpdateGatewayBridgeSourceRequest, location_name: "gatewayBridgeSource"))
    UpdateFlowSourceRequest.add_member(:ndi_source_settings, Shapes::ShapeRef.new(shape: NdiSourceSettings, location_name: "ndiSourceSettings"))
    UpdateFlowSourceRequest.add_member(:router_integration_state, Shapes::ShapeRef.new(shape: State, location_name: "routerIntegrationState"))
    UpdateFlowSourceRequest.add_member(:router_integration_transit_decryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, location_name: "routerIntegrationTransitDecryption"))
    UpdateFlowSourceRequest.struct_class = Types::UpdateFlowSourceRequest

    UpdateFlowSourceResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: String, location_name: "flowArn"))
    UpdateFlowSourceResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    UpdateFlowSourceResponse.struct_class = Types::UpdateFlowSourceResponse

    UpdateGatewayBridgeSourceRequest.add_member(:bridge_arn, Shapes::ShapeRef.new(shape: UpdateGatewayBridgeSourceRequestBridgeArnString, location_name: "bridgeArn"))
    UpdateGatewayBridgeSourceRequest.add_member(:vpc_interface_attachment, Shapes::ShapeRef.new(shape: VpcInterfaceAttachment, location_name: "vpcInterfaceAttachment"))
    UpdateGatewayBridgeSourceRequest.struct_class = Types::UpdateGatewayBridgeSourceRequest

    UpdateGatewayInstanceRequest.add_member(:bridge_placement, Shapes::ShapeRef.new(shape: BridgePlacement, location_name: "bridgePlacement"))
    UpdateGatewayInstanceRequest.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: UpdateGatewayInstanceRequestGatewayInstanceArnString, required: true, location: "uri", location_name: "GatewayInstanceArn"))
    UpdateGatewayInstanceRequest.struct_class = Types::UpdateGatewayInstanceRequest

    UpdateGatewayInstanceResponse.add_member(:bridge_placement, Shapes::ShapeRef.new(shape: BridgePlacement, location_name: "bridgePlacement"))
    UpdateGatewayInstanceResponse.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "gatewayInstanceArn"))
    UpdateGatewayInstanceResponse.struct_class = Types::UpdateGatewayInstanceResponse

    UpdateIngressGatewayBridgeRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "maxBitrate"))
    UpdateIngressGatewayBridgeRequest.add_member(:max_outputs, Shapes::ShapeRef.new(shape: Integer, location_name: "maxOutputs"))
    UpdateIngressGatewayBridgeRequest.struct_class = Types::UpdateIngressGatewayBridgeRequest

    UpdateMaintenance.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, location_name: "maintenanceDay"))
    UpdateMaintenance.add_member(:maintenance_scheduled_date, Shapes::ShapeRef.new(shape: String, location_name: "maintenanceScheduledDate"))
    UpdateMaintenance.add_member(:maintenance_start_hour, Shapes::ShapeRef.new(shape: String, location_name: "maintenanceStartHour"))
    UpdateMaintenance.struct_class = Types::UpdateMaintenance

    UpdateRouterInputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterInputArn, required: true, location: "uri", location_name: "Arn"))
    UpdateRouterInputRequest.add_member(:name, Shapes::ShapeRef.new(shape: UpdateRouterInputRequestNameString, location_name: "name"))
    UpdateRouterInputRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterInputConfiguration, location_name: "configuration"))
    UpdateRouterInputRequest.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, location_name: "maximumBitrate"))
    UpdateRouterInputRequest.add_member(:routing_scope, Shapes::ShapeRef.new(shape: RoutingScope, location_name: "routingScope"))
    UpdateRouterInputRequest.add_member(:tier, Shapes::ShapeRef.new(shape: RouterInputTier, location_name: "tier"))
    UpdateRouterInputRequest.add_member(:transit_encryption, Shapes::ShapeRef.new(shape: RouterInputTransitEncryption, location_name: "transitEncryption"))
    UpdateRouterInputRequest.add_member(:maintenance_configuration, Shapes::ShapeRef.new(shape: MaintenanceConfiguration, location_name: "maintenanceConfiguration"))
    UpdateRouterInputRequest.add_member(:content_quality_analysis_configuration, Shapes::ShapeRef.new(shape: RouterContentQualityAnalysisConfiguration, location_name: "contentQualityAnalysisConfiguration"))
    UpdateRouterInputRequest.struct_class = Types::UpdateRouterInputRequest

    UpdateRouterInputResponse.add_member(:router_input, Shapes::ShapeRef.new(shape: RouterInput, required: true, location_name: "routerInput"))
    UpdateRouterInputResponse.struct_class = Types::UpdateRouterInputResponse

    UpdateRouterNetworkInterfaceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArn, required: true, location: "uri", location_name: "Arn"))
    UpdateRouterNetworkInterfaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: UpdateRouterNetworkInterfaceRequestNameString, location_name: "name"))
    UpdateRouterNetworkInterfaceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceConfiguration, location_name: "configuration"))
    UpdateRouterNetworkInterfaceRequest.struct_class = Types::UpdateRouterNetworkInterfaceRequest

    UpdateRouterNetworkInterfaceResponse.add_member(:router_network_interface, Shapes::ShapeRef.new(shape: RouterNetworkInterface, required: true, location_name: "routerNetworkInterface"))
    UpdateRouterNetworkInterfaceResponse.struct_class = Types::UpdateRouterNetworkInterfaceResponse

    UpdateRouterOutputRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RouterOutputArn, required: true, location: "uri", location_name: "Arn"))
    UpdateRouterOutputRequest.add_member(:name, Shapes::ShapeRef.new(shape: UpdateRouterOutputRequestNameString, location_name: "name"))
    UpdateRouterOutputRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterOutputConfiguration, location_name: "configuration"))
    UpdateRouterOutputRequest.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: Long, location_name: "maximumBitrate"))
    UpdateRouterOutputRequest.add_member(:routing_scope, Shapes::ShapeRef.new(shape: RoutingScope, location_name: "routingScope"))
    UpdateRouterOutputRequest.add_member(:tier, Shapes::ShapeRef.new(shape: RouterOutputTier, location_name: "tier"))
    UpdateRouterOutputRequest.add_member(:maintenance_configuration, Shapes::ShapeRef.new(shape: MaintenanceConfiguration, location_name: "maintenanceConfiguration"))
    UpdateRouterOutputRequest.add_member(:fabric_configuration, Shapes::ShapeRef.new(shape: FabricConfiguration, location_name: "fabricConfiguration"))
    UpdateRouterOutputRequest.struct_class = Types::UpdateRouterOutputRequest

    UpdateRouterOutputResponse.add_member(:router_output, Shapes::ShapeRef.new(shape: RouterOutput, required: true, location_name: "routerOutput"))
    UpdateRouterOutputResponse.struct_class = Types::UpdateRouterOutputResponse

    UpdateSourceEndpointRequest.add_member(:arn, Shapes::ShapeRef.new(shape: SourceEndpointArn, required: true, location: "uri", location_name: "Arn"))
    UpdateSourceEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateSourceEndpointRequestDescriptionString, location_name: "description"))
    UpdateSourceEndpointRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: SourceEndpointConfiguration, location_name: "configuration"))
    UpdateSourceEndpointRequest.struct_class = Types::UpdateSourceEndpointRequest

    UpdateSourceEndpointResponse.add_member(:source_endpoint, Shapes::ShapeRef.new(shape: SourceEndpoint, required: true, location_name: "sourceEndpoint"))
    UpdateSourceEndpointResponse.struct_class = Types::UpdateSourceEndpointResponse

    VideoMonitoringSetting.add_member(:black_frames, Shapes::ShapeRef.new(shape: BlackFrames, location_name: "blackFrames"))
    VideoMonitoringSetting.add_member(:frozen_frames, Shapes::ShapeRef.new(shape: FrozenFrames, location_name: "frozenFrames"))
    VideoMonitoringSetting.struct_class = Types::VideoMonitoringSetting

    VpcDestinationEndpointNetworkingConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: VpcDestinationEndpointNetworkingConfigurationSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    VpcDestinationEndpointNetworkingConfiguration.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "subnetId"))
    VpcDestinationEndpointNetworkingConfiguration.struct_class = Types::VpcDestinationEndpointNetworkingConfiguration

    VpcDestinationEndpointNetworkingConfigurationSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: String)

    VpcInterface.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    VpcInterface.add_member(:network_interface_ids, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "networkInterfaceIds"))
    VpcInterface.add_member(:network_interface_type, Shapes::ShapeRef.new(shape: NetworkInterfaceType, required: true, location_name: "networkInterfaceType"))
    VpcInterface.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    VpcInterface.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "securityGroupIds"))
    VpcInterface.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "subnetId"))
    VpcInterface.struct_class = Types::VpcInterface

    VpcInterfaceAttachment.add_member(:vpc_interface_name, Shapes::ShapeRef.new(shape: String, location_name: "vpcInterfaceName"))
    VpcInterfaceAttachment.struct_class = Types::VpcInterfaceAttachment

    VpcInterfaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    VpcInterfaceRequest.add_member(:network_interface_type, Shapes::ShapeRef.new(shape: NetworkInterfaceType, location_name: "networkInterfaceType"))
    VpcInterfaceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    VpcInterfaceRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "securityGroupIds"))
    VpcInterfaceRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "subnetId"))
    VpcInterfaceRequest.add_member(:vpc_interface_tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "vpcInterfaceTags"))
    VpcInterfaceRequest.struct_class = Types::VpcInterfaceRequest

    VpcRouterNetworkInterfaceConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: VpcRouterNetworkInterfaceConfigurationSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    VpcRouterNetworkInterfaceConfiguration.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "subnetId"))
    VpcRouterNetworkInterfaceConfiguration.struct_class = Types::VpcRouterNetworkInterfaceConfiguration

    VpcRouterNetworkInterfaceConfigurationSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: String)

    VpcSourceEndpointNetworkingConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: VpcSourceEndpointNetworkingConfigurationSecurityGroupIdsList, required: true, location_name: "securityGroupIds"))
    VpcSourceEndpointNetworkingConfiguration.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "subnetId"))
    VpcSourceEndpointNetworkingConfiguration.struct_class = Types::VpcSourceEndpointNetworkingConfiguration

    VpcSourceEndpointNetworkingConfigurationSecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: String)

    WindowMaintenanceSchedule.add_member(:start, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "start"))
    WindowMaintenanceSchedule.add_member(:end, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "end"))
    WindowMaintenanceSchedule.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "scheduledTime"))
    WindowMaintenanceSchedule.struct_class = Types::WindowMaintenanceSchedule

    __listOfAddBridgeOutputRequest.member = Shapes::ShapeRef.new(shape: AddBridgeOutputRequest)

    __listOfAddBridgeSourceRequest.member = Shapes::ShapeRef.new(shape: AddBridgeSourceRequest)

    __listOfAddMediaStreamRequest.member = Shapes::ShapeRef.new(shape: AddMediaStreamRequest)

    __listOfAddOutputRequest.member = Shapes::ShapeRef.new(shape: AddOutputRequest)

    __listOfAudioMonitoringSetting.member = Shapes::ShapeRef.new(shape: AudioMonitoringSetting)

    __listOfBridgeOutput.member = Shapes::ShapeRef.new(shape: BridgeOutput)

    __listOfBridgeSource.member = Shapes::ShapeRef.new(shape: BridgeSource)

    __listOfDestinationConfiguration.member = Shapes::ShapeRef.new(shape: DestinationConfiguration)

    __listOfDestinationConfigurationRequest.member = Shapes::ShapeRef.new(shape: DestinationConfigurationRequest)

    __listOfEntitlement.member = Shapes::ShapeRef.new(shape: Entitlement)

    __listOfGatewayNetwork.member = Shapes::ShapeRef.new(shape: GatewayNetwork)

    __listOfGrantEntitlementRequest.member = Shapes::ShapeRef.new(shape: GrantEntitlementRequest)

    __listOfInputConfiguration.member = Shapes::ShapeRef.new(shape: InputConfiguration)

    __listOfInputConfigurationRequest.member = Shapes::ShapeRef.new(shape: InputConfigurationRequest)

    __listOfInteger.member = Shapes::ShapeRef.new(shape: Integer)

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

    __listOfNdiDiscoveryServerConfig.member = Shapes::ShapeRef.new(shape: NdiDiscoveryServerConfig)

    __listOfNdiMediaStreamInfo.member = Shapes::ShapeRef.new(shape: NdiMediaStreamInfo)

    __listOfNdiSourceInfo.member = Shapes::ShapeRef.new(shape: NdiSourceInfo)

    __listOfOffering.member = Shapes::ShapeRef.new(shape: Offering)

    __listOfOutput.member = Shapes::ShapeRef.new(shape: Output)

    __listOfReservation.member = Shapes::ShapeRef.new(shape: Reservation)

    __listOfSetSourceRequest.member = Shapes::ShapeRef.new(shape: SetSourceRequest)

    __listOfSource.member = Shapes::ShapeRef.new(shape: Source)

    __listOfString.member = Shapes::ShapeRef.new(shape: String)

    __listOfTransportStream.member = Shapes::ShapeRef.new(shape: TransportStream)

    __listOfTransportStreamProgram.member = Shapes::ShapeRef.new(shape: TransportStreamProgram)

    __listOfVideoMonitoringSetting.member = Shapes::ShapeRef.new(shape: VideoMonitoringSetting)

    __listOfVpcInterface.member = Shapes::ShapeRef.new(shape: VpcInterface)

    __listOfVpcInterfaceRequest.member = Shapes::ShapeRef.new(shape: VpcInterfaceRequest)

    __mapOfString.key = Shapes::ShapeRef.new(shape: String)
    __mapOfString.value = Shapes::ShapeRef.new(shape: String)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-14"

      api.metadata = {
        "apiVersion" => "2018-11-14",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "mediaconnect",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS MediaConnect",
        "serviceId" => "MediaConnect",
        "signatureVersion" => "v4",
        "signingName" => "mediaconnect",
        "uid" => "mediaconnect-2018-11-14",
      }

      api.add_operation(:add_bridge_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddBridgeOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/bridges/{BridgeArn}/outputs"
        o.input = Shapes::ShapeRef.new(shape: AddBridgeOutputsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddBridgeOutputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:add_bridge_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddBridgeSources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/bridges/{BridgeArn}/sources"
        o.input = Shapes::ShapeRef.new(shape: AddBridgeSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddBridgeSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:add_flow_media_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowMediaStreams"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{FlowArn}/mediaStreams"
        o.input = Shapes::ShapeRef.new(shape: AddFlowMediaStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowMediaStreamsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:add_flow_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{FlowArn}/outputs"
        o.input = Shapes::ShapeRef.new(shape: AddFlowOutputsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowOutputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AddFlowOutputs420Exception)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:add_flow_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowSources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{FlowArn}/source"
        o.input = Shapes::ShapeRef.new(shape: AddFlowSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:add_flow_vpc_interfaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowVpcInterfaces"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{FlowArn}/vpcInterfaces"
        o.input = Shapes::ShapeRef.new(shape: AddFlowVpcInterfacesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowVpcInterfacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:batch_get_destination_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDestinationEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/v1/destinationEndpoints"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDestinationEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDestinationEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:batch_get_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetRouterInput"
        o.http_method = "GET"
        o.http_request_uri = "/v1/routerInputs"
        o.input = Shapes::ShapeRef.new(shape: BatchGetRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:batch_get_router_network_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetRouterNetworkInterface"
        o.http_method = "GET"
        o.http_request_uri = "/v1/routerNetworkInterfaces"
        o.input = Shapes::ShapeRef.new(shape: BatchGetRouterNetworkInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetRouterNetworkInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:batch_get_router_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetRouterOutput"
        o.http_method = "GET"
        o.http_request_uri = "/v1/routerOutputs"
        o.input = Shapes::ShapeRef.new(shape: BatchGetRouterOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetRouterOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:batch_get_source_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetSourceEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/v1/sourceEndpoints"
        o.input = Shapes::ShapeRef.new(shape: BatchGetSourceEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetSourceEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:connect_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConnectEndpoints"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/connectEndpoints/{DestinationEndpointArn}"
        o.input = Shapes::ShapeRef.new(shape: ConnectEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ConnectEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBridge"
        o.http_method = "POST"
        o.http_request_uri = "/v1/bridges"
        o.input = Shapes::ShapeRef.new(shape: CreateBridgeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CreateBridge420Exception)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: CreateFlow420Exception)
      end)

      api.add_operation(:create_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGateway"
        o.http_method = "POST"
        o.http_request_uri = "/v1/gateways"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: CreateGateway420Exception)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRouterInput"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerInput"
        o.input = Shapes::ShapeRef.new(shape: CreateRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: RouterInputServiceQuotaExceededException)
      end)

      api.add_operation(:create_router_network_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRouterNetworkInterface"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerNetworkInterface"
        o.input = Shapes::ShapeRef.new(shape: CreateRouterNetworkInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRouterNetworkInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: RouterNetworkInterfaceServiceQuotaExceededException)
      end)

      api.add_operation(:create_router_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRouterOutput"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerOutput"
        o.input = Shapes::ShapeRef.new(shape: CreateRouterOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRouterOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: RouterOutputServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBridge"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/bridges/{BridgeArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBridgeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{FlowArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/gateways/{GatewayArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRouterInput"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/routerInput/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_router_network_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRouterNetworkInterface"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/routerNetworkInterface/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouterNetworkInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRouterNetworkInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_router_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRouterOutput"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/routerOutput/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouterOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRouterOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:deregister_destination_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterDestinationEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/destinationEndpoint/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterDestinationEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterDestinationEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:deregister_gateway_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterGatewayInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/gateway-instances/{GatewayInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterGatewayInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterGatewayInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:deregister_source_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterSourceEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/sourceEndpoint/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterSourceEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterSourceEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBridge"
        o.http_method = "GET"
        o.http_request_uri = "/v1/bridges/{BridgeArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeBridgeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFlow"
        o.http_method = "GET"
        o.http_request_uri = "/v1/flows/{FlowArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_flow_source_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFlowSourceMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/v1/flows/{FlowArn}/source-metadata"
        o.input = Shapes::ShapeRef.new(shape: DescribeFlowSourceMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFlowSourceMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_flow_source_thumbnail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFlowSourceThumbnail"
        o.http_method = "GET"
        o.http_request_uri = "/v1/flows/{FlowArn}/source-thumbnail"
        o.input = Shapes::ShapeRef.new(shape: DescribeFlowSourceThumbnailRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFlowSourceThumbnailResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGateway"
        o.http_method = "GET"
        o.http_request_uri = "/v1/gateways/{GatewayArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_gateway_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGatewayInstance"
        o.http_method = "GET"
        o.http_request_uri = "/v1/gateway-instances/{GatewayInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOffering"
        o.http_method = "GET"
        o.http_request_uri = "/v1/offerings/{OfferingArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/reservations/{ReservationArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:disconnect_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectEndpoints"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/disconnectEndpoints/{DestinationEndpointArn}"
        o.input = Shapes::ShapeRef.new(shape: DisconnectEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisconnectEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_destination_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDestinationEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/v1/destinationEndpoint/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetDestinationEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDestinationEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRouterInput"
        o.http_method = "GET"
        o.http_request_uri = "/v1/routerInput/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_router_input_source_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRouterInputSourceMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/v1/routerInput/{Arn}/source-metadata"
        o.input = Shapes::ShapeRef.new(shape: GetRouterInputSourceMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouterInputSourceMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_router_input_thumbnail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRouterInputThumbnail"
        o.http_method = "GET"
        o.http_request_uri = "/v1/routerInput/{Arn}/thumbnail"
        o.input = Shapes::ShapeRef.new(shape: GetRouterInputThumbnailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouterInputThumbnailResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_router_network_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRouterNetworkInterface"
        o.http_method = "GET"
        o.http_request_uri = "/v1/routerNetworkInterface/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetRouterNetworkInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouterNetworkInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_router_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRouterOutput"
        o.http_method = "GET"
        o.http_request_uri = "/v1/routerOutput/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetRouterOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRouterOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_source_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSourceEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/v1/sourceEndpoint/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetSourceEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSourceEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:grant_flow_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GrantFlowEntitlements"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{FlowArn}/entitlements"
        o.input = Shapes::ShapeRef.new(shape: GrantFlowEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: GrantFlowEntitlementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: GrantFlowEntitlements420Exception)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_bridges, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBridges"
        o.http_method = "GET"
        o.http_request_uri = "/v1/bridges"
        o.input = Shapes::ShapeRef.new(shape: ListBridgesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBridgesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_destination_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDestinationEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/v1/destinationEndpoints"
        o.input = Shapes::ShapeRef.new(shape: ListDestinationEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDestinationEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_router_inputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRouterInputs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerInputs"
        o.input = Shapes::ShapeRef.new(shape: ListRouterInputsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRouterInputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_router_network_interfaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRouterNetworkInterfaces"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerNetworkInterfaces"
        o.input = Shapes::ShapeRef.new(shape: ListRouterNetworkInterfacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRouterNetworkInterfacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_router_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRouterOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerOutputs"
        o.input = Shapes::ShapeRef.new(shape: ListRouterOutputsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRouterOutputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_source_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSourceEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/v1/sourceEndpoints"
        o.input = Shapes::ShapeRef.new(shape: ListSourceEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSourceEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_global_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForGlobalResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/global/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForGlobalResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForGlobalResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:purchase_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseOffering"
        o.http_method = "POST"
        o.http_request_uri = "/v1/offerings/{OfferingArn}"
        o.input = Shapes::ShapeRef.new(shape: PurchaseOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: PurchaseOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:register_destination_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDestinationEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/v1/destinationEndpoint"
        o.input = Shapes::ShapeRef.new(shape: RegisterDestinationEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterDestinationEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: DestinationEndpointServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:register_source_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterSourceEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/v1/sourceEndpoint"
        o.input = Shapes::ShapeRef.new(shape: RegisterSourceEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterSourceEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: SourceEndpointServiceQuotaExceededException)
      end)

      api.add_operation(:remove_bridge_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveBridgeOutput"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/bridges/{BridgeArn}/outputs/{OutputName}"
        o.input = Shapes::ShapeRef.new(shape: RemoveBridgeOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveBridgeOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:remove_bridge_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveBridgeSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/bridges/{BridgeArn}/sources/{SourceName}"
        o.input = Shapes::ShapeRef.new(shape: RemoveBridgeSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveBridgeSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:remove_flow_media_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowMediaStream"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowMediaStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowMediaStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:remove_flow_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowOutput"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{FlowArn}/outputs/{OutputArn}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:remove_flow_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{FlowArn}/source/{SourceArn}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:remove_flow_vpc_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowVpcInterface"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{FlowArn}/vpcInterfaces/{VpcInterfaceName}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowVpcInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowVpcInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:restart_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestartRouterInput"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerInput/restart/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: RestartRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: RestartRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:restart_router_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestartRouterOutput"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerOutput/restart/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: RestartRouterOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: RestartRouterOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:revoke_flow_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeFlowEntitlement"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}"
        o.input = Shapes::ShapeRef.new(shape: RevokeFlowEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeFlowEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:start_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/start/{FlowArn}"
        o.input = Shapes::ShapeRef.new(shape: StartFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:start_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRouterInput"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerInput/start/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: StartRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:start_router_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRouterOutput"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerOutput/start/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: StartRouterOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRouterOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:stop_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/stop/{FlowArn}"
        o.input = Shapes::ShapeRef.new(shape: StopFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: StopFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:stop_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopRouterInput"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerInput/stop/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: StopRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: StopRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:stop_router_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopRouterOutput"
        o.http_method = "POST"
        o.http_request_uri = "/v1/routerOutput/stop/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: StopRouterOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: StopRouterOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:tag_global_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagGlobalResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/global/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagGlobalResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:take_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TakeRouterInput"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/routerOutput/takeRouterInput/{RouterOutputArn}"
        o.input = Shapes::ShapeRef.new(shape: TakeRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: TakeRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:untag_global_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagGlobalResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/global/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagGlobalResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:update_bridge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBridge"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/bridges/{BridgeArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBridgeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBridgeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_bridge_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBridgeOutput"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/bridges/{BridgeArn}/outputs/{OutputName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBridgeOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBridgeOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_bridge_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBridgeSource"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/bridges/{BridgeArn}/sources/{SourceName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBridgeSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBridgeSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_bridge_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBridgeState"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/bridges/{BridgeArn}/state"
        o.input = Shapes::ShapeRef.new(shape: UpdateBridgeStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBridgeStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_destination_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDestinationEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/destinationEndpoint/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDestinationEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDestinationEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlow"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{FlowArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_flow_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowEntitlement"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_flow_media_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowMediaStream"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowMediaStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowMediaStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_flow_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowOutput"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{FlowArn}/outputs/{OutputArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_flow_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowSource"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{FlowArn}/source/{SourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_gateway_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayInstance"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/gateway-instances/{GatewayInstanceArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_router_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRouterInput"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/routerInput/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRouterInputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouterInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_router_network_interface, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRouterNetworkInterface"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/routerNetworkInterface/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRouterNetworkInterfaceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouterNetworkInterfaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_router_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRouterOutput"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/routerOutput/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRouterOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouterOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_source_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSourceEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/sourceEndpoint/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSourceEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSourceEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
