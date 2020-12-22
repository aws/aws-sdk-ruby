# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    AddGwMetadata = Shapes::BooleanShape.new(name: 'AddGwMetadata')
    AmazonId = Shapes::StringShape.new(name: 'AmazonId')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AppEui = Shapes::StringShape.new(name: 'AppEui')
    AppKey = Shapes::StringShape.new(name: 'AppKey')
    AppSKey = Shapes::StringShape.new(name: 'AppSKey')
    AppServerPrivateKey = Shapes::StringShape.new(name: 'AppServerPrivateKey')
    AssociateAwsAccountWithPartnerAccountRequest = Shapes::StructureShape.new(name: 'AssociateAwsAccountWithPartnerAccountRequest')
    AssociateAwsAccountWithPartnerAccountResponse = Shapes::StructureShape.new(name: 'AssociateAwsAccountWithPartnerAccountResponse')
    AssociateWirelessDeviceWithThingRequest = Shapes::StructureShape.new(name: 'AssociateWirelessDeviceWithThingRequest')
    AssociateWirelessDeviceWithThingResponse = Shapes::StructureShape.new(name: 'AssociateWirelessDeviceWithThingResponse')
    AssociateWirelessGatewayWithCertificateRequest = Shapes::StructureShape.new(name: 'AssociateWirelessGatewayWithCertificateRequest')
    AssociateWirelessGatewayWithCertificateResponse = Shapes::StructureShape.new(name: 'AssociateWirelessGatewayWithCertificateResponse')
    AssociateWirelessGatewayWithThingRequest = Shapes::StructureShape.new(name: 'AssociateWirelessGatewayWithThingRequest')
    AssociateWirelessGatewayWithThingResponse = Shapes::StructureShape.new(name: 'AssociateWirelessGatewayWithThingResponse')
    AutoCreateTasks = Shapes::BooleanShape.new(name: 'AutoCreateTasks')
    CertificatePEM = Shapes::StringShape.new(name: 'CertificatePEM')
    ChannelMask = Shapes::StringShape.new(name: 'ChannelMask')
    ClassBTimeout = Shapes::IntegerShape.new(name: 'ClassBTimeout')
    ClassCTimeout = Shapes::IntegerShape.new(name: 'ClassCTimeout')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Crc = Shapes::IntegerShape.new(name: 'Crc')
    CreateDestinationRequest = Shapes::StructureShape.new(name: 'CreateDestinationRequest')
    CreateDestinationResponse = Shapes::StructureShape.new(name: 'CreateDestinationResponse')
    CreateDeviceProfileRequest = Shapes::StructureShape.new(name: 'CreateDeviceProfileRequest')
    CreateDeviceProfileResponse = Shapes::StructureShape.new(name: 'CreateDeviceProfileResponse')
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
    DeleteDestinationRequest = Shapes::StructureShape.new(name: 'DeleteDestinationRequest')
    DeleteDestinationResponse = Shapes::StructureShape.new(name: 'DeleteDestinationResponse')
    DeleteDeviceProfileRequest = Shapes::StructureShape.new(name: 'DeleteDeviceProfileRequest')
    DeleteDeviceProfileResponse = Shapes::StructureShape.new(name: 'DeleteDeviceProfileResponse')
    DeleteServiceProfileRequest = Shapes::StructureShape.new(name: 'DeleteServiceProfileRequest')
    DeleteServiceProfileResponse = Shapes::StructureShape.new(name: 'DeleteServiceProfileResponse')
    DeleteWirelessDeviceRequest = Shapes::StructureShape.new(name: 'DeleteWirelessDeviceRequest')
    DeleteWirelessDeviceResponse = Shapes::StructureShape.new(name: 'DeleteWirelessDeviceResponse')
    DeleteWirelessGatewayRequest = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayRequest')
    DeleteWirelessGatewayResponse = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayResponse')
    DeleteWirelessGatewayTaskDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayTaskDefinitionRequest')
    DeleteWirelessGatewayTaskDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayTaskDefinitionResponse')
    DeleteWirelessGatewayTaskRequest = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayTaskRequest')
    DeleteWirelessGatewayTaskResponse = Shapes::StructureShape.new(name: 'DeleteWirelessGatewayTaskResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DestinationList = Shapes::ListShape.new(name: 'DestinationList')
    DestinationName = Shapes::StringShape.new(name: 'DestinationName')
    Destinations = Shapes::StructureShape.new(name: 'Destinations')
    DevAddr = Shapes::StringShape.new(name: 'DevAddr')
    DevEui = Shapes::StringShape.new(name: 'DevEui')
    DevStatusReqFreq = Shapes::IntegerShape.new(name: 'DevStatusReqFreq')
    DeviceProfile = Shapes::StructureShape.new(name: 'DeviceProfile')
    DeviceProfileArn = Shapes::StringShape.new(name: 'DeviceProfileArn')
    DeviceProfileId = Shapes::StringShape.new(name: 'DeviceProfileId')
    DeviceProfileList = Shapes::ListShape.new(name: 'DeviceProfileList')
    DeviceProfileName = Shapes::StringShape.new(name: 'DeviceProfileName')
    DisassociateAwsAccountFromPartnerAccountRequest = Shapes::StructureShape.new(name: 'DisassociateAwsAccountFromPartnerAccountRequest')
    DisassociateAwsAccountFromPartnerAccountResponse = Shapes::StructureShape.new(name: 'DisassociateAwsAccountFromPartnerAccountResponse')
    DisassociateWirelessDeviceFromThingRequest = Shapes::StructureShape.new(name: 'DisassociateWirelessDeviceFromThingRequest')
    DisassociateWirelessDeviceFromThingResponse = Shapes::StructureShape.new(name: 'DisassociateWirelessDeviceFromThingResponse')
    DisassociateWirelessGatewayFromCertificateRequest = Shapes::StructureShape.new(name: 'DisassociateWirelessGatewayFromCertificateRequest')
    DisassociateWirelessGatewayFromCertificateResponse = Shapes::StructureShape.new(name: 'DisassociateWirelessGatewayFromCertificateResponse')
    DisassociateWirelessGatewayFromThingRequest = Shapes::StructureShape.new(name: 'DisassociateWirelessGatewayFromThingRequest')
    DisassociateWirelessGatewayFromThingResponse = Shapes::StructureShape.new(name: 'DisassociateWirelessGatewayFromThingResponse')
    DlBucketSize = Shapes::IntegerShape.new(name: 'DlBucketSize')
    DlRate = Shapes::IntegerShape.new(name: 'DlRate')
    DlRatePolicy = Shapes::StringShape.new(name: 'DlRatePolicy')
    Double = Shapes::FloatShape.new(name: 'Double')
    DrMax = Shapes::IntegerShape.new(name: 'DrMax')
    DrMin = Shapes::IntegerShape.new(name: 'DrMin')
    EndPoint = Shapes::StringShape.new(name: 'EndPoint')
    Expression = Shapes::StringShape.new(name: 'Expression')
    ExpressionType = Shapes::StringShape.new(name: 'ExpressionType')
    FNwkSIntKey = Shapes::StringShape.new(name: 'FNwkSIntKey')
    FPort = Shapes::IntegerShape.new(name: 'FPort')
    FactoryPresetFreqsList = Shapes::ListShape.new(name: 'FactoryPresetFreqsList')
    Fingerprint = Shapes::StringShape.new(name: 'Fingerprint')
    GatewayEui = Shapes::StringShape.new(name: 'GatewayEui')
    GetDestinationRequest = Shapes::StructureShape.new(name: 'GetDestinationRequest')
    GetDestinationResponse = Shapes::StructureShape.new(name: 'GetDestinationResponse')
    GetDeviceProfileRequest = Shapes::StructureShape.new(name: 'GetDeviceProfileRequest')
    GetDeviceProfileResponse = Shapes::StructureShape.new(name: 'GetDeviceProfileResponse')
    GetPartnerAccountRequest = Shapes::StructureShape.new(name: 'GetPartnerAccountRequest')
    GetPartnerAccountResponse = Shapes::StructureShape.new(name: 'GetPartnerAccountResponse')
    GetServiceEndpointRequest = Shapes::StructureShape.new(name: 'GetServiceEndpointRequest')
    GetServiceEndpointResponse = Shapes::StructureShape.new(name: 'GetServiceEndpointResponse')
    GetServiceProfileRequest = Shapes::StructureShape.new(name: 'GetServiceProfileRequest')
    GetServiceProfileResponse = Shapes::StructureShape.new(name: 'GetServiceProfileResponse')
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
    HrAllowed = Shapes::BooleanShape.new(name: 'HrAllowed')
    ISODateTimeString = Shapes::StringShape.new(name: 'ISODateTimeString')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IotCertificateId = Shapes::StringShape.new(name: 'IotCertificateId')
    JoinEui = Shapes::StringShape.new(name: 'JoinEui')
    ListDestinationsRequest = Shapes::StructureShape.new(name: 'ListDestinationsRequest')
    ListDestinationsResponse = Shapes::StructureShape.new(name: 'ListDestinationsResponse')
    ListDeviceProfilesRequest = Shapes::StructureShape.new(name: 'ListDeviceProfilesRequest')
    ListDeviceProfilesResponse = Shapes::StructureShape.new(name: 'ListDeviceProfilesResponse')
    ListPartnerAccountsRequest = Shapes::StructureShape.new(name: 'ListPartnerAccountsRequest')
    ListPartnerAccountsResponse = Shapes::StructureShape.new(name: 'ListPartnerAccountsResponse')
    ListServiceProfilesRequest = Shapes::StructureShape.new(name: 'ListServiceProfilesRequest')
    ListServiceProfilesResponse = Shapes::StructureShape.new(name: 'ListServiceProfilesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWirelessDevicesRequest = Shapes::StructureShape.new(name: 'ListWirelessDevicesRequest')
    ListWirelessDevicesResponse = Shapes::StructureShape.new(name: 'ListWirelessDevicesResponse')
    ListWirelessGatewayTaskDefinitionsRequest = Shapes::StructureShape.new(name: 'ListWirelessGatewayTaskDefinitionsRequest')
    ListWirelessGatewayTaskDefinitionsResponse = Shapes::StructureShape.new(name: 'ListWirelessGatewayTaskDefinitionsResponse')
    ListWirelessGatewaysRequest = Shapes::StructureShape.new(name: 'ListWirelessGatewaysRequest')
    ListWirelessGatewaysResponse = Shapes::StructureShape.new(name: 'ListWirelessGatewaysResponse')
    LoRaWANDevice = Shapes::StructureShape.new(name: 'LoRaWANDevice')
    LoRaWANDeviceMetadata = Shapes::StructureShape.new(name: 'LoRaWANDeviceMetadata')
    LoRaWANDeviceProfile = Shapes::StructureShape.new(name: 'LoRaWANDeviceProfile')
    LoRaWANGateway = Shapes::StructureShape.new(name: 'LoRaWANGateway')
    LoRaWANGatewayCurrentVersion = Shapes::StructureShape.new(name: 'LoRaWANGatewayCurrentVersion')
    LoRaWANGatewayMetadata = Shapes::StructureShape.new(name: 'LoRaWANGatewayMetadata')
    LoRaWANGatewayMetadataList = Shapes::ListShape.new(name: 'LoRaWANGatewayMetadataList')
    LoRaWANGatewayVersion = Shapes::StructureShape.new(name: 'LoRaWANGatewayVersion')
    LoRaWANGetServiceProfileInfo = Shapes::StructureShape.new(name: 'LoRaWANGetServiceProfileInfo')
    LoRaWANListDevice = Shapes::StructureShape.new(name: 'LoRaWANListDevice')
    LoRaWANSendDataToDevice = Shapes::StructureShape.new(name: 'LoRaWANSendDataToDevice')
    LoRaWANServiceProfile = Shapes::StructureShape.new(name: 'LoRaWANServiceProfile')
    LoRaWANUpdateDevice = Shapes::StructureShape.new(name: 'LoRaWANUpdateDevice')
    LoRaWANUpdateGatewayTaskCreate = Shapes::StructureShape.new(name: 'LoRaWANUpdateGatewayTaskCreate')
    LoRaWANUpdateGatewayTaskEntry = Shapes::StructureShape.new(name: 'LoRaWANUpdateGatewayTaskEntry')
    MacVersion = Shapes::StringShape.new(name: 'MacVersion')
    MaxDutyCycle = Shapes::IntegerShape.new(name: 'MaxDutyCycle')
    MaxEirp = Shapes::IntegerShape.new(name: 'MaxEirp')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    MinGwDiversity = Shapes::IntegerShape.new(name: 'MinGwDiversity')
    Model = Shapes::StringShape.new(name: 'Model')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NwkGeoLoc = Shapes::BooleanShape.new(name: 'NwkGeoLoc')
    NwkKey = Shapes::StringShape.new(name: 'NwkKey')
    NwkSEncKey = Shapes::StringShape.new(name: 'NwkSEncKey')
    NwkSKey = Shapes::StringShape.new(name: 'NwkSKey')
    OtaaV1_0_x = Shapes::StructureShape.new(name: 'OtaaV1_0_x')
    OtaaV1_1 = Shapes::StructureShape.new(name: 'OtaaV1_1')
    PackageVersion = Shapes::StringShape.new(name: 'PackageVersion')
    PartnerAccountId = Shapes::StringShape.new(name: 'PartnerAccountId')
    PartnerType = Shapes::StringShape.new(name: 'PartnerType')
    PayloadData = Shapes::StringShape.new(name: 'PayloadData')
    PingSlotDr = Shapes::IntegerShape.new(name: 'PingSlotDr')
    PingSlotFreq = Shapes::IntegerShape.new(name: 'PingSlotFreq')
    PingSlotPeriod = Shapes::IntegerShape.new(name: 'PingSlotPeriod')
    PrAllowed = Shapes::BooleanShape.new(name: 'PrAllowed')
    PresetFreq = Shapes::IntegerShape.new(name: 'PresetFreq')
    RaAllowed = Shapes::BooleanShape.new(name: 'RaAllowed')
    RegParamsRevision = Shapes::StringShape.new(name: 'RegParamsRevision')
    ReportDevStatusBattery = Shapes::BooleanShape.new(name: 'ReportDevStatusBattery')
    ReportDevStatusMargin = Shapes::BooleanShape.new(name: 'ReportDevStatusMargin')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Result = Shapes::StringShape.new(name: 'Result')
    RfRegion = Shapes::StringShape.new(name: 'RfRegion')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RxDataRate2 = Shapes::IntegerShape.new(name: 'RxDataRate2')
    RxDelay1 = Shapes::IntegerShape.new(name: 'RxDelay1')
    RxDrOffset1 = Shapes::IntegerShape.new(name: 'RxDrOffset1')
    RxFreq2 = Shapes::IntegerShape.new(name: 'RxFreq2')
    SNwkSIntKey = Shapes::StringShape.new(name: 'SNwkSIntKey')
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
    SidewalkAccountInfo = Shapes::StructureShape.new(name: 'SidewalkAccountInfo')
    SidewalkAccountInfoWithFingerprint = Shapes::StructureShape.new(name: 'SidewalkAccountInfoWithFingerprint')
    SidewalkAccountList = Shapes::ListShape.new(name: 'SidewalkAccountList')
    SidewalkListDevice = Shapes::StructureShape.new(name: 'SidewalkListDevice')
    SidewalkSendDataToDevice = Shapes::StructureShape.new(name: 'SidewalkSendDataToDevice')
    SidewalkUpdateAccount = Shapes::StructureShape.new(name: 'SidewalkUpdateAccount')
    Station = Shapes::StringShape.new(name: 'Station')
    Supports32BitFCnt = Shapes::BooleanShape.new(name: 'Supports32BitFCnt')
    SupportsClassB = Shapes::BooleanShape.new(name: 'SupportsClassB')
    SupportsClassC = Shapes::BooleanShape.new(name: 'SupportsClassC')
    SupportsJoin = Shapes::BooleanShape.new(name: 'SupportsJoin')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetPer = Shapes::IntegerShape.new(name: 'TargetPer')
    TestWirelessDeviceRequest = Shapes::StructureShape.new(name: 'TestWirelessDeviceRequest')
    TestWirelessDeviceResponse = Shapes::StructureShape.new(name: 'TestWirelessDeviceResponse')
    ThingArn = Shapes::StringShape.new(name: 'ThingArn')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TransmitMode = Shapes::IntegerShape.new(name: 'TransmitMode')
    UlBucketSize = Shapes::IntegerShape.new(name: 'UlBucketSize')
    UlRate = Shapes::IntegerShape.new(name: 'UlRate')
    UlRatePolicy = Shapes::StringShape.new(name: 'UlRatePolicy')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDataSource = Shapes::StringShape.new(name: 'UpdateDataSource')
    UpdateDestinationRequest = Shapes::StructureShape.new(name: 'UpdateDestinationRequest')
    UpdateDestinationResponse = Shapes::StructureShape.new(name: 'UpdateDestinationResponse')
    UpdatePartnerAccountRequest = Shapes::StructureShape.new(name: 'UpdatePartnerAccountRequest')
    UpdatePartnerAccountResponse = Shapes::StructureShape.new(name: 'UpdatePartnerAccountResponse')
    UpdateSignature = Shapes::StringShape.new(name: 'UpdateSignature')
    UpdateWirelessDeviceRequest = Shapes::StructureShape.new(name: 'UpdateWirelessDeviceRequest')
    UpdateWirelessDeviceResponse = Shapes::StructureShape.new(name: 'UpdateWirelessDeviceResponse')
    UpdateWirelessGatewayRequest = Shapes::StructureShape.new(name: 'UpdateWirelessGatewayRequest')
    UpdateWirelessGatewayResponse = Shapes::StructureShape.new(name: 'UpdateWirelessGatewayResponse')
    UpdateWirelessGatewayTaskCreate = Shapes::StructureShape.new(name: 'UpdateWirelessGatewayTaskCreate')
    UpdateWirelessGatewayTaskEntry = Shapes::StructureShape.new(name: 'UpdateWirelessGatewayTaskEntry')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WirelessDeviceArn = Shapes::StringShape.new(name: 'WirelessDeviceArn')
    WirelessDeviceId = Shapes::StringShape.new(name: 'WirelessDeviceId')
    WirelessDeviceIdType = Shapes::StringShape.new(name: 'WirelessDeviceIdType')
    WirelessDeviceName = Shapes::StringShape.new(name: 'WirelessDeviceName')
    WirelessDeviceStatistics = Shapes::StructureShape.new(name: 'WirelessDeviceStatistics')
    WirelessDeviceStatisticsList = Shapes::ListShape.new(name: 'WirelessDeviceStatisticsList')
    WirelessDeviceType = Shapes::StringShape.new(name: 'WirelessDeviceType')
    WirelessGatewayArn = Shapes::StringShape.new(name: 'WirelessGatewayArn')
    WirelessGatewayId = Shapes::StringShape.new(name: 'WirelessGatewayId')
    WirelessGatewayIdType = Shapes::StringShape.new(name: 'WirelessGatewayIdType')
    WirelessGatewayName = Shapes::StringShape.new(name: 'WirelessGatewayName')
    WirelessGatewayServiceType = Shapes::StringShape.new(name: 'WirelessGatewayServiceType')
    WirelessGatewayStatistics = Shapes::StructureShape.new(name: 'WirelessGatewayStatistics')
    WirelessGatewayStatisticsList = Shapes::ListShape.new(name: 'WirelessGatewayStatisticsList')
    WirelessGatewayTaskDefinitionId = Shapes::StringShape.new(name: 'WirelessGatewayTaskDefinitionId')
    WirelessGatewayTaskDefinitionList = Shapes::ListShape.new(name: 'WirelessGatewayTaskDefinitionList')
    WirelessGatewayTaskDefinitionType = Shapes::StringShape.new(name: 'WirelessGatewayTaskDefinitionType')
    WirelessGatewayTaskName = Shapes::StringShape.new(name: 'WirelessGatewayTaskName')
    WirelessGatewayTaskStatus = Shapes::StringShape.new(name: 'WirelessGatewayTaskStatus')
    WirelessMetadata = Shapes::StructureShape.new(name: 'WirelessMetadata')

    AbpV1_0_x.add_member(:dev_addr, Shapes::ShapeRef.new(shape: DevAddr, location_name: "DevAddr"))
    AbpV1_0_x.add_member(:session_keys, Shapes::ShapeRef.new(shape: SessionKeysAbpV1_0_x, location_name: "SessionKeys"))
    AbpV1_0_x.struct_class = Types::AbpV1_0_x

    AbpV1_1.add_member(:dev_addr, Shapes::ShapeRef.new(shape: DevAddr, location_name: "DevAddr"))
    AbpV1_1.add_member(:session_keys, Shapes::ShapeRef.new(shape: SessionKeysAbpV1_1, location_name: "SessionKeys"))
    AbpV1_1.struct_class = Types::AbpV1_1

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateAwsAccountWithPartnerAccountRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkAccountInfo, required: true, location_name: "Sidewalk"))
    AssociateAwsAccountWithPartnerAccountRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    AssociateAwsAccountWithPartnerAccountRequest.struct_class = Types::AssociateAwsAccountWithPartnerAccountRequest

    AssociateAwsAccountWithPartnerAccountResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkAccountInfo, location_name: "Sidewalk"))
    AssociateAwsAccountWithPartnerAccountResponse.struct_class = Types::AssociateAwsAccountWithPartnerAccountResponse

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

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

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
    CreateDeviceProfileRequest.struct_class = Types::CreateDeviceProfileRequest

    CreateDeviceProfileResponse.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceProfileArn, location_name: "Arn"))
    CreateDeviceProfileResponse.add_member(:id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "Id"))
    CreateDeviceProfileResponse.struct_class = Types::CreateDeviceProfileResponse

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
    CreateWirelessGatewayTaskDefinitionRequest.struct_class = Types::CreateWirelessGatewayTaskDefinitionRequest

    CreateWirelessGatewayTaskDefinitionResponse.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, location_name: "Id"))
    CreateWirelessGatewayTaskDefinitionResponse.struct_class = Types::CreateWirelessGatewayTaskDefinitionResponse

    CreateWirelessGatewayTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    CreateWirelessGatewayTaskRequest.add_member(:wireless_gateway_task_definition_id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, required: true, location_name: "WirelessGatewayTaskDefinitionId"))
    CreateWirelessGatewayTaskRequest.struct_class = Types::CreateWirelessGatewayTaskRequest

    CreateWirelessGatewayTaskResponse.add_member(:wireless_gateway_task_definition_id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, location_name: "WirelessGatewayTaskDefinitionId"))
    CreateWirelessGatewayTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: WirelessGatewayTaskStatus, location_name: "Status"))
    CreateWirelessGatewayTaskResponse.struct_class = Types::CreateWirelessGatewayTaskResponse

    DeleteDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location: "uri", location_name: "Name"))
    DeleteDestinationRequest.struct_class = Types::DeleteDestinationRequest

    DeleteDestinationResponse.struct_class = Types::DeleteDestinationResponse

    DeleteDeviceProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeviceProfileId, required: true, location: "uri", location_name: "Id"))
    DeleteDeviceProfileRequest.struct_class = Types::DeleteDeviceProfileRequest

    DeleteDeviceProfileResponse.struct_class = Types::DeleteDeviceProfileResponse

    DeleteServiceProfileRequest.add_member(:id, Shapes::ShapeRef.new(shape: ServiceProfileId, required: true, location: "uri", location_name: "Id"))
    DeleteServiceProfileRequest.struct_class = Types::DeleteServiceProfileRequest

    DeleteServiceProfileResponse.struct_class = Types::DeleteServiceProfileResponse

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

    DestinationList.member = Shapes::ShapeRef.new(shape: Destinations)

    Destinations.add_member(:arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "Arn"))
    Destinations.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "Name"))
    Destinations.add_member(:expression_type, Shapes::ShapeRef.new(shape: ExpressionType, location_name: "ExpressionType"))
    Destinations.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "Expression"))
    Destinations.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Destinations.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    Destinations.struct_class = Types::Destinations

    DeviceProfile.add_member(:arn, Shapes::ShapeRef.new(shape: DeviceProfileArn, location_name: "Arn"))
    DeviceProfile.add_member(:name, Shapes::ShapeRef.new(shape: DeviceProfileName, location_name: "Name"))
    DeviceProfile.add_member(:id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "Id"))
    DeviceProfile.struct_class = Types::DeviceProfile

    DeviceProfileList.member = Shapes::ShapeRef.new(shape: DeviceProfile)

    DisassociateAwsAccountFromPartnerAccountRequest.add_member(:partner_account_id, Shapes::ShapeRef.new(shape: PartnerAccountId, required: true, location: "uri", location_name: "PartnerAccountId"))
    DisassociateAwsAccountFromPartnerAccountRequest.add_member(:partner_type, Shapes::ShapeRef.new(shape: PartnerType, required: true, location: "querystring", location_name: "partnerType"))
    DisassociateAwsAccountFromPartnerAccountRequest.struct_class = Types::DisassociateAwsAccountFromPartnerAccountRequest

    DisassociateAwsAccountFromPartnerAccountResponse.struct_class = Types::DisassociateAwsAccountFromPartnerAccountResponse

    DisassociateWirelessDeviceFromThingRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    DisassociateWirelessDeviceFromThingRequest.struct_class = Types::DisassociateWirelessDeviceFromThingRequest

    DisassociateWirelessDeviceFromThingResponse.struct_class = Types::DisassociateWirelessDeviceFromThingResponse

    DisassociateWirelessGatewayFromCertificateRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    DisassociateWirelessGatewayFromCertificateRequest.struct_class = Types::DisassociateWirelessGatewayFromCertificateRequest

    DisassociateWirelessGatewayFromCertificateResponse.struct_class = Types::DisassociateWirelessGatewayFromCertificateResponse

    DisassociateWirelessGatewayFromThingRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    DisassociateWirelessGatewayFromThingRequest.struct_class = Types::DisassociateWirelessGatewayFromThingRequest

    DisassociateWirelessGatewayFromThingResponse.struct_class = Types::DisassociateWirelessGatewayFromThingResponse

    FactoryPresetFreqsList.member = Shapes::ShapeRef.new(shape: PresetFreq)

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
    GetDeviceProfileResponse.struct_class = Types::GetDeviceProfileResponse

    GetPartnerAccountRequest.add_member(:partner_account_id, Shapes::ShapeRef.new(shape: PartnerAccountId, required: true, location: "uri", location_name: "PartnerAccountId"))
    GetPartnerAccountRequest.add_member(:partner_type, Shapes::ShapeRef.new(shape: PartnerType, required: true, location: "querystring", location_name: "partnerType"))
    GetPartnerAccountRequest.struct_class = Types::GetPartnerAccountRequest

    GetPartnerAccountResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkAccountInfoWithFingerprint, location_name: "Sidewalk"))
    GetPartnerAccountResponse.add_member(:account_linked, Shapes::ShapeRef.new(shape: AccountLinked, location_name: "AccountLinked"))
    GetPartnerAccountResponse.struct_class = Types::GetPartnerAccountResponse

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
    GetWirelessDeviceResponse.struct_class = Types::GetWirelessDeviceResponse

    GetWirelessDeviceStatisticsRequest.add_member(:wireless_device_id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    GetWirelessDeviceStatisticsRequest.struct_class = Types::GetWirelessDeviceStatisticsRequest

    GetWirelessDeviceStatisticsResponse.add_member(:wireless_device_id, Shapes::ShapeRef.new(shape: WirelessDeviceId, location_name: "WirelessDeviceId"))
    GetWirelessDeviceStatisticsResponse.add_member(:last_uplink_received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "LastUplinkReceivedAt"))
    GetWirelessDeviceStatisticsResponse.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANDeviceMetadata, location_name: "LoRaWAN"))
    GetWirelessDeviceStatisticsResponse.struct_class = Types::GetWirelessDeviceStatisticsResponse

    GetWirelessGatewayCertificateRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    GetWirelessGatewayCertificateRequest.struct_class = Types::GetWirelessGatewayCertificateRequest

    GetWirelessGatewayCertificateResponse.add_member(:iot_certificate_id, Shapes::ShapeRef.new(shape: IotCertificateId, location_name: "IotCertificateId"))
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
    GetWirelessGatewayStatisticsResponse.struct_class = Types::GetWirelessGatewayStatisticsResponse

    GetWirelessGatewayTaskDefinitionRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, required: true, location: "uri", location_name: "Id"))
    GetWirelessGatewayTaskDefinitionRequest.struct_class = Types::GetWirelessGatewayTaskDefinitionRequest

    GetWirelessGatewayTaskDefinitionResponse.add_member(:auto_create_tasks, Shapes::ShapeRef.new(shape: AutoCreateTasks, location_name: "AutoCreateTasks"))
    GetWirelessGatewayTaskDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: WirelessGatewayTaskName, location_name: "Name"))
    GetWirelessGatewayTaskDefinitionResponse.add_member(:update, Shapes::ShapeRef.new(shape: UpdateWirelessGatewayTaskCreate, location_name: "Update"))
    GetWirelessGatewayTaskDefinitionResponse.struct_class = Types::GetWirelessGatewayTaskDefinitionResponse

    GetWirelessGatewayTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    GetWirelessGatewayTaskRequest.struct_class = Types::GetWirelessGatewayTaskRequest

    GetWirelessGatewayTaskResponse.add_member(:wireless_gateway_id, Shapes::ShapeRef.new(shape: WirelessGatewayId, location_name: "WirelessGatewayId"))
    GetWirelessGatewayTaskResponse.add_member(:wireless_gateway_task_definition_id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, location_name: "WirelessGatewayTaskDefinitionId"))
    GetWirelessGatewayTaskResponse.add_member(:last_uplink_received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "LastUplinkReceivedAt"))
    GetWirelessGatewayTaskResponse.add_member(:task_created_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "TaskCreatedAt"))
    GetWirelessGatewayTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: WirelessGatewayTaskStatus, location_name: "Status"))
    GetWirelessGatewayTaskResponse.struct_class = Types::GetWirelessGatewayTaskResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDestinationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDestinationsRequest.struct_class = Types::ListDestinationsRequest

    ListDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDestinationsResponse.add_member(:destination_list, Shapes::ShapeRef.new(shape: DestinationList, location_name: "DestinationList"))
    ListDestinationsResponse.struct_class = Types::ListDestinationsResponse

    ListDeviceProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDeviceProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDeviceProfilesRequest.struct_class = Types::ListDeviceProfilesRequest

    ListDeviceProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeviceProfilesResponse.add_member(:device_profile_list, Shapes::ShapeRef.new(shape: DeviceProfileList, location_name: "DeviceProfileList"))
    ListDeviceProfilesResponse.struct_class = Types::ListDeviceProfilesResponse

    ListPartnerAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPartnerAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPartnerAccountsRequest.struct_class = Types::ListPartnerAccountsRequest

    ListPartnerAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPartnerAccountsResponse.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkAccountList, location_name: "Sidewalk"))
    ListPartnerAccountsResponse.struct_class = Types::ListPartnerAccountsResponse

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

    ListWirelessDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWirelessDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWirelessDevicesRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location: "querystring", location_name: "destinationName"))
    ListWirelessDevicesRequest.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location: "querystring", location_name: "deviceProfileId"))
    ListWirelessDevicesRequest.add_member(:service_profile_id, Shapes::ShapeRef.new(shape: ServiceProfileId, location: "querystring", location_name: "serviceProfileId"))
    ListWirelessDevicesRequest.add_member(:wireless_device_type, Shapes::ShapeRef.new(shape: WirelessDeviceType, location: "querystring", location_name: "wirelessDeviceType"))
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

    LoRaWANDevice.add_member(:dev_eui, Shapes::ShapeRef.new(shape: DevEui, location_name: "DevEui"))
    LoRaWANDevice.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "DeviceProfileId"))
    LoRaWANDevice.add_member(:service_profile_id, Shapes::ShapeRef.new(shape: ServiceProfileId, location_name: "ServiceProfileId"))
    LoRaWANDevice.add_member(:otaa_v1_1, Shapes::ShapeRef.new(shape: OtaaV1_1, location_name: "OtaaV1_1"))
    LoRaWANDevice.add_member(:otaa_v1_0_x, Shapes::ShapeRef.new(shape: OtaaV1_0_x, location_name: "OtaaV1_0_x"))
    LoRaWANDevice.add_member(:abp_v1_1, Shapes::ShapeRef.new(shape: AbpV1_1, location_name: "AbpV1_1"))
    LoRaWANDevice.add_member(:abp_v1_0_x, Shapes::ShapeRef.new(shape: AbpV1_0_x, location_name: "AbpV1_0_x"))
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

    LoRaWANGateway.add_member(:gateway_eui, Shapes::ShapeRef.new(shape: GatewayEui, location_name: "GatewayEui"))
    LoRaWANGateway.add_member(:rf_region, Shapes::ShapeRef.new(shape: RfRegion, location_name: "RfRegion"))
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

    LoRaWANListDevice.add_member(:dev_eui, Shapes::ShapeRef.new(shape: DevEui, location_name: "DevEui"))
    LoRaWANListDevice.struct_class = Types::LoRaWANListDevice

    LoRaWANSendDataToDevice.add_member(:f_port, Shapes::ShapeRef.new(shape: FPort, location_name: "FPort"))
    LoRaWANSendDataToDevice.struct_class = Types::LoRaWANSendDataToDevice

    LoRaWANServiceProfile.add_member(:add_gw_metadata, Shapes::ShapeRef.new(shape: AddGwMetadata, location_name: "AddGwMetadata"))
    LoRaWANServiceProfile.struct_class = Types::LoRaWANServiceProfile

    LoRaWANUpdateDevice.add_member(:device_profile_id, Shapes::ShapeRef.new(shape: DeviceProfileId, location_name: "DeviceProfileId"))
    LoRaWANUpdateDevice.add_member(:service_profile_id, Shapes::ShapeRef.new(shape: ServiceProfileId, location_name: "ServiceProfileId"))
    LoRaWANUpdateDevice.struct_class = Types::LoRaWANUpdateDevice

    LoRaWANUpdateGatewayTaskCreate.add_member(:update_signature, Shapes::ShapeRef.new(shape: UpdateSignature, location_name: "UpdateSignature"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:sig_key_crc, Shapes::ShapeRef.new(shape: Crc, location_name: "SigKeyCrc"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:current_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "CurrentVersion"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:update_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "UpdateVersion"))
    LoRaWANUpdateGatewayTaskCreate.struct_class = Types::LoRaWANUpdateGatewayTaskCreate

    LoRaWANUpdateGatewayTaskEntry.add_member(:current_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "CurrentVersion"))
    LoRaWANUpdateGatewayTaskEntry.add_member(:update_version, Shapes::ShapeRef.new(shape: LoRaWANGatewayVersion, location_name: "UpdateVersion"))
    LoRaWANUpdateGatewayTaskEntry.struct_class = Types::LoRaWANUpdateGatewayTaskEntry

    OtaaV1_0_x.add_member(:app_key, Shapes::ShapeRef.new(shape: AppKey, location_name: "AppKey"))
    OtaaV1_0_x.add_member(:app_eui, Shapes::ShapeRef.new(shape: AppEui, location_name: "AppEui"))
    OtaaV1_0_x.struct_class = Types::OtaaV1_0_x

    OtaaV1_1.add_member(:app_key, Shapes::ShapeRef.new(shape: AppKey, location_name: "AppKey"))
    OtaaV1_1.add_member(:nwk_key, Shapes::ShapeRef.new(shape: NwkKey, location_name: "NwkKey"))
    OtaaV1_1.add_member(:join_eui, Shapes::ShapeRef.new(shape: JoinEui, location_name: "JoinEui"))
    OtaaV1_1.struct_class = Types::OtaaV1_1

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

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
    SidewalkAccountInfoWithFingerprint.struct_class = Types::SidewalkAccountInfoWithFingerprint

    SidewalkAccountList.member = Shapes::ShapeRef.new(shape: SidewalkAccountInfoWithFingerprint)

    SidewalkListDevice.add_member(:amazon_id, Shapes::ShapeRef.new(shape: AmazonId, location_name: "AmazonId"))
    SidewalkListDevice.struct_class = Types::SidewalkListDevice

    SidewalkSendDataToDevice.add_member(:seq, Shapes::ShapeRef.new(shape: Seq, location_name: "Seq"))
    SidewalkSendDataToDevice.struct_class = Types::SidewalkSendDataToDevice

    SidewalkUpdateAccount.add_member(:app_server_private_key, Shapes::ShapeRef.new(shape: AppServerPrivateKey, location_name: "AppServerPrivateKey"))
    SidewalkUpdateAccount.struct_class = Types::SidewalkUpdateAccount

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TestWirelessDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    TestWirelessDeviceRequest.struct_class = Types::TestWirelessDeviceRequest

    TestWirelessDeviceResponse.add_member(:result, Shapes::ShapeRef.new(shape: Result, location_name: "Result"))
    TestWirelessDeviceResponse.struct_class = Types::TestWirelessDeviceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location: "uri", location_name: "Name"))
    UpdateDestinationRequest.add_member(:expression_type, Shapes::ShapeRef.new(shape: ExpressionType, location_name: "ExpressionType"))
    UpdateDestinationRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "Expression"))
    UpdateDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDestinationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateDestinationRequest.struct_class = Types::UpdateDestinationRequest

    UpdateDestinationResponse.struct_class = Types::UpdateDestinationResponse

    UpdatePartnerAccountRequest.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkUpdateAccount, required: true, location_name: "Sidewalk"))
    UpdatePartnerAccountRequest.add_member(:partner_account_id, Shapes::ShapeRef.new(shape: PartnerAccountId, required: true, location: "uri", location_name: "PartnerAccountId"))
    UpdatePartnerAccountRequest.add_member(:partner_type, Shapes::ShapeRef.new(shape: PartnerType, required: true, location: "querystring", location_name: "partnerType"))
    UpdatePartnerAccountRequest.struct_class = Types::UpdatePartnerAccountRequest

    UpdatePartnerAccountResponse.struct_class = Types::UpdatePartnerAccountResponse

    UpdateWirelessDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, required: true, location: "uri", location_name: "Id"))
    UpdateWirelessDeviceRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    UpdateWirelessDeviceRequest.add_member(:name, Shapes::ShapeRef.new(shape: WirelessDeviceName, location_name: "Name"))
    UpdateWirelessDeviceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateWirelessDeviceRequest.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANUpdateDevice, location_name: "LoRaWAN"))
    UpdateWirelessDeviceRequest.struct_class = Types::UpdateWirelessDeviceRequest

    UpdateWirelessDeviceResponse.struct_class = Types::UpdateWirelessDeviceResponse

    UpdateWirelessGatewayRequest.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayId, required: true, location: "uri", location_name: "Id"))
    UpdateWirelessGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: WirelessGatewayName, location_name: "Name"))
    UpdateWirelessGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateWirelessGatewayRequest.struct_class = Types::UpdateWirelessGatewayRequest

    UpdateWirelessGatewayResponse.struct_class = Types::UpdateWirelessGatewayResponse

    UpdateWirelessGatewayTaskCreate.add_member(:update_data_source, Shapes::ShapeRef.new(shape: UpdateDataSource, location_name: "UpdateDataSource"))
    UpdateWirelessGatewayTaskCreate.add_member(:update_data_role, Shapes::ShapeRef.new(shape: UpdateDataSource, location_name: "UpdateDataRole"))
    UpdateWirelessGatewayTaskCreate.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANUpdateGatewayTaskCreate, location_name: "LoRaWAN"))
    UpdateWirelessGatewayTaskCreate.struct_class = Types::UpdateWirelessGatewayTaskCreate

    UpdateWirelessGatewayTaskEntry.add_member(:id, Shapes::ShapeRef.new(shape: WirelessGatewayTaskDefinitionId, location_name: "Id"))
    UpdateWirelessGatewayTaskEntry.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANUpdateGatewayTaskEntry, location_name: "LoRaWAN"))
    UpdateWirelessGatewayTaskEntry.struct_class = Types::UpdateWirelessGatewayTaskEntry

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    WirelessDeviceStatistics.add_member(:arn, Shapes::ShapeRef.new(shape: WirelessDeviceArn, location_name: "Arn"))
    WirelessDeviceStatistics.add_member(:id, Shapes::ShapeRef.new(shape: WirelessDeviceId, location_name: "Id"))
    WirelessDeviceStatistics.add_member(:type, Shapes::ShapeRef.new(shape: WirelessDeviceType, location_name: "Type"))
    WirelessDeviceStatistics.add_member(:name, Shapes::ShapeRef.new(shape: WirelessDeviceName, location_name: "Name"))
    WirelessDeviceStatistics.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationName"))
    WirelessDeviceStatistics.add_member(:last_uplink_received_at, Shapes::ShapeRef.new(shape: ISODateTimeString, location_name: "LastUplinkReceivedAt"))
    WirelessDeviceStatistics.add_member(:lo_ra_wan, Shapes::ShapeRef.new(shape: LoRaWANListDevice, location_name: "LoRaWAN"))
    WirelessDeviceStatistics.add_member(:sidewalk, Shapes::ShapeRef.new(shape: SidewalkListDevice, location_name: "Sidewalk"))
    WirelessDeviceStatistics.struct_class = Types::WirelessDeviceStatistics

    WirelessDeviceStatisticsList.member = Shapes::ShapeRef.new(shape: WirelessDeviceStatistics)

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
