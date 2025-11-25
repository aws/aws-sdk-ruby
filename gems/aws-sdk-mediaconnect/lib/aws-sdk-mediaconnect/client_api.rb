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
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
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
    BlackFrames = Shapes::StructureShape.new(name: 'BlackFrames')
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
    Colorimetry = Shapes::StringShape.new(name: 'Colorimetry')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
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
    DeregisterGatewayInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterGatewayInstanceRequest')
    DeregisterGatewayInstanceRequestGatewayInstanceArnString = Shapes::StringShape.new(name: 'DeregisterGatewayInstanceRequestGatewayInstanceArnString')
    DeregisterGatewayInstanceResponse = Shapes::StructureShape.new(name: 'DeregisterGatewayInstanceResponse')
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
    Double = Shapes::FloatShape.new(name: 'Double')
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
    Gateway = Shapes::StructureShape.new(name: 'Gateway')
    GatewayBridgeSource = Shapes::StructureShape.new(name: 'GatewayBridgeSource')
    GatewayInstance = Shapes::StructureShape.new(name: 'GatewayInstance')
    GatewayNetwork = Shapes::StructureShape.new(name: 'GatewayNetwork')
    GatewayState = Shapes::StringShape.new(name: 'GatewayState')
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
    ListTagsForGlobalResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForGlobalResourceRequest')
    ListTagsForGlobalResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForGlobalResourceResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListedBridge = Shapes::StructureShape.new(name: 'ListedBridge')
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
    NdiConfig = Shapes::StructureShape.new(name: 'NdiConfig')
    NdiDiscoveryServerConfig = Shapes::StructureShape.new(name: 'NdiDiscoveryServerConfig')
    NdiState = Shapes::StringShape.new(name: 'NdiState')
    NetworkInterfaceType = Shapes::StringShape.new(name: 'NetworkInterfaceType')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Offering = Shapes::StructureShape.new(name: 'Offering')
    OfferingArn = Shapes::StringShape.new(name: 'OfferingArn')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputStatus = Shapes::StringShape.new(name: 'OutputStatus')
    PreferredDayTimeMaintenanceConfiguration = Shapes::StructureShape.new(name: 'PreferredDayTimeMaintenanceConfiguration')
    PriceUnits = Shapes::StringShape.new(name: 'PriceUnits')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    PublicRouterNetworkInterfaceConfiguration = Shapes::StructureShape.new(name: 'PublicRouterNetworkInterfaceConfiguration')
    PublicRouterNetworkInterfaceConfigurationAllowRulesList = Shapes::ListShape.new(name: 'PublicRouterNetworkInterfaceConfigurationAllowRulesList')
    PublicRouterNetworkInterfaceRule = Shapes::StructureShape.new(name: 'PublicRouterNetworkInterfaceRule')
    PurchaseOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseOfferingRequest')
    PurchaseOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseOfferingResponse')
    Range = Shapes::StringShape.new(name: 'Range')
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
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RouterInput = Shapes::StructureShape.new(name: 'RouterInput')
    RouterInputArn = Shapes::StringShape.new(name: 'RouterInputArn')
    RouterInputArnList = Shapes::ListShape.new(name: 'RouterInputArnList')
    RouterInputConfiguration = Shapes::UnionShape.new(name: 'RouterInputConfiguration')
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
    RouterOutputState = Shapes::StringShape.new(name: 'RouterOutputState')
    RouterOutputStreamDetails = Shapes::UnionShape.new(name: 'RouterOutputStreamDetails')
    RouterOutputTier = Shapes::StringShape.new(name: 'RouterOutputTier')
    RouterOutputType = Shapes::StringShape.new(name: 'RouterOutputType')
    RouterOutputTypeList = Shapes::ListShape.new(name: 'RouterOutputTypeList')
    RoutingScope = Shapes::StringShape.new(name: 'RoutingScope')
    RoutingScopeList = Shapes::ListShape.new(name: 'RoutingScopeList')
    RtpRouterInputConfiguration = Shapes::StructureShape.new(name: 'RtpRouterInputConfiguration')
    RtpRouterInputConfigurationPortInteger = Shapes::IntegerShape.new(name: 'RtpRouterInputConfigurationPortInteger')
    RtpRouterOutputConfiguration = Shapes::StructureShape.new(name: 'RtpRouterOutputConfiguration')
    RtpRouterOutputConfigurationDestinationPortInteger = Shapes::IntegerShape.new(name: 'RtpRouterOutputConfigurationDestinationPortInteger')
    ScanMode = Shapes::StringShape.new(name: 'ScanMode')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecretsManagerEncryptionKeyConfiguration = Shapes::StructureShape.new(name: 'SecretsManagerEncryptionKeyConfiguration')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetGatewayBridgeSourceRequest = Shapes::StructureShape.new(name: 'SetGatewayBridgeSourceRequest')
    SetGatewayBridgeSourceRequestBridgeArnString = Shapes::StringShape.new(name: 'SetGatewayBridgeSourceRequestBridgeArnString')
    SetSourceRequest = Shapes::StructureShape.new(name: 'SetSourceRequest')
    SetSourceRequestEntitlementArnString = Shapes::StringShape.new(name: 'SetSourceRequestEntitlementArnString')
    SilentAudio = Shapes::StructureShape.new(name: 'SilentAudio')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourcePriority = Shapes::StructureShape.new(name: 'SourcePriority')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    SrtCallerRouterInputConfiguration = Shapes::StructureShape.new(name: 'SrtCallerRouterInputConfiguration')
    SrtCallerRouterInputConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtCallerRouterInputConfigurationMinimumLatencyMillisecondsLong')
    SrtCallerRouterInputConfigurationSourcePortInteger = Shapes::IntegerShape.new(name: 'SrtCallerRouterInputConfigurationSourcePortInteger')
    SrtCallerRouterOutputConfiguration = Shapes::StructureShape.new(name: 'SrtCallerRouterOutputConfiguration')
    SrtCallerRouterOutputConfigurationDestinationPortInteger = Shapes::IntegerShape.new(name: 'SrtCallerRouterOutputConfigurationDestinationPortInteger')
    SrtCallerRouterOutputConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtCallerRouterOutputConfigurationMinimumLatencyMillisecondsLong')
    SrtDecryptionConfiguration = Shapes::StructureShape.new(name: 'SrtDecryptionConfiguration')
    SrtEncryptionConfiguration = Shapes::StructureShape.new(name: 'SrtEncryptionConfiguration')
    SrtListenerRouterInputConfiguration = Shapes::StructureShape.new(name: 'SrtListenerRouterInputConfiguration')
    SrtListenerRouterInputConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtListenerRouterInputConfigurationMinimumLatencyMillisecondsLong')
    SrtListenerRouterInputConfigurationPortInteger = Shapes::IntegerShape.new(name: 'SrtListenerRouterInputConfigurationPortInteger')
    SrtListenerRouterOutputConfiguration = Shapes::StructureShape.new(name: 'SrtListenerRouterOutputConfiguration')
    SrtListenerRouterOutputConfigurationMinimumLatencyMillisecondsLong = Shapes::IntegerShape.new(name: 'SrtListenerRouterOutputConfigurationMinimumLatencyMillisecondsLong')
    SrtListenerRouterOutputConfigurationPortInteger = Shapes::IntegerShape.new(name: 'SrtListenerRouterOutputConfigurationPortInteger')
    StandardRouterInputConfiguration = Shapes::StructureShape.new(name: 'StandardRouterInputConfiguration')
    StandardRouterInputStreamDetails = Shapes::StructureShape.new(name: 'StandardRouterInputStreamDetails')
    StandardRouterOutputConfiguration = Shapes::StructureShape.new(name: 'StandardRouterOutputConfiguration')
    StandardRouterOutputStreamDetails = Shapes::StructureShape.new(name: 'StandardRouterOutputStreamDetails')
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
    VideoMonitoringSetting = Shapes::StructureShape.new(name: 'VideoMonitoringSetting')
    VpcInterface = Shapes::StructureShape.new(name: 'VpcInterface')
    VpcInterfaceAttachment = Shapes::StructureShape.new(name: 'VpcInterfaceAttachment')
    VpcInterfaceRequest = Shapes::StructureShape.new(name: 'VpcInterfaceRequest')
    VpcRouterNetworkInterfaceConfiguration = Shapes::StructureShape.new(name: 'VpcRouterNetworkInterfaceConfiguration')
    VpcRouterNetworkInterfaceConfigurationSecurityGroupIdsList = Shapes::ListShape.new(name: 'VpcRouterNetworkInterfaceConfigurationSecurityGroupIdsList')
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
    AddOutputRequest.struct_class = Types::AddOutputRequest

    AudioMonitoringSetting.add_member(:silent_audio, Shapes::ShapeRef.new(shape: SilentAudio, location_name: "silentAudio"))
    AudioMonitoringSetting.struct_class = Types::AudioMonitoringSetting

    AutomaticEncryptionKeyConfiguration.struct_class = Types::AutomaticEncryptionKeyConfiguration

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

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

    BlackFrames.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    BlackFrames.add_member(:threshold_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "thresholdSeconds"))
    BlackFrames.struct_class = Types::BlackFrames

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

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

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
    CreateRouterInputRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRouterInputRequest.struct_class = Types::CreateRouterInputRequest

    CreateRouterInputResponse.add_member(:router_input, Shapes::ShapeRef.new(shape: RouterInput, required: true, location_name: "routerInput"))
    CreateRouterInputResponse.struct_class = Types::CreateRouterInputResponse

    CreateRouterNetworkInterfaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: CreateRouterNetworkInterfaceRequestNameString, required: true, location_name: "name"))
    CreateRouterNetworkInterfaceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceConfiguration, required: true, location_name: "configuration"))
    CreateRouterNetworkInterfaceRequest.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "regionName"))
    CreateRouterNetworkInterfaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "tags"))
    CreateRouterNetworkInterfaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
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
    CreateRouterOutputRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
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

    DeregisterGatewayInstanceRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "force"))
    DeregisterGatewayInstanceRequest.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: DeregisterGatewayInstanceRequestGatewayInstanceArnString, required: true, location: "uri", location_name: "GatewayInstanceArn"))
    DeregisterGatewayInstanceRequest.struct_class = Types::DeregisterGatewayInstanceRequest

    DeregisterGatewayInstanceResponse.add_member(:gateway_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "gatewayInstanceArn"))
    DeregisterGatewayInstanceResponse.add_member(:instance_state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "instanceState"))
    DeregisterGatewayInstanceResponse.struct_class = Types::DeregisterGatewayInstanceResponse

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

    EgressGatewayBridge.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "instanceId"))
    EgressGatewayBridge.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maxBitrate"))
    EgressGatewayBridge.struct_class = Types::EgressGatewayBridge

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

    Entitlement.add_member(:data_transfer_subscriber_fee_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "dataTransferSubscriberFeePercent"))
    Entitlement.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Entitlement.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    Entitlement.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "entitlementArn"))
    Entitlement.add_member(:entitlement_status, Shapes::ShapeRef.new(shape: EntitlementStatus, location_name: "entitlementStatus"))
    Entitlement.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Entitlement.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOfString, required: true, location_name: "subscribers"))
    Entitlement.struct_class = Types::Entitlement

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

    FailoverRouterInputProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpRouterInputConfiguration, location_name: "rtp"))
    FailoverRouterInputProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistRouterInputConfiguration, location_name: "rist"))
    FailoverRouterInputProtocolConfiguration.add_member(:srt_listener, Shapes::ShapeRef.new(shape: SrtListenerRouterInputConfiguration, location_name: "srtListener"))
    FailoverRouterInputProtocolConfiguration.add_member(:srt_caller, Shapes::ShapeRef.new(shape: SrtCallerRouterInputConfiguration, location_name: "srtCaller"))
    FailoverRouterInputProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:rtp, Types::FailoverRouterInputProtocolConfiguration::Rtp)
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:rist, Types::FailoverRouterInputProtocolConfiguration::Rist)
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:srt_listener, Types::FailoverRouterInputProtocolConfiguration::SrtListener)
    FailoverRouterInputProtocolConfiguration.add_member_subclass(:srt_caller, Types::FailoverRouterInputProtocolConfiguration::SrtCaller)
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

    PreferredDayTimeMaintenanceConfiguration.add_member(:day, Shapes::ShapeRef.new(shape: Day, required: true, location_name: "day"))
    PreferredDayTimeMaintenanceConfiguration.add_member(:time, Shapes::ShapeRef.new(shape: String, required: true, location_name: "time"))
    PreferredDayTimeMaintenanceConfiguration.struct_class = Types::PreferredDayTimeMaintenanceConfiguration

    PublicRouterNetworkInterfaceConfiguration.add_member(:allow_rules, Shapes::ShapeRef.new(shape: PublicRouterNetworkInterfaceConfigurationAllowRulesList, required: true, location_name: "allowRules"))
    PublicRouterNetworkInterfaceConfiguration.struct_class = Types::PublicRouterNetworkInterfaceConfiguration

    PublicRouterNetworkInterfaceConfigurationAllowRulesList.member = Shapes::ShapeRef.new(shape: PublicRouterNetworkInterfaceRule)

    PublicRouterNetworkInterfaceRule.add_member(:cidr, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cidr"))
    PublicRouterNetworkInterfaceRule.struct_class = Types::PublicRouterNetworkInterfaceRule

    PurchaseOfferingRequest.add_member(:offering_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "OfferingArn"))
    PurchaseOfferingRequest.add_member(:reservation_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reservationName"))
    PurchaseOfferingRequest.add_member(:start, Shapes::ShapeRef.new(shape: String, required: true, location_name: "start"))
    PurchaseOfferingRequest.struct_class = Types::PurchaseOfferingRequest

    PurchaseOfferingResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResponse.struct_class = Types::PurchaseOfferingResponse

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
    RouterInput.struct_class = Types::RouterInput

    RouterInputArnList.member = Shapes::ShapeRef.new(shape: RouterInputArn)

    RouterInputConfiguration.add_member(:standard, Shapes::ShapeRef.new(shape: StandardRouterInputConfiguration, location_name: "standard"))
    RouterInputConfiguration.add_member(:failover, Shapes::ShapeRef.new(shape: FailoverRouterInputConfiguration, location_name: "failover"))
    RouterInputConfiguration.add_member(:merge, Shapes::ShapeRef.new(shape: MergeRouterInputConfiguration, location_name: "merge"))
    RouterInputConfiguration.add_member(:media_connect_flow, Shapes::ShapeRef.new(shape: MediaConnectFlowRouterInputConfiguration, location_name: "mediaConnectFlow"))
    RouterInputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputConfiguration.add_member_subclass(:standard, Types::RouterInputConfiguration::Standard)
    RouterInputConfiguration.add_member_subclass(:failover, Types::RouterInputConfiguration::Failover)
    RouterInputConfiguration.add_member_subclass(:merge, Types::RouterInputConfiguration::Merge)
    RouterInputConfiguration.add_member_subclass(:media_connect_flow, Types::RouterInputConfiguration::MediaConnectFlow)
    RouterInputConfiguration.add_member_subclass(:unknown, Types::RouterInputConfiguration::Unknown)
    RouterInputConfiguration.struct_class = Types::RouterInputConfiguration

    RouterInputFilter.add_member(:region_names, Shapes::ShapeRef.new(shape: StringList, location_name: "regionNames"))
    RouterInputFilter.add_member(:input_types, Shapes::ShapeRef.new(shape: RouterInputTypeList, location_name: "inputTypes"))
    RouterInputFilter.add_member(:name_contains, Shapes::ShapeRef.new(shape: StringList, location_name: "nameContains"))
    RouterInputFilter.add_member(:network_interface_arns, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArnList, location_name: "networkInterfaceArns"))
    RouterInputFilter.add_member(:routing_scopes, Shapes::ShapeRef.new(shape: RoutingScopeList, location_name: "routingScopes"))
    RouterInputFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputFilter.add_member_subclass(:region_names, Types::RouterInputFilter::RegionNames)
    RouterInputFilter.add_member_subclass(:input_types, Types::RouterInputFilter::InputTypes)
    RouterInputFilter.add_member_subclass(:name_contains, Types::RouterInputFilter::NameContains)
    RouterInputFilter.add_member_subclass(:network_interface_arns, Types::RouterInputFilter::NetworkInterfaceArns)
    RouterInputFilter.add_member_subclass(:routing_scopes, Types::RouterInputFilter::RoutingScopes)
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

    RouterInputProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpRouterInputConfiguration, location_name: "rtp"))
    RouterInputProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistRouterInputConfiguration, location_name: "rist"))
    RouterInputProtocolConfiguration.add_member(:srt_listener, Shapes::ShapeRef.new(shape: SrtListenerRouterInputConfiguration, location_name: "srtListener"))
    RouterInputProtocolConfiguration.add_member(:srt_caller, Shapes::ShapeRef.new(shape: SrtCallerRouterInputConfiguration, location_name: "srtCaller"))
    RouterInputProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputProtocolConfiguration.add_member_subclass(:rtp, Types::RouterInputProtocolConfiguration::Rtp)
    RouterInputProtocolConfiguration.add_member_subclass(:rist, Types::RouterInputProtocolConfiguration::Rist)
    RouterInputProtocolConfiguration.add_member_subclass(:srt_listener, Types::RouterInputProtocolConfiguration::SrtListener)
    RouterInputProtocolConfiguration.add_member_subclass(:srt_caller, Types::RouterInputProtocolConfiguration::SrtCaller)
    RouterInputProtocolConfiguration.add_member_subclass(:unknown, Types::RouterInputProtocolConfiguration::Unknown)
    RouterInputProtocolConfiguration.struct_class = Types::RouterInputProtocolConfiguration

    RouterInputServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RouterInputServiceQuotaExceededException.struct_class = Types::RouterInputServiceQuotaExceededException

    RouterInputSourceMetadataDetails.add_member(:source_metadata_messages, Shapes::ShapeRef.new(shape: RouterInputMessages, required: true, location_name: "sourceMetadataMessages"))
    RouterInputSourceMetadataDetails.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "timestamp"))
    RouterInputSourceMetadataDetails.add_member(:router_input_metadata, Shapes::ShapeRef.new(shape: RouterInputMetadata, location_name: "routerInputMetadata"))
    RouterInputSourceMetadataDetails.struct_class = Types::RouterInputSourceMetadataDetails

    RouterInputStreamDetails.add_member(:standard, Shapes::ShapeRef.new(shape: StandardRouterInputStreamDetails, location_name: "standard"))
    RouterInputStreamDetails.add_member(:failover, Shapes::ShapeRef.new(shape: FailoverRouterInputStreamDetails, location_name: "failover"))
    RouterInputStreamDetails.add_member(:merge, Shapes::ShapeRef.new(shape: MergeRouterInputStreamDetails, location_name: "merge"))
    RouterInputStreamDetails.add_member(:media_connect_flow, Shapes::ShapeRef.new(shape: MediaConnectFlowRouterInputStreamDetails, location_name: "mediaConnectFlow"))
    RouterInputStreamDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterInputStreamDetails.add_member_subclass(:standard, Types::RouterInputStreamDetails::Standard)
    RouterInputStreamDetails.add_member_subclass(:failover, Types::RouterInputStreamDetails::Failover)
    RouterInputStreamDetails.add_member_subclass(:merge, Types::RouterInputStreamDetails::Merge)
    RouterInputStreamDetails.add_member_subclass(:media_connect_flow, Types::RouterInputStreamDetails::MediaConnectFlow)
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
    RouterOutput.struct_class = Types::RouterOutput

    RouterOutputConfiguration.add_member(:standard, Shapes::ShapeRef.new(shape: StandardRouterOutputConfiguration, location_name: "standard"))
    RouterOutputConfiguration.add_member(:media_connect_flow, Shapes::ShapeRef.new(shape: MediaConnectFlowRouterOutputConfiguration, location_name: "mediaConnectFlow"))
    RouterOutputConfiguration.add_member(:media_live_input, Shapes::ShapeRef.new(shape: MediaLiveInputRouterOutputConfiguration, location_name: "mediaLiveInput"))
    RouterOutputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterOutputConfiguration.add_member_subclass(:standard, Types::RouterOutputConfiguration::Standard)
    RouterOutputConfiguration.add_member_subclass(:media_connect_flow, Types::RouterOutputConfiguration::MediaConnectFlow)
    RouterOutputConfiguration.add_member_subclass(:media_live_input, Types::RouterOutputConfiguration::MediaLiveInput)
    RouterOutputConfiguration.add_member_subclass(:unknown, Types::RouterOutputConfiguration::Unknown)
    RouterOutputConfiguration.struct_class = Types::RouterOutputConfiguration

    RouterOutputFilter.add_member(:region_names, Shapes::ShapeRef.new(shape: StringList, location_name: "regionNames"))
    RouterOutputFilter.add_member(:output_types, Shapes::ShapeRef.new(shape: RouterOutputTypeList, location_name: "outputTypes"))
    RouterOutputFilter.add_member(:name_contains, Shapes::ShapeRef.new(shape: StringList, location_name: "nameContains"))
    RouterOutputFilter.add_member(:network_interface_arns, Shapes::ShapeRef.new(shape: RouterNetworkInterfaceArnList, location_name: "networkInterfaceArns"))
    RouterOutputFilter.add_member(:routed_input_arns, Shapes::ShapeRef.new(shape: RouterInputArnList, location_name: "routedInputArns"))
    RouterOutputFilter.add_member(:routing_scopes, Shapes::ShapeRef.new(shape: RoutingScopeList, location_name: "routingScopes"))
    RouterOutputFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterOutputFilter.add_member_subclass(:region_names, Types::RouterOutputFilter::RegionNames)
    RouterOutputFilter.add_member_subclass(:output_types, Types::RouterOutputFilter::OutputTypes)
    RouterOutputFilter.add_member_subclass(:name_contains, Types::RouterOutputFilter::NameContains)
    RouterOutputFilter.add_member_subclass(:network_interface_arns, Types::RouterOutputFilter::NetworkInterfaceArns)
    RouterOutputFilter.add_member_subclass(:routed_input_arns, Types::RouterOutputFilter::RoutedInputArns)
    RouterOutputFilter.add_member_subclass(:routing_scopes, Types::RouterOutputFilter::RoutingScopes)
    RouterOutputFilter.add_member_subclass(:unknown, Types::RouterOutputFilter::Unknown)
    RouterOutputFilter.struct_class = Types::RouterOutputFilter

    RouterOutputFilterList.member = Shapes::ShapeRef.new(shape: RouterOutputFilter)

    RouterOutputList.member = Shapes::ShapeRef.new(shape: RouterOutput)

    RouterOutputMessage.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    RouterOutputMessage.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RouterOutputMessage.struct_class = Types::RouterOutputMessage

    RouterOutputMessages.member = Shapes::ShapeRef.new(shape: RouterOutputMessage)

    RouterOutputProtocolConfiguration.add_member(:rtp, Shapes::ShapeRef.new(shape: RtpRouterOutputConfiguration, location_name: "rtp"))
    RouterOutputProtocolConfiguration.add_member(:rist, Shapes::ShapeRef.new(shape: RistRouterOutputConfiguration, location_name: "rist"))
    RouterOutputProtocolConfiguration.add_member(:srt_listener, Shapes::ShapeRef.new(shape: SrtListenerRouterOutputConfiguration, location_name: "srtListener"))
    RouterOutputProtocolConfiguration.add_member(:srt_caller, Shapes::ShapeRef.new(shape: SrtCallerRouterOutputConfiguration, location_name: "srtCaller"))
    RouterOutputProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterOutputProtocolConfiguration.add_member_subclass(:rtp, Types::RouterOutputProtocolConfiguration::Rtp)
    RouterOutputProtocolConfiguration.add_member_subclass(:rist, Types::RouterOutputProtocolConfiguration::Rist)
    RouterOutputProtocolConfiguration.add_member_subclass(:srt_listener, Types::RouterOutputProtocolConfiguration::SrtListener)
    RouterOutputProtocolConfiguration.add_member_subclass(:srt_caller, Types::RouterOutputProtocolConfiguration::SrtCaller)
    RouterOutputProtocolConfiguration.add_member_subclass(:unknown, Types::RouterOutputProtocolConfiguration::Unknown)
    RouterOutputProtocolConfiguration.struct_class = Types::RouterOutputProtocolConfiguration

    RouterOutputServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RouterOutputServiceQuotaExceededException.struct_class = Types::RouterOutputServiceQuotaExceededException

    RouterOutputStreamDetails.add_member(:standard, Shapes::ShapeRef.new(shape: StandardRouterOutputStreamDetails, location_name: "standard"))
    RouterOutputStreamDetails.add_member(:media_connect_flow, Shapes::ShapeRef.new(shape: MediaConnectFlowRouterOutputStreamDetails, location_name: "mediaConnectFlow"))
    RouterOutputStreamDetails.add_member(:media_live_input, Shapes::ShapeRef.new(shape: MediaLiveInputRouterOutputStreamDetails, location_name: "mediaLiveInput"))
    RouterOutputStreamDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouterOutputStreamDetails.add_member_subclass(:standard, Types::RouterOutputStreamDetails::Standard)
    RouterOutputStreamDetails.add_member_subclass(:media_connect_flow, Types::RouterOutputStreamDetails::MediaConnectFlow)
    RouterOutputStreamDetails.add_member_subclass(:media_live_input, Types::RouterOutputStreamDetails::MediaLiveInput)
    RouterOutputStreamDetails.add_member_subclass(:unknown, Types::RouterOutputStreamDetails::Unknown)
    RouterOutputStreamDetails.struct_class = Types::RouterOutputStreamDetails

    RouterOutputTypeList.member = Shapes::ShapeRef.new(shape: RouterOutputType)

    RoutingScopeList.member = Shapes::ShapeRef.new(shape: RoutingScope)

    RtpRouterInputConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: RtpRouterInputConfigurationPortInteger, required: true, location_name: "port"))
    RtpRouterInputConfiguration.add_member(:forward_error_correction, Shapes::ShapeRef.new(shape: ForwardErrorCorrectionState, location_name: "forwardErrorCorrection"))
    RtpRouterInputConfiguration.struct_class = Types::RtpRouterInputConfiguration

    RtpRouterOutputConfiguration.add_member(:destination_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationAddress"))
    RtpRouterOutputConfiguration.add_member(:destination_port, Shapes::ShapeRef.new(shape: RtpRouterOutputConfigurationDestinationPortInteger, required: true, location_name: "destinationPort"))
    RtpRouterOutputConfiguration.add_member(:forward_error_correction, Shapes::ShapeRef.new(shape: ForwardErrorCorrectionState, location_name: "forwardErrorCorrection"))
    RtpRouterOutputConfiguration.struct_class = Types::RtpRouterOutputConfiguration

    SecretsManagerEncryptionKeyConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    SecretsManagerEncryptionKeyConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    SecretsManagerEncryptionKeyConfiguration.struct_class = Types::SecretsManagerEncryptionKeyConfiguration

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
    SetSourceRequest.add_member(:source_tags, Shapes::ShapeRef.new(shape: __mapOfString, location_name: "sourceTags"))
    SetSourceRequest.add_member(:router_integration_state, Shapes::ShapeRef.new(shape: State, location_name: "routerIntegrationState"))
    SetSourceRequest.add_member(:router_integration_transit_decryption, Shapes::ShapeRef.new(shape: FlowTransitEncryption, location_name: "routerIntegrationTransitDecryption"))
    SetSourceRequest.struct_class = Types::SetSourceRequest

    SilentAudio.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    SilentAudio.add_member(:threshold_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "thresholdSeconds"))
    SilentAudio.struct_class = Types::SilentAudio

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
    Transport.struct_class = Types::Transport

    TransportMediaInfo.add_member(:programs, Shapes::ShapeRef.new(shape: __listOfTransportStreamProgram, required: true, location_name: "programs"))
    TransportMediaInfo.struct_class = Types::TransportMediaInfo

    TransportStream.add_member(:channels, Shapes::ShapeRef.new(shape: Integer, location_name: "channels"))
    TransportStream.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "codec"))
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
    UpdateRouterOutputRequest.struct_class = Types::UpdateRouterOutputRequest

    UpdateRouterOutputResponse.add_member(:router_output, Shapes::ShapeRef.new(shape: RouterOutput, required: true, location_name: "routerOutput"))
    UpdateRouterOutputResponse.struct_class = Types::UpdateRouterOutputResponse

    VideoMonitoringSetting.add_member(:black_frames, Shapes::ShapeRef.new(shape: BlackFrames, location_name: "blackFrames"))
    VideoMonitoringSetting.add_member(:frozen_frames, Shapes::ShapeRef.new(shape: FrozenFrames, location_name: "frozenFrames"))
    VideoMonitoringSetting.struct_class = Types::VideoMonitoringSetting

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
    end

  end
end
