# frozen_string_literal: true

# This is generated code!

module Aws::IoTWireless
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbpV10X = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AbpV1_0_x", name: "AbpV10X")
    AbpV11 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AbpV1_1", name: "AbpV11")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountLinked = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#AccountLinked", name: "AccountLinked", traits: {"smithy.api#default" => false})
    Accuracy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#Accuracy", name: "Accuracy")
    AckModeRetryDurationSecs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#AckModeRetryDurationSecs", name: "AckModeRetryDurationSecs", traits: {"smithy.api#range" => {"min" => 0, "max" => 604800}})
    AddGwMetadata = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#AddGwMetadata", name: "AddGwMetadata", traits: {"smithy.api#default" => false})
    AggregationPeriod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#AggregationPeriod", name: "AggregationPeriod")
    AmazonId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#AmazonId", name: "AmazonId", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ApId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ApId", name: "ApId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    AppEui = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#AppEui", name: "AppEui", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{16}$"})
    AppKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#AppKey", name: "AppKey", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{32}$"})
    AppSKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#AppSKey", name: "AppSKey", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{32}$"})
    AppServerPrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#AppServerPrivateKey", name: "AppServerPrivateKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[a-fA-F0-9]{64}$", "smithy.api#sensitive" => {}})
    ApplicationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ApplicationConfig", name: "ApplicationConfig")
    ApplicationConfigType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#ApplicationConfigType", name: "ApplicationConfigType")
    ApplicationServerPublicKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ApplicationServerPublicKey", name: "ApplicationServerPublicKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[a-fA-F0-9]{64}$", "smithy.api#sensitive" => {}})
    Applications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#Applications", name: "Applications")
    AssistPosition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#AssistPosition", name: "AssistPosition", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    AssociateAwsAccountWithPartnerAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateAwsAccountWithPartnerAccountRequest", name: "AssociateAwsAccountWithPartnerAccountRequest")
    AssociateAwsAccountWithPartnerAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateAwsAccountWithPartnerAccountResponse", name: "AssociateAwsAccountWithPartnerAccountResponse")
    AssociateMulticastGroupWithFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateMulticastGroupWithFuotaTaskRequest", name: "AssociateMulticastGroupWithFuotaTaskRequest")
    AssociateMulticastGroupWithFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateMulticastGroupWithFuotaTaskResponse", name: "AssociateMulticastGroupWithFuotaTaskResponse")
    AssociateWirelessDeviceWithFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessDeviceWithFuotaTaskRequest", name: "AssociateWirelessDeviceWithFuotaTaskRequest")
    AssociateWirelessDeviceWithFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessDeviceWithFuotaTaskResponse", name: "AssociateWirelessDeviceWithFuotaTaskResponse")
    AssociateWirelessDeviceWithMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessDeviceWithMulticastGroupRequest", name: "AssociateWirelessDeviceWithMulticastGroupRequest")
    AssociateWirelessDeviceWithMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessDeviceWithMulticastGroupResponse", name: "AssociateWirelessDeviceWithMulticastGroupResponse")
    AssociateWirelessDeviceWithThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessDeviceWithThingRequest", name: "AssociateWirelessDeviceWithThingRequest")
    AssociateWirelessDeviceWithThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessDeviceWithThingResponse", name: "AssociateWirelessDeviceWithThingResponse")
    AssociateWirelessGatewayWithCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessGatewayWithCertificateRequest", name: "AssociateWirelessGatewayWithCertificateRequest")
    AssociateWirelessGatewayWithCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessGatewayWithCertificateResponse", name: "AssociateWirelessGatewayWithCertificateResponse")
    AssociateWirelessGatewayWithThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessGatewayWithThingRequest", name: "AssociateWirelessGatewayWithThingRequest")
    AssociateWirelessGatewayWithThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#AssociateWirelessGatewayWithThingResponse", name: "AssociateWirelessGatewayWithThingResponse")
    AutoCreateTasks = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#AutoCreateTasks", name: "AutoCreateTasks", traits: {"smithy.api#default" => false})
    Avg = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#Avg", name: "Avg")
    BCCH = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#BCCH", name: "BCCH", traits: {"smithy.api#range" => {"min" => 0, "max" => 1023}})
    BSIC = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#BSIC", name: "BSIC", traits: {"smithy.api#range" => {"min" => 0, "max" => 63}})
    BaseLat = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#BaseLat", name: "BaseLat", traits: {"smithy.api#range" => {"min" => -90, "max" => 90}})
    BaseLng = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#BaseLng", name: "BaseLng", traits: {"smithy.api#range" => {"min" => -180, "max" => 180}})
    BaseStationId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#BaseStationId", name: "BaseStationId", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    BatteryLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#BatteryLevel", name: "BatteryLevel")
    Beaconing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#Beaconing", name: "Beaconing")
    BeaconingDataRate = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#BeaconingDataRate", name: "BeaconingDataRate", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    BeaconingFrequencies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#BeaconingFrequencies", name: "BeaconingFrequencies", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BeaconingFrequency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#BeaconingFrequency", name: "BeaconingFrequency", traits: {"smithy.api#range" => {"min" => 100000000, "max" => 1000000000}})
    CancelMulticastGroupSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CancelMulticastGroupSessionRequest", name: "CancelMulticastGroupSessionRequest")
    CancelMulticastGroupSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CancelMulticastGroupSessionResponse", name: "CancelMulticastGroupSessionResponse")
    CaptureTimeAccuracy = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#CaptureTimeAccuracy", name: "CaptureTimeAccuracy")
    CdmaChannel = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#CdmaChannel", name: "CdmaChannel", traits: {"smithy.api#range" => {"min" => 0, "max" => 4095}})
    CdmaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#CdmaList", name: "CdmaList", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    CdmaLocalId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CdmaLocalId", name: "CdmaLocalId")
    CdmaNmrList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#CdmaNmrList", name: "CdmaNmrList", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    CdmaNmrObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CdmaNmrObj", name: "CdmaNmrObj")
    CdmaObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CdmaObj", name: "CdmaObj")
    CellParams = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#CellParams", name: "CellParams", traits: {"smithy.api#range" => {"min" => 0, "max" => 127}})
    CellTowers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CellTowers", name: "CellTowers")
    CertificateList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CertificateList", name: "CertificateList")
    CertificatePEM = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#CertificatePEM", name: "CertificatePEM", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[^-A-Za-z0-9+/=]|=[^=]|={3,}${1,4096}$"})
    CertificateValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#CertificateValue", name: "CertificateValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ChannelMask = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ChannelMask", name: "ChannelMask", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ClassBTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#ClassBTimeout", name: "ClassBTimeout", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    ClassCTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#ClassCTimeout", name: "ClassCTimeout", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#ConnectionStatus", name: "ConnectionStatus")
    ConnectionStatusEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ConnectionStatusEventConfiguration", name: "ConnectionStatusEventConfiguration")
    ConnectionStatusResourceTypeEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ConnectionStatusResourceTypeEventConfiguration", name: "ConnectionStatusResourceTypeEventConfiguration")
    Coordinate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#Coordinate", name: "Coordinate")
    Crc = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#Crc", name: "Crc", traits: {"smithy.api#range" => {"min" => 1, "max" => 4294967295}})
    CreateDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateDestinationRequest", name: "CreateDestinationRequest")
    CreateDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateDestinationResponse", name: "CreateDestinationResponse")
    CreateDeviceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateDeviceProfileRequest", name: "CreateDeviceProfileRequest")
    CreateDeviceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateDeviceProfileResponse", name: "CreateDeviceProfileResponse")
    CreateFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateFuotaTaskRequest", name: "CreateFuotaTaskRequest")
    CreateFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateFuotaTaskResponse", name: "CreateFuotaTaskResponse")
    CreateMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateMulticastGroupRequest", name: "CreateMulticastGroupRequest")
    CreateMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateMulticastGroupResponse", name: "CreateMulticastGroupResponse")
    CreateNetworkAnalyzerConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateNetworkAnalyzerConfigurationRequest", name: "CreateNetworkAnalyzerConfigurationRequest")
    CreateNetworkAnalyzerConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateNetworkAnalyzerConfigurationResponse", name: "CreateNetworkAnalyzerConfigurationResponse")
    CreateServiceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateServiceProfileRequest", name: "CreateServiceProfileRequest")
    CreateServiceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateServiceProfileResponse", name: "CreateServiceProfileResponse")
    CreateWirelessDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateWirelessDeviceRequest", name: "CreateWirelessDeviceRequest")
    CreateWirelessDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateWirelessDeviceResponse", name: "CreateWirelessDeviceResponse")
    CreateWirelessGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateWirelessGatewayRequest", name: "CreateWirelessGatewayRequest")
    CreateWirelessGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateWirelessGatewayResponse", name: "CreateWirelessGatewayResponse")
    CreateWirelessGatewayTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateWirelessGatewayTaskDefinitionRequest", name: "CreateWirelessGatewayTaskDefinitionRequest")
    CreateWirelessGatewayTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateWirelessGatewayTaskDefinitionResponse", name: "CreateWirelessGatewayTaskDefinitionResponse")
    CreateWirelessGatewayTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateWirelessGatewayTaskRequest", name: "CreateWirelessGatewayTaskRequest")
    CreateWirelessGatewayTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#CreateWirelessGatewayTaskResponse", name: "CreateWirelessGatewayTaskResponse")
    CreatedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#CreatedAt", name: "CreatedAt")
    CreationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#CreationDate", name: "CreationDate")
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#CreationTime", name: "CreationTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DakCertificateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DakCertificateId", name: "DakCertificateId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DakCertificateMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DakCertificateMetadata", name: "DakCertificateMetadata")
    DakCertificateMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#DakCertificateMetadataList", name: "DakCertificateMetadataList")
    DeleteDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteDestinationRequest", name: "DeleteDestinationRequest")
    DeleteDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteDestinationResponse", name: "DeleteDestinationResponse")
    DeleteDeviceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteDeviceProfileRequest", name: "DeleteDeviceProfileRequest")
    DeleteDeviceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteDeviceProfileResponse", name: "DeleteDeviceProfileResponse")
    DeleteFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteFuotaTaskRequest", name: "DeleteFuotaTaskRequest")
    DeleteFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteFuotaTaskResponse", name: "DeleteFuotaTaskResponse")
    DeleteMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteMulticastGroupRequest", name: "DeleteMulticastGroupRequest")
    DeleteMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteMulticastGroupResponse", name: "DeleteMulticastGroupResponse")
    DeleteNetworkAnalyzerConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteNetworkAnalyzerConfigurationRequest", name: "DeleteNetworkAnalyzerConfigurationRequest")
    DeleteNetworkAnalyzerConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteNetworkAnalyzerConfigurationResponse", name: "DeleteNetworkAnalyzerConfigurationResponse")
    DeleteQueuedMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteQueuedMessagesRequest", name: "DeleteQueuedMessagesRequest")
    DeleteQueuedMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteQueuedMessagesResponse", name: "DeleteQueuedMessagesResponse")
    DeleteServiceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteServiceProfileRequest", name: "DeleteServiceProfileRequest")
    DeleteServiceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteServiceProfileResponse", name: "DeleteServiceProfileResponse")
    DeleteWirelessDeviceImportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessDeviceImportTaskRequest", name: "DeleteWirelessDeviceImportTaskRequest")
    DeleteWirelessDeviceImportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessDeviceImportTaskResponse", name: "DeleteWirelessDeviceImportTaskResponse")
    DeleteWirelessDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessDeviceRequest", name: "DeleteWirelessDeviceRequest")
    DeleteWirelessDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessDeviceResponse", name: "DeleteWirelessDeviceResponse")
    DeleteWirelessGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessGatewayRequest", name: "DeleteWirelessGatewayRequest")
    DeleteWirelessGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessGatewayResponse", name: "DeleteWirelessGatewayResponse")
    DeleteWirelessGatewayTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessGatewayTaskDefinitionRequest", name: "DeleteWirelessGatewayTaskDefinitionRequest")
    DeleteWirelessGatewayTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessGatewayTaskDefinitionResponse", name: "DeleteWirelessGatewayTaskDefinitionResponse")
    DeleteWirelessGatewayTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessGatewayTaskRequest", name: "DeleteWirelessGatewayTaskRequest")
    DeleteWirelessGatewayTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeleteWirelessGatewayTaskResponse", name: "DeleteWirelessGatewayTaskResponse")
    DeregisterWirelessDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeregisterWirelessDeviceRequest", name: "DeregisterWirelessDeviceRequest")
    DeregisterWirelessDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeregisterWirelessDeviceResponse", name: "DeregisterWirelessDeviceResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    DestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DestinationArn", name: "DestinationArn")
    DestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#DestinationList", name: "DestinationList")
    DestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DestinationName", name: "DestinationName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    Destinations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#Destinations", name: "Destinations")
    DevAddr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DevAddr", name: "DevAddr", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}$"})
    DevEui = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DevEui", name: "DevEui", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{16}$"})
    DevStatusReqFreq = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DevStatusReqFreq", name: "DevStatusReqFreq", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    DeviceCertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#DeviceCertificateList", name: "DeviceCertificateList")
    DeviceCreationFile = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DeviceCreationFile", name: "DeviceCreationFile", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DeviceCreationFileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#DeviceCreationFileList", name: "DeviceCreationFileList")
    DeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DeviceName", name: "DeviceName")
    DeviceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeviceProfile", name: "DeviceProfile")
    DeviceProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DeviceProfileArn", name: "DeviceProfileArn")
    DeviceProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DeviceProfileId", name: "DeviceProfileId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DeviceProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#DeviceProfileList", name: "DeviceProfileList")
    DeviceProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DeviceProfileName", name: "DeviceProfileName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DeviceProfileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#DeviceProfileType", name: "DeviceProfileType")
    DeviceRegistrationStateEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeviceRegistrationStateEventConfiguration", name: "DeviceRegistrationStateEventConfiguration")
    DeviceRegistrationStateResourceTypeEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DeviceRegistrationStateResourceTypeEventConfiguration", name: "DeviceRegistrationStateResourceTypeEventConfiguration")
    DeviceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#DeviceState", name: "DeviceState")
    DeviceTypeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DeviceTypeId", name: "DeviceTypeId", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    Dimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#Dimension", name: "Dimension")
    DimensionName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#DimensionName", name: "DimensionName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DimensionValue", name: "DimensionValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Dimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#Dimensions", name: "Dimensions")
    DisassociateAwsAccountFromPartnerAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateAwsAccountFromPartnerAccountRequest", name: "DisassociateAwsAccountFromPartnerAccountRequest")
    DisassociateAwsAccountFromPartnerAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateAwsAccountFromPartnerAccountResponse", name: "DisassociateAwsAccountFromPartnerAccountResponse")
    DisassociateMulticastGroupFromFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateMulticastGroupFromFuotaTaskRequest", name: "DisassociateMulticastGroupFromFuotaTaskRequest")
    DisassociateMulticastGroupFromFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateMulticastGroupFromFuotaTaskResponse", name: "DisassociateMulticastGroupFromFuotaTaskResponse")
    DisassociateWirelessDeviceFromFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromFuotaTaskRequest", name: "DisassociateWirelessDeviceFromFuotaTaskRequest")
    DisassociateWirelessDeviceFromFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromFuotaTaskResponse", name: "DisassociateWirelessDeviceFromFuotaTaskResponse")
    DisassociateWirelessDeviceFromMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromMulticastGroupRequest", name: "DisassociateWirelessDeviceFromMulticastGroupRequest")
    DisassociateWirelessDeviceFromMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromMulticastGroupResponse", name: "DisassociateWirelessDeviceFromMulticastGroupResponse")
    DisassociateWirelessDeviceFromThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromThingRequest", name: "DisassociateWirelessDeviceFromThingRequest")
    DisassociateWirelessDeviceFromThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromThingResponse", name: "DisassociateWirelessDeviceFromThingResponse")
    DisassociateWirelessGatewayFromCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessGatewayFromCertificateRequest", name: "DisassociateWirelessGatewayFromCertificateRequest")
    DisassociateWirelessGatewayFromCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessGatewayFromCertificateResponse", name: "DisassociateWirelessGatewayFromCertificateResponse")
    DisassociateWirelessGatewayFromThingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessGatewayFromThingRequest", name: "DisassociateWirelessGatewayFromThingRequest")
    DisassociateWirelessGatewayFromThingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DisassociateWirelessGatewayFromThingResponse", name: "DisassociateWirelessGatewayFromThingResponse")
    DlAllowed = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#DlAllowed", name: "DlAllowed")
    DlBucketSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DlBucketSize", name: "DlBucketSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    DlClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#DlClass", name: "DlClass", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DlDr = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DlDr", name: "DlDr", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    DlFreq = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DlFreq", name: "DlFreq", traits: {"smithy.api#range" => {"min" => 100000000, "max" => 1000000000}})
    DlRate = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DlRate", name: "DlRate", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    DlRatePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#DlRatePolicy", name: "DlRatePolicy", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#Double", name: "Double")
    DownlinkFrequency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DownlinkFrequency", name: "DownlinkFrequency", traits: {"smithy.api#range" => {"min" => 100000000, "max" => 1000000000}})
    DownlinkMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#DownlinkMode", name: "DownlinkMode")
    DownlinkQueueMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#DownlinkQueueMessage", name: "DownlinkQueueMessage")
    DownlinkQueueMessagesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#DownlinkQueueMessagesList", name: "DownlinkQueueMessagesList")
    DrMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DrMax", name: "DrMax", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 15}})
    DrMaxBox = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DrMaxBox", name: "DrMaxBox", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    DrMin = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DrMin", name: "DrMin", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 15}})
    DrMinBox = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#DrMinBox", name: "DrMinBox", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    EARFCN = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#EARFCN", name: "EARFCN", traits: {"smithy.api#range" => {"min" => 0, "max" => 262143}})
    EndPoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#EndPoint", name: "EndPoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    EutranCid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#EutranCid", name: "EutranCid", traits: {"smithy.api#range" => {"min" => 0, "max" => 268435455}})
    Event = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#Event", name: "Event")
    EventConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#EventConfigurationItem", name: "EventConfigurationItem")
    EventConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#EventConfigurationsList", name: "EventConfigurationsList")
    EventNotificationItemConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#EventNotificationItemConfigurations", name: "EventNotificationItemConfigurations")
    EventNotificationPartnerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#EventNotificationPartnerType", name: "EventNotificationPartnerType")
    EventNotificationResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#EventNotificationResourceType", name: "EventNotificationResourceType")
    EventNotificationTopicStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#EventNotificationTopicStatus", name: "EventNotificationTopicStatus")
    Expression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Expression", name: "Expression", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ExpressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#ExpressionType", name: "ExpressionType")
    FCntStart = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#FCntStart", name: "FCntStart", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    FNwkSIntKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#FNwkSIntKey", name: "FNwkSIntKey", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{32}$"})
    FPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#FPort", name: "FPort", traits: {"smithy.api#range" => {"min" => 1, "max" => 223}})
    FPorts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#FPorts", name: "FPorts")
    FactoryPresetFreqsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#FactoryPresetFreqsList", name: "FactoryPresetFreqsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    FactorySupport = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#FactorySupport", name: "FactorySupport")
    FileDescriptor = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#FileDescriptor", name: "FileDescriptor", traits: {"smithy.api#length" => {"min" => 0, "max" => 332}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    Fingerprint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Fingerprint", name: "Fingerprint", traits: {"smithy.api#length" => {"min" => 64, "max" => 64}, "smithy.api#pattern" => "^[a-fA-F0-9]{64}$", "smithy.api#sensitive" => {}})
    FirmwareUpdateImage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#FirmwareUpdateImage", name: "FirmwareUpdateImage", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    FirmwareUpdateRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#FirmwareUpdateRole", name: "FirmwareUpdateRole", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    FragmentIntervalMS = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#FragmentIntervalMS", name: "FragmentIntervalMS", traits: {"smithy.api#range" => {"min" => 1}})
    FragmentSizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#FragmentSizeBytes", name: "FragmentSizeBytes", traits: {"smithy.api#range" => {"min" => 1}})
    FuotaDeviceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#FuotaDeviceStatus", name: "FuotaDeviceStatus")
    FuotaTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#FuotaTask", name: "FuotaTask")
    FuotaTaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#FuotaTaskArn", name: "FuotaTaskArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    FuotaTaskEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#FuotaTaskEvent", name: "FuotaTaskEvent")
    FuotaTaskEventLogOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#FuotaTaskEventLogOption", name: "FuotaTaskEventLogOption")
    FuotaTaskEventLogOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#FuotaTaskEventLogOptionList", name: "FuotaTaskEventLogOptionList")
    FuotaTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#FuotaTaskId", name: "FuotaTaskId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    FuotaTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#FuotaTaskList", name: "FuotaTaskList")
    FuotaTaskLogOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#FuotaTaskLogOption", name: "FuotaTaskLogOption")
    FuotaTaskLogOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#FuotaTaskLogOptionList", name: "FuotaTaskLogOptionList")
    FuotaTaskName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#FuotaTaskName", name: "FuotaTaskName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    FuotaTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#FuotaTaskStatus", name: "FuotaTaskStatus")
    FuotaTaskType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#FuotaTaskType", name: "FuotaTaskType")
    GPST = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#GPST", name: "GPST")
    GatewayEui = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#GatewayEui", name: "GatewayEui", traits: {"smithy.api#pattern" => "^(([0-9A-Fa-f]{2}-){7}|([0-9A-Fa-f]{2}:){7}|([0-9A-Fa-f]{2}\\s){7}|([0-9A-Fa-f]{2}){7})([0-9A-Fa-f]{2})$"})
    GatewayList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#GatewayList", name: "GatewayList")
    GatewayListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GatewayListItem", name: "GatewayListItem")
    GatewayListMulticast = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#GatewayListMulticast", name: "GatewayListMulticast", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    GatewayMaxEirp = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#GatewayMaxEirp", name: "GatewayMaxEirp", traits: {"smithy.api#range" => {"min" => 0, "max" => 30}})
    GenAppKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#GenAppKey", name: "GenAppKey", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{32}$"})
    GeoJsonPayload = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.iotwireless#GeoJsonPayload", name: "GeoJsonPayload")
    GeranCid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#GeranCid", name: "GeranCid", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    GetDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetDestinationRequest", name: "GetDestinationRequest")
    GetDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetDestinationResponse", name: "GetDestinationResponse")
    GetDeviceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetDeviceProfileRequest", name: "GetDeviceProfileRequest")
    GetDeviceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetDeviceProfileResponse", name: "GetDeviceProfileResponse")
    GetEventConfigurationByResourceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetEventConfigurationByResourceTypesRequest", name: "GetEventConfigurationByResourceTypesRequest")
    GetEventConfigurationByResourceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetEventConfigurationByResourceTypesResponse", name: "GetEventConfigurationByResourceTypesResponse")
    GetFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetFuotaTaskRequest", name: "GetFuotaTaskRequest")
    GetFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetFuotaTaskResponse", name: "GetFuotaTaskResponse")
    GetLogLevelsByResourceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetLogLevelsByResourceTypesRequest", name: "GetLogLevelsByResourceTypesRequest")
    GetLogLevelsByResourceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetLogLevelsByResourceTypesResponse", name: "GetLogLevelsByResourceTypesResponse")
    GetMetricConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetMetricConfigurationRequest", name: "GetMetricConfigurationRequest")
    GetMetricConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetMetricConfigurationResponse", name: "GetMetricConfigurationResponse")
    GetMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetMetricsRequest", name: "GetMetricsRequest")
    GetMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetMetricsResponse", name: "GetMetricsResponse")
    GetMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetMulticastGroupRequest", name: "GetMulticastGroupRequest")
    GetMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetMulticastGroupResponse", name: "GetMulticastGroupResponse")
    GetMulticastGroupSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetMulticastGroupSessionRequest", name: "GetMulticastGroupSessionRequest")
    GetMulticastGroupSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetMulticastGroupSessionResponse", name: "GetMulticastGroupSessionResponse")
    GetNetworkAnalyzerConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetNetworkAnalyzerConfigurationRequest", name: "GetNetworkAnalyzerConfigurationRequest")
    GetNetworkAnalyzerConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetNetworkAnalyzerConfigurationResponse", name: "GetNetworkAnalyzerConfigurationResponse")
    GetPartnerAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetPartnerAccountRequest", name: "GetPartnerAccountRequest")
    GetPartnerAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetPartnerAccountResponse", name: "GetPartnerAccountResponse")
    GetPositionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetPositionConfigurationRequest", name: "GetPositionConfigurationRequest", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    GetPositionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetPositionConfigurationResponse", name: "GetPositionConfigurationResponse", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    GetPositionEstimateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetPositionEstimateRequest", name: "GetPositionEstimateRequest")
    GetPositionEstimateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetPositionEstimateResponse", name: "GetPositionEstimateResponse")
    GetPositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetPositionRequest", name: "GetPositionRequest", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    GetPositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetPositionResponse", name: "GetPositionResponse", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    GetResourceEventConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetResourceEventConfigurationRequest", name: "GetResourceEventConfigurationRequest")
    GetResourceEventConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetResourceEventConfigurationResponse", name: "GetResourceEventConfigurationResponse")
    GetResourceLogLevelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetResourceLogLevelRequest", name: "GetResourceLogLevelRequest")
    GetResourceLogLevelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetResourceLogLevelResponse", name: "GetResourceLogLevelResponse")
    GetResourcePositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetResourcePositionRequest", name: "GetResourcePositionRequest")
    GetResourcePositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetResourcePositionResponse", name: "GetResourcePositionResponse")
    GetServiceEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetServiceEndpointRequest", name: "GetServiceEndpointRequest")
    GetServiceEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetServiceEndpointResponse", name: "GetServiceEndpointResponse")
    GetServiceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetServiceProfileRequest", name: "GetServiceProfileRequest")
    GetServiceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetServiceProfileResponse", name: "GetServiceProfileResponse")
    GetWirelessDeviceImportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessDeviceImportTaskRequest", name: "GetWirelessDeviceImportTaskRequest")
    GetWirelessDeviceImportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessDeviceImportTaskResponse", name: "GetWirelessDeviceImportTaskResponse")
    GetWirelessDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessDeviceRequest", name: "GetWirelessDeviceRequest")
    GetWirelessDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessDeviceResponse", name: "GetWirelessDeviceResponse")
    GetWirelessDeviceStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessDeviceStatisticsRequest", name: "GetWirelessDeviceStatisticsRequest")
    GetWirelessDeviceStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessDeviceStatisticsResponse", name: "GetWirelessDeviceStatisticsResponse")
    GetWirelessGatewayCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayCertificateRequest", name: "GetWirelessGatewayCertificateRequest")
    GetWirelessGatewayCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayCertificateResponse", name: "GetWirelessGatewayCertificateResponse")
    GetWirelessGatewayFirmwareInformationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayFirmwareInformationRequest", name: "GetWirelessGatewayFirmwareInformationRequest")
    GetWirelessGatewayFirmwareInformationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayFirmwareInformationResponse", name: "GetWirelessGatewayFirmwareInformationResponse")
    GetWirelessGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayRequest", name: "GetWirelessGatewayRequest")
    GetWirelessGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayResponse", name: "GetWirelessGatewayResponse")
    GetWirelessGatewayStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayStatisticsRequest", name: "GetWirelessGatewayStatisticsRequest")
    GetWirelessGatewayStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayStatisticsResponse", name: "GetWirelessGatewayStatisticsResponse")
    GetWirelessGatewayTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayTaskDefinitionRequest", name: "GetWirelessGatewayTaskDefinitionRequest")
    GetWirelessGatewayTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayTaskDefinitionResponse", name: "GetWirelessGatewayTaskDefinitionResponse")
    GetWirelessGatewayTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayTaskRequest", name: "GetWirelessGatewayTaskRequest")
    GetWirelessGatewayTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GetWirelessGatewayTaskResponse", name: "GetWirelessGatewayTaskResponse")
    GlobalIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GlobalIdentity", name: "GlobalIdentity")
    Gnss = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#Gnss", name: "Gnss")
    GnssNav = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#GnssNav", name: "GnssNav", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    GsmList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#GsmList", name: "GsmList", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    GsmLocalId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GsmLocalId", name: "GsmLocalId")
    GsmNmrList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#GsmNmrList", name: "GsmNmrList", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    GsmNmrObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GsmNmrObj", name: "GsmNmrObj")
    GsmObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#GsmObj", name: "GsmObj")
    GsmTimingAdvance = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#GsmTimingAdvance", name: "GsmTimingAdvance", traits: {"smithy.api#range" => {"min" => 0, "max" => 63}})
    HorizontalAccuracy = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#HorizontalAccuracy", name: "HorizontalAccuracy", traits: {"smithy.api#range" => {"min" => 0}})
    HrAllowed = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#HrAllowed", name: "HrAllowed", traits: {"smithy.api#default" => false})
    IPAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#IPAddress", name: "IPAddress")
    ISODateTimeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ISODateTimeString", name: "ISODateTimeString", traits: {"smithy.api#pattern" => "^([\\+-]?\\d{4}(?!\\d{2}\\b))((-?)((0[1-9]|1[0-2])(\\3([12]\\d|0[1-9]|3[01]))?|W([0-4]\\d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]\\d|[12]\\d{2}|3([0-5]\\d|6[1-6])))([T\\s]((([01]\\d|2[0-3])((:?)[0-5]\\d)?|24\\:?00)([\\.,]\\d+(?!:))?)?(\\17[0-5]\\d([\\.,]\\d+)?)?([zZ]|([\\+-])([01]\\d|2[0-3]):?([0-5]\\d)?)?)?)?$"})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    IdentifierType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#IdentifierType", name: "IdentifierType")
    ImportTaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ImportTaskArn", name: "ImportTaskArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    ImportTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ImportTaskId", name: "ImportTaskId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ImportTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#ImportTaskStatus", name: "ImportTaskStatus")
    ImportedSidewalkDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ImportedSidewalkDevice", name: "ImportedSidewalkDevice")
    ImportedWirelessDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ImportedWirelessDevice", name: "ImportedWirelessDevice")
    ImportedWirelessDeviceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#ImportedWirelessDeviceCount", name: "ImportedWirelessDeviceCount")
    ImportedWirelessDeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#ImportedWirelessDeviceList", name: "ImportedWirelessDeviceList")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IotCertificateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#IotCertificateId", name: "IotCertificateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    Ip = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#Ip", name: "Ip")
    JoinEui = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#JoinEui", name: "JoinEui", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{16}$"})
    JoinEuiFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#JoinEuiFilters", name: "JoinEuiFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    JoinEuiRange = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#JoinEuiRange", name: "JoinEuiRange", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    JoinEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#JoinEventConfiguration", name: "JoinEventConfiguration")
    JoinResourceTypeEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#JoinResourceTypeEventConfiguration", name: "JoinResourceTypeEventConfiguration")
    LAC = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#LAC", name: "LAC", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    LastUpdateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#LastUpdateTime", name: "LastUpdateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    ListDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListDestinationsRequest", name: "ListDestinationsRequest")
    ListDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListDestinationsResponse", name: "ListDestinationsResponse")
    ListDeviceProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListDeviceProfilesRequest", name: "ListDeviceProfilesRequest")
    ListDeviceProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListDeviceProfilesResponse", name: "ListDeviceProfilesResponse")
    ListDevicesForWirelessDeviceImportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListDevicesForWirelessDeviceImportTaskRequest", name: "ListDevicesForWirelessDeviceImportTaskRequest")
    ListDevicesForWirelessDeviceImportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListDevicesForWirelessDeviceImportTaskResponse", name: "ListDevicesForWirelessDeviceImportTaskResponse")
    ListEventConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListEventConfigurationsRequest", name: "ListEventConfigurationsRequest")
    ListEventConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListEventConfigurationsResponse", name: "ListEventConfigurationsResponse")
    ListFuotaTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListFuotaTasksRequest", name: "ListFuotaTasksRequest")
    ListFuotaTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListFuotaTasksResponse", name: "ListFuotaTasksResponse")
    ListMulticastGroupsByFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListMulticastGroupsByFuotaTaskRequest", name: "ListMulticastGroupsByFuotaTaskRequest")
    ListMulticastGroupsByFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListMulticastGroupsByFuotaTaskResponse", name: "ListMulticastGroupsByFuotaTaskResponse")
    ListMulticastGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListMulticastGroupsRequest", name: "ListMulticastGroupsRequest")
    ListMulticastGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListMulticastGroupsResponse", name: "ListMulticastGroupsResponse")
    ListNetworkAnalyzerConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListNetworkAnalyzerConfigurationsRequest", name: "ListNetworkAnalyzerConfigurationsRequest")
    ListNetworkAnalyzerConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListNetworkAnalyzerConfigurationsResponse", name: "ListNetworkAnalyzerConfigurationsResponse")
    ListPartnerAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListPartnerAccountsRequest", name: "ListPartnerAccountsRequest")
    ListPartnerAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListPartnerAccountsResponse", name: "ListPartnerAccountsResponse")
    ListPositionConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListPositionConfigurationsRequest", name: "ListPositionConfigurationsRequest", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    ListPositionConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListPositionConfigurationsResponse", name: "ListPositionConfigurationsResponse", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    ListQueuedMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListQueuedMessagesRequest", name: "ListQueuedMessagesRequest")
    ListQueuedMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListQueuedMessagesResponse", name: "ListQueuedMessagesResponse")
    ListServiceProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListServiceProfilesRequest", name: "ListServiceProfilesRequest")
    ListServiceProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListServiceProfilesResponse", name: "ListServiceProfilesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWirelessDeviceImportTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListWirelessDeviceImportTasksRequest", name: "ListWirelessDeviceImportTasksRequest")
    ListWirelessDeviceImportTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListWirelessDeviceImportTasksResponse", name: "ListWirelessDeviceImportTasksResponse")
    ListWirelessDevicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListWirelessDevicesRequest", name: "ListWirelessDevicesRequest")
    ListWirelessDevicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListWirelessDevicesResponse", name: "ListWirelessDevicesResponse")
    ListWirelessGatewayTaskDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListWirelessGatewayTaskDefinitionsRequest", name: "ListWirelessGatewayTaskDefinitionsRequest")
    ListWirelessGatewayTaskDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListWirelessGatewayTaskDefinitionsResponse", name: "ListWirelessGatewayTaskDefinitionsResponse")
    ListWirelessGatewaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListWirelessGatewaysRequest", name: "ListWirelessGatewaysRequest")
    ListWirelessGatewaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ListWirelessGatewaysResponse", name: "ListWirelessGatewaysResponse")
    LoRaWANConnectionStatusEventNotificationConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANConnectionStatusEventNotificationConfigurations", name: "LoRaWANConnectionStatusEventNotificationConfigurations")
    LoRaWANConnectionStatusResourceTypeEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANConnectionStatusResourceTypeEventConfiguration", name: "LoRaWANConnectionStatusResourceTypeEventConfiguration")
    LoRaWANDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANDevice", name: "LoRaWANDevice")
    LoRaWANDeviceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANDeviceMetadata", name: "LoRaWANDeviceMetadata")
    LoRaWANDeviceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANDeviceProfile", name: "LoRaWANDeviceProfile")
    LoRaWANFuotaTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANFuotaTask", name: "LoRaWANFuotaTask")
    LoRaWANFuotaTaskGetInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANFuotaTaskGetInfo", name: "LoRaWANFuotaTaskGetInfo")
    LoRaWANGateway = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANGateway", name: "LoRaWANGateway")
    LoRaWANGatewayCurrentVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANGatewayCurrentVersion", name: "LoRaWANGatewayCurrentVersion")
    LoRaWANGatewayMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANGatewayMetadata", name: "LoRaWANGatewayMetadata")
    LoRaWANGatewayMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#LoRaWANGatewayMetadataList", name: "LoRaWANGatewayMetadataList")
    LoRaWANGatewayVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANGatewayVersion", name: "LoRaWANGatewayVersion")
    LoRaWANGetServiceProfileInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANGetServiceProfileInfo", name: "LoRaWANGetServiceProfileInfo")
    LoRaWANJoinEventNotificationConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANJoinEventNotificationConfigurations", name: "LoRaWANJoinEventNotificationConfigurations")
    LoRaWANJoinResourceTypeEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANJoinResourceTypeEventConfiguration", name: "LoRaWANJoinResourceTypeEventConfiguration")
    LoRaWANListDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANListDevice", name: "LoRaWANListDevice")
    LoRaWANMulticast = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANMulticast", name: "LoRaWANMulticast")
    LoRaWANMulticastGet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANMulticastGet", name: "LoRaWANMulticastGet")
    LoRaWANMulticastMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANMulticastMetadata", name: "LoRaWANMulticastMetadata")
    LoRaWANMulticastSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANMulticastSession", name: "LoRaWANMulticastSession")
    LoRaWANPublicGatewayMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANPublicGatewayMetadata", name: "LoRaWANPublicGatewayMetadata")
    LoRaWANPublicGatewayMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#LoRaWANPublicGatewayMetadataList", name: "LoRaWANPublicGatewayMetadataList")
    LoRaWANSendDataToDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANSendDataToDevice", name: "LoRaWANSendDataToDevice")
    LoRaWANServiceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANServiceProfile", name: "LoRaWANServiceProfile")
    LoRaWANStartFuotaTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANStartFuotaTask", name: "LoRaWANStartFuotaTask")
    LoRaWANUpdateDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANUpdateDevice", name: "LoRaWANUpdateDevice")
    LoRaWANUpdateGatewayTaskCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANUpdateGatewayTaskCreate", name: "LoRaWANUpdateGatewayTaskCreate")
    LoRaWANUpdateGatewayTaskEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LoRaWANUpdateGatewayTaskEntry", name: "LoRaWANUpdateGatewayTaskEntry")
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#LogLevel", name: "LogLevel")
    LteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#LteList", name: "LteList", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    LteLocalId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LteLocalId", name: "LteLocalId")
    LteNmrList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#LteNmrList", name: "LteNmrList", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    LteNmrObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LteNmrObj", name: "LteNmrObj")
    LteObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#LteObj", name: "LteObj")
    LteTimingAdvance = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#LteTimingAdvance", name: "LteTimingAdvance", traits: {"smithy.api#range" => {"min" => 0, "max" => 1282}})
    MCC = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#MCC", name: "MCC", traits: {"smithy.api#range" => {"min" => 200, "max" => 999}})
    MNC = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#MNC", name: "MNC", traits: {"smithy.api#range" => {"min" => 0, "max" => 999}})
    MacAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MacAddress", name: "MacAddress", traits: {"smithy.api#length" => {"min" => 12, "max" => 17}, "smithy.api#pattern" => "^([0-9A-Fa-f]{2}[:-]?){5}([0-9A-Fa-f]{2})$"})
    MacVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MacVersion", name: "MacVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Max = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#Max", name: "Max")
    MaxAllowedSignature = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#MaxAllowedSignature", name: "MaxAllowedSignature")
    MaxDutyCycle = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#MaxDutyCycle", name: "MaxDutyCycle", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    MaxEirp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#MaxEirp", name: "MaxEirp", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 250}})
    McGroupId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#McGroupId", name: "McGroupId", traits: {"smithy.api#range" => {"min" => 1, "max" => 256}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    MessageDeliveryStatusEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#MessageDeliveryStatusEventConfiguration", name: "MessageDeliveryStatusEventConfiguration")
    MessageDeliveryStatusResourceTypeEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#MessageDeliveryStatusResourceTypeEventConfiguration", name: "MessageDeliveryStatusResourceTypeEventConfiguration")
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MessageId", name: "MessageId")
    MessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#MessageType", name: "MessageType")
    MetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricQueryEndTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#MetricQueryEndTimestamp", name: "MetricQueryEndTimestamp")
    MetricQueryError = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MetricQueryError", name: "MetricQueryError", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricQueryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MetricQueryId", name: "MetricQueryId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MetricQueryStartTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#MetricQueryStartTimestamp", name: "MetricQueryStartTimestamp")
    MetricQueryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#MetricQueryStatus", name: "MetricQueryStatus")
    MetricQueryTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#MetricQueryTimestamp", name: "MetricQueryTimestamp")
    MetricQueryTimestamps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#MetricQueryTimestamps", name: "MetricQueryTimestamps")
    MetricQueryValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#MetricQueryValue", name: "MetricQueryValue")
    MetricQueryValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#MetricQueryValues", name: "MetricQueryValues")
    MetricUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MetricUnit", name: "MetricUnit", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Min = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#Min", name: "Min")
    MinGwDiversity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#MinGwDiversity", name: "MinGwDiversity", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Model = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Model", name: "Model", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    MulticastDeviceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MulticastDeviceStatus", name: "MulticastDeviceStatus", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MulticastFrameInfo = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#MulticastFrameInfo", name: "MulticastFrameInfo")
    MulticastGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#MulticastGroup", name: "MulticastGroup")
    MulticastGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MulticastGroupArn", name: "MulticastGroupArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    MulticastGroupByFuotaTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#MulticastGroupByFuotaTask", name: "MulticastGroupByFuotaTask")
    MulticastGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MulticastGroupId", name: "MulticastGroupId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MulticastGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#MulticastGroupList", name: "MulticastGroupList")
    MulticastGroupListByFuotaTask = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#MulticastGroupListByFuotaTask", name: "MulticastGroupListByFuotaTask")
    MulticastGroupMessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MulticastGroupMessageId", name: "MulticastGroupMessageId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MulticastGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MulticastGroupName", name: "MulticastGroupName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MulticastGroupStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#MulticastGroupStatus", name: "MulticastGroupStatus", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    MulticastWirelessMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#MulticastWirelessMetadata", name: "MulticastWirelessMetadata")
    NRCapable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#NRCapable", name: "NRCapable", traits: {"smithy.api#default" => false})
    NbTransMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#NbTransMax", name: "NbTransMax", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    NbTransMin = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#NbTransMin", name: "NbTransMin", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    NetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#NetId", name: "NetId", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{6}$"})
    NetIdFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#NetIdFilters", name: "NetIdFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    NetworkAnalyzerConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#NetworkAnalyzerConfigurationArn", name: "NetworkAnalyzerConfigurationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1124}})
    NetworkAnalyzerConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#NetworkAnalyzerConfigurationList", name: "NetworkAnalyzerConfigurationList")
    NetworkAnalyzerConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#NetworkAnalyzerConfigurationName", name: "NetworkAnalyzerConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    NetworkAnalyzerConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#NetworkAnalyzerConfigurations", name: "NetworkAnalyzerConfigurations")
    NetworkAnalyzerMulticastGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#NetworkAnalyzerMulticastGroupList", name: "NetworkAnalyzerMulticastGroupList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    NetworkId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#NetworkId", name: "NetworkId", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    NumberOfDevicesInGroup = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#NumberOfDevicesInGroup", name: "NumberOfDevicesInGroup")
    NumberOfDevicesRequested = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#NumberOfDevicesRequested", name: "NumberOfDevicesRequested")
    NwkGeoLoc = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#NwkGeoLoc", name: "NwkGeoLoc", traits: {"smithy.api#default" => false})
    NwkKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#NwkKey", name: "NwkKey", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{32}$"})
    NwkSEncKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#NwkSEncKey", name: "NwkSEncKey", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{32}$"})
    NwkSKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#NwkSKey", name: "NwkSKey", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{32}$"})
    OnboardStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#OnboardStatus", name: "OnboardStatus")
    OnboardStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#OnboardStatusReason", name: "OnboardStatusReason")
    OtaaV10X = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#OtaaV1_0_x", name: "OtaaV10X")
    OtaaV11 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#OtaaV1_1", name: "OtaaV11")
    P90 = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#P90", name: "P90")
    PCI = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PCI", name: "PCI", traits: {"smithy.api#range" => {"min" => 0, "max" => 503}})
    PSC = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PSC", name: "PSC", traits: {"smithy.api#range" => {"min" => 0, "max" => 511}})
    PackageVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#PackageVersion", name: "PackageVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    ParticipatingGateways = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ParticipatingGateways", name: "ParticipatingGateways")
    ParticipatingGatewaysMulticast = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ParticipatingGatewaysMulticast", name: "ParticipatingGatewaysMulticast")
    PartnerAccountArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#PartnerAccountArn", name: "PartnerAccountArn")
    PartnerAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#PartnerAccountId", name: "PartnerAccountId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    PartnerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#PartnerType", name: "PartnerType")
    PathLoss = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PathLoss", name: "PathLoss", traits: {"smithy.api#range" => {"min" => 46, "max" => 158}})
    PayloadData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#PayloadData", name: "PayloadData", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    PilotPower = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PilotPower", name: "PilotPower", traits: {"smithy.api#range" => {"min" => -142, "max" => -49}})
    PingSlotDr = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PingSlotDr", name: "PingSlotDr", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    PingSlotFreq = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PingSlotFreq", name: "PingSlotFreq", traits: {"smithy.api#range" => {"min" => 1000000, "max" => 16700000}})
    PingSlotPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PingSlotPeriod", name: "PingSlotPeriod", traits: {"smithy.api#range" => {"min" => 32, "max" => 4096}})
    PnOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PnOffset", name: "PnOffset", traits: {"smithy.api#range" => {"min" => 0, "max" => 511}})
    PositionConfigurationFec = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#PositionConfigurationFec", name: "PositionConfigurationFec")
    PositionConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#PositionConfigurationItem", name: "PositionConfigurationItem")
    PositionConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#PositionConfigurationList", name: "PositionConfigurationList")
    PositionConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#PositionConfigurationStatus", name: "PositionConfigurationStatus")
    PositionCoordinate = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#PositionCoordinate", name: "PositionCoordinate")
    PositionCoordinateValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#PositionCoordinateValue", name: "PositionCoordinateValue")
    PositionResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#PositionResourceIdentifier", name: "PositionResourceIdentifier", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    PositionResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#PositionResourceType", name: "PositionResourceType")
    PositionSolverConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#PositionSolverConfigurations", name: "PositionSolverConfigurations")
    PositionSolverDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#PositionSolverDetails", name: "PositionSolverDetails")
    PositionSolverProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#PositionSolverProvider", name: "PositionSolverProvider")
    PositionSolverType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#PositionSolverType", name: "PositionSolverType")
    PositionSolverVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#PositionSolverVersion", name: "PositionSolverVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Positioning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#Positioning", name: "Positioning")
    PositioningConfigStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#PositioningConfigStatus", name: "PositioningConfigStatus")
    PrAllowed = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#PrAllowed", name: "PrAllowed", traits: {"smithy.api#default" => false})
    PresetFreq = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#PresetFreq", name: "PresetFreq", traits: {"smithy.api#range" => {"min" => 1000000, "max" => 16700000}})
    PrivateKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#PrivateKeysList", name: "PrivateKeysList")
    ProviderNetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ProviderNetId", name: "ProviderNetId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ProximityEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ProximityEventConfiguration", name: "ProximityEventConfiguration")
    ProximityResourceTypeEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ProximityResourceTypeEventConfiguration", name: "ProximityResourceTypeEventConfiguration")
    PutPositionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#PutPositionConfigurationRequest", name: "PutPositionConfigurationRequest", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    PutPositionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#PutPositionConfigurationResponse", name: "PutPositionConfigurationResponse", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    PutResourceLogLevelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#PutResourceLogLevelRequest", name: "PutResourceLogLevelRequest")
    PutResourceLogLevelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#PutResourceLogLevelResponse", name: "PutResourceLogLevelResponse")
    QualificationStatus = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#QualificationStatus", name: "QualificationStatus")
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#QueryString", name: "QueryString", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    RSCP = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RSCP", name: "RSCP", traits: {"smithy.api#range" => {"min" => -120, "max" => -25}})
    RSRP = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RSRP", name: "RSRP", traits: {"smithy.api#range" => {"min" => -140, "max" => -44}})
    RSRQ = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#RSRQ", name: "RSRQ", traits: {"smithy.api#range" => {"min" => -19.5, "max" => -3}})
    RSS = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RSS", name: "RSS", traits: {"smithy.api#range" => {"min" => -128, "max" => 0}})
    RaAllowed = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#RaAllowed", name: "RaAllowed", traits: {"smithy.api#default" => false})
    RedundancyPercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RedundancyPercent", name: "RedundancyPercent", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    RegParamsRevision = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#RegParamsRevision", name: "RegParamsRevision", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    RegistrationZone = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RegistrationZone", name: "RegistrationZone", traits: {"smithy.api#range" => {"min" => 0, "max" => 4095}})
    ReportDevStatusBattery = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#ReportDevStatusBattery", name: "ReportDevStatusBattery", traits: {"smithy.api#default" => false})
    ReportDevStatusMargin = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#ReportDevStatusMargin", name: "ReportDevStatusMargin", traits: {"smithy.api#default" => false})
    ResetAllResourceLogLevelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ResetAllResourceLogLevelsRequest", name: "ResetAllResourceLogLevelsRequest")
    ResetAllResourceLogLevelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ResetAllResourceLogLevelsResponse", name: "ResetAllResourceLogLevelsResponse")
    ResetResourceLogLevelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ResetResourceLogLevelRequest", name: "ResetResourceLogLevelRequest")
    ResetResourceLogLevelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ResetResourceLogLevelResponse", name: "ResetResourceLogLevelResponse")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ResourceId", name: "ResourceId")
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ResourceType", name: "ResourceType")
    Result = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Result", name: "Result", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    RfRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#RfRegion", name: "RfRegion", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Role", name: "Role", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    RxDataRate2 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RxDataRate2", name: "RxDataRate2", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    RxDelay1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RxDelay1", name: "RxDelay1", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    RxDrOffset1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RxDrOffset1", name: "RxDrOffset1", traits: {"smithy.api#range" => {"min" => 0, "max" => 7}})
    RxFreq2 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RxFreq2", name: "RxFreq2", traits: {"smithy.api#range" => {"min" => 1000000, "max" => 16700000}})
    RxLevel = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#RxLevel", name: "RxLevel", traits: {"smithy.api#range" => {"min" => -110, "max" => -25}})
    SNwkSIntKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#SNwkSIntKey", name: "SNwkSIntKey", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{32}$"})
    SemtechGnssConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SemtechGnssConfiguration", name: "SemtechGnssConfiguration")
    SemtechGnssDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SemtechGnssDetail", name: "SemtechGnssDetail")
    SendDataToMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SendDataToMulticastGroupRequest", name: "SendDataToMulticastGroupRequest")
    SendDataToMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SendDataToMulticastGroupResponse", name: "SendDataToMulticastGroupResponse")
    SendDataToWirelessDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SendDataToWirelessDeviceRequest", name: "SendDataToWirelessDeviceRequest")
    SendDataToWirelessDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SendDataToWirelessDeviceResponse", name: "SendDataToWirelessDeviceResponse")
    Seq = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#Seq", name: "Seq", traits: {"smithy.api#range" => {"min" => 0, "max" => 16383}})
    ServiceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ServiceProfile", name: "ServiceProfile")
    ServiceProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ServiceProfileArn", name: "ServiceProfileArn")
    ServiceProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ServiceProfileId", name: "ServiceProfileId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ServiceProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#ServiceProfileList", name: "ServiceProfileList")
    ServiceProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ServiceProfileName", name: "ServiceProfileName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SessionKeysAbpV10X = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SessionKeysAbpV1_0_x", name: "SessionKeysAbpV10X")
    SessionKeysAbpV11 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SessionKeysAbpV1_1", name: "SessionKeysAbpV11")
    SessionStartTimeTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#SessionStartTimeTimestamp", name: "SessionStartTimeTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    SessionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#SessionTimeout", name: "SessionTimeout", traits: {"smithy.api#range" => {"min" => 60, "max" => 172800}})
    SidewalkAccountInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkAccountInfo", name: "SidewalkAccountInfo")
    SidewalkAccountInfoWithFingerprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkAccountInfoWithFingerprint", name: "SidewalkAccountInfoWithFingerprint")
    SidewalkAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#SidewalkAccountList", name: "SidewalkAccountList")
    SidewalkCreateDeviceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkCreateDeviceProfile", name: "SidewalkCreateDeviceProfile")
    SidewalkCreateWirelessDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkCreateWirelessDevice", name: "SidewalkCreateWirelessDevice")
    SidewalkDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkDevice", name: "SidewalkDevice")
    SidewalkDeviceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkDeviceMetadata", name: "SidewalkDeviceMetadata")
    SidewalkEventNotificationConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkEventNotificationConfigurations", name: "SidewalkEventNotificationConfigurations")
    SidewalkGetDeviceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkGetDeviceProfile", name: "SidewalkGetDeviceProfile")
    SidewalkGetStartImportInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkGetStartImportInfo", name: "SidewalkGetStartImportInfo")
    SidewalkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#SidewalkId", name: "SidewalkId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SidewalkListDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkListDevice", name: "SidewalkListDevice")
    SidewalkManufacturingSn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#SidewalkManufacturingSn", name: "SidewalkManufacturingSn", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    SidewalkResourceTypeEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkResourceTypeEventConfiguration", name: "SidewalkResourceTypeEventConfiguration")
    SidewalkSendDataToDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkSendDataToDevice", name: "SidewalkSendDataToDevice")
    SidewalkSingleStartImportInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkSingleStartImportInfo", name: "SidewalkSingleStartImportInfo")
    SidewalkStartImportInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkStartImportInfo", name: "SidewalkStartImportInfo")
    SidewalkUpdateAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkUpdateAccount", name: "SidewalkUpdateAccount")
    SidewalkUpdateImportInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SidewalkUpdateImportInfo", name: "SidewalkUpdateImportInfo")
    SigningAlg = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#SigningAlg", name: "SigningAlg")
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartBulkAssociateWirelessDeviceWithMulticastGroupRequest", name: "StartBulkAssociateWirelessDeviceWithMulticastGroupRequest")
    StartBulkAssociateWirelessDeviceWithMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartBulkAssociateWirelessDeviceWithMulticastGroupResponse", name: "StartBulkAssociateWirelessDeviceWithMulticastGroupResponse")
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest", name: "StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest")
    StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse", name: "StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse")
    StartFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartFuotaTaskRequest", name: "StartFuotaTaskRequest")
    StartFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartFuotaTaskResponse", name: "StartFuotaTaskResponse")
    StartMulticastGroupSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartMulticastGroupSessionRequest", name: "StartMulticastGroupSessionRequest")
    StartMulticastGroupSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartMulticastGroupSessionResponse", name: "StartMulticastGroupSessionResponse")
    StartSingleWirelessDeviceImportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartSingleWirelessDeviceImportTaskRequest", name: "StartSingleWirelessDeviceImportTaskRequest")
    StartSingleWirelessDeviceImportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartSingleWirelessDeviceImportTaskResponse", name: "StartSingleWirelessDeviceImportTaskResponse")
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotwireless#StartTime", name: "StartTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    StartWirelessDeviceImportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartWirelessDeviceImportTaskRequest", name: "StartWirelessDeviceImportTaskRequest")
    StartWirelessDeviceImportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#StartWirelessDeviceImportTaskResponse", name: "StartWirelessDeviceImportTaskResponse")
    Station = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#Station", name: "Station", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#StatusReason", name: "StatusReason")
    Std = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#Std", name: "Std")
    SubBand = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#SubBand", name: "SubBand", traits: {"smithy.api#range" => {"min" => 1, "max" => 8}})
    SubBands = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#SubBands", name: "SubBands", traits: {"smithy.api#length" => {"min" => 0, "max" => 8}})
    Sum = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#Sum", name: "Sum")
    SummaryMetricConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SummaryMetricConfiguration", name: "SummaryMetricConfiguration")
    SummaryMetricConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#SummaryMetricConfigurationStatus", name: "SummaryMetricConfigurationStatus")
    SummaryMetricQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#SummaryMetricQueries", name: "SummaryMetricQueries")
    SummaryMetricQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SummaryMetricQuery", name: "SummaryMetricQuery")
    SummaryMetricQueryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#SummaryMetricQueryResult", name: "SummaryMetricQueryResult")
    SummaryMetricQueryResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#SummaryMetricQueryResults", name: "SummaryMetricQueryResults")
    SupportedRfRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#SupportedRfRegion", name: "SupportedRfRegion")
    Supports32BitFCnt = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#Supports32BitFCnt", name: "Supports32BitFCnt", traits: {"smithy.api#default" => false})
    SupportsClassB = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#SupportsClassB", name: "SupportsClassB", traits: {"smithy.api#default" => false})
    SupportsClassC = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#SupportsClassC", name: "SupportsClassC", traits: {"smithy.api#default" => false})
    SupportsJoin = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#SupportsJoin", name: "SupportsJoin")
    SystemId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#SystemId", name: "SystemId", traits: {"smithy.api#range" => {"min" => 1, "max" => 32767}})
    TAC = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#TAC", name: "TAC", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetPer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#TargetPer", name: "TargetPer", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    TdscdmaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#TdscdmaList", name: "TdscdmaList", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    TdscdmaLocalId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TdscdmaLocalId", name: "TdscdmaLocalId")
    TdscdmaNmrList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#TdscdmaNmrList", name: "TdscdmaNmrList", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    TdscdmaNmrObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TdscdmaNmrObj", name: "TdscdmaNmrObj")
    TdscdmaObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TdscdmaObj", name: "TdscdmaObj")
    TdscdmaTimingAdvance = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#TdscdmaTimingAdvance", name: "TdscdmaTimingAdvance", traits: {"smithy.api#range" => {"min" => 0, "max" => 1530}})
    TestWirelessDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TestWirelessDeviceRequest", name: "TestWirelessDeviceRequest")
    TestWirelessDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TestWirelessDeviceResponse", name: "TestWirelessDeviceResponse")
    ThingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ThingArn", name: "ThingArn")
    ThingName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#ThingName", name: "ThingName")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TraceContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#TraceContent", name: "TraceContent")
    TransmissionInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#TransmissionInterval", name: "TransmissionInterval", traits: {"smithy.api#range" => {"min" => 1, "max" => 604800}})
    TransmissionIntervalMulticast = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#TransmissionIntervalMulticast", name: "TransmissionIntervalMulticast", traits: {"smithy.api#range" => {"min" => 0, "max" => 60000}})
    TransmitMode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#TransmitMode", name: "TransmitMode", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    TxPowerIndexMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#TxPowerIndexMax", name: "TxPowerIndexMax", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    TxPowerIndexMin = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#TxPowerIndexMin", name: "TxPowerIndexMin", traits: {"smithy.api#range" => {"min" => 0, "max" => 15}})
    UARFCN = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#UARFCN", name: "UARFCN", traits: {"smithy.api#range" => {"min" => 0, "max" => 16383}})
    UARFCNDL = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#UARFCNDL", name: "UARFCNDL", traits: {"smithy.api#range" => {"min" => 0, "max" => 16383}})
    UlBucketSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#UlBucketSize", name: "UlBucketSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    UlRate = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#UlRate", name: "UlRate", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    UlRatePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#UlRatePolicy", name: "UlRatePolicy", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAbpV10X = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateAbpV1_0_x", name: "UpdateAbpV10X")
    UpdateAbpV11 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateAbpV1_1", name: "UpdateAbpV11")
    UpdateDataSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#UpdateDataSource", name: "UpdateDataSource", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    UpdateDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateDestinationRequest", name: "UpdateDestinationRequest")
    UpdateDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateDestinationResponse", name: "UpdateDestinationResponse")
    UpdateEventConfigurationByResourceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateEventConfigurationByResourceTypesRequest", name: "UpdateEventConfigurationByResourceTypesRequest")
    UpdateEventConfigurationByResourceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateEventConfigurationByResourceTypesResponse", name: "UpdateEventConfigurationByResourceTypesResponse")
    UpdateFPorts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateFPorts", name: "UpdateFPorts")
    UpdateFuotaTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateFuotaTaskRequest", name: "UpdateFuotaTaskRequest")
    UpdateFuotaTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateFuotaTaskResponse", name: "UpdateFuotaTaskResponse")
    UpdateLogLevelsByResourceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateLogLevelsByResourceTypesRequest", name: "UpdateLogLevelsByResourceTypesRequest")
    UpdateLogLevelsByResourceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateLogLevelsByResourceTypesResponse", name: "UpdateLogLevelsByResourceTypesResponse")
    UpdateMetricConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateMetricConfigurationRequest", name: "UpdateMetricConfigurationRequest")
    UpdateMetricConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateMetricConfigurationResponse", name: "UpdateMetricConfigurationResponse")
    UpdateMulticastGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateMulticastGroupRequest", name: "UpdateMulticastGroupRequest")
    UpdateMulticastGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateMulticastGroupResponse", name: "UpdateMulticastGroupResponse")
    UpdateNetworkAnalyzerConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateNetworkAnalyzerConfigurationRequest", name: "UpdateNetworkAnalyzerConfigurationRequest")
    UpdateNetworkAnalyzerConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateNetworkAnalyzerConfigurationResponse", name: "UpdateNetworkAnalyzerConfigurationResponse")
    UpdatePartnerAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdatePartnerAccountRequest", name: "UpdatePartnerAccountRequest")
    UpdatePartnerAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdatePartnerAccountResponse", name: "UpdatePartnerAccountResponse")
    UpdatePositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdatePositionRequest", name: "UpdatePositionRequest", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    UpdatePositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdatePositionResponse", name: "UpdatePositionResponse", traits: {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}})
    UpdateResourceEventConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateResourceEventConfigurationRequest", name: "UpdateResourceEventConfigurationRequest")
    UpdateResourceEventConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateResourceEventConfigurationResponse", name: "UpdateResourceEventConfigurationResponse")
    UpdateResourcePositionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateResourcePositionRequest", name: "UpdateResourcePositionRequest")
    UpdateResourcePositionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateResourcePositionResponse", name: "UpdateResourcePositionResponse")
    UpdateSignature = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#UpdateSignature", name: "UpdateSignature", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    UpdateWirelessDeviceImportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateWirelessDeviceImportTaskRequest", name: "UpdateWirelessDeviceImportTaskRequest")
    UpdateWirelessDeviceImportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateWirelessDeviceImportTaskResponse", name: "UpdateWirelessDeviceImportTaskResponse")
    UpdateWirelessDeviceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateWirelessDeviceRequest", name: "UpdateWirelessDeviceRequest")
    UpdateWirelessDeviceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateWirelessDeviceResponse", name: "UpdateWirelessDeviceResponse")
    UpdateWirelessGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateWirelessGatewayRequest", name: "UpdateWirelessGatewayRequest")
    UpdateWirelessGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateWirelessGatewayResponse", name: "UpdateWirelessGatewayResponse")
    UpdateWirelessGatewayTaskCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateWirelessGatewayTaskCreate", name: "UpdateWirelessGatewayTaskCreate")
    UpdateWirelessGatewayTaskEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#UpdateWirelessGatewayTaskEntry", name: "UpdateWirelessGatewayTaskEntry")
    Use2DSolver = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotwireless#Use2DSolver", name: "Use2DSolver", traits: {"smithy.api#default" => false})
    UtranCid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotwireless#UtranCid", name: "UtranCid", traits: {"smithy.api#range" => {"min" => 0, "max" => 268435455}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VerticalAccuracy = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iotwireless#VerticalAccuracy", name: "VerticalAccuracy", traits: {"smithy.api#range" => {"min" => 0}})
    WcdmaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WcdmaList", name: "WcdmaList", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    WcdmaLocalId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WcdmaLocalId", name: "WcdmaLocalId")
    WcdmaNmrList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WcdmaNmrList", name: "WcdmaNmrList", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    WcdmaNmrObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WcdmaNmrObj", name: "WcdmaNmrObj")
    WcdmaObj = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WcdmaObj", name: "WcdmaObj")
    WiFiAccessPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WiFiAccessPoint", name: "WiFiAccessPoint")
    WiFiAccessPoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WiFiAccessPoints", name: "WiFiAccessPoints")
    WirelessDeviceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceArn", name: "WirelessDeviceArn")
    WirelessDeviceEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceEvent", name: "WirelessDeviceEvent")
    WirelessDeviceEventLogOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceEventLogOption", name: "WirelessDeviceEventLogOption")
    WirelessDeviceEventLogOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceEventLogOptionList", name: "WirelessDeviceEventLogOptionList")
    WirelessDeviceFrameInfo = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceFrameInfo", name: "WirelessDeviceFrameInfo")
    WirelessDeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceId", name: "WirelessDeviceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    WirelessDeviceIdType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceIdType", name: "WirelessDeviceIdType")
    WirelessDeviceImportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceImportTask", name: "WirelessDeviceImportTask")
    WirelessDeviceImportTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceImportTaskList", name: "WirelessDeviceImportTaskList")
    WirelessDeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceList", name: "WirelessDeviceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    WirelessDeviceLogOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceLogOption", name: "WirelessDeviceLogOption")
    WirelessDeviceLogOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceLogOptionList", name: "WirelessDeviceLogOptionList")
    WirelessDeviceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceName", name: "WirelessDeviceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    WirelessDeviceSidewalkStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceSidewalkStatus", name: "WirelessDeviceSidewalkStatus")
    WirelessDeviceStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceStatistics", name: "WirelessDeviceStatistics")
    WirelessDeviceStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceStatisticsList", name: "WirelessDeviceStatisticsList")
    WirelessDeviceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessDeviceType", name: "WirelessDeviceType")
    WirelessGatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayArn", name: "WirelessGatewayArn")
    WirelessGatewayEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayEvent", name: "WirelessGatewayEvent")
    WirelessGatewayEventLogOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayEventLogOption", name: "WirelessGatewayEventLogOption")
    WirelessGatewayEventLogOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayEventLogOptionList", name: "WirelessGatewayEventLogOptionList")
    WirelessGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayId", name: "WirelessGatewayId", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    WirelessGatewayIdType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayIdType", name: "WirelessGatewayIdType")
    WirelessGatewayList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayList", name: "WirelessGatewayList")
    WirelessGatewayLogOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayLogOption", name: "WirelessGatewayLogOption")
    WirelessGatewayLogOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayLogOptionList", name: "WirelessGatewayLogOptionList")
    WirelessGatewayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayName", name: "WirelessGatewayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    WirelessGatewayServiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayServiceType", name: "WirelessGatewayServiceType")
    WirelessGatewayStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayStatistics", name: "WirelessGatewayStatistics")
    WirelessGatewayStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayStatisticsList", name: "WirelessGatewayStatisticsList")
    WirelessGatewayTaskDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayTaskDefinitionArn", name: "WirelessGatewayTaskDefinitionArn")
    WirelessGatewayTaskDefinitionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayTaskDefinitionId", name: "WirelessGatewayTaskDefinitionId", traits: {"smithy.api#length" => {"min" => 0, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    WirelessGatewayTaskDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayTaskDefinitionList", name: "WirelessGatewayTaskDefinitionList")
    WirelessGatewayTaskDefinitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayTaskDefinitionType", name: "WirelessGatewayTaskDefinitionType")
    WirelessGatewayTaskName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayTaskName", name: "WirelessGatewayTaskName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    WirelessGatewayTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayTaskStatus", name: "WirelessGatewayTaskStatus")
    WirelessGatewayType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotwireless#WirelessGatewayType", name: "WirelessGatewayType")
    WirelessMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotwireless#WirelessMetadata", name: "WirelessMetadata")

    AbpV10X.add_member(:dev_addr, ::Smithy::Schema::Shapes::MemberShape.new(target: DevAddr, name: "DevAddr"))
    AbpV10X.add_member(:session_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeysAbpV10X, name: "SessionKeys"))
    AbpV10X.add_member(:f_cnt_start, ::Smithy::Schema::Shapes::MemberShape.new(target: FCntStart, name: "FCntStart"))
    AbpV10X.type = Types::AbpV10X
    AbpV11.add_member(:dev_addr, ::Smithy::Schema::Shapes::MemberShape.new(target: DevAddr, name: "DevAddr"))
    AbpV11.add_member(:session_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeysAbpV11, name: "SessionKeys"))
    AbpV11.add_member(:f_cnt_start, ::Smithy::Schema::Shapes::MemberShape.new(target: FCntStart, name: "FCntStart"))
    AbpV11.type = Types::AbpV11
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    Accuracy.add_member(:horizontal_accuracy, ::Smithy::Schema::Shapes::MemberShape.new(target: HorizontalAccuracy, name: "HorizontalAccuracy"))
    Accuracy.add_member(:vertical_accuracy, ::Smithy::Schema::Shapes::MemberShape.new(target: VerticalAccuracy, name: "VerticalAccuracy"))
    Accuracy.type = Types::Accuracy
    AggregationPeriod.add_member(:one_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneHour", traits: {"smithy.api#enumValue" => "OneHour"}))
    AggregationPeriod.add_member(:one_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneDay", traits: {"smithy.api#enumValue" => "OneDay"}))
    AggregationPeriod.add_member(:one_week, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneWeek", traits: {"smithy.api#enumValue" => "OneWeek"}))
    ApplicationConfig.add_member(:f_port, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "FPort"))
    ApplicationConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfigType, name: "Type"))
    ApplicationConfig.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName"))
    ApplicationConfig.type = Types::ApplicationConfig
    ApplicationConfigType.add_member(:semtech_geo_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SemtechGeoLocation", traits: {"smithy.api#enumValue" => "SemtechGeolocation"}))
    Applications.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationConfig, name: "member")
    AssistPosition.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Coordinate, name: "member")
    AssociateAwsAccountWithPartnerAccountRequest.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkAccountInfo, name: "Sidewalk", traits: {"smithy.api#required" => {}}))
    AssociateAwsAccountWithPartnerAccountRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateAwsAccountWithPartnerAccountRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    AssociateAwsAccountWithPartnerAccountRequest.type = Types::AssociateAwsAccountWithPartnerAccountRequest
    AssociateAwsAccountWithPartnerAccountResponse.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkAccountInfo, name: "Sidewalk"))
    AssociateAwsAccountWithPartnerAccountResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerAccountArn, name: "Arn"))
    AssociateAwsAccountWithPartnerAccountResponse.type = Types::AssociateAwsAccountWithPartnerAccountResponse
    AssociateMulticastGroupWithFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateMulticastGroupWithFuotaTaskRequest.add_member(:multicast_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "MulticastGroupId", traits: {"smithy.api#required" => {}}))
    AssociateMulticastGroupWithFuotaTaskRequest.type = Types::AssociateMulticastGroupWithFuotaTaskRequest
    AssociateMulticastGroupWithFuotaTaskResponse.type = Types::AssociateMulticastGroupWithFuotaTaskResponse
    AssociateWirelessDeviceWithFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateWirelessDeviceWithFuotaTaskRequest.add_member(:wireless_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "WirelessDeviceId", traits: {"smithy.api#required" => {}}))
    AssociateWirelessDeviceWithFuotaTaskRequest.type = Types::AssociateWirelessDeviceWithFuotaTaskRequest
    AssociateWirelessDeviceWithFuotaTaskResponse.type = Types::AssociateWirelessDeviceWithFuotaTaskResponse
    AssociateWirelessDeviceWithMulticastGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateWirelessDeviceWithMulticastGroupRequest.add_member(:wireless_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "WirelessDeviceId", traits: {"smithy.api#required" => {}}))
    AssociateWirelessDeviceWithMulticastGroupRequest.type = Types::AssociateWirelessDeviceWithMulticastGroupRequest
    AssociateWirelessDeviceWithMulticastGroupResponse.type = Types::AssociateWirelessDeviceWithMulticastGroupResponse
    AssociateWirelessDeviceWithThingRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateWirelessDeviceWithThingRequest.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingArn, name: "ThingArn", traits: {"smithy.api#required" => {}}))
    AssociateWirelessDeviceWithThingRequest.type = Types::AssociateWirelessDeviceWithThingRequest
    AssociateWirelessDeviceWithThingResponse.type = Types::AssociateWirelessDeviceWithThingResponse
    AssociateWirelessGatewayWithCertificateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateWirelessGatewayWithCertificateRequest.add_member(:iot_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IotCertificateId, name: "IotCertificateId", traits: {"smithy.api#required" => {}}))
    AssociateWirelessGatewayWithCertificateRequest.type = Types::AssociateWirelessGatewayWithCertificateRequest
    AssociateWirelessGatewayWithCertificateResponse.add_member(:iot_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IotCertificateId, name: "IotCertificateId"))
    AssociateWirelessGatewayWithCertificateResponse.type = Types::AssociateWirelessGatewayWithCertificateResponse
    AssociateWirelessGatewayWithThingRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateWirelessGatewayWithThingRequest.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingArn, name: "ThingArn", traits: {"smithy.api#required" => {}}))
    AssociateWirelessGatewayWithThingRequest.type = Types::AssociateWirelessGatewayWithThingRequest
    AssociateWirelessGatewayWithThingResponse.type = Types::AssociateWirelessGatewayWithThingResponse
    BatteryLevel.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMAL", traits: {"smithy.api#enumValue" => "normal"}))
    BatteryLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "low"}))
    BatteryLevel.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "critical"}))
    Beaconing.add_member(:data_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconingDataRate, name: "DataRate"))
    Beaconing.add_member(:frequencies, ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconingFrequencies, name: "Frequencies"))
    Beaconing.type = Types::Beaconing
    BeaconingFrequencies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconingFrequency, name: "member")
    CancelMulticastGroupSessionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelMulticastGroupSessionRequest.type = Types::CancelMulticastGroupSessionRequest
    CancelMulticastGroupSessionResponse.type = Types::CancelMulticastGroupSessionResponse
    CdmaList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CdmaObj, name: "member")
    CdmaLocalId.add_member(:pn_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: PnOffset, name: "PnOffset", traits: {"smithy.api#required" => {}}))
    CdmaLocalId.add_member(:cdma_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: CdmaChannel, name: "CdmaChannel", traits: {"smithy.api#required" => {}}))
    CdmaLocalId.type = Types::CdmaLocalId
    CdmaNmrList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CdmaNmrObj, name: "member")
    CdmaNmrObj.add_member(:pn_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: PnOffset, name: "PnOffset", traits: {"smithy.api#required" => {}}))
    CdmaNmrObj.add_member(:cdma_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: CdmaChannel, name: "CdmaChannel", traits: {"smithy.api#required" => {}}))
    CdmaNmrObj.add_member(:pilot_power, ::Smithy::Schema::Shapes::MemberShape.new(target: PilotPower, name: "PilotPower"))
    CdmaNmrObj.add_member(:base_station_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseStationId, name: "BaseStationId"))
    CdmaNmrObj.type = Types::CdmaNmrObj
    CdmaObj.add_member(:system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemId, name: "SystemId", traits: {"smithy.api#required" => {}}))
    CdmaObj.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkId, name: "NetworkId", traits: {"smithy.api#required" => {}}))
    CdmaObj.add_member(:base_station_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseStationId, name: "BaseStationId", traits: {"smithy.api#required" => {}}))
    CdmaObj.add_member(:registration_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationZone, name: "RegistrationZone"))
    CdmaObj.add_member(:cdma_local_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CdmaLocalId, name: "CdmaLocalId"))
    CdmaObj.add_member(:pilot_power, ::Smithy::Schema::Shapes::MemberShape.new(target: PilotPower, name: "PilotPower"))
    CdmaObj.add_member(:base_lat, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseLat, name: "BaseLat"))
    CdmaObj.add_member(:base_lng, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseLng, name: "BaseLng"))
    CdmaObj.add_member(:cdma_nmr, ::Smithy::Schema::Shapes::MemberShape.new(target: CdmaNmrList, name: "CdmaNmr"))
    CdmaObj.type = Types::CdmaObj
    CellTowers.add_member(:gsm, ::Smithy::Schema::Shapes::MemberShape.new(target: GsmList, name: "Gsm"))
    CellTowers.add_member(:wcdma, ::Smithy::Schema::Shapes::MemberShape.new(target: WcdmaList, name: "Wcdma"))
    CellTowers.add_member(:tdscdma, ::Smithy::Schema::Shapes::MemberShape.new(target: TdscdmaList, name: "Tdscdma"))
    CellTowers.add_member(:lte, ::Smithy::Schema::Shapes::MemberShape.new(target: LteList, name: "Lte"))
    CellTowers.add_member(:cdma, ::Smithy::Schema::Shapes::MemberShape.new(target: CdmaList, name: "Cdma"))
    CellTowers.type = Types::CellTowers
    CertificateList.add_member(:signing_alg, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningAlg, name: "SigningAlg", traits: {"smithy.api#required" => {}}))
    CertificateList.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateValue, name: "Value", traits: {"smithy.api#required" => {}}))
    CertificateList.type = Types::CertificateList
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ConflictException.type = Types::ConflictException
    ConnectionStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "Connected"}))
    ConnectionStatus.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "Disconnected"}))
    ConnectionStatusEventConfiguration.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANConnectionStatusEventNotificationConfigurations, name: "LoRaWAN"))
    ConnectionStatusEventConfiguration.add_member(:wireless_gateway_id_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "WirelessGatewayIdEventTopic"))
    ConnectionStatusEventConfiguration.type = Types::ConnectionStatusEventConfiguration
    ConnectionStatusResourceTypeEventConfiguration.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANConnectionStatusResourceTypeEventConfiguration, name: "LoRaWAN"))
    ConnectionStatusResourceTypeEventConfiguration.type = Types::ConnectionStatusResourceTypeEventConfiguration
    CreateDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDestinationRequest.add_member(:expression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionType, name: "ExpressionType", traits: {"smithy.api#required" => {}}))
    CreateDestinationRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    CreateDestinationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDestinationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateDestinationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDestinationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDestinationRequest.type = Types::CreateDestinationRequest
    CreateDestinationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "Arn"))
    CreateDestinationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Name"))
    CreateDestinationResponse.type = Types::CreateDestinationResponse
    CreateDeviceProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileName, name: "Name"))
    CreateDeviceProfileRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANDeviceProfile, name: "LoRaWAN"))
    CreateDeviceProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDeviceProfileRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDeviceProfileRequest.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkCreateDeviceProfile, name: "Sidewalk"))
    CreateDeviceProfileRequest.type = Types::CreateDeviceProfileRequest
    CreateDeviceProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileArn, name: "Arn"))
    CreateDeviceProfileResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "Id"))
    CreateDeviceProfileResponse.type = Types::CreateDeviceProfileResponse
    CreateFuotaTaskRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskName, name: "Name"))
    CreateFuotaTaskRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateFuotaTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFuotaTaskRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANFuotaTask, name: "LoRaWAN"))
    CreateFuotaTaskRequest.add_member(:firmware_update_image, ::Smithy::Schema::Shapes::MemberShape.new(target: FirmwareUpdateImage, name: "FirmwareUpdateImage", traits: {"smithy.api#required" => {}}))
    CreateFuotaTaskRequest.add_member(:firmware_update_role, ::Smithy::Schema::Shapes::MemberShape.new(target: FirmwareUpdateRole, name: "FirmwareUpdateRole", traits: {"smithy.api#required" => {}}))
    CreateFuotaTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFuotaTaskRequest.add_member(:redundancy_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RedundancyPercent, name: "RedundancyPercent"))
    CreateFuotaTaskRequest.add_member(:fragment_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentSizeBytes, name: "FragmentSizeBytes"))
    CreateFuotaTaskRequest.add_member(:fragment_interval_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentIntervalMS, name: "FragmentIntervalMS"))
    CreateFuotaTaskRequest.add_member(:descriptor, ::Smithy::Schema::Shapes::MemberShape.new(target: FileDescriptor, name: "Descriptor"))
    CreateFuotaTaskRequest.type = Types::CreateFuotaTaskRequest
    CreateFuotaTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskArn, name: "Arn"))
    CreateFuotaTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id"))
    CreateFuotaTaskResponse.type = Types::CreateFuotaTaskResponse
    CreateMulticastGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupName, name: "Name"))
    CreateMulticastGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateMulticastGroupRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMulticastGroupRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANMulticast, name: "LoRaWAN", traits: {"smithy.api#required" => {}}))
    CreateMulticastGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMulticastGroupRequest.type = Types::CreateMulticastGroupRequest
    CreateMulticastGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupArn, name: "Arn"))
    CreateMulticastGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id"))
    CreateMulticastGroupResponse.type = Types::CreateMulticastGroupResponse
    CreateNetworkAnalyzerConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:trace_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceContent, name: "TraceContent"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:wireless_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceList, name: "WirelessDevices"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:wireless_gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayList, name: "WirelessGateways"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNetworkAnalyzerConfigurationRequest.add_member(:multicast_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerMulticastGroupList, name: "MulticastGroups"))
    CreateNetworkAnalyzerConfigurationRequest.type = Types::CreateNetworkAnalyzerConfigurationRequest
    CreateNetworkAnalyzerConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationArn, name: "Arn"))
    CreateNetworkAnalyzerConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationName, name: "Name"))
    CreateNetworkAnalyzerConfigurationResponse.type = Types::CreateNetworkAnalyzerConfigurationResponse
    CreateServiceProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileName, name: "Name"))
    CreateServiceProfileRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANServiceProfile, name: "LoRaWAN"))
    CreateServiceProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateServiceProfileRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceProfileRequest.type = Types::CreateServiceProfileRequest
    CreateServiceProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileArn, name: "Arn"))
    CreateServiceProfileResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileId, name: "Id"))
    CreateServiceProfileResponse.type = Types::CreateServiceProfileResponse
    CreateWirelessDeviceRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateWirelessDeviceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceName, name: "Name"))
    CreateWirelessDeviceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateWirelessDeviceRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName", traits: {"smithy.api#required" => {}}))
    CreateWirelessDeviceRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWirelessDeviceRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANDevice, name: "LoRaWAN"))
    CreateWirelessDeviceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateWirelessDeviceRequest.add_member(:positioning, ::Smithy::Schema::Shapes::MemberShape.new(target: PositioningConfigStatus, name: "Positioning"))
    CreateWirelessDeviceRequest.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkCreateWirelessDevice, name: "Sidewalk"))
    CreateWirelessDeviceRequest.type = Types::CreateWirelessDeviceRequest
    CreateWirelessDeviceResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceArn, name: "Arn"))
    CreateWirelessDeviceResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id"))
    CreateWirelessDeviceResponse.type = Types::CreateWirelessDeviceResponse
    CreateWirelessGatewayRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayName, name: "Name"))
    CreateWirelessGatewayRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateWirelessGatewayRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGateway, name: "LoRaWAN", traits: {"smithy.api#required" => {}}))
    CreateWirelessGatewayRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateWirelessGatewayRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWirelessGatewayRequest.type = Types::CreateWirelessGatewayRequest
    CreateWirelessGatewayResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayArn, name: "Arn"))
    CreateWirelessGatewayResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id"))
    CreateWirelessGatewayResponse.type = Types::CreateWirelessGatewayResponse
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:auto_create_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoCreateTasks, name: "AutoCreateTasks", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskName, name: "Name"))
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateWirelessGatewayTaskCreate, name: "Update"))
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWirelessGatewayTaskDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateWirelessGatewayTaskDefinitionRequest.type = Types::CreateWirelessGatewayTaskDefinitionRequest
    CreateWirelessGatewayTaskDefinitionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionId, name: "Id"))
    CreateWirelessGatewayTaskDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionArn, name: "Arn"))
    CreateWirelessGatewayTaskDefinitionResponse.type = Types::CreateWirelessGatewayTaskDefinitionResponse
    CreateWirelessGatewayTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWirelessGatewayTaskRequest.add_member(:wireless_gateway_task_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionId, name: "WirelessGatewayTaskDefinitionId", traits: {"smithy.api#required" => {}}))
    CreateWirelessGatewayTaskRequest.type = Types::CreateWirelessGatewayTaskRequest
    CreateWirelessGatewayTaskResponse.add_member(:wireless_gateway_task_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionId, name: "WirelessGatewayTaskDefinitionId"))
    CreateWirelessGatewayTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskStatus, name: "Status"))
    CreateWirelessGatewayTaskResponse.type = Types::CreateWirelessGatewayTaskResponse
    DakCertificateMetadata.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DakCertificateId, name: "CertificateId", traits: {"smithy.api#required" => {}}))
    DakCertificateMetadata.add_member(:max_allowed_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAllowedSignature, name: "MaxAllowedSignature"))
    DakCertificateMetadata.add_member(:factory_support, ::Smithy::Schema::Shapes::MemberShape.new(target: FactorySupport, name: "FactorySupport"))
    DakCertificateMetadata.add_member(:ap_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApId, name: "ApId"))
    DakCertificateMetadata.add_member(:device_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceTypeId, name: "DeviceTypeId"))
    DakCertificateMetadata.type = Types::DakCertificateMetadata
    DakCertificateMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DakCertificateMetadata, name: "member")
    DeleteDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDestinationRequest.type = Types::DeleteDestinationRequest
    DeleteDestinationResponse.type = Types::DeleteDestinationResponse
    DeleteDeviceProfileRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeviceProfileRequest.type = Types::DeleteDeviceProfileRequest
    DeleteDeviceProfileResponse.type = Types::DeleteDeviceProfileResponse
    DeleteFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFuotaTaskRequest.type = Types::DeleteFuotaTaskRequest
    DeleteFuotaTaskResponse.type = Types::DeleteFuotaTaskResponse
    DeleteMulticastGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMulticastGroupRequest.type = Types::DeleteMulticastGroupRequest
    DeleteMulticastGroupResponse.type = Types::DeleteMulticastGroupResponse
    DeleteNetworkAnalyzerConfigurationRequest.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationName, name: "ConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNetworkAnalyzerConfigurationRequest.type = Types::DeleteNetworkAnalyzerConfigurationRequest
    DeleteNetworkAnalyzerConfigurationResponse.type = Types::DeleteNetworkAnalyzerConfigurationResponse
    DeleteQueuedMessagesRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteQueuedMessagesRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "MessageId", traits: {"smithy.api#httpQuery" => "messageId", "smithy.api#required" => {}}))
    DeleteQueuedMessagesRequest.add_member(:wireless_device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceType, name: "WirelessDeviceType", traits: {"smithy.api#httpQuery" => "WirelessDeviceType"}))
    DeleteQueuedMessagesRequest.type = Types::DeleteQueuedMessagesRequest
    DeleteQueuedMessagesResponse.type = Types::DeleteQueuedMessagesResponse
    DeleteServiceProfileRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServiceProfileRequest.type = Types::DeleteServiceProfileRequest
    DeleteServiceProfileResponse.type = Types::DeleteServiceProfileResponse
    DeleteWirelessDeviceImportTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWirelessDeviceImportTaskRequest.type = Types::DeleteWirelessDeviceImportTaskRequest
    DeleteWirelessDeviceImportTaskResponse.type = Types::DeleteWirelessDeviceImportTaskResponse
    DeleteWirelessDeviceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWirelessDeviceRequest.type = Types::DeleteWirelessDeviceRequest
    DeleteWirelessDeviceResponse.type = Types::DeleteWirelessDeviceResponse
    DeleteWirelessGatewayRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWirelessGatewayRequest.type = Types::DeleteWirelessGatewayRequest
    DeleteWirelessGatewayResponse.type = Types::DeleteWirelessGatewayResponse
    DeleteWirelessGatewayTaskDefinitionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWirelessGatewayTaskDefinitionRequest.type = Types::DeleteWirelessGatewayTaskDefinitionRequest
    DeleteWirelessGatewayTaskDefinitionResponse.type = Types::DeleteWirelessGatewayTaskDefinitionResponse
    DeleteWirelessGatewayTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWirelessGatewayTaskRequest.type = Types::DeleteWirelessGatewayTaskRequest
    DeleteWirelessGatewayTaskResponse.type = Types::DeleteWirelessGatewayTaskResponse
    DeregisterWirelessDeviceRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterWirelessDeviceRequest.add_member(:wireless_device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceType, name: "WirelessDeviceType", traits: {"smithy.api#httpQuery" => "WirelessDeviceType"}))
    DeregisterWirelessDeviceRequest.type = Types::DeregisterWirelessDeviceRequest
    DeregisterWirelessDeviceResponse.type = Types::DeregisterWirelessDeviceResponse
    DestinationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, name: "member")
    Destinations.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "Arn"))
    Destinations.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Name"))
    Destinations.add_member(:expression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionType, name: "ExpressionType"))
    Destinations.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression"))
    Destinations.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Destinations.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    Destinations.type = Types::Destinations
    DeviceCertificateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, name: "member")
    DeviceCreationFileList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationFile, name: "member")
    DeviceProfile.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileArn, name: "Arn"))
    DeviceProfile.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileName, name: "Name"))
    DeviceProfile.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "Id"))
    DeviceProfile.type = Types::DeviceProfile
    DeviceProfileList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfile, name: "member")
    DeviceProfileType.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sidewalk", traits: {"smithy.api#enumValue" => "Sidewalk"}))
    DeviceProfileType.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoRaWAN", traits: {"smithy.api#enumValue" => "LoRaWAN"}))
    DeviceRegistrationStateEventConfiguration.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkEventNotificationConfigurations, name: "Sidewalk"))
    DeviceRegistrationStateEventConfiguration.add_member(:wireless_device_id_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "WirelessDeviceIdEventTopic"))
    DeviceRegistrationStateEventConfiguration.type = Types::DeviceRegistrationStateEventConfiguration
    DeviceRegistrationStateResourceTypeEventConfiguration.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkResourceTypeEventConfiguration, name: "Sidewalk"))
    DeviceRegistrationStateResourceTypeEventConfiguration.type = Types::DeviceRegistrationStateResourceTypeEventConfiguration
    DeviceState.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "Provisioned"}))
    DeviceState.add_member(:registerednotseen, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTEREDNOTSEEN", traits: {"smithy.api#enumValue" => "RegisteredNotSeen"}))
    DeviceState.add_member(:registeredreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTEREDREACHABLE", traits: {"smithy.api#enumValue" => "RegisteredReachable"}))
    DeviceState.add_member(:registeredunreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTEREDUNREACHABLE", traits: {"smithy.api#enumValue" => "RegisteredUnreachable"}))
    Dimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "name"))
    Dimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValue, name: "value"))
    Dimension.type = Types::Dimension
    DimensionName.add_member(:device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceId", traits: {"smithy.api#enumValue" => "DeviceId"}))
    DimensionName.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayId", traits: {"smithy.api#enumValue" => "GatewayId"}))
    Dimensions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "member")
    DisassociateAwsAccountFromPartnerAccountRequest.add_member(:partner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerAccountId, name: "PartnerAccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAwsAccountFromPartnerAccountRequest.add_member(:partner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerType, name: "PartnerType", traits: {"smithy.api#httpQuery" => "partnerType", "smithy.api#required" => {}}))
    DisassociateAwsAccountFromPartnerAccountRequest.type = Types::DisassociateAwsAccountFromPartnerAccountRequest
    DisassociateAwsAccountFromPartnerAccountResponse.type = Types::DisassociateAwsAccountFromPartnerAccountResponse
    DisassociateMulticastGroupFromFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMulticastGroupFromFuotaTaskRequest.add_member(:multicast_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "MulticastGroupId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMulticastGroupFromFuotaTaskRequest.type = Types::DisassociateMulticastGroupFromFuotaTaskRequest
    DisassociateMulticastGroupFromFuotaTaskResponse.type = Types::DisassociateMulticastGroupFromFuotaTaskResponse
    DisassociateWirelessDeviceFromFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateWirelessDeviceFromFuotaTaskRequest.add_member(:wireless_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "WirelessDeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateWirelessDeviceFromFuotaTaskRequest.type = Types::DisassociateWirelessDeviceFromFuotaTaskRequest
    DisassociateWirelessDeviceFromFuotaTaskResponse.type = Types::DisassociateWirelessDeviceFromFuotaTaskResponse
    DisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:wireless_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "WirelessDeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateWirelessDeviceFromMulticastGroupRequest.type = Types::DisassociateWirelessDeviceFromMulticastGroupRequest
    DisassociateWirelessDeviceFromMulticastGroupResponse.type = Types::DisassociateWirelessDeviceFromMulticastGroupResponse
    DisassociateWirelessDeviceFromThingRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateWirelessDeviceFromThingRequest.type = Types::DisassociateWirelessDeviceFromThingRequest
    DisassociateWirelessDeviceFromThingResponse.type = Types::DisassociateWirelessDeviceFromThingResponse
    DisassociateWirelessGatewayFromCertificateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateWirelessGatewayFromCertificateRequest.type = Types::DisassociateWirelessGatewayFromCertificateRequest
    DisassociateWirelessGatewayFromCertificateResponse.type = Types::DisassociateWirelessGatewayFromCertificateResponse
    DisassociateWirelessGatewayFromThingRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateWirelessGatewayFromThingRequest.type = Types::DisassociateWirelessGatewayFromThingRequest
    DisassociateWirelessGatewayFromThingResponse.type = Types::DisassociateWirelessGatewayFromThingResponse
    DlClass.add_member(:class_b, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClassB", traits: {"smithy.api#enumValue" => "ClassB"}))
    DlClass.add_member(:class_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClassC", traits: {"smithy.api#enumValue" => "ClassC"}))
    DownlinkMode.add_member(:sequential, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEQUENTIAL", traits: {"smithy.api#enumValue" => "SEQUENTIAL"}))
    DownlinkMode.add_member(:concurrent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENT", traits: {"smithy.api#enumValue" => "CONCURRENT"}))
    DownlinkMode.add_member(:using_uplink_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USING_UPLINK_GATEWAY", traits: {"smithy.api#enumValue" => "USING_UPLINK_GATEWAY"}))
    DownlinkQueueMessage.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "MessageId"))
    DownlinkQueueMessage.add_member(:transmit_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransmitMode, name: "TransmitMode"))
    DownlinkQueueMessage.add_member(:received_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "ReceivedAt"))
    DownlinkQueueMessage.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANSendDataToDevice, name: "LoRaWAN"))
    DownlinkQueueMessage.type = Types::DownlinkQueueMessage
    DownlinkQueueMessagesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkQueueMessage, name: "member")
    Event.add_member(:discovered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCOVERED", traits: {"smithy.api#enumValue" => "discovered"}))
    Event.add_member(:lost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST", traits: {"smithy.api#enumValue" => "lost"}))
    Event.add_member(:ack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACK", traits: {"smithy.api#enumValue" => "ack"}))
    Event.add_member(:nack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NACK", traits: {"smithy.api#enumValue" => "nack"}))
    Event.add_member(:passthrough, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSTHROUGH", traits: {"smithy.api#enumValue" => "passthrough"}))
    EventConfigurationItem.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier"))
    EventConfigurationItem.add_member(:identifier_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierType, name: "IdentifierType"))
    EventConfigurationItem.add_member(:partner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationPartnerType, name: "PartnerType"))
    EventConfigurationItem.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationItemConfigurations, name: "Events"))
    EventConfigurationItem.type = Types::EventConfigurationItem
    EventConfigurationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventConfigurationItem, name: "member")
    EventNotificationItemConfigurations.add_member(:device_registration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceRegistrationStateEventConfiguration, name: "DeviceRegistrationState"))
    EventNotificationItemConfigurations.add_member(:proximity, ::Smithy::Schema::Shapes::MemberShape.new(target: ProximityEventConfiguration, name: "Proximity"))
    EventNotificationItemConfigurations.add_member(:join, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEventConfiguration, name: "Join"))
    EventNotificationItemConfigurations.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatusEventConfiguration, name: "ConnectionStatus"))
    EventNotificationItemConfigurations.add_member(:message_delivery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDeliveryStatusEventConfiguration, name: "MessageDeliveryStatus"))
    EventNotificationItemConfigurations.type = Types::EventNotificationItemConfigurations
    EventNotificationPartnerType.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sidewalk", traits: {"smithy.api#enumValue" => "Sidewalk"}))
    EventNotificationResourceType.add_member(:sidewalk_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SidewalkAccount", traits: {"smithy.api#enumValue" => "SidewalkAccount"}))
    EventNotificationResourceType.add_member(:wireless_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WirelessDevice", traits: {"smithy.api#enumValue" => "WirelessDevice"}))
    EventNotificationResourceType.add_member(:wireless_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WirelessGateway", traits: {"smithy.api#enumValue" => "WirelessGateway"}))
    EventNotificationTopicStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    EventNotificationTopicStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ExpressionType.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RuleName", traits: {"smithy.api#enumValue" => "RuleName"}))
    ExpressionType.add_member(:mqtt_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MqttTopic", traits: {"smithy.api#enumValue" => "MqttTopic"}))
    FPorts.add_member(:fuota, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "Fuota"))
    FPorts.add_member(:multicast, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "Multicast"))
    FPorts.add_member(:clock_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "ClockSync"))
    FPorts.add_member(:positioning, ::Smithy::Schema::Shapes::MemberShape.new(target: Positioning, name: "Positioning"))
    FPorts.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: Applications, name: "Applications"))
    FPorts.type = Types::FPorts
    FactoryPresetFreqsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PresetFreq, name: "member")
    FuotaDeviceStatus.add_member(:initial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Initial", traits: {"smithy.api#enumValue" => "Initial"}))
    FuotaDeviceStatus.add_member(:package_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Package_Not_Supported", traits: {"smithy.api#enumValue" => "Package_Not_Supported"}))
    FuotaDeviceStatus.add_member(:frag_algo_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FragAlgo_unsupported", traits: {"smithy.api#enumValue" => "FragAlgo_unsupported"}))
    FuotaDeviceStatus.add_member(:not_enough_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Not_enough_memory", traits: {"smithy.api#enumValue" => "Not_enough_memory"}))
    FuotaDeviceStatus.add_member(:frag_index_unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FragIndex_unsupported", traits: {"smithy.api#enumValue" => "FragIndex_unsupported"}))
    FuotaDeviceStatus.add_member(:wrong_descriptor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Wrong_descriptor", traits: {"smithy.api#enumValue" => "Wrong_descriptor"}))
    FuotaDeviceStatus.add_member(:session_cnt_replay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SessionCnt_replay", traits: {"smithy.api#enumValue" => "SessionCnt_replay"}))
    FuotaDeviceStatus.add_member(:missing_frag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissingFrag", traits: {"smithy.api#enumValue" => "MissingFrag"}))
    FuotaDeviceStatus.add_member(:memory_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MemoryError", traits: {"smithy.api#enumValue" => "MemoryError"}))
    FuotaDeviceStatus.add_member(:mic_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICError", traits: {"smithy.api#enumValue" => "MICError"}))
    FuotaDeviceStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful"}))
    FuotaDeviceStatus.add_member(:device_exist_in_conflict_fuota_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Device_exist_in_conflict_fuota_task", traits: {"smithy.api#enumValue" => "Device_exist_in_conflict_fuota_task"}))
    FuotaTask.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id"))
    FuotaTask.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskArn, name: "Arn"))
    FuotaTask.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskName, name: "Name"))
    FuotaTask.type = Types::FuotaTask
    FuotaTaskEvent.add_member(:fuota, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Fuota", traits: {"smithy.api#enumValue" => "Fuota"}))
    FuotaTaskEventLogOption.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskEvent, name: "Event", traits: {"smithy.api#required" => {}}))
    FuotaTaskEventLogOption.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    FuotaTaskEventLogOption.type = Types::FuotaTaskEventLogOption
    FuotaTaskEventLogOptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskEventLogOption, name: "member")
    FuotaTaskList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTask, name: "member")
    FuotaTaskLogOption.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskType, name: "Type", traits: {"smithy.api#required" => {}}))
    FuotaTaskLogOption.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    FuotaTaskLogOption.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskEventLogOptionList, name: "Events"))
    FuotaTaskLogOption.type = Types::FuotaTaskLogOption
    FuotaTaskLogOptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskLogOption, name: "member")
    FuotaTaskStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    FuotaTaskStatus.add_member(:fuota_session_waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FuotaSession_Waiting", traits: {"smithy.api#enumValue" => "FuotaSession_Waiting"}))
    FuotaTaskStatus.add_member(:in_fuota_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "In_FuotaSession", traits: {"smithy.api#enumValue" => "In_FuotaSession"}))
    FuotaTaskStatus.add_member(:fuota_done, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FuotaDone", traits: {"smithy.api#enumValue" => "FuotaDone"}))
    FuotaTaskStatus.add_member(:delete_waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Delete_Waiting", traits: {"smithy.api#enumValue" => "Delete_Waiting"}))
    FuotaTaskType.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoRaWAN", traits: {"smithy.api#enumValue" => "LoRaWAN"}))
    GatewayList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayListItem, name: "member")
    GatewayListItem.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "GatewayId", traits: {"smithy.api#required" => {}}))
    GatewayListItem.add_member(:downlink_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkFrequency, name: "DownlinkFrequency", traits: {"smithy.api#required" => {}}))
    GatewayListItem.type = Types::GatewayListItem
    GatewayListMulticast.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "member")
    GetDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDestinationRequest.type = Types::GetDestinationRequest
    GetDestinationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "Arn"))
    GetDestinationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Name"))
    GetDestinationResponse.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression"))
    GetDestinationResponse.add_member(:expression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionType, name: "ExpressionType"))
    GetDestinationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetDestinationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    GetDestinationResponse.type = Types::GetDestinationResponse
    GetDeviceProfileRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeviceProfileRequest.type = Types::GetDeviceProfileRequest
    GetDeviceProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileArn, name: "Arn"))
    GetDeviceProfileResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileName, name: "Name"))
    GetDeviceProfileResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "Id"))
    GetDeviceProfileResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANDeviceProfile, name: "LoRaWAN"))
    GetDeviceProfileResponse.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkGetDeviceProfile, name: "Sidewalk"))
    GetDeviceProfileResponse.type = Types::GetDeviceProfileResponse
    GetEventConfigurationByResourceTypesRequest.type = Types::GetEventConfigurationByResourceTypesRequest
    GetEventConfigurationByResourceTypesResponse.add_member(:device_registration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceRegistrationStateResourceTypeEventConfiguration, name: "DeviceRegistrationState"))
    GetEventConfigurationByResourceTypesResponse.add_member(:proximity, ::Smithy::Schema::Shapes::MemberShape.new(target: ProximityResourceTypeEventConfiguration, name: "Proximity"))
    GetEventConfigurationByResourceTypesResponse.add_member(:join, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinResourceTypeEventConfiguration, name: "Join"))
    GetEventConfigurationByResourceTypesResponse.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatusResourceTypeEventConfiguration, name: "ConnectionStatus"))
    GetEventConfigurationByResourceTypesResponse.add_member(:message_delivery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDeliveryStatusResourceTypeEventConfiguration, name: "MessageDeliveryStatus"))
    GetEventConfigurationByResourceTypesResponse.type = Types::GetEventConfigurationByResourceTypesResponse
    GetFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFuotaTaskRequest.type = Types::GetFuotaTaskRequest
    GetFuotaTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskArn, name: "Arn"))
    GetFuotaTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id"))
    GetFuotaTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskStatus, name: "Status"))
    GetFuotaTaskResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskName, name: "Name"))
    GetFuotaTaskResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetFuotaTaskResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANFuotaTaskGetInfo, name: "LoRaWAN"))
    GetFuotaTaskResponse.add_member(:firmware_update_image, ::Smithy::Schema::Shapes::MemberShape.new(target: FirmwareUpdateImage, name: "FirmwareUpdateImage"))
    GetFuotaTaskResponse.add_member(:firmware_update_role, ::Smithy::Schema::Shapes::MemberShape.new(target: FirmwareUpdateRole, name: "FirmwareUpdateRole"))
    GetFuotaTaskResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "CreatedAt"))
    GetFuotaTaskResponse.add_member(:redundancy_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RedundancyPercent, name: "RedundancyPercent"))
    GetFuotaTaskResponse.add_member(:fragment_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentSizeBytes, name: "FragmentSizeBytes"))
    GetFuotaTaskResponse.add_member(:fragment_interval_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentIntervalMS, name: "FragmentIntervalMS"))
    GetFuotaTaskResponse.add_member(:descriptor, ::Smithy::Schema::Shapes::MemberShape.new(target: FileDescriptor, name: "Descriptor"))
    GetFuotaTaskResponse.type = Types::GetFuotaTaskResponse
    GetLogLevelsByResourceTypesRequest.type = Types::GetLogLevelsByResourceTypesRequest
    GetLogLevelsByResourceTypesResponse.add_member(:default_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "DefaultLogLevel"))
    GetLogLevelsByResourceTypesResponse.add_member(:wireless_gateway_log_options, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayLogOptionList, name: "WirelessGatewayLogOptions"))
    GetLogLevelsByResourceTypesResponse.add_member(:wireless_device_log_options, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceLogOptionList, name: "WirelessDeviceLogOptions"))
    GetLogLevelsByResourceTypesResponse.add_member(:fuota_task_log_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskLogOptionList, name: "FuotaTaskLogOptions"))
    GetLogLevelsByResourceTypesResponse.type = Types::GetLogLevelsByResourceTypesResponse
    GetMetricConfigurationRequest.type = Types::GetMetricConfigurationRequest
    GetMetricConfigurationResponse.add_member(:summary_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricConfiguration, name: "SummaryMetric"))
    GetMetricConfigurationResponse.type = Types::GetMetricConfigurationResponse
    GetMetricsRequest.add_member(:summary_metric_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricQueries, name: "SummaryMetricQueries"))
    GetMetricsRequest.type = Types::GetMetricsRequest
    GetMetricsResponse.add_member(:summary_metric_query_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricQueryResults, name: "SummaryMetricQueryResults"))
    GetMetricsResponse.type = Types::GetMetricsResponse
    GetMulticastGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMulticastGroupRequest.type = Types::GetMulticastGroupRequest
    GetMulticastGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupArn, name: "Arn"))
    GetMulticastGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id"))
    GetMulticastGroupResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupName, name: "Name"))
    GetMulticastGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetMulticastGroupResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupStatus, name: "Status"))
    GetMulticastGroupResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANMulticastGet, name: "LoRaWAN"))
    GetMulticastGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "CreatedAt"))
    GetMulticastGroupResponse.type = Types::GetMulticastGroupResponse
    GetMulticastGroupSessionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMulticastGroupSessionRequest.type = Types::GetMulticastGroupSessionRequest
    GetMulticastGroupSessionResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANMulticastSession, name: "LoRaWAN"))
    GetMulticastGroupSessionResponse.type = Types::GetMulticastGroupSessionResponse
    GetNetworkAnalyzerConfigurationRequest.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationName, name: "ConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNetworkAnalyzerConfigurationRequest.type = Types::GetNetworkAnalyzerConfigurationRequest
    GetNetworkAnalyzerConfigurationResponse.add_member(:trace_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceContent, name: "TraceContent"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:wireless_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceList, name: "WirelessDevices"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:wireless_gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayList, name: "WirelessGateways"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationArn, name: "Arn"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationName, name: "Name"))
    GetNetworkAnalyzerConfigurationResponse.add_member(:multicast_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerMulticastGroupList, name: "MulticastGroups"))
    GetNetworkAnalyzerConfigurationResponse.type = Types::GetNetworkAnalyzerConfigurationResponse
    GetPartnerAccountRequest.add_member(:partner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerAccountId, name: "PartnerAccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPartnerAccountRequest.add_member(:partner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerType, name: "PartnerType", traits: {"smithy.api#httpQuery" => "partnerType", "smithy.api#required" => {}}))
    GetPartnerAccountRequest.type = Types::GetPartnerAccountRequest
    GetPartnerAccountResponse.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkAccountInfoWithFingerprint, name: "Sidewalk"))
    GetPartnerAccountResponse.add_member(:account_linked, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLinked, name: "AccountLinked", traits: {"smithy.api#default" => false}))
    GetPartnerAccountResponse.type = Types::GetPartnerAccountResponse
    GetPositionConfigurationRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPositionConfigurationRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    GetPositionConfigurationRequest.type = Types::GetPositionConfigurationRequest
    GetPositionConfigurationResponse.add_member(:solvers, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionSolverDetails, name: "Solvers"))
    GetPositionConfigurationResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Destination"))
    GetPositionConfigurationResponse.type = Types::GetPositionConfigurationResponse
    GetPositionEstimateRequest.add_member(:wi_fi_access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: WiFiAccessPoints, name: "WiFiAccessPoints"))
    GetPositionEstimateRequest.add_member(:cell_towers, ::Smithy::Schema::Shapes::MemberShape.new(target: CellTowers, name: "CellTowers"))
    GetPositionEstimateRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip"))
    GetPositionEstimateRequest.add_member(:gnss, ::Smithy::Schema::Shapes::MemberShape.new(target: Gnss, name: "Gnss"))
    GetPositionEstimateRequest.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "Timestamp"))
    GetPositionEstimateRequest.type = Types::GetPositionEstimateRequest
    GetPositionEstimateResponse.add_member(:geo_json_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoJsonPayload, name: "GeoJsonPayload", traits: {"smithy.api#httpPayload" => {}}))
    GetPositionEstimateResponse[:http_payload] = :geo_json_payload
    GetPositionEstimateResponse[:http_payload_member] = GetPositionEstimateResponse.member(:geo_json_payload)
    GetPositionEstimateResponse.type = Types::GetPositionEstimateResponse
    GetPositionRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPositionRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    GetPositionRequest.type = Types::GetPositionRequest
    GetPositionResponse.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionCoordinate, name: "Position"))
    GetPositionResponse.add_member(:accuracy, ::Smithy::Schema::Shapes::MemberShape.new(target: Accuracy, name: "Accuracy"))
    GetPositionResponse.add_member(:solver_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionSolverType, name: "SolverType"))
    GetPositionResponse.add_member(:solver_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionSolverProvider, name: "SolverProvider"))
    GetPositionResponse.add_member(:solver_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionSolverVersion, name: "SolverVersion"))
    GetPositionResponse.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "Timestamp"))
    GetPositionResponse.type = Types::GetPositionResponse
    GetResourceEventConfigurationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceEventConfigurationRequest.add_member(:identifier_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierType, name: "IdentifierType", traits: {"smithy.api#httpQuery" => "identifierType", "smithy.api#required" => {}}))
    GetResourceEventConfigurationRequest.add_member(:partner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationPartnerType, name: "PartnerType", traits: {"smithy.api#httpQuery" => "partnerType"}))
    GetResourceEventConfigurationRequest.type = Types::GetResourceEventConfigurationRequest
    GetResourceEventConfigurationResponse.add_member(:device_registration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceRegistrationStateEventConfiguration, name: "DeviceRegistrationState"))
    GetResourceEventConfigurationResponse.add_member(:proximity, ::Smithy::Schema::Shapes::MemberShape.new(target: ProximityEventConfiguration, name: "Proximity"))
    GetResourceEventConfigurationResponse.add_member(:join, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEventConfiguration, name: "Join"))
    GetResourceEventConfigurationResponse.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatusEventConfiguration, name: "ConnectionStatus"))
    GetResourceEventConfigurationResponse.add_member(:message_delivery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDeliveryStatusEventConfiguration, name: "MessageDeliveryStatus"))
    GetResourceEventConfigurationResponse.type = Types::GetResourceEventConfigurationResponse
    GetResourceLogLevelRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceLogLevelRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    GetResourceLogLevelRequest.type = Types::GetResourceLogLevelRequest
    GetResourceLogLevelResponse.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel"))
    GetResourceLogLevelResponse.type = Types::GetResourceLogLevelResponse
    GetResourcePositionRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePositionRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    GetResourcePositionRequest.type = Types::GetResourcePositionRequest
    GetResourcePositionResponse.add_member(:geo_json_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoJsonPayload, name: "GeoJsonPayload", traits: {"smithy.api#httpPayload" => {}}))
    GetResourcePositionResponse[:http_payload] = :geo_json_payload
    GetResourcePositionResponse[:http_payload_member] = GetResourcePositionResponse.member(:geo_json_payload)
    GetResourcePositionResponse.type = Types::GetResourcePositionResponse
    GetServiceEndpointRequest.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayServiceType, name: "ServiceType", traits: {"smithy.api#httpQuery" => "serviceType"}))
    GetServiceEndpointRequest.type = Types::GetServiceEndpointRequest
    GetServiceEndpointResponse.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayServiceType, name: "ServiceType"))
    GetServiceEndpointResponse.add_member(:service_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: EndPoint, name: "ServiceEndpoint"))
    GetServiceEndpointResponse.add_member(:server_trust, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificatePEM, name: "ServerTrust"))
    GetServiceEndpointResponse.type = Types::GetServiceEndpointResponse
    GetServiceProfileRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServiceProfileRequest.type = Types::GetServiceProfileRequest
    GetServiceProfileResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileArn, name: "Arn"))
    GetServiceProfileResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileName, name: "Name"))
    GetServiceProfileResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileId, name: "Id"))
    GetServiceProfileResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGetServiceProfileInfo, name: "LoRaWAN"))
    GetServiceProfileResponse.type = Types::GetServiceProfileResponse
    GetWirelessDeviceImportTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessDeviceImportTaskRequest.type = Types::GetWirelessDeviceImportTaskRequest
    GetWirelessDeviceImportTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskId, name: "Id"))
    GetWirelessDeviceImportTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskArn, name: "Arn"))
    GetWirelessDeviceImportTaskResponse.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName"))
    GetWirelessDeviceImportTaskResponse.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkGetStartImportInfo, name: "Sidewalk"))
    GetWirelessDeviceImportTaskResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    GetWirelessDeviceImportTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskStatus, name: "Status"))
    GetWirelessDeviceImportTaskResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "StatusReason"))
    GetWirelessDeviceImportTaskResponse.add_member(:initialized_imported_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceCount, name: "InitializedImportedDeviceCount"))
    GetWirelessDeviceImportTaskResponse.add_member(:pending_imported_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceCount, name: "PendingImportedDeviceCount"))
    GetWirelessDeviceImportTaskResponse.add_member(:onboarded_imported_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceCount, name: "OnboardedImportedDeviceCount"))
    GetWirelessDeviceImportTaskResponse.add_member(:failed_imported_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceCount, name: "FailedImportedDeviceCount"))
    GetWirelessDeviceImportTaskResponse.type = Types::GetWirelessDeviceImportTaskResponse
    GetWirelessDeviceRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessDeviceRequest.add_member(:identifier_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceIdType, name: "IdentifierType", traits: {"smithy.api#httpQuery" => "identifierType", "smithy.api#required" => {}}))
    GetWirelessDeviceRequest.type = Types::GetWirelessDeviceRequest
    GetWirelessDeviceResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceType, name: "Type"))
    GetWirelessDeviceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceName, name: "Name"))
    GetWirelessDeviceResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetWirelessDeviceResponse.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName"))
    GetWirelessDeviceResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id"))
    GetWirelessDeviceResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceArn, name: "Arn"))
    GetWirelessDeviceResponse.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "ThingName"))
    GetWirelessDeviceResponse.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingArn, name: "ThingArn"))
    GetWirelessDeviceResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANDevice, name: "LoRaWAN"))
    GetWirelessDeviceResponse.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkDevice, name: "Sidewalk"))
    GetWirelessDeviceResponse.add_member(:positioning, ::Smithy::Schema::Shapes::MemberShape.new(target: PositioningConfigStatus, name: "Positioning"))
    GetWirelessDeviceResponse.type = Types::GetWirelessDeviceResponse
    GetWirelessDeviceStatisticsRequest.add_member(:wireless_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "WirelessDeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessDeviceStatisticsRequest.type = Types::GetWirelessDeviceStatisticsRequest
    GetWirelessDeviceStatisticsResponse.add_member(:wireless_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "WirelessDeviceId"))
    GetWirelessDeviceStatisticsResponse.add_member(:last_uplink_received_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "LastUplinkReceivedAt"))
    GetWirelessDeviceStatisticsResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANDeviceMetadata, name: "LoRaWAN"))
    GetWirelessDeviceStatisticsResponse.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkDeviceMetadata, name: "Sidewalk"))
    GetWirelessDeviceStatisticsResponse.type = Types::GetWirelessDeviceStatisticsResponse
    GetWirelessGatewayCertificateRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessGatewayCertificateRequest.type = Types::GetWirelessGatewayCertificateRequest
    GetWirelessGatewayCertificateResponse.add_member(:iot_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IotCertificateId, name: "IotCertificateId"))
    GetWirelessGatewayCertificateResponse.add_member(:lo_ra_wan_network_server_certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IotCertificateId, name: "LoRaWANNetworkServerCertificateId"))
    GetWirelessGatewayCertificateResponse.type = Types::GetWirelessGatewayCertificateResponse
    GetWirelessGatewayFirmwareInformationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessGatewayFirmwareInformationRequest.type = Types::GetWirelessGatewayFirmwareInformationRequest
    GetWirelessGatewayFirmwareInformationResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGatewayCurrentVersion, name: "LoRaWAN"))
    GetWirelessGatewayFirmwareInformationResponse.type = Types::GetWirelessGatewayFirmwareInformationResponse
    GetWirelessGatewayRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessGatewayRequest.add_member(:identifier_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayIdType, name: "IdentifierType", traits: {"smithy.api#httpQuery" => "identifierType", "smithy.api#required" => {}}))
    GetWirelessGatewayRequest.type = Types::GetWirelessGatewayRequest
    GetWirelessGatewayResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayName, name: "Name"))
    GetWirelessGatewayResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id"))
    GetWirelessGatewayResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetWirelessGatewayResponse.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGateway, name: "LoRaWAN"))
    GetWirelessGatewayResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayArn, name: "Arn"))
    GetWirelessGatewayResponse.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingName, name: "ThingName"))
    GetWirelessGatewayResponse.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ThingArn, name: "ThingArn"))
    GetWirelessGatewayResponse.type = Types::GetWirelessGatewayResponse
    GetWirelessGatewayStatisticsRequest.add_member(:wireless_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "WirelessGatewayId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessGatewayStatisticsRequest.type = Types::GetWirelessGatewayStatisticsRequest
    GetWirelessGatewayStatisticsResponse.add_member(:wireless_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "WirelessGatewayId"))
    GetWirelessGatewayStatisticsResponse.add_member(:last_uplink_received_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "LastUplinkReceivedAt"))
    GetWirelessGatewayStatisticsResponse.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatus, name: "ConnectionStatus"))
    GetWirelessGatewayStatisticsResponse.type = Types::GetWirelessGatewayStatisticsResponse
    GetWirelessGatewayTaskDefinitionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessGatewayTaskDefinitionRequest.type = Types::GetWirelessGatewayTaskDefinitionRequest
    GetWirelessGatewayTaskDefinitionResponse.add_member(:auto_create_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoCreateTasks, name: "AutoCreateTasks", traits: {"smithy.api#default" => false}))
    GetWirelessGatewayTaskDefinitionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskName, name: "Name"))
    GetWirelessGatewayTaskDefinitionResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateWirelessGatewayTaskCreate, name: "Update"))
    GetWirelessGatewayTaskDefinitionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionArn, name: "Arn"))
    GetWirelessGatewayTaskDefinitionResponse.type = Types::GetWirelessGatewayTaskDefinitionResponse
    GetWirelessGatewayTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWirelessGatewayTaskRequest.type = Types::GetWirelessGatewayTaskRequest
    GetWirelessGatewayTaskResponse.add_member(:wireless_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "WirelessGatewayId"))
    GetWirelessGatewayTaskResponse.add_member(:wireless_gateway_task_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionId, name: "WirelessGatewayTaskDefinitionId"))
    GetWirelessGatewayTaskResponse.add_member(:last_uplink_received_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "LastUplinkReceivedAt"))
    GetWirelessGatewayTaskResponse.add_member(:task_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "TaskCreatedAt"))
    GetWirelessGatewayTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskStatus, name: "Status"))
    GetWirelessGatewayTaskResponse.type = Types::GetWirelessGatewayTaskResponse
    GlobalIdentity.add_member(:lac, ::Smithy::Schema::Shapes::MemberShape.new(target: LAC, name: "Lac", traits: {"smithy.api#required" => {}}))
    GlobalIdentity.add_member(:geran_cid, ::Smithy::Schema::Shapes::MemberShape.new(target: GeranCid, name: "GeranCid", traits: {"smithy.api#required" => {}}))
    GlobalIdentity.type = Types::GlobalIdentity
    Gnss.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: GnssNav, name: "Payload", traits: {"smithy.api#required" => {}}))
    Gnss.add_member(:capture_time, ::Smithy::Schema::Shapes::MemberShape.new(target: GPST, name: "CaptureTime"))
    Gnss.add_member(:capture_time_accuracy, ::Smithy::Schema::Shapes::MemberShape.new(target: CaptureTimeAccuracy, name: "CaptureTimeAccuracy"))
    Gnss.add_member(:assist_position, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistPosition, name: "AssistPosition"))
    Gnss.add_member(:assist_altitude, ::Smithy::Schema::Shapes::MemberShape.new(target: Coordinate, name: "AssistAltitude"))
    Gnss.add_member(:use2_d_solver, ::Smithy::Schema::Shapes::MemberShape.new(target: Use2DSolver, name: "Use2DSolver", traits: {"smithy.api#default" => false}))
    Gnss.type = Types::Gnss
    GsmList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GsmObj, name: "member")
    GsmLocalId.add_member(:bsic, ::Smithy::Schema::Shapes::MemberShape.new(target: BSIC, name: "Bsic", traits: {"smithy.api#required" => {}}))
    GsmLocalId.add_member(:bcch, ::Smithy::Schema::Shapes::MemberShape.new(target: BCCH, name: "Bcch", traits: {"smithy.api#required" => {}}))
    GsmLocalId.type = Types::GsmLocalId
    GsmNmrList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GsmNmrObj, name: "member")
    GsmNmrObj.add_member(:bsic, ::Smithy::Schema::Shapes::MemberShape.new(target: BSIC, name: "Bsic", traits: {"smithy.api#required" => {}}))
    GsmNmrObj.add_member(:bcch, ::Smithy::Schema::Shapes::MemberShape.new(target: BCCH, name: "Bcch", traits: {"smithy.api#required" => {}}))
    GsmNmrObj.add_member(:rx_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RxLevel, name: "RxLevel"))
    GsmNmrObj.add_member(:global_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalIdentity, name: "GlobalIdentity"))
    GsmNmrObj.type = Types::GsmNmrObj
    GsmObj.add_member(:mcc, ::Smithy::Schema::Shapes::MemberShape.new(target: MCC, name: "Mcc", traits: {"smithy.api#required" => {}}))
    GsmObj.add_member(:mnc, ::Smithy::Schema::Shapes::MemberShape.new(target: MNC, name: "Mnc", traits: {"smithy.api#required" => {}}))
    GsmObj.add_member(:lac, ::Smithy::Schema::Shapes::MemberShape.new(target: LAC, name: "Lac", traits: {"smithy.api#required" => {}}))
    GsmObj.add_member(:geran_cid, ::Smithy::Schema::Shapes::MemberShape.new(target: GeranCid, name: "GeranCid", traits: {"smithy.api#required" => {}}))
    GsmObj.add_member(:gsm_local_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GsmLocalId, name: "GsmLocalId"))
    GsmObj.add_member(:gsm_timing_advance, ::Smithy::Schema::Shapes::MemberShape.new(target: GsmTimingAdvance, name: "GsmTimingAdvance"))
    GsmObj.add_member(:rx_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RxLevel, name: "RxLevel"))
    GsmObj.add_member(:gsm_nmr, ::Smithy::Schema::Shapes::MemberShape.new(target: GsmNmrList, name: "GsmNmr"))
    GsmObj.type = Types::GsmObj
    IdentifierType.add_member(:partner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PartnerAccountId", traits: {"smithy.api#enumValue" => "PartnerAccountId"}))
    IdentifierType.add_member(:dev_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DevEui", traits: {"smithy.api#enumValue" => "DevEui"}))
    IdentifierType.add_member(:gateway_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayEui", traits: {"smithy.api#enumValue" => "GatewayEui"}))
    IdentifierType.add_member(:wireless_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WirelessDeviceId", traits: {"smithy.api#enumValue" => "WirelessDeviceId"}))
    IdentifierType.add_member(:wireless_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WirelessGatewayId", traits: {"smithy.api#enumValue" => "WirelessGatewayId"}))
    ImportTaskStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    ImportTaskStatus.add_member(:initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZED", traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    ImportTaskStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ImportTaskStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ImportTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportTaskStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ImportedSidewalkDevice.add_member(:sidewalk_manufacturing_sn, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkManufacturingSn, name: "SidewalkManufacturingSn"))
    ImportedSidewalkDevice.add_member(:onboarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OnboardStatus, name: "OnboardingStatus"))
    ImportedSidewalkDevice.add_member(:onboarding_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: OnboardStatusReason, name: "OnboardingStatusReason"))
    ImportedSidewalkDevice.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateTime, name: "LastUpdateTime"))
    ImportedSidewalkDevice.type = Types::ImportedSidewalkDevice
    ImportedWirelessDevice.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedSidewalkDevice, name: "Sidewalk"))
    ImportedWirelessDevice.type = Types::ImportedWirelessDevice
    ImportedWirelessDeviceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDevice, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    Ip.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "IpAddress", traits: {"smithy.api#required" => {}}))
    Ip.type = Types::Ip
    JoinEuiFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEuiRange, name: "member")
    JoinEuiRange.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEui, name: "member")
    JoinEventConfiguration.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANJoinEventNotificationConfigurations, name: "LoRaWAN"))
    JoinEventConfiguration.add_member(:wireless_device_id_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "WirelessDeviceIdEventTopic"))
    JoinEventConfiguration.type = Types::JoinEventConfiguration
    JoinResourceTypeEventConfiguration.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANJoinResourceTypeEventConfiguration, name: "LoRaWAN"))
    JoinResourceTypeEventConfiguration.type = Types::JoinResourceTypeEventConfiguration
    ListDestinationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDestinationsRequest.type = Types::ListDestinationsRequest
    ListDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDestinationsResponse.add_member(:destination_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationList, name: "DestinationList"))
    ListDestinationsResponse.type = Types::ListDestinationsResponse
    ListDeviceProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDeviceProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDeviceProfilesRequest.add_member(:device_profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileType, name: "DeviceProfileType", traits: {"smithy.api#httpQuery" => "deviceProfileType"}))
    ListDeviceProfilesRequest.type = Types::ListDeviceProfilesRequest
    ListDeviceProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDeviceProfilesResponse.add_member(:device_profile_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileList, name: "DeviceProfileList"))
    ListDeviceProfilesResponse.type = Types::ListDeviceProfilesResponse
    ListDevicesForWirelessDeviceImportTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    ListDevicesForWirelessDeviceImportTaskRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDevicesForWirelessDeviceImportTaskRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDevicesForWirelessDeviceImportTaskRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OnboardStatus, name: "Status", traits: {"smithy.api#httpQuery" => "status"}))
    ListDevicesForWirelessDeviceImportTaskRequest.type = Types::ListDevicesForWirelessDeviceImportTaskRequest
    ListDevicesForWirelessDeviceImportTaskResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDevicesForWirelessDeviceImportTaskResponse.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName"))
    ListDevicesForWirelessDeviceImportTaskResponse.add_member(:imported_wireless_device_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceList, name: "ImportedWirelessDeviceList"))
    ListDevicesForWirelessDeviceImportTaskResponse.type = Types::ListDevicesForWirelessDeviceImportTaskResponse
    ListEventConfigurationsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    ListEventConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListEventConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEventConfigurationsRequest.type = Types::ListEventConfigurationsRequest
    ListEventConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventConfigurationsResponse.add_member(:event_configurations_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventConfigurationsList, name: "EventConfigurationsList"))
    ListEventConfigurationsResponse.type = Types::ListEventConfigurationsResponse
    ListFuotaTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFuotaTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListFuotaTasksRequest.type = Types::ListFuotaTasksRequest
    ListFuotaTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFuotaTasksResponse.add_member(:fuota_task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskList, name: "FuotaTaskList"))
    ListFuotaTasksResponse.type = Types::ListFuotaTasksResponse
    ListMulticastGroupsByFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMulticastGroupsByFuotaTaskRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMulticastGroupsByFuotaTaskRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListMulticastGroupsByFuotaTaskRequest.type = Types::ListMulticastGroupsByFuotaTaskRequest
    ListMulticastGroupsByFuotaTaskResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMulticastGroupsByFuotaTaskResponse.add_member(:multicast_group_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupListByFuotaTask, name: "MulticastGroupList"))
    ListMulticastGroupsByFuotaTaskResponse.type = Types::ListMulticastGroupsByFuotaTaskResponse
    ListMulticastGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMulticastGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListMulticastGroupsRequest.type = Types::ListMulticastGroupsRequest
    ListMulticastGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListMulticastGroupsResponse.add_member(:multicast_group_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupList, name: "MulticastGroupList"))
    ListMulticastGroupsResponse.type = Types::ListMulticastGroupsResponse
    ListNetworkAnalyzerConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListNetworkAnalyzerConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNetworkAnalyzerConfigurationsRequest.type = Types::ListNetworkAnalyzerConfigurationsRequest
    ListNetworkAnalyzerConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNetworkAnalyzerConfigurationsResponse.add_member(:network_analyzer_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationList, name: "NetworkAnalyzerConfigurationList"))
    ListNetworkAnalyzerConfigurationsResponse.type = Types::ListNetworkAnalyzerConfigurationsResponse
    ListPartnerAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPartnerAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListPartnerAccountsRequest.type = Types::ListPartnerAccountsRequest
    ListPartnerAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPartnerAccountsResponse.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkAccountList, name: "Sidewalk"))
    ListPartnerAccountsResponse.type = Types::ListPartnerAccountsResponse
    ListPositionConfigurationsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListPositionConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListPositionConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPositionConfigurationsRequest.type = Types::ListPositionConfigurationsRequest
    ListPositionConfigurationsResponse.add_member(:position_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionConfigurationList, name: "PositionConfigurationList"))
    ListPositionConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPositionConfigurationsResponse.type = Types::ListPositionConfigurationsResponse
    ListQueuedMessagesRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListQueuedMessagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListQueuedMessagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListQueuedMessagesRequest.add_member(:wireless_device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceType, name: "WirelessDeviceType", traits: {"smithy.api#httpQuery" => "WirelessDeviceType"}))
    ListQueuedMessagesRequest.type = Types::ListQueuedMessagesRequest
    ListQueuedMessagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListQueuedMessagesResponse.add_member(:downlink_queue_messages_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkQueueMessagesList, name: "DownlinkQueueMessagesList"))
    ListQueuedMessagesResponse.type = Types::ListQueuedMessagesResponse
    ListServiceProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListServiceProfilesRequest.type = Types::ListServiceProfilesRequest
    ListServiceProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServiceProfilesResponse.add_member(:service_profile_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileList, name: "ServiceProfileList"))
    ListServiceProfilesResponse.type = Types::ListServiceProfilesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWirelessDeviceImportTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWirelessDeviceImportTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWirelessDeviceImportTasksRequest.type = Types::ListWirelessDeviceImportTasksRequest
    ListWirelessDeviceImportTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWirelessDeviceImportTasksResponse.add_member(:wireless_device_import_task_list, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceImportTaskList, name: "WirelessDeviceImportTaskList"))
    ListWirelessDeviceImportTasksResponse.type = Types::ListWirelessDeviceImportTasksResponse
    ListWirelessDevicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWirelessDevicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWirelessDevicesRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName", traits: {"smithy.api#httpQuery" => "destinationName"}))
    ListWirelessDevicesRequest.add_member(:device_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "DeviceProfileId", traits: {"smithy.api#httpQuery" => "deviceProfileId"}))
    ListWirelessDevicesRequest.add_member(:service_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileId, name: "ServiceProfileId", traits: {"smithy.api#httpQuery" => "serviceProfileId"}))
    ListWirelessDevicesRequest.add_member(:wireless_device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceType, name: "WirelessDeviceType", traits: {"smithy.api#httpQuery" => "wirelessDeviceType"}))
    ListWirelessDevicesRequest.add_member(:fuota_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "FuotaTaskId", traits: {"smithy.api#httpQuery" => "fuotaTaskId"}))
    ListWirelessDevicesRequest.add_member(:multicast_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "MulticastGroupId", traits: {"smithy.api#httpQuery" => "multicastGroupId"}))
    ListWirelessDevicesRequest.type = Types::ListWirelessDevicesRequest
    ListWirelessDevicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWirelessDevicesResponse.add_member(:wireless_device_list, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceStatisticsList, name: "WirelessDeviceList"))
    ListWirelessDevicesResponse.type = Types::ListWirelessDevicesResponse
    ListWirelessGatewayTaskDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWirelessGatewayTaskDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWirelessGatewayTaskDefinitionsRequest.add_member(:task_definition_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionType, name: "TaskDefinitionType", traits: {"smithy.api#httpQuery" => "taskDefinitionType"}))
    ListWirelessGatewayTaskDefinitionsRequest.type = Types::ListWirelessGatewayTaskDefinitionsRequest
    ListWirelessGatewayTaskDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWirelessGatewayTaskDefinitionsResponse.add_member(:task_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionList, name: "TaskDefinitions"))
    ListWirelessGatewayTaskDefinitionsResponse.type = Types::ListWirelessGatewayTaskDefinitionsResponse
    ListWirelessGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWirelessGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWirelessGatewaysRequest.type = Types::ListWirelessGatewaysRequest
    ListWirelessGatewaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWirelessGatewaysResponse.add_member(:wireless_gateway_list, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayStatisticsList, name: "WirelessGatewayList"))
    ListWirelessGatewaysResponse.type = Types::ListWirelessGatewaysResponse
    LoRaWANConnectionStatusEventNotificationConfigurations.add_member(:gateway_eui_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "GatewayEuiEventTopic"))
    LoRaWANConnectionStatusEventNotificationConfigurations.type = Types::LoRaWANConnectionStatusEventNotificationConfigurations
    LoRaWANConnectionStatusResourceTypeEventConfiguration.add_member(:wireless_gateway_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "WirelessGatewayEventTopic"))
    LoRaWANConnectionStatusResourceTypeEventConfiguration.type = Types::LoRaWANConnectionStatusResourceTypeEventConfiguration
    LoRaWANDevice.add_member(:dev_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: DevEui, name: "DevEui"))
    LoRaWANDevice.add_member(:device_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "DeviceProfileId"))
    LoRaWANDevice.add_member(:service_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileId, name: "ServiceProfileId"))
    LoRaWANDevice.add_member(:otaa_v1_1, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaaV11, name: "OtaaV1_1"))
    LoRaWANDevice.add_member(:otaa_v1_0_x, ::Smithy::Schema::Shapes::MemberShape.new(target: OtaaV10X, name: "OtaaV1_0_x"))
    LoRaWANDevice.add_member(:abp_v1_1, ::Smithy::Schema::Shapes::MemberShape.new(target: AbpV11, name: "AbpV1_1"))
    LoRaWANDevice.add_member(:abp_v1_0_x, ::Smithy::Schema::Shapes::MemberShape.new(target: AbpV10X, name: "AbpV1_0_x"))
    LoRaWANDevice.add_member(:f_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: FPorts, name: "FPorts"))
    LoRaWANDevice.type = Types::LoRaWANDevice
    LoRaWANDeviceMetadata.add_member(:dev_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: DevEui, name: "DevEui"))
    LoRaWANDeviceMetadata.add_member(:f_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FPort"))
    LoRaWANDeviceMetadata.add_member(:data_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DataRate"))
    LoRaWANDeviceMetadata.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Frequency"))
    LoRaWANDeviceMetadata.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "Timestamp"))
    LoRaWANDeviceMetadata.add_member(:gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGatewayMetadataList, name: "Gateways"))
    LoRaWANDeviceMetadata.add_member(:public_gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANPublicGatewayMetadataList, name: "PublicGateways"))
    LoRaWANDeviceMetadata.type = Types::LoRaWANDeviceMetadata
    LoRaWANDeviceProfile.add_member(:supports_class_b, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportsClassB, name: "SupportsClassB", traits: {"smithy.api#default" => false}))
    LoRaWANDeviceProfile.add_member(:class_b_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ClassBTimeout, name: "ClassBTimeout"))
    LoRaWANDeviceProfile.add_member(:ping_slot_period, ::Smithy::Schema::Shapes::MemberShape.new(target: PingSlotPeriod, name: "PingSlotPeriod"))
    LoRaWANDeviceProfile.add_member(:ping_slot_dr, ::Smithy::Schema::Shapes::MemberShape.new(target: PingSlotDr, name: "PingSlotDr"))
    LoRaWANDeviceProfile.add_member(:ping_slot_freq, ::Smithy::Schema::Shapes::MemberShape.new(target: PingSlotFreq, name: "PingSlotFreq"))
    LoRaWANDeviceProfile.add_member(:supports_class_c, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportsClassC, name: "SupportsClassC", traits: {"smithy.api#default" => false}))
    LoRaWANDeviceProfile.add_member(:class_c_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ClassCTimeout, name: "ClassCTimeout"))
    LoRaWANDeviceProfile.add_member(:mac_version, ::Smithy::Schema::Shapes::MemberShape.new(target: MacVersion, name: "MacVersion"))
    LoRaWANDeviceProfile.add_member(:reg_params_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RegParamsRevision, name: "RegParamsRevision"))
    LoRaWANDeviceProfile.add_member(:rx_delay1, ::Smithy::Schema::Shapes::MemberShape.new(target: RxDelay1, name: "RxDelay1"))
    LoRaWANDeviceProfile.add_member(:rx_dr_offset1, ::Smithy::Schema::Shapes::MemberShape.new(target: RxDrOffset1, name: "RxDrOffset1"))
    LoRaWANDeviceProfile.add_member(:rx_data_rate2, ::Smithy::Schema::Shapes::MemberShape.new(target: RxDataRate2, name: "RxDataRate2"))
    LoRaWANDeviceProfile.add_member(:rx_freq2, ::Smithy::Schema::Shapes::MemberShape.new(target: RxFreq2, name: "RxFreq2"))
    LoRaWANDeviceProfile.add_member(:factory_preset_freqs_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FactoryPresetFreqsList, name: "FactoryPresetFreqsList"))
    LoRaWANDeviceProfile.add_member(:max_eirp, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxEirp, name: "MaxEirp"))
    LoRaWANDeviceProfile.add_member(:max_duty_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDutyCycle, name: "MaxDutyCycle"))
    LoRaWANDeviceProfile.add_member(:rf_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RfRegion, name: "RfRegion"))
    LoRaWANDeviceProfile.add_member(:supports_join, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportsJoin, name: "SupportsJoin"))
    LoRaWANDeviceProfile.add_member(:supports32_bit_f_cnt, ::Smithy::Schema::Shapes::MemberShape.new(target: Supports32BitFCnt, name: "Supports32BitFCnt", traits: {"smithy.api#default" => false}))
    LoRaWANDeviceProfile.type = Types::LoRaWANDeviceProfile
    LoRaWANFuotaTask.add_member(:rf_region, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedRfRegion, name: "RfRegion"))
    LoRaWANFuotaTask.type = Types::LoRaWANFuotaTask
    LoRaWANFuotaTaskGetInfo.add_member(:rf_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RfRegion, name: "RfRegion"))
    LoRaWANFuotaTaskGetInfo.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "StartTime"))
    LoRaWANFuotaTaskGetInfo.type = Types::LoRaWANFuotaTaskGetInfo
    LoRaWANGateway.add_member(:gateway_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayEui, name: "GatewayEui"))
    LoRaWANGateway.add_member(:rf_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RfRegion, name: "RfRegion"))
    LoRaWANGateway.add_member(:join_eui_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEuiFilters, name: "JoinEuiFilters"))
    LoRaWANGateway.add_member(:net_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NetIdFilters, name: "NetIdFilters"))
    LoRaWANGateway.add_member(:sub_bands, ::Smithy::Schema::Shapes::MemberShape.new(target: SubBands, name: "SubBands"))
    LoRaWANGateway.add_member(:beaconing, ::Smithy::Schema::Shapes::MemberShape.new(target: Beaconing, name: "Beaconing"))
    LoRaWANGateway.add_member(:max_eirp, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayMaxEirp, name: "MaxEirp"))
    LoRaWANGateway.type = Types::LoRaWANGateway
    LoRaWANGatewayCurrentVersion.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGatewayVersion, name: "CurrentVersion"))
    LoRaWANGatewayCurrentVersion.type = Types::LoRaWANGatewayCurrentVersion
    LoRaWANGatewayMetadata.add_member(:gateway_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayEui, name: "GatewayEui"))
    LoRaWANGatewayMetadata.add_member(:snr, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Snr"))
    LoRaWANGatewayMetadata.add_member(:rssi, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Rssi"))
    LoRaWANGatewayMetadata.type = Types::LoRaWANGatewayMetadata
    LoRaWANGatewayMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGatewayMetadata, name: "member")
    LoRaWANGatewayVersion.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "PackageVersion"))
    LoRaWANGatewayVersion.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: Model, name: "Model"))
    LoRaWANGatewayVersion.add_member(:station, ::Smithy::Schema::Shapes::MemberShape.new(target: Station, name: "Station"))
    LoRaWANGatewayVersion.type = Types::LoRaWANGatewayVersion
    LoRaWANGetServiceProfileInfo.add_member(:ul_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: UlRate, name: "UlRate"))
    LoRaWANGetServiceProfileInfo.add_member(:ul_bucket_size, ::Smithy::Schema::Shapes::MemberShape.new(target: UlBucketSize, name: "UlBucketSize"))
    LoRaWANGetServiceProfileInfo.add_member(:ul_rate_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UlRatePolicy, name: "UlRatePolicy"))
    LoRaWANGetServiceProfileInfo.add_member(:dl_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: DlRate, name: "DlRate"))
    LoRaWANGetServiceProfileInfo.add_member(:dl_bucket_size, ::Smithy::Schema::Shapes::MemberShape.new(target: DlBucketSize, name: "DlBucketSize"))
    LoRaWANGetServiceProfileInfo.add_member(:dl_rate_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DlRatePolicy, name: "DlRatePolicy"))
    LoRaWANGetServiceProfileInfo.add_member(:add_gw_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AddGwMetadata, name: "AddGwMetadata", traits: {"smithy.api#default" => false}))
    LoRaWANGetServiceProfileInfo.add_member(:dev_status_req_freq, ::Smithy::Schema::Shapes::MemberShape.new(target: DevStatusReqFreq, name: "DevStatusReqFreq"))
    LoRaWANGetServiceProfileInfo.add_member(:report_dev_status_battery, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDevStatusBattery, name: "ReportDevStatusBattery", traits: {"smithy.api#default" => false}))
    LoRaWANGetServiceProfileInfo.add_member(:report_dev_status_margin, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDevStatusMargin, name: "ReportDevStatusMargin", traits: {"smithy.api#default" => false}))
    LoRaWANGetServiceProfileInfo.add_member(:dr_min, ::Smithy::Schema::Shapes::MemberShape.new(target: DrMin, name: "DrMin", traits: {"smithy.api#default" => 0}))
    LoRaWANGetServiceProfileInfo.add_member(:dr_max, ::Smithy::Schema::Shapes::MemberShape.new(target: DrMax, name: "DrMax", traits: {"smithy.api#default" => 0}))
    LoRaWANGetServiceProfileInfo.add_member(:channel_mask, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelMask, name: "ChannelMask"))
    LoRaWANGetServiceProfileInfo.add_member(:pr_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: PrAllowed, name: "PrAllowed", traits: {"smithy.api#default" => false}))
    LoRaWANGetServiceProfileInfo.add_member(:hr_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: HrAllowed, name: "HrAllowed", traits: {"smithy.api#default" => false}))
    LoRaWANGetServiceProfileInfo.add_member(:ra_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: RaAllowed, name: "RaAllowed", traits: {"smithy.api#default" => false}))
    LoRaWANGetServiceProfileInfo.add_member(:nwk_geo_loc, ::Smithy::Schema::Shapes::MemberShape.new(target: NwkGeoLoc, name: "NwkGeoLoc", traits: {"smithy.api#default" => false}))
    LoRaWANGetServiceProfileInfo.add_member(:target_per, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPer, name: "TargetPer", traits: {"smithy.api#default" => 0}))
    LoRaWANGetServiceProfileInfo.add_member(:min_gw_diversity, ::Smithy::Schema::Shapes::MemberShape.new(target: MinGwDiversity, name: "MinGwDiversity"))
    LoRaWANGetServiceProfileInfo.add_member(:tx_power_index_min, ::Smithy::Schema::Shapes::MemberShape.new(target: TxPowerIndexMin, name: "TxPowerIndexMin"))
    LoRaWANGetServiceProfileInfo.add_member(:tx_power_index_max, ::Smithy::Schema::Shapes::MemberShape.new(target: TxPowerIndexMax, name: "TxPowerIndexMax"))
    LoRaWANGetServiceProfileInfo.add_member(:nb_trans_min, ::Smithy::Schema::Shapes::MemberShape.new(target: NbTransMin, name: "NbTransMin"))
    LoRaWANGetServiceProfileInfo.add_member(:nb_trans_max, ::Smithy::Schema::Shapes::MemberShape.new(target: NbTransMax, name: "NbTransMax"))
    LoRaWANGetServiceProfileInfo.type = Types::LoRaWANGetServiceProfileInfo
    LoRaWANJoinEventNotificationConfigurations.add_member(:dev_eui_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "DevEuiEventTopic"))
    LoRaWANJoinEventNotificationConfigurations.type = Types::LoRaWANJoinEventNotificationConfigurations
    LoRaWANJoinResourceTypeEventConfiguration.add_member(:wireless_device_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "WirelessDeviceEventTopic"))
    LoRaWANJoinResourceTypeEventConfiguration.type = Types::LoRaWANJoinResourceTypeEventConfiguration
    LoRaWANListDevice.add_member(:dev_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: DevEui, name: "DevEui"))
    LoRaWANListDevice.type = Types::LoRaWANListDevice
    LoRaWANMulticast.add_member(:rf_region, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedRfRegion, name: "RfRegion"))
    LoRaWANMulticast.add_member(:dl_class, ::Smithy::Schema::Shapes::MemberShape.new(target: DlClass, name: "DlClass"))
    LoRaWANMulticast.add_member(:participating_gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingGatewaysMulticast, name: "ParticipatingGateways"))
    LoRaWANMulticast.type = Types::LoRaWANMulticast
    LoRaWANMulticastGet.add_member(:rf_region, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedRfRegion, name: "RfRegion"))
    LoRaWANMulticastGet.add_member(:dl_class, ::Smithy::Schema::Shapes::MemberShape.new(target: DlClass, name: "DlClass"))
    LoRaWANMulticastGet.add_member(:number_of_devices_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfDevicesRequested, name: "NumberOfDevicesRequested"))
    LoRaWANMulticastGet.add_member(:number_of_devices_in_group, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfDevicesInGroup, name: "NumberOfDevicesInGroup"))
    LoRaWANMulticastGet.add_member(:participating_gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingGatewaysMulticast, name: "ParticipatingGateways"))
    LoRaWANMulticastGet.type = Types::LoRaWANMulticastGet
    LoRaWANMulticastMetadata.add_member(:f_port, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "FPort"))
    LoRaWANMulticastMetadata.type = Types::LoRaWANMulticastMetadata
    LoRaWANMulticastSession.add_member(:dl_dr, ::Smithy::Schema::Shapes::MemberShape.new(target: DlDr, name: "DlDr"))
    LoRaWANMulticastSession.add_member(:dl_freq, ::Smithy::Schema::Shapes::MemberShape.new(target: DlFreq, name: "DlFreq"))
    LoRaWANMulticastSession.add_member(:session_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStartTimeTimestamp, name: "SessionStartTime"))
    LoRaWANMulticastSession.add_member(:session_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTimeout, name: "SessionTimeout"))
    LoRaWANMulticastSession.add_member(:ping_slot_period, ::Smithy::Schema::Shapes::MemberShape.new(target: PingSlotPeriod, name: "PingSlotPeriod"))
    LoRaWANMulticastSession.type = Types::LoRaWANMulticastSession
    LoRaWANPublicGatewayMetadata.add_member(:provider_net_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderNetId, name: "ProviderNetId"))
    LoRaWANPublicGatewayMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    LoRaWANPublicGatewayMetadata.add_member(:rssi, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Rssi"))
    LoRaWANPublicGatewayMetadata.add_member(:snr, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Snr"))
    LoRaWANPublicGatewayMetadata.add_member(:rf_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RfRegion, name: "RfRegion"))
    LoRaWANPublicGatewayMetadata.add_member(:dl_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: DlAllowed, name: "DlAllowed"))
    LoRaWANPublicGatewayMetadata.type = Types::LoRaWANPublicGatewayMetadata
    LoRaWANPublicGatewayMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANPublicGatewayMetadata, name: "member")
    LoRaWANSendDataToDevice.add_member(:f_port, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "FPort"))
    LoRaWANSendDataToDevice.add_member(:participating_gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingGateways, name: "ParticipatingGateways"))
    LoRaWANSendDataToDevice.type = Types::LoRaWANSendDataToDevice
    LoRaWANServiceProfile.add_member(:add_gw_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AddGwMetadata, name: "AddGwMetadata", traits: {"smithy.api#default" => false}))
    LoRaWANServiceProfile.add_member(:dr_min, ::Smithy::Schema::Shapes::MemberShape.new(target: DrMinBox, name: "DrMin"))
    LoRaWANServiceProfile.add_member(:dr_max, ::Smithy::Schema::Shapes::MemberShape.new(target: DrMaxBox, name: "DrMax"))
    LoRaWANServiceProfile.add_member(:pr_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: PrAllowed, name: "PrAllowed", traits: {"smithy.api#default" => false}))
    LoRaWANServiceProfile.add_member(:ra_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: RaAllowed, name: "RaAllowed", traits: {"smithy.api#default" => false}))
    LoRaWANServiceProfile.add_member(:tx_power_index_min, ::Smithy::Schema::Shapes::MemberShape.new(target: TxPowerIndexMin, name: "TxPowerIndexMin"))
    LoRaWANServiceProfile.add_member(:tx_power_index_max, ::Smithy::Schema::Shapes::MemberShape.new(target: TxPowerIndexMax, name: "TxPowerIndexMax"))
    LoRaWANServiceProfile.add_member(:nb_trans_min, ::Smithy::Schema::Shapes::MemberShape.new(target: NbTransMin, name: "NbTransMin"))
    LoRaWANServiceProfile.add_member(:nb_trans_max, ::Smithy::Schema::Shapes::MemberShape.new(target: NbTransMax, name: "NbTransMax"))
    LoRaWANServiceProfile.type = Types::LoRaWANServiceProfile
    LoRaWANStartFuotaTask.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "StartTime"))
    LoRaWANStartFuotaTask.type = Types::LoRaWANStartFuotaTask
    LoRaWANUpdateDevice.add_member(:device_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "DeviceProfileId"))
    LoRaWANUpdateDevice.add_member(:service_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileId, name: "ServiceProfileId"))
    LoRaWANUpdateDevice.add_member(:abp_v1_1, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAbpV11, name: "AbpV1_1"))
    LoRaWANUpdateDevice.add_member(:abp_v1_0_x, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAbpV10X, name: "AbpV1_0_x"))
    LoRaWANUpdateDevice.add_member(:f_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFPorts, name: "FPorts"))
    LoRaWANUpdateDevice.type = Types::LoRaWANUpdateDevice
    LoRaWANUpdateGatewayTaskCreate.add_member(:update_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSignature, name: "UpdateSignature"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:sig_key_crc, ::Smithy::Schema::Shapes::MemberShape.new(target: Crc, name: "SigKeyCrc"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGatewayVersion, name: "CurrentVersion"))
    LoRaWANUpdateGatewayTaskCreate.add_member(:update_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGatewayVersion, name: "UpdateVersion"))
    LoRaWANUpdateGatewayTaskCreate.type = Types::LoRaWANUpdateGatewayTaskCreate
    LoRaWANUpdateGatewayTaskEntry.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGatewayVersion, name: "CurrentVersion"))
    LoRaWANUpdateGatewayTaskEntry.add_member(:update_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGatewayVersion, name: "UpdateVersion"))
    LoRaWANUpdateGatewayTaskEntry.type = Types::LoRaWANUpdateGatewayTaskEntry
    LogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    LogLevel.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    LteList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LteObj, name: "member")
    LteLocalId.add_member(:pci, ::Smithy::Schema::Shapes::MemberShape.new(target: PCI, name: "Pci", traits: {"smithy.api#required" => {}}))
    LteLocalId.add_member(:earfcn, ::Smithy::Schema::Shapes::MemberShape.new(target: EARFCN, name: "Earfcn", traits: {"smithy.api#required" => {}}))
    LteLocalId.type = Types::LteLocalId
    LteNmrList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LteNmrObj, name: "member")
    LteNmrObj.add_member(:pci, ::Smithy::Schema::Shapes::MemberShape.new(target: PCI, name: "Pci", traits: {"smithy.api#required" => {}}))
    LteNmrObj.add_member(:earfcn, ::Smithy::Schema::Shapes::MemberShape.new(target: EARFCN, name: "Earfcn", traits: {"smithy.api#required" => {}}))
    LteNmrObj.add_member(:eutran_cid, ::Smithy::Schema::Shapes::MemberShape.new(target: EutranCid, name: "EutranCid", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 0}))
    LteNmrObj.add_member(:rsrp, ::Smithy::Schema::Shapes::MemberShape.new(target: RSRP, name: "Rsrp"))
    LteNmrObj.add_member(:rsrq, ::Smithy::Schema::Shapes::MemberShape.new(target: RSRQ, name: "Rsrq"))
    LteNmrObj.type = Types::LteNmrObj
    LteObj.add_member(:mcc, ::Smithy::Schema::Shapes::MemberShape.new(target: MCC, name: "Mcc", traits: {"smithy.api#required" => {}}))
    LteObj.add_member(:mnc, ::Smithy::Schema::Shapes::MemberShape.new(target: MNC, name: "Mnc", traits: {"smithy.api#required" => {}}))
    LteObj.add_member(:eutran_cid, ::Smithy::Schema::Shapes::MemberShape.new(target: EutranCid, name: "EutranCid", traits: {"smithy.api#required" => {}}))
    LteObj.add_member(:tac, ::Smithy::Schema::Shapes::MemberShape.new(target: TAC, name: "Tac"))
    LteObj.add_member(:lte_local_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LteLocalId, name: "LteLocalId"))
    LteObj.add_member(:lte_timing_advance, ::Smithy::Schema::Shapes::MemberShape.new(target: LteTimingAdvance, name: "LteTimingAdvance"))
    LteObj.add_member(:rsrp, ::Smithy::Schema::Shapes::MemberShape.new(target: RSRP, name: "Rsrp"))
    LteObj.add_member(:rsrq, ::Smithy::Schema::Shapes::MemberShape.new(target: RSRQ, name: "Rsrq"))
    LteObj.add_member(:nr_capable, ::Smithy::Schema::Shapes::MemberShape.new(target: NRCapable, name: "NrCapable", traits: {"smithy.api#default" => false}))
    LteObj.add_member(:lte_nmr, ::Smithy::Schema::Shapes::MemberShape.new(target: LteNmrList, name: "LteNmr"))
    LteObj.type = Types::LteObj
    MessageDeliveryStatusEventConfiguration.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkEventNotificationConfigurations, name: "Sidewalk"))
    MessageDeliveryStatusEventConfiguration.add_member(:wireless_device_id_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "WirelessDeviceIdEventTopic"))
    MessageDeliveryStatusEventConfiguration.type = Types::MessageDeliveryStatusEventConfiguration
    MessageDeliveryStatusResourceTypeEventConfiguration.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkResourceTypeEventConfiguration, name: "Sidewalk"))
    MessageDeliveryStatusResourceTypeEventConfiguration.type = Types::MessageDeliveryStatusResourceTypeEventConfiguration
    MessageType.add_member(:custom_command_id_notify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_COMMAND_ID_NOTIFY", traits: {"smithy.api#enumValue" => "CUSTOM_COMMAND_ID_NOTIFY"}))
    MessageType.add_member(:custom_command_id_get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_COMMAND_ID_GET", traits: {"smithy.api#enumValue" => "CUSTOM_COMMAND_ID_GET"}))
    MessageType.add_member(:custom_command_id_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_COMMAND_ID_SET", traits: {"smithy.api#enumValue" => "CUSTOM_COMMAND_ID_SET"}))
    MessageType.add_member(:custom_command_id_resp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_COMMAND_ID_RESP", traits: {"smithy.api#enumValue" => "CUSTOM_COMMAND_ID_RESP"}))
    MetricName.add_member(:device_rssi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceRSSI", traits: {"smithy.api#enumValue" => "DeviceRSSI"}))
    MetricName.add_member(:device_snr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceSNR", traits: {"smithy.api#enumValue" => "DeviceSNR"}))
    MetricName.add_member(:device_roaming_rssi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceRoamingRSSI", traits: {"smithy.api#enumValue" => "DeviceRoamingRSSI"}))
    MetricName.add_member(:device_roaming_snr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceRoamingSNR", traits: {"smithy.api#enumValue" => "DeviceRoamingSNR"}))
    MetricName.add_member(:device_uplink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceUplinkCount", traits: {"smithy.api#enumValue" => "DeviceUplinkCount"}))
    MetricName.add_member(:device_downlink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceDownlinkCount", traits: {"smithy.api#enumValue" => "DeviceDownlinkCount"}))
    MetricName.add_member(:device_uplink_lost_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceUplinkLostCount", traits: {"smithy.api#enumValue" => "DeviceUplinkLostCount"}))
    MetricName.add_member(:device_uplink_lost_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceUplinkLostRate", traits: {"smithy.api#enumValue" => "DeviceUplinkLostRate"}))
    MetricName.add_member(:device_join_request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceJoinRequestCount", traits: {"smithy.api#enumValue" => "DeviceJoinRequestCount"}))
    MetricName.add_member(:device_join_accept_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceJoinAcceptCount", traits: {"smithy.api#enumValue" => "DeviceJoinAcceptCount"}))
    MetricName.add_member(:device_roaming_uplink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceRoamingUplinkCount", traits: {"smithy.api#enumValue" => "DeviceRoamingUplinkCount"}))
    MetricName.add_member(:device_roaming_downlink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceRoamingDownlinkCount", traits: {"smithy.api#enumValue" => "DeviceRoamingDownlinkCount"}))
    MetricName.add_member(:gateway_up_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayUpTime", traits: {"smithy.api#enumValue" => "GatewayUpTime"}))
    MetricName.add_member(:gateway_down_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayDownTime", traits: {"smithy.api#enumValue" => "GatewayDownTime"}))
    MetricName.add_member(:gateway_rssi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayRSSI", traits: {"smithy.api#enumValue" => "GatewayRSSI"}))
    MetricName.add_member(:gateway_snr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewaySNR", traits: {"smithy.api#enumValue" => "GatewaySNR"}))
    MetricName.add_member(:gateway_uplink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayUplinkCount", traits: {"smithy.api#enumValue" => "GatewayUplinkCount"}))
    MetricName.add_member(:gateway_downlink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayDownlinkCount", traits: {"smithy.api#enumValue" => "GatewayDownlinkCount"}))
    MetricName.add_member(:gateway_join_request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayJoinRequestCount", traits: {"smithy.api#enumValue" => "GatewayJoinRequestCount"}))
    MetricName.add_member(:gateway_join_accept_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayJoinAcceptCount", traits: {"smithy.api#enumValue" => "GatewayJoinAcceptCount"}))
    MetricName.add_member(:aws_account_uplink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountUplinkCount", traits: {"smithy.api#enumValue" => "AwsAccountUplinkCount"}))
    MetricName.add_member(:aws_account_downlink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountDownlinkCount", traits: {"smithy.api#enumValue" => "AwsAccountDownlinkCount"}))
    MetricName.add_member(:aws_account_uplink_lost_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountUplinkLostCount", traits: {"smithy.api#enumValue" => "AwsAccountUplinkLostCount"}))
    MetricName.add_member(:aws_account_uplink_lost_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountUplinkLostRate", traits: {"smithy.api#enumValue" => "AwsAccountUplinkLostRate"}))
    MetricName.add_member(:aws_account_join_request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountJoinRequestCount", traits: {"smithy.api#enumValue" => "AwsAccountJoinRequestCount"}))
    MetricName.add_member(:aws_account_join_accept_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountJoinAcceptCount", traits: {"smithy.api#enumValue" => "AwsAccountJoinAcceptCount"}))
    MetricName.add_member(:aws_account_roaming_uplink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountRoamingUplinkCount", traits: {"smithy.api#enumValue" => "AwsAccountRoamingUplinkCount"}))
    MetricName.add_member(:aws_account_roaming_downlink_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountRoamingDownlinkCount", traits: {"smithy.api#enumValue" => "AwsAccountRoamingDownlinkCount"}))
    MetricName.add_member(:aws_account_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountDeviceCount", traits: {"smithy.api#enumValue" => "AwsAccountDeviceCount"}))
    MetricName.add_member(:aws_account_gateway_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountGatewayCount", traits: {"smithy.api#enumValue" => "AwsAccountGatewayCount"}))
    MetricName.add_member(:aws_account_active_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountActiveDeviceCount", traits: {"smithy.api#enumValue" => "AwsAccountActiveDeviceCount"}))
    MetricName.add_member(:aws_account_active_gateway_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsAccountActiveGatewayCount", traits: {"smithy.api#enumValue" => "AwsAccountActiveGatewayCount"}))
    MetricQueryStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    MetricQueryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    MetricQueryTimestamps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryTimestamp, name: "member")
    MetricQueryValue.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: Min, name: "Min"))
    MetricQueryValue.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Max, name: "Max"))
    MetricQueryValue.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: Sum, name: "Sum"))
    MetricQueryValue.add_member(:avg, ::Smithy::Schema::Shapes::MemberShape.new(target: Avg, name: "Avg"))
    MetricQueryValue.add_member(:std, ::Smithy::Schema::Shapes::MemberShape.new(target: Std, name: "Std"))
    MetricQueryValue.add_member(:p90, ::Smithy::Schema::Shapes::MemberShape.new(target: P90, name: "P90"))
    MetricQueryValue.type = Types::MetricQueryValue
    MetricQueryValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryValue, name: "member")
    MulticastFrameInfo.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MulticastFrameInfo.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MulticastGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id"))
    MulticastGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupArn, name: "Arn"))
    MulticastGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupName, name: "Name"))
    MulticastGroup.type = Types::MulticastGroup
    MulticastGroupByFuotaTask.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id"))
    MulticastGroupByFuotaTask.type = Types::MulticastGroupByFuotaTask
    MulticastGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroup, name: "member")
    MulticastGroupListByFuotaTask.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupByFuotaTask, name: "member")
    MulticastWirelessMetadata.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANMulticastMetadata, name: "LoRaWAN"))
    MulticastWirelessMetadata.type = Types::MulticastWirelessMetadata
    NetIdFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetId, name: "member")
    NetworkAnalyzerConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurations, name: "member")
    NetworkAnalyzerConfigurations.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationArn, name: "Arn"))
    NetworkAnalyzerConfigurations.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationName, name: "Name"))
    NetworkAnalyzerConfigurations.type = Types::NetworkAnalyzerConfigurations
    NetworkAnalyzerMulticastGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "member")
    OnboardStatus.add_member(:initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZED", traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    OnboardStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    OnboardStatus.add_member(:onboarded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONBOARDED", traits: {"smithy.api#enumValue" => "ONBOARDED"}))
    OnboardStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    OtaaV10X.add_member(:app_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppKey, name: "AppKey"))
    OtaaV10X.add_member(:app_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: AppEui, name: "AppEui"))
    OtaaV10X.add_member(:join_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEui, name: "JoinEui"))
    OtaaV10X.add_member(:gen_app_key, ::Smithy::Schema::Shapes::MemberShape.new(target: GenAppKey, name: "GenAppKey"))
    OtaaV10X.type = Types::OtaaV10X
    OtaaV11.add_member(:app_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppKey, name: "AppKey"))
    OtaaV11.add_member(:nwk_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NwkKey, name: "NwkKey"))
    OtaaV11.add_member(:join_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEui, name: "JoinEui"))
    OtaaV11.type = Types::OtaaV11
    ParticipatingGateways.add_member(:downlink_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DownlinkMode, name: "DownlinkMode", traits: {"smithy.api#required" => {}}))
    ParticipatingGateways.add_member(:gateway_list, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayList, name: "GatewayList", traits: {"smithy.api#required" => {}}))
    ParticipatingGateways.add_member(:transmission_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: TransmissionInterval, name: "TransmissionInterval", traits: {"smithy.api#required" => {}}))
    ParticipatingGateways.type = Types::ParticipatingGateways
    ParticipatingGatewaysMulticast.add_member(:gateway_list, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayListMulticast, name: "GatewayList"))
    ParticipatingGatewaysMulticast.add_member(:transmission_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: TransmissionIntervalMulticast, name: "TransmissionInterval"))
    ParticipatingGatewaysMulticast.type = Types::ParticipatingGatewaysMulticast
    PartnerType.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sidewalk", traits: {"smithy.api#enumValue" => "Sidewalk"}))
    PositionConfigurationFec.add_member(:rose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROSE", traits: {"smithy.api#enumValue" => "ROSE"}))
    PositionConfigurationFec.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PositionConfigurationItem.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceIdentifier, name: "ResourceIdentifier"))
    PositionConfigurationItem.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceType, name: "ResourceType"))
    PositionConfigurationItem.add_member(:solvers, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionSolverDetails, name: "Solvers"))
    PositionConfigurationItem.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Destination"))
    PositionConfigurationItem.type = Types::PositionConfigurationItem
    PositionConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PositionConfigurationItem, name: "member")
    PositionConfigurationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    PositionConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    PositionCoordinate.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PositionCoordinateValue, name: "member")
    PositionResourceType.add_member(:wireless_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WirelessDevice", traits: {"smithy.api#enumValue" => "WirelessDevice"}))
    PositionResourceType.add_member(:wireless_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WirelessGateway", traits: {"smithy.api#enumValue" => "WirelessGateway"}))
    PositionSolverConfigurations.add_member(:semtech_gnss, ::Smithy::Schema::Shapes::MemberShape.new(target: SemtechGnssConfiguration, name: "SemtechGnss"))
    PositionSolverConfigurations.type = Types::PositionSolverConfigurations
    PositionSolverDetails.add_member(:semtech_gnss, ::Smithy::Schema::Shapes::MemberShape.new(target: SemtechGnssDetail, name: "SemtechGnss"))
    PositionSolverDetails.type = Types::PositionSolverDetails
    PositionSolverProvider.add_member(:semtech, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEMTECH", traits: {"smithy.api#enumValue" => "Semtech"}))
    PositionSolverType.add_member(:gnss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GNSS", traits: {"smithy.api#enumValue" => "GNSS"}))
    Positioning.add_member(:clock_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "ClockSync"))
    Positioning.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "Stream"))
    Positioning.add_member(:gnss, ::Smithy::Schema::Shapes::MemberShape.new(target: FPort, name: "Gnss"))
    Positioning.type = Types::Positioning
    PositioningConfigStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    PositioningConfigStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    PrivateKeysList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, name: "member")
    ProximityEventConfiguration.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkEventNotificationConfigurations, name: "Sidewalk"))
    ProximityEventConfiguration.add_member(:wireless_device_id_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "WirelessDeviceIdEventTopic"))
    ProximityEventConfiguration.type = Types::ProximityEventConfiguration
    ProximityResourceTypeEventConfiguration.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkResourceTypeEventConfiguration, name: "Sidewalk"))
    ProximityResourceTypeEventConfiguration.type = Types::ProximityResourceTypeEventConfiguration
    PutPositionConfigurationRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutPositionConfigurationRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    PutPositionConfigurationRequest.add_member(:solvers, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionSolverConfigurations, name: "Solvers"))
    PutPositionConfigurationRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Destination"))
    PutPositionConfigurationRequest.type = Types::PutPositionConfigurationRequest
    PutPositionConfigurationResponse.type = Types::PutPositionConfigurationResponse
    PutResourceLogLevelRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourceLogLevelRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    PutResourceLogLevelRequest.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    PutResourceLogLevelRequest.type = Types::PutResourceLogLevelRequest
    PutResourceLogLevelResponse.type = Types::PutResourceLogLevelResponse
    ResetAllResourceLogLevelsRequest.type = Types::ResetAllResourceLogLevelsRequest
    ResetAllResourceLogLevelsResponse.type = Types::ResetAllResourceLogLevelsResponse
    ResetResourceLogLevelRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResetResourceLogLevelRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    ResetResourceLogLevelRequest.type = Types::ResetResourceLogLevelRequest
    ResetResourceLogLevelResponse.type = Types::ResetResourceLogLevelResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SemtechGnssConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionConfigurationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    SemtechGnssConfiguration.add_member(:fec, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionConfigurationFec, name: "Fec", traits: {"smithy.api#required" => {}}))
    SemtechGnssConfiguration.type = Types::SemtechGnssConfiguration
    SemtechGnssDetail.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionSolverProvider, name: "Provider"))
    SemtechGnssDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionSolverType, name: "Type"))
    SemtechGnssDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionConfigurationStatus, name: "Status"))
    SemtechGnssDetail.add_member(:fec, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionConfigurationFec, name: "Fec"))
    SemtechGnssDetail.type = Types::SemtechGnssDetail
    SendDataToMulticastGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendDataToMulticastGroupRequest.add_member(:payload_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadData, name: "PayloadData", traits: {"smithy.api#required" => {}}))
    SendDataToMulticastGroupRequest.add_member(:wireless_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastWirelessMetadata, name: "WirelessMetadata", traits: {"smithy.api#required" => {}}))
    SendDataToMulticastGroupRequest.type = Types::SendDataToMulticastGroupRequest
    SendDataToMulticastGroupResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupMessageId, name: "MessageId"))
    SendDataToMulticastGroupResponse.type = Types::SendDataToMulticastGroupResponse
    SendDataToWirelessDeviceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendDataToWirelessDeviceRequest.add_member(:transmit_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransmitMode, name: "TransmitMode", traits: {"smithy.api#required" => {}}))
    SendDataToWirelessDeviceRequest.add_member(:payload_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadData, name: "PayloadData", traits: {"smithy.api#required" => {}}))
    SendDataToWirelessDeviceRequest.add_member(:wireless_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessMetadata, name: "WirelessMetadata"))
    SendDataToWirelessDeviceRequest.type = Types::SendDataToWirelessDeviceRequest
    SendDataToWirelessDeviceResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "MessageId"))
    SendDataToWirelessDeviceResponse.type = Types::SendDataToWirelessDeviceResponse
    ServiceProfile.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileArn, name: "Arn"))
    ServiceProfile.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileName, name: "Name"))
    ServiceProfile.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfileId, name: "Id"))
    ServiceProfile.type = Types::ServiceProfile
    ServiceProfileList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceProfile, name: "member")
    SessionKeysAbpV10X.add_member(:nwk_s_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NwkSKey, name: "NwkSKey"))
    SessionKeysAbpV10X.add_member(:app_s_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSKey, name: "AppSKey"))
    SessionKeysAbpV10X.type = Types::SessionKeysAbpV10X
    SessionKeysAbpV11.add_member(:f_nwk_s_int_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FNwkSIntKey, name: "FNwkSIntKey"))
    SessionKeysAbpV11.add_member(:s_nwk_s_int_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SNwkSIntKey, name: "SNwkSIntKey"))
    SessionKeysAbpV11.add_member(:nwk_s_enc_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NwkSEncKey, name: "NwkSEncKey"))
    SessionKeysAbpV11.add_member(:app_s_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSKey, name: "AppSKey"))
    SessionKeysAbpV11.type = Types::SessionKeysAbpV11
    SidewalkAccountInfo.add_member(:amazon_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonId, name: "AmazonId"))
    SidewalkAccountInfo.add_member(:app_server_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppServerPrivateKey, name: "AppServerPrivateKey"))
    SidewalkAccountInfo.type = Types::SidewalkAccountInfo
    SidewalkAccountInfoWithFingerprint.add_member(:amazon_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonId, name: "AmazonId"))
    SidewalkAccountInfoWithFingerprint.add_member(:fingerprint, ::Smithy::Schema::Shapes::MemberShape.new(target: Fingerprint, name: "Fingerprint"))
    SidewalkAccountInfoWithFingerprint.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerAccountArn, name: "Arn"))
    SidewalkAccountInfoWithFingerprint.type = Types::SidewalkAccountInfoWithFingerprint
    SidewalkAccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkAccountInfoWithFingerprint, name: "member")
    SidewalkCreateDeviceProfile.type = Types::SidewalkCreateDeviceProfile
    SidewalkCreateWirelessDevice.add_member(:device_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "DeviceProfileId"))
    SidewalkCreateWirelessDevice.type = Types::SidewalkCreateWirelessDevice
    SidewalkDevice.add_member(:amazon_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonId, name: "AmazonId"))
    SidewalkDevice.add_member(:sidewalk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkId, name: "SidewalkId"))
    SidewalkDevice.add_member(:sidewalk_manufacturing_sn, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkManufacturingSn, name: "SidewalkManufacturingSn"))
    SidewalkDevice.add_member(:device_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCertificateList, name: "DeviceCertificates"))
    SidewalkDevice.add_member(:private_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeysList, name: "PrivateKeys"))
    SidewalkDevice.add_member(:device_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "DeviceProfileId"))
    SidewalkDevice.add_member(:certificate_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DakCertificateId, name: "CertificateId"))
    SidewalkDevice.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceSidewalkStatus, name: "Status"))
    SidewalkDevice.type = Types::SidewalkDevice
    SidewalkDeviceMetadata.add_member(:rssi, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Rssi"))
    SidewalkDeviceMetadata.add_member(:battery_level, ::Smithy::Schema::Shapes::MemberShape.new(target: BatteryLevel, name: "BatteryLevel"))
    SidewalkDeviceMetadata.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "Event"))
    SidewalkDeviceMetadata.add_member(:device_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceState, name: "DeviceState"))
    SidewalkDeviceMetadata.type = Types::SidewalkDeviceMetadata
    SidewalkEventNotificationConfigurations.add_member(:amazon_id_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "AmazonIdEventTopic"))
    SidewalkEventNotificationConfigurations.type = Types::SidewalkEventNotificationConfigurations
    SidewalkGetDeviceProfile.add_member(:application_server_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationServerPublicKey, name: "ApplicationServerPublicKey"))
    SidewalkGetDeviceProfile.add_member(:qualification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationStatus, name: "QualificationStatus"))
    SidewalkGetDeviceProfile.add_member(:dak_certificate_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DakCertificateMetadataList, name: "DakCertificateMetadata"))
    SidewalkGetDeviceProfile.type = Types::SidewalkGetDeviceProfile
    SidewalkGetStartImportInfo.add_member(:device_creation_file_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationFileList, name: "DeviceCreationFileList"))
    SidewalkGetStartImportInfo.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role"))
    SidewalkGetStartImportInfo.type = Types::SidewalkGetStartImportInfo
    SidewalkListDevice.add_member(:amazon_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonId, name: "AmazonId"))
    SidewalkListDevice.add_member(:sidewalk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkId, name: "SidewalkId"))
    SidewalkListDevice.add_member(:sidewalk_manufacturing_sn, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkManufacturingSn, name: "SidewalkManufacturingSn"))
    SidewalkListDevice.add_member(:device_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCertificateList, name: "DeviceCertificates"))
    SidewalkListDevice.add_member(:device_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceProfileId, name: "DeviceProfileId"))
    SidewalkListDevice.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceSidewalkStatus, name: "Status"))
    SidewalkListDevice.type = Types::SidewalkListDevice
    SidewalkResourceTypeEventConfiguration.add_member(:wireless_device_event_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationTopicStatus, name: "WirelessDeviceEventTopic"))
    SidewalkResourceTypeEventConfiguration.type = Types::SidewalkResourceTypeEventConfiguration
    SidewalkSendDataToDevice.add_member(:seq, ::Smithy::Schema::Shapes::MemberShape.new(target: Seq, name: "Seq"))
    SidewalkSendDataToDevice.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    SidewalkSendDataToDevice.add_member(:ack_mode_retry_duration_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: AckModeRetryDurationSecs, name: "AckModeRetryDurationSecs"))
    SidewalkSendDataToDevice.type = Types::SidewalkSendDataToDevice
    SidewalkSingleStartImportInfo.add_member(:sidewalk_manufacturing_sn, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkManufacturingSn, name: "SidewalkManufacturingSn"))
    SidewalkSingleStartImportInfo.type = Types::SidewalkSingleStartImportInfo
    SidewalkStartImportInfo.add_member(:device_creation_file, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationFile, name: "DeviceCreationFile"))
    SidewalkStartImportInfo.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role"))
    SidewalkStartImportInfo.type = Types::SidewalkStartImportInfo
    SidewalkUpdateAccount.add_member(:app_server_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AppServerPrivateKey, name: "AppServerPrivateKey"))
    SidewalkUpdateAccount.type = Types::SidewalkUpdateAccount
    SidewalkUpdateImportInfo.add_member(:device_creation_file, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCreationFile, name: "DeviceCreationFile"))
    SidewalkUpdateImportInfo.type = Types::SidewalkUpdateImportInfo
    SigningAlg.add_member(:ed25519, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ed25519", traits: {"smithy.api#enumValue" => "Ed25519"}))
    SigningAlg.add_member(:p256r1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "P256r1", traits: {"smithy.api#enumValue" => "P256r1"}))
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryString"))
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartBulkAssociateWirelessDeviceWithMulticastGroupRequest.type = Types::StartBulkAssociateWirelessDeviceWithMulticastGroupRequest
    StartBulkAssociateWirelessDeviceWithMulticastGroupResponse.type = Types::StartBulkAssociateWirelessDeviceWithMulticastGroupResponse
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryString"))
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest.type = Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest
    StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse.type = Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse
    StartFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartFuotaTaskRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANStartFuotaTask, name: "LoRaWAN"))
    StartFuotaTaskRequest.type = Types::StartFuotaTaskRequest
    StartFuotaTaskResponse.type = Types::StartFuotaTaskResponse
    StartMulticastGroupSessionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartMulticastGroupSessionRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANMulticastSession, name: "LoRaWAN", traits: {"smithy.api#required" => {}}))
    StartMulticastGroupSessionRequest.type = Types::StartMulticastGroupSessionRequest
    StartMulticastGroupSessionResponse.type = Types::StartMulticastGroupSessionResponse
    StartSingleWirelessDeviceImportTaskRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName", traits: {"smithy.api#required" => {}}))
    StartSingleWirelessDeviceImportTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartSingleWirelessDeviceImportTaskRequest.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceName, name: "DeviceName"))
    StartSingleWirelessDeviceImportTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartSingleWirelessDeviceImportTaskRequest.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkSingleStartImportInfo, name: "Sidewalk", traits: {"smithy.api#required" => {}}))
    StartSingleWirelessDeviceImportTaskRequest.type = Types::StartSingleWirelessDeviceImportTaskRequest
    StartSingleWirelessDeviceImportTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskId, name: "Id"))
    StartSingleWirelessDeviceImportTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskArn, name: "Arn"))
    StartSingleWirelessDeviceImportTaskResponse.type = Types::StartSingleWirelessDeviceImportTaskResponse
    StartWirelessDeviceImportTaskRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName", traits: {"smithy.api#required" => {}}))
    StartWirelessDeviceImportTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartWirelessDeviceImportTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartWirelessDeviceImportTaskRequest.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkStartImportInfo, name: "Sidewalk", traits: {"smithy.api#required" => {}}))
    StartWirelessDeviceImportTaskRequest.type = Types::StartWirelessDeviceImportTaskRequest
    StartWirelessDeviceImportTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskId, name: "Id"))
    StartWirelessDeviceImportTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskArn, name: "Arn"))
    StartWirelessDeviceImportTaskResponse.type = Types::StartWirelessDeviceImportTaskResponse
    SubBands.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubBand, name: "member")
    SummaryMetricConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricConfigurationStatus, name: "Status"))
    SummaryMetricConfiguration.type = Types::SummaryMetricConfiguration
    SummaryMetricConfigurationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    SummaryMetricConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    SummaryMetricQueries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricQuery, name: "member")
    SummaryMetricQuery.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryId, name: "QueryId"))
    SummaryMetricQuery.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    SummaryMetricQuery.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    SummaryMetricQuery.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "AggregationPeriod"))
    SummaryMetricQuery.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryStartTimestamp, name: "StartTimestamp"))
    SummaryMetricQuery.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryEndTimestamp, name: "EndTimestamp"))
    SummaryMetricQuery.type = Types::SummaryMetricQuery
    SummaryMetricQueryResult.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryId, name: "QueryId"))
    SummaryMetricQueryResult.add_member(:query_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryStatus, name: "QueryStatus"))
    SummaryMetricQueryResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryError, name: "Error"))
    SummaryMetricQueryResult.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    SummaryMetricQueryResult.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    SummaryMetricQueryResult.add_member(:aggregation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "AggregationPeriod"))
    SummaryMetricQueryResult.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryStartTimestamp, name: "StartTimestamp"))
    SummaryMetricQueryResult.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryEndTimestamp, name: "EndTimestamp"))
    SummaryMetricQueryResult.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryTimestamps, name: "Timestamps"))
    SummaryMetricQueryResult.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQueryValues, name: "Values"))
    SummaryMetricQueryResult.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "Unit"))
    SummaryMetricQueryResult.type = Types::SummaryMetricQueryResult
    SummaryMetricQueryResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricQueryResult, name: "member")
    SupportedRfRegion.add_member(:eu868, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU868", traits: {"smithy.api#enumValue" => "EU868"}))
    SupportedRfRegion.add_member(:us915, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US915", traits: {"smithy.api#enumValue" => "US915"}))
    SupportedRfRegion.add_member(:au915, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AU915", traits: {"smithy.api#enumValue" => "AU915"}))
    SupportedRfRegion.add_member(:as923_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AS923_1", traits: {"smithy.api#enumValue" => "AS923-1"}))
    SupportedRfRegion.add_member(:as923_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AS923_2", traits: {"smithy.api#enumValue" => "AS923-2"}))
    SupportedRfRegion.add_member(:as923_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AS923_3", traits: {"smithy.api#enumValue" => "AS923-3"}))
    SupportedRfRegion.add_member(:as923_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AS923_4", traits: {"smithy.api#enumValue" => "AS923-4"}))
    SupportedRfRegion.add_member(:eu433, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU433", traits: {"smithy.api#enumValue" => "EU433"}))
    SupportedRfRegion.add_member(:cn470, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CN470", traits: {"smithy.api#enumValue" => "CN470"}))
    SupportedRfRegion.add_member(:cn779, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CN779", traits: {"smithy.api#enumValue" => "CN779"}))
    SupportedRfRegion.add_member(:ru864, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RU864", traits: {"smithy.api#enumValue" => "RU864"}))
    SupportedRfRegion.add_member(:kr920, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KR920", traits: {"smithy.api#enumValue" => "KR920"}))
    SupportedRfRegion.add_member(:in865, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN865", traits: {"smithy.api#enumValue" => "IN865"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TdscdmaList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TdscdmaObj, name: "member")
    TdscdmaLocalId.add_member(:uarfcn, ::Smithy::Schema::Shapes::MemberShape.new(target: UARFCN, name: "Uarfcn", traits: {"smithy.api#required" => {}}))
    TdscdmaLocalId.add_member(:cell_params, ::Smithy::Schema::Shapes::MemberShape.new(target: CellParams, name: "CellParams", traits: {"smithy.api#required" => {}}))
    TdscdmaLocalId.type = Types::TdscdmaLocalId
    TdscdmaNmrList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TdscdmaNmrObj, name: "member")
    TdscdmaNmrObj.add_member(:uarfcn, ::Smithy::Schema::Shapes::MemberShape.new(target: UARFCN, name: "Uarfcn", traits: {"smithy.api#required" => {}}))
    TdscdmaNmrObj.add_member(:cell_params, ::Smithy::Schema::Shapes::MemberShape.new(target: CellParams, name: "CellParams", traits: {"smithy.api#required" => {}}))
    TdscdmaNmrObj.add_member(:utran_cid, ::Smithy::Schema::Shapes::MemberShape.new(target: UtranCid, name: "UtranCid"))
    TdscdmaNmrObj.add_member(:rscp, ::Smithy::Schema::Shapes::MemberShape.new(target: RSCP, name: "Rscp"))
    TdscdmaNmrObj.add_member(:path_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: PathLoss, name: "PathLoss"))
    TdscdmaNmrObj.type = Types::TdscdmaNmrObj
    TdscdmaObj.add_member(:mcc, ::Smithy::Schema::Shapes::MemberShape.new(target: MCC, name: "Mcc", traits: {"smithy.api#required" => {}}))
    TdscdmaObj.add_member(:mnc, ::Smithy::Schema::Shapes::MemberShape.new(target: MNC, name: "Mnc", traits: {"smithy.api#required" => {}}))
    TdscdmaObj.add_member(:lac, ::Smithy::Schema::Shapes::MemberShape.new(target: LAC, name: "Lac"))
    TdscdmaObj.add_member(:utran_cid, ::Smithy::Schema::Shapes::MemberShape.new(target: UtranCid, name: "UtranCid", traits: {"smithy.api#required" => {}}))
    TdscdmaObj.add_member(:tdscdma_local_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TdscdmaLocalId, name: "TdscdmaLocalId"))
    TdscdmaObj.add_member(:tdscdma_timing_advance, ::Smithy::Schema::Shapes::MemberShape.new(target: TdscdmaTimingAdvance, name: "TdscdmaTimingAdvance"))
    TdscdmaObj.add_member(:rscp, ::Smithy::Schema::Shapes::MemberShape.new(target: RSCP, name: "Rscp"))
    TdscdmaObj.add_member(:path_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: PathLoss, name: "PathLoss"))
    TdscdmaObj.add_member(:tdscdma_nmr, ::Smithy::Schema::Shapes::MemberShape.new(target: TdscdmaNmrList, name: "TdscdmaNmr"))
    TdscdmaObj.type = Types::TdscdmaObj
    TestWirelessDeviceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestWirelessDeviceRequest.type = Types::TestWirelessDeviceRequest
    TestWirelessDeviceResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Result, name: "Result"))
    TestWirelessDeviceResponse.type = Types::TestWirelessDeviceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    TraceContent.add_member(:wireless_device_frame_info, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceFrameInfo, name: "WirelessDeviceFrameInfo"))
    TraceContent.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel"))
    TraceContent.add_member(:multicast_frame_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastFrameInfo, name: "MulticastFrameInfo"))
    TraceContent.type = Types::TraceContent
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAbpV10X.add_member(:f_cnt_start, ::Smithy::Schema::Shapes::MemberShape.new(target: FCntStart, name: "FCntStart"))
    UpdateAbpV10X.type = Types::UpdateAbpV10X
    UpdateAbpV11.add_member(:f_cnt_start, ::Smithy::Schema::Shapes::MemberShape.new(target: FCntStart, name: "FCntStart"))
    UpdateAbpV11.type = Types::UpdateAbpV11
    UpdateDestinationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDestinationRequest.add_member(:expression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionType, name: "ExpressionType"))
    UpdateDestinationRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression"))
    UpdateDestinationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateDestinationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    UpdateDestinationRequest.type = Types::UpdateDestinationRequest
    UpdateDestinationResponse.type = Types::UpdateDestinationResponse
    UpdateEventConfigurationByResourceTypesRequest.add_member(:device_registration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceRegistrationStateResourceTypeEventConfiguration, name: "DeviceRegistrationState"))
    UpdateEventConfigurationByResourceTypesRequest.add_member(:proximity, ::Smithy::Schema::Shapes::MemberShape.new(target: ProximityResourceTypeEventConfiguration, name: "Proximity"))
    UpdateEventConfigurationByResourceTypesRequest.add_member(:join, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinResourceTypeEventConfiguration, name: "Join"))
    UpdateEventConfigurationByResourceTypesRequest.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatusResourceTypeEventConfiguration, name: "ConnectionStatus"))
    UpdateEventConfigurationByResourceTypesRequest.add_member(:message_delivery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDeliveryStatusResourceTypeEventConfiguration, name: "MessageDeliveryStatus"))
    UpdateEventConfigurationByResourceTypesRequest.type = Types::UpdateEventConfigurationByResourceTypesRequest
    UpdateEventConfigurationByResourceTypesResponse.type = Types::UpdateEventConfigurationByResourceTypesResponse
    UpdateFPorts.add_member(:positioning, ::Smithy::Schema::Shapes::MemberShape.new(target: Positioning, name: "Positioning"))
    UpdateFPorts.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: Applications, name: "Applications"))
    UpdateFPorts.type = Types::UpdateFPorts
    UpdateFuotaTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFuotaTaskRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskName, name: "Name"))
    UpdateFuotaTaskRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateFuotaTaskRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANFuotaTask, name: "LoRaWAN"))
    UpdateFuotaTaskRequest.add_member(:firmware_update_image, ::Smithy::Schema::Shapes::MemberShape.new(target: FirmwareUpdateImage, name: "FirmwareUpdateImage"))
    UpdateFuotaTaskRequest.add_member(:firmware_update_role, ::Smithy::Schema::Shapes::MemberShape.new(target: FirmwareUpdateRole, name: "FirmwareUpdateRole"))
    UpdateFuotaTaskRequest.add_member(:redundancy_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: RedundancyPercent, name: "RedundancyPercent"))
    UpdateFuotaTaskRequest.add_member(:fragment_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentSizeBytes, name: "FragmentSizeBytes"))
    UpdateFuotaTaskRequest.add_member(:fragment_interval_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentIntervalMS, name: "FragmentIntervalMS"))
    UpdateFuotaTaskRequest.add_member(:descriptor, ::Smithy::Schema::Shapes::MemberShape.new(target: FileDescriptor, name: "Descriptor"))
    UpdateFuotaTaskRequest.type = Types::UpdateFuotaTaskRequest
    UpdateFuotaTaskResponse.type = Types::UpdateFuotaTaskResponse
    UpdateLogLevelsByResourceTypesRequest.add_member(:default_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "DefaultLogLevel"))
    UpdateLogLevelsByResourceTypesRequest.add_member(:fuota_task_log_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaTaskLogOptionList, name: "FuotaTaskLogOptions"))
    UpdateLogLevelsByResourceTypesRequest.add_member(:wireless_device_log_options, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceLogOptionList, name: "WirelessDeviceLogOptions"))
    UpdateLogLevelsByResourceTypesRequest.add_member(:wireless_gateway_log_options, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayLogOptionList, name: "WirelessGatewayLogOptions"))
    UpdateLogLevelsByResourceTypesRequest.type = Types::UpdateLogLevelsByResourceTypesRequest
    UpdateLogLevelsByResourceTypesResponse.type = Types::UpdateLogLevelsByResourceTypesResponse
    UpdateMetricConfigurationRequest.add_member(:summary_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricConfiguration, name: "SummaryMetric"))
    UpdateMetricConfigurationRequest.type = Types::UpdateMetricConfigurationRequest
    UpdateMetricConfigurationResponse.type = Types::UpdateMetricConfigurationResponse
    UpdateMulticastGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMulticastGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastGroupName, name: "Name"))
    UpdateMulticastGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateMulticastGroupRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANMulticast, name: "LoRaWAN"))
    UpdateMulticastGroupRequest.type = Types::UpdateMulticastGroupRequest
    UpdateMulticastGroupResponse.type = Types::UpdateMulticastGroupResponse
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerConfigurationName, name: "ConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:trace_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceContent, name: "TraceContent"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:wireless_devices_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceList, name: "WirelessDevicesToAdd"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:wireless_devices_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceList, name: "WirelessDevicesToRemove"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:wireless_gateways_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayList, name: "WirelessGatewaysToAdd"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:wireless_gateways_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayList, name: "WirelessGatewaysToRemove"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:multicast_groups_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerMulticastGroupList, name: "MulticastGroupsToAdd"))
    UpdateNetworkAnalyzerConfigurationRequest.add_member(:multicast_groups_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAnalyzerMulticastGroupList, name: "MulticastGroupsToRemove"))
    UpdateNetworkAnalyzerConfigurationRequest.type = Types::UpdateNetworkAnalyzerConfigurationRequest
    UpdateNetworkAnalyzerConfigurationResponse.type = Types::UpdateNetworkAnalyzerConfigurationResponse
    UpdatePartnerAccountRequest.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkUpdateAccount, name: "Sidewalk", traits: {"smithy.api#required" => {}}))
    UpdatePartnerAccountRequest.add_member(:partner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerAccountId, name: "PartnerAccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePartnerAccountRequest.add_member(:partner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerType, name: "PartnerType", traits: {"smithy.api#httpQuery" => "partnerType", "smithy.api#required" => {}}))
    UpdatePartnerAccountRequest.type = Types::UpdatePartnerAccountRequest
    UpdatePartnerAccountResponse.type = Types::UpdatePartnerAccountResponse
    UpdatePositionRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePositionRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    UpdatePositionRequest.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionCoordinate, name: "Position", traits: {"smithy.api#required" => {}}))
    UpdatePositionRequest.type = Types::UpdatePositionRequest
    UpdatePositionResponse.type = Types::UpdatePositionResponse
    UpdateResourceEventConfigurationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceEventConfigurationRequest.add_member(:identifier_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierType, name: "IdentifierType", traits: {"smithy.api#httpQuery" => "identifierType", "smithy.api#required" => {}}))
    UpdateResourceEventConfigurationRequest.add_member(:partner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventNotificationPartnerType, name: "PartnerType", traits: {"smithy.api#httpQuery" => "partnerType"}))
    UpdateResourceEventConfigurationRequest.add_member(:device_registration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceRegistrationStateEventConfiguration, name: "DeviceRegistrationState"))
    UpdateResourceEventConfigurationRequest.add_member(:proximity, ::Smithy::Schema::Shapes::MemberShape.new(target: ProximityEventConfiguration, name: "Proximity"))
    UpdateResourceEventConfigurationRequest.add_member(:join, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEventConfiguration, name: "Join"))
    UpdateResourceEventConfigurationRequest.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatusEventConfiguration, name: "ConnectionStatus"))
    UpdateResourceEventConfigurationRequest.add_member(:message_delivery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDeliveryStatusEventConfiguration, name: "MessageDeliveryStatus"))
    UpdateResourceEventConfigurationRequest.type = Types::UpdateResourceEventConfigurationRequest
    UpdateResourceEventConfigurationResponse.type = Types::UpdateResourceEventConfigurationResponse
    UpdateResourcePositionRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourcePositionRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PositionResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType", "smithy.api#required" => {}}))
    UpdateResourcePositionRequest.add_member(:geo_json_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoJsonPayload, name: "GeoJsonPayload", traits: {"smithy.api#httpPayload" => {}}))
    UpdateResourcePositionRequest[:http_payload] = :geo_json_payload
    UpdateResourcePositionRequest[:http_payload_member] = UpdateResourcePositionRequest.member(:geo_json_payload)
    UpdateResourcePositionRequest.type = Types::UpdateResourcePositionRequest
    UpdateResourcePositionResponse.type = Types::UpdateResourcePositionResponse
    UpdateWirelessDeviceImportTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWirelessDeviceImportTaskRequest.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkUpdateImportInfo, name: "Sidewalk", traits: {"smithy.api#required" => {}}))
    UpdateWirelessDeviceImportTaskRequest.type = Types::UpdateWirelessDeviceImportTaskRequest
    UpdateWirelessDeviceImportTaskResponse.type = Types::UpdateWirelessDeviceImportTaskResponse
    UpdateWirelessDeviceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWirelessDeviceRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName"))
    UpdateWirelessDeviceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceName, name: "Name"))
    UpdateWirelessDeviceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateWirelessDeviceRequest.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANUpdateDevice, name: "LoRaWAN"))
    UpdateWirelessDeviceRequest.add_member(:positioning, ::Smithy::Schema::Shapes::MemberShape.new(target: PositioningConfigStatus, name: "Positioning"))
    UpdateWirelessDeviceRequest.type = Types::UpdateWirelessDeviceRequest
    UpdateWirelessDeviceResponse.type = Types::UpdateWirelessDeviceResponse
    UpdateWirelessGatewayRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWirelessGatewayRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayName, name: "Name"))
    UpdateWirelessGatewayRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateWirelessGatewayRequest.add_member(:join_eui_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinEuiFilters, name: "JoinEuiFilters"))
    UpdateWirelessGatewayRequest.add_member(:net_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NetIdFilters, name: "NetIdFilters"))
    UpdateWirelessGatewayRequest.add_member(:max_eirp, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayMaxEirp, name: "MaxEirp"))
    UpdateWirelessGatewayRequest.type = Types::UpdateWirelessGatewayRequest
    UpdateWirelessGatewayResponse.type = Types::UpdateWirelessGatewayResponse
    UpdateWirelessGatewayTaskCreate.add_member(:update_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDataSource, name: "UpdateDataSource"))
    UpdateWirelessGatewayTaskCreate.add_member(:update_data_role, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDataSource, name: "UpdateDataRole"))
    UpdateWirelessGatewayTaskCreate.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANUpdateGatewayTaskCreate, name: "LoRaWAN"))
    UpdateWirelessGatewayTaskCreate.type = Types::UpdateWirelessGatewayTaskCreate
    UpdateWirelessGatewayTaskEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionId, name: "Id"))
    UpdateWirelessGatewayTaskEntry.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANUpdateGatewayTaskEntry, name: "LoRaWAN"))
    UpdateWirelessGatewayTaskEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayTaskDefinitionArn, name: "Arn"))
    UpdateWirelessGatewayTaskEntry.type = Types::UpdateWirelessGatewayTaskEntry
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ValidationException.type = Types::ValidationException
    WcdmaList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WcdmaObj, name: "member")
    WcdmaLocalId.add_member(:uarfcndl, ::Smithy::Schema::Shapes::MemberShape.new(target: UARFCNDL, name: "Uarfcndl", traits: {"smithy.api#required" => {}}))
    WcdmaLocalId.add_member(:psc, ::Smithy::Schema::Shapes::MemberShape.new(target: PSC, name: "Psc", traits: {"smithy.api#required" => {}}))
    WcdmaLocalId.type = Types::WcdmaLocalId
    WcdmaNmrList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WcdmaNmrObj, name: "member")
    WcdmaNmrObj.add_member(:uarfcndl, ::Smithy::Schema::Shapes::MemberShape.new(target: UARFCNDL, name: "Uarfcndl", traits: {"smithy.api#required" => {}}))
    WcdmaNmrObj.add_member(:psc, ::Smithy::Schema::Shapes::MemberShape.new(target: PSC, name: "Psc", traits: {"smithy.api#required" => {}}))
    WcdmaNmrObj.add_member(:utran_cid, ::Smithy::Schema::Shapes::MemberShape.new(target: UtranCid, name: "UtranCid", traits: {"smithy.api#required" => {}}))
    WcdmaNmrObj.add_member(:rscp, ::Smithy::Schema::Shapes::MemberShape.new(target: RSCP, name: "Rscp"))
    WcdmaNmrObj.add_member(:path_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: PathLoss, name: "PathLoss"))
    WcdmaNmrObj.type = Types::WcdmaNmrObj
    WcdmaObj.add_member(:mcc, ::Smithy::Schema::Shapes::MemberShape.new(target: MCC, name: "Mcc", traits: {"smithy.api#required" => {}}))
    WcdmaObj.add_member(:mnc, ::Smithy::Schema::Shapes::MemberShape.new(target: MNC, name: "Mnc", traits: {"smithy.api#required" => {}}))
    WcdmaObj.add_member(:lac, ::Smithy::Schema::Shapes::MemberShape.new(target: LAC, name: "Lac"))
    WcdmaObj.add_member(:utran_cid, ::Smithy::Schema::Shapes::MemberShape.new(target: UtranCid, name: "UtranCid", traits: {"smithy.api#required" => {}}))
    WcdmaObj.add_member(:wcdma_local_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WcdmaLocalId, name: "WcdmaLocalId"))
    WcdmaObj.add_member(:rscp, ::Smithy::Schema::Shapes::MemberShape.new(target: RSCP, name: "Rscp"))
    WcdmaObj.add_member(:path_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: PathLoss, name: "PathLoss"))
    WcdmaObj.add_member(:wcdma_nmr, ::Smithy::Schema::Shapes::MemberShape.new(target: WcdmaNmrList, name: "WcdmaNmr"))
    WcdmaObj.type = Types::WcdmaObj
    WiFiAccessPoint.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAddress, name: "MacAddress", traits: {"smithy.api#required" => {}}))
    WiFiAccessPoint.add_member(:rss, ::Smithy::Schema::Shapes::MemberShape.new(target: RSS, name: "Rss", traits: {"smithy.api#required" => {}}))
    WiFiAccessPoint.type = Types::WiFiAccessPoint
    WiFiAccessPoints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WiFiAccessPoint, name: "member")
    WirelessDeviceEvent.add_member(:join, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Join", traits: {"smithy.api#enumValue" => "Join"}))
    WirelessDeviceEvent.add_member(:rejoin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Rejoin", traits: {"smithy.api#enumValue" => "Rejoin"}))
    WirelessDeviceEvent.add_member(:uplink_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Uplink_Data", traits: {"smithy.api#enumValue" => "Uplink_Data"}))
    WirelessDeviceEvent.add_member(:downlink_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Downlink_Data", traits: {"smithy.api#enumValue" => "Downlink_Data"}))
    WirelessDeviceEvent.add_member(:registration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Registration", traits: {"smithy.api#enumValue" => "Registration"}))
    WirelessDeviceEventLogOption.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceEvent, name: "Event", traits: {"smithy.api#required" => {}}))
    WirelessDeviceEventLogOption.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    WirelessDeviceEventLogOption.type = Types::WirelessDeviceEventLogOption
    WirelessDeviceEventLogOptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceEventLogOption, name: "member")
    WirelessDeviceFrameInfo.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    WirelessDeviceFrameInfo.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    WirelessDeviceIdType.add_member(:wireless_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WirelessDeviceId", traits: {"smithy.api#enumValue" => "WirelessDeviceId"}))
    WirelessDeviceIdType.add_member(:dev_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DevEui", traits: {"smithy.api#enumValue" => "DevEui"}))
    WirelessDeviceIdType.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ThingName", traits: {"smithy.api#enumValue" => "ThingName"}))
    WirelessDeviceIdType.add_member(:sidewalk_manufacturing_sn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SidewalkManufacturingSn", traits: {"smithy.api#enumValue" => "SidewalkManufacturingSn"}))
    WirelessDeviceImportTask.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskId, name: "Id"))
    WirelessDeviceImportTask.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskArn, name: "Arn"))
    WirelessDeviceImportTask.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName"))
    WirelessDeviceImportTask.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkGetStartImportInfo, name: "Sidewalk"))
    WirelessDeviceImportTask.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreationTime"))
    WirelessDeviceImportTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskStatus, name: "Status"))
    WirelessDeviceImportTask.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "StatusReason"))
    WirelessDeviceImportTask.add_member(:initialized_imported_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceCount, name: "InitializedImportedDeviceCount"))
    WirelessDeviceImportTask.add_member(:pending_imported_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceCount, name: "PendingImportedDeviceCount"))
    WirelessDeviceImportTask.add_member(:onboarded_imported_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceCount, name: "OnboardedImportedDeviceCount"))
    WirelessDeviceImportTask.add_member(:failed_imported_device_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedWirelessDeviceCount, name: "FailedImportedDeviceCount"))
    WirelessDeviceImportTask.type = Types::WirelessDeviceImportTask
    WirelessDeviceImportTaskList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceImportTask, name: "member")
    WirelessDeviceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "member")
    WirelessDeviceLogOption.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceType, name: "Type", traits: {"smithy.api#required" => {}}))
    WirelessDeviceLogOption.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    WirelessDeviceLogOption.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceEventLogOptionList, name: "Events"))
    WirelessDeviceLogOption.type = Types::WirelessDeviceLogOption
    WirelessDeviceLogOptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceLogOption, name: "member")
    WirelessDeviceSidewalkStatus.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    WirelessDeviceSidewalkStatus.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERED", traits: {"smithy.api#enumValue" => "REGISTERED"}))
    WirelessDeviceSidewalkStatus.add_member(:activated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATED", traits: {"smithy.api#enumValue" => "ACTIVATED"}))
    WirelessDeviceSidewalkStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    WirelessDeviceStatistics.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceArn, name: "Arn"))
    WirelessDeviceStatistics.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceId, name: "Id"))
    WirelessDeviceStatistics.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceType, name: "Type"))
    WirelessDeviceStatistics.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceName, name: "Name"))
    WirelessDeviceStatistics.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationName, name: "DestinationName"))
    WirelessDeviceStatistics.add_member(:last_uplink_received_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "LastUplinkReceivedAt"))
    WirelessDeviceStatistics.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANListDevice, name: "LoRaWAN"))
    WirelessDeviceStatistics.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkListDevice, name: "Sidewalk"))
    WirelessDeviceStatistics.add_member(:fuota_device_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FuotaDeviceStatus, name: "FuotaDeviceStatus"))
    WirelessDeviceStatistics.add_member(:multicast_device_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MulticastDeviceStatus, name: "MulticastDeviceStatus"))
    WirelessDeviceStatistics.add_member(:mc_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: McGroupId, name: "McGroupId"))
    WirelessDeviceStatistics.type = Types::WirelessDeviceStatistics
    WirelessDeviceStatisticsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessDeviceStatistics, name: "member")
    WirelessDeviceType.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sidewalk", traits: {"smithy.api#enumValue" => "Sidewalk"}))
    WirelessDeviceType.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoRaWAN", traits: {"smithy.api#enumValue" => "LoRaWAN"}))
    WirelessGatewayEvent.add_member(:cups_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUPS_Request", traits: {"smithy.api#enumValue" => "CUPS_Request"}))
    WirelessGatewayEvent.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Certificate", traits: {"smithy.api#enumValue" => "Certificate"}))
    WirelessGatewayEventLogOption.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayEvent, name: "Event", traits: {"smithy.api#required" => {}}))
    WirelessGatewayEventLogOption.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    WirelessGatewayEventLogOption.type = Types::WirelessGatewayEventLogOption
    WirelessGatewayEventLogOptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayEventLogOption, name: "member")
    WirelessGatewayIdType.add_member(:gateway_eui, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GatewayEui", traits: {"smithy.api#enumValue" => "GatewayEui"}))
    WirelessGatewayIdType.add_member(:wireless_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WirelessGatewayId", traits: {"smithy.api#enumValue" => "WirelessGatewayId"}))
    WirelessGatewayIdType.add_member(:thing_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ThingName", traits: {"smithy.api#enumValue" => "ThingName"}))
    WirelessGatewayList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "member")
    WirelessGatewayLogOption.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayType, name: "Type", traits: {"smithy.api#required" => {}}))
    WirelessGatewayLogOption.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel", traits: {"smithy.api#required" => {}}))
    WirelessGatewayLogOption.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayEventLogOptionList, name: "Events"))
    WirelessGatewayLogOption.type = Types::WirelessGatewayLogOption
    WirelessGatewayLogOptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayLogOption, name: "member")
    WirelessGatewayServiceType.add_member(:cups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUPS", traits: {"smithy.api#enumValue" => "CUPS"}))
    WirelessGatewayServiceType.add_member(:lns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LNS", traits: {"smithy.api#enumValue" => "LNS"}))
    WirelessGatewayStatistics.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayArn, name: "Arn"))
    WirelessGatewayStatistics.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayId, name: "Id"))
    WirelessGatewayStatistics.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayName, name: "Name"))
    WirelessGatewayStatistics.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    WirelessGatewayStatistics.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANGateway, name: "LoRaWAN"))
    WirelessGatewayStatistics.add_member(:last_uplink_received_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISODateTimeString, name: "LastUplinkReceivedAt"))
    WirelessGatewayStatistics.type = Types::WirelessGatewayStatistics
    WirelessGatewayStatisticsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WirelessGatewayStatistics, name: "member")
    WirelessGatewayTaskDefinitionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateWirelessGatewayTaskEntry, name: "member")
    WirelessGatewayTaskDefinitionType.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    WirelessGatewayTaskStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WirelessGatewayTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    WirelessGatewayTaskStatus.add_member(:first_retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRST_RETRY", traits: {"smithy.api#enumValue" => "FIRST_RETRY"}))
    WirelessGatewayTaskStatus.add_member(:second_retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECOND_RETRY", traits: {"smithy.api#enumValue" => "SECOND_RETRY"}))
    WirelessGatewayTaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    WirelessGatewayTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WirelessGatewayType.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoRaWAN", traits: {"smithy.api#enumValue" => "LoRaWAN"}))
    WirelessMetadata.add_member(:lo_ra_wan, ::Smithy::Schema::Shapes::MemberShape.new(target: LoRaWANSendDataToDevice, name: "LoRaWAN"))
    WirelessMetadata.add_member(:sidewalk, ::Smithy::Schema::Shapes::MemberShape.new(target: SidewalkSendDataToDevice, name: "Sidewalk"))
    WirelessMetadata.type = Types::WirelessMetadata

    Iotwireless = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotwireless#iotwireless"
      service.name = "Iotwireless"
      service.version = "2020-11-22"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Wireless", "arnNamespace" => "iotwireless", "cloudFormationName" => "IoTWireless", "cloudTrailEventSource" => "iotwireless.amazonaws.com", "docId" => "iotwireless-2020-11-22", "endpointPrefix" => "api.iotwireless"}, "aws.auth#sigv4" => {"name" => "iotwireless"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Wireless"}
      service.add_operation(:associate_aws_account_with_partner_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#AssociateAwsAccountWithPartnerAccount"
        operation.name = "AssociateAwsAccountWithPartnerAccount"
        operation.input = AssociateAwsAccountWithPartnerAccountRequest
        operation.output = AssociateAwsAccountWithPartnerAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/partner-accounts", "code" => 200}}
      end)
      service.add_operation(:associate_multicast_group_with_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#AssociateMulticastGroupWithFuotaTask"
        operation.name = "AssociateMulticastGroupWithFuotaTask"
        operation.input = AssociateMulticastGroupWithFuotaTaskRequest
        operation.output = AssociateMulticastGroupWithFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/fuota-tasks/{Id}/multicast-group", "code" => 204}}
      end)
      service.add_operation(:associate_wireless_device_with_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#AssociateWirelessDeviceWithFuotaTask"
        operation.name = "AssociateWirelessDeviceWithFuotaTask"
        operation.input = AssociateWirelessDeviceWithFuotaTaskRequest
        operation.output = AssociateWirelessDeviceWithFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/fuota-tasks/{Id}/wireless-device", "code" => 204}}
      end)
      service.add_operation(:associate_wireless_device_with_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#AssociateWirelessDeviceWithMulticastGroup"
        operation.name = "AssociateWirelessDeviceWithMulticastGroup"
        operation.input = AssociateWirelessDeviceWithMulticastGroupRequest
        operation.output = AssociateWirelessDeviceWithMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/multicast-groups/{Id}/wireless-device", "code" => 204}}
      end)
      service.add_operation(:associate_wireless_device_with_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#AssociateWirelessDeviceWithThing"
        operation.name = "AssociateWirelessDeviceWithThing"
        operation.input = AssociateWirelessDeviceWithThingRequest
        operation.output = AssociateWirelessDeviceWithThingResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/wireless-devices/{Id}/thing", "code" => 204}}
      end)
      service.add_operation(:associate_wireless_gateway_with_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#AssociateWirelessGatewayWithCertificate"
        operation.name = "AssociateWirelessGatewayWithCertificate"
        operation.input = AssociateWirelessGatewayWithCertificateRequest
        operation.output = AssociateWirelessGatewayWithCertificateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/wireless-gateways/{Id}/certificate", "code" => 200}}
      end)
      service.add_operation(:associate_wireless_gateway_with_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#AssociateWirelessGatewayWithThing"
        operation.name = "AssociateWirelessGatewayWithThing"
        operation.input = AssociateWirelessGatewayWithThingRequest
        operation.output = AssociateWirelessGatewayWithThingResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/wireless-gateways/{Id}/thing", "code" => 204}}
      end)
      service.add_operation(:cancel_multicast_group_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CancelMulticastGroupSession"
        operation.name = "CancelMulticastGroupSession"
        operation.input = CancelMulticastGroupSessionRequest
        operation.output = CancelMulticastGroupSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/multicast-groups/{Id}/session", "code" => 204}}
      end)
      service.add_operation(:create_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateDestination"
        operation.name = "CreateDestination"
        operation.input = CreateDestinationRequest
        operation.output = CreateDestinationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/destinations", "code" => 201}}
      end)
      service.add_operation(:create_device_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateDeviceProfile"
        operation.name = "CreateDeviceProfile"
        operation.input = CreateDeviceProfileRequest
        operation.output = CreateDeviceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/device-profiles", "code" => 201}}
      end)
      service.add_operation(:create_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateFuotaTask"
        operation.name = "CreateFuotaTask"
        operation.input = CreateFuotaTaskRequest
        operation.output = CreateFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/fuota-tasks", "code" => 201}}
      end)
      service.add_operation(:create_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateMulticastGroup"
        operation.name = "CreateMulticastGroup"
        operation.input = CreateMulticastGroupRequest
        operation.output = CreateMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/multicast-groups", "code" => 201}}
      end)
      service.add_operation(:create_network_analyzer_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateNetworkAnalyzerConfiguration"
        operation.name = "CreateNetworkAnalyzerConfiguration"
        operation.input = CreateNetworkAnalyzerConfigurationRequest
        operation.output = CreateNetworkAnalyzerConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/network-analyzer-configurations", "code" => 201}}
      end)
      service.add_operation(:create_service_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateServiceProfile"
        operation.name = "CreateServiceProfile"
        operation.input = CreateServiceProfileRequest
        operation.output = CreateServiceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/service-profiles", "code" => 201}}
      end)
      service.add_operation(:create_wireless_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateWirelessDevice"
        operation.name = "CreateWirelessDevice"
        operation.input = CreateWirelessDeviceRequest
        operation.output = CreateWirelessDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/wireless-devices", "code" => 201}}
      end)
      service.add_operation(:create_wireless_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateWirelessGateway"
        operation.name = "CreateWirelessGateway"
        operation.input = CreateWirelessGatewayRequest
        operation.output = CreateWirelessGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/wireless-gateways", "code" => 201}}
      end)
      service.add_operation(:create_wireless_gateway_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateWirelessGatewayTask"
        operation.name = "CreateWirelessGatewayTask"
        operation.input = CreateWirelessGatewayTaskRequest
        operation.output = CreateWirelessGatewayTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/wireless-gateways/{Id}/tasks", "code" => 201}}
      end)
      service.add_operation(:create_wireless_gateway_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#CreateWirelessGatewayTaskDefinition"
        operation.name = "CreateWirelessGatewayTaskDefinition"
        operation.input = CreateWirelessGatewayTaskDefinitionRequest
        operation.output = CreateWirelessGatewayTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/wireless-gateway-task-definitions", "code" => 201}}
      end)
      service.add_operation(:delete_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteDestination"
        operation.name = "DeleteDestination"
        operation.input = DeleteDestinationRequest
        operation.output = DeleteDestinationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/destinations/{Name}", "code" => 204}}
      end)
      service.add_operation(:delete_device_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteDeviceProfile"
        operation.name = "DeleteDeviceProfile"
        operation.input = DeleteDeviceProfileRequest
        operation.output = DeleteDeviceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/device-profiles/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteFuotaTask"
        operation.name = "DeleteFuotaTask"
        operation.input = DeleteFuotaTaskRequest
        operation.output = DeleteFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/fuota-tasks/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteMulticastGroup"
        operation.name = "DeleteMulticastGroup"
        operation.input = DeleteMulticastGroupRequest
        operation.output = DeleteMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/multicast-groups/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_network_analyzer_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteNetworkAnalyzerConfiguration"
        operation.name = "DeleteNetworkAnalyzerConfiguration"
        operation.input = DeleteNetworkAnalyzerConfigurationRequest
        operation.output = DeleteNetworkAnalyzerConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/network-analyzer-configurations/{ConfigurationName}", "code" => 204}}
      end)
      service.add_operation(:delete_queued_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteQueuedMessages"
        operation.name = "DeleteQueuedMessages"
        operation.input = DeleteQueuedMessagesRequest
        operation.output = DeleteQueuedMessagesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless-devices/{Id}/data", "code" => 204}}
      end)
      service.add_operation(:delete_service_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteServiceProfile"
        operation.name = "DeleteServiceProfile"
        operation.input = DeleteServiceProfileRequest
        operation.output = DeleteServiceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/service-profiles/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_wireless_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteWirelessDevice"
        operation.name = "DeleteWirelessDevice"
        operation.input = DeleteWirelessDeviceRequest
        operation.output = DeleteWirelessDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless-devices/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_wireless_device_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteWirelessDeviceImportTask"
        operation.name = "DeleteWirelessDeviceImportTask"
        operation.input = DeleteWirelessDeviceImportTaskRequest
        operation.output = DeleteWirelessDeviceImportTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless_device_import_task/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_wireless_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteWirelessGateway"
        operation.name = "DeleteWirelessGateway"
        operation.input = DeleteWirelessGatewayRequest
        operation.output = DeleteWirelessGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless-gateways/{Id}", "code" => 204}}
      end)
      service.add_operation(:delete_wireless_gateway_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteWirelessGatewayTask"
        operation.name = "DeleteWirelessGatewayTask"
        operation.input = DeleteWirelessGatewayTaskRequest
        operation.output = DeleteWirelessGatewayTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless-gateways/{Id}/tasks", "code" => 204}}
      end)
      service.add_operation(:delete_wireless_gateway_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeleteWirelessGatewayTaskDefinition"
        operation.name = "DeleteWirelessGatewayTaskDefinition"
        operation.input = DeleteWirelessGatewayTaskDefinitionRequest
        operation.output = DeleteWirelessGatewayTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless-gateway-task-definitions/{Id}", "code" => 204}}
      end)
      service.add_operation(:deregister_wireless_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DeregisterWirelessDevice"
        operation.name = "DeregisterWirelessDevice"
        operation.input = DeregisterWirelessDeviceRequest
        operation.output = DeregisterWirelessDeviceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/wireless-devices/{Identifier}/deregister", "code" => 200}}
      end)
      service.add_operation(:disassociate_aws_account_from_partner_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DisassociateAwsAccountFromPartnerAccount"
        operation.name = "DisassociateAwsAccountFromPartnerAccount"
        operation.input = DisassociateAwsAccountFromPartnerAccountRequest
        operation.output = DisassociateAwsAccountFromPartnerAccountResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/partner-accounts/{PartnerAccountId}", "code" => 204}}
      end)
      service.add_operation(:disassociate_multicast_group_from_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DisassociateMulticastGroupFromFuotaTask"
        operation.name = "DisassociateMulticastGroupFromFuotaTask"
        operation.input = DisassociateMulticastGroupFromFuotaTaskRequest
        operation.output = DisassociateMulticastGroupFromFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/fuota-tasks/{Id}/multicast-groups/{MulticastGroupId}", "code" => 204}}
      end)
      service.add_operation(:disassociate_wireless_device_from_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromFuotaTask"
        operation.name = "DisassociateWirelessDeviceFromFuotaTask"
        operation.input = DisassociateWirelessDeviceFromFuotaTaskRequest
        operation.output = DisassociateWirelessDeviceFromFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/fuota-tasks/{Id}/wireless-devices/{WirelessDeviceId}", "code" => 204}}
      end)
      service.add_operation(:disassociate_wireless_device_from_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromMulticastGroup"
        operation.name = "DisassociateWirelessDeviceFromMulticastGroup"
        operation.input = DisassociateWirelessDeviceFromMulticastGroupRequest
        operation.output = DisassociateWirelessDeviceFromMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/multicast-groups/{Id}/wireless-devices/{WirelessDeviceId}", "code" => 204}}
      end)
      service.add_operation(:disassociate_wireless_device_from_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DisassociateWirelessDeviceFromThing"
        operation.name = "DisassociateWirelessDeviceFromThing"
        operation.input = DisassociateWirelessDeviceFromThingRequest
        operation.output = DisassociateWirelessDeviceFromThingResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless-devices/{Id}/thing", "code" => 204}}
      end)
      service.add_operation(:disassociate_wireless_gateway_from_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DisassociateWirelessGatewayFromCertificate"
        operation.name = "DisassociateWirelessGatewayFromCertificate"
        operation.input = DisassociateWirelessGatewayFromCertificateRequest
        operation.output = DisassociateWirelessGatewayFromCertificateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless-gateways/{Id}/certificate", "code" => 204}}
      end)
      service.add_operation(:disassociate_wireless_gateway_from_thing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#DisassociateWirelessGatewayFromThing"
        operation.name = "DisassociateWirelessGatewayFromThing"
        operation.input = DisassociateWirelessGatewayFromThingRequest
        operation.output = DisassociateWirelessGatewayFromThingResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/wireless-gateways/{Id}/thing", "code" => 204}}
      end)
      service.add_operation(:get_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetDestination"
        operation.name = "GetDestination"
        operation.input = GetDestinationRequest
        operation.output = GetDestinationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/destinations/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_device_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetDeviceProfile"
        operation.name = "GetDeviceProfile"
        operation.input = GetDeviceProfileRequest
        operation.output = GetDeviceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/device-profiles/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_event_configuration_by_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetEventConfigurationByResourceTypes"
        operation.name = "GetEventConfigurationByResourceTypes"
        operation.input = GetEventConfigurationByResourceTypesRequest
        operation.output = GetEventConfigurationByResourceTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/event-configurations-resource-types", "code" => 200}}
      end)
      service.add_operation(:get_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetFuotaTask"
        operation.name = "GetFuotaTask"
        operation.input = GetFuotaTaskRequest
        operation.output = GetFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/fuota-tasks/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_log_levels_by_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetLogLevelsByResourceTypes"
        operation.name = "GetLogLevelsByResourceTypes"
        operation.input = GetLogLevelsByResourceTypesRequest
        operation.output = GetLogLevelsByResourceTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/log-levels", "code" => 200}}
      end)
      service.add_operation(:get_metric_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetMetricConfiguration"
        operation.name = "GetMetricConfiguration"
        operation.input = GetMetricConfigurationRequest
        operation.output = GetMetricConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/metric-configuration", "code" => 200}}
      end)
      service.add_operation(:get_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetMetrics"
        operation.name = "GetMetrics"
        operation.input = GetMetricsRequest
        operation.output = GetMetricsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/metrics", "code" => 200}}
      end)
      service.add_operation(:get_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetMulticastGroup"
        operation.name = "GetMulticastGroup"
        operation.input = GetMulticastGroupRequest
        operation.output = GetMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/multicast-groups/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_multicast_group_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetMulticastGroupSession"
        operation.name = "GetMulticastGroupSession"
        operation.input = GetMulticastGroupSessionRequest
        operation.output = GetMulticastGroupSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/multicast-groups/{Id}/session", "code" => 200}}
      end)
      service.add_operation(:get_network_analyzer_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetNetworkAnalyzerConfiguration"
        operation.name = "GetNetworkAnalyzerConfiguration"
        operation.input = GetNetworkAnalyzerConfigurationRequest
        operation.output = GetNetworkAnalyzerConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/network-analyzer-configurations/{ConfigurationName}", "code" => 200}}
      end)
      service.add_operation(:get_partner_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetPartnerAccount"
        operation.name = "GetPartnerAccount"
        operation.input = GetPartnerAccountRequest
        operation.output = GetPartnerAccountResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/partner-accounts/{PartnerAccountId}", "code" => 200}}
      end)
      service.add_operation(:get_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetPosition"
        operation.name = "GetPosition"
        operation.input = GetPositionRequest
        operation.output = GetPositionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}, "smithy.api#http" => {"method" => "GET", "uri" => "/positions/{ResourceIdentifier}", "code" => 200}}
      end)
      service.add_operation(:get_position_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetPositionConfiguration"
        operation.name = "GetPositionConfiguration"
        operation.input = GetPositionConfigurationRequest
        operation.output = GetPositionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}, "smithy.api#http" => {"method" => "GET", "uri" => "/position-configurations/{ResourceIdentifier}", "code" => 200}}
      end)
      service.add_operation(:get_position_estimate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetPositionEstimate"
        operation.name = "GetPositionEstimate"
        operation.input = GetPositionEstimateRequest
        operation.output = GetPositionEstimateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/position-estimate", "code" => 200}}
      end)
      service.add_operation(:get_resource_event_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetResourceEventConfiguration"
        operation.name = "GetResourceEventConfiguration"
        operation.input = GetResourceEventConfigurationRequest
        operation.output = GetResourceEventConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/event-configurations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_resource_log_level, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetResourceLogLevel"
        operation.name = "GetResourceLogLevel"
        operation.input = GetResourceLogLevelRequest
        operation.output = GetResourceLogLevelResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/log-levels/{ResourceIdentifier}", "code" => 200}}
      end)
      service.add_operation(:get_resource_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetResourcePosition"
        operation.name = "GetResourcePosition"
        operation.input = GetResourcePositionRequest
        operation.output = GetResourcePositionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-positions/{ResourceIdentifier}", "code" => 200}}
      end)
      service.add_operation(:get_service_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetServiceEndpoint"
        operation.name = "GetServiceEndpoint"
        operation.input = GetServiceEndpointRequest
        operation.output = GetServiceEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/service-endpoint", "code" => 200}}
      end)
      service.add_operation(:get_service_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetServiceProfile"
        operation.name = "GetServiceProfile"
        operation.input = GetServiceProfileRequest
        operation.output = GetServiceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/service-profiles/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_wireless_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessDevice"
        operation.name = "GetWirelessDevice"
        operation.input = GetWirelessDeviceRequest
        operation.output = GetWirelessDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-devices/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_wireless_device_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessDeviceImportTask"
        operation.name = "GetWirelessDeviceImportTask"
        operation.input = GetWirelessDeviceImportTaskRequest
        operation.output = GetWirelessDeviceImportTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless_device_import_task/{Id}", "code" => 200}}
      end)
      service.add_operation(:get_wireless_device_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessDeviceStatistics"
        operation.name = "GetWirelessDeviceStatistics"
        operation.input = GetWirelessDeviceStatisticsRequest
        operation.output = GetWirelessDeviceStatisticsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-devices/{WirelessDeviceId}/statistics", "code" => 200}}
      end)
      service.add_operation(:get_wireless_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessGateway"
        operation.name = "GetWirelessGateway"
        operation.input = GetWirelessGatewayRequest
        operation.output = GetWirelessGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-gateways/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_wireless_gateway_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessGatewayCertificate"
        operation.name = "GetWirelessGatewayCertificate"
        operation.input = GetWirelessGatewayCertificateRequest
        operation.output = GetWirelessGatewayCertificateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-gateways/{Id}/certificate", "code" => 200}}
      end)
      service.add_operation(:get_wireless_gateway_firmware_information, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessGatewayFirmwareInformation"
        operation.name = "GetWirelessGatewayFirmwareInformation"
        operation.input = GetWirelessGatewayFirmwareInformationRequest
        operation.output = GetWirelessGatewayFirmwareInformationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-gateways/{Id}/firmware-information", "code" => 200}}
      end)
      service.add_operation(:get_wireless_gateway_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessGatewayStatistics"
        operation.name = "GetWirelessGatewayStatistics"
        operation.input = GetWirelessGatewayStatisticsRequest
        operation.output = GetWirelessGatewayStatisticsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-gateways/{WirelessGatewayId}/statistics", "code" => 200}}
      end)
      service.add_operation(:get_wireless_gateway_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessGatewayTask"
        operation.name = "GetWirelessGatewayTask"
        operation.input = GetWirelessGatewayTaskRequest
        operation.output = GetWirelessGatewayTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-gateways/{Id}/tasks", "code" => 200}}
      end)
      service.add_operation(:get_wireless_gateway_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#GetWirelessGatewayTaskDefinition"
        operation.name = "GetWirelessGatewayTaskDefinition"
        operation.input = GetWirelessGatewayTaskDefinitionRequest
        operation.output = GetWirelessGatewayTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-gateway-task-definitions/{Id}", "code" => 200}}
      end)
      service.add_operation(:list_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListDestinations"
        operation.name = "ListDestinations"
        operation.input = ListDestinationsRequest
        operation.output = ListDestinationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/destinations", "code" => 200}}
        operation[:paginator] = Paginators::ListDestinations.new
      end)
      service.add_operation(:list_device_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListDeviceProfiles"
        operation.name = "ListDeviceProfiles"
        operation.input = ListDeviceProfilesRequest
        operation.output = ListDeviceProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/device-profiles", "code" => 200}}
        operation[:paginator] = Paginators::ListDeviceProfiles.new
      end)
      service.add_operation(:list_devices_for_wireless_device_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListDevicesForWirelessDeviceImportTask"
        operation.name = "ListDevicesForWirelessDeviceImportTask"
        operation.input = ListDevicesForWirelessDeviceImportTaskRequest
        operation.output = ListDevicesForWirelessDeviceImportTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless_device_import_task", "code" => 200}}
      end)
      service.add_operation(:list_event_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListEventConfigurations"
        operation.name = "ListEventConfigurations"
        operation.input = ListEventConfigurationsRequest
        operation.output = ListEventConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/event-configurations", "code" => 200}}
      end)
      service.add_operation(:list_fuota_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListFuotaTasks"
        operation.name = "ListFuotaTasks"
        operation.input = ListFuotaTasksRequest
        operation.output = ListFuotaTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/fuota-tasks", "code" => 200}}
        operation[:paginator] = Paginators::ListFuotaTasks.new
      end)
      service.add_operation(:list_multicast_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListMulticastGroups"
        operation.name = "ListMulticastGroups"
        operation.input = ListMulticastGroupsRequest
        operation.output = ListMulticastGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/multicast-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListMulticastGroups.new
      end)
      service.add_operation(:list_multicast_groups_by_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListMulticastGroupsByFuotaTask"
        operation.name = "ListMulticastGroupsByFuotaTask"
        operation.input = ListMulticastGroupsByFuotaTaskRequest
        operation.output = ListMulticastGroupsByFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/fuota-tasks/{Id}/multicast-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListMulticastGroupsByFuotaTask.new
      end)
      service.add_operation(:list_network_analyzer_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListNetworkAnalyzerConfigurations"
        operation.name = "ListNetworkAnalyzerConfigurations"
        operation.input = ListNetworkAnalyzerConfigurationsRequest
        operation.output = ListNetworkAnalyzerConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/network-analyzer-configurations", "code" => 200}}
        operation[:paginator] = Paginators::ListNetworkAnalyzerConfigurations.new
      end)
      service.add_operation(:list_partner_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListPartnerAccounts"
        operation.name = "ListPartnerAccounts"
        operation.input = ListPartnerAccountsRequest
        operation.output = ListPartnerAccountsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/partner-accounts", "code" => 200}}
      end)
      service.add_operation(:list_position_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListPositionConfigurations"
        operation.name = "ListPositionConfigurations"
        operation.input = ListPositionConfigurationsRequest
        operation.output = ListPositionConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}, "smithy.api#http" => {"method" => "GET", "uri" => "/position-configurations", "code" => 200}}
        operation[:paginator] = Paginators::ListPositionConfigurations.new
      end)
      service.add_operation(:list_queued_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListQueuedMessages"
        operation.name = "ListQueuedMessages"
        operation.input = ListQueuedMessagesRequest
        operation.output = ListQueuedMessagesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-devices/{Id}/data", "code" => 200}}
        operation[:paginator] = Paginators::ListQueuedMessages.new
      end)
      service.add_operation(:list_service_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListServiceProfiles"
        operation.name = "ListServiceProfiles"
        operation.input = ListServiceProfilesRequest
        operation.output = ListServiceProfilesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/service-profiles", "code" => 200}}
        operation[:paginator] = Paginators::ListServiceProfiles.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:list_wireless_device_import_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListWirelessDeviceImportTasks"
        operation.name = "ListWirelessDeviceImportTasks"
        operation.input = ListWirelessDeviceImportTasksRequest
        operation.output = ListWirelessDeviceImportTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless_device_import_tasks", "code" => 200}}
      end)
      service.add_operation(:list_wireless_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListWirelessDevices"
        operation.name = "ListWirelessDevices"
        operation.input = ListWirelessDevicesRequest
        operation.output = ListWirelessDevicesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-devices", "code" => 200}}
        operation[:paginator] = Paginators::ListWirelessDevices.new
      end)
      service.add_operation(:list_wireless_gateway_task_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListWirelessGatewayTaskDefinitions"
        operation.name = "ListWirelessGatewayTaskDefinitions"
        operation.input = ListWirelessGatewayTaskDefinitionsRequest
        operation.output = ListWirelessGatewayTaskDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-gateway-task-definitions", "code" => 200}}
      end)
      service.add_operation(:list_wireless_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ListWirelessGateways"
        operation.name = "ListWirelessGateways"
        operation.input = ListWirelessGatewaysRequest
        operation.output = ListWirelessGatewaysResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/wireless-gateways", "code" => 200}}
        operation[:paginator] = Paginators::ListWirelessGateways.new
      end)
      service.add_operation(:put_position_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#PutPositionConfiguration"
        operation.name = "PutPositionConfiguration"
        operation.input = PutPositionConfigurationRequest
        operation.output = PutPositionConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/position-configurations/{ResourceIdentifier}", "code" => 200}}
      end)
      service.add_operation(:put_resource_log_level, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#PutResourceLogLevel"
        operation.name = "PutResourceLogLevel"
        operation.input = PutResourceLogLevelRequest
        operation.output = PutResourceLogLevelResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/log-levels/{ResourceIdentifier}", "code" => 200}}
      end)
      service.add_operation(:reset_all_resource_log_levels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ResetAllResourceLogLevels"
        operation.name = "ResetAllResourceLogLevels"
        operation.input = ResetAllResourceLogLevelsRequest
        operation.output = ResetAllResourceLogLevelsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/log-levels", "code" => 204}}
      end)
      service.add_operation(:reset_resource_log_level, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#ResetResourceLogLevel"
        operation.name = "ResetResourceLogLevel"
        operation.input = ResetResourceLogLevelRequest
        operation.output = ResetResourceLogLevelResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/log-levels/{ResourceIdentifier}", "code" => 204}}
      end)
      service.add_operation(:send_data_to_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#SendDataToMulticastGroup"
        operation.name = "SendDataToMulticastGroup"
        operation.input = SendDataToMulticastGroupRequest
        operation.output = SendDataToMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/multicast-groups/{Id}/data", "code" => 201}}
      end)
      service.add_operation(:send_data_to_wireless_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#SendDataToWirelessDevice"
        operation.name = "SendDataToWirelessDevice"
        operation.input = SendDataToWirelessDeviceRequest
        operation.output = SendDataToWirelessDeviceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/wireless-devices/{Id}/data", "code" => 202}}
      end)
      service.add_operation(:start_bulk_associate_wireless_device_with_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#StartBulkAssociateWirelessDeviceWithMulticastGroup"
        operation.name = "StartBulkAssociateWirelessDeviceWithMulticastGroup"
        operation.input = StartBulkAssociateWirelessDeviceWithMulticastGroupRequest
        operation.output = StartBulkAssociateWirelessDeviceWithMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/multicast-groups/{Id}/bulk", "code" => 204}}
      end)
      service.add_operation(:start_bulk_disassociate_wireless_device_from_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#StartBulkDisassociateWirelessDeviceFromMulticastGroup"
        operation.name = "StartBulkDisassociateWirelessDeviceFromMulticastGroup"
        operation.input = StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest
        operation.output = StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/multicast-groups/{Id}/bulk", "code" => 204}}
      end)
      service.add_operation(:start_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#StartFuotaTask"
        operation.name = "StartFuotaTask"
        operation.input = StartFuotaTaskRequest
        operation.output = StartFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/fuota-tasks/{Id}", "code" => 204}}
      end)
      service.add_operation(:start_multicast_group_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#StartMulticastGroupSession"
        operation.name = "StartMulticastGroupSession"
        operation.input = StartMulticastGroupSessionRequest
        operation.output = StartMulticastGroupSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/multicast-groups/{Id}/session", "code" => 204}}
      end)
      service.add_operation(:start_single_wireless_device_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#StartSingleWirelessDeviceImportTask"
        operation.name = "StartSingleWirelessDeviceImportTask"
        operation.input = StartSingleWirelessDeviceImportTaskRequest
        operation.output = StartSingleWirelessDeviceImportTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/wireless_single_device_import_task", "code" => 201}}
      end)
      service.add_operation(:start_wireless_device_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#StartWirelessDeviceImportTask"
        operation.name = "StartWirelessDeviceImportTask"
        operation.input = StartWirelessDeviceImportTaskRequest
        operation.output = StartWirelessDeviceImportTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/wireless_device_import_task", "code" => 201}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 204}}
      end)
      service.add_operation(:test_wireless_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#TestWirelessDevice"
        operation.name = "TestWirelessDevice"
        operation.input = TestWirelessDeviceRequest
        operation.output = TestWirelessDeviceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/wireless-devices/{Id}/test", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 204}}
      end)
      service.add_operation(:update_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateDestination"
        operation.name = "UpdateDestination"
        operation.input = UpdateDestinationRequest
        operation.output = UpdateDestinationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/destinations/{Name}", "code" => 204}}
      end)
      service.add_operation(:update_event_configuration_by_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateEventConfigurationByResourceTypes"
        operation.name = "UpdateEventConfigurationByResourceTypes"
        operation.input = UpdateEventConfigurationByResourceTypesRequest
        operation.output = UpdateEventConfigurationByResourceTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/event-configurations-resource-types", "code" => 204}}
      end)
      service.add_operation(:update_fuota_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateFuotaTask"
        operation.name = "UpdateFuotaTask"
        operation.input = UpdateFuotaTaskRequest
        operation.output = UpdateFuotaTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/fuota-tasks/{Id}", "code" => 204}}
      end)
      service.add_operation(:update_log_levels_by_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateLogLevelsByResourceTypes"
        operation.name = "UpdateLogLevelsByResourceTypes"
        operation.input = UpdateLogLevelsByResourceTypesRequest
        operation.output = UpdateLogLevelsByResourceTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/log-levels", "code" => 200}}
      end)
      service.add_operation(:update_metric_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateMetricConfiguration"
        operation.name = "UpdateMetricConfiguration"
        operation.input = UpdateMetricConfigurationRequest
        operation.output = UpdateMetricConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/metric-configuration", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_multicast_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateMulticastGroup"
        operation.name = "UpdateMulticastGroup"
        operation.input = UpdateMulticastGroupRequest
        operation.output = UpdateMulticastGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/multicast-groups/{Id}", "code" => 204}}
      end)
      service.add_operation(:update_network_analyzer_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateNetworkAnalyzerConfiguration"
        operation.name = "UpdateNetworkAnalyzerConfiguration"
        operation.input = UpdateNetworkAnalyzerConfigurationRequest
        operation.output = UpdateNetworkAnalyzerConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/network-analyzer-configurations/{ConfigurationName}", "code" => 204}}
      end)
      service.add_operation(:update_partner_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdatePartnerAccount"
        operation.name = "UpdatePartnerAccount"
        operation.input = UpdatePartnerAccountRequest
        operation.output = UpdatePartnerAccountResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/partner-accounts/{PartnerAccountId}", "code" => 204}}
      end)
      service.add_operation(:update_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdatePosition"
        operation.name = "UpdatePosition"
        operation.input = UpdatePositionRequest
        operation.output = UpdatePositionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is no longer supported."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/positions/{ResourceIdentifier}", "code" => 204}}
      end)
      service.add_operation(:update_resource_event_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateResourceEventConfiguration"
        operation.name = "UpdateResourceEventConfiguration"
        operation.input = UpdateResourceEventConfigurationRequest
        operation.output = UpdateResourceEventConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/event-configurations/{Identifier}", "code" => 204}}
      end)
      service.add_operation(:update_resource_position, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateResourcePosition"
        operation.name = "UpdateResourcePosition"
        operation.input = UpdateResourcePositionRequest
        operation.output = UpdateResourcePositionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/resource-positions/{ResourceIdentifier}", "code" => 204}}
      end)
      service.add_operation(:update_wireless_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateWirelessDevice"
        operation.name = "UpdateWirelessDevice"
        operation.input = UpdateWirelessDeviceRequest
        operation.output = UpdateWirelessDeviceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/wireless-devices/{Id}", "code" => 204}}
      end)
      service.add_operation(:update_wireless_device_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateWirelessDeviceImportTask"
        operation.name = "UpdateWirelessDeviceImportTask"
        operation.input = UpdateWirelessDeviceImportTaskRequest
        operation.output = UpdateWirelessDeviceImportTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/wireless_device_import_task/{Id}", "code" => 204}}
      end)
      service.add_operation(:update_wireless_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotwireless#UpdateWirelessGateway"
        operation.name = "UpdateWirelessGateway"
        operation.input = UpdateWirelessGatewayRequest
        operation.output = UpdateWirelessGatewayResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/wireless-gateways/{Id}", "code" => 204}}
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
