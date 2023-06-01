# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTWireless
  # @api private
  module ClientApi

    include Seahorse::Model

    AbpV1_0_x = Shapes::StructureShape.new(name: 'AbpV1_0_x')
    AbpV1_1 = Shapes::StructureShape.new(name: 'AbpV1_1')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountLinked = Shapes::BooleanShape.new(name: 'AccountLinked')
    Accuracy = Shapes::StructureShape.new(name: 'Accuracy')
    AckModeRetryDurationSecs = Shapes::IntegerShape.new(name: 'AckModeRetryDurationSecs')
    AddGwMetadata = Shapes::BooleanShape.new(name: 'AddGwMetadata')
    AmazonId = Shapes::StringShape.new(name: 'AmazonId')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    ApId = Shapes::StringShape.new(name: 'ApId')
    AppEui = Shapes::StringShape.new(name: 'AppEui')
    AppKey = Shapes::StringShape.new(name: 'AppKey')
    AppSKey = Shapes::StringShape.new(name: 'AppSKey')
    AppServerPrivateKey = Shapes::StringShape.new(name: 'AppServerPrivateKey')
    ApplicationConfig = Shapes::StructureShape.new(name: 'ApplicationConfig')
    ApplicationConfigType = Shapes::StringShape.new(name: 'ApplicationConfigType')
    ApplicationServerPublicKey = Shapes::StringShape.new(name: 'ApplicationServerPublicKey')
    Applications = Shapes::ListShape.new(name: 'Applications')
    AssistPosition = Shapes::ListShape.new(name: 'AssistPosition')
    AssociateAwsAccountWithPartnerAccountRequest = Shapes::StructureShape.new(name: 'AssociateAwsAccountWithPartnerAccountRequest')
    AssociateAwsAccountWithPartnerAccountResponse = Shapes::StructureShape.new(name: 'AssociateAwsAccountWithPartnerAccountResponse')
    AssociateMulticastGroupWithFuotaTaskRequest = Shapes::StructureShape.new(name: 'AssociateMulticastGroupWithFuotaTaskRequest')
    AssociateMulticastGroupWithFuotaTaskResponse = Shapes::StructureShape.new(name: 'AssociateMulticastGroupWithFuotaTaskResponse')
    AssociateWirelessDeviceWithFuotaTaskRequest = Shapes::StructureShape.new(name: 'AssociateWirelessDeviceWithFuotaTaskRequest')
    AssociateWirelessDeviceWithFuotaTaskResponse = Shapes::StructureShape.new(name: 'AssociateWirelessDeviceWithFuotaTaskResponse')
    AssociateWirelessDeviceWithMulticastGroupRequest = Shapes::StructureShape.new(name: 'AssociateWirelessDeviceWithMulticastGroupRequest')
    AssociateWirelessDeviceWithMulticastGroupResponse = Shapes::StructureShape.new(name: 'AssociateWirelessDeviceWithMulticastGroupResponse')
    AssociateWirelessDeviceWithThingRequest = Shapes::StructureShape.new(name: 'AssociateWirelessDeviceWithThingRequest')
    AssociateWirelessDeviceWithThingResponse = Shapes::StructureShape.new(name: 'AssociateWirelessDeviceWithThingResponse')
    AssociateWirelessGatewayWithCertificateRequest = Shapes::StructureShape.new(name: 'AssociateWirelessGatewayWithCertificateRequest')
    AssociateWirelessGatewayWithCertificateResponse = Shapes::StructureShape.new(name: 'AssociateWirelessGatewayWithCertificateResponse')
    AssociateWirelessGatewayWithThingRequest = Shapes::StructureShape.new(name: 'AssociateWirelessGatewayWithThingRequest')
    AssociateWirelessGatewayWithThingResponse = Shapes::StructureShape.new(name: 'AssociateWirelessGatewayWithThingResponse')
    AutoCreateTasks = Shapes::BooleanShape.new(name: 'AutoCreateTasks')
    BCCH = Shapes::IntegerShape.new(name: 'BCCH')
    BSIC = Shapes::IntegerShape.new(name: 'BSIC')
    BaseLat = Shapes::FloatShape.new(name: 'BaseLat')
    BaseLng = Shapes::FloatShape.new(name: 'BaseLng')
    BaseStationId = Shapes::IntegerShape.new(name: 'BaseStationId')
    BatteryLevel = Shapes::StringShape.new(name: 'BatteryLevel')
    Beaconing = Shapes::StructureShape.new(name: 'Beaconing')
    BeaconingDataRate = Shapes::IntegerShape.new(name: 'BeaconingDataRate')
    BeaconingFrequencies = Shapes::ListShape.new(name: 'BeaconingFrequencies')
    BeaconingFrequency = Shapes::IntegerShape.new(name: 'BeaconingFrequency')
    CancelMulticastGroupSessionRequest = Shapes::StructureShape.new(name: 'CancelMulticastGroupSessionRequest')
    CancelMulticastGroupSessionResponse = Shapes::StructureShape.new(name: 'CancelMulticastGroupSessionResponse')
    CaptureTimeAccuracy = Shapes::FloatShape.new(name: 'CaptureTimeAccuracy')
    CdmaChannel = Shapes::IntegerShape.new(name: 'CdmaChannel')
    CdmaList = Shapes::ListShape.new(name: 'CdmaList')
    CdmaLocalId = Shapes::StructureShape.new(name: 'CdmaLocalId')
    CdmaNmrList = Shapes::ListShape.new(name: 'CdmaNmrList')
    CdmaNmrObj = Shapes::StructureShape.new(name: 'CdmaNmrObj')
    CdmaObj = Shapes::StructureShape.new(name: 'CdmaObj')
    CellParams = Shapes::IntegerShape.new(name: 'CellParams')
    CellTowers = Shapes::StructureShape.new(name: 'CellTowers')
    CertificateList = Shapes::StructureShape.new(name: 'CertificateList')
    CertificatePEM = Shapes::StringShape.new(name: 'CertificatePEM')
    CertificateValue = Shapes::StringShape.new(name: 'CertificateValue')
    ChannelMask = Shapes::StringShape.new(name: 'ChannelMask')
    ClassBTimeout = Shapes::IntegerShape.new(name: 'ClassBTimeout')
    ClassCTimeout = Shapes::IntegerShape.new(name: 'ClassCTimeout')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    ConnectionStatusEventConfiguration = Shapes::StructureShape.new(name: 'ConnectionStatusEventConfiguration')
    ConnectionStatusResourceTypeEventConfiguration = Shapes::StructureShape.new(name: 'ConnectionStatusResourceTypeEventConfiguration')
    Coordinate = Shapes::FloatShape.new(name: 'Coordinate')
    Crc = Shapes::IntegerShape.new(name: 'Crc')
    CreateDestinationRequest = Shapes::StructureShape.new(name: 'CreateDestinationRequest')
    CreateDestinationResponse = Shapes::StructureShape.new(name: 'CreateDestinationResponse')
    CreateDeviceProfileRequest = Shapes::StructureShape.new(name: 'CreateDeviceProfileRequest')
    CreateDeviceProfileResponse = Shapes::StructureShape.new(name: 'CreateDeviceProfileResponse')
    CreateFuotaTaskRequest = Shapes::StructureShape.new(name: 'CreateFuotaTaskRequest')
    CreateFuotaTaskResponse = Shapes::StructureShape.new(name: 'CreateFuotaTaskResponse')
    CreateMulticastGroupRequest = Shapes::StructureShape.new(name: 'CreateMulticastGroupRequest')
    CreateMulticastGroupResponse = Shapes::StructureShape.new(name: 'CreateMulticastGroupResponse')
    CreateNetworkAnalyzerConfigurationRequest = Shapes::StructureShape.new(name: 'CreateNetworkAnalyzerConfigurationRequest')
    CreateNetworkAnalyzerConfigurationResponse = Shapes::StructureShape.new(name: 'CreateNetworkAnalyzerConfigurationResponse')
    CreateServiceProfileRequest = Shapes::StructureShape.new(name: 'CreateServiceProfileRequest')
    CreateServiceProfileResponse = Shapes::StructureShape.new(name: 'CreateServiceProfileResponse')
    CreateWirelessDeviceRequest = Shapes::StructureShape.new(name: 'CreateWirelessDeviceRequest')
    CreateWirelessDeviceResponse = Shapes::StructureShape.new(name: 'CreateWirelessDeviceResponse')
    CreateWirelessGatewayRequest = Shapes::StructureShape.new(name: 'CreateWirelessGatewayRequest')
    CreateWirelessGatewayResponse = Shapes::StructureShape.new(name: 'CreateWirelessGatewayResponse')
    CreateWirelessGatewayTaskDefinitionRequest = Shapes::StructureShape.new(name: 'CreateWirelessGatewayTaskDefinitionRequest')
    CreateWirelessGatewayTaskDefinitionResponse = Shapes::StructureShape.new(name: 'CreateWirelessGatewayTaskDefinitionResponse')
    CreateWirelessGatewayTaskRequest = Shapes::StructureShape.new(name: 'CreateWirelessGatewayTaskRequest')
    CreateWirelessGatewayTaskResponse = Shapes::StructureShape.new(name: 'CreateWirelessGatewayTaskResponse')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime', timestampFormat: "iso8601")
    DakCertificateId = Shapes::StringShape.new(name: 'DakCertificateId')
    DakCertificateMetadata = Shapes::StructureShape.new(name: 'DakCertificateMetadata')
    DakCertificateMetadataList = Shapes::ListShape.new(name: 'DakCertificateMetadataList')
    DeleteDestinationRequest = Shapes::StructureShape.new(name: 'DeleteDestinationRequest')
    DeleteDestinationResponse = Shapes::StructureShape.new(name: 'DeleteDestinationResponse')
    DeleteDeviceProfileRequest = Shapes::StructureShape.new(name: 'DeleteDeviceProfileRequest')
    DeleteDeviceProfileResponse = Shapes::StructureShape.new(name: 'DeleteDeviceProfileResponse')
    DeleteFuotaTaskRequest = Shapes::StructureShape.new(name: 'DeleteFuotaTaskRequest')
    DeleteFuotaTaskResponse = Shapes::StructureShape.new(name: 'DeleteFuotaTaskResponse')
    DeleteMulticastGroupRequest = Shapes::StructureShape.new(name: 'DeleteMulticastGroupRequest')
    DeleteMulticastGroupResponse = Shapes::StructureShape.new(name: 'DeleteMulticastGroupResponse')
    DeleteNetworkAnalyzerConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteNetworkAnalyzerConfigurationRequest')
    DeleteNetworkAnalyzerConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteNetworkAnalyzerConfigurationResponse')
    DeleteQueuedMessagesRequest = Shapes::StructureShape.new(name: 'DeleteQueuedMessagesRequest')
    DeleteQueuedMessagesResponse = Shapes::StructureShape.new(name: 'DeleteQueuedMessagesResponse')
    DeleteServiceProfileRequest = Shapes::StructureShape.new(name: 'DeleteServiceProfileRequest')
    DeleteServiceProfileResponse = Shapes::StructureShape.new(name: 'DeleteServiceProfileResponse')
    DeleteWirelessDeviceImportTaskRequest = Shapes::StructureShape.new(name: 'DeleteWirelessDeviceImportTaskRequest')
    DeleteWirelessDeviceImportTaskResponse = Shapes::StructureShape.new(name: 'DeleteWirelessDeviceImportTaskResponse')
    DeleteWirelessDeviceRequest = Shapes::StructureShape.new(name: 'DeleteWirelessDeviceRequest')
    DeleteWirelessDeviceResponse = Shapes::StructureShape.new(name: 'DeleteWirelessDeviceResponse')
    DeleteWirelessGatewayRequest = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayRequest')
    DeleteWirelessGatewayResponse = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayResponse')
    DeleteWirelessGatewayTaskDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayTaskDefinitionRequest')
    DeleteWirelessGatewayTaskDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayTaskDefinitionResponse')
    DeleteWirelessGatewayTaskRequest = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayTaskRequest')
    DeleteWirelessGatewayTaskResponse = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayTaskResponse')
    DeregisterWirelessDeviceRequest = Shapes::StructureShape.new(name: 'DeregisterWirelessDeviceRequest')
    DeregisterWirelessDeviceResponse = Shapes::StructureShape.new(name: 'DeregisterWirelessDeviceResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DestinationList = Shapes::ListShape.new(name: 'DestinationList')
    DestinationName = Shapes::StringShape.new(name: 'DestinationName')
    Destinations = Shapes::StructureShape.new(name: 'Destinations')
    DevAddr = Shapes::StringShape.new(name: 'DevAddr')
    DevEui = Shapes::StringShape.new(name: 'DevEui')
    DevStatusReqFreq = Shapes::IntegerShape.new(name: 'DevStatusReqFreq')
    DeviceCertificateList = Shapes::ListShape.new(name: 'DeviceCertificateList')
    DeviceCreationFile = Shapes::StringShape.new(name: 'DeviceCreationFile')
    DeviceCreationFileList = Shapes::ListShape.new(name: 'DeviceCreationFileList')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DeviceProfile = Shapes::StructureShape.new(name: 'DeviceProfile')
    DeviceProfileArn = Shapes::StringShape.new(name: 'DeviceProfileArn')
    DeviceProfileId = Shapes::StringShape.new(name: 'DeviceProfileId')
    DeviceProfileList = Shapes::ListShape.new(name: 'DeviceProfileList')
    DeviceProfileName = Shapes::StringShape.new(name: 'DeviceProfileName')
    DeviceProfileType = Shapes::StringShape.new(name: 'DeviceProfileType')
    DeviceRegistrationStateEventConfiguration = Shapes::StructureShape.new(name: 'DeviceRegistrationStateEventConfiguration')
    DeviceRegistrationStateResourceTypeEventConfiguration = Shapes::StructureShape.new(name: 'DeviceRegistrationStateResourceTypeEventConfiguration')
    DeviceState = Shapes::StringShape.new(name: 'DeviceState')
    DeviceTypeId = Shapes::StringShape.new(name: 'DeviceTypeId')
    DisassociateAwsAccountFromPartnerAccountRequest = Shapes::StructureShape.new(name: 'DisassociateAwsAccountFromPartnerAccountRequest')
    DisassociateAwsAccountFromPartnerAccountResponse = Shapes::StructureShape.new(name: 'DisassociateAwsAccountFromPartnerAccountResponse')
    DisassociateMulticastGroupFromFuotaTaskRequest = Shapes::StructureShape.new(name: 'DisassociateMulticastGroupFromFuotaTaskRequest')
    DisassociateMulticastGroupFromFuotaTaskResponse = Shapes::StructureShape.new(name: 'DisassociateMulticastGroupFromFuotaTaskResponse')
    DisassociateWirelessDeviceFromFuotaTaskRequest = Shapes::StructureShape.new(name: 'DisassociateWirelessDeviceFromFuotaTaskRequest')
    DisassociateWirelessDeviceFromFuotaTaskResponse = Shapes::StructureShape.new(name: 'DisassociateWirelessDeviceFromFuotaTaskResponse')
    DisassociateWirelessDeviceFromMulticastGroupRequest = Shapes::StructureShape.new(name: 'DisassociateWirelessDeviceFromMulticastGroupRequest')
    DisassociateWirelessDeviceFromMulticastGroupResponse = Shapes::StructureShape.new(name: 'DisassociateWirelessDeviceFromMulticastGroupResponse')
    DisassociateWirelessDeviceFromThingRequest = Shapes::StructureShape.new(name: 'DisassociateWirelessDeviceFromThingRequest')
    DisassociateWirelessDeviceFromThingResponse = Shapes::StructureShape.new(name: 'DisassociateWirelessDeviceFromThingResponse')
    DisassociateWirelessGatewayFromCertificateRequest = Shapes::StructureShape.new(name: 'DisassociateWirelessGatewayFromCertificateRequest')
    DisassociateWirelessGatewayFromCertificateResponse = Shapes::StructureShape.new(name: 'DisassociateWirelessGatewayFromCertificateResponse')
    DisassociateWirelessGatewayFromThingRequest = Shapes::StructureShape.new(name: 'DisassociateWirelessGatewayFromThingRequest')
    DisassociateWirelessGatewayFromThingResponse = Shapes::StructureShape.new(name: 'DisassociateWirelessGatewayFromThingResponse')
    DlBucketSize = Shapes::IntegerShape.new(name: 'DlBucketSize')
    DlClass = Shapes::StringShape.new(name: 'DlClass')
    DlDr = Shapes::IntegerShape.new(name: 'DlDr')
    DlFreq = Shapes::IntegerShape.new(name: 'DlFreq')
    DlRate = Shapes::IntegerShape.new(name: 'DlRate')
    DlRatePolicy = Shapes::StringShape.new(name: 'DlRatePolicy')
    Double = Shapes::FloatShape.new(name: 'Double')
    DownlinkFrequency = Shapes::IntegerShape.new(name: 'DownlinkFrequency')
    DownlinkMode = Shapes::StringShape.new(name: 'DownlinkMode')
    DownlinkQueueMessage = Shapes::StructureShape.new(name: 'DownlinkQueueMessage')
    DownlinkQueueMessagesList = Shapes::ListShape.new(name: 'DownlinkQueueMessagesList')
    DrMax = Shapes::IntegerShape.new(name: 'DrMax')
    DrMaxBox = Shapes::IntegerShape.new(name: 'DrMaxBox')
    DrMin = Shapes::IntegerShape.new(name: 'DrMin')
    DrMinBox = Shapes::IntegerShape.new(name: 'DrMinBox')
    EARFCN = Shapes::IntegerShape.new(name: 'EARFCN')
    EndPoint = Shapes::StringShape.new(name: 'EndPoint')
    EutranCid = Shapes::IntegerShape.new(name: 'EutranCid')
    Event = Shapes::StringShape.new(name: 'Event')
    EventConfigurationItem = Shapes::StructureShape.new(name: 'EventConfigurationItem')
    EventConfigurationsList = Shapes::ListShape.new(name: 'EventConfigurationsList')
    EventNotificationItemConfigurations = Shapes::StructureShape.new(name: 'EventNotificationItemConfigurations')
    EventNotificationPartnerType = Shapes::StringShape.new(name: 'EventNotificationPartnerType')
    EventNotificationResourceType = Shapes::StringShape.new(name: 'EventNotificationResourceType')
    EventNotificationTopicStatus = Shapes::StringShape.new(name: 'EventNotificationTopicStatus')
    Expression = Shapes::StringShape.new(name: 'Expression')
    ExpressionType = Shapes::StringShape.new(name: 'ExpressionType')
    FCntStart = Shapes::IntegerShape.new(name: 'FCntStart')
    FNwkSIntKey = Shapes::StringShape.new(name: 'FNwkSIntKey')
    FPort = Shapes::IntegerShape.new(name: 'FPort')
    FPorts = Shapes::StructureShape.new(name: 'FPorts')
    FactoryPresetFreqsList = Shapes::ListShape.new(name: 'FactoryPresetFreqsList')
    FactorySupport = Shapes::BooleanShape.new(name: 'FactorySupport')
    Fingerprint = Shapes::StringShape.new(name: 'Fingerprint')
    FirmwareUpdateImage = Shapes::StringShape.new(name: 'FirmwareUpdateImage')
    FirmwareUpdateRole = Shapes::StringShape.new(name: 'FirmwareUpdateRole')
    FragmentIntervalMS = Shapes::IntegerShape.new(name: 'FragmentIntervalMS')
    FragmentSizeBytes = Shapes::IntegerShape.new(name: 'FragmentSizeBytes')
    FuotaDeviceStatus = Shapes::StringShape.new(name: 'FuotaDeviceStatus')
    FuotaTask = Shapes::StructureShape.new(name: 'FuotaTask')
    FuotaTaskArn = Shapes::StringShape.new(name: 'FuotaTaskArn')
    FuotaTaskId = Shapes::StringShape.new(name: 'FuotaTaskId')
    FuotaTaskList = Shapes::ListShape.new(name: 'FuotaTaskList')
    FuotaTaskName = Shapes::StringShape.new(name: 'FuotaTaskName')
    FuotaTaskStatus = Shapes::StringShape.new(name: 'FuotaTaskStatus')
    GPST = Shapes::FloatShape.new(name: 'GPST')
    GatewayEui = Shapes::StringShape.new(name: 'GatewayEui')
    GatewayList = Shapes::ListShape.new(name: 'GatewayList')
    GatewayListItem = Shapes::StructureShape.new(name: 'GatewayListItem')
    GatewayMaxEirp = Shapes::FloatShape.new(name: 'GatewayMaxEirp')
    GenAppKey = Shapes::StringShape.new(name: 'GenAppKey')
    GeoJsonPayload = Shapes::BlobShape.new(name: 'GeoJsonPayload')
    GeranCid = Shapes::IntegerShape.new(name: 'GeranCid')
    GetDestinationRequest = Shapes::StructureShape.new(name: 'GetDestinationRequest')
    GetDestinationResponse = Shapes::StructureShape.new(name: 'GetDestinationResponse')
    GetDeviceProfileRequest = Shapes::StructureShape.new(name: 'GetDeviceProfileRequest')
    GetDeviceProfileResponse = Shapes::StructureShape.new(name: 'GetDeviceProfileResponse')
    GetEventConfigurationByResourceTypesRequest = Shapes::StructureShape.new(name: 'GetEventConfigurationByResourceTypesRequest')
    GetEventConfigurationByResourceTypesResponse = Shapes::StructureShape.new(name: 'GetEventConfigurationByResourceTypesResponse')
    GetFuotaTaskRequest = Shapes::StructureShape.new(name: 'GetFuotaTaskRequest')
    GetFuotaTaskResponse = Shapes::StructureShape.new(name: 'GetFuotaTaskResponse')
    GetLogLevelsByResourceTypesRequest = Shapes::StructureShape.new(name: 'GetLogLevelsByResourceTypesRequest')
    GetLogLevelsByResourceTypesResponse = Shapes::StructureShape.new(name: 'GetLogLevelsByResourceTypesResponse')
    GetMulticastGroupRequest = Shapes::StructureShape.new(name: 'GetMulticastGroupRequest')
    GetMulticastGroupResponse = Shapes::StructureShape.new(name: 'GetMulticastGroupResponse')
    GetMulticastGroupSessionRequest = Shapes::StructureShape.new(name: 'GetMulticastGroupSessionRequest')
    GetMulticastGroupSessionResponse = Shapes::StructureShape.new(name: 'GetMulticastGroupSessionResponse')
    GetNetworkAnalyzerConfigurationRequest = Shapes::StructureShape.new(name: 'GetNetworkAnalyzerConfigurationRequest')
    GetNetworkAnalyzerConfigurationResponse = Shapes::StructureShape.new(name: 'GetNetworkAnalyzerConfigurationResponse')
    GetPartnerAccountRequest = Shapes::StructureShape.new(name: 'GetPartnerAccountRequest')
    GetPartnerAccountResponse = Shapes::StructureShape.new(name: 'GetPartnerAccountResponse')
    GetPositionConfigurationRequest = Shapes::StructureShape.new(name: 'GetPositionConfigurationRequest')
    GetPositionConfigurationResponse = Shapes::StructureShape.new(name: 'GetPositionConfigurationResponse')
    GetPositionEstimateRequest = Shapes::StructureShape.new(name: 'GetPositionEstimateRequest')
    GetPositionEstimateResponse = Shapes::StructureShape.new(name: 'GetPositionEstimateResponse')
    GetPositionRequest = Shapes::StructureShape.new(name: 'GetPositionRequest')
    GetPositionResponse = Shapes::StructureShape.new(name: 'GetPositionResponse')
    GetResourceEventConfigurationRequest = Shapes::StructureShape.new(name: 'GetResourceEventConfigurationRequest')
    GetResourceEventConfigurationResponse = Shapes::StructureShape.new(name: 'GetResourceEventConfigurationResponse')
    GetResourceLogLevelRequest = Shapes::StructureShape.new(name: 'GetResourceLogLevelRequest')
    GetResourceLogLevelResponse = Shapes::StructureShape.new(name: 'GetResourceLogLevelResponse')
    GetResourcePositionRequest = Shapes::StructureShape.new(name: 'GetResourcePositionRequest')
    GetResourcePositionResponse = Shapes::StructureShape.new(name: 'GetResourcePositionResponse')
    GetServiceEndpointRequest = Shapes::StructureShape.new(name: 'GetServiceEndpointRequest')
    GetServiceEndpointResponse = Shapes::StructureShape.new(name: 'GetServiceEndpointResponse')
    GetServiceProfileRequest = Shapes::StructureShape.new(name: 'GetServiceProfileRequest')
    GetServiceProfileResponse = Shapes::StructureShape.new(name: 'GetServiceProfileResponse')
    GetWirelessDeviceImportTaskRequest = Shapes::StructureShape.new(name: 'GetWirelessDeviceImportTaskRequest')
    GetWirelessDeviceImportTaskResponse = Shapes::StructureShape.new(name: 'GetWirelessDeviceImportTaskResponse')
    GetWirelessDeviceRequest = Shapes::StructureShape.new(name: 'GetWirelessDeviceRequest')
    GetWirelessDeviceResponse = Shapes::StructureShape.new(name: 'GetWirelessDeviceResponse')
    GetWirelessDeviceStatisticsRequest = Shapes::StructureShape.new(name: 'GetWirelessDeviceStatisticsRequest')
    GetWirelessDeviceStatisticsResponse = Shapes::StructureShape.new(name: 'GetWirelessDeviceStatisticsResponse')
    GetWirelessGatewayCertificateRequest = Shapes::StructureShape.new(name: 'GetWirelessGatewayCertificateRequest')
    GetWirelessGatewayCertificateResponse = Shapes::StructureShape.new(name: 'GetWirelessGatewayCertificateResponse')
    GetWirelessGatewayFirmwareInformationRequest = Shapes::StructureShape.new(name: 'GetWirelessGatewayFirmwareInformationRequest')
    GetWirelessGatewayFirmwareInformationResponse = Shapes::StructureShape.new(name: 'GetWirelessGatewayFirmwareInformationResponse')
    GetWirelessGatewayRequest = Shapes::StructureShape.new(name: 'GetWirelessGatewayRequest')
    GetWirelessGatewayResponse = Shapes::StructureShape.new(name: 'GetWirelessGatewayResponse')
    GetWirelessGatewayStatisticsRequest = Shapes::StructureShape.new(name: 'GetWirelessGatewayStatisticsRequest')
    GetWirelessGatewayStatisticsResponse = Shapes::StructureShape.new(name: 'GetWirelessGatewayStatisticsResponse')
    GetWirelessGatewayTaskDefinitionRequest = Shapes::StructureShape.new(name: 'GetWirelessGatewayTaskDefinitionRequest')
    GetWirelessGatewayTaskDefinitionResponse = Shapes::StructureShape.new(name: 'GetWirelessGatewayTaskDefinitionResponse')
    GetWirelessGatewayTaskRequest = Shapes::StructureShape.new(name: 'GetWirelessGatewayTaskRequest')
    GetWirelessGatewayTaskResponse = Shapes::StructureShape.new(name: 'GetWirelessGatewayTaskResponse')
    GlobalIdentity = Shapes::StructureShape.new(name: 'GlobalIdentity')
    Gnss = Shapes::StructureShape.new(name: 'Gnss')
    GnssNav = Shapes::StringShape.new(name: 'GnssNav')
    GsmList = Shapes::ListShape.new(name: 'GsmList')
    GsmLocalId = Shapes::StructureShape.new(name: 'GsmLocalId')
    GsmNmrList = Shapes::ListShape.new(name: 'GsmNmrList')
    GsmNmrObj = Shapes::StructureShape.new(name: 'GsmNmrObj')
    GsmObj = Shapes::StructureShape.new(name: 'GsmObj')
    GsmTimingAdvance = Shapes::IntegerShape.new(name: 'GsmTimingAdvance')
    HorizontalAccuracy = Shapes::FloatShape.new(name: 'HorizontalAccuracy')
    HrAllowed = Shapes::BooleanShape.new(name: 'HrAllowed')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    ISODateTimeString = Shapes::StringShape.new(name: 'ISODateTimeString')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    IdentifierType = Shapes::StringShape.new(name: 'IdentifierType')
    ImportTaskArn = Shapes::StringShape.new(name: 'ImportTaskArn')
    ImportTaskId = Shapes::StringShape.new(name: 'ImportTaskId')
    ImportTaskStatus = Shapes::StringShape.new(name: 'ImportTaskStatus')
    ImportedSidewalkDevice = Shapes::StructureShape.new(name: 'ImportedSidewalkDevice')
    ImportedWirelessDevice = Shapes::StructureShape.new(name: 'ImportedWirelessDevice')
    ImportedWirelessDeviceCount = Shapes::IntegerShape.new(name: 'ImportedWirelessDeviceCount')
    ImportedWirelessDeviceList = Shapes::ListShape.new(name: 'ImportedWirelessDeviceList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IotCertificateId = Shapes::StringShape.new(name: 'IotCertificateId')
    Ip = Shapes::StructureShape.new(name: 'Ip')
    JoinEui = Shapes::StringShape.new(name: 'JoinEui')
    JoinEuiFilters = Shapes::ListShape.new(name: 'JoinEuiFilters')
    JoinEuiRange = Shapes::ListShape.new(name: 'JoinEuiRange')
    JoinEventConfiguration = Shapes::StructureShape.new(name: 'JoinEventConfiguration')
    JoinResourceTypeEventConfiguration = Shapes::StructureShape.new(name: 'JoinResourceTypeEventConfiguration')
    LAC = Shapes::IntegerShape.new(name: 'LAC')
    LastUpdateTime = Shapes::TimestampShape.new(name: 'LastUpdateTime', timestampFormat: "iso8601")
    ListDestinationsRequest = Shapes::StructureShape.new(name: 'ListDestinationsRequest')
    ListDestinationsResponse = Shapes::StructureShape.new(name: 'ListDestinationsResponse')
    ListDeviceProfilesRequest = Shapes::StructureShape.new(name: 'ListDeviceProfilesRequest')
    ListDeviceProfilesResponse = Shapes::StructureShape.new(name: 'ListDeviceProfilesResponse')
    ListDevicesForWirelessDeviceImportTaskRequest = Shapes::StructureShape.new(name: 'ListDevicesForWirelessDeviceImportTaskRequest')
    ListDevicesForWirelessDeviceImportTaskResponse = Shapes::StructureShape.new(name: 'ListDevicesForWirelessDeviceImportTaskResponse')
    ListEventConfigurationsRequest = Shapes::StructureShape.new(name: 'ListEventConfigurationsRequest')
    ListEventConfigurationsResponse = Shapes::StructureShape.new(name: 'ListEventConfigurationsResponse')
    ListFuotaTasksRequest = Shapes::StructureShape.new(name: 'ListFuotaTasksRequest')
    ListFuotaTasksResponse = Shapes::StructureShape.new(name: 'ListFuotaTasksResponse')
    ListMulticastGroupsByFuotaTaskRequest = Shapes::StructureShape.new(name: 'ListMulticastGroupsByFuotaTaskRequest')
    ListMulticastGroupsByFuotaTaskResponse = Shapes::StructureShape.new(name: 'ListMulticastGroupsByFuotaTaskResponse')
    ListMulticastGroupsRequest = Shapes::StructureShape.new(name: 'ListMulticastGroupsRequest')
    ListMulticastGroupsResponse = Shapes::StructureShape.new(name: 'ListMulticastGroupsResponse')
    ListNetworkAnalyzerConfigurationsRequest = Shapes::StructureShape.new(name: 'ListNetworkAnalyzerConfigurationsRequest')
    ListNetworkAnalyzerConfigurationsResponse = Shapes::StructureShape.new(name: 'ListNetworkAnalyzerConfigurationsResponse')
    ListPartnerAccountsRequest = Shapes::StructureShape.new(name: 'ListPartnerAccountsRequest')
    ListPartnerAccountsResponse = Shapes::StructureShape.new(name: 'ListPartnerAccountsResponse')
    ListPositionConfigurationsRequest = Shapes::StructureShape.new(name: 'ListPositionConfigurationsRequest')
    ListPositionConfigurationsResponse = Shapes::StructureShape.new(name: 'ListPositionConfigurationsResponse')
    ListQueuedMessagesRequest = Shapes::StructureShape.new(name: 'ListQueuedMessagesRequest')
    ListQueuedMessagesResponse = Shapes::StructureShape.new(name: 'ListQueuedMessagesResponse')
    ListServiceProfilesRequest = Shapes::StructureShape.new(name: 'ListServiceProfilesRequest')
    ListServiceProfilesResponse = Shapes::StructureShape.new(name: 'ListServiceProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWirelessDeviceImportTasksRequest = Shapes::StructureShape.new(name: 'ListWirelessDeviceImportTasksRequest')
    ListWirelessDeviceImportTasksResponse = Shapes::StructureShape.new(name: 'ListWirelessDeviceImportTasksResponse')
    ListWirelessDevicesRequest = Shapes::StructureShape.new(name: 'ListWirelessDevicesRequest')
    ListWirelessDevicesResponse = Shapes::StructureShape.new(name: 'ListWirelessDevicesResponse')
    ListWirelessGatewayTaskDefinitionsRequest = Shapes::StructureShape.new(name: 'ListWirelessGatewayTaskDefinitionsRequest')
    ListWirelessGatewayTaskDefinitionsResponse = Shapes::StructureShape.new(name: 'ListWirelessGatewayTaskDefinitionsResponse')
    ListWirelessGatewaysRequest = Shapes::StructureShape.new(name: 'ListWirelessGatewaysRequest')
    ListWirelessGatewaysResponse = Shapes::StructureShape.new(name: 'ListWirelessGatewaysResponse')
    LoRaWANConnectionStatusEventNotificationConfigurations = Shapes::StructureShape.new(name: 'LoRaWANConnectionStatusEventNotificationConfigurations')
    LoRaWANConnectionStatusResourceTypeEventConfiguration = Shapes::StructureShape.new(name: 'LoRaWANConnectionStatusResourceTypeEventConfiguration')
    LoRaWANDevice = Shapes::StructureShape.new(name: 'LoRaWANDevice')
    LoRaWANDeviceMetadata = Shapes::StructureShape.new(name: 'LoRaWANDeviceMetadata')
    LoRaWANDeviceProfile = Shapes::StructureShape.new(name: 'LoRaWANDeviceProfile')
    LoRaWANFuotaTask = Shapes::StructureShape.new(name: 'LoRaWANFuotaTask')
    LoRaWANFuotaTaskGetInfo = Shapes::StructureShape.new(name: 'LoRaWANFuotaTaskGetInfo')
    LoRaWANGateway = Shapes::StructureShape.new(name: 'LoRaWANGateway')
    LoRaWANGatewayCurrentVersion = Shapes::StructureShape.new(name: 'LoRaWANGatewayCurrentVersion')
    LoRaWANGatewayMetadata = Shapes::StructureShape.new(name: 'LoRaWANGatewayMetadata')
    LoRaWANGatewayMetadataList = Shapes::ListShape.new(name: 'LoRaWANGatewayMetadataList')
    LoRaWANGatewayVersion = Shapes::StructureShape.new(name: 'LoRaWANGatewayVersion')
    LoRaWANGetServiceProfileInfo = Shapes::StructureShape.new(name: 'LoRaWANGetServiceProfileInfo')
    LoRaWANJoinEventNotificationConfigurations = Shapes::StructureShape.new(name: 'LoRaWANJoinEventNotificationConfigurations')
    LoRaWANJoinResourceTypeEventConfiguration = Shapes::StructureShape.new(name: 'LoRaWANJoinResourceTypeEventConfiguration')
    LoRaWANListDevice = Shapes::StructureShape.new(name: 'LoRaWANListDevice')
    LoRaWANMulticast = Shapes::StructureShape.new(name: 'LoRaWANMulticast')
    LoRaWANMulticastGet = Shapes::StructureShape.new(name: 'LoRaWANMulticastGet')
    LoRaWANMulticastMetadata = Shapes::StructureShape.new(name: 'LoRaWANMulticastMetadata')
    LoRaWANMulticastSession = Shapes::StructureShape.new(name: 'LoRaWANMulticastSession')
    LoRaWANSendDataToDevice = Shapes::StructureShape.new(name: 'LoRaWANSendDataToDevice')
    LoRaWANServiceProfile = Shapes::StructureShape.new(name: 'LoRaWANServiceProfile')
    LoRaWANStartFuotaTask = Shapes::StructureShape.new(name: 'LoRaWANStartFuotaTask')
    LoRaWANUpdateDevice = Shapes::StructureShape.new(name: 'LoRaWANUpdateDevice')
    LoRaWANUpdateGatewayTaskCreate = Shapes::StructureShape.new(name: 'LoRaWANUpdateGatewayTaskCreate')
    LoRaWANUpdateGatewayTaskEntry = Shapes::StructureShape.new(name: 'LoRaWANUpdateGatewayTaskEntry')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    LteList = Shapes::ListShape.new(name: 'LteList')
    LteLocalId = Shapes::StructureShape.new(name: 'LteLocalId')
    LteNmrList = Shapes::ListShape.new(name: 'LteNmrList')
    LteNmrObj = Shapes::StructureShape.new(name: 'LteNmrObj')
    LteObj = Shapes::StructureShape.new(name: 'LteObj')
    LteTimingAdvance = Shapes::IntegerShape.new(name: 'LteTimingAdvance')
    MCC = Shapes::IntegerShape.new(name: 'MCC')
    MNC = Shapes::IntegerShape.new(name: 'MNC')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    MacVersion = Shapes::StringShape.new(name: 'MacVersion')
    MaxAllowedSignature = Shapes::IntegerShape.new(name: 'MaxAllowedSignature')
    MaxDutyCycle = Shapes::IntegerShape.new(name: 'MaxDutyCycle')
    MaxEirp = Shapes::IntegerShape.new(name: 'MaxEirp')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    McGroupId = Shapes::IntegerShape.new(name: 'McGroupId')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageDeliveryStatusEventConfiguration = Shapes::StructureShape.new(name: 'MessageDeliveryStatusEventConfiguration')
    MessageDeliveryStatusResourceTypeEventConfiguration = Shapes::StructureShape.new(name: 'MessageDeliveryStatusResourceTypeEventConfiguration')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    MinGwDiversity = Shapes::IntegerShape.new(name: 'MinGwDiversity')
    Model = Shapes::StringShape.new(name: 'Model')
    MulticastDeviceStatus = Shapes::StringShape.new(name: 'MulticastDeviceStatus')
    MulticastFrameInfo = Shapes::StringShape.new(name: 'MulticastFrameInfo')
    MulticastGroup = Shapes::StructureShape.new(name: 'MulticastGroup')
    MulticastGroupArn = Shapes::StringShape.new(name: 'MulticastGroupArn')
    MulticastGroupByFuotaTask = Shapes::StructureShape.new(name: 'MulticastGroupByFuotaTask')
    MulticastGroupId = Shapes::StringShape.new(name: 'MulticastGroupId')
    MulticastGroupList = Shapes::ListShape.new(name: 'MulticastGroupList')
    MulticastGroupListByFuotaTask = Shapes::ListShape.new(name: 'MulticastGroupListByFuotaTask')
    MulticastGroupMessageId = Shapes::StringShape.new(name: 'MulticastGroupMessageId')
    MulticastGroupName = Shapes::StringShape.new(name: 'MulticastGroupName')
    MulticastGroupStatus = Shapes::StringShape.new(name: 'MulticastGroupStatus')
    MulticastWirelessMetadata = Shapes::StructureShape.new(name: 'MulticastWirelessMetadata')
    NRCapable = Shapes::BooleanShape.new(name: 'NRCapable')
    NetId = Shapes::StringShape.new(name: 'NetId')
    NetIdFilters = Shapes::ListShape.new(name: 'NetIdFilters')
    NetworkAnalyzerConfigurationArn = Shapes::StringShape.new(name: 'NetworkAnalyzerConfigurationArn')
    NetworkAnalyzerConfigurationList = Shapes::ListShape.new(name: 'NetworkAnalyzerConfigurationList')
    NetworkAnalyzerConfigurationName = Shapes::StringShape.new(name: 'NetworkAnalyzerConfigurationName')
    NetworkAnalyzerConfigurations = Shapes::StructureShape.new(name: 'NetworkAnalyzerConfigurations')
    NetworkAnalyzerMulticastGroupList = Shapes::ListShape.new(name: 'NetworkAnalyzerMulticastGroupList')
    NetworkId = Shapes::IntegerShape.new(name: 'NetworkId')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NumberOfDevicesInGroup = Shapes::IntegerShape.new(name: 'NumberOfDevicesInGroup')
    NumberOfDevicesRequested = Shapes::IntegerShape.new(name: 'NumberOfDevicesRequested')
    NwkGeoLoc = Shapes::BooleanShape.new(name: 'NwkGeoLoc')
    NwkKey = Shapes::StringShape.new(name: 'NwkKey')
    NwkSEncKey = Shapes::StringShape.new(name: 'NwkSEncKey')
    NwkSKey = Shapes::StringShape.new(name: 'NwkSKey')
    OnboardStatus = Shapes::StringShape.new(name: 'OnboardStatus')
    OnboardStatusReason = Shapes::StringShape.new(name: 'OnboardStatusReason')
    OtaaV1_0_x = Shapes::StructureShape.new(name: 'OtaaV1_0_x')
    OtaaV1_1 = Shapes::StructureShape.new(name: 'OtaaV1_1')
    PCI = Shapes::IntegerShape.new(name: 'PCI')
    PSC = Shapes::IntegerShape.new(name: 'PSC')
    PackageVersion = Shapes::StringShape.new(name: 'PackageVersion')
    ParticipatingGateways = Shapes::StructureShape.new(name: 'ParticipatingGateways')
    PartnerAccountArn = Shapes::StringShape.new(name: 'PartnerAccountArn')
    PartnerAccountId = Shapes::StringShape.new(name: 'PartnerAccountId')
    PartnerType = Shapes::StringShape.new(name: 'PartnerType')
    PathLoss = Shapes::IntegerShape.new(name: 'PathLoss')
    PayloadData = Shapes::StringShape.new(name: 'PayloadData')
    PilotPower = Shapes::IntegerShape.new(name: 'PilotPower')
    PingSlotDr = Shapes::IntegerShape.new(name: 'PingSlotDr')
    PingSlotFreq = Shapes::IntegerShape.new(name: 'PingSlotFreq')
    PingSlotPeriod = Shapes::IntegerShape.new(name: 'PingSlotPeriod')
    PnOffset = Shapes::IntegerShape.new(name: 'PnOffset')
    PositionConfigurationFec = Shapes::StringShape.new(name: 'PositionConfigurationFec')
    PositionConfigurationItem = Shapes::StructureShape.new(name: 'PositionConfigurationItem')
    PositionConfigurationList = Shapes::ListShape.new(name: 'PositionConfigurationList')
    PositionConfigurationStatus = Shapes::StringShape.new(name: 'PositionConfigurationStatus')
    PositionCoordinate = Shapes::ListShape.new(name: 'PositionCoordinate')
    PositionCoordinateValue = Shapes::FloatShape.new(name: 'PositionCoordinateValue')
    PositionResourceIdentifier = Shapes::StringShape.new(name: 'PositionResourceIdentifier')
    PositionResourceType = Shapes::StringShape.new(name: 'PositionResourceType')
    PositionSolverConfigurations = Shapes::StructureShape.new(name: 'PositionSolverConfigurations')
    PositionSolverDetails = Shapes::StructureShape.new(name: 'PositionSolverDetails')
    PositionSolverProvider = Shapes::StringShape.new(name: 'PositionSolverProvider')
    PositionSolverType = Shapes::StringShape.new(name: 'PositionSolverType')
    PositionSolverVersion = Shapes::StringShape.new(name: 'PositionSolverVersion')
    Positioning = Shapes::StructureShape.new(name: 'Positioning')
    PositioningConfigStatus = Shapes::StringShape.new(name: 'PositioningConfigStatus')
    PrAllowed = Shapes::BooleanShape.new(name: 'PrAllowed')
    PresetFreq = Shapes::IntegerShape.new(name: 'PresetFreq')
    PrivateKeysList = Shapes::ListShape.new(name: 'PrivateKeysList')
    ProximityEventConfiguration = Shapes::StructureShape.new(name: 'ProximityEventConfiguration')
    ProximityResourceTypeEventConfiguration = Shapes::StructureShape.new(name: 'ProximityResourceTypeEventConfiguration')
    PutPositionConfigurationRequest = Shapes::StructureShape.new(name: 'PutPositionConfigurationRequest')
    PutPositionConfigurationResponse = Shapes::StructureShape.new(name: 'PutPositionConfigurationResponse')
    PutResourceLogLevelRequest = Shapes::StructureShape.new(name: 'PutResourceLogLevelRequest')
    PutResourceLogLevelResponse = Shapes::StructureShape.new(name: 'PutResourceLogLevelResponse')
    QualificationStatus = Shapes::BooleanShape.new(name: 'QualificationStatus')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    RSCP = Shapes::IntegerShape.new(name: 'RSCP')
    RSRP = Shapes::IntegerShape.new(name: 'RSRP')
    RSRQ = Shapes::FloatShape.new(name: 'RSRQ')
    RSS = Shapes::IntegerShape.new(name: 'RSS')
    RaAllowed = Shapes::BooleanShape.new(name: 'RaAllowed')
    RedundancyPercent = Shapes::IntegerShape.new(name: 'RedundancyPercent')
    RegParamsRevision = Shapes::StringShape.new(name: 'RegParamsRevision')
    RegistrationZone = Shapes::IntegerShape.new(name: 'RegistrationZone')
    ReportDevStatusBattery = Shapes::BooleanShape.new(name: 'ReportDevStatusBattery')
    ReportDevStatusMargin = Shapes::BooleanShape.new(name: 'ReportDevStatusMargin')
    ResetAllResourceLogLevelsRequest = Shapes::StructureShape.new(name: 'ResetAllResourceLogLevelsRequest')
    ResetAllResourceLogLevelsResponse = Shapes::StructureShape.new(name: 'ResetAllResourceLogLevelsResponse')
    ResetResourceLogLevelRequest = Shapes::StructureShape.new(name: 'ResetResourceLogLevelRequest')
    ResetResourceLogLevelResponse = Shapes::StructureShape.new(name: 'ResetResourceLogLevelResponse')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Result = Shapes::StringShape.new(name: 'Result')
    RfRegion = Shapes::StringShape.new(name: 'RfRegion')
    Role = Shapes::StringShape.new(name: 'Role')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RxDataRate2 = Shapes::IntegerShape.new(name: 'RxDataRate2')
    RxDelay1 = Shapes::IntegerShape.new(name: 'RxDelay1')
    RxDrOffset1 = Shapes::IntegerShape.new(name: 'RxDrOffset1')
    RxFreq2 = Shapes::IntegerShape.new(name: 'RxFreq2')
    RxLevel = Shapes::IntegerShape.new(name: 'RxLevel')
    SNwkSIntKey = Shapes::StringShape.new(name: 'SNwkSIntKey')
    SemtechGnssConfiguration = Shapes::StructureShape.new(name: 'SemtechGnssConfiguration')
    SemtechGnssDetail = Shapes::StructureShape.new(name: 'SemtechGnssDetail')
    SendDataToMulticastGroupRequest = Shapes::StructureShape.new(name: 'SendDataToMulticastGroupRequest')
    SendDataToMulticastGroupResponse = Shapes::StructureShape.new(name: 'SendDataToMulticastGroupResponse')
    SendDataToWirelessDeviceRequest = Shapes::StructureShape.new(name: 'SendDataToWirelessDeviceRequest')
    SendDataToWirelessDeviceResponse = Shapes::StructureShape.new(name: 'SendDataToWirelessDeviceResponse')
    Seq = Shapes::IntegerShape.new(name: 'Seq')
    ServiceProfile = Shapes::StructureShape.new(name: 'ServiceProfile')
    ServiceProfileArn = Shapes::StringShape.new(name: 'ServiceProfileArn')
    ServiceProfileId = Shapes::StringShape.new(name: 'ServiceProfileId')
    ServiceProfileList = Shapes::ListShape.new(name: 'ServiceProfileList')
    ServiceProfileName = Shapes::StringShape.new(name: 'ServiceProfileName')
    SessionKeysAbpV1_0_x = Shapes::StructureShape.new(name: 'SessionKeysAbpV1_0_x')
    SessionKeysAbpV1_1 = Shapes::StructureShape.new(name: 'SessionKeysAbpV1_1')
    SessionStartTimeTimestamp = Shapes::TimestampShape.new(name: 'SessionStartTimeTimestamp', timestampFormat: "iso8601")
    SessionTimeout = Shapes::IntegerShape.new(name: 'SessionTimeout')
    SidewalkAccountInfo = Shapes::StructureShape.new(name: 'SidewalkAccountInfo')
    SidewalkAccountInfoWithFingerprint = Shapes::StructureShape.new(name: 'SidewalkAccountInfoWithFingerprint')
    SidewalkAccountList = Shapes::ListShape.new(name: 'SidewalkAccountList')
    SidewalkCreateDeviceProfile = Shapes::StructureShape.new(name: 'SidewalkCreateDeviceProfile')
    SidewalkCreateWirelessDevice = Shapes::StructureShape.new(name: 'SidewalkCreateWirelessDevice')
    SidewalkDevice = Shapes::StructureShape.new(name: 'SidewalkDevice')
    SidewalkDeviceMetadata = Shapes::StructureShape.new(name: 'SidewalkDeviceMetadata')
    SidewalkEventNotificationConfigurations = Shapes::StructureShape.new(name: 'SidewalkEventNotificationConfigurations')
    SidewalkGetDeviceProfile = Shapes::StructureShape.new(name: 'SidewalkGetDeviceProfile')
    SidewalkGetStartImportInfo = Shapes::StructureShape.new(name: 'SidewalkGetStartImportInfo')
    SidewalkId = Shapes::StringShape.new(name: 'SidewalkId')
    SidewalkListDevice = Shapes::StructureShape.new(name: 'SidewalkListDevice')
    SidewalkManufacturingSn = Shapes::StringShape.new(name: 'SidewalkManufacturingSn')
    SidewalkResourceTypeEventConfiguration = Shapes::StructureShape.new(name: 'SidewalkResourceTypeEventConfiguration')
    SidewalkSendDataToDevice = Shapes::StructureShape.new(name: 'SidewalkSendDataToDevice')
    SidewalkSingleStartImportInfo = Shapes::StructureShape.new(name: 'SidewalkSingleStartImportInfo')
    SidewalkStartImportInfo = Shapes::StructureShape.new(name: 'SidewalkStartImportInfo')
    SidewalkUpdateAccount = Shapes::StructureShape.new(name: 'SidewalkUpdateAccount')
    SidewalkUpdateImportInfo = Shapes::StructureShape.new(name: 'SidewalkUpdateImportInfo')
    SigningAlg = Shapes::StringShape.new(name: 'SigningAlg')
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest = Shapes::StructureShape.new(name: 'StartBulkAssociateWirelessDeviceWithMulticastGroupRequest')
    StartBulkAssociateWirelessDeviceWithMulticastGroupResponse = Shapes::StructureShape.new(name: 'StartBulkAssociateWirelessDeviceWithMulticastGroupResponse')
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest = Shapes::StructureShape.new(name: 'StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest')
    StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse = Shapes::StructureShape.new(name: 'StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse')
    StartFuotaTaskRequest = Shapes::StructureShape.new(name: 'StartFuotaTaskRequest')
    StartFuotaTaskResponse = Shapes::StructureShape.new(name: 'StartFuotaTaskResponse')
    StartMulticastGroupSessionRequest = Shapes::StructureShape.new(name: 'StartMulticastGroupSessionRequest')
    StartMulticastGroupSessionResponse = Shapes::StructureShape.new(name: 'StartMulticastGroupSessionResponse')
    StartSingleWirelessDeviceImportTaskRequest = Shapes::StructureShape.new(name: 'StartSingleWirelessDeviceImportTaskRequest')
    StartSingleWirelessDeviceImportTaskResponse = Shapes::StructureShape.new(name: 'StartSingleWirelessDeviceImportTaskResponse')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime', timestampFormat: "iso8601")
    StartWirelessDeviceImportTaskRequest = Shapes::StructureShape.new(name: 'StartWirelessDeviceImportTaskRequest')
    StartWirelessDeviceImportTaskResponse = Shapes::StructureShape.new(name: 'StartWirelessDeviceImportTaskResponse')
    Station = Shapes::StringShape.new(name: 'Station')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    SubBand = Shapes::IntegerShape.new(name: 'SubBand')
    SubBands = Shapes::ListShape.new(name: 'SubBands')
    SupportedRfRegion = Shapes::StringShape.new(name: 'SupportedRfRegion')
    Supports32BitFCnt = Shapes::BooleanShape.new(name: 'Supports32BitFCnt')
    SupportsClassB = Shapes::BooleanShape.new(name: 'SupportsClassB')
    SupportsClassC = Shapes::BooleanShape.new(name: 'SupportsClassC')
    SupportsJoin = Shapes::BooleanShape.new(name: 'SupportsJoin')
    SystemId = Shapes::IntegerShape.new(name: 'SystemId')
    TAC = Shapes::IntegerShape.new(name: 'TAC')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetPer = Shapes::IntegerShape.new(name: 'TargetPer')
    TdscdmaList = Shapes::ListShape.new(name: 'TdscdmaList')
    TdscdmaLocalId = Shapes::StructureShape.new(name: 'TdscdmaLocalId')
    TdscdmaNmrList = Shapes::ListShape.new(name: 'TdscdmaNmrList')
    TdscdmaNmrObj = Shapes::StructureShape.new(name: 'TdscdmaNmrObj')
    TdscdmaObj = Shapes::StructureShape.new(name: 'TdscdmaObj')
    TdscdmaTimingAdvance = Shapes::IntegerShape.new(name: 'TdscdmaTimingAdvance')
    TestWirelessDeviceRequest = Shapes::StructureShape.new(name: 'TestWirelessDeviceRequest')
    TestWirelessDeviceResponse = Shapes::StructureShape.new(name: 'TestWirelessDeviceResponse')
    ThingArn = Shapes::StringShape.new(name: 'ThingArn')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TraceContent = Shapes::StructureShape.new(name: 'TraceContent')
    TransmissionInterval = Shapes::IntegerShape.new(name: 'TransmissionInterval')
    TransmitMode = Shapes::IntegerShape.new(name: 'TransmitMode')
    UARFCN = Shapes::IntegerShape.new(name: 'UARFCN')
    UARFCNDL = Shapes::IntegerShape.new(name: 'UARFCNDL')
    UlBucketSize = Shapes::IntegerShape.new(name: 'UlBucketSize')
    UlRate = Shapes::IntegerShape.new(name: 'UlRate')
    UlRatePolicy = Shapes::StringShape.new(name: 'UlRatePolicy')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAbpV1_0_x = Shapes::StructureShape.new(name: 'UpdateAbpV1_0_x')
    UpdateAbpV1_1 = Shapes::StructureShape.new(name: 'UpdateAbpV1_1')
    UpdateDataSource = Shapes::StringShape.new(name: 'UpdateDataSource')
    UpdateDestinationRequest = Shapes::StructureShape.new(name: 'UpdateDestinationRequest')
    UpdateDestinationResponse = Shapes::StructureShape.new(name: 'UpdateDestinationResponse')
    UpdateEventConfigurationByResourceTypesRequest = Shapes::StructureShape.new(name: 'UpdateEventConfigurationByResourceTypesRequest')
    UpdateEventConfigurationByResourceTypesResponse = Shapes::StructureShape.new(name: 'UpdateEventConfigurationByResourceTypesResponse')
    UpdateFPorts = Shapes::StructureShape.new(name: 'UpdateFPorts')
    UpdateFuotaTaskRequest = Shapes::StructureShape.new(name: 'UpdateFuotaTaskRequest')
    UpdateFuotaTaskResponse = Shapes::StructureShape.new(name: 'UpdateFuotaTaskResponse')
    UpdateLogLevelsByResourceTypesRequest = Shapes::StructureShape.new(name: 'UpdateLogLevelsByResourceTypesRequest')
    UpdateLogLevelsByResourceTypesResponse = Shapes::StructureShape.new(name: 'UpdateLogLevelsByResourceTypesResponse')
    UpdateMulticastGroupRequest = Shapes::StructureShape.new(name: 'UpdateMulticastGroupRequest')
    UpdateMulticastGroupResponse = Shapes::StructureShape.new(name: 'UpdateMulticastGroupResponse')
    UpdateNetworkAnalyzerConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateNetworkAnalyzerConfigurationRequest')
    UpdateNetworkAnalyzerConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateNetworkAnalyzerConfigurationResponse')
    UpdatePartnerAccountRequest = Shapes::StructureShape.new(name: 'UpdatePartnerAccountRequest')
    UpdatePartnerAccountResponse = Shapes::StructureShape.new(name: 'UpdatePartnerAccountResponse')
    UpdatePositionRequest = Shapes::StructureShape.new(name: 'UpdatePositionRequest')
    UpdatePositionResponse = Shapes::StructureShape.new(name: 'UpdatePositionResponse')
    UpdateResourceEventConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateResourceEventConfigurationRequest')
    UpdateResourceEventConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateResourceEventConfigurationResponse')
    UpdateResourcePositionRequest = Shapes::StructureShape.new(name: 'UpdateResourcePositionRequest')
    UpdateResourcePositionResponse = Shapes::StructureShape.new(name: 'UpdateResourcePositionResponse')
    UpdateSignature = Shapes::StringShape.new(name: 'UpdateSignature')
    UpdateWirelessDeviceImportTaskRequest = Shapes::StructureShape.new(name: 'UpdateWirelessDeviceImportTaskRequest')
    UpdateWirelessDeviceImportTaskResponse = Shapes::StructureShape.new(name: 'UpdateWirelessDeviceImportTaskResponse')
    UpdateWirelessDeviceRequest = Shapes::StructureShape.new(name: 'UpdateWirelessDeviceRequest')
    UpdateWirelessDeviceResponse = Shapes::StructureShape.new(name: 'UpdateWirelessDeviceResponse')
    UpdateWirelessGatewayRequest = Shapes::StructureShape.new(name: 'UpdateWirelessGatewayRequest')
    UpdateWirelessGatewayResponse = Shapes::StructureShape.new(name: 'UpdateWirelessGatewayResponse')
    UpdateWirelessGatewayTaskCreate = Shapes::StructureShape.new(name: 'UpdateWirelessGatewayTaskCreate')
    UpdateWirelessGatewayTaskEntry = Shapes::StructureShape.new(name: 'UpdateWirelessGatewayTaskEntry')
    Use2DSolver = Shapes::BooleanShape.new(name: 'Use2DSolver')
    UtranCid = Shapes::IntegerShape.new(name: 'UtranCid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VerticalAccuracy = Shapes::FloatShape.new(name: 'VerticalAccuracy')
    WcdmaList = Shapes::ListShape.new(name: 'WcdmaList')
    WcdmaLocalId = Shapes::StructureShape.new(name: 'WcdmaLocalId')
    WcdmaNmrList = Shapes::ListShape.new(name: 'WcdmaNmrList')
    WcdmaNmrObj = Shapes::StructureShape.new(name: 'WcdmaNmrObj')
    WcdmaObj = Shapes::StructureShape.new(name: 'WcdmaObj')
    WiFiAccessPoint = Shapes::StructureShape.new(name: 'WiFiAccessPoint')
    WiFiAccessPoints = Shapes::ListShape.new(name: 'WiFiAccessPoints')
    WirelessDeviceArn = Shapes::StringShape.new(name: 'WirelessDeviceArn')
    WirelessDeviceEvent = Shapes::StringShape.new(name: 'WirelessDeviceEvent')
    WirelessDeviceEventLogOption = Shapes::StructureShape.new(name: 'WirelessDeviceEventLogOption')
    WirelessDeviceEventLogOptionList = Shapes::ListShape.new(name: 'WirelessDeviceEventLogOptionList')
    WirelessDeviceFrameInfo = Shapes::StringShape.new(name: 'WirelessDeviceFrameInfo')
    WirelessDeviceId = Shapes::StringShape.new(name: 'WirelessDeviceId')
    WirelessDeviceIdType = Shapes::StringShape.new(name: 'WirelessDeviceIdType')
    WirelessDeviceImportTask = Shapes::StructureShape.new(name: 'WirelessDeviceImportTask')
    WirelessDeviceImportTaskList = Shapes::ListShape.new(name: 'WirelessDeviceImportTaskList')
    WirelessDeviceList = Shapes::ListShape.new(name: 'WirelessDeviceList')
    WirelessDeviceLogOption = Shapes::StructureShape.new(name: 'WirelessDeviceLogOption')
    WirelessDeviceLogOptionList = Shapes::ListShape.new(name: 'WirelessDeviceLogOptionList')
    WirelessDeviceName = Shapes::StringShape.new(name: 'WirelessDeviceName')
    WirelessDeviceSidewalkStatus = Shapes::StringShape.new(name: 'WirelessDeviceSidewalkStatus')
    WirelessDeviceStatistics = Shapes::StructureShape.new(name: 'WirelessDeviceStatistics')
    WirelessDeviceStatisticsList = Shapes::ListShape.new(name: 'WirelessDeviceStatisticsList')
    WirelessDeviceType = Shapes::StringShape.new(name: 'WirelessDeviceType')
    WirelessGatewayArn = Shapes::StringShape.new(name: 'WirelessGatewayArn')
    WirelessGatewayEvent = Shapes::StringShape.new(name: 'WirelessGatewayEvent')
    WirelessGatewayEventLogOption = Shapes::StructureShape.new(name: 'WirelessGatewayEventLogOption')
    WirelessGatewayEventLogOptionList = Shapes::ListShape.new(name: 'WirelessGatewayEventLogOptionList')
    WirelessGatewayId = Shapes::StringShape.new(name: 'WirelessGatewayId')
    WirelessGatewayIdType = Shapes::StringShape.new(name: 'WirelessGatewayIdType')
    WirelessGatewayList = Shapes::ListShape.new(name: 'WirelessGatewayList')
    WirelessGatewayLogOption = Shapes::StructureShape.new(name: 'WirelessGatewayLogOption')
    WirelessGatewayLogOptionList = Shapes::ListShape.new(name: 'WirelessGatewayLogOptionList')
    WirelessGatewayName = Shapes::StringShape.new(name: 'WirelessGatewayName')
    WirelessGatewayServiceType = Shapes::StringShape.new(name: 'WirelessGatewayServiceType')
    WirelessGatewayStatistics = Shapes::StructureShape.new(name: 'WirelessGatewayStatistics')
    WirelessGatewayStatisticsList = Shapes::ListShape.new(name: 'WirelessGatewayStatisticsList')
    WirelessGatewayTaskDefinitionArn = Shapes::StringShape.new(name: 'WirelessGatewayTaskDefinitionArn')
    WirelessGatewayTaskDefinitionId = Shapes::StringShape.new(name: 'WirelessGatewayTaskDefinitionId')
    WirelessGatewayTaskDefinitionList = Shapes::ListShape.new(name: 'WirelessGatewayTaskDefinitionList')
    WirelessGatewayTaskDefinitionType = Shapes::StringShape.new(name: 'WirelessGatewayTaskDefinitionType')
    WirelessGatewayTaskName = Shapes::StringShape.new(name: 'WirelessGatewayTaskName')
    WirelessGatewayTaskStatus = Shapes::StringShape.new(name: 'WirelessGatewayTaskStatus')
    WirelessGatewayType = Shapes::StringShape.new(name: 'WirelessGatewayType')
    WirelessMetadata = Shapes::StructureShape.new(name: 'WirelessMetadata')

    AbpV1_0_x.add_member(:dev_addr, Shapes::ShapeRef.new(shape: DevAddr, location_name: "DevAddr"))
    AbpV1_0_x.add_member(:session_keys, Shapes::ShapeRef.new(shape: SessionKeysAbpV1_0_x, location_name: "SessionKeys"))
    AbpV1_0_x.add_member(:f_cnt_start, Shapes::ShapeRef.new(shape: FCntStart, location_name: "FCntStart"))
    AbpV1_0_x.struct_class = Types::AbpV1_0_x

    AbpV1_1.add_member(:dev_addr, Shapes::ShapeRef.new(shape: DevAddr, location_name: "DevAddr"))
    AbpV1_1.add_member(:session_keys, Shapes::ShapeRef.new(shape: SessionKeysAbpV1_1, location_name: "SessionKeys"))
    AbpV1_1.add_member(:f_cnt_start, Shapes::ShapeRef.new(shape: FCntStart, location_name: "FCntStart"))
    AbpV1_1.struct_class = Types::AbpV1_1

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Accuracy.add_member(:horizontal_accuracy, Shapes::ShapeRef.new(shape: HorizontalAccuracy, location_name: "HorizontalAccuracy"))
    Accuracy.add_member(:vertical_accuracy, Shapes::ShapeRef.new(shape: VerticalAccuracy, location_name: "VerticalAccuracy"))
    Accuracy.struct_class = Types::Accuracy

    ApplicationConfig.add_member(:f_port, Shapes::ShapeRef.new(shape: FPort, location_name: "FPort"))
    ApplicationConfig.add_member(:type, Shapes::ShapeRef.new(shape: ApplicationConfigType, location_name: "Type"))
    ApplicationConfig.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    ApplicationConfig.struct_class = Types::ApplicationConfig

    Applications.member = Shapes::ShapeRef.new(shape: ApplicationConfig)

    AssistPosition.member = Shapes::ShapeRef.new(shape: Coordinate)

    AssociateAwsAccountWithPartnerAccountRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkAccountInfo, required: true, location_name: "Sidewalk"))
    AssociateAwsAccountWithPartnerAccountRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    AssociateAwsAccountWithPartnerAccountRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    AssociateAwsAccountWithPartnerAccountRequest.struct_class = Types::AssociateAwsAccountWithPartnerAccountRequest

    AssociateAwsAccountWithPartnerAccountResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkAccountInfo, location_name: "Sidewalk"))
    AssociateAwsAccountWithPartnerAccountResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerAccountArn, location_name: "Arn"))
    AssociateAwsAccountWithPartnerAccountResponse.struct_class = Types::AssociateAwsAccountWithPartnerAccountResponse

    AssociateMulticastGroupWithFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    AssociateMulticastGroupWithFuotaTaskRequest.add_member(:multicast_group_id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location_name: "MulticastGroupId"))
    AssociateMulticastGroupWithFuotaTaskRequest.struct_class = Types::AssociateMulticastGroupWithFuotaTaskRequest

    AssociateMulticastGroupWithFuotaTaskResponse.struct_class = Types::AssociateMulticastGroupWithFuotaTaskResponse

    AssociateWirelessDeviceWithFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    AssociateWirelessDeviceWithFuotaTaskRequest.add_member(:wireless_device_id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location_name: "WirelessDeviceId"))
    AssociateWirelessDeviceWithFuotaTaskRequest.struct_class = Types::AssociateWirelessDeviceWithFuotaTaskRequest

    AssociateWirelessDeviceWithFuotaTaskResponse.struct_class = Types::AssociateWirelessDeviceWithFuotaTaskResponse

    AssociateWirelessDeviceWithMulticastGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    AssociateWirelessDeviceWithMulticastGroupRequest.add_member(:wireless_device_id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location_name: "WirelessDeviceId"))
    AssociateWirelessDeviceWithMulticastGroupRequest.struct_class = Types::AssociateWirelessDeviceWithMulticastGroupRequest

    AssociateWirelessDeviceWithMulticastGroupResponse.struct_class = Types::AssociateWirelessDeviceWithMulticastGroupResponse

    AssociateWirelessDeviceWithThingRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    AssociateWirelessDeviceWithThingRequest.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, required: true, location_name: "ThingArn"))
    AssociateWirelessDeviceWithThingRequest.struct_class = Types::AssociateWirelessDeviceWithThingRequest

    AssociateWirelessDeviceWithThingResponse.struct_class = Types::AssociateWirelessDeviceWithThingResponse

    AssociateWirelessGatewayWithCertificateRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    AssociateWirelessGatewayWithCertificateRequest.add_member(:iot_certificate_id, Shapes::ShapeRef.new(shape: IotCertificateId, required: true, location_name: "IotCertificateId"))
    AssociateWirelessGatewayWithCertificateRequest.struct_class = Types::AssociateWirelessGatewayWithCertificateRequest

    AssociateWirelessGatewayWithCertificateResponse.add_member(:iot_certificate_id, Shapes::ShapeRef.new(shape: IotCertificateId, location_name: "IotCertificateId"))
    AssociateWirelessGatewayWithCertificateResponse.struct_class = Types::AssociateWirelessGatewayWithCertificateResponse

    AssociateWirelessGatewayWithThingRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    AssociateWirelessGatewayWithThingRequest.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, required: true, location_name: "ThingArn"))
    AssociateWirelessGatewayWithThingRequest.struct_class = Types::AssociateWirelessGatewayWithThingRequest

    AssociateWirelessGatewayWithThingResponse.struct_class = Types::AssociateWirelessGatewayWithThingResponse

    Beaconing.add_member(:data_rate, Shapes::ShapeRef.new(shape: BeaconingDataRate, location_name: "DataRate"))
    Beaconing.add_member(:frequencies, Shapes::ShapeRef.new(shape: BeaconingFrequencies, location_name: "Frequencies"))
    Beaconing.struct_class = Types::Beaconing

    BeaconingFrequencies.member = Shapes::ShapeRef.new(shape: BeaconingFrequency)

    CancelMulticastGroupSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    CancelMulticastGroupSessionRequest.struct_class = Types::CancelMulticastGroupSessionRequest

    CancelMulticastGroupSessionResponse.struct_class = Types::CancelMulticastGroupSessionResponse

    CdmaList.member = Shapes::ShapeRef.new(shape: CdmaObj)

    CdmaLocalId.add_member(:pn_offset, Shapes::ShapeRef.new(shape: PnOffset, required: true, location_name: "PnOffset"))
    CdmaLocalId.add_member(:cdma_channel, Shapes::ShapeRef.new(shape: CdmaChannel, required: true, location_name: "CdmaChannel"))
    CdmaLocalId.struct_class = Types::CdmaLocalId

    CdmaNmrList.member = Shapes::ShapeRef.new(shape: CdmaNmrObj)

    CdmaNmrObj.add_member(:pn_offset, Shapes::ShapeRef.new(shape: PnOffset, required: true, location_name: "PnOffset"))
    CdmaNmrObj.add_member(:cdma_channel, Shapes::ShapeRef.new(shape: CdmaChannel, required: true, location_name: "CdmaChannel"))
    CdmaNmrObj.add_member(:pilot_power, Shapes::ShapeRef.new(shape: PilotPower, location_name: "PilotPower"))
    CdmaNmrObj.add_member(:base_station_id, Shapes::ShapeRef.new(shape: BaseStationId, location_name: "BaseStationId"))
    CdmaNmrObj.struct_class = Types::CdmaNmrObj

    CdmaObj.add_member(:system_id, Shapes::ShapeRef.new(shape: SystemId, required: true, location_name: "SystemId"))
    CdmaObj.add_member(:network_id, Shapes::ShapeRef.new(shape: NetworkId, required: true, location_name: "NetworkId"))
    CdmaObj.add_member(:base_station_id, Shapes::ShapeRef.new(shape: BaseStationId, required: true, location_name: "BaseStationId"))
    CdmaObj.add_member(:registration_zone, Shapes::ShapeRef.new(shape: RegistrationZone, location_name: "RegistrationZone"))
    CdmaObj.add_member(:cdma_local_id, Shapes::ShapeRef.new(shape: CdmaLocalId, location_name: "CdmaLocalId"))
    CdmaObj.add_member(:pilot_power, Shapes::ShapeRef.new(shape: PilotPower, location_name: "PilotPower"))
    CdmaObj.add_member(:base_lat, Shapes::ShapeRef.new(shape: BaseLat, location_name: "BaseLat"))
    CdmaObj.add_member(:base_lng, Shapes::ShapeRef.new(shape: BaseLng, location_name: "BaseLng"))
    CdmaObj.add_member(:cdma_nmr, Shapes::ShapeRef.new(shape: CdmaNmrList, location_name: "CdmaNmr"))
    CdmaObj.struct_class = Types::CdmaObj

    CellTowers.add_member(:gsm, Shapes::ShapeRef.new(shape: GsmList, location_name: "Gsm"))
    CellTowers.add_member(:wcdma, Shapes::ShapeRef.new(shape: WcdmaList, location_name: "Wcdma"))
    CellTowers.add_member(:tdscdma, Shapes::ShapeRef.new(shape: TdscdmaList, location_name: "Tdscdma"))
    CellTowers.add_member(:lte, Shapes::ShapeRef.new(shape: LteList, location_name: "Lte"))
    CellTowers.add_member(:cdma, Shapes::ShapeRef.new(shape: CdmaList, location_name: "Cdma"))
    CellTowers.struct_class = Types::CellTowers

    CertificateList.add_member(:signing_alg, Shapes::ShapeRef.new(shape: SigningAlg, required: true, location_name: "SigningAlg"))
    CertificateList.add_member(:value, Shapes::ShapeRef.new(shape: CertificateValue, required: true, location_name: "Value"))
    CertificateList.struct_class = Types::CertificateList

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConnectionStatusEventConfiguration.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANConnectionStatusEventNotificationConfigurations, location_name: "LoRaWAN"))
    ConnectionStatusEventConfiguration.add_member(:wireless_gateway_id_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "WirelessGatewayIdEventTopic"))
    ConnectionStatusEventConfiguration.struct_class = Types::ConnectionStatusEventConfiguration

    ConnectionStatusResourceTypeEventConfiguration.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANConnectionStatusResourceTypeEventConfiguration, location_name: "LoRaWAN"))
    ConnectionStatusResourceTypeEventConfiguration.struct_class = Types::ConnectionStatusResourceTypeEventConfiguration

    CreateDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "Name"))
    CreateDestinationRequest.add_member(:expression_type, Shapes::ShapeRef.new(shape: ExpressionType, required: true, location_name: "ExpressionType"))
    CreateDestinationRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    CreateDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDestinationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateDestinationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDestinationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateDestinationRequest.struct_class = Types::CreateDestinationRequest

    CreateDestinationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "Arn"))
    CreateDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    CreateDestinationResponse.struct_class = Types::CreateDestinationResponse

    CreateDeviceProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeviceProfileName, location_name: "Name"))
    CreateDeviceProfileRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANDeviceProfile, location_name: "LoRaWAN"))
    CreateDeviceProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDeviceProfileRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateDeviceProfileRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkCreateDeviceProfile, location_name: "Sidewalk"))
    CreateDeviceProfileRequest.struct_class = Types::CreateDeviceProfileRequest

    CreateDeviceProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceProfileArn, location_name: "Arn"))
    CreateDeviceProfileResponse.add_member(:id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "Id"))
    CreateDeviceProfileResponse.struct_class = Types::CreateDeviceProfileResponse

    CreateFuotaTaskRequest.add_member(:name, Shapes::ShapeRef.new(shape: FuotaTaskName, location_name: "Name"))
    CreateFuotaTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFuotaTaskRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateFuotaTaskRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANFuotaTask, location_name: "LoRaWAN"))
    CreateFuotaTaskRequest.add_member(:firmware_update_image, Shapes::ShapeRef.new(shape: FirmwareUpdateImage, required: true, location_name: "FirmwareUpdateImage"))
    CreateFuotaTaskRequest.add_member(:firmware_update_role, Shapes::ShapeRef.new(shape: FirmwareUpdateRole, required: true, location_name: "FirmwareUpdateRole"))
    CreateFuotaTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFuotaTaskRequest.add_member(:redundancy_percent, Shapes::ShapeRef.new(shape: RedundancyPercent, location_name: "RedundancyPercent"))
    CreateFuotaTaskRequest.add_member(:fragment_size_bytes, Shapes::ShapeRef.new(shape: FragmentSizeBytes, location_name: "FragmentSizeBytes"))
    CreateFuotaTaskRequest.add_member(:fragment_interval_ms, Shapes::ShapeRef.new(shape: FragmentIntervalMS, location_name: "FragmentIntervalMS"))
    CreateFuotaTaskRequest.struct_class = Types::CreateFuotaTaskRequest

    CreateFuotaTaskResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FuotaTaskArn, location_name: "Arn"))
    CreateFuotaTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, location_name: "Id"))
    CreateFuotaTaskResponse.struct_class = Types::CreateFuotaTaskResponse

    CreateMulticastGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: MulticastGroupName, location_name: "Name"))
    CreateMulticastGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateMulticastGroupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMulticastGroupRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANMulticast, required: true, location_name: "LoRaWAN"))
    CreateMulticastGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMulticastGroupRequest.struct_class = Types::CreateMulticastGroupRequest

    CreateMulticastGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: MulticastGroupArn, location_name: "Arn"))
    CreateMulticastGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, location_name: "Id"))
    CreateMulticastGroupResponse.struct_class = Types::CreateMulticastGroupResponse

    CreateNetworkAnalyzerConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationName, required: true, location_name: "Name"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:trace_content, Shapes::ShapeRef.new(shape: TraceContent, location_name: "TraceContent"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:wireless_devices, Shapes::ShapeRef.new(shape: WirelessDeviceList, location_name: "WirelessDevices"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:wireless_gateways, Shapes::ShapeRef.new(shape: WirelessGatewayList, location_name: "WirelessGateways"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:multicast_groups, Shapes::ShapeRef.new(shape: NetworkAnalyzerMulticastGroupList, location_name: "MulticastGroups"))
    CreateNetworkAnalyzerConfigurationRequest.struct_class = Types::CreateNetworkAnalyzerConfigurationRequest

    CreateNetworkAnalyzerConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationArn, location_name: "Arn"))
    CreateNetworkAnalyzerConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationName, location_name: "Name"))
    CreateNetworkAnalyzerConfigurationResponse.struct_class = Types::CreateNetworkAnalyzerConfigurationResponse

    CreateServiceProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: ServiceProfileName, location_name: "Name"))
    CreateServiceProfileRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANServiceProfile, location_name: "LoRaWAN"))
    CreateServiceProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateServiceProfileRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateServiceProfileRequest.struct_class = Types::CreateServiceProfileRequest

    CreateServiceProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceProfileArn, location_name: "Arn"))
    CreateServiceProfileResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceProfileId, location_name: "Id"))
    CreateServiceProfileResponse.struct_class = Types::CreateServiceProfileResponse

    CreateWirelessDeviceRequest.add_member(:type, Shapes::ShapeRef.new(shape: WirelessDeviceType, required: true, location_name: "Type"))
    CreateWirelessDeviceRequest.add_member(:name, Shapes::ShapeRef.new(shape: WirelessDeviceName, location_name: "Name"))
    CreateWirelessDeviceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateWirelessDeviceRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "DestinationName"))
    CreateWirelessDeviceRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateWirelessDeviceRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANDevice, location_name: "LoRaWAN"))
    CreateWirelessDeviceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWirelessDeviceRequest.add_member(:positioning, Shapes::ShapeRef.new(shape: PositioningConfigStatus, location_name: "Positioning"))
    CreateWirelessDeviceRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkCreateWirelessDevice, location_name: "Sidewalk"))
    CreateWirelessDeviceRequest.struct_class = Types::CreateWirelessDeviceRequest

    CreateWirelessDeviceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessDeviceArn, location_name: "Arn"))
    CreateWirelessDeviceResponse.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, location_name: "Id"))
    CreateWirelessDeviceResponse.struct_class = Types::CreateWirelessDeviceResponse

    CreateWirelessGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: WirelessGatewayName, location_name: "Name"))
    CreateWirelessGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateWirelessGatewayRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANGateway, required: true, location_name: "LoRaWAN"))
    CreateWirelessGatewayRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWirelessGatewayRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateWirelessGatewayRequest.struct_class = Types::CreateWirelessGatewayRequest

    CreateWirelessGatewayResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessGatewayArn, location_name: "Arn"))
    CreateWirelessGatewayResponse.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, location_name: "Id"))
    CreateWirelessGatewayResponse.struct_class = Types::CreateWirelessGatewayResponse

    CreateWirelessGatewayTaskDefinitionRequest.add_member(:auto_create_tasks, Shapes::ShapeRef.new(shape: AutoCreateTasks, required: true, location_name: "AutoCreateTasks"))
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: WirelessGatewayTaskName, location_name: "Name"))
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:update, Shapes::ShapeRef.new(shape: UpdateWirelessGatewayTaskCreate, location_name: "Update"))
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWirelessGatewayTaskDefinitionRequest.struct_class = Types::CreateWirelessGatewayTaskDefinitionRequest

    CreateWirelessGatewayTaskDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, location_name: "Id"))
    CreateWirelessGatewayTaskDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionArn, location_name: "Arn"))
    CreateWirelessGatewayTaskDefinitionResponse.struct_class = Types::CreateWirelessGatewayTaskDefinitionResponse

    CreateWirelessGatewayTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    CreateWirelessGatewayTaskRequest.add_member(:wireless_gateway_task_definition_id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, required: true, location_name: "WirelessGatewayTaskDefinitionId"))
    CreateWirelessGatewayTaskRequest.struct_class = Types::CreateWirelessGatewayTaskRequest

    CreateWirelessGatewayTaskResponse.add_member(:wireless_gateway_task_definition_id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, location_name: "WirelessGatewayTaskDefinitionId"))
    CreateWirelessGatewayTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: WirelessGatewayTaskStatus, location_name: "Status"))
    CreateWirelessGatewayTaskResponse.struct_class = Types::CreateWirelessGatewayTaskResponse

    DakCertificateMetadata.add_member(:certificate_id, Shapes::ShapeRef.new(shape: DakCertificateId, required: true, location_name: "CertificateId"))
    DakCertificateMetadata.add_member(:max_allowed_signature, Shapes::ShapeRef.new(shape: MaxAllowedSignature, location_name: "MaxAllowedSignature"))
    DakCertificateMetadata.add_member(:factory_support, Shapes::ShapeRef.new(shape: FactorySupport, location_name: "FactorySupport"))
    DakCertificateMetadata.add_member(:ap_id, Shapes::ShapeRef.new(shape: ApId, location_name: "ApId"))
    DakCertificateMetadata.add_member(:device_type_id, Shapes::ShapeRef.new(shape: DeviceTypeId, location_name: "DeviceTypeId"))
    DakCertificateMetadata.struct_class = Types::DakCertificateMetadata

    DakCertificateMetadataList.member = Shapes::ShapeRef.new(shape: DakCertificateMetadata)

    DeleteDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location: "uri", location_name: "Name"))
    DeleteDestinationRequest.struct_class = Types::DeleteDestinationRequest

    DeleteDestinationResponse.struct_class = Types::DeleteDestinationResponse

    DeleteDeviceProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeviceProfileId, required: true, location: "uri", location_name: "Id"))
    DeleteDeviceProfileRequest.struct_class = Types::DeleteDeviceProfileRequest

    DeleteDeviceProfileResponse.struct_class = Types::DeleteDeviceProfileResponse

    DeleteFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    DeleteFuotaTaskRequest.struct_class = Types::DeleteFuotaTaskRequest

    DeleteFuotaTaskResponse.struct_class = Types::DeleteFuotaTaskResponse

    DeleteMulticastGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    DeleteMulticastGroupRequest.struct_class = Types::DeleteMulticastGroupRequest

    DeleteMulticastGroupResponse.struct_class = Types::DeleteMulticastGroupResponse

    DeleteNetworkAnalyzerConfigurationRequest.add_member(:configuration_name, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationName, required: true, location: "uri", location_name: "ConfigurationName"))
    DeleteNetworkAnalyzerConfigurationRequest.struct_class = Types::DeleteNetworkAnalyzerConfigurationRequest

    DeleteNetworkAnalyzerConfigurationResponse.struct_class = Types::DeleteNetworkAnalyzerConfigurationResponse

    DeleteQueuedMessagesRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    DeleteQueuedMessagesRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "querystring", location_name: "messageId"))
    DeleteQueuedMessagesRequest.add_member(:wireless_device_type, Shapes::ShapeRef.new(shape: WirelessDeviceType, location: "querystring", location_name: "WirelessDeviceType"))
    DeleteQueuedMessagesRequest.struct_class = Types::DeleteQueuedMessagesRequest

    DeleteQueuedMessagesResponse.struct_class = Types::DeleteQueuedMessagesResponse

    DeleteServiceProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: ServiceProfileId, required: true, location: "uri", location_name: "Id"))
    DeleteServiceProfileRequest.struct_class = Types::DeleteServiceProfileRequest

    DeleteServiceProfileResponse.struct_class = Types::DeleteServiceProfileResponse

    DeleteWirelessDeviceImportTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: ImportTaskId, required: true, location: "uri", location_name: "Id"))
    DeleteWirelessDeviceImportTaskRequest.struct_class = Types::DeleteWirelessDeviceImportTaskRequest

    DeleteWirelessDeviceImportTaskResponse.struct_class = Types::DeleteWirelessDeviceImportTaskResponse

    DeleteWirelessDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    DeleteWirelessDeviceRequest.struct_class = Types::DeleteWirelessDeviceRequest

    DeleteWirelessDeviceResponse.struct_class = Types::DeleteWirelessDeviceResponse

    DeleteWirelessGatewayRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    DeleteWirelessGatewayRequest.struct_class = Types::DeleteWirelessGatewayRequest

    DeleteWirelessGatewayResponse.struct_class = Types::DeleteWirelessGatewayResponse

    DeleteWirelessGatewayTaskDefinitionRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, required: true, location: "uri", location_name: "Id"))
    DeleteWirelessGatewayTaskDefinitionRequest.struct_class = Types::DeleteWirelessGatewayTaskDefinitionRequest

    DeleteWirelessGatewayTaskDefinitionResponse.struct_class = Types::DeleteWirelessGatewayTaskDefinitionResponse

    DeleteWirelessGatewayTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    DeleteWirelessGatewayTaskRequest.struct_class = Types::DeleteWirelessGatewayTaskRequest

    DeleteWirelessGatewayTaskResponse.struct_class = Types::DeleteWirelessGatewayTaskResponse

    DeregisterWirelessDeviceRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    DeregisterWirelessDeviceRequest.add_member(:wireless_device_type, Shapes::ShapeRef.new(shape: WirelessDeviceType, location: "querystring", location_name: "WirelessDeviceType"))
    DeregisterWirelessDeviceRequest.struct_class = Types::DeregisterWirelessDeviceRequest

    DeregisterWirelessDeviceResponse.struct_class = Types::DeregisterWirelessDeviceResponse

    DestinationList.member = Shapes::ShapeRef.new(shape: Destinations)

    Destinations.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "Arn"))
    Destinations.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    Destinations.add_member(:expression_type, Shapes::ShapeRef.new(shape: ExpressionType, location_name: "ExpressionType"))
    Destinations.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "Expression"))
    Destinations.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Destinations.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    Destinations.struct_class = Types::Destinations

    DeviceCertificateList.member = Shapes::ShapeRef.new(shape: CertificateList)

    DeviceCreationFileList.member = Shapes::ShapeRef.new(shape: DeviceCreationFile)

    DeviceProfile.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceProfileArn, location_name: "Arn"))
    DeviceProfile.add_member(:name, Shapes::ShapeRef.new(shape: DeviceProfileName, location_name: "Name"))
    DeviceProfile.add_member(:id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "Id"))
    DeviceProfile.struct_class = Types::DeviceProfile

    DeviceProfileList.member = Shapes::ShapeRef.new(shape: DeviceProfile)

    DeviceRegistrationStateEventConfiguration.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkEventNotificationConfigurations, location_name: "Sidewalk"))
    DeviceRegistrationStateEventConfiguration.add_member(:wireless_device_id_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "WirelessDeviceIdEventTopic"))
    DeviceRegistrationStateEventConfiguration.struct_class = Types::DeviceRegistrationStateEventConfiguration

    DeviceRegistrationStateResourceTypeEventConfiguration.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkResourceTypeEventConfiguration, location_name: "Sidewalk"))
    DeviceRegistrationStateResourceTypeEventConfiguration.struct_class = Types::DeviceRegistrationStateResourceTypeEventConfiguration

    DisassociateAwsAccountFromPartnerAccountRequest.add_member(:partner_account_id, Shapes::ShapeRef.new(shape: PartnerAccountId, required: true, location: "uri", location_name: "PartnerAccountId"))
    DisassociateAwsAccountFromPartnerAccountRequest.add_member(:partner_type, Shapes::ShapeRef.new(shape: PartnerType, required: true, location: "querystring", location_name: "partnerType"))
    DisassociateAwsAccountFromPartnerAccountRequest.struct_class = Types::DisassociateAwsAccountFromPartnerAccountRequest

    DisassociateAwsAccountFromPartnerAccountResponse.struct_class = Types::DisassociateAwsAccountFromPartnerAccountResponse

    DisassociateMulticastGroupFromFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    DisassociateMulticastGroupFromFuotaTaskRequest.add_member(:multicast_group_id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "MulticastGroupId"))
    DisassociateMulticastGroupFromFuotaTaskRequest.struct_class = Types::DisassociateMulticastGroupFromFuotaTaskRequest

    DisassociateMulticastGroupFromFuotaTaskResponse.struct_class = Types::DisassociateMulticastGroupFromFuotaTaskResponse

    DisassociateWirelessDeviceFromFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    DisassociateWirelessDeviceFromFuotaTaskRequest.add_member(:wireless_device_id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "WirelessDeviceId"))
    DisassociateWirelessDeviceFromFuotaTaskRequest.struct_class = Types::DisassociateWirelessDeviceFromFuotaTaskRequest

    DisassociateWirelessDeviceFromFuotaTaskResponse.struct_class = Types::DisassociateWirelessDeviceFromFuotaTaskResponse

    DisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    DisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:wireless_device_id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "WirelessDeviceId"))
    DisassociateWirelessDeviceFromMulticastGroupRequest.struct_class = Types::DisassociateWirelessDeviceFromMulticastGroupRequest

    DisassociateWirelessDeviceFromMulticastGroupResponse.struct_class = Types::DisassociateWirelessDeviceFromMulticastGroupResponse

    DisassociateWirelessDeviceFromThingRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    DisassociateWirelessDeviceFromThingRequest.struct_class = Types::DisassociateWirelessDeviceFromThingRequest

    DisassociateWirelessDeviceFromThingResponse.struct_class = Types::DisassociateWirelessDeviceFromThingResponse

    DisassociateWirelessGatewayFromCertificateRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    DisassociateWirelessGatewayFromCertificateRequest.struct_class = Types::DisassociateWirelessGatewayFromCertificateRequest

    DisassociateWirelessGatewayFromCertificateResponse.struct_class = Types::DisassociateWirelessGatewayFromCertificateResponse

    DisassociateWirelessGatewayFromThingRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    DisassociateWirelessGatewayFromThingRequest.struct_class = Types::DisassociateWirelessGatewayFromThingRequest

    DisassociateWirelessGatewayFromThingResponse.struct_class = Types::DisassociateWirelessGatewayFromThingResponse

    DownlinkQueueMessage.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    DownlinkQueueMessage.add_member(:transmit_mode, Shapes::ShapeRef.new(shape: TransmitMode, location_name: "TransmitMode"))
    DownlinkQueueMessage.add_member(:received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "ReceivedAt"))
    DownlinkQueueMessage.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANSendDataToDevice, location_name: "LoRaWAN"))
    DownlinkQueueMessage.struct_class = Types::DownlinkQueueMessage

    DownlinkQueueMessagesList.member = Shapes::ShapeRef.new(shape: DownlinkQueueMessage)

    EventConfigurationItem.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "Identifier"))
    EventConfigurationItem.add_member(:identifier_type, Shapes::ShapeRef.new(shape: IdentifierType, location_name: "IdentifierType"))
    EventConfigurationItem.add_member(:partner_type, Shapes::ShapeRef.new(shape: EventNotificationPartnerType, location_name: "PartnerType"))
    EventConfigurationItem.add_member(:events, Shapes::ShapeRef.new(shape: EventNotificationItemConfigurations, location_name: "Events"))
    EventConfigurationItem.struct_class = Types::EventConfigurationItem

    EventConfigurationsList.member = Shapes::ShapeRef.new(shape: EventConfigurationItem)

    EventNotificationItemConfigurations.add_member(:device_registration_state, Shapes::ShapeRef.new(shape: DeviceRegistrationStateEventConfiguration, location_name: "DeviceRegistrationState"))
    EventNotificationItemConfigurations.add_member(:proximity, Shapes::ShapeRef.new(shape: ProximityEventConfiguration, location_name: "Proximity"))
    EventNotificationItemConfigurations.add_member(:join, Shapes::ShapeRef.new(shape: JoinEventConfiguration, location_name: "Join"))
    EventNotificationItemConfigurations.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatusEventConfiguration, location_name: "ConnectionStatus"))
    EventNotificationItemConfigurations.add_member(:message_delivery_status, Shapes::ShapeRef.new(shape: MessageDeliveryStatusEventConfiguration, location_name: "MessageDeliveryStatus"))
    EventNotificationItemConfigurations.struct_class = Types::EventNotificationItemConfigurations

    FPorts.add_member(:fuota, Shapes::ShapeRef.new(shape: FPort, location_name: "Fuota"))
    FPorts.add_member(:multicast, Shapes::ShapeRef.new(shape: FPort, location_name: "Multicast"))
    FPorts.add_member(:clock_sync, Shapes::ShapeRef.new(shape: FPort, location_name: "ClockSync"))
    FPorts.add_member(:positioning, Shapes::ShapeRef.new(shape: Positioning, location_name: "Positioning"))
    FPorts.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    FPorts.struct_class = Types::FPorts

    FactoryPresetFreqsList.member = Shapes::ShapeRef.new(shape: PresetFreq)

    FuotaTask.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, location_name: "Id"))
    FuotaTask.add_member(:arn, Shapes::ShapeRef.new(shape: FuotaTaskArn, location_name: "Arn"))
    FuotaTask.add_member(:name, Shapes::ShapeRef.new(shape: FuotaTaskName, location_name: "Name"))
    FuotaTask.struct_class = Types::FuotaTask

    FuotaTaskList.member = Shapes::ShapeRef.new(shape: FuotaTask)

    GatewayList.member = Shapes::ShapeRef.new(shape: GatewayListItem)

    GatewayListItem.add_member(:gateway_id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location_name: "GatewayId"))
    GatewayListItem.add_member(:downlink_frequency, Shapes::ShapeRef.new(shape: DownlinkFrequency, required: true, location_name: "DownlinkFrequency"))
    GatewayListItem.struct_class = Types::GatewayListItem

    GetDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location: "uri", location_name: "Name"))
    GetDestinationRequest.struct_class = Types::GetDestinationRequest

    GetDestinationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "Arn"))
    GetDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    GetDestinationResponse.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "Expression"))
    GetDestinationResponse.add_member(:expression_type, Shapes::ShapeRef.new(shape: ExpressionType, location_name: "ExpressionType"))
    GetDestinationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetDestinationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    GetDestinationResponse.struct_class = Types::GetDestinationResponse

    GetDeviceProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeviceProfileId, required: true, location: "uri", location_name: "Id"))
    GetDeviceProfileRequest.struct_class = Types::GetDeviceProfileRequest

    GetDeviceProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceProfileArn, location_name: "Arn"))
    GetDeviceProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: DeviceProfileName, location_name: "Name"))
    GetDeviceProfileResponse.add_member(:id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "Id"))
    GetDeviceProfileResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANDeviceProfile, location_name: "LoRaWAN"))
    GetDeviceProfileResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkGetDeviceProfile, location_name: "Sidewalk"))
    GetDeviceProfileResponse.struct_class = Types::GetDeviceProfileResponse

    GetEventConfigurationByResourceTypesRequest.struct_class = Types::GetEventConfigurationByResourceTypesRequest

    GetEventConfigurationByResourceTypesResponse.add_member(:device_registration_state, Shapes::ShapeRef.new(shape: DeviceRegistrationStateResourceTypeEventConfiguration, location_name: "DeviceRegistrationState"))
    GetEventConfigurationByResourceTypesResponse.add_member(:proximity, Shapes::ShapeRef.new(shape: ProximityResourceTypeEventConfiguration, location_name: "Proximity"))
    GetEventConfigurationByResourceTypesResponse.add_member(:join, Shapes::ShapeRef.new(shape: JoinResourceTypeEventConfiguration, location_name: "Join"))
    GetEventConfigurationByResourceTypesResponse.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatusResourceTypeEventConfiguration, location_name: "ConnectionStatus"))
    GetEventConfigurationByResourceTypesResponse.add_member(:message_delivery_status, Shapes::ShapeRef.new(shape: MessageDeliveryStatusResourceTypeEventConfiguration, location_name: "MessageDeliveryStatus"))
    GetEventConfigurationByResourceTypesResponse.struct_class = Types::GetEventConfigurationByResourceTypesResponse

    GetFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    GetFuotaTaskRequest.struct_class = Types::GetFuotaTaskRequest

    GetFuotaTaskResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FuotaTaskArn, location_name: "Arn"))
    GetFuotaTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, location_name: "Id"))
    GetFuotaTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: FuotaTaskStatus, location_name: "Status"))
    GetFuotaTaskResponse.add_member(:name, Shapes::ShapeRef.new(shape: FuotaTaskName, location_name: "Name"))
    GetFuotaTaskResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetFuotaTaskResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANFuotaTaskGetInfo, location_name: "LoRaWAN"))
    GetFuotaTaskResponse.add_member(:firmware_update_image, Shapes::ShapeRef.new(shape: FirmwareUpdateImage, location_name: "FirmwareUpdateImage"))
    GetFuotaTaskResponse.add_member(:firmware_update_role, Shapes::ShapeRef.new(shape: FirmwareUpdateRole, location_name: "FirmwareUpdateRole"))
    GetFuotaTaskResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    GetFuotaTaskResponse.add_member(:redundancy_percent, Shapes::ShapeRef.new(shape: RedundancyPercent, location_name: "RedundancyPercent"))
    GetFuotaTaskResponse.add_member(:fragment_size_bytes, Shapes::ShapeRef.new(shape: FragmentSizeBytes, location_name: "FragmentSizeBytes"))
    GetFuotaTaskResponse.add_member(:fragment_interval_ms, Shapes::ShapeRef.new(shape: FragmentIntervalMS, location_name: "FragmentIntervalMS"))
    GetFuotaTaskResponse.struct_class = Types::GetFuotaTaskResponse

    GetLogLevelsByResourceTypesRequest.struct_class = Types::GetLogLevelsByResourceTypesRequest

    GetLogLevelsByResourceTypesResponse.add_member(:default_log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "DefaultLogLevel"))
    GetLogLevelsByResourceTypesResponse.add_member(:wireless_gateway_log_options, Shapes::ShapeRef.new(shape: WirelessGatewayLogOptionList, location_name: "WirelessGatewayLogOptions"))
    GetLogLevelsByResourceTypesResponse.add_member(:wireless_device_log_options, Shapes::ShapeRef.new(shape: WirelessDeviceLogOptionList, location_name: "WirelessDeviceLogOptions"))
    GetLogLevelsByResourceTypesResponse.struct_class = Types::GetLogLevelsByResourceTypesResponse

    GetMulticastGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    GetMulticastGroupRequest.struct_class = Types::GetMulticastGroupRequest

    GetMulticastGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: MulticastGroupArn, location_name: "Arn"))
    GetMulticastGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, location_name: "Id"))
    GetMulticastGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: MulticastGroupName, location_name: "Name"))
    GetMulticastGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetMulticastGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: MulticastGroupStatus, location_name: "Status"))
    GetMulticastGroupResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANMulticastGet, location_name: "LoRaWAN"))
    GetMulticastGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    GetMulticastGroupResponse.struct_class = Types::GetMulticastGroupResponse

    GetMulticastGroupSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    GetMulticastGroupSessionRequest.struct_class = Types::GetMulticastGroupSessionRequest

    GetMulticastGroupSessionResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANMulticastSession, location_name: "LoRaWAN"))
    GetMulticastGroupSessionResponse.struct_class = Types::GetMulticastGroupSessionResponse

    GetNetworkAnalyzerConfigurationRequest.add_member(:configuration_name, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationName, required: true, location: "uri", location_name: "ConfigurationName"))
    GetNetworkAnalyzerConfigurationRequest.struct_class = Types::GetNetworkAnalyzerConfigurationRequest

    GetNetworkAnalyzerConfigurationResponse.add_member(:trace_content, Shapes::ShapeRef.new(shape: TraceContent, location_name: "TraceContent"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:wireless_devices, Shapes::ShapeRef.new(shape: WirelessDeviceList, location_name: "WirelessDevices"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:wireless_gateways, Shapes::ShapeRef.new(shape: WirelessGatewayList, location_name: "WirelessGateways"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationArn, location_name: "Arn"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationName, location_name: "Name"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:multicast_groups, Shapes::ShapeRef.new(shape: NetworkAnalyzerMulticastGroupList, location_name: "MulticastGroups"))
    GetNetworkAnalyzerConfigurationResponse.struct_class = Types::GetNetworkAnalyzerConfigurationResponse

    GetPartnerAccountRequest.add_member(:partner_account_id, Shapes::ShapeRef.new(shape: PartnerAccountId, required: true, location: "uri", location_name: "PartnerAccountId"))
    GetPartnerAccountRequest.add_member(:partner_type, Shapes::ShapeRef.new(shape: PartnerType, required: true, location: "querystring", location_name: "partnerType"))
    GetPartnerAccountRequest.struct_class = Types::GetPartnerAccountRequest

    GetPartnerAccountResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkAccountInfoWithFingerprint, location_name: "Sidewalk"))
    GetPartnerAccountResponse.add_member(:account_linked, Shapes::ShapeRef.new(shape: AccountLinked, location_name: "AccountLinked"))
    GetPartnerAccountResponse.struct_class = Types::GetPartnerAccountResponse

    GetPositionConfigurationRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: PositionResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    GetPositionConfigurationRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: PositionResourceType, required: true, location: "querystring", location_name: "resourceType"))
    GetPositionConfigurationRequest.struct_class = Types::GetPositionConfigurationRequest

    GetPositionConfigurationResponse.add_member(:solvers, Shapes::ShapeRef.new(shape: PositionSolverDetails, location_name: "Solvers"))
    GetPositionConfigurationResponse.add_member(:destination, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Destination"))
    GetPositionConfigurationResponse.struct_class = Types::GetPositionConfigurationResponse

    GetPositionEstimateRequest.add_member(:wi_fi_access_points, Shapes::ShapeRef.new(shape: WiFiAccessPoints, location_name: "WiFiAccessPoints"))
    GetPositionEstimateRequest.add_member(:cell_towers, Shapes::ShapeRef.new(shape: CellTowers, location_name: "CellTowers"))
    GetPositionEstimateRequest.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, location_name: "Ip"))
    GetPositionEstimateRequest.add_member(:gnss, Shapes::ShapeRef.new(shape: Gnss, location_name: "Gnss"))
    GetPositionEstimateRequest.add_member(:timestamp, Shapes::ShapeRef.new(shape: CreationDate, location_name: "Timestamp"))
    GetPositionEstimateRequest.struct_class = Types::GetPositionEstimateRequest

    GetPositionEstimateResponse.add_member(:geo_json_payload, Shapes::ShapeRef.new(shape: GeoJsonPayload, location_name: "GeoJsonPayload"))
    GetPositionEstimateResponse.struct_class = Types::GetPositionEstimateResponse
    GetPositionEstimateResponse[:payload] = :geo_json_payload
    GetPositionEstimateResponse[:payload_member] = GetPositionEstimateResponse.member(:geo_json_payload)

    GetPositionRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: PositionResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    GetPositionRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: PositionResourceType, required: true, location: "querystring", location_name: "resourceType"))
    GetPositionRequest.struct_class = Types::GetPositionRequest

    GetPositionResponse.add_member(:position, Shapes::ShapeRef.new(shape: PositionCoordinate, location_name: "Position"))
    GetPositionResponse.add_member(:accuracy, Shapes::ShapeRef.new(shape: Accuracy, location_name: "Accuracy"))
    GetPositionResponse.add_member(:solver_type, Shapes::ShapeRef.new(shape: PositionSolverType, location_name: "SolverType"))
    GetPositionResponse.add_member(:solver_provider, Shapes::ShapeRef.new(shape: PositionSolverProvider, location_name: "SolverProvider"))
    GetPositionResponse.add_member(:solver_version, Shapes::ShapeRef.new(shape: PositionSolverVersion, location_name: "SolverVersion"))
    GetPositionResponse.add_member(:timestamp, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "Timestamp"))
    GetPositionResponse.struct_class = Types::GetPositionResponse

    GetResourceEventConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    GetResourceEventConfigurationRequest.add_member(:identifier_type, Shapes::ShapeRef.new(shape: IdentifierType, required: true, location: "querystring", location_name: "identifierType"))
    GetResourceEventConfigurationRequest.add_member(:partner_type, Shapes::ShapeRef.new(shape: EventNotificationPartnerType, location: "querystring", location_name: "partnerType"))
    GetResourceEventConfigurationRequest.struct_class = Types::GetResourceEventConfigurationRequest

    GetResourceEventConfigurationResponse.add_member(:device_registration_state, Shapes::ShapeRef.new(shape: DeviceRegistrationStateEventConfiguration, location_name: "DeviceRegistrationState"))
    GetResourceEventConfigurationResponse.add_member(:proximity, Shapes::ShapeRef.new(shape: ProximityEventConfiguration, location_name: "Proximity"))
    GetResourceEventConfigurationResponse.add_member(:join, Shapes::ShapeRef.new(shape: JoinEventConfiguration, location_name: "Join"))
    GetResourceEventConfigurationResponse.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatusEventConfiguration, location_name: "ConnectionStatus"))
    GetResourceEventConfigurationResponse.add_member(:message_delivery_status, Shapes::ShapeRef.new(shape: MessageDeliveryStatusEventConfiguration, location_name: "MessageDeliveryStatus"))
    GetResourceEventConfigurationResponse.struct_class = Types::GetResourceEventConfigurationResponse

    GetResourceLogLevelRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    GetResourceLogLevelRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location: "querystring", location_name: "resourceType"))
    GetResourceLogLevelRequest.struct_class = Types::GetResourceLogLevelRequest

    GetResourceLogLevelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogLevel"))
    GetResourceLogLevelResponse.struct_class = Types::GetResourceLogLevelResponse

    GetResourcePositionRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: PositionResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    GetResourcePositionRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: PositionResourceType, required: true, location: "querystring", location_name: "resourceType"))
    GetResourcePositionRequest.struct_class = Types::GetResourcePositionRequest

    GetResourcePositionResponse.add_member(:geo_json_payload, Shapes::ShapeRef.new(shape: GeoJsonPayload, location_name: "GeoJsonPayload"))
    GetResourcePositionResponse.struct_class = Types::GetResourcePositionResponse
    GetResourcePositionResponse[:payload] = :geo_json_payload
    GetResourcePositionResponse[:payload_member] = GetResourcePositionResponse.member(:geo_json_payload)

    GetServiceEndpointRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: WirelessGatewayServiceType, location: "querystring", location_name: "serviceType"))
    GetServiceEndpointRequest.struct_class = Types::GetServiceEndpointRequest

    GetServiceEndpointResponse.add_member(:service_type, Shapes::ShapeRef.new(shape: WirelessGatewayServiceType, location_name: "ServiceType"))
    GetServiceEndpointResponse.add_member(:service_endpoint, Shapes::ShapeRef.new(shape: EndPoint, location_name: "ServiceEndpoint"))
    GetServiceEndpointResponse.add_member(:server_trust, Shapes::ShapeRef.new(shape: CertificatePEM, location_name: "ServerTrust"))
    GetServiceEndpointResponse.struct_class = Types::GetServiceEndpointResponse

    GetServiceProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: ServiceProfileId, required: true, location: "uri", location_name: "Id"))
    GetServiceProfileRequest.struct_class = Types::GetServiceProfileRequest

    GetServiceProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceProfileArn, location_name: "Arn"))
    GetServiceProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: ServiceProfileName, location_name: "Name"))
    GetServiceProfileResponse.add_member(:id, Shapes::ShapeRef.new(shape: ServiceProfileId, location_name: "Id"))
    GetServiceProfileResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANGetServiceProfileInfo, location_name: "LoRaWAN"))
    GetServiceProfileResponse.struct_class = Types::GetServiceProfileResponse

    GetWirelessDeviceImportTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: ImportTaskId, required: true, location: "uri", location_name: "Id"))
    GetWirelessDeviceImportTaskRequest.struct_class = Types::GetWirelessDeviceImportTaskRequest

    GetWirelessDeviceImportTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: ImportTaskId, location_name: "Id"))
    GetWirelessDeviceImportTaskResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ImportTaskArn, location_name: "Arn"))
    GetWirelessDeviceImportTaskResponse.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    GetWirelessDeviceImportTaskResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkGetStartImportInfo, location_name: "Sidewalk"))
    GetWirelessDeviceImportTaskResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    GetWirelessDeviceImportTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: "Status"))
    GetWirelessDeviceImportTaskResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusReason"))
    GetWirelessDeviceImportTaskResponse.add_member(:initialized_imported_device_count, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceCount, location_name: "InitializedImportedDeviceCount"))
    GetWirelessDeviceImportTaskResponse.add_member(:pending_imported_device_count, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceCount, location_name: "PendingImportedDeviceCount"))
    GetWirelessDeviceImportTaskResponse.add_member(:onboarded_imported_device_count, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceCount, location_name: "OnboardedImportedDeviceCount"))
    GetWirelessDeviceImportTaskResponse.add_member(:failed_imported_device_count, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceCount, location_name: "FailedImportedDeviceCount"))
    GetWirelessDeviceImportTaskResponse.struct_class = Types::GetWirelessDeviceImportTaskResponse

    GetWirelessDeviceRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    GetWirelessDeviceRequest.add_member(:identifier_type, Shapes::ShapeRef.new(shape: WirelessDeviceIdType, required: true, location: "querystring", location_name: "identifierType"))
    GetWirelessDeviceRequest.struct_class = Types::GetWirelessDeviceRequest

    GetWirelessDeviceResponse.add_member(:type, Shapes::ShapeRef.new(shape: WirelessDeviceType, location_name: "Type"))
    GetWirelessDeviceResponse.add_member(:name, Shapes::ShapeRef.new(shape: WirelessDeviceName, location_name: "Name"))
    GetWirelessDeviceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetWirelessDeviceResponse.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    GetWirelessDeviceResponse.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, location_name: "Id"))
    GetWirelessDeviceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessDeviceArn, location_name: "Arn"))
    GetWirelessDeviceResponse.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "ThingName"))
    GetWirelessDeviceResponse.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "ThingArn"))
    GetWirelessDeviceResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANDevice, location_name: "LoRaWAN"))
    GetWirelessDeviceResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkDevice, location_name: "Sidewalk"))
    GetWirelessDeviceResponse.add_member(:positioning, Shapes::ShapeRef.new(shape: PositioningConfigStatus, location_name: "Positioning"))
    GetWirelessDeviceResponse.struct_class = Types::GetWirelessDeviceResponse

    GetWirelessDeviceStatisticsRequest.add_member(:wireless_device_id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    GetWirelessDeviceStatisticsRequest.struct_class = Types::GetWirelessDeviceStatisticsRequest

    GetWirelessDeviceStatisticsResponse.add_member(:wireless_device_id, Shapes::ShapeRef.new(shape: WirelessDeviceId, location_name: "WirelessDeviceId"))
    GetWirelessDeviceStatisticsResponse.add_member(:last_uplink_received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "LastUplinkReceivedAt"))
    GetWirelessDeviceStatisticsResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANDeviceMetadata, location_name: "LoRaWAN"))
    GetWirelessDeviceStatisticsResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkDeviceMetadata, location_name: "Sidewalk"))
    GetWirelessDeviceStatisticsResponse.struct_class = Types::GetWirelessDeviceStatisticsResponse

    GetWirelessGatewayCertificateRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    GetWirelessGatewayCertificateRequest.struct_class = Types::GetWirelessGatewayCertificateRequest

    GetWirelessGatewayCertificateResponse.add_member(:iot_certificate_id, Shapes::ShapeRef.new(shape: IotCertificateId, location_name: "IotCertificateId"))
    GetWirelessGatewayCertificateResponse.add_member(:lo_ra_wan_network_server_certificate_id, Shapes::ShapeRef.new(shape: IotCertificateId, location_name: "LoRaWANNetworkServerCertificateId"))
    GetWirelessGatewayCertificateResponse.struct_class = Types::GetWirelessGatewayCertificateResponse

    GetWirelessGatewayFirmwareInformationRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    GetWirelessGatewayFirmwareInformationRequest.struct_class = Types::GetWirelessGatewayFirmwareInformationRequest

    GetWirelessGatewayFirmwareInformationResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANGatewayCurrentVersion, location_name: "LoRaWAN"))
    GetWirelessGatewayFirmwareInformationResponse.struct_class = Types::GetWirelessGatewayFirmwareInformationResponse

    GetWirelessGatewayRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    GetWirelessGatewayRequest.add_member(:identifier_type, Shapes::ShapeRef.new(shape: WirelessGatewayIdType, required: true, location: "querystring", location_name: "identifierType"))
    GetWirelessGatewayRequest.struct_class = Types::GetWirelessGatewayRequest

    GetWirelessGatewayResponse.add_member(:name, Shapes::ShapeRef.new(shape: WirelessGatewayName, location_name: "Name"))
    GetWirelessGatewayResponse.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, location_name: "Id"))
    GetWirelessGatewayResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetWirelessGatewayResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANGateway, location_name: "LoRaWAN"))
    GetWirelessGatewayResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessGatewayArn, location_name: "Arn"))
    GetWirelessGatewayResponse.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "ThingName"))
    GetWirelessGatewayResponse.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "ThingArn"))
    GetWirelessGatewayResponse.struct_class = Types::GetWirelessGatewayResponse

    GetWirelessGatewayStatisticsRequest.add_member(:wireless_gateway_id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    GetWirelessGatewayStatisticsRequest.struct_class = Types::GetWirelessGatewayStatisticsRequest

    GetWirelessGatewayStatisticsResponse.add_member(:wireless_gateway_id, Shapes::ShapeRef.new(shape: WirelessGatewayId, location_name: "WirelessGatewayId"))
    GetWirelessGatewayStatisticsResponse.add_member(:last_uplink_received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "LastUplinkReceivedAt"))
    GetWirelessGatewayStatisticsResponse.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "ConnectionStatus"))
    GetWirelessGatewayStatisticsResponse.struct_class = Types::GetWirelessGatewayStatisticsResponse

    GetWirelessGatewayTaskDefinitionRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, required: true, location: "uri", location_name: "Id"))
    GetWirelessGatewayTaskDefinitionRequest.struct_class = Types::GetWirelessGatewayTaskDefinitionRequest

    GetWirelessGatewayTaskDefinitionResponse.add_member(:auto_create_tasks, Shapes::ShapeRef.new(shape: AutoCreateTasks, location_name: "AutoCreateTasks"))
    GetWirelessGatewayTaskDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: WirelessGatewayTaskName, location_name: "Name"))
    GetWirelessGatewayTaskDefinitionResponse.add_member(:update, Shapes::ShapeRef.new(shape: UpdateWirelessGatewayTaskCreate, location_name: "Update"))
    GetWirelessGatewayTaskDefinitionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionArn, location_name: "Arn"))
    GetWirelessGatewayTaskDefinitionResponse.struct_class = Types::GetWirelessGatewayTaskDefinitionResponse

    GetWirelessGatewayTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    GetWirelessGatewayTaskRequest.struct_class = Types::GetWirelessGatewayTaskRequest

    GetWirelessGatewayTaskResponse.add_member(:wireless_gateway_id, Shapes::ShapeRef.new(shape: WirelessGatewayId, location_name: "WirelessGatewayId"))
    GetWirelessGatewayTaskResponse.add_member(:wireless_gateway_task_definition_id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, location_name: "WirelessGatewayTaskDefinitionId"))
    GetWirelessGatewayTaskResponse.add_member(:last_uplink_received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "LastUplinkReceivedAt"))
    GetWirelessGatewayTaskResponse.add_member(:task_created_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "TaskCreatedAt"))
    GetWirelessGatewayTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: WirelessGatewayTaskStatus, location_name: "Status"))
    GetWirelessGatewayTaskResponse.struct_class = Types::GetWirelessGatewayTaskResponse

    GlobalIdentity.add_member(:lac, Shapes::ShapeRef.new(shape: LAC, required: true, location_name: "Lac"))
    GlobalIdentity.add_member(:geran_cid, Shapes::ShapeRef.new(shape: GeranCid, required: true, location_name: "GeranCid"))
    GlobalIdentity.struct_class = Types::GlobalIdentity

    Gnss.add_member(:payload, Shapes::ShapeRef.new(shape: GnssNav, required: true, location_name: "Payload"))
    Gnss.add_member(:capture_time, Shapes::ShapeRef.new(shape: GPST, location_name: "CaptureTime"))
    Gnss.add_member(:capture_time_accuracy, Shapes::ShapeRef.new(shape: CaptureTimeAccuracy, location_name: "CaptureTimeAccuracy"))
    Gnss.add_member(:assist_position, Shapes::ShapeRef.new(shape: AssistPosition, location_name: "AssistPosition"))
    Gnss.add_member(:assist_altitude, Shapes::ShapeRef.new(shape: Coordinate, location_name: "AssistAltitude"))
    Gnss.add_member(:use_2_d_solver, Shapes::ShapeRef.new(shape: Use2DSolver, location_name: "Use2DSolver"))
    Gnss.struct_class = Types::Gnss

    GsmList.member = Shapes::ShapeRef.new(shape: GsmObj)

    GsmLocalId.add_member(:bsic, Shapes::ShapeRef.new(shape: BSIC, required: true, location_name: "Bsic"))
    GsmLocalId.add_member(:bcch, Shapes::ShapeRef.new(shape: BCCH, required: true, location_name: "Bcch"))
    GsmLocalId.struct_class = Types::GsmLocalId

    GsmNmrList.member = Shapes::ShapeRef.new(shape: GsmNmrObj)

    GsmNmrObj.add_member(:bsic, Shapes::ShapeRef.new(shape: BSIC, required: true, location_name: "Bsic"))
    GsmNmrObj.add_member(:bcch, Shapes::ShapeRef.new(shape: BCCH, required: true, location_name: "Bcch"))
    GsmNmrObj.add_member(:rx_level, Shapes::ShapeRef.new(shape: RxLevel, location_name: "RxLevel"))
    GsmNmrObj.add_member(:global_identity, Shapes::ShapeRef.new(shape: GlobalIdentity, location_name: "GlobalIdentity"))
    GsmNmrObj.struct_class = Types::GsmNmrObj

    GsmObj.add_member(:mcc, Shapes::ShapeRef.new(shape: MCC, required: true, location_name: "Mcc"))
    GsmObj.add_member(:mnc, Shapes::ShapeRef.new(shape: MNC, required: true, location_name: "Mnc"))
    GsmObj.add_member(:lac, Shapes::ShapeRef.new(shape: LAC, required: true, location_name: "Lac"))
    GsmObj.add_member(:geran_cid, Shapes::ShapeRef.new(shape: GeranCid, required: true, location_name: "GeranCid"))
    GsmObj.add_member(:gsm_local_id, Shapes::ShapeRef.new(shape: GsmLocalId, location_name: "GsmLocalId"))
    GsmObj.add_member(:gsm_timing_advance, Shapes::ShapeRef.new(shape: GsmTimingAdvance, location_name: "GsmTimingAdvance"))
    GsmObj.add_member(:rx_level, Shapes::ShapeRef.new(shape: RxLevel, location_name: "RxLevel"))
    GsmObj.add_member(:gsm_nmr, Shapes::ShapeRef.new(shape: GsmNmrList, location_name: "GsmNmr"))
    GsmObj.struct_class = Types::GsmObj

    ImportedSidewalkDevice.add_member(:sidewalk_manufacturing_sn, Shapes::ShapeRef.new(shape: SidewalkManufacturingSn, location_name: "SidewalkManufacturingSn"))
    ImportedSidewalkDevice.add_member(:onboarding_status, Shapes::ShapeRef.new(shape: OnboardStatus, location_name: "OnboardingStatus"))
    ImportedSidewalkDevice.add_member(:onboarding_status_reason, Shapes::ShapeRef.new(shape: OnboardStatusReason, location_name: "OnboardingStatusReason"))
    ImportedSidewalkDevice.add_member(:last_update_time, Shapes::ShapeRef.new(shape: LastUpdateTime, location_name: "LastUpdateTime"))
    ImportedSidewalkDevice.struct_class = Types::ImportedSidewalkDevice

    ImportedWirelessDevice.add_member(:sidewalk, Shapes::ShapeRef.new(shape: ImportedSidewalkDevice, location_name: "Sidewalk"))
    ImportedWirelessDevice.struct_class = Types::ImportedWirelessDevice

    ImportedWirelessDeviceList.member = Shapes::ShapeRef.new(shape: ImportedWirelessDevice)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    Ip.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, required: true, location_name: "IpAddress"))
    Ip.struct_class = Types::Ip

    JoinEuiFilters.member = Shapes::ShapeRef.new(shape: JoinEuiRange)

    JoinEuiRange.member = Shapes::ShapeRef.new(shape: JoinEui)

    JoinEventConfiguration.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANJoinEventNotificationConfigurations, location_name: "LoRaWAN"))
    JoinEventConfiguration.add_member(:wireless_device_id_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "WirelessDeviceIdEventTopic"))
    JoinEventConfiguration.struct_class = Types::JoinEventConfiguration

    JoinResourceTypeEventConfiguration.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANJoinResourceTypeEventConfiguration, location_name: "LoRaWAN"))
    JoinResourceTypeEventConfiguration.struct_class = Types::JoinResourceTypeEventConfiguration

    ListDestinationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDestinationsRequest.struct_class = Types::ListDestinationsRequest

    ListDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDestinationsResponse.add_member(:destination_list, Shapes::ShapeRef.new(shape: DestinationList, location_name: "DestinationList"))
    ListDestinationsResponse.struct_class = Types::ListDestinationsResponse

    ListDeviceProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDeviceProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDeviceProfilesRequest.add_member(:device_profile_type, Shapes::ShapeRef.new(shape: DeviceProfileType, location: "querystring", location_name: "deviceProfileType"))
    ListDeviceProfilesRequest.struct_class = Types::ListDeviceProfilesRequest

    ListDeviceProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceProfilesResponse.add_member(:device_profile_list, Shapes::ShapeRef.new(shape: DeviceProfileList, location_name: "DeviceProfileList"))
    ListDeviceProfilesResponse.struct_class = Types::ListDeviceProfilesResponse

    ListDevicesForWirelessDeviceImportTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: ImportTaskId, required: true, location: "querystring", location_name: "id"))
    ListDevicesForWirelessDeviceImportTaskRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDevicesForWirelessDeviceImportTaskRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDevicesForWirelessDeviceImportTaskRequest.add_member(:status, Shapes::ShapeRef.new(shape: OnboardStatus, location: "querystring", location_name: "status"))
    ListDevicesForWirelessDeviceImportTaskRequest.struct_class = Types::ListDevicesForWirelessDeviceImportTaskRequest

    ListDevicesForWirelessDeviceImportTaskResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDevicesForWirelessDeviceImportTaskResponse.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    ListDevicesForWirelessDeviceImportTaskResponse.add_member(:imported_wireless_device_list, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceList, location_name: "ImportedWirelessDeviceList"))
    ListDevicesForWirelessDeviceImportTaskResponse.struct_class = Types::ListDevicesForWirelessDeviceImportTaskResponse

    ListEventConfigurationsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: EventNotificationResourceType, required: true, location: "querystring", location_name: "resourceType"))
    ListEventConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEventConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEventConfigurationsRequest.struct_class = Types::ListEventConfigurationsRequest

    ListEventConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventConfigurationsResponse.add_member(:event_configurations_list, Shapes::ShapeRef.new(shape: EventConfigurationsList, location_name: "EventConfigurationsList"))
    ListEventConfigurationsResponse.struct_class = Types::ListEventConfigurationsResponse

    ListFuotaTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFuotaTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFuotaTasksRequest.struct_class = Types::ListFuotaTasksRequest

    ListFuotaTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFuotaTasksResponse.add_member(:fuota_task_list, Shapes::ShapeRef.new(shape: FuotaTaskList, location_name: "FuotaTaskList"))
    ListFuotaTasksResponse.struct_class = Types::ListFuotaTasksResponse

    ListMulticastGroupsByFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    ListMulticastGroupsByFuotaTaskRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMulticastGroupsByFuotaTaskRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMulticastGroupsByFuotaTaskRequest.struct_class = Types::ListMulticastGroupsByFuotaTaskRequest

    ListMulticastGroupsByFuotaTaskResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMulticastGroupsByFuotaTaskResponse.add_member(:multicast_group_list, Shapes::ShapeRef.new(shape: MulticastGroupListByFuotaTask, location_name: "MulticastGroupList"))
    ListMulticastGroupsByFuotaTaskResponse.struct_class = Types::ListMulticastGroupsByFuotaTaskResponse

    ListMulticastGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMulticastGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMulticastGroupsRequest.struct_class = Types::ListMulticastGroupsRequest

    ListMulticastGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMulticastGroupsResponse.add_member(:multicast_group_list, Shapes::ShapeRef.new(shape: MulticastGroupList, location_name: "MulticastGroupList"))
    ListMulticastGroupsResponse.struct_class = Types::ListMulticastGroupsResponse

    ListNetworkAnalyzerConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNetworkAnalyzerConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListNetworkAnalyzerConfigurationsRequest.struct_class = Types::ListNetworkAnalyzerConfigurationsRequest

    ListNetworkAnalyzerConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNetworkAnalyzerConfigurationsResponse.add_member(:network_analyzer_configuration_list, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationList, location_name: "NetworkAnalyzerConfigurationList"))
    ListNetworkAnalyzerConfigurationsResponse.struct_class = Types::ListNetworkAnalyzerConfigurationsResponse

    ListPartnerAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPartnerAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPartnerAccountsRequest.struct_class = Types::ListPartnerAccountsRequest

    ListPartnerAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPartnerAccountsResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkAccountList, location_name: "Sidewalk"))
    ListPartnerAccountsResponse.struct_class = Types::ListPartnerAccountsResponse

    ListPositionConfigurationsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: PositionResourceType, location: "querystring", location_name: "resourceType"))
    ListPositionConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPositionConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPositionConfigurationsRequest.struct_class = Types::ListPositionConfigurationsRequest

    ListPositionConfigurationsResponse.add_member(:position_configuration_list, Shapes::ShapeRef.new(shape: PositionConfigurationList, location_name: "PositionConfigurationList"))
    ListPositionConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPositionConfigurationsResponse.struct_class = Types::ListPositionConfigurationsResponse

    ListQueuedMessagesRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    ListQueuedMessagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListQueuedMessagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListQueuedMessagesRequest.add_member(:wireless_device_type, Shapes::ShapeRef.new(shape: WirelessDeviceType, location: "querystring", location_name: "WirelessDeviceType"))
    ListQueuedMessagesRequest.struct_class = Types::ListQueuedMessagesRequest

    ListQueuedMessagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQueuedMessagesResponse.add_member(:downlink_queue_messages_list, Shapes::ShapeRef.new(shape: DownlinkQueueMessagesList, location_name: "DownlinkQueueMessagesList"))
    ListQueuedMessagesResponse.struct_class = Types::ListQueuedMessagesResponse

    ListServiceProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServiceProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServiceProfilesRequest.struct_class = Types::ListServiceProfilesRequest

    ListServiceProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceProfilesResponse.add_member(:service_profile_list, Shapes::ShapeRef.new(shape: ServiceProfileList, location_name: "ServiceProfileList"))
    ListServiceProfilesResponse.struct_class = Types::ListServiceProfilesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWirelessDeviceImportTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWirelessDeviceImportTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWirelessDeviceImportTasksRequest.struct_class = Types::ListWirelessDeviceImportTasksRequest

    ListWirelessDeviceImportTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWirelessDeviceImportTasksResponse.add_member(:wireless_device_import_task_list, Shapes::ShapeRef.new(shape: WirelessDeviceImportTaskList, location_name: "WirelessDeviceImportTaskList"))
    ListWirelessDeviceImportTasksResponse.struct_class = Types::ListWirelessDeviceImportTasksResponse

    ListWirelessDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWirelessDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWirelessDevicesRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location: "querystring", location_name: "destinationName"))
    ListWirelessDevicesRequest.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location: "querystring", location_name: "deviceProfileId"))
    ListWirelessDevicesRequest.add_member(:service_profile_id, Shapes::ShapeRef.new(shape: ServiceProfileId, location: "querystring", location_name: "serviceProfileId"))
    ListWirelessDevicesRequest.add_member(:wireless_device_type, Shapes::ShapeRef.new(shape: WirelessDeviceType, location: "querystring", location_name: "wirelessDeviceType"))
    ListWirelessDevicesRequest.add_member(:fuota_task_id, Shapes::ShapeRef.new(shape: FuotaTaskId, location: "querystring", location_name: "fuotaTaskId"))
    ListWirelessDevicesRequest.add_member(:multicast_group_id, Shapes::ShapeRef.new(shape: MulticastGroupId, location: "querystring", location_name: "multicastGroupId"))
    ListWirelessDevicesRequest.struct_class = Types::ListWirelessDevicesRequest

    ListWirelessDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWirelessDevicesResponse.add_member(:wireless_device_list, Shapes::ShapeRef.new(shape: WirelessDeviceStatisticsList, location_name: "WirelessDeviceList"))
    ListWirelessDevicesResponse.struct_class = Types::ListWirelessDevicesResponse

    ListWirelessGatewayTaskDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWirelessGatewayTaskDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWirelessGatewayTaskDefinitionsRequest.add_member(:task_definition_type, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionType, location: "querystring", location_name: "taskDefinitionType"))
    ListWirelessGatewayTaskDefinitionsRequest.struct_class = Types::ListWirelessGatewayTaskDefinitionsRequest

    ListWirelessGatewayTaskDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWirelessGatewayTaskDefinitionsResponse.add_member(:task_definitions, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionList, location_name: "TaskDefinitions"))
    ListWirelessGatewayTaskDefinitionsResponse.struct_class = Types::ListWirelessGatewayTaskDefinitionsResponse

    ListWirelessGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWirelessGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWirelessGatewaysRequest.struct_class = Types::ListWirelessGatewaysRequest

    ListWirelessGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWirelessGatewaysResponse.add_member(:wireless_gateway_list, Shapes::ShapeRef.new(shape: WirelessGatewayStatisticsList, location_name: "WirelessGatewayList"))
    ListWirelessGatewaysResponse.struct_class = Types::ListWirelessGatewaysResponse

    LoRaWANConnectionStatusEventNotificationConfigurations.add_member(:gateway_eui_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "GatewayEuiEventTopic"))
    LoRaWANConnectionStatusEventNotificationConfigurations.struct_class = Types::LoRaWANConnectionStatusEventNotificationConfigurations

    LoRaWANConnectionStatusResourceTypeEventConfiguration.add_member(:wireless_gateway_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "WirelessGatewayEventTopic"))
    LoRaWANConnectionStatusResourceTypeEventConfiguration.struct_class = Types::LoRaWANConnectionStatusResourceTypeEventConfiguration

    LoRaWANDevice.add_member(:dev_eui, Shapes::ShapeRef.new(shape: DevEui, location_name: "DevEui"))
    LoRaWANDevice.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "DeviceProfileId"))
    LoRaWANDevice.add_member(:service_profile_id, Shapes::ShapeRef.new(shape: ServiceProfileId, location_name: "ServiceProfileId"))
    LoRaWANDevice.add_member(:otaa_v1_1, Shapes::ShapeRef.new(shape: OtaaV1_1, location_name: "OtaaV1_1"))
    LoRaWANDevice.add_member(:otaa_v1_0_x, Shapes::ShapeRef.new(shape: OtaaV1_0_x, location_name: "OtaaV1_0_x"))
    LoRaWANDevice.add_member(:abp_v1_1, Shapes::ShapeRef.new(shape: AbpV1_1, location_name: "AbpV1_1"))
    LoRaWANDevice.add_member(:abp_v1_0_x, Shapes::ShapeRef.new(shape: AbpV1_0_x, location_name: "AbpV1_0_x"))
    LoRaWANDevice.add_member(:f_ports, Shapes::ShapeRef.new(shape: FPorts, location_name: "FPorts"))
    LoRaWANDevice.struct_class = Types::LoRaWANDevice

    LoRaWANDeviceMetadata.add_member(:dev_eui, Shapes::ShapeRef.new(shape: DevEui, location_name: "DevEui"))
    LoRaWANDeviceMetadata.add_member(:f_port, Shapes::ShapeRef.new(shape: Integer, location_name: "FPort"))
    LoRaWANDeviceMetadata.add_member(:data_rate, Shapes::ShapeRef.new(shape: Integer, location_name: "DataRate"))
    LoRaWANDeviceMetadata.add_member(:frequency, Shapes::ShapeRef.new(shape: Integer, location_name: "Frequency"))
    LoRaWANDeviceMetadata.add_member(:timestamp, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "Timestamp"))
    LoRaWANDeviceMetadata.add_member(:gateways, Shapes::ShapeRef.new(shape: LoRaWANGatewayMetadataList, location_name: "Gateways"))
    LoRaWANDeviceMetadata.struct_class = Types::LoRaWANDeviceMetadata

    LoRaWANDeviceProfile.add_member(:supports_class_b, Shapes::ShapeRef.new(shape: SupportsClassB, location_name: "SupportsClassB"))
    LoRaWANDeviceProfile.add_member(:class_b_timeout, Shapes::ShapeRef.new(shape: ClassBTimeout, location_name: "ClassBTimeout"))
    LoRaWANDeviceProfile.add_member(:ping_slot_period, Shapes::ShapeRef.new(shape: PingSlotPeriod, location_name: "PingSlotPeriod"))
    LoRaWANDeviceProfile.add_member(:ping_slot_dr, Shapes::ShapeRef.new(shape: PingSlotDr, location_name: "PingSlotDr"))
    LoRaWANDeviceProfile.add_member(:ping_slot_freq, Shapes::ShapeRef.new(shape: PingSlotFreq, location_name: "PingSlotFreq"))
    LoRaWANDeviceProfile.add_member(:supports_class_c, Shapes::ShapeRef.new(shape: SupportsClassC, location_name: "SupportsClassC"))
    LoRaWANDeviceProfile.add_member(:class_c_timeout, Shapes::ShapeRef.new(shape: ClassCTimeout, location_name: "ClassCTimeout"))
    LoRaWANDeviceProfile.add_member(:mac_version, Shapes::ShapeRef.new(shape: MacVersion, location_name: "MacVersion"))
    LoRaWANDeviceProfile.add_member(:reg_params_revision, Shapes::ShapeRef.new(shape: RegParamsRevision, location_name: "RegParamsRevision"))
    LoRaWANDeviceProfile.add_member(:rx_delay_1, Shapes::ShapeRef.new(shape: RxDelay1, location_name: "RxDelay1"))
    LoRaWANDeviceProfile.add_member(:rx_dr_offset_1, Shapes::ShapeRef.new(shape: RxDrOffset1, location_name: "RxDrOffset1"))
    LoRaWANDeviceProfile.add_member(:rx_data_rate_2, Shapes::ShapeRef.new(shape: RxDataRate2, location_name: "RxDataRate2"))
    LoRaWANDeviceProfile.add_member(:rx_freq_2, Shapes::ShapeRef.new(shape: RxFreq2, location_name: "RxFreq2"))
    LoRaWANDeviceProfile.add_member(:factory_preset_freqs_list, Shapes::ShapeRef.new(shape: FactoryPresetFreqsList, location_name: "FactoryPresetFreqsList"))
    LoRaWANDeviceProfile.add_member(:max_eirp, Shapes::ShapeRef.new(shape: MaxEirp, location_name: "MaxEirp"))
    LoRaWANDeviceProfile.add_member(:max_duty_cycle, Shapes::ShapeRef.new(shape: MaxDutyCycle, location_name: "MaxDutyCycle"))
    LoRaWANDeviceProfile.add_member(:rf_region, Shapes::ShapeRef.new(shape: RfRegion, location_name: "RfRegion"))
    LoRaWANDeviceProfile.add_member(:supports_join, Shapes::ShapeRef.new(shape: SupportsJoin, location_name: "SupportsJoin"))
    LoRaWANDeviceProfile.add_member(:supports_32_bit_f_cnt, Shapes::ShapeRef.new(shape: Supports32BitFCnt, location_name: "Supports32BitFCnt"))
    LoRaWANDeviceProfile.struct_class = Types::LoRaWANDeviceProfile

    LoRaWANFuotaTask.add_member(:rf_region, Shapes::ShapeRef.new(shape: SupportedRfRegion, location_name: "RfRegion"))
    LoRaWANFuotaTask.struct_class = Types::LoRaWANFuotaTask

    LoRaWANFuotaTaskGetInfo.add_member(:rf_region, Shapes::ShapeRef.new(shape: RfRegion, location_name: "RfRegion"))
    LoRaWANFuotaTaskGetInfo.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    LoRaWANFuotaTaskGetInfo.struct_class = Types::LoRaWANFuotaTaskGetInfo

    LoRaWANGateway.add_member(:gateway_eui, Shapes::ShapeRef.new(shape: GatewayEui, location_name: "GatewayEui"))
    LoRaWANGateway.add_member(:rf_region, Shapes::ShapeRef.new(shape: RfRegion, location_name: "RfRegion"))
    LoRaWANGateway.add_member(:join_eui_filters, Shapes::ShapeRef.new(shape: JoinEuiFilters, location_name: "JoinEuiFilters"))
    LoRaWANGateway.add_member(:net_id_filters, Shapes::ShapeRef.new(shape: NetIdFilters, location_name: "NetIdFilters"))
    LoRaWANGateway.add_member(:sub_bands, Shapes::ShapeRef.new(shape: SubBands, location_name: "SubBands"))
    LoRaWANGateway.add_member(:beaconing, Shapes::ShapeRef.new(shape: Beaconing, location_name: "Beaconing"))
    LoRaWANGateway.add_member(:max_eirp, Shapes::ShapeRef.new(shape: GatewayMaxEirp, location_name: "MaxEirp"))
    LoRaWANGateway.struct_class = Types::LoRaWANGateway

    LoRaWANGatewayCurrentVersion.add_member(:current_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "CurrentVersion"))
    LoRaWANGatewayCurrentVersion.struct_class = Types::LoRaWANGatewayCurrentVersion

    LoRaWANGatewayMetadata.add_member(:gateway_eui, Shapes::ShapeRef.new(shape: GatewayEui, location_name: "GatewayEui"))
    LoRaWANGatewayMetadata.add_member(:snr, Shapes::ShapeRef.new(shape: Double, location_name: "Snr"))
    LoRaWANGatewayMetadata.add_member(:rssi, Shapes::ShapeRef.new(shape: Double, location_name: "Rssi"))
    LoRaWANGatewayMetadata.struct_class = Types::LoRaWANGatewayMetadata

    LoRaWANGatewayMetadataList.member = Shapes::ShapeRef.new(shape: LoRaWANGatewayMetadata)

    LoRaWANGatewayVersion.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "PackageVersion"))
    LoRaWANGatewayVersion.add_member(:model, Shapes::ShapeRef.new(shape: Model, location_name: "Model"))
    LoRaWANGatewayVersion.add_member(:station, Shapes::ShapeRef.new(shape: Station, location_name: "Station"))
    LoRaWANGatewayVersion.struct_class = Types::LoRaWANGatewayVersion

    LoRaWANGetServiceProfileInfo.add_member(:ul_rate, Shapes::ShapeRef.new(shape: UlRate, location_name: "UlRate"))
    LoRaWANGetServiceProfileInfo.add_member(:ul_bucket_size, Shapes::ShapeRef.new(shape: UlBucketSize, location_name: "UlBucketSize"))
    LoRaWANGetServiceProfileInfo.add_member(:ul_rate_policy, Shapes::ShapeRef.new(shape: UlRatePolicy, location_name: "UlRatePolicy"))
    LoRaWANGetServiceProfileInfo.add_member(:dl_rate, Shapes::ShapeRef.new(shape: DlRate, location_name: "DlRate"))
    LoRaWANGetServiceProfileInfo.add_member(:dl_bucket_size, Shapes::ShapeRef.new(shape: DlBucketSize, location_name: "DlBucketSize"))
    LoRaWANGetServiceProfileInfo.add_member(:dl_rate_policy, Shapes::ShapeRef.new(shape: DlRatePolicy, location_name: "DlRatePolicy"))
    LoRaWANGetServiceProfileInfo.add_member(:add_gw_metadata, Shapes::ShapeRef.new(shape: AddGwMetadata, location_name: "AddGwMetadata"))
    LoRaWANGetServiceProfileInfo.add_member(:dev_status_req_freq, Shapes::ShapeRef.new(shape: DevStatusReqFreq, location_name: "DevStatusReqFreq"))
    LoRaWANGetServiceProfileInfo.add_member(:report_dev_status_battery, Shapes::ShapeRef.new(shape: ReportDevStatusBattery, location_name: "ReportDevStatusBattery"))
    LoRaWANGetServiceProfileInfo.add_member(:report_dev_status_margin, Shapes::ShapeRef.new(shape: ReportDevStatusMargin, location_name: "ReportDevStatusMargin"))
    LoRaWANGetServiceProfileInfo.add_member(:dr_min, Shapes::ShapeRef.new(shape: DrMin, location_name: "DrMin"))
    LoRaWANGetServiceProfileInfo.add_member(:dr_max, Shapes::ShapeRef.new(shape: DrMax, location_name: "DrMax"))
    LoRaWANGetServiceProfileInfo.add_member(:channel_mask, Shapes::ShapeRef.new(shape: ChannelMask, location_name: "ChannelMask"))
    LoRaWANGetServiceProfileInfo.add_member(:pr_allowed, Shapes::ShapeRef.new(shape: PrAllowed, location_name: "PrAllowed"))
    LoRaWANGetServiceProfileInfo.add_member(:hr_allowed, Shapes::ShapeRef.new(shape: HrAllowed, location_name: "HrAllowed"))
    LoRaWANGetServiceProfileInfo.add_member(:ra_allowed, Shapes::ShapeRef.new(shape: RaAllowed, location_name: "RaAllowed"))
    LoRaWANGetServiceProfileInfo.add_member(:nwk_geo_loc, Shapes::ShapeRef.new(shape: NwkGeoLoc, location_name: "NwkGeoLoc"))
    LoRaWANGetServiceProfileInfo.add_member(:target_per, Shapes::ShapeRef.new(shape: TargetPer, location_name: "TargetPer"))
    LoRaWANGetServiceProfileInfo.add_member(:min_gw_diversity, Shapes::ShapeRef.new(shape: MinGwDiversity, location_name: "MinGwDiversity"))
    LoRaWANGetServiceProfileInfo.struct_class = Types::LoRaWANGetServiceProfileInfo

    LoRaWANJoinEventNotificationConfigurations.add_member(:dev_eui_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "DevEuiEventTopic"))
    LoRaWANJoinEventNotificationConfigurations.struct_class = Types::LoRaWANJoinEventNotificationConfigurations

    LoRaWANJoinResourceTypeEventConfiguration.add_member(:wireless_device_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "WirelessDeviceEventTopic"))
    LoRaWANJoinResourceTypeEventConfiguration.struct_class = Types::LoRaWANJoinResourceTypeEventConfiguration

    LoRaWANListDevice.add_member(:dev_eui, Shapes::ShapeRef.new(shape: DevEui, location_name: "DevEui"))
    LoRaWANListDevice.struct_class = Types::LoRaWANListDevice

    LoRaWANMulticast.add_member(:rf_region, Shapes::ShapeRef.new(shape: SupportedRfRegion, location_name: "RfRegion"))
    LoRaWANMulticast.add_member(:dl_class, Shapes::ShapeRef.new(shape: DlClass, location_name: "DlClass"))
    LoRaWANMulticast.struct_class = Types::LoRaWANMulticast

    LoRaWANMulticastGet.add_member(:rf_region, Shapes::ShapeRef.new(shape: SupportedRfRegion, location_name: "RfRegion"))
    LoRaWANMulticastGet.add_member(:dl_class, Shapes::ShapeRef.new(shape: DlClass, location_name: "DlClass"))
    LoRaWANMulticastGet.add_member(:number_of_devices_requested, Shapes::ShapeRef.new(shape: NumberOfDevicesRequested, location_name: "NumberOfDevicesRequested"))
    LoRaWANMulticastGet.add_member(:number_of_devices_in_group, Shapes::ShapeRef.new(shape: NumberOfDevicesInGroup, location_name: "NumberOfDevicesInGroup"))
    LoRaWANMulticastGet.struct_class = Types::LoRaWANMulticastGet

    LoRaWANMulticastMetadata.add_member(:f_port, Shapes::ShapeRef.new(shape: FPort, location_name: "FPort"))
    LoRaWANMulticastMetadata.struct_class = Types::LoRaWANMulticastMetadata

    LoRaWANMulticastSession.add_member(:dl_dr, Shapes::ShapeRef.new(shape: DlDr, location_name: "DlDr"))
    LoRaWANMulticastSession.add_member(:dl_freq, Shapes::ShapeRef.new(shape: DlFreq, location_name: "DlFreq"))
    LoRaWANMulticastSession.add_member(:session_start_time, Shapes::ShapeRef.new(shape: SessionStartTimeTimestamp, location_name: "SessionStartTime"))
    LoRaWANMulticastSession.add_member(:session_timeout, Shapes::ShapeRef.new(shape: SessionTimeout, location_name: "SessionTimeout"))
    LoRaWANMulticastSession.add_member(:ping_slot_period, Shapes::ShapeRef.new(shape: PingSlotPeriod, location_name: "PingSlotPeriod"))
    LoRaWANMulticastSession.struct_class = Types::LoRaWANMulticastSession

    LoRaWANSendDataToDevice.add_member(:f_port, Shapes::ShapeRef.new(shape: FPort, location_name: "FPort"))
    LoRaWANSendDataToDevice.add_member(:participating_gateways, Shapes::ShapeRef.new(shape: ParticipatingGateways, location_name: "ParticipatingGateways"))
    LoRaWANSendDataToDevice.struct_class = Types::LoRaWANSendDataToDevice

    LoRaWANServiceProfile.add_member(:add_gw_metadata, Shapes::ShapeRef.new(shape: AddGwMetadata, location_name: "AddGwMetadata"))
    LoRaWANServiceProfile.add_member(:dr_min, Shapes::ShapeRef.new(shape: DrMinBox, location_name: "DrMin"))
    LoRaWANServiceProfile.add_member(:dr_max, Shapes::ShapeRef.new(shape: DrMaxBox, location_name: "DrMax"))
    LoRaWANServiceProfile.add_member(:pr_allowed, Shapes::ShapeRef.new(shape: PrAllowed, location_name: "PrAllowed"))
    LoRaWANServiceProfile.add_member(:ra_allowed, Shapes::ShapeRef.new(shape: RaAllowed, location_name: "RaAllowed"))
    LoRaWANServiceProfile.struct_class = Types::LoRaWANServiceProfile

    LoRaWANStartFuotaTask.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    LoRaWANStartFuotaTask.struct_class = Types::LoRaWANStartFuotaTask

    LoRaWANUpdateDevice.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "DeviceProfileId"))
    LoRaWANUpdateDevice.add_member(:service_profile_id, Shapes::ShapeRef.new(shape: ServiceProfileId, location_name: "ServiceProfileId"))
    LoRaWANUpdateDevice.add_member(:abp_v1_1, Shapes::ShapeRef.new(shape: UpdateAbpV1_1, location_name: "AbpV1_1"))
    LoRaWANUpdateDevice.add_member(:abp_v1_0_x, Shapes::ShapeRef.new(shape: UpdateAbpV1_0_x, location_name: "AbpV1_0_x"))
    LoRaWANUpdateDevice.add_member(:f_ports, Shapes::ShapeRef.new(shape: UpdateFPorts, location_name: "FPorts"))
    LoRaWANUpdateDevice.struct_class = Types::LoRaWANUpdateDevice

    LoRaWANUpdateGatewayTaskCreate.add_member(:update_signature, Shapes::ShapeRef.new(shape: UpdateSignature, location_name: "UpdateSignature"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:sig_key_crc, Shapes::ShapeRef.new(shape: Crc, location_name: "SigKeyCrc"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:current_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "CurrentVersion"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:update_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "UpdateVersion"))
    LoRaWANUpdateGatewayTaskCreate.struct_class = Types::LoRaWANUpdateGatewayTaskCreate

    LoRaWANUpdateGatewayTaskEntry.add_member(:current_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "CurrentVersion"))
    LoRaWANUpdateGatewayTaskEntry.add_member(:update_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "UpdateVersion"))
    LoRaWANUpdateGatewayTaskEntry.struct_class = Types::LoRaWANUpdateGatewayTaskEntry

    LteList.member = Shapes::ShapeRef.new(shape: LteObj)

    LteLocalId.add_member(:pci, Shapes::ShapeRef.new(shape: PCI, required: true, location_name: "Pci"))
    LteLocalId.add_member(:earfcn, Shapes::ShapeRef.new(shape: EARFCN, required: true, location_name: "Earfcn"))
    LteLocalId.struct_class = Types::LteLocalId

    LteNmrList.member = Shapes::ShapeRef.new(shape: LteNmrObj)

    LteNmrObj.add_member(:pci, Shapes::ShapeRef.new(shape: PCI, required: true, location_name: "Pci"))
    LteNmrObj.add_member(:earfcn, Shapes::ShapeRef.new(shape: EARFCN, required: true, location_name: "Earfcn"))
    LteNmrObj.add_member(:eutran_cid, Shapes::ShapeRef.new(shape: EutranCid, required: true, location_name: "EutranCid"))
    LteNmrObj.add_member(:rsrp, Shapes::ShapeRef.new(shape: RSRP, location_name: "Rsrp"))
    LteNmrObj.add_member(:rsrq, Shapes::ShapeRef.new(shape: RSRQ, location_name: "Rsrq"))
    LteNmrObj.struct_class = Types::LteNmrObj

    LteObj.add_member(:mcc, Shapes::ShapeRef.new(shape: MCC, required: true, location_name: "Mcc"))
    LteObj.add_member(:mnc, Shapes::ShapeRef.new(shape: MNC, required: true, location_name: "Mnc"))
    LteObj.add_member(:eutran_cid, Shapes::ShapeRef.new(shape: EutranCid, required: true, location_name: "EutranCid"))
    LteObj.add_member(:tac, Shapes::ShapeRef.new(shape: TAC, location_name: "Tac"))
    LteObj.add_member(:lte_local_id, Shapes::ShapeRef.new(shape: LteLocalId, location_name: "LteLocalId"))
    LteObj.add_member(:lte_timing_advance, Shapes::ShapeRef.new(shape: LteTimingAdvance, location_name: "LteTimingAdvance"))
    LteObj.add_member(:rsrp, Shapes::ShapeRef.new(shape: RSRP, location_name: "Rsrp"))
    LteObj.add_member(:rsrq, Shapes::ShapeRef.new(shape: RSRQ, location_name: "Rsrq"))
    LteObj.add_member(:nr_capable, Shapes::ShapeRef.new(shape: NRCapable, location_name: "NrCapable"))
    LteObj.add_member(:lte_nmr, Shapes::ShapeRef.new(shape: LteNmrList, location_name: "LteNmr"))
    LteObj.struct_class = Types::LteObj

    MessageDeliveryStatusEventConfiguration.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkEventNotificationConfigurations, location_name: "Sidewalk"))
    MessageDeliveryStatusEventConfiguration.add_member(:wireless_device_id_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "WirelessDeviceIdEventTopic"))
    MessageDeliveryStatusEventConfiguration.struct_class = Types::MessageDeliveryStatusEventConfiguration

    MessageDeliveryStatusResourceTypeEventConfiguration.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkResourceTypeEventConfiguration, location_name: "Sidewalk"))
    MessageDeliveryStatusResourceTypeEventConfiguration.struct_class = Types::MessageDeliveryStatusResourceTypeEventConfiguration

    MulticastGroup.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, location_name: "Id"))
    MulticastGroup.add_member(:arn, Shapes::ShapeRef.new(shape: MulticastGroupArn, location_name: "Arn"))
    MulticastGroup.add_member(:name, Shapes::ShapeRef.new(shape: MulticastGroupName, location_name: "Name"))
    MulticastGroup.struct_class = Types::MulticastGroup

    MulticastGroupByFuotaTask.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, location_name: "Id"))
    MulticastGroupByFuotaTask.struct_class = Types::MulticastGroupByFuotaTask

    MulticastGroupList.member = Shapes::ShapeRef.new(shape: MulticastGroup)

    MulticastGroupListByFuotaTask.member = Shapes::ShapeRef.new(shape: MulticastGroupByFuotaTask)

    MulticastWirelessMetadata.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANMulticastMetadata, location_name: "LoRaWAN"))
    MulticastWirelessMetadata.struct_class = Types::MulticastWirelessMetadata

    NetIdFilters.member = Shapes::ShapeRef.new(shape: NetId)

    NetworkAnalyzerConfigurationList.member = Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurations)

    NetworkAnalyzerConfigurations.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationArn, location_name: "Arn"))
    NetworkAnalyzerConfigurations.add_member(:name, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationName, location_name: "Name"))
    NetworkAnalyzerConfigurations.struct_class = Types::NetworkAnalyzerConfigurations

    NetworkAnalyzerMulticastGroupList.member = Shapes::ShapeRef.new(shape: MulticastGroupId)

    OtaaV1_0_x.add_member(:app_key, Shapes::ShapeRef.new(shape: AppKey, location_name: "AppKey"))
    OtaaV1_0_x.add_member(:app_eui, Shapes::ShapeRef.new(shape: AppEui, location_name: "AppEui"))
    OtaaV1_0_x.add_member(:gen_app_key, Shapes::ShapeRef.new(shape: GenAppKey, location_name: "GenAppKey"))
    OtaaV1_0_x.struct_class = Types::OtaaV1_0_x

    OtaaV1_1.add_member(:app_key, Shapes::ShapeRef.new(shape: AppKey, location_name: "AppKey"))
    OtaaV1_1.add_member(:nwk_key, Shapes::ShapeRef.new(shape: NwkKey, location_name: "NwkKey"))
    OtaaV1_1.add_member(:join_eui, Shapes::ShapeRef.new(shape: JoinEui, location_name: "JoinEui"))
    OtaaV1_1.struct_class = Types::OtaaV1_1

    ParticipatingGateways.add_member(:downlink_mode, Shapes::ShapeRef.new(shape: DownlinkMode, required: true, location_name: "DownlinkMode"))
    ParticipatingGateways.add_member(:gateway_list, Shapes::ShapeRef.new(shape: GatewayList, required: true, location_name: "GatewayList"))
    ParticipatingGateways.add_member(:transmission_interval, Shapes::ShapeRef.new(shape: TransmissionInterval, required: true, location_name: "TransmissionInterval"))
    ParticipatingGateways.struct_class = Types::ParticipatingGateways

    PositionConfigurationItem.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: PositionResourceIdentifier, location_name: "ResourceIdentifier"))
    PositionConfigurationItem.add_member(:resource_type, Shapes::ShapeRef.new(shape: PositionResourceType, location_name: "ResourceType"))
    PositionConfigurationItem.add_member(:solvers, Shapes::ShapeRef.new(shape: PositionSolverDetails, location_name: "Solvers"))
    PositionConfigurationItem.add_member(:destination, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Destination"))
    PositionConfigurationItem.struct_class = Types::PositionConfigurationItem

    PositionConfigurationList.member = Shapes::ShapeRef.new(shape: PositionConfigurationItem)

    PositionCoordinate.member = Shapes::ShapeRef.new(shape: PositionCoordinateValue)

    PositionSolverConfigurations.add_member(:semtech_gnss, Shapes::ShapeRef.new(shape: SemtechGnssConfiguration, location_name: "SemtechGnss"))
    PositionSolverConfigurations.struct_class = Types::PositionSolverConfigurations

    PositionSolverDetails.add_member(:semtech_gnss, Shapes::ShapeRef.new(shape: SemtechGnssDetail, location_name: "SemtechGnss"))
    PositionSolverDetails.struct_class = Types::PositionSolverDetails

    Positioning.add_member(:clock_sync, Shapes::ShapeRef.new(shape: FPort, location_name: "ClockSync"))
    Positioning.add_member(:stream, Shapes::ShapeRef.new(shape: FPort, location_name: "Stream"))
    Positioning.add_member(:gnss, Shapes::ShapeRef.new(shape: FPort, location_name: "Gnss"))
    Positioning.struct_class = Types::Positioning

    PrivateKeysList.member = Shapes::ShapeRef.new(shape: CertificateList)

    ProximityEventConfiguration.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkEventNotificationConfigurations, location_name: "Sidewalk"))
    ProximityEventConfiguration.add_member(:wireless_device_id_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "WirelessDeviceIdEventTopic"))
    ProximityEventConfiguration.struct_class = Types::ProximityEventConfiguration

    ProximityResourceTypeEventConfiguration.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkResourceTypeEventConfiguration, location_name: "Sidewalk"))
    ProximityResourceTypeEventConfiguration.struct_class = Types::ProximityResourceTypeEventConfiguration

    PutPositionConfigurationRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: PositionResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    PutPositionConfigurationRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: PositionResourceType, required: true, location: "querystring", location_name: "resourceType"))
    PutPositionConfigurationRequest.add_member(:solvers, Shapes::ShapeRef.new(shape: PositionSolverConfigurations, location_name: "Solvers"))
    PutPositionConfigurationRequest.add_member(:destination, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Destination"))
    PutPositionConfigurationRequest.struct_class = Types::PutPositionConfigurationRequest

    PutPositionConfigurationResponse.struct_class = Types::PutPositionConfigurationResponse

    PutResourceLogLevelRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    PutResourceLogLevelRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location: "querystring", location_name: "resourceType"))
    PutResourceLogLevelRequest.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "LogLevel"))
    PutResourceLogLevelRequest.struct_class = Types::PutResourceLogLevelRequest

    PutResourceLogLevelResponse.struct_class = Types::PutResourceLogLevelResponse

    ResetAllResourceLogLevelsRequest.struct_class = Types::ResetAllResourceLogLevelsRequest

    ResetAllResourceLogLevelsResponse.struct_class = Types::ResetAllResourceLogLevelsResponse

    ResetResourceLogLevelRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    ResetResourceLogLevelRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location: "querystring", location_name: "resourceType"))
    ResetResourceLogLevelRequest.struct_class = Types::ResetResourceLogLevelRequest

    ResetResourceLogLevelResponse.struct_class = Types::ResetResourceLogLevelResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SemtechGnssConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: PositionConfigurationStatus, required: true, location_name: "Status"))
    SemtechGnssConfiguration.add_member(:fec, Shapes::ShapeRef.new(shape: PositionConfigurationFec, required: true, location_name: "Fec"))
    SemtechGnssConfiguration.struct_class = Types::SemtechGnssConfiguration

    SemtechGnssDetail.add_member(:provider, Shapes::ShapeRef.new(shape: PositionSolverProvider, location_name: "Provider"))
    SemtechGnssDetail.add_member(:type, Shapes::ShapeRef.new(shape: PositionSolverType, location_name: "Type"))
    SemtechGnssDetail.add_member(:status, Shapes::ShapeRef.new(shape: PositionConfigurationStatus, location_name: "Status"))
    SemtechGnssDetail.add_member(:fec, Shapes::ShapeRef.new(shape: PositionConfigurationFec, location_name: "Fec"))
    SemtechGnssDetail.struct_class = Types::SemtechGnssDetail

    SendDataToMulticastGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    SendDataToMulticastGroupRequest.add_member(:payload_data, Shapes::ShapeRef.new(shape: PayloadData, required: true, location_name: "PayloadData"))
    SendDataToMulticastGroupRequest.add_member(:wireless_metadata, Shapes::ShapeRef.new(shape: MulticastWirelessMetadata, required: true, location_name: "WirelessMetadata"))
    SendDataToMulticastGroupRequest.struct_class = Types::SendDataToMulticastGroupRequest

    SendDataToMulticastGroupResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MulticastGroupMessageId, location_name: "MessageId"))
    SendDataToMulticastGroupResponse.struct_class = Types::SendDataToMulticastGroupResponse

    SendDataToWirelessDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    SendDataToWirelessDeviceRequest.add_member(:transmit_mode, Shapes::ShapeRef.new(shape: TransmitMode, required: true, location_name: "TransmitMode"))
    SendDataToWirelessDeviceRequest.add_member(:payload_data, Shapes::ShapeRef.new(shape: PayloadData, required: true, location_name: "PayloadData"))
    SendDataToWirelessDeviceRequest.add_member(:wireless_metadata, Shapes::ShapeRef.new(shape: WirelessMetadata, location_name: "WirelessMetadata"))
    SendDataToWirelessDeviceRequest.struct_class = Types::SendDataToWirelessDeviceRequest

    SendDataToWirelessDeviceResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "MessageId"))
    SendDataToWirelessDeviceResponse.struct_class = Types::SendDataToWirelessDeviceResponse

    ServiceProfile.add_member(:arn, Shapes::ShapeRef.new(shape: ServiceProfileArn, location_name: "Arn"))
    ServiceProfile.add_member(:name, Shapes::ShapeRef.new(shape: ServiceProfileName, location_name: "Name"))
    ServiceProfile.add_member(:id, Shapes::ShapeRef.new(shape: ServiceProfileId, location_name: "Id"))
    ServiceProfile.struct_class = Types::ServiceProfile

    ServiceProfileList.member = Shapes::ShapeRef.new(shape: ServiceProfile)

    SessionKeysAbpV1_0_x.add_member(:nwk_s_key, Shapes::ShapeRef.new(shape: NwkSKey, location_name: "NwkSKey"))
    SessionKeysAbpV1_0_x.add_member(:app_s_key, Shapes::ShapeRef.new(shape: AppSKey, location_name: "AppSKey"))
    SessionKeysAbpV1_0_x.struct_class = Types::SessionKeysAbpV1_0_x

    SessionKeysAbpV1_1.add_member(:f_nwk_s_int_key, Shapes::ShapeRef.new(shape: FNwkSIntKey, location_name: "FNwkSIntKey"))
    SessionKeysAbpV1_1.add_member(:s_nwk_s_int_key, Shapes::ShapeRef.new(shape: SNwkSIntKey, location_name: "SNwkSIntKey"))
    SessionKeysAbpV1_1.add_member(:nwk_s_enc_key, Shapes::ShapeRef.new(shape: NwkSEncKey, location_name: "NwkSEncKey"))
    SessionKeysAbpV1_1.add_member(:app_s_key, Shapes::ShapeRef.new(shape: AppSKey, location_name: "AppSKey"))
    SessionKeysAbpV1_1.struct_class = Types::SessionKeysAbpV1_1

    SidewalkAccountInfo.add_member(:amazon_id, Shapes::ShapeRef.new(shape: AmazonId, location_name: "AmazonId"))
    SidewalkAccountInfo.add_member(:app_server_private_key, Shapes::ShapeRef.new(shape: AppServerPrivateKey, location_name: "AppServerPrivateKey"))
    SidewalkAccountInfo.struct_class = Types::SidewalkAccountInfo

    SidewalkAccountInfoWithFingerprint.add_member(:amazon_id, Shapes::ShapeRef.new(shape: AmazonId, location_name: "AmazonId"))
    SidewalkAccountInfoWithFingerprint.add_member(:fingerprint, Shapes::ShapeRef.new(shape: Fingerprint, location_name: "Fingerprint"))
    SidewalkAccountInfoWithFingerprint.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerAccountArn, location_name: "Arn"))
    SidewalkAccountInfoWithFingerprint.struct_class = Types::SidewalkAccountInfoWithFingerprint

    SidewalkAccountList.member = Shapes::ShapeRef.new(shape: SidewalkAccountInfoWithFingerprint)

    SidewalkCreateDeviceProfile.struct_class = Types::SidewalkCreateDeviceProfile

    SidewalkCreateWirelessDevice.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "DeviceProfileId"))
    SidewalkCreateWirelessDevice.struct_class = Types::SidewalkCreateWirelessDevice

    SidewalkDevice.add_member(:amazon_id, Shapes::ShapeRef.new(shape: AmazonId, location_name: "AmazonId"))
    SidewalkDevice.add_member(:sidewalk_id, Shapes::ShapeRef.new(shape: SidewalkId, location_name: "SidewalkId"))
    SidewalkDevice.add_member(:sidewalk_manufacturing_sn, Shapes::ShapeRef.new(shape: SidewalkManufacturingSn, location_name: "SidewalkManufacturingSn"))
    SidewalkDevice.add_member(:device_certificates, Shapes::ShapeRef.new(shape: DeviceCertificateList, location_name: "DeviceCertificates"))
    SidewalkDevice.add_member(:private_keys, Shapes::ShapeRef.new(shape: PrivateKeysList, location_name: "PrivateKeys"))
    SidewalkDevice.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "DeviceProfileId"))
    SidewalkDevice.add_member(:certificate_id, Shapes::ShapeRef.new(shape: DakCertificateId, location_name: "CertificateId"))
    SidewalkDevice.add_member(:status, Shapes::ShapeRef.new(shape: WirelessDeviceSidewalkStatus, location_name: "Status"))
    SidewalkDevice.struct_class = Types::SidewalkDevice

    SidewalkDeviceMetadata.add_member(:rssi, Shapes::ShapeRef.new(shape: Integer, location_name: "Rssi"))
    SidewalkDeviceMetadata.add_member(:battery_level, Shapes::ShapeRef.new(shape: BatteryLevel, location_name: "BatteryLevel"))
    SidewalkDeviceMetadata.add_member(:event, Shapes::ShapeRef.new(shape: Event, location_name: "Event"))
    SidewalkDeviceMetadata.add_member(:device_state, Shapes::ShapeRef.new(shape: DeviceState, location_name: "DeviceState"))
    SidewalkDeviceMetadata.struct_class = Types::SidewalkDeviceMetadata

    SidewalkEventNotificationConfigurations.add_member(:amazon_id_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "AmazonIdEventTopic"))
    SidewalkEventNotificationConfigurations.struct_class = Types::SidewalkEventNotificationConfigurations

    SidewalkGetDeviceProfile.add_member(:application_server_public_key, Shapes::ShapeRef.new(shape: ApplicationServerPublicKey, location_name: "ApplicationServerPublicKey"))
    SidewalkGetDeviceProfile.add_member(:qualification_status, Shapes::ShapeRef.new(shape: QualificationStatus, location_name: "QualificationStatus"))
    SidewalkGetDeviceProfile.add_member(:dak_certificate_metadata, Shapes::ShapeRef.new(shape: DakCertificateMetadataList, location_name: "DakCertificateMetadata"))
    SidewalkGetDeviceProfile.struct_class = Types::SidewalkGetDeviceProfile

    SidewalkGetStartImportInfo.add_member(:device_creation_file_list, Shapes::ShapeRef.new(shape: DeviceCreationFileList, location_name: "DeviceCreationFileList"))
    SidewalkGetStartImportInfo.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    SidewalkGetStartImportInfo.struct_class = Types::SidewalkGetStartImportInfo

    SidewalkListDevice.add_member(:amazon_id, Shapes::ShapeRef.new(shape: AmazonId, location_name: "AmazonId"))
    SidewalkListDevice.add_member(:sidewalk_id, Shapes::ShapeRef.new(shape: SidewalkId, location_name: "SidewalkId"))
    SidewalkListDevice.add_member(:sidewalk_manufacturing_sn, Shapes::ShapeRef.new(shape: SidewalkManufacturingSn, location_name: "SidewalkManufacturingSn"))
    SidewalkListDevice.add_member(:device_certificates, Shapes::ShapeRef.new(shape: DeviceCertificateList, location_name: "DeviceCertificates"))
    SidewalkListDevice.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "DeviceProfileId"))
    SidewalkListDevice.add_member(:status, Shapes::ShapeRef.new(shape: WirelessDeviceSidewalkStatus, location_name: "Status"))
    SidewalkListDevice.struct_class = Types::SidewalkListDevice

    SidewalkResourceTypeEventConfiguration.add_member(:wireless_device_event_topic, Shapes::ShapeRef.new(shape: EventNotificationTopicStatus, location_name: "WirelessDeviceEventTopic"))
    SidewalkResourceTypeEventConfiguration.struct_class = Types::SidewalkResourceTypeEventConfiguration

    SidewalkSendDataToDevice.add_member(:seq, Shapes::ShapeRef.new(shape: Seq, location_name: "Seq"))
    SidewalkSendDataToDevice.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    SidewalkSendDataToDevice.add_member(:ack_mode_retry_duration_secs, Shapes::ShapeRef.new(shape: AckModeRetryDurationSecs, location_name: "AckModeRetryDurationSecs"))
    SidewalkSendDataToDevice.struct_class = Types::SidewalkSendDataToDevice

    SidewalkSingleStartImportInfo.add_member(:sidewalk_manufacturing_sn, Shapes::ShapeRef.new(shape: SidewalkManufacturingSn, location_name: "SidewalkManufacturingSn"))
    SidewalkSingleStartImportInfo.struct_class = Types::SidewalkSingleStartImportInfo

    SidewalkStartImportInfo.add_member(:device_creation_file, Shapes::ShapeRef.new(shape: DeviceCreationFile, location_name: "DeviceCreationFile"))
    SidewalkStartImportInfo.add_member(:role, Shapes::ShapeRef.new(shape: Role, location_name: "Role"))
    SidewalkStartImportInfo.struct_class = Types::SidewalkStartImportInfo

    SidewalkUpdateAccount.add_member(:app_server_private_key, Shapes::ShapeRef.new(shape: AppServerPrivateKey, location_name: "AppServerPrivateKey"))
    SidewalkUpdateAccount.struct_class = Types::SidewalkUpdateAccount

    SidewalkUpdateImportInfo.add_member(:device_creation_file, Shapes::ShapeRef.new(shape: DeviceCreationFile, location_name: "DeviceCreationFile"))
    SidewalkUpdateImportInfo.struct_class = Types::SidewalkUpdateImportInfo

    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString"))
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest.struct_class = Types::StartBulkAssociateWirelessDeviceWithMulticastGroupRequest

    StartBulkAssociateWirelessDeviceWithMulticastGroupResponse.struct_class = Types::StartBulkAssociateWirelessDeviceWithMulticastGroupResponse

    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, location_name: "QueryString"))
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest.struct_class = Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest

    StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse.struct_class = Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse

    StartFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    StartFuotaTaskRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANStartFuotaTask, location_name: "LoRaWAN"))
    StartFuotaTaskRequest.struct_class = Types::StartFuotaTaskRequest

    StartFuotaTaskResponse.struct_class = Types::StartFuotaTaskResponse

    StartMulticastGroupSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    StartMulticastGroupSessionRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANMulticastSession, required: true, location_name: "LoRaWAN"))
    StartMulticastGroupSessionRequest.struct_class = Types::StartMulticastGroupSessionRequest

    StartMulticastGroupSessionResponse.struct_class = Types::StartMulticastGroupSessionResponse

    StartSingleWirelessDeviceImportTaskRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "DestinationName"))
    StartSingleWirelessDeviceImportTaskRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartSingleWirelessDeviceImportTaskRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "DeviceName"))
    StartSingleWirelessDeviceImportTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartSingleWirelessDeviceImportTaskRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkSingleStartImportInfo, required: true, location_name: "Sidewalk"))
    StartSingleWirelessDeviceImportTaskRequest.struct_class = Types::StartSingleWirelessDeviceImportTaskRequest

    StartSingleWirelessDeviceImportTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: ImportTaskId, location_name: "Id"))
    StartSingleWirelessDeviceImportTaskResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ImportTaskArn, location_name: "Arn"))
    StartSingleWirelessDeviceImportTaskResponse.struct_class = Types::StartSingleWirelessDeviceImportTaskResponse

    StartWirelessDeviceImportTaskRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "DestinationName"))
    StartWirelessDeviceImportTaskRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    StartWirelessDeviceImportTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartWirelessDeviceImportTaskRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkStartImportInfo, required: true, location_name: "Sidewalk"))
    StartWirelessDeviceImportTaskRequest.struct_class = Types::StartWirelessDeviceImportTaskRequest

    StartWirelessDeviceImportTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: ImportTaskId, location_name: "Id"))
    StartWirelessDeviceImportTaskResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ImportTaskArn, location_name: "Arn"))
    StartWirelessDeviceImportTaskResponse.struct_class = Types::StartWirelessDeviceImportTaskResponse

    SubBands.member = Shapes::ShapeRef.new(shape: SubBand)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TdscdmaList.member = Shapes::ShapeRef.new(shape: TdscdmaObj)

    TdscdmaLocalId.add_member(:uarfcn, Shapes::ShapeRef.new(shape: UARFCN, required: true, location_name: "Uarfcn"))
    TdscdmaLocalId.add_member(:cell_params, Shapes::ShapeRef.new(shape: CellParams, required: true, location_name: "CellParams"))
    TdscdmaLocalId.struct_class = Types::TdscdmaLocalId

    TdscdmaNmrList.member = Shapes::ShapeRef.new(shape: TdscdmaNmrObj)

    TdscdmaNmrObj.add_member(:uarfcn, Shapes::ShapeRef.new(shape: UARFCN, required: true, location_name: "Uarfcn"))
    TdscdmaNmrObj.add_member(:cell_params, Shapes::ShapeRef.new(shape: CellParams, required: true, location_name: "CellParams"))
    TdscdmaNmrObj.add_member(:utran_cid, Shapes::ShapeRef.new(shape: UtranCid, location_name: "UtranCid"))
    TdscdmaNmrObj.add_member(:rscp, Shapes::ShapeRef.new(shape: RSCP, location_name: "Rscp"))
    TdscdmaNmrObj.add_member(:path_loss, Shapes::ShapeRef.new(shape: PathLoss, location_name: "PathLoss"))
    TdscdmaNmrObj.struct_class = Types::TdscdmaNmrObj

    TdscdmaObj.add_member(:mcc, Shapes::ShapeRef.new(shape: MCC, required: true, location_name: "Mcc"))
    TdscdmaObj.add_member(:mnc, Shapes::ShapeRef.new(shape: MNC, required: true, location_name: "Mnc"))
    TdscdmaObj.add_member(:lac, Shapes::ShapeRef.new(shape: LAC, location_name: "Lac"))
    TdscdmaObj.add_member(:utran_cid, Shapes::ShapeRef.new(shape: UtranCid, required: true, location_name: "UtranCid"))
    TdscdmaObj.add_member(:tdscdma_local_id, Shapes::ShapeRef.new(shape: TdscdmaLocalId, location_name: "TdscdmaLocalId"))
    TdscdmaObj.add_member(:tdscdma_timing_advance, Shapes::ShapeRef.new(shape: TdscdmaTimingAdvance, location_name: "TdscdmaTimingAdvance"))
    TdscdmaObj.add_member(:rscp, Shapes::ShapeRef.new(shape: RSCP, location_name: "Rscp"))
    TdscdmaObj.add_member(:path_loss, Shapes::ShapeRef.new(shape: PathLoss, location_name: "PathLoss"))
    TdscdmaObj.add_member(:tdscdma_nmr, Shapes::ShapeRef.new(shape: TdscdmaNmrList, location_name: "TdscdmaNmr"))
    TdscdmaObj.struct_class = Types::TdscdmaObj

    TestWirelessDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    TestWirelessDeviceRequest.struct_class = Types::TestWirelessDeviceRequest

    TestWirelessDeviceResponse.add_member(:result, Shapes::ShapeRef.new(shape: Result, location_name: "Result"))
    TestWirelessDeviceResponse.struct_class = Types::TestWirelessDeviceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TraceContent.add_member(:wireless_device_frame_info, Shapes::ShapeRef.new(shape: WirelessDeviceFrameInfo, location_name: "WirelessDeviceFrameInfo"))
    TraceContent.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogLevel"))
    TraceContent.add_member(:multicast_frame_info, Shapes::ShapeRef.new(shape: MulticastFrameInfo, location_name: "MulticastFrameInfo"))
    TraceContent.struct_class = Types::TraceContent

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAbpV1_0_x.add_member(:f_cnt_start, Shapes::ShapeRef.new(shape: FCntStart, location_name: "FCntStart"))
    UpdateAbpV1_0_x.struct_class = Types::UpdateAbpV1_0_x

    UpdateAbpV1_1.add_member(:f_cnt_start, Shapes::ShapeRef.new(shape: FCntStart, location_name: "FCntStart"))
    UpdateAbpV1_1.struct_class = Types::UpdateAbpV1_1

    UpdateDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location: "uri", location_name: "Name"))
    UpdateDestinationRequest.add_member(:expression_type, Shapes::ShapeRef.new(shape: ExpressionType, location_name: "ExpressionType"))
    UpdateDestinationRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "Expression"))
    UpdateDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDestinationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateDestinationRequest.struct_class = Types::UpdateDestinationRequest

    UpdateDestinationResponse.struct_class = Types::UpdateDestinationResponse

    UpdateEventConfigurationByResourceTypesRequest.add_member(:device_registration_state, Shapes::ShapeRef.new(shape: DeviceRegistrationStateResourceTypeEventConfiguration, location_name: "DeviceRegistrationState"))
    UpdateEventConfigurationByResourceTypesRequest.add_member(:proximity, Shapes::ShapeRef.new(shape: ProximityResourceTypeEventConfiguration, location_name: "Proximity"))
    UpdateEventConfigurationByResourceTypesRequest.add_member(:join, Shapes::ShapeRef.new(shape: JoinResourceTypeEventConfiguration, location_name: "Join"))
    UpdateEventConfigurationByResourceTypesRequest.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatusResourceTypeEventConfiguration, location_name: "ConnectionStatus"))
    UpdateEventConfigurationByResourceTypesRequest.add_member(:message_delivery_status, Shapes::ShapeRef.new(shape: MessageDeliveryStatusResourceTypeEventConfiguration, location_name: "MessageDeliveryStatus"))
    UpdateEventConfigurationByResourceTypesRequest.struct_class = Types::UpdateEventConfigurationByResourceTypesRequest

    UpdateEventConfigurationByResourceTypesResponse.struct_class = Types::UpdateEventConfigurationByResourceTypesResponse

    UpdateFPorts.add_member(:positioning, Shapes::ShapeRef.new(shape: Positioning, location_name: "Positioning"))
    UpdateFPorts.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "Applications"))
    UpdateFPorts.struct_class = Types::UpdateFPorts

    UpdateFuotaTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: FuotaTaskId, required: true, location: "uri", location_name: "Id"))
    UpdateFuotaTaskRequest.add_member(:name, Shapes::ShapeRef.new(shape: FuotaTaskName, location_name: "Name"))
    UpdateFuotaTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFuotaTaskRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANFuotaTask, location_name: "LoRaWAN"))
    UpdateFuotaTaskRequest.add_member(:firmware_update_image, Shapes::ShapeRef.new(shape: FirmwareUpdateImage, location_name: "FirmwareUpdateImage"))
    UpdateFuotaTaskRequest.add_member(:firmware_update_role, Shapes::ShapeRef.new(shape: FirmwareUpdateRole, location_name: "FirmwareUpdateRole"))
    UpdateFuotaTaskRequest.add_member(:redundancy_percent, Shapes::ShapeRef.new(shape: RedundancyPercent, location_name: "RedundancyPercent"))
    UpdateFuotaTaskRequest.add_member(:fragment_size_bytes, Shapes::ShapeRef.new(shape: FragmentSizeBytes, location_name: "FragmentSizeBytes"))
    UpdateFuotaTaskRequest.add_member(:fragment_interval_ms, Shapes::ShapeRef.new(shape: FragmentIntervalMS, location_name: "FragmentIntervalMS"))
    UpdateFuotaTaskRequest.struct_class = Types::UpdateFuotaTaskRequest

    UpdateFuotaTaskResponse.struct_class = Types::UpdateFuotaTaskResponse

    UpdateLogLevelsByResourceTypesRequest.add_member(:default_log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "DefaultLogLevel"))
    UpdateLogLevelsByResourceTypesRequest.add_member(:wireless_device_log_options, Shapes::ShapeRef.new(shape: WirelessDeviceLogOptionList, location_name: "WirelessDeviceLogOptions"))
    UpdateLogLevelsByResourceTypesRequest.add_member(:wireless_gateway_log_options, Shapes::ShapeRef.new(shape: WirelessGatewayLogOptionList, location_name: "WirelessGatewayLogOptions"))
    UpdateLogLevelsByResourceTypesRequest.struct_class = Types::UpdateLogLevelsByResourceTypesRequest

    UpdateLogLevelsByResourceTypesResponse.struct_class = Types::UpdateLogLevelsByResourceTypesResponse

    UpdateMulticastGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: MulticastGroupId, required: true, location: "uri", location_name: "Id"))
    UpdateMulticastGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: MulticastGroupName, location_name: "Name"))
    UpdateMulticastGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateMulticastGroupRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANMulticast, location_name: "LoRaWAN"))
    UpdateMulticastGroupRequest.struct_class = Types::UpdateMulticastGroupRequest

    UpdateMulticastGroupResponse.struct_class = Types::UpdateMulticastGroupResponse

    UpdateNetworkAnalyzerConfigurationRequest.add_member(:configuration_name, Shapes::ShapeRef.new(shape: NetworkAnalyzerConfigurationName, required: true, location: "uri", location_name: "ConfigurationName"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:trace_content, Shapes::ShapeRef.new(shape: TraceContent, location_name: "TraceContent"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:wireless_devices_to_add, Shapes::ShapeRef.new(shape: WirelessDeviceList, location_name: "WirelessDevicesToAdd"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:wireless_devices_to_remove, Shapes::ShapeRef.new(shape: WirelessDeviceList, location_name: "WirelessDevicesToRemove"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:wireless_gateways_to_add, Shapes::ShapeRef.new(shape: WirelessGatewayList, location_name: "WirelessGatewaysToAdd"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:wireless_gateways_to_remove, Shapes::ShapeRef.new(shape: WirelessGatewayList, location_name: "WirelessGatewaysToRemove"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:multicast_groups_to_add, Shapes::ShapeRef.new(shape: NetworkAnalyzerMulticastGroupList, location_name: "MulticastGroupsToAdd"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:multicast_groups_to_remove, Shapes::ShapeRef.new(shape: NetworkAnalyzerMulticastGroupList, location_name: "MulticastGroupsToRemove"))
    UpdateNetworkAnalyzerConfigurationRequest.struct_class = Types::UpdateNetworkAnalyzerConfigurationRequest

    UpdateNetworkAnalyzerConfigurationResponse.struct_class = Types::UpdateNetworkAnalyzerConfigurationResponse

    UpdatePartnerAccountRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkUpdateAccount, required: true, location_name: "Sidewalk"))
    UpdatePartnerAccountRequest.add_member(:partner_account_id, Shapes::ShapeRef.new(shape: PartnerAccountId, required: true, location: "uri", location_name: "PartnerAccountId"))
    UpdatePartnerAccountRequest.add_member(:partner_type, Shapes::ShapeRef.new(shape: PartnerType, required: true, location: "querystring", location_name: "partnerType"))
    UpdatePartnerAccountRequest.struct_class = Types::UpdatePartnerAccountRequest

    UpdatePartnerAccountResponse.struct_class = Types::UpdatePartnerAccountResponse

    UpdatePositionRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: PositionResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    UpdatePositionRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: PositionResourceType, required: true, location: "querystring", location_name: "resourceType"))
    UpdatePositionRequest.add_member(:position, Shapes::ShapeRef.new(shape: PositionCoordinate, required: true, location_name: "Position"))
    UpdatePositionRequest.struct_class = Types::UpdatePositionRequest

    UpdatePositionResponse.struct_class = Types::UpdatePositionResponse

    UpdateResourceEventConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    UpdateResourceEventConfigurationRequest.add_member(:identifier_type, Shapes::ShapeRef.new(shape: IdentifierType, required: true, location: "querystring", location_name: "identifierType"))
    UpdateResourceEventConfigurationRequest.add_member(:partner_type, Shapes::ShapeRef.new(shape: EventNotificationPartnerType, location: "querystring", location_name: "partnerType"))
    UpdateResourceEventConfigurationRequest.add_member(:device_registration_state, Shapes::ShapeRef.new(shape: DeviceRegistrationStateEventConfiguration, location_name: "DeviceRegistrationState"))
    UpdateResourceEventConfigurationRequest.add_member(:proximity, Shapes::ShapeRef.new(shape: ProximityEventConfiguration, location_name: "Proximity"))
    UpdateResourceEventConfigurationRequest.add_member(:join, Shapes::ShapeRef.new(shape: JoinEventConfiguration, location_name: "Join"))
    UpdateResourceEventConfigurationRequest.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatusEventConfiguration, location_name: "ConnectionStatus"))
    UpdateResourceEventConfigurationRequest.add_member(:message_delivery_status, Shapes::ShapeRef.new(shape: MessageDeliveryStatusEventConfiguration, location_name: "MessageDeliveryStatus"))
    UpdateResourceEventConfigurationRequest.struct_class = Types::UpdateResourceEventConfigurationRequest

    UpdateResourceEventConfigurationResponse.struct_class = Types::UpdateResourceEventConfigurationResponse

    UpdateResourcePositionRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: PositionResourceIdentifier, required: true, location: "uri", location_name: "ResourceIdentifier"))
    UpdateResourcePositionRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: PositionResourceType, required: true, location: "querystring", location_name: "resourceType"))
    UpdateResourcePositionRequest.add_member(:geo_json_payload, Shapes::ShapeRef.new(shape: GeoJsonPayload, location_name: "GeoJsonPayload"))
    UpdateResourcePositionRequest.struct_class = Types::UpdateResourcePositionRequest
    UpdateResourcePositionRequest[:payload] = :geo_json_payload
    UpdateResourcePositionRequest[:payload_member] = UpdateResourcePositionRequest.member(:geo_json_payload)

    UpdateResourcePositionResponse.struct_class = Types::UpdateResourcePositionResponse

    UpdateWirelessDeviceImportTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: ImportTaskId, required: true, location: "uri", location_name: "Id"))
    UpdateWirelessDeviceImportTaskRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkUpdateImportInfo, required: true, location_name: "Sidewalk"))
    UpdateWirelessDeviceImportTaskRequest.struct_class = Types::UpdateWirelessDeviceImportTaskRequest

    UpdateWirelessDeviceImportTaskResponse.struct_class = Types::UpdateWirelessDeviceImportTaskResponse

    UpdateWirelessDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    UpdateWirelessDeviceRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    UpdateWirelessDeviceRequest.add_member(:name, Shapes::ShapeRef.new(shape: WirelessDeviceName, location_name: "Name"))
    UpdateWirelessDeviceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateWirelessDeviceRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANUpdateDevice, location_name: "LoRaWAN"))
    UpdateWirelessDeviceRequest.add_member(:positioning, Shapes::ShapeRef.new(shape: PositioningConfigStatus, location_name: "Positioning"))
    UpdateWirelessDeviceRequest.struct_class = Types::UpdateWirelessDeviceRequest

    UpdateWirelessDeviceResponse.struct_class = Types::UpdateWirelessDeviceResponse

    UpdateWirelessGatewayRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    UpdateWirelessGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: WirelessGatewayName, location_name: "Name"))
    UpdateWirelessGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateWirelessGatewayRequest.add_member(:join_eui_filters, Shapes::ShapeRef.new(shape: JoinEuiFilters, location_name: "JoinEuiFilters"))
    UpdateWirelessGatewayRequest.add_member(:net_id_filters, Shapes::ShapeRef.new(shape: NetIdFilters, location_name: "NetIdFilters"))
    UpdateWirelessGatewayRequest.add_member(:max_eirp, Shapes::ShapeRef.new(shape: GatewayMaxEirp, location_name: "MaxEirp"))
    UpdateWirelessGatewayRequest.struct_class = Types::UpdateWirelessGatewayRequest

    UpdateWirelessGatewayResponse.struct_class = Types::UpdateWirelessGatewayResponse

    UpdateWirelessGatewayTaskCreate.add_member(:update_data_source, Shapes::ShapeRef.new(shape: UpdateDataSource, location_name: "UpdateDataSource"))
    UpdateWirelessGatewayTaskCreate.add_member(:update_data_role, Shapes::ShapeRef.new(shape: UpdateDataSource, location_name: "UpdateDataRole"))
    UpdateWirelessGatewayTaskCreate.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANUpdateGatewayTaskCreate, location_name: "LoRaWAN"))
    UpdateWirelessGatewayTaskCreate.struct_class = Types::UpdateWirelessGatewayTaskCreate

    UpdateWirelessGatewayTaskEntry.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, location_name: "Id"))
    UpdateWirelessGatewayTaskEntry.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANUpdateGatewayTaskEntry, location_name: "LoRaWAN"))
    UpdateWirelessGatewayTaskEntry.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionArn, location_name: "Arn"))
    UpdateWirelessGatewayTaskEntry.struct_class = Types::UpdateWirelessGatewayTaskEntry

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    WcdmaList.member = Shapes::ShapeRef.new(shape: WcdmaObj)

    WcdmaLocalId.add_member(:uarfcndl, Shapes::ShapeRef.new(shape: UARFCNDL, required: true, location_name: "Uarfcndl"))
    WcdmaLocalId.add_member(:psc, Shapes::ShapeRef.new(shape: PSC, required: true, location_name: "Psc"))
    WcdmaLocalId.struct_class = Types::WcdmaLocalId

    WcdmaNmrList.member = Shapes::ShapeRef.new(shape: WcdmaNmrObj)

    WcdmaNmrObj.add_member(:uarfcndl, Shapes::ShapeRef.new(shape: UARFCNDL, required: true, location_name: "Uarfcndl"))
    WcdmaNmrObj.add_member(:psc, Shapes::ShapeRef.new(shape: PSC, required: true, location_name: "Psc"))
    WcdmaNmrObj.add_member(:utran_cid, Shapes::ShapeRef.new(shape: UtranCid, required: true, location_name: "UtranCid"))
    WcdmaNmrObj.add_member(:rscp, Shapes::ShapeRef.new(shape: RSCP, location_name: "Rscp"))
    WcdmaNmrObj.add_member(:path_loss, Shapes::ShapeRef.new(shape: PathLoss, location_name: "PathLoss"))
    WcdmaNmrObj.struct_class = Types::WcdmaNmrObj

    WcdmaObj.add_member(:mcc, Shapes::ShapeRef.new(shape: MCC, required: true, location_name: "Mcc"))
    WcdmaObj.add_member(:mnc, Shapes::ShapeRef.new(shape: MNC, required: true, location_name: "Mnc"))
    WcdmaObj.add_member(:lac, Shapes::ShapeRef.new(shape: LAC, location_name: "Lac"))
    WcdmaObj.add_member(:utran_cid, Shapes::ShapeRef.new(shape: UtranCid, required: true, location_name: "UtranCid"))
    WcdmaObj.add_member(:wcdma_local_id, Shapes::ShapeRef.new(shape: WcdmaLocalId, location_name: "WcdmaLocalId"))
    WcdmaObj.add_member(:rscp, Shapes::ShapeRef.new(shape: RSCP, location_name: "Rscp"))
    WcdmaObj.add_member(:path_loss, Shapes::ShapeRef.new(shape: PathLoss, location_name: "PathLoss"))
    WcdmaObj.add_member(:wcdma_nmr, Shapes::ShapeRef.new(shape: WcdmaNmrList, location_name: "WcdmaNmr"))
    WcdmaObj.struct_class = Types::WcdmaObj

    WiFiAccessPoint.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, required: true, location_name: "MacAddress"))
    WiFiAccessPoint.add_member(:rss, Shapes::ShapeRef.new(shape: RSS, required: true, location_name: "Rss"))
    WiFiAccessPoint.struct_class = Types::WiFiAccessPoint

    WiFiAccessPoints.member = Shapes::ShapeRef.new(shape: WiFiAccessPoint)

    WirelessDeviceEventLogOption.add_member(:event, Shapes::ShapeRef.new(shape: WirelessDeviceEvent, required: true, location_name: "Event"))
    WirelessDeviceEventLogOption.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "LogLevel"))
    WirelessDeviceEventLogOption.struct_class = Types::WirelessDeviceEventLogOption

    WirelessDeviceEventLogOptionList.member = Shapes::ShapeRef.new(shape: WirelessDeviceEventLogOption)

    WirelessDeviceImportTask.add_member(:id, Shapes::ShapeRef.new(shape: ImportTaskId, location_name: "Id"))
    WirelessDeviceImportTask.add_member(:arn, Shapes::ShapeRef.new(shape: ImportTaskArn, location_name: "Arn"))
    WirelessDeviceImportTask.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    WirelessDeviceImportTask.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkGetStartImportInfo, location_name: "Sidewalk"))
    WirelessDeviceImportTask.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "CreationTime"))
    WirelessDeviceImportTask.add_member(:status, Shapes::ShapeRef.new(shape: ImportTaskStatus, location_name: "Status"))
    WirelessDeviceImportTask.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "StatusReason"))
    WirelessDeviceImportTask.add_member(:initialized_imported_device_count, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceCount, location_name: "InitializedImportedDeviceCount"))
    WirelessDeviceImportTask.add_member(:pending_imported_device_count, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceCount, location_name: "PendingImportedDeviceCount"))
    WirelessDeviceImportTask.add_member(:onboarded_imported_device_count, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceCount, location_name: "OnboardedImportedDeviceCount"))
    WirelessDeviceImportTask.add_member(:failed_imported_device_count, Shapes::ShapeRef.new(shape: ImportedWirelessDeviceCount, location_name: "FailedImportedDeviceCount"))
    WirelessDeviceImportTask.struct_class = Types::WirelessDeviceImportTask

    WirelessDeviceImportTaskList.member = Shapes::ShapeRef.new(shape: WirelessDeviceImportTask)

    WirelessDeviceList.member = Shapes::ShapeRef.new(shape: WirelessDeviceId)

    WirelessDeviceLogOption.add_member(:type, Shapes::ShapeRef.new(shape: WirelessDeviceType, required: true, location_name: "Type"))
    WirelessDeviceLogOption.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "LogLevel"))
    WirelessDeviceLogOption.add_member(:events, Shapes::ShapeRef.new(shape: WirelessDeviceEventLogOptionList, location_name: "Events"))
    WirelessDeviceLogOption.struct_class = Types::WirelessDeviceLogOption

    WirelessDeviceLogOptionList.member = Shapes::ShapeRef.new(shape: WirelessDeviceLogOption)

    WirelessDeviceStatistics.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessDeviceArn, location_name: "Arn"))
    WirelessDeviceStatistics.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, location_name: "Id"))
    WirelessDeviceStatistics.add_member(:type, Shapes::ShapeRef.new(shape: WirelessDeviceType, location_name: "Type"))
    WirelessDeviceStatistics.add_member(:name, Shapes::ShapeRef.new(shape: WirelessDeviceName, location_name: "Name"))
    WirelessDeviceStatistics.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    WirelessDeviceStatistics.add_member(:last_uplink_received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "LastUplinkReceivedAt"))
    WirelessDeviceStatistics.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANListDevice, location_name: "LoRaWAN"))
    WirelessDeviceStatistics.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkListDevice, location_name: "Sidewalk"))
    WirelessDeviceStatistics.add_member(:fuota_device_status, Shapes::ShapeRef.new(shape: FuotaDeviceStatus, location_name: "FuotaDeviceStatus"))
    WirelessDeviceStatistics.add_member(:multicast_device_status, Shapes::ShapeRef.new(shape: MulticastDeviceStatus, location_name: "MulticastDeviceStatus"))
    WirelessDeviceStatistics.add_member(:mc_group_id, Shapes::ShapeRef.new(shape: McGroupId, location_name: "McGroupId"))
    WirelessDeviceStatistics.struct_class = Types::WirelessDeviceStatistics

    WirelessDeviceStatisticsList.member = Shapes::ShapeRef.new(shape: WirelessDeviceStatistics)

    WirelessGatewayEventLogOption.add_member(:event, Shapes::ShapeRef.new(shape: WirelessGatewayEvent, required: true, location_name: "Event"))
    WirelessGatewayEventLogOption.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "LogLevel"))
    WirelessGatewayEventLogOption.struct_class = Types::WirelessGatewayEventLogOption

    WirelessGatewayEventLogOptionList.member = Shapes::ShapeRef.new(shape: WirelessGatewayEventLogOption)

    WirelessGatewayList.member = Shapes::ShapeRef.new(shape: WirelessGatewayId)

    WirelessGatewayLogOption.add_member(:type, Shapes::ShapeRef.new(shape: WirelessGatewayType, required: true, location_name: "Type"))
    WirelessGatewayLogOption.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "LogLevel"))
    WirelessGatewayLogOption.add_member(:events, Shapes::ShapeRef.new(shape: WirelessGatewayEventLogOptionList, location_name: "Events"))
    WirelessGatewayLogOption.struct_class = Types::WirelessGatewayLogOption

    WirelessGatewayLogOptionList.member = Shapes::ShapeRef.new(shape: WirelessGatewayLogOption)

    WirelessGatewayStatistics.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessGatewayArn, location_name: "Arn"))
    WirelessGatewayStatistics.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, location_name: "Id"))
    WirelessGatewayStatistics.add_member(:name, Shapes::ShapeRef.new(shape: WirelessGatewayName, location_name: "Name"))
    WirelessGatewayStatistics.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    WirelessGatewayStatistics.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANGateway, location_name: "LoRaWAN"))
    WirelessGatewayStatistics.add_member(:last_uplink_received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "LastUplinkReceivedAt"))
    WirelessGatewayStatistics.struct_class = Types::WirelessGatewayStatistics

    WirelessGatewayStatisticsList.member = Shapes::ShapeRef.new(shape: WirelessGatewayStatistics)

    WirelessGatewayTaskDefinitionList.member = Shapes::ShapeRef.new(shape: UpdateWirelessGatewayTaskEntry)

    WirelessMetadata.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANSendDataToDevice, location_name: "LoRaWAN"))
    WirelessMetadata.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkSendDataToDevice, location_name: "Sidewalk"))
    WirelessMetadata.struct_class = Types::WirelessMetadata


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-22"

      api.metadata = {
        "apiVersion" => "2020-11-22",
        "endpointPrefix" => "api.iotwireless",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT Wireless",
        "serviceId" => "IoT Wireless",
        "signatureVersion" => "v4",
        "signingName" => "iotwireless",
        "uid" => "iotwireless-2020-11-22",
      }

      api.add_operation(:associate_aws_account_with_partner_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAwsAccountWithPartnerAccount"
        o.http_method = "POST"
        o.http_request_uri = "/partner-accounts"
        o.input = Shapes::ShapeRef.new(shape: AssociateAwsAccountWithPartnerAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAwsAccountWithPartnerAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:associate_multicast_group_with_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMulticastGroupWithFuotaTask"
        o.http_method = "PUT"
        o.http_request_uri = "/fuota-tasks/{Id}/multicast-group"
        o.input = Shapes::ShapeRef.new(shape: AssociateMulticastGroupWithFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateMulticastGroupWithFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_wireless_device_with_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWirelessDeviceWithFuotaTask"
        o.http_method = "PUT"
        o.http_request_uri = "/fuota-tasks/{Id}/wireless-device"
        o.input = Shapes::ShapeRef.new(shape: AssociateWirelessDeviceWithFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWirelessDeviceWithFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_wireless_device_with_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWirelessDeviceWithMulticastGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/multicast-groups/{Id}/wireless-device"
        o.input = Shapes::ShapeRef.new(shape: AssociateWirelessDeviceWithMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWirelessDeviceWithMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_wireless_device_with_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWirelessDeviceWithThing"
        o.http_method = "PUT"
        o.http_request_uri = "/wireless-devices/{Id}/thing"
        o.input = Shapes::ShapeRef.new(shape: AssociateWirelessDeviceWithThingRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWirelessDeviceWithThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_wireless_gateway_with_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWirelessGatewayWithCertificate"
        o.http_method = "PUT"
        o.http_request_uri = "/wireless-gateways/{Id}/certificate"
        o.input = Shapes::ShapeRef.new(shape: AssociateWirelessGatewayWithCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWirelessGatewayWithCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_wireless_gateway_with_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWirelessGatewayWithThing"
        o.http_method = "PUT"
        o.http_request_uri = "/wireless-gateways/{Id}/thing"
        o.input = Shapes::ShapeRef.new(shape: AssociateWirelessGatewayWithThingRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWirelessGatewayWithThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_multicast_group_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMulticastGroupSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/multicast-groups/{Id}/session"
        o.input = Shapes::ShapeRef.new(shape: CancelMulticastGroupSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelMulticastGroupSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDestination"
        o.http_method = "POST"
        o.http_request_uri = "/destinations"
        o.input = Shapes::ShapeRef.new(shape: CreateDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_device_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeviceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/device-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateDeviceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeviceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFuotaTask"
        o.http_method = "POST"
        o.http_request_uri = "/fuota-tasks"
        o.input = Shapes::ShapeRef.new(shape: CreateFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMulticastGroup"
        o.http_method = "POST"
        o.http_request_uri = "/multicast-groups"
        o.input = Shapes::ShapeRef.new(shape: CreateMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_network_analyzer_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetworkAnalyzerConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/network-analyzer-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkAnalyzerConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkAnalyzerConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_service_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/service-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_wireless_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWirelessDevice"
        o.http_method = "POST"
        o.http_request_uri = "/wireless-devices"
        o.input = Shapes::ShapeRef.new(shape: CreateWirelessDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWirelessDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_wireless_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWirelessGateway"
        o.http_method = "POST"
        o.http_request_uri = "/wireless-gateways"
        o.input = Shapes::ShapeRef.new(shape: CreateWirelessGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWirelessGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_wireless_gateway_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWirelessGatewayTask"
        o.http_method = "POST"
        o.http_request_uri = "/wireless-gateways/{Id}/tasks"
        o.input = Shapes::ShapeRef.new(shape: CreateWirelessGatewayTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWirelessGatewayTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_wireless_gateway_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWirelessGatewayTaskDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/wireless-gateway-task-definitions"
        o.input = Shapes::ShapeRef.new(shape: CreateWirelessGatewayTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWirelessGatewayTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/destinations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_device_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeviceProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/device-profiles/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeviceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeviceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFuotaTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/fuota-tasks/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMulticastGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/multicast-groups/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_network_analyzer_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetworkAnalyzerConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/network-analyzer-configurations/{ConfigurationName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkAnalyzerConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkAnalyzerConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_queued_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueuedMessages"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless-devices/{Id}/data"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueuedMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueuedMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_service_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/service-profiles/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_wireless_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWirelessDevice"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless-devices/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWirelessDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWirelessDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_wireless_device_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWirelessDeviceImportTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless_device_import_task/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWirelessDeviceImportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWirelessDeviceImportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_wireless_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWirelessGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless-gateways/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWirelessGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWirelessGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_wireless_gateway_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWirelessGatewayTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless-gateways/{Id}/tasks"
        o.input = Shapes::ShapeRef.new(shape: DeleteWirelessGatewayTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWirelessGatewayTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_wireless_gateway_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWirelessGatewayTaskDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless-gateway-task-definitions/{Id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWirelessGatewayTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWirelessGatewayTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:deregister_wireless_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterWirelessDevice"
        o.http_method = "PATCH"
        o.http_request_uri = "/wireless-devices/{Identifier}/deregister"
        o.input = Shapes::ShapeRef.new(shape: DeregisterWirelessDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterWirelessDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_aws_account_from_partner_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAwsAccountFromPartnerAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/partner-accounts/{PartnerAccountId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAwsAccountFromPartnerAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAwsAccountFromPartnerAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_multicast_group_from_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMulticastGroupFromFuotaTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/fuota-tasks/{Id}/multicast-groups/{MulticastGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMulticastGroupFromFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMulticastGroupFromFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_wireless_device_from_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWirelessDeviceFromFuotaTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/fuota-tasks/{Id}/wireless-devices/{WirelessDeviceId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWirelessDeviceFromFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWirelessDeviceFromFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_wireless_device_from_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWirelessDeviceFromMulticastGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/multicast-groups/{Id}/wireless-devices/{WirelessDeviceId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWirelessDeviceFromMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWirelessDeviceFromMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_wireless_device_from_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWirelessDeviceFromThing"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless-devices/{Id}/thing"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWirelessDeviceFromThingRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWirelessDeviceFromThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_wireless_gateway_from_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWirelessGatewayFromCertificate"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless-gateways/{Id}/certificate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWirelessGatewayFromCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWirelessGatewayFromCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_wireless_gateway_from_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWirelessGatewayFromThing"
        o.http_method = "DELETE"
        o.http_request_uri = "/wireless-gateways/{Id}/thing"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWirelessGatewayFromThingRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWirelessGatewayFromThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDestination"
        o.http_method = "GET"
        o.http_request_uri = "/destinations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_device_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeviceProfile"
        o.http_method = "GET"
        o.http_request_uri = "/device-profiles/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetDeviceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_event_configuration_by_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventConfigurationByResourceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/event-configurations-resource-types"
        o.input = Shapes::ShapeRef.new(shape: GetEventConfigurationByResourceTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventConfigurationByResourceTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFuotaTask"
        o.http_method = "GET"
        o.http_request_uri = "/fuota-tasks/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_log_levels_by_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogLevelsByResourceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/log-levels"
        o.input = Shapes::ShapeRef.new(shape: GetLogLevelsByResourceTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogLevelsByResourceTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMulticastGroup"
        o.http_method = "GET"
        o.http_request_uri = "/multicast-groups/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_multicast_group_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMulticastGroupSession"
        o.http_method = "GET"
        o.http_request_uri = "/multicast-groups/{Id}/session"
        o.input = Shapes::ShapeRef.new(shape: GetMulticastGroupSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMulticastGroupSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_network_analyzer_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkAnalyzerConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/network-analyzer-configurations/{ConfigurationName}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkAnalyzerConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkAnalyzerConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_partner_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPartnerAccount"
        o.http_method = "GET"
        o.http_request_uri = "/partner-accounts/{PartnerAccountId}"
        o.input = Shapes::ShapeRef.new(shape: GetPartnerAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPartnerAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_position, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPosition"
        o.http_method = "GET"
        o.http_request_uri = "/positions/{ResourceIdentifier}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetPositionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_position_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPositionConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/position-configurations/{ResourceIdentifier}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetPositionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPositionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_position_estimate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPositionEstimate"
        o.http_method = "POST"
        o.http_request_uri = "/position-estimate"
        o.input = Shapes::ShapeRef.new(shape: GetPositionEstimateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPositionEstimateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_event_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceEventConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/event-configurations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetResourceEventConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceEventConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_log_level, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceLogLevel"
        o.http_method = "GET"
        o.http_request_uri = "/log-levels/{ResourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetResourceLogLevelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceLogLevelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_resource_position, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePosition"
        o.http_method = "GET"
        o.http_request_uri = "/resource-positions/{ResourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePositionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/service-endpoint"
        o.input = Shapes::ShapeRef.new(shape: GetServiceEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_service_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceProfile"
        o.http_method = "GET"
        o.http_request_uri = "/service-profiles/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetServiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessDevice"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-devices/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_device_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessDeviceImportTask"
        o.http_method = "GET"
        o.http_request_uri = "/wireless_device_import_task/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessDeviceImportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessDeviceImportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_device_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessDeviceStatistics"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-devices/{Id}/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessDeviceStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessDeviceStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessGateway"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-gateways/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_gateway_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessGatewayCertificate"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-gateways/{Id}/certificate"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessGatewayCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessGatewayCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_gateway_firmware_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessGatewayFirmwareInformation"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-gateways/{Id}/firmware-information"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessGatewayFirmwareInformationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessGatewayFirmwareInformationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_gateway_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessGatewayStatistics"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-gateways/{Id}/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessGatewayStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessGatewayStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_gateway_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessGatewayTask"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-gateways/{Id}/tasks"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessGatewayTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessGatewayTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_wireless_gateway_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWirelessGatewayTaskDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-gateway-task-definitions/{Id}"
        o.input = Shapes::ShapeRef.new(shape: GetWirelessGatewayTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWirelessGatewayTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/destinations"
        o.input = Shapes::ShapeRef.new(shape: ListDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_device_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/device-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_devices_for_wireless_device_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevicesForWirelessDeviceImportTask"
        o.http_method = "GET"
        o.http_request_uri = "/wireless_device_import_task"
        o.input = Shapes::ShapeRef.new(shape: ListDevicesForWirelessDeviceImportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesForWirelessDeviceImportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_event_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/event-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListEventConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_fuota_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFuotaTasks"
        o.http_method = "GET"
        o.http_request_uri = "/fuota-tasks"
        o.input = Shapes::ShapeRef.new(shape: ListFuotaTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFuotaTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_multicast_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMulticastGroups"
        o.http_method = "GET"
        o.http_request_uri = "/multicast-groups"
        o.input = Shapes::ShapeRef.new(shape: ListMulticastGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMulticastGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_multicast_groups_by_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMulticastGroupsByFuotaTask"
        o.http_method = "GET"
        o.http_request_uri = "/fuota-tasks/{Id}/multicast-groups"
        o.input = Shapes::ShapeRef.new(shape: ListMulticastGroupsByFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMulticastGroupsByFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_analyzer_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkAnalyzerConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/network-analyzer-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkAnalyzerConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkAnalyzerConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_partner_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPartnerAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/partner-accounts"
        o.input = Shapes::ShapeRef.new(shape: ListPartnerAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPartnerAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_position_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPositionConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/position-configurations"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListPositionConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPositionConfigurationsResponse)
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

      api.add_operation(:list_queued_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueuedMessages"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-devices/{Id}/data"
        o.input = Shapes::ShapeRef.new(shape: ListQueuedMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueuedMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/service-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListServiceProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_wireless_device_import_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWirelessDeviceImportTasks"
        o.http_method = "GET"
        o.http_request_uri = "/wireless_device_import_tasks"
        o.input = Shapes::ShapeRef.new(shape: ListWirelessDeviceImportTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWirelessDeviceImportTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_wireless_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWirelessDevices"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-devices"
        o.input = Shapes::ShapeRef.new(shape: ListWirelessDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWirelessDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_wireless_gateway_task_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWirelessGatewayTaskDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-gateway-task-definitions"
        o.input = Shapes::ShapeRef.new(shape: ListWirelessGatewayTaskDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWirelessGatewayTaskDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_wireless_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWirelessGateways"
        o.http_method = "GET"
        o.http_request_uri = "/wireless-gateways"
        o.input = Shapes::ShapeRef.new(shape: ListWirelessGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWirelessGatewaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_position_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPositionConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/position-configurations/{ResourceIdentifier}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: PutPositionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPositionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_resource_log_level, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourceLogLevel"
        o.http_method = "PUT"
        o.http_request_uri = "/log-levels/{ResourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: PutResourceLogLevelRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourceLogLevelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:reset_all_resource_log_levels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetAllResourceLogLevels"
        o.http_method = "DELETE"
        o.http_request_uri = "/log-levels"
        o.input = Shapes::ShapeRef.new(shape: ResetAllResourceLogLevelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetAllResourceLogLevelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:reset_resource_log_level, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetResourceLogLevel"
        o.http_method = "DELETE"
        o.http_request_uri = "/log-levels/{ResourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: ResetResourceLogLevelRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetResourceLogLevelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:send_data_to_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendDataToMulticastGroup"
        o.http_method = "POST"
        o.http_request_uri = "/multicast-groups/{Id}/data"
        o.input = Shapes::ShapeRef.new(shape: SendDataToMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: SendDataToMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:send_data_to_wireless_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendDataToWirelessDevice"
        o.http_method = "POST"
        o.http_request_uri = "/wireless-devices/{Id}/data"
        o.input = Shapes::ShapeRef.new(shape: SendDataToWirelessDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: SendDataToWirelessDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_bulk_associate_wireless_device_with_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBulkAssociateWirelessDeviceWithMulticastGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/multicast-groups/{Id}/bulk"
        o.input = Shapes::ShapeRef.new(shape: StartBulkAssociateWirelessDeviceWithMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBulkAssociateWirelessDeviceWithMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_bulk_disassociate_wireless_device_from_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBulkDisassociateWirelessDeviceFromMulticastGroup"
        o.http_method = "POST"
        o.http_request_uri = "/multicast-groups/{Id}/bulk"
        o.input = Shapes::ShapeRef.new(shape: StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFuotaTask"
        o.http_method = "PUT"
        o.http_request_uri = "/fuota-tasks/{Id}"
        o.input = Shapes::ShapeRef.new(shape: StartFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_multicast_group_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMulticastGroupSession"
        o.http_method = "PUT"
        o.http_request_uri = "/multicast-groups/{Id}/session"
        o.input = Shapes::ShapeRef.new(shape: StartMulticastGroupSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMulticastGroupSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_single_wireless_device_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSingleWirelessDeviceImportTask"
        o.http_method = "POST"
        o.http_request_uri = "/wireless_single_device_import_task"
        o.input = Shapes::ShapeRef.new(shape: StartSingleWirelessDeviceImportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSingleWirelessDeviceImportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_wireless_device_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWirelessDeviceImportTask"
        o.http_method = "POST"
        o.http_request_uri = "/wireless_device_import_task"
        o.input = Shapes::ShapeRef.new(shape: StartWirelessDeviceImportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartWirelessDeviceImportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:test_wireless_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestWirelessDevice"
        o.http_method = "POST"
        o.http_request_uri = "/wireless-devices/{Id}/test"
        o.input = Shapes::ShapeRef.new(shape: TestWirelessDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: TestWirelessDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDestination"
        o.http_method = "PATCH"
        o.http_request_uri = "/destinations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_event_configuration_by_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventConfigurationByResourceTypes"
        o.http_method = "PATCH"
        o.http_request_uri = "/event-configurations-resource-types"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventConfigurationByResourceTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventConfigurationByResourceTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_fuota_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFuotaTask"
        o.http_method = "PATCH"
        o.http_request_uri = "/fuota-tasks/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFuotaTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFuotaTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_log_levels_by_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLogLevelsByResourceTypes"
        o.http_method = "POST"
        o.http_request_uri = "/log-levels"
        o.input = Shapes::ShapeRef.new(shape: UpdateLogLevelsByResourceTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLogLevelsByResourceTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_multicast_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMulticastGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/multicast-groups/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMulticastGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMulticastGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_network_analyzer_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkAnalyzerConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/network-analyzer-configurations/{ConfigurationName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkAnalyzerConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkAnalyzerConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_partner_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePartnerAccount"
        o.http_method = "PATCH"
        o.http_request_uri = "/partner-accounts/{PartnerAccountId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePartnerAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePartnerAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_position, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePosition"
        o.http_method = "PATCH"
        o.http_request_uri = "/positions/{ResourceIdentifier}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UpdatePositionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_resource_event_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceEventConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/event-configurations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceEventConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceEventConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_resource_position, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourcePosition"
        o.http_method = "PATCH"
        o.http_request_uri = "/resource-positions/{ResourceIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourcePositionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourcePositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_wireless_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWirelessDevice"
        o.http_method = "PATCH"
        o.http_request_uri = "/wireless-devices/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWirelessDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWirelessDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_wireless_device_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWirelessDeviceImportTask"
        o.http_method = "PATCH"
        o.http_request_uri = "/wireless_device_import_task/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWirelessDeviceImportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWirelessDeviceImportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_wireless_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWirelessGateway"
        o.http_method = "PATCH"
        o.http_request_uri = "/wireless-gateways/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWirelessGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWirelessGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
