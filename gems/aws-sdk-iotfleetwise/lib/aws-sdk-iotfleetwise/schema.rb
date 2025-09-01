# frozen_string_literal: true

# This is generated code!

module Aws::IoTFleetWise
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Actuator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#Actuator', name: 'Actuator')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.*"})
    AssociateVehicleFleetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#AssociateVehicleFleetInput', name: 'AssociateVehicleFleetInput')
    AssociateVehicleFleetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#AssociateVehicleFleetOutput', name: 'AssociateVehicleFleetOutput')
    Attribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#Attribute', name: 'Attribute')
    BatchCreateVehicleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#BatchCreateVehicleInput', name: 'BatchCreateVehicleInput')
    BatchCreateVehicleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#BatchCreateVehicleOutput', name: 'BatchCreateVehicleOutput')
    BatchUpdateVehicleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#BatchUpdateVehicleInput', name: 'BatchUpdateVehicleInput')
    BatchUpdateVehicleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#BatchUpdateVehicleOutput', name: 'BatchUpdateVehicleOutput')
    Branch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#Branch', name: 'Branch')
    CampaignStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#CampaignStatus', name: 'CampaignStatus')
    CampaignSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CampaignSummary', name: 'CampaignSummary')
    CanDbcDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CanDbcDefinition', name: 'CanDbcDefinition')
    CanInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CanInterface', name: 'CanInterface')
    CanInterfaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#CanInterfaceName', name: 'CanInterfaceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    CanSignal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CanSignal', name: 'CanSignal')
    CanSignalName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#CanSignalName', name: 'CanSignalName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    CloudWatchLogDeliveryOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CloudWatchLogDeliveryOptions', name: 'CloudWatchLogDeliveryOptions')
    CloudWatchLogGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#CloudWatchLogGroupName', name: 'CloudWatchLogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_\\/#A-Za-z0-9]+$"})
    CollectionScheme = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#CollectionScheme', name: 'CollectionScheme')
    Compression = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#Compression', name: 'Compression')
    ConditionBasedCollectionScheme = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ConditionBasedCollectionScheme', name: 'ConditionBasedCollectionScheme')
    ConditionBasedSignalFetchConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ConditionBasedSignalFetchConfig', name: 'ConditionBasedSignalFetchConfig')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateCampaignInput', name: 'CreateCampaignInput')
    CreateCampaignOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateCampaignOutput', name: 'CreateCampaignOutput')
    CreateDecoderManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateDecoderManifestInput', name: 'CreateDecoderManifestInput')
    CreateDecoderManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateDecoderManifestOutput', name: 'CreateDecoderManifestOutput')
    CreateFleetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateFleetInput', name: 'CreateFleetInput')
    CreateFleetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateFleetOutput', name: 'CreateFleetOutput')
    CreateModelManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateModelManifestInput', name: 'CreateModelManifestInput')
    CreateModelManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateModelManifestOutput', name: 'CreateModelManifestOutput')
    CreateSignalCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateSignalCatalogInput', name: 'CreateSignalCatalogInput')
    CreateSignalCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateSignalCatalogOutput', name: 'CreateSignalCatalogOutput')
    CreateStateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateStateTemplateRequest', name: 'CreateStateTemplateRequest')
    CreateStateTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateStateTemplateResponse', name: 'CreateStateTemplateResponse')
    CreateVehicleError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateVehicleError', name: 'CreateVehicleError')
    CreateVehicleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateVehicleInput', name: 'CreateVehicleInput')
    CreateVehicleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateVehicleOutput', name: 'CreateVehicleOutput')
    CreateVehicleRequestItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateVehicleRequestItem', name: 'CreateVehicleRequestItem')
    CreateVehicleResponseItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CreateVehicleResponseItem', name: 'CreateVehicleResponseItem')
    CustomDecodingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#CustomDecodingId', name: 'CustomDecodingId', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^(?!.*\\.\\.)[a-zA-Z0-9_\\-#:.]+$"})
    CustomDecodingInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CustomDecodingInterface', name: 'CustomDecodingInterface')
    CustomDecodingSignal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CustomDecodingSignal', name: 'CustomDecodingSignal')
    CustomDecodingSignalInterfaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#CustomDecodingSignalInterfaceName', name: 'CustomDecodingSignalInterfaceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z\\d\\-_:]+$"})
    CustomProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CustomProperty', name: 'CustomProperty')
    CustomStruct = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#CustomStruct', name: 'CustomStruct')
    DataDestinationConfig = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#DataDestinationConfig', name: 'DataDestinationConfig')
    DataDestinationConfigs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#DataDestinationConfigs', name: 'DataDestinationConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    DataExtraDimensionNodePathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#DataExtraDimensionNodePathList', name: 'DataExtraDimensionNodePathList', traits: {"aws.api#data" => "content", "smithy.api#length" => {"min" => 0, "max" => 5}, "smithy.api#sensitive" => {}})
    DataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#DataFormat', name: 'DataFormat')
    DataPartition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DataPartition', name: 'DataPartition')
    DataPartitionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#DataPartitionId', name: 'DataPartitionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DataPartitionStorageOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DataPartitionStorageOptions', name: 'DataPartitionStorageOptions')
    DataPartitionUploadOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DataPartitionUploadOptions', name: 'DataPartitionUploadOptions')
    DataPartitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#DataPartitions', name: 'DataPartitions', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    DecoderManifestSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DecoderManifestSummary', name: 'DecoderManifestSummary')
    DecoderManifestValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DecoderManifestValidationException', name: 'DecoderManifestValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DefaultForUnmappedSignalsType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#DefaultForUnmappedSignalsType', name: 'DefaultForUnmappedSignalsType')
    DeleteCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteCampaignInput', name: 'DeleteCampaignInput')
    DeleteCampaignOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteCampaignOutput', name: 'DeleteCampaignOutput')
    DeleteDecoderManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteDecoderManifestInput', name: 'DeleteDecoderManifestInput')
    DeleteDecoderManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteDecoderManifestOutput', name: 'DeleteDecoderManifestOutput')
    DeleteFleetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteFleetInput', name: 'DeleteFleetInput')
    DeleteFleetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteFleetOutput', name: 'DeleteFleetOutput')
    DeleteModelManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteModelManifestInput', name: 'DeleteModelManifestInput')
    DeleteModelManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteModelManifestOutput', name: 'DeleteModelManifestOutput')
    DeleteSignalCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteSignalCatalogInput', name: 'DeleteSignalCatalogInput')
    DeleteSignalCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteSignalCatalogOutput', name: 'DeleteSignalCatalogOutput')
    DeleteStateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteStateTemplateRequest', name: 'DeleteStateTemplateRequest')
    DeleteStateTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteStateTemplateResponse', name: 'DeleteStateTemplateResponse')
    DeleteVehicleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteVehicleInput', name: 'DeleteVehicleInput')
    DeleteVehicleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DeleteVehicleOutput', name: 'DeleteVehicleOutput')
    DiagnosticsMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#DiagnosticsMode', name: 'DiagnosticsMode')
    DisassociateVehicleFleetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DisassociateVehicleFleetInput', name: 'DisassociateVehicleFleetInput')
    DisassociateVehicleFleetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#DisassociateVehicleFleetOutput', name: 'DisassociateVehicleFleetOutput')
    EncryptionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#EncryptionStatus', name: 'EncryptionStatus')
    EncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#EncryptionType', name: 'EncryptionType')
    EventExpressionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#EventExpressionList', name: 'EventExpressionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    FleetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#FleetSummary', name: 'FleetSummary')
    FormattedVss = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#FormattedVss', name: 'FormattedVss')
    Fqns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#Fqns', name: 'Fqns', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    FullyQualifiedName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#FullyQualifiedName', name: 'FullyQualifiedName', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    GetCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetCampaignInput', name: 'GetCampaignInput')
    GetCampaignOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetCampaignOutput', name: 'GetCampaignOutput')
    GetDecoderManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetDecoderManifestInput', name: 'GetDecoderManifestInput')
    GetDecoderManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetDecoderManifestOutput', name: 'GetDecoderManifestOutput')
    GetEncryptionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetEncryptionConfigurationRequest', name: 'GetEncryptionConfigurationRequest')
    GetEncryptionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetEncryptionConfigurationResponse', name: 'GetEncryptionConfigurationResponse')
    GetFleetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetFleetInput', name: 'GetFleetInput')
    GetFleetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetFleetOutput', name: 'GetFleetOutput')
    GetLoggingOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetLoggingOptionsInput', name: 'GetLoggingOptionsInput')
    GetLoggingOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetLoggingOptionsOutput', name: 'GetLoggingOptionsOutput')
    GetModelManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetModelManifestInput', name: 'GetModelManifestInput')
    GetModelManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetModelManifestOutput', name: 'GetModelManifestOutput')
    GetRegisterAccountStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetRegisterAccountStatusInput', name: 'GetRegisterAccountStatusInput')
    GetRegisterAccountStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetRegisterAccountStatusOutput', name: 'GetRegisterAccountStatusOutput')
    GetSignalCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetSignalCatalogInput', name: 'GetSignalCatalogInput')
    GetSignalCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetSignalCatalogOutput', name: 'GetSignalCatalogOutput')
    GetStateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetStateTemplateRequest', name: 'GetStateTemplateRequest')
    GetStateTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetStateTemplateResponse', name: 'GetStateTemplateResponse')
    GetVehicleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetVehicleInput', name: 'GetVehicleInput')
    GetVehicleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetVehicleOutput', name: 'GetVehicleOutput')
    GetVehicleStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetVehicleStatusInput', name: 'GetVehicleStatusInput')
    GetVehicleStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#GetVehicleStatusOutput', name: 'GetVehicleStatusOutput')
    IAMRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#IAMRoleArn', name: 'IAMRoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):iam::(\\d{12})?:(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$"})
    IamRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#IamRegistrationResponse', name: 'IamRegistrationResponse')
    IamResources = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#IamResources', name: 'IamResources')
    ImportDecoderManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ImportDecoderManifestInput', name: 'ImportDecoderManifestInput')
    ImportDecoderManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ImportDecoderManifestOutput', name: 'ImportDecoderManifestOutput')
    ImportSignalCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ImportSignalCatalogInput', name: 'ImportSignalCatalogInput')
    ImportSignalCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ImportSignalCatalogOutput', name: 'ImportSignalCatalogOutput')
    InterfaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#InterfaceId', name: 'InterfaceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[-a-zA-Z0-9_.]+$"})
    InterfaceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#InterfaceIds', name: 'InterfaceIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidNetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#InvalidNetworkInterface', name: 'InvalidNetworkInterface')
    InvalidNetworkInterfaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#InvalidNetworkInterfaces', name: 'InvalidNetworkInterfaces')
    InvalidNodeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#InvalidNodeException', name: 'InvalidNodeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSignal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#InvalidSignal', name: 'InvalidSignal')
    InvalidSignalDecoder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#InvalidSignalDecoder', name: 'InvalidSignalDecoder')
    InvalidSignalDecoders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#InvalidSignalDecoders', name: 'InvalidSignalDecoders')
    InvalidSignals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#InvalidSignals', name: 'InvalidSignals')
    InvalidSignalsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#InvalidSignalsException', name: 'InvalidSignalsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListCampaignsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListCampaignsInput', name: 'ListCampaignsInput')
    ListCampaignsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListCampaignsOutput', name: 'ListCampaignsOutput')
    ListDecoderManifestNetworkInterfacesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListDecoderManifestNetworkInterfacesInput', name: 'ListDecoderManifestNetworkInterfacesInput')
    ListDecoderManifestNetworkInterfacesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListDecoderManifestNetworkInterfacesOutput', name: 'ListDecoderManifestNetworkInterfacesOutput')
    ListDecoderManifestSignalsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListDecoderManifestSignalsInput', name: 'ListDecoderManifestSignalsInput')
    ListDecoderManifestSignalsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListDecoderManifestSignalsOutput', name: 'ListDecoderManifestSignalsOutput')
    ListDecoderManifestsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListDecoderManifestsInput', name: 'ListDecoderManifestsInput')
    ListDecoderManifestsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListDecoderManifestsOutput', name: 'ListDecoderManifestsOutput')
    ListFleetsForVehicleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListFleetsForVehicleInput', name: 'ListFleetsForVehicleInput')
    ListFleetsForVehicleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListFleetsForVehicleOutput', name: 'ListFleetsForVehicleOutput')
    ListFleetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListFleetsInput', name: 'ListFleetsInput')
    ListFleetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListFleetsOutput', name: 'ListFleetsOutput')
    ListModelManifestNodesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListModelManifestNodesInput', name: 'ListModelManifestNodesInput')
    ListModelManifestNodesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListModelManifestNodesOutput', name: 'ListModelManifestNodesOutput')
    ListModelManifestsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListModelManifestsInput', name: 'ListModelManifestsInput')
    ListModelManifestsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListModelManifestsOutput', name: 'ListModelManifestsOutput')
    ListResponseScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#ListResponseScope', name: 'ListResponseScope')
    ListSignalCatalogNodesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListSignalCatalogNodesInput', name: 'ListSignalCatalogNodesInput')
    ListSignalCatalogNodesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListSignalCatalogNodesOutput', name: 'ListSignalCatalogNodesOutput')
    ListSignalCatalogsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListSignalCatalogsInput', name: 'ListSignalCatalogsInput')
    ListSignalCatalogsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListSignalCatalogsOutput', name: 'ListSignalCatalogsOutput')
    ListStateTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListStateTemplatesRequest', name: 'ListStateTemplatesRequest')
    ListStateTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListStateTemplatesResponse', name: 'ListStateTemplatesResponse')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListVehiclesInFleetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListVehiclesInFleetInput', name: 'ListVehiclesInFleetInput')
    ListVehiclesInFleetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListVehiclesInFleetOutput', name: 'ListVehiclesInFleetOutput')
    ListVehiclesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListVehiclesInput', name: 'ListVehiclesInput')
    ListVehiclesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ListVehiclesOutput', name: 'ListVehiclesOutput')
    LogType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#LogType', name: 'LogType')
    ManifestStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#ManifestStatus', name: 'ManifestStatus')
    MessageSignal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#MessageSignal', name: 'MessageSignal')
    ModelManifestSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ModelManifestSummary', name: 'ModelManifestSummary')
    ModelSignalsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotfleetwise#ModelSignalsMap', name: 'ModelSignalsMap')
    MqttTopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#MqttTopicArn', name: 'MqttTopicArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    MqttTopicConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#MqttTopicConfig', name: 'MqttTopicConfig')
    NetworkFileBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotfleetwise#NetworkFileBlob', name: 'NetworkFileBlob', traits: {"smithy.api#length" => {"max" => 200000000}})
    NetworkFileDefinition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#NetworkFileDefinition', name: 'NetworkFileDefinition')
    NetworkFileDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#NetworkFileDefinitions', name: 'NetworkFileDefinitions')
    NetworkFilesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#NetworkFilesList', name: 'NetworkFilesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaceFailureReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#NetworkInterfaceFailureReason', name: 'NetworkInterfaceFailureReason')
    NetworkInterfaceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#NetworkInterfaceType', name: 'NetworkInterfaceType')
    NetworkInterfaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#NetworkInterfaces', name: 'NetworkInterfaces', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    Node = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#Node', name: 'Node')
    NodeCounts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#NodeCounts', name: 'NodeCounts')
    NodeDataEncoding = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#NodeDataEncoding', name: 'NodeDataEncoding')
    NodeDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#NodeDataType', name: 'NodeDataType')
    NodePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#NodePath', name: 'NodePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    NodePaths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#NodePaths', name: 'NodePaths', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    Nodes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#Nodes', name: 'Nodes', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ObdBitmaskLength = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#ObdBitmaskLength', name: 'ObdBitmaskLength', traits: {"smithy.api#range" => {"min" => 1, "max" => 8}})
    ObdByteLength = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#ObdByteLength', name: 'ObdByteLength', traits: {"smithy.api#range" => {"min" => 1, "max" => 8}})
    ObdInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ObdInterface', name: 'ObdInterface')
    ObdInterfaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#ObdInterfaceName', name: 'ObdInterfaceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    ObdSignal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ObdSignal', name: 'ObdSignal')
    ObdStandard = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#ObdStandard', name: 'ObdStandard', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    OnChangeStateTemplateUpdateStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#OnChangeStateTemplateUpdateStrategy', name: 'OnChangeStateTemplateUpdateStrategy')
    PeriodicStateTemplateUpdateStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#PeriodicStateTemplateUpdateStrategy', name: 'PeriodicStateTemplateUpdateStrategy')
    Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#Prefix', name: 'Prefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9-_:./!*'()]+$"})
    PrimitiveMessageDefinition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#PrimitiveMessageDefinition', name: 'PrimitiveMessageDefinition')
    ProtocolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#ProtocolName', name: 'ProtocolName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    ProtocolVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#ProtocolVersion', name: 'ProtocolVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$"})
    PutEncryptionConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#PutEncryptionConfigurationRequest', name: 'PutEncryptionConfigurationRequest')
    PutEncryptionConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#PutEncryptionConfigurationResponse', name: 'PutEncryptionConfigurationResponse')
    PutLoggingOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#PutLoggingOptionsInput', name: 'PutLoggingOptionsInput')
    PutLoggingOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#PutLoggingOptionsOutput', name: 'PutLoggingOptionsOutput')
    ROS2PrimitiveMessageDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ROS2PrimitiveMessageDefinition', name: 'ROS2PrimitiveMessageDefinition')
    ROS2PrimitiveType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#ROS2PrimitiveType', name: 'ROS2PrimitiveType')
    RegisterAccountInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#RegisterAccountInput', name: 'RegisterAccountInput')
    RegisterAccountOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#RegisterAccountOutput', name: 'RegisterAccountOutput')
    RegistrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#RegistrationStatus', name: 'RegistrationStatus')
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z\\d\\-_:]+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUniqueId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#ResourceUniqueId', name: 'ResourceUniqueId', traits: {"smithy.api#length" => {"min" => 26, "max" => 26}, "smithy.api#pattern" => "^[A-Z0-9]+$"})
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    S3BucketArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#S3BucketArn', name: 'S3BucketArn', traits: {"aws.api#arnReference" => {"type" => "AWS::S3::Bucket"}, "smithy.api#length" => {"min" => 16, "max" => 100}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):s3:::.+$"})
    S3Config = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#S3Config', name: 'S3Config')
    Sensor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#Sensor', name: 'Sensor')
    SignalCatalogSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#SignalCatalogSummary', name: 'SignalCatalogSummary')
    SignalDecoder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#SignalDecoder', name: 'SignalDecoder')
    SignalDecoderFailureReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#SignalDecoderFailureReason', name: 'SignalDecoderFailureReason')
    SignalDecoderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#SignalDecoderType', name: 'SignalDecoderType')
    SignalDecoders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#SignalDecoders', name: 'SignalDecoders', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    SignalFetchConfig = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#SignalFetchConfig', name: 'SignalFetchConfig')
    SignalFetchInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#SignalFetchInformation', name: 'SignalFetchInformation')
    SignalFetchInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#SignalFetchInformationList', name: 'SignalFetchInformationList', traits: {"aws.api#data" => "content", "smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#sensitive" => {}})
    SignalInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#SignalInformation', name: 'SignalInformation')
    SignalInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#SignalInformationList', name: 'SignalInformationList', traits: {"aws.api#data" => "content", "smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#sensitive" => {}})
    SignalNodeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#SignalNodeType', name: 'SignalNodeType')
    SignalValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#SignalValueType', name: 'SignalValueType')
    SpoolingMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#SpoolingMode', name: 'SpoolingMode')
    StateTemplateAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateAssociation', name: 'StateTemplateAssociation')
    StateTemplateAssociationIdentifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateAssociationIdentifiers', name: 'StateTemplateAssociationIdentifiers', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    StateTemplateAssociations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateAssociations', name: 'StateTemplateAssociations', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    StateTemplateDataExtraDimensionNodePathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateDataExtraDimensionNodePathList', name: 'StateTemplateDataExtraDimensionNodePathList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    StateTemplateMetadataExtraDimensionNodePathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateMetadataExtraDimensionNodePathList', name: 'StateTemplateMetadataExtraDimensionNodePathList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    StateTemplateProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateProperties', name: 'StateTemplateProperties', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    StateTemplateSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateSummaries', name: 'StateTemplateSummaries')
    StateTemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateSummary', name: 'StateTemplateSummary')
    StateTemplateUpdateStrategy = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#StateTemplateUpdateStrategy', name: 'StateTemplateUpdateStrategy')
    StorageCompressionFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#StorageCompressionFormat', name: 'StorageCompressionFormat')
    StorageLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#StorageLocation', name: 'StorageLocation', traits: {"aws.api#data" => "content", "smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    StorageMaximumSize = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#StorageMaximumSize', name: 'StorageMaximumSize')
    StorageMaximumSizeUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#StorageMaximumSizeUnit', name: 'StorageMaximumSizeUnit')
    StorageMaximumSizeValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#StorageMaximumSizeValue', name: 'StorageMaximumSizeValue', traits: {"smithy.api#range" => {"min" => 1, "max" => 1073741824}})
    StorageMinimumTimeToLive = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#StorageMinimumTimeToLive', name: 'StorageMinimumTimeToLive')
    StorageMinimumTimeToLiveUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#StorageMinimumTimeToLiveUnit', name: 'StorageMinimumTimeToLiveUnit')
    StorageMinimumTimeToLiveValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#StorageMinimumTimeToLiveValue', name: 'StorageMinimumTimeToLiveValue', traits: {"smithy.api#range" => {"min" => 1, "max" => 876600}})
    StructureMessageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#StructureMessageName', name: 'StructureMessageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    StructuredMessage = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.iotfleetwise#StructuredMessage', name: 'StructuredMessage')
    StructuredMessageDefinition = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#StructuredMessageDefinition', name: 'StructuredMessageDefinition', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    StructuredMessageFieldNameAndDataTypePair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#StructuredMessageFieldNameAndDataTypePair', name: 'StructuredMessageFieldNameAndDataTypePair')
    StructuredMessageListDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#StructuredMessageListDefinition', name: 'StructuredMessageListDefinition')
    StructuredMessageListType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#StructuredMessageListType', name: 'StructuredMessageListType')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeBasedCollectionScheme = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#TimeBasedCollectionScheme', name: 'TimeBasedCollectionScheme')
    TimeBasedSignalFetchConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#TimeBasedSignalFetchConfig', name: 'TimeBasedSignalFetchConfig')
    TimePeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#TimePeriod', name: 'TimePeriod')
    TimeUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#TimeUnit', name: 'TimeUnit')
    TimestreamConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#TimestreamConfig', name: 'TimestreamConfig')
    TimestreamDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#TimestreamDatabaseName', name: 'TimestreamDatabaseName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    TimestreamRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#TimestreamRegistrationResponse', name: 'TimestreamRegistrationResponse')
    TimestreamResources = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#TimestreamResources', name: 'TimestreamResources')
    TimestreamTableArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#TimestreamTableArn', name: 'TimestreamTableArn', traits: {"aws.api#arnReference" => {"type" => "AWS::Timestream::Table"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):timestream:[a-zA-Z0-9-]+:[0-9]{12}:database/[a-zA-Z0-9_.-]+/table/[a-zA-Z0-9_.-]+$"})
    TimestreamTableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#TimestreamTableName', name: 'TimestreamTableName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    TopicName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#TopicName', name: 'TopicName', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-#:./]+$"})
    TriggerMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#TriggerMode', name: 'TriggerMode')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateCampaignAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#UpdateCampaignAction', name: 'UpdateCampaignAction')
    UpdateCampaignInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateCampaignInput', name: 'UpdateCampaignInput')
    UpdateCampaignOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateCampaignOutput', name: 'UpdateCampaignOutput')
    UpdateDecoderManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateDecoderManifestInput', name: 'UpdateDecoderManifestInput')
    UpdateDecoderManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateDecoderManifestOutput', name: 'UpdateDecoderManifestOutput')
    UpdateFleetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateFleetInput', name: 'UpdateFleetInput')
    UpdateFleetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateFleetOutput', name: 'UpdateFleetOutput')
    UpdateMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#UpdateMode', name: 'UpdateMode')
    UpdateModelManifestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateModelManifestInput', name: 'UpdateModelManifestInput')
    UpdateModelManifestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateModelManifestOutput', name: 'UpdateModelManifestOutput')
    UpdateSignalCatalogInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateSignalCatalogInput', name: 'UpdateSignalCatalogInput')
    UpdateSignalCatalogOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateSignalCatalogOutput', name: 'UpdateSignalCatalogOutput')
    UpdateStateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateStateTemplateRequest', name: 'UpdateStateTemplateRequest')
    UpdateStateTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateStateTemplateResponse', name: 'UpdateStateTemplateResponse')
    UpdateVehicleError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateVehicleError', name: 'UpdateVehicleError')
    UpdateVehicleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateVehicleInput', name: 'UpdateVehicleInput')
    UpdateVehicleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateVehicleOutput', name: 'UpdateVehicleOutput')
    UpdateVehicleRequestItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateVehicleRequestItem', name: 'UpdateVehicleRequestItem')
    UpdateVehicleResponseItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#UpdateVehicleResponseItem', name: 'UpdateVehicleResponseItem')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VehicleAssociationBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#VehicleAssociationBehavior', name: 'VehicleAssociationBehavior')
    VehicleMiddleware = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#VehicleMiddleware', name: 'VehicleMiddleware')
    VehicleMiddlewareName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#VehicleMiddlewareName', name: 'VehicleMiddlewareName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    VehicleMiddlewareProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#VehicleMiddlewareProtocol', name: 'VehicleMiddlewareProtocol')
    VehicleState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotfleetwise#VehicleState', name: 'VehicleState')
    VehicleStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#VehicleStatus', name: 'VehicleStatus')
    VehicleStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#VehicleStatusList', name: 'VehicleStatusList')
    VehicleSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotfleetwise#VehicleSummary', name: 'VehicleSummary')
    ActionEventExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#actionEventExpression', name: 'ActionEventExpression', traits: {"aws.api#data" => "content", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#arn', name: 'Arn')
    AttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#attributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    AttributeNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#attributeNamesList', name: 'AttributeNamesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#attributeValue', name: 'AttributeValue')
    AttributeValuesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#attributeValuesList', name: 'AttributeValuesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    AttributesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotfleetwise#attributesMap', name: 'AttributesMap')
    CampaignArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#campaignArn', name: 'CampaignArn', traits: {"smithy.api#pattern" => "^arn:aws:iotfleetwise:[a-z0-9-]+:[0-9]{12}:campaign/[a-zA-Z\\d\\-_:]{1,100}$"})
    CampaignName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#campaignName', name: 'CampaignName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z\\d\\-_:]+$"})
    CampaignSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#campaignSummaries', name: 'CampaignSummaries')
    CollectionPeriodMs = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#collectionPeriodMs', name: 'CollectionPeriodMs', traits: {"smithy.api#range" => {"min" => 10000, "max" => 86400000}})
    CreateVehicleErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#createVehicleErrors', name: 'CreateVehicleErrors')
    CreateVehicleRequestItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#createVehicleRequestItems', name: 'CreateVehicleRequestItems', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CreateVehicleResponses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#createVehicleResponses', name: 'CreateVehicleResponses')
    CustomerAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#customerAccountId', name: 'CustomerAccountId')
    DecoderManifestSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#decoderManifestSummaries', name: 'DecoderManifestSummaries')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.iotfleetwise#double', name: 'Double')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#errorMessage', name: 'ErrorMessage')
    EventExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#eventExpression', name: 'EventExpression', traits: {"aws.api#data" => "content", "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    FetchConfigEventExpression = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#fetchConfigEventExpression', name: 'FetchConfigEventExpression', traits: {"aws.api#data" => "content", "smithy.api#length" => {"min" => 1, "max" => 400}, "smithy.api#sensitive" => {}})
    FleetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#fleetId', name: 'FleetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    FleetSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#fleetSummaries', name: 'FleetSummaries')
    Fleets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#fleets', name: 'Fleets')
    LanguageVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#languageVersion', name: 'LanguageVersion', traits: {"smithy.api#range" => {"min" => 1, "max" => 1}})
    ListOfStrings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#listOfStrings', name: 'ListOfStrings')
    ListVehiclesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#listVehiclesMaxResults', name: 'ListVehiclesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#maxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSampleCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#maxSampleCount', name: 'MaxSampleCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 4294967295}})
    MaxStringSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#maxStringSize', name: 'MaxStringSize', traits: {"smithy.api#range" => {"min" => 0, "max" => 2048}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#message', name: 'Message', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    ModelManifestSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#modelManifestSummaries', name: 'ModelManifestSummaries')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#nextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    NonNegativeInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#nonNegativeInteger', name: 'NonNegativeInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    Number = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#number', name: 'Number', traits: {"smithy.api#default" => 0})
    PositiveInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#positiveInteger', name: 'PositiveInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 2147483647}})
    PositiveLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#positiveLong', name: 'PositiveLong', traits: {"smithy.api#range" => {"min" => 1, "max" => 9223372036854775807}})
    Priority = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#priority', name: 'Priority', traits: {"smithy.api#range" => {"min" => 0}})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#resourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z\\d\\-_:]+$"})
    SignalCatalogSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#signalCatalogSummaries', name: 'SignalCatalogSummaries')
    StatusStr = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#statusStr', name: 'StatusStr', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[A-Z_]*$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#string', name: 'String')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotfleetwise#timestamp', name: 'Timestamp')
    Uint32 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotfleetwise#uint32', name: 'Uint32', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    UpdateVehicleErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#updateVehicleErrors', name: 'UpdateVehicleErrors')
    UpdateVehicleRequestItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#updateVehicleRequestItems', name: 'UpdateVehicleRequestItems', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    UpdateVehicleResponseItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#updateVehicleResponseItems', name: 'UpdateVehicleResponseItems')
    VehicleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#vehicleName', name: 'VehicleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z\\d\\-_:]+$"})
    VehicleSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#vehicleSummaries', name: 'VehicleSummaries')
    Vehicles = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotfleetwise#vehicles', name: 'Vehicles')
    WildcardSignalName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotfleetwise#wildcardSignalName', name: 'WildcardSignalName', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[\\w|*|-]+(\\.[\\w|*|-]+)*$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Actuator.add_member(:fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the actuator. For example, the fully qualified name of an\n            actuator might be <code>Vehicle.Front.Left.Door.Lock</code>.</p>", "smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$", "smithy.api#required" => {}}))
    Actuator.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The specified data type of the actuator. </p>", "smithy.api#required" => {}}))
    Actuator.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the actuator.</p>"}))
    Actuator.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The scientific unit for the actuator.</p>"}))
    Actuator.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'allowedValues', traits: {"smithy.api#documentation" => "<p>A list of possible values an actuator can take.</p>"}))
    Actuator.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The specified possible minimum value of an actuator.</p>"}))
    Actuator.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The specified possible maximum value of an actuator.</p>"}))
    Actuator.add_member(:assigned_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'assignedValue', traits: {"smithy.api#deprecated" => {"message" => "assignedValue is no longer in use"}, "smithy.api#documentation" => "<p>A specified value for the actuator.</p>"}))
    Actuator.add_member(:deprecation_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'deprecationMessage', traits: {"smithy.api#documentation" => "<p>The deprecation message for the node or the branch that was moved or deleted.</p>"}))
    Actuator.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>A comment in addition to the description.</p>"}))
    Actuator.add_member(:struct_fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath, location_name: 'structFullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the struct node for the actuator if the data type of the\n            actuator is <code>Struct</code> or <code>StructArray</code>. For example, the struct\n            fully qualified name of an actuator might be\n            <code>Vehicle.Door.LockStruct</code>.</p>"}))
    Actuator.type = Types::Actuator
    AssociateVehicleFleetInput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p> The unique ID of the vehicle to associate with the fleet. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateVehicleFleetInput.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p> The ID of a fleet. </p>", "smithy.api#required" => {}}))
    AssociateVehicleFleetInput.type = Types::AssociateVehicleFleetInput
    AssociateVehicleFleetOutput.type = Types::AssociateVehicleFleetOutput
    Attribute.add_member(:fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the attribute. For example, the fully qualified name of an\n            attribute might be <code>Vehicle.Body.Engine.Type</code>.</p>", "smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$", "smithy.api#required" => {}}))
    Attribute.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The specified data type of the attribute. </p>", "smithy.api#required" => {}}))
    Attribute.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the attribute.</p>"}))
    Attribute.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The scientific unit for the attribute.</p>"}))
    Attribute.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'allowedValues', traits: {"smithy.api#documentation" => "<p>A list of possible values an attribute can be assigned.</p>"}))
    Attribute.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The specified possible minimum value of the attribute.</p>"}))
    Attribute.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The specified possible maximum value of the attribute.</p>"}))
    Attribute.add_member(:assigned_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'assignedValue', traits: {"smithy.api#deprecated" => {"message" => "assignedValue is no longer in use"}, "smithy.api#documentation" => "<p>A specified value for the attribute.</p>"}))
    Attribute.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value of the attribute.</p>"}))
    Attribute.add_member(:deprecation_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'deprecationMessage', traits: {"smithy.api#documentation" => "<p>The deprecation message for the node or the branch that was moved or deleted.</p>"}))
    Attribute.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>A comment in addition to the description.</p>"}))
    Attribute.type = Types::Attribute
    BatchCreateVehicleInput.add_member(:vehicles, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVehicleRequestItems, location_name: 'vehicles', traits: {"smithy.api#documentation" => "<p> A list of information about each vehicle to create. For more information, see the\n                 API data type.</p>", "smithy.api#required" => {}}))
    BatchCreateVehicleInput.type = Types::BatchCreateVehicleInput
    BatchCreateVehicleOutput.add_member(:vehicles, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVehicleResponses, location_name: 'vehicles', traits: {"smithy.api#documentation" => "<p> A list of information about a batch of created vehicles. For more information, see\n            the  API data type.</p>"}))
    BatchCreateVehicleOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVehicleErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A list of information about creation errors, or an empty list if there aren't any\n            errors. </p>"}))
    BatchCreateVehicleOutput.type = Types::BatchCreateVehicleOutput
    BatchUpdateVehicleInput.add_member(:vehicles, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVehicleRequestItems, location_name: 'vehicles', traits: {"smithy.api#documentation" => "<p> A list of information about the vehicles to update. For more information, see the\n                 API data type.</p>", "smithy.api#required" => {}}))
    BatchUpdateVehicleInput.type = Types::BatchUpdateVehicleInput
    BatchUpdateVehicleOutput.add_member(:vehicles, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVehicleResponseItems, location_name: 'vehicles', traits: {"smithy.api#documentation" => "<p> A list of information about the batch of updated vehicles. </p>\n         <note>\n            <p>This list contains only unique IDs for the vehicles that were updated.</p>\n         </note>"}))
    BatchUpdateVehicleOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVehicleErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A list of information about errors returned while updating a batch of vehicles, or, if\n            there aren't any errors, an empty list.</p>"}))
    BatchUpdateVehicleOutput.type = Types::BatchUpdateVehicleOutput
    Branch.add_member(:fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the branch. For example, the fully qualified name of a\n            branch might be <code>Vehicle.Body.Engine</code>.</p>", "smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$", "smithy.api#required" => {}}))
    Branch.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the branch.</p>"}))
    Branch.add_member(:deprecation_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'deprecationMessage', traits: {"smithy.api#documentation" => "<p>The deprecation message for the node or the branch that was moved or deleted.</p>"}))
    Branch.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>A comment in addition to the description.</p>"}))
    Branch.type = Types::Branch
    CampaignStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CampaignStatus.add_member(:waiting_for_approval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING_FOR_APPROVAL', traits: {"smithy.api#enumValue" => "WAITING_FOR_APPROVAL"}))
    CampaignStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CampaignStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    CampaignSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a campaign.</p>"}))
    CampaignSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a campaign.</p>"}))
    CampaignSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the campaign.</p>"}))
    CampaignSummary.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p>The ARN of the signal catalog associated with the campaign.</p>"}))
    CampaignSummary.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The ARN of a vehicle or fleet to which the campaign is deployed.</p>"}))
    CampaignSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of a campaign. The status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> - Amazon Web Services IoT FleetWise is processing your request to create the\n                    campaign.</p>\n            </li>\n            <li>\n               <p>\n                  <code>WAITING_FOR_APPROVAL</code> - After a campaign is created, it enters the\n                        <code>WAITING_FOR_APPROVAL</code> state. To allow Amazon Web Services IoT FleetWise to deploy the\n                    campaign to the target vehicle or fleet, use the  API operation to approve the campaign.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code> - The campaign is active. </p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPENDED</code> - The campaign is suspended. To resume the campaign, use\n                    the  API operation. </p>\n            </li>\n         </ul>"}))
    CampaignSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the campaign was created.</p>", "smithy.api#required" => {}}))
    CampaignSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The last time the campaign was modified.</p>", "smithy.api#required" => {}}))
    CampaignSummary.type = Types::CampaignSummary
    CanDbcDefinition.add_member(:network_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceId, location_name: 'networkInterface', traits: {"smithy.api#documentation" => "<p>Contains information about a network interface.</p>", "smithy.api#required" => {}}))
    CanDbcDefinition.add_member(:can_dbc_files, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFilesList, location_name: 'canDbcFiles', traits: {"smithy.api#documentation" => "<p>A list of DBC files. You can upload only one DBC file for each network interface and\n            specify up to five (inclusive) files in the list. The DBC file can be a maximum size of\n            200 MB.</p>", "smithy.api#required" => {}}))
    CanDbcDefinition.add_member(:signals_map, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSignalsMap, location_name: 'signalsMap', traits: {"smithy.api#documentation" => "<p>Pairs every signal specified in your vehicle model with a signal decoder.</p>"}))
    CanDbcDefinition.type = Types::CanDbcDefinition
    CanInterface.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanInterfaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The unique name of the interface.</p>", "smithy.api#required" => {}}))
    CanInterface.add_member(:protocol_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolName, location_name: 'protocolName', traits: {"smithy.api#documentation" => "<p>The name of the communication protocol for the interface.</p>"}))
    CanInterface.add_member(:protocol_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolVersion, location_name: 'protocolVersion', traits: {"smithy.api#documentation" => "<p>The version of the communication protocol for the interface.</p>"}))
    CanInterface.type = Types::CanInterface
    CanSignal.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'messageId', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The ID of the message.</p>", "smithy.api#required" => {}}))
    CanSignal.add_member(:is_big_endian, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'isBigEndian', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the byte ordering of a CAN message is big-endian.</p>", "smithy.api#required" => {}}))
    CanSignal.add_member(:is_signed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'isSigned', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Determines whether the message is signed (<code>true</code>) or not (<code>false</code>). If it's signed, the message can represent both positive and negative numbers. The <code>isSigned</code> parameter only applies to the <code>INTEGER</code> raw signal type, and it doesn't affect the <code>FLOATING_POINT</code> raw signal type.</p>", "smithy.api#required" => {}}))
    CanSignal.add_member(:start_bit, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'startBit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Indicates the beginning of the CAN signal. This should always be the least significant\n            bit (LSB).</p>\n         <p>This value might be different from the value in a DBC file. For little endian signals,\n                <code>startBit</code> is the same value as in the DBC file. For big endian signals\n            in a DBC file, the start bit is the most significant bit (MSB). You will have to\n            calculate the LSB instead and pass it as the <code>startBit</code>.</p>", "smithy.api#required" => {}}))
    CanSignal.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'offset', traits: {"smithy.api#documentation" => "<p>The offset used to calculate the signal value. Combined with factor, the calculation\n            is <code>value = raw_value * factor + offset</code>.</p>", "smithy.api#required" => {}}))
    CanSignal.add_member(:factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'factor', traits: {"smithy.api#documentation" => "<p>A multiplier used to decode the CAN message.</p>", "smithy.api#required" => {}}))
    CanSignal.add_member(:length, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'length', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>How many bytes of data are in the message.</p>", "smithy.api#required" => {}}))
    CanSignal.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanSignalName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the signal.</p>"}))
    CanSignal.add_member(:signal_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalValueType, location_name: 'signalValueType', traits: {"smithy.api#documentation" => "<p>The value type of the signal. The default value is <code>INTEGER</code>.</p>"}))
    CanSignal.type = Types::CanSignal
    CloudWatchLogDeliveryOptions.add_member(:log_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'logType', traits: {"smithy.api#documentation" => "<p>The type of log to send data to Amazon CloudWatch Logs.</p>", "smithy.api#required" => {}}))
    CloudWatchLogDeliveryOptions.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: 'logGroupName', traits: {"smithy.api#documentation" => "<p>The Amazon CloudWatch Logs group the operation sends data to.</p>"}))
    CloudWatchLogDeliveryOptions.type = Types::CloudWatchLogDeliveryOptions
    CollectionScheme.add_member(:time_based_collection_scheme, Types::CollectionScheme::TimeBasedCollectionScheme, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeBasedCollectionScheme, location_name: 'timeBasedCollectionScheme', traits: {"smithy.api#documentation" => "<p>Information about a collection scheme that uses a time period to decide how often to\n            collect data.</p>"}))
    CollectionScheme.add_member(:condition_based_collection_scheme, Types::CollectionScheme::ConditionBasedCollectionScheme, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionBasedCollectionScheme, location_name: 'conditionBasedCollectionScheme', traits: {"smithy.api#documentation" => "<p>Information about a collection scheme that uses a simple logical expression to\n            recognize what data to collect.</p>"}))
    CollectionScheme.add_member(:unknown, Types::CollectionScheme::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    CollectionScheme.type = Types::CollectionScheme
    Compression.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    Compression.add_member(:snappy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPPY', traits: {"smithy.api#enumValue" => "SNAPPY"}))
    ConditionBasedCollectionScheme.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: EventExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>The logical expression used to recognize what data to collect. For example, <code>$variable.`Vehicle.OutsideAirTemperature` &gt;= 105.0</code>.</p>", "smithy.api#required" => {}}))
    ConditionBasedCollectionScheme.add_member(:minimum_trigger_interval_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Uint32, location_name: 'minimumTriggerIntervalMs', traits: {"smithy.api#documentation" => "<p>The minimum duration of time between two triggering events to collect data, in\n            milliseconds.</p>\n         <note>\n            <p>If a signal changes often, you might want to collect data at a slower rate.</p>\n         </note>"}))
    ConditionBasedCollectionScheme.add_member(:trigger_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerMode, location_name: 'triggerMode', traits: {"smithy.api#documentation" => "<p>Whether to collect data for all triggering events (<code>ALWAYS</code>). Specify\n                (<code>RISING_EDGE</code>), or specify only when the condition first evaluates to\n            false. For example, triggering on \"AirbagDeployed\"; Users aren't interested on\n            triggering when the airbag is already exploded; they only care about the change from not\n            deployed =&gt; deployed.</p>"}))
    ConditionBasedCollectionScheme.add_member(:condition_language_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageVersion, location_name: 'conditionLanguageVersion', traits: {"smithy.api#documentation" => "<p>Specifies the version of the conditional expression language.</p>"}))
    ConditionBasedCollectionScheme.type = Types::ConditionBasedCollectionScheme
    ConditionBasedSignalFetchConfig.add_member(:condition_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: FetchConfigEventExpression, location_name: 'conditionExpression', traits: {"smithy.api#documentation" => "<p>The condition that must be satisfied to trigger a signal fetch.</p>", "smithy.api#required" => {}}))
    ConditionBasedSignalFetchConfig.add_member(:trigger_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerMode, location_name: 'triggerMode', traits: {"smithy.api#documentation" => "<p>Indicates the mode in which the signal fetch is triggered.</p>", "smithy.api#required" => {}}))
    ConditionBasedSignalFetchConfig.type = Types::ConditionBasedSignalFetchConfig
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource on which there are conflicting operations.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource on which there are conflicting operations..</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateCampaignInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the campaign to create. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateCampaignInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>An optional description of the campaign to help identify its purpose.</p>"}))
    CreateCampaignInput.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signal catalog to associate with the campaign.\n        </p>", "smithy.api#required" => {}}))
    CreateCampaignInput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p> The ARN of the vehicle or fleet to deploy a campaign to. </p>", "smithy.api#required" => {}}))
    CreateCampaignInput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The time, in milliseconds, to deliver a campaign after it was approved. If\n            it's not specified, <code>0</code> is used.</p>\n         <p>Default: <code>0</code>\n         </p>"}))
    CreateCampaignInput.add_member(:expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expiryTime', traits: {"smithy.api#documentation" => "<p>The time the campaign expires, in seconds since epoch (January 1, 1970 at\n            midnight UTC time). Vehicle data isn't collected after the campaign expires. </p>\n         <p>Default: 253402214400 (December 31, 9999, 00:00:00 UTC)</p>"}))
    CreateCampaignInput.add_member(:post_trigger_collection_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Uint32, location_name: 'postTriggerCollectionDuration', traits: {"smithy.api#documentation" => "<p>How long (in milliseconds) to collect raw data after a triggering event\n            initiates the collection. If it's not specified, <code>0</code> is used.</p>\n         <p>Default: <code>0</code>\n         </p>"}))
    CreateCampaignInput.add_member(:diagnostics_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DiagnosticsMode, location_name: 'diagnosticsMode', traits: {"smithy.api#documentation" => "<p>Option for a vehicle to send diagnostic trouble codes to Amazon Web Services IoT FleetWise. If you\n            want to send diagnostic trouble codes, use <code>SEND_ACTIVE_DTCS</code>. If it's not\n            specified, <code>OFF</code> is used.</p>\n         <p>Default: <code>OFF</code>\n         </p>"}))
    CreateCampaignInput.add_member(:spooling_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: SpoolingMode, location_name: 'spoolingMode', traits: {"smithy.api#documentation" => "<p>Determines whether to store collected data after a vehicle lost a connection with the\n            cloud. After a connection is re-established, the data is automatically forwarded to\n            Amazon Web Services IoT FleetWise. If you want to store collected data when a vehicle loses connection with the\n            cloud, use <code>TO_DISK</code>. If it's not specified, <code>OFF</code> is used.</p>\n         <p>Default: <code>OFF</code>\n         </p>"}))
    CreateCampaignInput.add_member(:compression, Smithy::Schema::Shapes::ShapeRef.new(shape: Compression, location_name: 'compression', traits: {"smithy.api#documentation" => "<p>Determines whether to compress signals before transmitting data to Amazon Web Services IoT FleetWise. If you\n            don't want to compress the signals, use <code>OFF</code>. If it's not specified,\n                <code>SNAPPY</code> is used. </p>\n         <p>Default: <code>SNAPPY</code>\n         </p>"}))
    CreateCampaignInput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#deprecated" => {"message" => "priority is no longer used or needed as input"}, "smithy.api#documentation" => "<p>A number indicating the priority of one campaign over another campaign for\n            a certain vehicle or fleet. A campaign with the lowest value is deployed to vehicles\n            before any other campaigns. If it's not specified, <code>0</code> is used. </p>\n         <p>Default: <code>0</code>\n         </p>"}))
    CreateCampaignInput.add_member(:signals_to_collect, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalInformationList, location_name: 'signalsToCollect', traits: {"smithy.api#documentation" => "<p>A list of information about signals to collect. </p>\n         <note>\n            <p>If you upload a signal as a condition in a data partition for a campaign, then\n                those same signals must be included in <code>signalsToCollect</code>.</p>\n         </note>"}))
    CreateCampaignInput.add_member(:collection_scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionScheme, location_name: 'collectionScheme', traits: {"smithy.api#documentation" => "<p> The data collection scheme associated with the campaign. You can specify a scheme\n            that collects data based on time or an event.</p>", "smithy.api#required" => {}}))
    CreateCampaignInput.add_member(:data_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: DataExtraDimensionNodePathList, location_name: 'dataExtraDimensions', traits: {"smithy.api#documentation" => "<p>A list of vehicle attributes to associate with a campaign. </p>\n         <p>Enrich the data with specified vehicle attributes. For example, add <code>make</code>\n            and <code>model</code> to the campaign, and Amazon Web Services IoT FleetWise will associate the data with those\n            attributes as dimensions in Amazon Timestream. You can then query the data against\n                <code>make</code> and <code>model</code>.</p>\n         <p>Default: An empty array</p>"}))
    CreateCampaignInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the campaign.</p>"}))
    CreateCampaignInput.add_member(:data_destination_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDestinationConfigs, location_name: 'dataDestinationConfigs', traits: {"smithy.api#documentation" => "<p>The destination where the campaign sends data. You can send data to an MQTT topic,\n            or store it in Amazon S3 or Amazon Timestream.</p>\n         <p>MQTT is the publish/subscribe messaging protocol used by Amazon Web Services IoT to communicate with\n            your devices.</p>\n         <p>Amazon S3 optimizes the cost of data storage and provides additional mechanisms to use vehicle \n            data, such as data lakes, centralized data storage, data processing pipelines, and analytics. \n            Amazon Web Services IoT FleetWise supports at-least-once file delivery to S3. Your vehicle data is stored on multiple \n            Amazon Web Services IoT FleetWise servers for redundancy and high availability.</p>\n         <p>You can use Amazon Timestream to access and analyze time series data, and Timestream to query\n            vehicle data so that you can identify trends and patterns.</p>"}))
    CreateCampaignInput.add_member(:data_partitions, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPartitions, location_name: 'dataPartitions', traits: {"smithy.api#documentation" => "<p>The data partitions associated with the signals collected from the vehicle.</p>"}))
    CreateCampaignInput.add_member(:signals_to_fetch, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalFetchInformationList, location_name: 'signalsToFetch', traits: {"smithy.api#documentation" => "<p>A list of information about signals to fetch.</p>"}))
    CreateCampaignInput.type = Types::CreateCampaignInput
    CreateCampaignOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the created campaign.</p>"}))
    CreateCampaignOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The ARN of the created campaign. </p>"}))
    CreateCampaignOutput.type = Types::CreateCampaignOutput
    CreateDecoderManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The unique name of the decoder manifest to create.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDecoderManifestInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the decoder manifest. </p>"}))
    CreateDecoderManifestInput.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the vehicle model (model manifest). </p>", "smithy.api#pattern" => "^arn:aws:iotfleetwise:[a-z0-9-]+:[0-9]{12}:model-manifest/[a-zA-Z\\d\\-_:]{1,100}$", "smithy.api#required" => {}}))
    CreateDecoderManifestInput.add_member(:signal_decoders, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalDecoders, location_name: 'signalDecoders', traits: {"smithy.api#documentation" => "<p> A list of information about signal decoders. </p>"}))
    CreateDecoderManifestInput.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfaces', traits: {"smithy.api#documentation" => "<p> A list of information about available network interfaces. </p>"}))
    CreateDecoderManifestInput.add_member(:default_for_unmapped_signals, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultForUnmappedSignalsType, location_name: 'defaultForUnmappedSignals', traits: {"smithy.api#documentation" => "<p>Use default decoders for all unmapped signals in the model. You don't need to provide any detailed decoding information.</p>\n         <important>\n            <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html\">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>\n         </important>"}))
    CreateDecoderManifestInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the decoder manifest.</p>"}))
    CreateDecoderManifestInput.type = Types::CreateDecoderManifestInput
    CreateDecoderManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the created decoder manifest. </p>", "smithy.api#required" => {}}))
    CreateDecoderManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The ARN of the created decoder manifest. </p>", "smithy.api#required" => {}}))
    CreateDecoderManifestOutput.type = Types::CreateDecoderManifestOutput
    CreateFleetInput.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p> The unique ID of the fleet to create. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFleetInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the fleet to create. </p>"}))
    CreateFleetInput.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a signal catalog. </p>", "smithy.api#required" => {}}))
    CreateFleetInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the fleet.</p>"}))
    CreateFleetInput.type = Types::CreateFleetInput
    CreateFleetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the created fleet. </p>", "smithy.api#required" => {}}))
    CreateFleetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The ARN of the created fleet. </p>", "smithy.api#required" => {}}))
    CreateFleetOutput.type = Types::CreateFleetOutput
    CreateModelManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the vehicle model to create.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateModelManifestInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the vehicle model. </p>"}))
    CreateModelManifestInput.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'nodes', traits: {"smithy.api#documentation" => "<p> A list of nodes, which are a general abstraction of signals. </p>", "smithy.api#length" => {"max" => 500}, "smithy.api#required" => {}}))
    CreateModelManifestInput.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a signal catalog. </p>", "smithy.api#required" => {}}))
    CreateModelManifestInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the vehicle model.</p>"}))
    CreateModelManifestInput.type = Types::CreateModelManifestInput
    CreateModelManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the created vehicle model.</p>", "smithy.api#required" => {}}))
    CreateModelManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The ARN of the created vehicle model.</p>", "smithy.api#required" => {}}))
    CreateModelManifestOutput.type = Types::CreateModelManifestOutput
    CreateSignalCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the signal catalog to create. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSignalCatalogInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the signal catalog.</p>"}))
    CreateSignalCatalogInput.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Nodes, location_name: 'nodes', traits: {"smithy.api#documentation" => "<p> A list of information about nodes, which are a general abstraction of signals. For\n            more information, see the  API data type.</p>"}))
    CreateSignalCatalogInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the signal catalog.</p>"}))
    CreateSignalCatalogInput.type = Types::CreateSignalCatalogInput
    CreateSignalCatalogOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the created signal catalog. </p>", "smithy.api#required" => {}}))
    CreateSignalCatalogOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The ARN of the created signal catalog. </p>", "smithy.api#required" => {}}))
    CreateSignalCatalogOutput.type = Types::CreateSignalCatalogOutput
    CreateStateTemplateRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStateTemplateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the state template.</p>"}))
    CreateStateTemplateRequest.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p>The ARN of the signal catalog associated with the state template.</p>", "smithy.api#required" => {}}))
    CreateStateTemplateRequest.add_member(:state_template_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateProperties, location_name: 'stateTemplateProperties', traits: {"smithy.api#documentation" => "<p>A list of signals from which data is collected. The state template properties contain the fully qualified names of the signals.</p>", "smithy.api#required" => {}}))
    CreateStateTemplateRequest.add_member(:data_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateDataExtraDimensionNodePathList, location_name: 'dataExtraDimensions', traits: {"smithy.api#documentation" => "<p>A list of vehicle attributes to associate with the payload published on the state template's \n          MQTT topic. (See <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data\">\n          Processing last known state vehicle data using MQTT messaging</a>). For example, if you add \n          <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise \n          will enrich the protobuf encoded payload with those attributes in the <code>extraDimensions</code>\n          field.</p>"}))
    CreateStateTemplateRequest.add_member(:metadata_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateMetadataExtraDimensionNodePathList, location_name: 'metadataExtraDimensions', traits: {"smithy.api#documentation" => "<p>A list of vehicle attributes to associate with user properties of the messages published on the\n          state template's MQTT topic. (See <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data\">\n          Processing last known state vehicle data using MQTT messaging</a>). For example, if you add \n          <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise \n          will include these attributes as User Properties with the MQTT message.</p>\n         <p>Default: An empty array</p>"}))
    CreateStateTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the state template.</p>"}))
    CreateStateTemplateRequest.type = Types::CreateStateTemplateRequest
    CreateStateTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state template.</p>"}))
    CreateStateTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state template.</p>"}))
    CreateStateTemplateResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUniqueId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>"}))
    CreateStateTemplateResponse.type = Types::CreateStateTemplateResponse
    CreateVehicleError.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The ID of the vehicle with the error.</p>"}))
    CreateVehicleError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>An HTTP error code.</p>"}))
    CreateVehicleError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the HTTP error.</p>"}))
    CreateVehicleError.type = Types::CreateVehicleError
    CreateVehicleInput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p> The unique ID of the vehicle to create. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVehicleInput.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name ARN of a vehicle model. </p>", "smithy.api#required" => {}}))
    CreateVehicleInput.add_member(:decoder_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'decoderManifestArn', traits: {"smithy.api#documentation" => "<p> The ARN of a decoder manifest. </p>", "smithy.api#required" => {}}))
    CreateVehicleInput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Static information about a vehicle in a key-value pair. For example:\n            <code>\"engineType\"</code> : <code>\"1.3 L R2\"</code>\n         </p>\n         <p>To use attributes with Campaigns or State Templates, you must include them using the \n            request parameters <code>dataExtraDimensions</code> and/or <code>metadataExtraDimensions</code> \n            (for state templates only) when creating your campaign/state template. </p>"}))
    CreateVehicleInput.add_member(:association_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleAssociationBehavior, location_name: 'associationBehavior', traits: {"smithy.api#documentation" => "<p> An option to create a new Amazon Web Services IoT thing when creating a vehicle, or to validate an\n            existing Amazon Web Services IoT thing as a vehicle. </p>\n         <p>Default: <code/>\n         </p>"}))
    CreateVehicleInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the vehicle.</p>"}))
    CreateVehicleInput.add_member(:state_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociations, location_name: 'stateTemplates', traits: {"smithy.api#documentation" => "<p>Associate state templates with the vehicle. You can monitor the last known state of the vehicle in near real time.</p>"}))
    CreateVehicleInput.type = Types::CreateVehicleInput
    CreateVehicleOutput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The unique ID of the created vehicle.</p>"}))
    CreateVehicleOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The ARN of the created vehicle. </p>"}))
    CreateVehicleOutput.add_member(:thing_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'thingArn', traits: {"smithy.api#documentation" => "<p> The ARN of a created or validated Amazon Web Services IoT thing. </p>"}))
    CreateVehicleOutput.type = Types::CreateVehicleOutput
    CreateVehicleRequestItem.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The unique ID of the vehicle to create.</p>", "smithy.api#required" => {}}))
    CreateVehicleRequestItem.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vehicle model (model manifest) to create the vehicle from.</p>", "smithy.api#required" => {}}))
    CreateVehicleRequestItem.add_member(:decoder_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'decoderManifestArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a decoder manifest associated with the vehicle to create.\n        </p>", "smithy.api#required" => {}}))
    CreateVehicleRequestItem.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Static information about a vehicle in a key-value pair. For example: <code>\"engine\n                Type\"</code> : <code>\"v6\"</code>\n         </p>"}))
    CreateVehicleRequestItem.add_member(:association_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleAssociationBehavior, location_name: 'associationBehavior', traits: {"smithy.api#documentation" => "<p>An option to create a new Amazon Web Services IoT thing when creating a vehicle, or to validate an\n            existing thing as a vehicle.</p>"}))
    CreateVehicleRequestItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata which can be used to manage the vehicle.</p>"}))
    CreateVehicleRequestItem.add_member(:state_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociations, location_name: 'stateTemplates', traits: {"smithy.api#documentation" => "<p>Associate state templates to track the state of the vehicle. State templates determine which signal updates the vehicle sends to the cloud.</p>"}))
    CreateVehicleRequestItem.type = Types::CreateVehicleRequestItem
    CreateVehicleResponseItem.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The unique ID of the vehicle to create.</p>"}))
    CreateVehicleResponseItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the created vehicle.</p>"}))
    CreateVehicleResponseItem.add_member(:thing_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'thingArn', traits: {"smithy.api#documentation" => "<p>The ARN of a created or validated Amazon Web Services IoT thing.</p>"}))
    CreateVehicleResponseItem.type = Types::CreateVehicleResponseItem
    CustomDecodingInterface.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDecodingSignalInterfaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the interface.</p>", "smithy.api#required" => {}}))
    CustomDecodingInterface.type = Types::CustomDecodingInterface
    CustomDecodingSignal.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDecodingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the signal.</p>", "smithy.api#required" => {}}))
    CustomDecodingSignal.type = Types::CustomDecodingSignal
    CustomProperty.add_member(:fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the custom property. For example, the fully qualified name\n            of a custom property might be\n                <code>ComplexDataTypes.VehicleDataTypes.SVMCamera.FPS</code>.</p>", "smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$", "smithy.api#required" => {}}))
    CustomProperty.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type for the custom property. </p>", "smithy.api#required" => {}}))
    CustomProperty.add_member(:data_encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeDataEncoding, location_name: 'dataEncoding', traits: {"smithy.api#documentation" => "<p>Indicates whether the property is binary data.</p>"}))
    CustomProperty.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the custom property.</p>"}))
    CustomProperty.add_member(:deprecation_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'deprecationMessage', traits: {"smithy.api#documentation" => "<p>The deprecation message for the node or the branch that was moved or deleted.</p>"}))
    CustomProperty.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>A comment in addition to the description.</p>"}))
    CustomProperty.add_member(:struct_fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath, location_name: 'structFullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the struct node for the custom property if the data type\n            of the custom property is <code>Struct</code> or <code>StructArray</code>. </p>"}))
    CustomProperty.type = Types::CustomProperty
    CustomStruct.add_member(:fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the custom structure. For example, the fully qualified\n            name of a custom structure might be\n                <code>ComplexDataTypes.VehicleDataTypes.SVMCamera</code>.</p>", "smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$", "smithy.api#required" => {}}))
    CustomStruct.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the custom structure.</p>"}))
    CustomStruct.add_member(:deprecation_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'deprecationMessage', traits: {"smithy.api#documentation" => "<p>The deprecation message for the node or the branch that was moved or deleted.</p>"}))
    CustomStruct.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>A comment in addition to the description.</p>"}))
    CustomStruct.type = Types::CustomStruct
    DataDestinationConfig.add_member(:s3_config, Types::DataDestinationConfig::S3Config, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Config, location_name: 's3Config', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket where the Amazon Web Services IoT FleetWise campaign sends data.</p>"}))
    DataDestinationConfig.add_member(:timestream_config, Types::DataDestinationConfig::TimestreamConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamConfig, location_name: 'timestreamConfig', traits: {"smithy.api#documentation" => "<p>The Amazon Timestream table where the campaign sends data.</p>"}))
    DataDestinationConfig.add_member(:mqtt_topic_config, Types::DataDestinationConfig::MqttTopicConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: MqttTopicConfig, location_name: 'mqttTopicConfig', traits: {"smithy.api#documentation" => "<p>The MQTT topic to which the Amazon Web Services IoT FleetWise campaign routes data.</p>\n         <important>\n            <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html\">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>\n         </important>"}))
    DataDestinationConfig.add_member(:unknown, Types::DataDestinationConfig::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DataDestinationConfig.type = Types::DataDestinationConfig
    DataDestinationConfigs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataDestinationConfig)
    DataExtraDimensionNodePathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath)
    DataFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    DataFormat.add_member(:parquet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARQUET', traits: {"smithy.api#enumValue" => "PARQUET"}))
    DataPartition.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPartitionId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the data partition. The data partition ID must be unique within a campaign.\n            You can establish a data partition as the default partition for a campaign by using\n                <code>default</code> as the ID.</p>", "smithy.api#required" => {}}))
    DataPartition.add_member(:storage_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPartitionStorageOptions, location_name: 'storageOptions', traits: {"smithy.api#documentation" => "<p>The storage options for a data partition.</p>", "smithy.api#required" => {}}))
    DataPartition.add_member(:upload_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPartitionUploadOptions, location_name: 'uploadOptions', traits: {"smithy.api#documentation" => "<p>The upload options for the data partition.</p>"}))
    DataPartition.type = Types::DataPartition
    DataPartitionStorageOptions.add_member(:maximum_size, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMaximumSize, location_name: 'maximumSize', traits: {"smithy.api#documentation" => "<p>The maximum storage size of the data stored in the data partition.</p>\n         <note>\n            <p>Newer data overwrites older data when the partition reaches the maximum\n                size.</p>\n         </note>", "smithy.api#required" => {}}))
    DataPartitionStorageOptions.add_member(:storage_location, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLocation, location_name: 'storageLocation', traits: {"smithy.api#documentation" => "<p>The folder name for the data partition under the campaign storage folder.</p>", "smithy.api#required" => {}}))
    DataPartitionStorageOptions.add_member(:minimum_time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMinimumTimeToLive, location_name: 'minimumTimeToLive', traits: {"smithy.api#documentation" => "<p>The amount of time that data in this partition will be kept on disk.</p>\n         <ul>\n            <li>\n               <p>After the designated amount of time passes, the data can be removed, but it's\n                    not guaranteed to be removed.</p>\n            </li>\n            <li>\n               <p>Before the time expires, data in this partition can still be deleted if the\n                    partition reaches its configured maximum size.</p>\n            </li>\n            <li>\n               <p>Newer data will overwrite older data when the partition reaches the maximum\n                    size.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DataPartitionStorageOptions.type = Types::DataPartitionStorageOptions
    DataPartitionUploadOptions.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: EventExpression, location_name: 'expression', traits: {"smithy.api#documentation" => "<p>The logical expression used to recognize what data to collect. For example, <code>$variable.`Vehicle.OutsideAirTemperature` &gt;= 105.0</code>.</p>", "smithy.api#required" => {}}))
    DataPartitionUploadOptions.add_member(:condition_language_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageVersion, location_name: 'conditionLanguageVersion', traits: {"smithy.api#documentation" => "<p>The version of the condition language. Defaults to the most recent condition language\n            version.</p>"}))
    DataPartitionUploadOptions.type = Types::DataPartitionUploadOptions
    DataPartitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataPartition)
    DecoderManifestSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the decoder manifest.</p>"}))
    DecoderManifestSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of a vehicle model (model manifest) associated with the decoder manifest.\n        </p>"}))
    DecoderManifestSummary.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p>The ARN of a vehicle model (model manifest) associated with the decoder\n            manifest.</p>"}))
    DecoderManifestSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the decoder manifest.</p>"}))
    DecoderManifestSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of the decoder manifest. If the status is <code>ACTIVE</code>, the decoder\n            manifest can't be edited. If the status is marked <code>DRAFT</code>, you can edit the\n            decoder manifest.</p>"}))
    DecoderManifestSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the decoder manifest was created in seconds since epoch (January 1, 1970 at\n            midnight UTC time).</p>", "smithy.api#required" => {}}))
    DecoderManifestSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The time the decoder manifest was last updated in seconds since epoch (January 1, 1970\n            at midnight UTC time).</p>", "smithy.api#required" => {}}))
    DecoderManifestSummary.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The detailed message for the decoder manifest. When a decoder manifest is in an\n                <code>INVALID</code> status, the message contains detailed reason and help\n            information.</p>"}))
    DecoderManifestSummary.type = Types::DecoderManifestSummary
    DecoderManifestValidationException.add_member(:invalid_signals, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalDecoders, location_name: 'invalidSignals', traits: {"smithy.api#documentation" => "<p>The request couldn't be completed because of invalid signals in the request.</p>"}))
    DecoderManifestValidationException.add_member(:invalid_network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNetworkInterfaces, location_name: 'invalidNetworkInterfaces', traits: {"smithy.api#documentation" => "<p>The request couldn't be completed because of invalid network interfaces in the\n            request.</p>"}))
    DecoderManifestValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    DecoderManifestValidationException.type = Types::DecoderManifestValidationException
    DefaultForUnmappedSignalsType.add_member(:custom_decoding, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_DECODING', traits: {"smithy.api#enumValue" => "CUSTOM_DECODING"}))
    DeleteCampaignInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the campaign to delete. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCampaignInput.type = Types::DeleteCampaignInput
    DeleteCampaignOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the deleted campaign.</p>"}))
    DeleteCampaignOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the deleted campaign.</p>\n         <note>\n            <p>The ARN isn’t returned if a campaign doesn’t exist.</p>\n         </note>"}))
    DeleteCampaignOutput.type = Types::DeleteCampaignOutput
    DeleteDecoderManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the decoder manifest to delete. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDecoderManifestInput.type = Types::DeleteDecoderManifestInput
    DeleteDecoderManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the deleted decoder manifest.</p>", "smithy.api#required" => {}}))
    DeleteDecoderManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted decoder manifest.</p>", "smithy.api#required" => {}}))
    DeleteDecoderManifestOutput.type = Types::DeleteDecoderManifestOutput
    DeleteFleetInput.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p> The ID of the fleet to delete. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFleetInput.type = Types::DeleteFleetInput
    DeleteFleetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the deleted fleet.</p>"}))
    DeleteFleetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted fleet.</p>"}))
    DeleteFleetOutput.type = Types::DeleteFleetOutput
    DeleteModelManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the model manifest to delete. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteModelManifestInput.type = Types::DeleteModelManifestInput
    DeleteModelManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the deleted model manifest.</p>", "smithy.api#required" => {}}))
    DeleteModelManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted model manifest.</p>", "smithy.api#required" => {}}))
    DeleteModelManifestOutput.type = Types::DeleteModelManifestOutput
    DeleteSignalCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the signal catalog to delete. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSignalCatalogInput.type = Types::DeleteSignalCatalogInput
    DeleteSignalCatalogOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the deleted signal catalog.</p>", "smithy.api#required" => {}}))
    DeleteSignalCatalogOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted signal catalog.</p>", "smithy.api#required" => {}}))
    DeleteSignalCatalogOutput.type = Types::DeleteSignalCatalogOutput
    DeleteStateTemplateRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStateTemplateRequest.type = Types::DeleteStateTemplateRequest
    DeleteStateTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state template.</p>"}))
    DeleteStateTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state template.</p>"}))
    DeleteStateTemplateResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUniqueId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>"}))
    DeleteStateTemplateResponse.type = Types::DeleteStateTemplateResponse
    DeleteVehicleInput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The ID of the vehicle to delete. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVehicleInput.type = Types::DeleteVehicleInput
    DeleteVehicleOutput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The ID of the deleted vehicle.</p>", "smithy.api#required" => {}}))
    DeleteVehicleOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted vehicle.</p>", "smithy.api#required" => {}}))
    DeleteVehicleOutput.type = Types::DeleteVehicleOutput
    DiagnosticsMode.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    DiagnosticsMode.add_member(:send_active_dtcs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND_ACTIVE_DTCS', traits: {"smithy.api#enumValue" => "SEND_ACTIVE_DTCS"}))
    DisassociateVehicleFleetInput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p> The unique ID of the vehicle to disassociate from the fleet.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateVehicleFleetInput.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p> The unique ID of a fleet. </p>", "smithy.api#required" => {}}))
    DisassociateVehicleFleetInput.type = Types::DisassociateVehicleFleetInput
    DisassociateVehicleFleetOutput.type = Types::DisassociateVehicleFleetOutput
    EncryptionStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    EncryptionStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    EncryptionStatus.add_member(:failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILURE', traits: {"smithy.api#enumValue" => "FAILURE"}))
    EncryptionType.add_member(:kms_based_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_BASED_ENCRYPTION', traits: {"smithy.api#enumValue" => "KMS_BASED_ENCRYPTION"}))
    EncryptionType.add_member(:fleetwise_default_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEETWISE_DEFAULT_ENCRYPTION', traits: {"smithy.api#enumValue" => "FLEETWISE_DEFAULT_ENCRYPTION"}))
    EventExpressionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionEventExpression)
    FleetSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the fleet.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the fleet.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the fleet.</p>"}))
    FleetSummary.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p>The ARN of the signal catalog associated with the fleet.</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the fleet was created, in seconds since epoch (January 1, 1970 at midnight\n            UTC time).</p>", "smithy.api#required" => {}}))
    FleetSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The time the fleet was last updated in seconds since epoch (January 1, 1970 at\n            midnight UTC time).</p>"}))
    FleetSummary.type = Types::FleetSummary
    FormattedVss.add_member(:vss_json, Types::FormattedVss::VssJson, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'vssJson', traits: {"smithy.api#documentation" => "<p>Provides the VSS in JSON format.</p>"}))
    FormattedVss.add_member(:unknown, Types::FormattedVss::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FormattedVss.type = Types::FormattedVss
    Fqns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FullyQualifiedName)
    GetCampaignInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the campaign to retrieve information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCampaignInput.type = Types::GetCampaignInput
    GetCampaignOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the campaign.</p>"}))
    GetCampaignOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the campaign. </p>"}))
    GetCampaignOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the campaign.</p>"}))
    GetCampaignOutput.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p> The ARN of a signal catalog. </p>"}))
    GetCampaignOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p> The ARN of the vehicle or the fleet targeted by the campaign. </p>"}))
    GetCampaignOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of the campaign. The status can be one of: <code>CREATING</code>,\n                <code>WAITING_FOR_APPROVAL</code>, <code>RUNNING</code>, and <code>SUSPENDED</code>.\n        </p>"}))
    GetCampaignOutput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> The time, in milliseconds, to deliver a campaign after it was approved.</p>"}))
    GetCampaignOutput.add_member(:expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expiryTime', traits: {"smithy.api#documentation" => "<p> The time the campaign expires, in seconds since epoch (January 1, 1970 at midnight\n            UTC time). Vehicle data won't be collected after the campaign expires.</p>"}))
    GetCampaignOutput.add_member(:post_trigger_collection_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Uint32, location_name: 'postTriggerCollectionDuration', traits: {"smithy.api#documentation" => "<p> How long (in seconds) to collect raw data after a triggering event initiates the\n            collection. </p>"}))
    GetCampaignOutput.add_member(:diagnostics_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DiagnosticsMode, location_name: 'diagnosticsMode', traits: {"smithy.api#documentation" => "<p> Option for a vehicle to send diagnostic trouble codes to Amazon Web Services IoT FleetWise. </p>"}))
    GetCampaignOutput.add_member(:spooling_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: SpoolingMode, location_name: 'spoolingMode', traits: {"smithy.api#documentation" => "<p> Whether to store collected data after a vehicle lost a connection with the cloud.\n            After a connection is re-established, the data is automatically forwarded to Amazon Web Services IoT FleetWise.\n        </p>"}))
    GetCampaignOutput.add_member(:compression, Smithy::Schema::Shapes::ShapeRef.new(shape: Compression, location_name: 'compression', traits: {"smithy.api#documentation" => "<p> Whether to compress signals before transmitting data to Amazon Web Services IoT FleetWise. If\n                <code>OFF</code> is specified, the signals aren't compressed. If it's not specified,\n                <code>SNAPPY</code> is used. </p>"}))
    GetCampaignOutput.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: 'priority', traits: {"smithy.api#documentation" => "<p> A number indicating the priority of one campaign over another campaign for a certain\n            vehicle or fleet. A campaign with the lowest value is deployed to vehicles before any\n            other campaigns.</p>"}))
    GetCampaignOutput.add_member(:signals_to_collect, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalInformationList, location_name: 'signalsToCollect', traits: {"smithy.api#documentation" => "<p> Information about a list of signals to collect data on. </p>"}))
    GetCampaignOutput.add_member(:collection_scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionScheme, location_name: 'collectionScheme', traits: {"smithy.api#documentation" => "<p> Information about the data collection scheme associated with the campaign. </p>"}))
    GetCampaignOutput.add_member(:data_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: DataExtraDimensionNodePathList, location_name: 'dataExtraDimensions', traits: {"smithy.api#documentation" => "<p> A list of vehicle attributes associated with the campaign. </p>"}))
    GetCampaignOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time the campaign was created in seconds since epoch (January 1, 1970 at midnight\n            UTC time). </p>"}))
    GetCampaignOutput.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The last time the campaign was modified.</p>"}))
    GetCampaignOutput.add_member(:data_destination_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DataDestinationConfigs, location_name: 'dataDestinationConfigs', traits: {"smithy.api#documentation" => "<p>The destination where the campaign sends data. You can send data to an MQTT topic,\n            or store it in Amazon S3 or Amazon Timestream.</p>\n         <p>MQTT is the publish/subscribe messaging protocol used by Amazon Web Services IoT to communicate with\n            your devices.</p>\n         <p>Amazon S3 optimizes the cost of data storage and provides additional mechanisms to use vehicle data, \n            such as data lakes, centralized data storage, data processing pipelines, and analytics. </p>\n         <p>You can use Amazon Timestream to access and analyze time series data, and Timestream to query\n            vehicle data so that you can identify trends and patterns.</p>"}))
    GetCampaignOutput.add_member(:data_partitions, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPartitions, location_name: 'dataPartitions', traits: {"smithy.api#documentation" => "<p>The data partitions associated with the signals collected from the vehicle.</p>"}))
    GetCampaignOutput.add_member(:signals_to_fetch, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalFetchInformationList, location_name: 'signalsToFetch', traits: {"smithy.api#documentation" => "<p>Information about a list of signals to fetch data from.</p>"}))
    GetCampaignOutput.type = Types::GetCampaignOutput
    GetDecoderManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the decoder manifest to retrieve information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDecoderManifestInput.type = Types::GetDecoderManifestInput
    GetDecoderManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the decoder manifest. </p>", "smithy.api#required" => {}}))
    GetDecoderManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the decoder manifest. </p>", "smithy.api#required" => {}}))
    GetDecoderManifestOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the decoder manifest.</p>"}))
    GetDecoderManifestOutput.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p> The ARN of a vehicle model (model manifest) associated with the decoder\n            manifest.</p>"}))
    GetDecoderManifestOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The state of the decoder manifest. If the status is <code>ACTIVE</code>, the decoder\n            manifest can't be edited. If the status is marked <code>DRAFT</code>, you can edit the\n            decoder manifest.</p>"}))
    GetDecoderManifestOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time the decoder manifest was created in seconds since epoch (January 1, 1970 at midnight UTC time). </p>", "smithy.api#required" => {}}))
    GetDecoderManifestOutput.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p> The time the decoder manifest was last updated in seconds since epoch (January 1, 1970 at midnight UTC time).  </p>", "smithy.api#required" => {}}))
    GetDecoderManifestOutput.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The detailed message for the decoder manifest. When a decoder manifest is in an\n                <code>INVALID</code> status, the message contains detailed reason and help\n            information.</p>"}))
    GetDecoderManifestOutput.type = Types::GetDecoderManifestOutput
    GetEncryptionConfigurationRequest.type = Types::GetEncryptionConfigurationRequest
    GetEncryptionConfigurationResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key that is used for encryption.</p>"}))
    GetEncryptionConfigurationResponse.add_member(:encryption_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionStatus, location_name: 'encryptionStatus', traits: {"smithy.api#documentation" => "<p>The encryption status.</p>", "smithy.api#required" => {}}))
    GetEncryptionConfigurationResponse.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption. Set to <code>KMS_BASED_ENCRYPTION</code> to use a KMS key\n            that you own and manage. Set to <code>FLEETWISE_DEFAULT_ENCRYPTION</code> to use an\n            Amazon Web Services managed key that is owned by the Amazon Web Services IoT FleetWise service account.</p>", "smithy.api#required" => {}}))
    GetEncryptionConfigurationResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The error message that describes why encryption settings couldn't be configured, if\n            applicable.</p>"}))
    GetEncryptionConfigurationResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time when encryption was configured in seconds since epoch (January 1, 1970 at\n            midnight UTC time).</p>"}))
    GetEncryptionConfigurationResponse.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The time when encryption was last updated in seconds since epoch (January 1, 1970 at\n            midnight UTC time).</p>"}))
    GetEncryptionConfigurationResponse.type = Types::GetEncryptionConfigurationResponse
    GetFleetInput.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p> The ID of the fleet to retrieve information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFleetInput.type = Types::GetFleetInput
    GetFleetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the fleet.</p>", "smithy.api#required" => {}}))
    GetFleetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the fleet. </p>", "smithy.api#required" => {}}))
    GetFleetOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the fleet. </p>"}))
    GetFleetOutput.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p> The ARN of a signal catalog associated with the fleet. </p>", "smithy.api#required" => {}}))
    GetFleetOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time the fleet was created in seconds since epoch (January 1, 1970 at midnight\n            UTC time). </p>", "smithy.api#required" => {}}))
    GetFleetOutput.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p> The time the fleet was last updated, in seconds since epoch (January 1, 1970 at\n            midnight UTC time). </p>", "smithy.api#required" => {}}))
    GetFleetOutput.type = Types::GetFleetOutput
    GetLoggingOptionsInput.type = Types::GetLoggingOptionsInput
    GetLoggingOptionsOutput.add_member(:cloud_watch_log_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogDeliveryOptions, location_name: 'cloudWatchLogDelivery', traits: {"smithy.api#documentation" => "<p>Returns information about log delivery to Amazon CloudWatch Logs.</p>", "smithy.api#required" => {}}))
    GetLoggingOptionsOutput.type = Types::GetLoggingOptionsOutput
    GetModelManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the vehicle model to retrieve information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelManifestInput.type = Types::GetModelManifestInput
    GetModelManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the vehicle model. </p>", "smithy.api#required" => {}}))
    GetModelManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the vehicle model. </p>", "smithy.api#required" => {}}))
    GetModelManifestOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the vehicle model. </p>"}))
    GetModelManifestOutput.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p> The ARN of the signal catalog associated with the vehicle model. </p>"}))
    GetModelManifestOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The state of the vehicle model. If the status is <code>ACTIVE</code>, the vehicle\n            model can't be edited. You can edit the vehicle model if the status is marked\n                <code>DRAFT</code>.</p>"}))
    GetModelManifestOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the vehicle model was created, in seconds since epoch (January 1, 1970 at\n            midnight UTC time).</p>", "smithy.api#required" => {}}))
    GetModelManifestOutput.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The last time the vehicle model was modified.</p>", "smithy.api#required" => {}}))
    GetModelManifestOutput.type = Types::GetModelManifestOutput
    GetRegisterAccountStatusInput.type = Types::GetRegisterAccountStatusInput
    GetRegisterAccountStatusOutput.add_member(:customer_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAccountId, location_name: 'customerAccountId', traits: {"smithy.api#documentation" => "<p> The unique ID of the Amazon Web Services account, provided at account creation. </p>", "smithy.api#required" => {}}))
    GetRegisterAccountStatusOutput.add_member(:account_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'accountStatus', traits: {"smithy.api#documentation" => "<p> The status of registering your account and resources. The status can be one\n            of:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>REGISTRATION_SUCCESS</code> - The Amazon Web Services resource is successfully\n                    registered.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REGISTRATION_PENDING</code> - Amazon Web Services IoT FleetWise is processing the registration\n                    request. This process takes approximately five minutes to complete.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REGISTRATION_FAILURE</code> - Amazon Web Services IoT FleetWise can't register the AWS resource.\n                    Try again later.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetRegisterAccountStatusOutput.add_member(:timestream_registration_response, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamRegistrationResponse, location_name: 'timestreamRegistrationResponse', traits: {"smithy.api#documentation" => "<p> Information about the registered Amazon Timestream resources or errors, if any.</p>"}))
    GetRegisterAccountStatusOutput.add_member(:iam_registration_response, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRegistrationResponse, location_name: 'iamRegistrationResponse', traits: {"smithy.api#documentation" => "<p> Information about the registered IAM resources or errors, if any. </p>", "smithy.api#required" => {}}))
    GetRegisterAccountStatusOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time the account was registered, in seconds since epoch (January 1, 1970 at\n            midnight UTC time). </p>", "smithy.api#required" => {}}))
    GetRegisterAccountStatusOutput.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p> The time this registration was last updated, in seconds since epoch (January 1, 1970\n            at midnight UTC time). </p>", "smithy.api#required" => {}}))
    GetRegisterAccountStatusOutput.type = Types::GetRegisterAccountStatusOutput
    GetSignalCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the signal catalog to retrieve information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSignalCatalogInput.type = Types::GetSignalCatalogInput
    GetSignalCatalogOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the signal catalog. </p>", "smithy.api#required" => {}}))
    GetSignalCatalogOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the signal catalog. </p>", "smithy.api#required" => {}}))
    GetSignalCatalogOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the signal catalog. </p>"}))
    GetSignalCatalogOutput.add_member(:node_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeCounts, location_name: 'nodeCounts', traits: {"smithy.api#documentation" => "<p> The total number of network nodes specified in a signal catalog. </p>"}))
    GetSignalCatalogOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time the signal catalog was created in seconds since epoch (January 1, 1970 at midnight UTC time).  </p>", "smithy.api#required" => {}}))
    GetSignalCatalogOutput.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The last time the signal catalog was modified.</p>", "smithy.api#required" => {}}))
    GetSignalCatalogOutput.type = Types::GetSignalCatalogOutput
    GetStateTemplateRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStateTemplateRequest.type = Types::GetStateTemplateRequest
    GetStateTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state template.</p>"}))
    GetStateTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state template.</p>"}))
    GetStateTemplateResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the state template.</p>"}))
    GetStateTemplateResponse.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p>The ARN of the signal catalog associated with the state template.</p>"}))
    GetStateTemplateResponse.add_member(:state_template_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateProperties, location_name: 'stateTemplateProperties', traits: {"smithy.api#documentation" => "<p>A list of signals from which data is collected. The state template properties contain the fully qualified names of the signals.</p>"}))
    GetStateTemplateResponse.add_member(:data_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateDataExtraDimensionNodePathList, location_name: 'dataExtraDimensions', traits: {"smithy.api#documentation" => "<p>A list of vehicle attributes associated with the payload published on the state template's \n          MQTT topic. </p>\n         <p>Default: An empty array</p>"}))
    GetStateTemplateResponse.add_member(:metadata_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateMetadataExtraDimensionNodePathList, location_name: 'metadataExtraDimensions', traits: {"smithy.api#documentation" => "<p>A list of vehicle attributes to associate with user properties of the messages published on the\n          state template's MQTT topic.</p>\n         <p>Default: An empty array</p>"}))
    GetStateTemplateResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the state template was created in seconds since epoch (January 1, 1970 at midnight UTC time).</p>"}))
    GetStateTemplateResponse.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The time the state template was last updated in seconds since epoch (January 1, 1970 at midnight UTC time).</p>"}))
    GetStateTemplateResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUniqueId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>"}))
    GetStateTemplateResponse.type = Types::GetStateTemplateResponse
    GetVehicleInput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p> The ID of the vehicle to retrieve information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVehicleInput.type = Types::GetVehicleInput
    GetVehicleOutput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The ID of the vehicle.</p>"}))
    GetVehicleOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the vehicle to retrieve information about. </p>"}))
    GetVehicleOutput.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p> The ARN of a vehicle model (model manifest) associated with the vehicle. </p>"}))
    GetVehicleOutput.add_member(:decoder_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'decoderManifestArn', traits: {"smithy.api#documentation" => "<p> The ARN of a decoder manifest associated with the vehicle. </p>"}))
    GetVehicleOutput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Static information about a vehicle in a key-value pair. For example:</p>\n         <p>\n            <code>\"engineType\"</code> : <code>\"1.3 L R2\"</code>\n         </p>"}))
    GetVehicleOutput.add_member(:state_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociations, location_name: 'stateTemplates', traits: {"smithy.api#documentation" => "<p>State templates associated with the vehicle.</p>"}))
    GetVehicleOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time the vehicle was created in seconds since epoch (January 1, 1970 at midnight UTC time). </p>"}))
    GetVehicleOutput.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p> The time the vehicle was last updated in seconds since epoch (January 1, 1970 at midnight UTC time).  </p>"}))
    GetVehicleOutput.type = Types::GetVehicleOutput
    GetVehicleStatusInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a \n            <code>nextToken</code> pagination token is returned in the response. To retrieve the next \n            set of results, reissue the search request and include the returned token. When all results \n            have been returned, the response does not contain a pagination token value. This parameter \n            is only supported for resources of type <code>CAMPAIGN</code>.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetVehicleStatusInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive. This parameter is only \n            supported for resources of type <code>CAMPAIGN</code>.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetVehicleStatusInput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p> The ID of the vehicle to retrieve information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVehicleStatusInput.type = Types::GetVehicleStatusInput
    GetVehicleStatusOutput.add_member(:campaigns, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleStatusList, location_name: 'campaigns', traits: {"smithy.api#documentation" => "<p> Lists information about the state of the vehicle with deployed campaigns. </p>"}))
    GetVehicleStatusOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    GetVehicleStatusOutput.type = Types::GetVehicleStatusOutput
    IamRegistrationResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to register.</p>", "smithy.api#required" => {}}))
    IamRegistrationResponse.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'registrationStatus', traits: {"smithy.api#documentation" => "<p>The status of registering your IAM resource. The status can be one of\n                <code>REGISTRATION_SUCCESS</code>, <code>REGISTRATION_PENDING</code>,\n                <code>REGISTRATION_FAILURE</code>.</p>", "smithy.api#required" => {}}))
    IamRegistrationResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>A message associated with a registration error.</p>"}))
    IamRegistrationResponse.type = Types::IamRegistrationResponse
    IamResources.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM resource that allows Amazon Web Services IoT FleetWise to send data to\n            Amazon Timestream. For example, <code>arn:aws:iam::123456789012:role/SERVICE-ROLE-ARN</code>.\n        </p>", "smithy.api#required" => {}}))
    IamResources.type = Types::IamResources
    ImportDecoderManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the decoder manifest to import. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ImportDecoderManifestInput.add_member(:network_file_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFileDefinitions, location_name: 'networkFileDefinitions', traits: {"smithy.api#documentation" => "<p> The file to load into an Amazon Web Services account. </p>", "smithy.api#required" => {}}))
    ImportDecoderManifestInput.type = Types::ImportDecoderManifestInput
    ImportDecoderManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the imported decoder manifest. </p>", "smithy.api#required" => {}}))
    ImportDecoderManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the decoder manifest that was imported. </p>", "smithy.api#required" => {}}))
    ImportDecoderManifestOutput.type = Types::ImportDecoderManifestOutput
    ImportSignalCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the signal catalog to import.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ImportSignalCatalogInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the signal catalog. </p>"}))
    ImportSignalCatalogInput.add_member(:vss, Smithy::Schema::Shapes::ShapeRef.new(shape: FormattedVss, location_name: 'vss', traits: {"smithy.api#documentation" => "<p>The contents of the Vehicle Signal Specification (VSS) configuration. VSS is a precise\n            language used to describe and model signals in vehicle networks.</p>"}))
    ImportSignalCatalogInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Metadata that can be used to manage the signal catalog.</p>"}))
    ImportSignalCatalogInput.type = Types::ImportSignalCatalogInput
    ImportSignalCatalogOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the imported signal catalog. </p>", "smithy.api#required" => {}}))
    ImportSignalCatalogOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the imported signal catalog.</p>", "smithy.api#required" => {}}))
    ImportSignalCatalogOutput.type = Types::ImportSignalCatalogOutput
    InterfaceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceId)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of seconds to wait before retrying the command.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InvalidNetworkInterface.add_member(:interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceId, location_name: 'interfaceId', traits: {"smithy.api#documentation" => "<p>The ID of the interface that isn't valid.</p>"}))
    InvalidNetworkInterface.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceFailureReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A message about why the interface isn't valid. </p>"}))
    InvalidNetworkInterface.type = Types::InvalidNetworkInterface
    InvalidNetworkInterfaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNetworkInterface)
    InvalidNodeException.add_member(:invalid_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Nodes, location_name: 'invalidNodes', traits: {"smithy.api#documentation" => "<p>The specified node type isn't valid.</p>"}))
    InvalidNodeException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason the node validation failed.</p>"}))
    InvalidNodeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidNodeException.type = Types::InvalidNodeException
    InvalidSignal.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FullyQualifiedName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the signal that isn't valid.</p>"}))
    InvalidSignal.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A message about why the signal isn't valid.</p>"}))
    InvalidSignal.type = Types::InvalidSignal
    InvalidSignalDecoder.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FullyQualifiedName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a signal decoder that isn't valid.</p>"}))
    InvalidSignalDecoder.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalDecoderFailureReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A message about why the signal decoder isn't valid.</p>"}))
    InvalidSignalDecoder.add_member(:hint, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'hint', traits: {"smithy.api#documentation" => "<p>The possible cause for the invalid signal decoder.</p>"}))
    InvalidSignalDecoder.type = Types::InvalidSignalDecoder
    InvalidSignalDecoders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalDecoder)
    InvalidSignals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignal)
    InvalidSignalsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidSignalsException.add_member(:invalid_signals, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignals, location_name: 'invalidSignals', traits: {"smithy.api#documentation" => "<p>The signals which caused the exception.</p>"}))
    InvalidSignalsException.type = Types::InvalidSignalsException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    LimitExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource that was exceeded.</p>", "smithy.api#required" => {}}))
    LimitExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that was exceeded.</p>", "smithy.api#required" => {}}))
    LimitExceededException.type = Types::LimitExceededException
    ListCampaignsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCampaignsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCampaignsInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusStr, location_name: 'status', traits: {"smithy.api#documentation" => "<p>An optional parameter to filter the results by the status of each created campaign in\n            your account. The status can be one of: <code>CREATING</code>,\n                <code>WAITING_FOR_APPROVAL</code>, <code>RUNNING</code>, or\n            <code>SUSPENDED</code>.</p>", "smithy.api#httpQuery" => "status"}))
    ListCampaignsInput.add_member(:list_response_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResponseScope, location_name: 'listResponseScope', traits: {"smithy.api#documentation" => "<p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: campaign name, Amazon Resource Name (ARN), creation time, and last modification time.</p>", "smithy.api#httpQuery" => "listResponseScope"}))
    ListCampaignsInput.type = Types::ListCampaignsInput
    ListCampaignsOutput.add_member(:campaign_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSummaries, location_name: 'campaignSummaries', traits: {"smithy.api#documentation" => "<p> A summary of information about each campaign. </p>"}))
    ListCampaignsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListCampaignsOutput.type = Types::ListCampaignsOutput
    ListDecoderManifestNetworkInterfacesInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the decoder manifest to list information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDecoderManifestNetworkInterfacesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDecoderManifestNetworkInterfacesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDecoderManifestNetworkInterfacesInput.type = Types::ListDecoderManifestNetworkInterfacesInput
    ListDecoderManifestNetworkInterfacesOutput.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfaces', traits: {"smithy.api#documentation" => "<p> A list of information about network interfaces. </p>"}))
    ListDecoderManifestNetworkInterfacesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListDecoderManifestNetworkInterfacesOutput.type = Types::ListDecoderManifestNetworkInterfacesOutput
    ListDecoderManifestSignalsInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the decoder manifest to list information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDecoderManifestSignalsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDecoderManifestSignalsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDecoderManifestSignalsInput.type = Types::ListDecoderManifestSignalsInput
    ListDecoderManifestSignalsOutput.add_member(:signal_decoders, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalDecoders, location_name: 'signalDecoders', traits: {"smithy.api#documentation" => "<p> Information about a list of signals to decode. </p>"}))
    ListDecoderManifestSignalsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListDecoderManifestSignalsOutput.type = Types::ListDecoderManifestSignalsOutput
    ListDecoderManifestsInput.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a vehicle model (model manifest) associated with\n            the decoder manifest. </p>", "smithy.api#httpQuery" => "modelManifestArn"}))
    ListDecoderManifestsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDecoderManifestsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDecoderManifestsInput.add_member(:list_response_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResponseScope, location_name: 'listResponseScope', traits: {"smithy.api#documentation" => "<p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: decoder manifest name, Amazon Resource Name (ARN), creation time, and last modification time.</p>", "smithy.api#httpQuery" => "listResponseScope"}))
    ListDecoderManifestsInput.type = Types::ListDecoderManifestsInput
    ListDecoderManifestsOutput.add_member(:summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DecoderManifestSummaries, location_name: 'summaries', traits: {"smithy.api#documentation" => "<p> A list of information about each decoder manifest. </p>"}))
    ListDecoderManifestsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListDecoderManifestsOutput.type = Types::ListDecoderManifestsOutput
    ListFleetsForVehicleInput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p> The ID of the vehicle to retrieve information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFleetsForVehicleInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFleetsForVehicleInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFleetsForVehicleInput.type = Types::ListFleetsForVehicleInput
    ListFleetsForVehicleOutput.add_member(:fleets, Smithy::Schema::Shapes::ShapeRef.new(shape: Fleets, location_name: 'fleets', traits: {"smithy.api#documentation" => "<p> A list of fleet IDs that the vehicle is associated with. </p>"}))
    ListFleetsForVehicleOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListFleetsForVehicleOutput.type = Types::ListFleetsForVehicleOutput
    ListFleetsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFleetsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFleetsInput.add_member(:list_response_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResponseScope, location_name: 'listResponseScope', traits: {"smithy.api#documentation" => "<p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: fleet ID, Amazon Resource Name (ARN), creation time, and last modification time.</p>", "smithy.api#httpQuery" => "listResponseScope"}))
    ListFleetsInput.type = Types::ListFleetsInput
    ListFleetsOutput.add_member(:fleet_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetSummaries, location_name: 'fleetSummaries', traits: {"smithy.api#documentation" => "<p> A list of information for each fleet. </p>"}))
    ListFleetsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListFleetsOutput.type = Types::ListFleetsOutput
    ListModelManifestNodesInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the vehicle model to list information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListModelManifestNodesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListModelManifestNodesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListModelManifestNodesInput.type = Types::ListModelManifestNodesInput
    ListModelManifestNodesOutput.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Nodes, location_name: 'nodes', traits: {"smithy.api#documentation" => "<p> A list of information about nodes. </p>"}))
    ListModelManifestNodesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListModelManifestNodesOutput.type = Types::ListModelManifestNodesOutput
    ListModelManifestsInput.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p> The ARN of a signal catalog. If you specify a signal catalog, only the vehicle models\n            associated with it are returned.</p>", "smithy.api#httpQuery" => "signalCatalogArn"}))
    ListModelManifestsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListModelManifestsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListModelManifestsInput.add_member(:list_response_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResponseScope, location_name: 'listResponseScope', traits: {"smithy.api#documentation" => "<p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: model manifest name, Amazon Resource Name (ARN), creation time, and last modification time.</p>", "smithy.api#httpQuery" => "listResponseScope"}))
    ListModelManifestsInput.type = Types::ListModelManifestsInput
    ListModelManifestsOutput.add_member(:summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelManifestSummaries, location_name: 'summaries', traits: {"smithy.api#documentation" => "<p> A list of information about vehicle models.</p>"}))
    ListModelManifestsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListModelManifestsOutput.type = Types::ListModelManifestsOutput
    ListResponseScope.add_member(:metadata_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METADATA_ONLY', traits: {"smithy.api#enumValue" => "METADATA_ONLY"}))
    ListSignalCatalogNodesInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the signal catalog to list information about. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSignalCatalogNodesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSignalCatalogNodesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSignalCatalogNodesInput.add_member(:signal_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalNodeType, location_name: 'signalNodeType', traits: {"smithy.api#documentation" => "<p>The type of node in the signal catalog.</p>", "smithy.api#httpQuery" => "signalNodeType"}))
    ListSignalCatalogNodesInput.type = Types::ListSignalCatalogNodesInput
    ListSignalCatalogNodesOutput.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Nodes, location_name: 'nodes', traits: {"smithy.api#documentation" => "<p> A list of information about nodes. </p>"}))
    ListSignalCatalogNodesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListSignalCatalogNodesOutput.type = Types::ListSignalCatalogNodesOutput
    ListSignalCatalogsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSignalCatalogsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSignalCatalogsInput.type = Types::ListSignalCatalogsInput
    ListSignalCatalogsOutput.add_member(:summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalCatalogSummaries, location_name: 'summaries', traits: {"smithy.api#documentation" => "<p> A list of information about each signal catalog. </p>"}))
    ListSignalCatalogsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListSignalCatalogsOutput.type = Types::ListSignalCatalogsOutput
    ListStateTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListStateTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListStateTemplatesRequest.add_member(:list_response_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResponseScope, location_name: 'listResponseScope', traits: {"smithy.api#documentation" => "<p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: state template ID, Amazon Resource Name (ARN), creation time, and last modification time.</p>", "smithy.api#httpQuery" => "listResponseScope"}))
    ListStateTemplatesRequest.type = Types::ListStateTemplatesRequest
    ListStateTemplatesResponse.add_member(:summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateSummaries, location_name: 'summaries', traits: {"smithy.api#documentation" => "<p>A list of information about each state template.</p>"}))
    ListStateTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListStateTemplatesResponse.type = Types::ListStateTemplatesResponse
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags assigned to the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVehiclesInFleetInput.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p> The ID of a fleet. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVehiclesInFleetInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVehiclesInFleetInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListVehiclesInFleetInput.type = Types::ListVehiclesInFleetInput
    ListVehiclesInFleetOutput.add_member(:vehicles, Smithy::Schema::Shapes::ShapeRef.new(shape: Vehicles, location_name: 'vehicles', traits: {"smithy.api#documentation" => "<p> A list of vehicles associated with the fleet. </p>"}))
    ListVehiclesInFleetOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListVehiclesInFleetOutput.type = Types::ListVehiclesInFleetOutput
    ListVehiclesInput.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a vehicle model (model manifest). You can use this optional\n            parameter to list only the vehicles created from a certain vehicle model. </p>", "smithy.api#httpQuery" => "modelManifestArn"}))
    ListVehiclesInput.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNamesList, location_name: 'attributeNames', traits: {"smithy.api#documentation" => "<p>The fully qualified names of the attributes. You can use this optional parameter to list the \n            vehicles containing all the attributes in the request. For example, <code>attributeNames</code> \n            could be \"<code>Vehicle.Body.Engine.Type, Vehicle.Color</code>\" and the corresponding \n            <code>attributeValues</code> could be \"<code>1.3 L R2, Blue</code>\" . In this case, the API \n            will filter vehicles with an attribute name <code>Vehicle.Body.Engine.Type</code> that contains\n            a value of <code>1.3 L R2</code> AND an attribute name <code>Vehicle.Color</code> that contains\n            a value of \"<code>Blue</code>\". A request must contain unique values for the <code>attributeNames</code> \n            filter and the matching number of <code>attributeValues</code> filters to return the subset \n            of vehicles that match the attributes filter condition.</p>", "smithy.api#httpQuery" => "attributeNames"}))
    ListVehiclesInput.add_member(:attribute_values, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValuesList, location_name: 'attributeValues', traits: {"smithy.api#documentation" => "<p>Static information about a vehicle attribute value in string format. You can use this optional \n            parameter in conjunction with <code>attributeNames</code> to list the vehicles containing all \n            the <code>attributeValues</code> corresponding to the <code>attributeNames</code> filter. For \n            example, <code>attributeValues</code> could be \"<code>1.3 L R2, Blue</code>\" and the corresponding \n            <code>attributeNames</code> filter could be \"<code>Vehicle.Body.Engine.Type, Vehicle.Color</code>\". \n            In this case, the API will filter vehicles with attribute name <code>Vehicle.Body.Engine.Type</code> \n            that contains a value of <code>1.3 L R2</code> AND an attribute name <code>Vehicle.Color</code> that\n            contains a value of \"<code>Blue</code>\". A request must contain unique values for the \n            <code>attributeNames</code> filter and the matching number of <code>attributeValues</code> \n            filter to return the subset of vehicles that match the attributes filter condition.</p>", "smithy.api#httpQuery" => "attributeValues"}))
    ListVehiclesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token for the next set of results.</p>\n         <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVehiclesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVehiclesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return, between 1 and 100, inclusive.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListVehiclesInput.add_member(:list_response_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResponseScope, location_name: 'listResponseScope', traits: {"smithy.api#documentation" => "<p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: vehicle name, Amazon Resource Name (ARN), creation time, and last modification time.</p>", "smithy.api#httpQuery" => "listResponseScope"}))
    ListVehiclesInput.type = Types::ListVehiclesInput
    ListVehiclesOutput.add_member(:vehicle_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleSummaries, location_name: 'vehicleSummaries', traits: {"smithy.api#documentation" => "<p> A list of vehicles and information about them. </p>"}))
    ListVehiclesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>"}))
    ListVehiclesOutput.type = Types::ListVehiclesOutput
    LogType.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    LogType.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ManifestStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ManifestStatus.add_member(:draft, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRAFT', traits: {"smithy.api#enumValue" => "DRAFT"}))
    ManifestStatus.add_member(:invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    ManifestStatus.add_member(:validating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    MessageSignal.add_member(:topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName, location_name: 'topicName', traits: {"smithy.api#documentation" => "<p>The topic name for the message signal. It corresponds to topics in ROS 2. </p>", "smithy.api#required" => {}}))
    MessageSignal.add_member(:structured_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredMessage, location_name: 'structuredMessage', traits: {"smithy.api#documentation" => "<p>The structured message for the message signal. It can be defined with either a\n                <code>primitiveMessageDefinition</code>,\n                <code>structuredMessageListDefinition</code>, or\n                <code>structuredMessageDefinition</code> recursively.</p>", "smithy.api#required" => {}}))
    MessageSignal.type = Types::MessageSignal
    ModelManifestSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the vehicle model.</p>"}))
    ModelManifestSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vehicle model.</p>"}))
    ModelManifestSummary.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p>The ARN of the signal catalog associated with the vehicle model.</p>"}))
    ModelManifestSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the vehicle model.</p>"}))
    ModelManifestSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of the vehicle model. If the status is <code>ACTIVE</code>, the vehicle\n            model can't be edited. If the status is <code>DRAFT</code>, you can edit the vehicle\n            model.</p>"}))
    ModelManifestSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the vehicle model was created, in seconds since epoch (January 1, 1970 at\n            midnight UTC time).</p>", "smithy.api#required" => {}}))
    ModelManifestSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The time the vehicle model was last updated, in seconds since epoch (January 1, 1970\n            at midnight UTC time).</p>", "smithy.api#required" => {}}))
    ModelManifestSummary.type = Types::ModelManifestSummary
    ModelSignalsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ModelSignalsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MqttTopicConfig.add_member(:mqtt_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: MqttTopicArn, location_name: 'mqttTopicArn', traits: {"smithy.api#documentation" => "<p>The ARN of the MQTT topic.</p>", "smithy.api#required" => {}}))
    MqttTopicConfig.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role that grants Amazon Web Services IoT FleetWise permission to access and act on messages sent to \n          the MQTT topic.</p>", "smithy.api#required" => {}}))
    MqttTopicConfig.type = Types::MqttTopicConfig
    NetworkFileDefinition.add_member(:can_dbc, Types::NetworkFileDefinition::CanDbc, Smithy::Schema::Shapes::ShapeRef.new(shape: CanDbcDefinition, location_name: 'canDbc', traits: {"smithy.api#documentation" => "<p>Information, including CAN DBC files, about the configurations used to create a\n            decoder manifest.</p>"}))
    NetworkFileDefinition.add_member(:unknown, Types::NetworkFileDefinition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    NetworkFileDefinition.type = Types::NetworkFileDefinition
    NetworkFileDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFileDefinition)
    NetworkFilesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFileBlob)
    NetworkInterface.add_member(:interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceId, location_name: 'interfaceId', traits: {"smithy.api#documentation" => "<p>The ID of the network interface.</p>", "smithy.api#required" => {}}))
    NetworkInterface.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The network protocol for the vehicle. For example, <code>CAN_SIGNAL</code> specifies a\n            protocol that defines how data is communicated between electronic control units (ECUs).\n                <code>OBD_SIGNAL</code> specifies a protocol that defines how self-diagnostic data\n            is communicated between ECUs.</p>", "smithy.api#required" => {}}))
    NetworkInterface.add_member(:can_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: CanInterface, location_name: 'canInterface', traits: {"smithy.api#documentation" => "<p>Information about a network interface specified by the Controller Area Network (CAN)\n            protocol.</p>"}))
    NetworkInterface.add_member(:obd_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: ObdInterface, location_name: 'obdInterface', traits: {"smithy.api#documentation" => "<p>Information about a network interface specified by the on-board diagnostic (OBD) II\n            protocol.</p>"}))
    NetworkInterface.add_member(:vehicle_middleware, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleMiddleware, location_name: 'vehicleMiddleware', traits: {"smithy.api#documentation" => "<p>The vehicle middleware defined as a type of network interface. Examples of vehicle\n            middleware include <code>ROS2</code> and <code>SOME/IP</code>.</p>"}))
    NetworkInterface.add_member(:custom_decoding_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDecodingInterface, location_name: 'customDecodingInterface', traits: {"smithy.api#documentation" => "<p>Information about a <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CustomDecodingInterface.html\">custom network \n          interface</a>.</p>"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceFailureReason.add_member(:duplicate_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_INTERFACE', traits: {"smithy.api#enumValue" => "DUPLICATE_NETWORK_INTERFACE"}))
    NetworkInterfaceFailureReason.add_member(:conflicting_network_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFLICTING_NETWORK_INTERFACE', traits: {"smithy.api#enumValue" => "CONFLICTING_NETWORK_INTERFACE"}))
    NetworkInterfaceFailureReason.add_member(:network_interface_to_add_already_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_INTERFACE_TO_ADD_ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE_TO_ADD_ALREADY_EXISTS"}))
    NetworkInterfaceFailureReason.add_member(:can_network_interface_info_is_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_NETWORK_INTERFACE_INFO_IS_NULL', traits: {"smithy.api#enumValue" => "CAN_NETWORK_INTERFACE_INFO_IS_NULL"}))
    NetworkInterfaceFailureReason.add_member(:obd_network_interface_info_is_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBD_NETWORK_INTERFACE_INFO_IS_NULL', traits: {"smithy.api#enumValue" => "OBD_NETWORK_INTERFACE_INFO_IS_NULL"}))
    NetworkInterfaceFailureReason.add_member(:network_interface_to_remove_associated_with_signals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_INTERFACE_TO_REMOVE_ASSOCIATED_WITH_SIGNALS', traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE_TO_REMOVE_ASSOCIATED_WITH_SIGNALS"}))
    NetworkInterfaceFailureReason.add_member(:vehicle_middleware_network_interface_info_is_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VEHICLE_MIDDLEWARE_NETWORK_INTERFACE_INFO_IS_NULL', traits: {"smithy.api#enumValue" => "VEHICLE_MIDDLEWARE_NETWORK_INTERFACE_INFO_IS_NULL"}))
    NetworkInterfaceFailureReason.add_member(:custom_decoding_signal_network_interface_info_is_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_DECODING_SIGNAL_NETWORK_INTERFACE_INFO_IS_NULL', traits: {"smithy.api#enumValue" => "CUSTOM_DECODING_SIGNAL_NETWORK_INTERFACE_INFO_IS_NULL"}))
    NetworkInterfaceType.add_member(:can_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_INTERFACE', traits: {"smithy.api#enumValue" => "CAN_INTERFACE"}))
    NetworkInterfaceType.add_member(:obd_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBD_INTERFACE', traits: {"smithy.api#enumValue" => "OBD_INTERFACE"}))
    NetworkInterfaceType.add_member(:vehicle_middleware, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VEHICLE_MIDDLEWARE', traits: {"smithy.api#enumValue" => "VEHICLE_MIDDLEWARE"}))
    NetworkInterfaceType.add_member(:custom_decoding_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_DECODING_INTERFACE', traits: {"smithy.api#enumValue" => "CUSTOM_DECODING_INTERFACE"}))
    NetworkInterfaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    Node.add_member(:branch, Types::Node::Branch, Smithy::Schema::Shapes::ShapeRef.new(shape: Branch, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>Information about a node specified as a branch.</p>\n         <note>\n            <p>A group of signals that are defined in a hierarchical structure.</p>\n         </note>"}))
    Node.add_member(:sensor, Types::Node::Sensor, Smithy::Schema::Shapes::ShapeRef.new(shape: Sensor, location_name: 'sensor'))
    Node.add_member(:actuator, Types::Node::Actuator, Smithy::Schema::Shapes::ShapeRef.new(shape: Actuator, location_name: 'actuator', traits: {"smithy.api#documentation" => "<p>Information about a node specified as an actuator.</p>\n         <note>\n            <p>An actuator is a digital representation of a vehicle device.</p>\n         </note>"}))
    Node.add_member(:attribute, Types::Node::Attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute, location_name: 'attribute', traits: {"smithy.api#documentation" => "<p>Information about a node specified as an attribute.</p>\n         <note>\n            <p>An attribute represents static information about a vehicle.</p>\n         </note>"}))
    Node.add_member(:struct, Types::Node::Struct, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomStruct, location_name: 'struct', traits: {"smithy.api#documentation" => "<p>Represents a complex or higher-order data structure.</p>"}))
    Node.add_member(:property, Types::Node::Property, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomProperty, location_name: 'property', traits: {"smithy.api#documentation" => "<p>Represents a member of the complex data structure. The <code>datatype</code> of the\n            property can be either primitive or another <code>struct</code>.</p>"}))
    Node.add_member(:unknown, Types::Node::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Node.type = Types::Node
    NodeCounts.add_member(:total_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Number, location_name: 'totalNodes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of nodes in a vehicle network.</p>"}))
    NodeCounts.add_member(:total_branches, Smithy::Schema::Shapes::ShapeRef.new(shape: Number, location_name: 'totalBranches', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of nodes in a vehicle network that represent branches.</p>"}))
    NodeCounts.add_member(:total_sensors, Smithy::Schema::Shapes::ShapeRef.new(shape: Number, location_name: 'totalSensors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of nodes in a vehicle network that represent sensors.</p>"}))
    NodeCounts.add_member(:total_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Number, location_name: 'totalAttributes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of nodes in a vehicle network that represent attributes.</p>"}))
    NodeCounts.add_member(:total_actuators, Smithy::Schema::Shapes::ShapeRef.new(shape: Number, location_name: 'totalActuators', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of nodes in a vehicle network that represent actuators.</p>"}))
    NodeCounts.add_member(:total_structs, Smithy::Schema::Shapes::ShapeRef.new(shape: Number, location_name: 'totalStructs', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total structure for the node.</p>"}))
    NodeCounts.add_member(:total_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Number, location_name: 'totalProperties', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total properties for the node.</p>"}))
    NodeCounts.type = Types::NodeCounts
    NodeDataEncoding.add_member(:binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BINARY', traits: {"smithy.api#enumValue" => "BINARY"}))
    NodeDataEncoding.add_member(:typed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TYPED', traits: {"smithy.api#enumValue" => "TYPED"}))
    NodeDataType.add_member(:int8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT8', traits: {"smithy.api#enumValue" => "INT8"}))
    NodeDataType.add_member(:uint8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT8', traits: {"smithy.api#enumValue" => "UINT8"}))
    NodeDataType.add_member(:int16, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT16', traits: {"smithy.api#enumValue" => "INT16"}))
    NodeDataType.add_member(:uint16, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT16', traits: {"smithy.api#enumValue" => "UINT16"}))
    NodeDataType.add_member(:int32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT32', traits: {"smithy.api#enumValue" => "INT32"}))
    NodeDataType.add_member(:uint32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT32', traits: {"smithy.api#enumValue" => "UINT32"}))
    NodeDataType.add_member(:int64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT64', traits: {"smithy.api#enumValue" => "INT64"}))
    NodeDataType.add_member(:uint64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT64', traits: {"smithy.api#enumValue" => "UINT64"}))
    NodeDataType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    NodeDataType.add_member(:float, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT', traits: {"smithy.api#enumValue" => "FLOAT"}))
    NodeDataType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE', traits: {"smithy.api#enumValue" => "DOUBLE"}))
    NodeDataType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    NodeDataType.add_member(:unix_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNIX_TIMESTAMP', traits: {"smithy.api#enumValue" => "UNIX_TIMESTAMP"}))
    NodeDataType.add_member(:int8_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT8_ARRAY', traits: {"smithy.api#enumValue" => "INT8_ARRAY"}))
    NodeDataType.add_member(:uint8_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT8_ARRAY', traits: {"smithy.api#enumValue" => "UINT8_ARRAY"}))
    NodeDataType.add_member(:int16_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT16_ARRAY', traits: {"smithy.api#enumValue" => "INT16_ARRAY"}))
    NodeDataType.add_member(:uint16_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT16_ARRAY', traits: {"smithy.api#enumValue" => "UINT16_ARRAY"}))
    NodeDataType.add_member(:int32_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT32_ARRAY', traits: {"smithy.api#enumValue" => "INT32_ARRAY"}))
    NodeDataType.add_member(:uint32_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT32_ARRAY', traits: {"smithy.api#enumValue" => "UINT32_ARRAY"}))
    NodeDataType.add_member(:int64_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT64_ARRAY', traits: {"smithy.api#enumValue" => "INT64_ARRAY"}))
    NodeDataType.add_member(:uint64_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT64_ARRAY', traits: {"smithy.api#enumValue" => "UINT64_ARRAY"}))
    NodeDataType.add_member(:boolean_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN_ARRAY', traits: {"smithy.api#enumValue" => "BOOLEAN_ARRAY"}))
    NodeDataType.add_member(:float_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT_ARRAY', traits: {"smithy.api#enumValue" => "FLOAT_ARRAY"}))
    NodeDataType.add_member(:double_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOUBLE_ARRAY', traits: {"smithy.api#enumValue" => "DOUBLE_ARRAY"}))
    NodeDataType.add_member(:string_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING_ARRAY', traits: {"smithy.api#enumValue" => "STRING_ARRAY"}))
    NodeDataType.add_member(:unix_timestamp_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNIX_TIMESTAMP_ARRAY', traits: {"smithy.api#enumValue" => "UNIX_TIMESTAMP_ARRAY"}))
    NodeDataType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    NodeDataType.add_member(:struct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRUCT', traits: {"smithy.api#enumValue" => "STRUCT"}))
    NodeDataType.add_member(:struct_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRUCT_ARRAY', traits: {"smithy.api#enumValue" => "STRUCT_ARRAY"}))
    NodePaths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath)
    Nodes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Node)
    ObdInterface.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ObdInterfaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the interface.</p>", "smithy.api#required" => {}}))
    ObdInterface.add_member(:request_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'requestMessageId', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The ID of the message requesting vehicle data.</p>", "smithy.api#required" => {}}))
    ObdInterface.add_member(:obd_standard, Smithy::Schema::Shapes::ShapeRef.new(shape: ObdStandard, location_name: 'obdStandard', traits: {"smithy.api#documentation" => "<p>The standard OBD II PID.</p>"}))
    ObdInterface.add_member(:pid_request_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'pidRequestIntervalSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number message requests per second.</p>"}))
    ObdInterface.add_member(:dtc_request_interval_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'dtcRequestIntervalSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number message requests per diagnostic trouble code per second.</p>"}))
    ObdInterface.add_member(:use_extended_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'useExtendedIds', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to use extended IDs in the message.</p>"}))
    ObdInterface.add_member(:has_transmission_ecu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'hasTransmissionEcu', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the vehicle has a transmission control module (TCM).</p>"}))
    ObdInterface.type = Types::ObdInterface
    ObdSignal.add_member(:pid_response_length, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'pidResponseLength', traits: {"smithy.api#documentation" => "<p>The length of the requested data.</p>", "smithy.api#required" => {}}))
    ObdSignal.add_member(:service_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'serviceMode', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The mode of operation (diagnostic service) in a message.</p>", "smithy.api#required" => {}}))
    ObdSignal.add_member(:pid, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'pid', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The diagnostic code used to request data from a vehicle for this signal.</p>", "smithy.api#required" => {}}))
    ObdSignal.add_member(:scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'scaling', traits: {"smithy.api#documentation" => "<p>A multiplier used to decode the message.</p>", "smithy.api#required" => {}}))
    ObdSignal.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'offset', traits: {"smithy.api#documentation" => "<p>The offset used to calculate the signal value. Combined with scaling, the calculation\n            is <code>value = raw_value * scaling + offset</code>.</p>", "smithy.api#required" => {}}))
    ObdSignal.add_member(:start_byte, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'startByte', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Indicates the beginning of the message.</p>", "smithy.api#required" => {}}))
    ObdSignal.add_member(:byte_length, Smithy::Schema::Shapes::ShapeRef.new(shape: ObdByteLength, location_name: 'byteLength', traits: {"smithy.api#documentation" => "<p>The length of a message.</p>", "smithy.api#required" => {}}))
    ObdSignal.add_member(:bit_right_shift, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'bitRightShift', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of positions to shift bits in the message.</p>"}))
    ObdSignal.add_member(:bit_mask_length, Smithy::Schema::Shapes::ShapeRef.new(shape: ObdBitmaskLength, location_name: 'bitMaskLength', traits: {"smithy.api#documentation" => "<p>The number of bits to mask in a message.</p>"}))
    ObdSignal.add_member(:is_signed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'isSigned', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Determines whether the message is signed (<code>true</code>) or not (<code>false</code>). If it's signed, the message can represent both positive and negative numbers. The <code>isSigned</code> parameter only applies to the <code>INTEGER</code> raw signal type, and it doesn't affect the <code>FLOATING_POINT</code> raw signal type. The default value is <code>false</code>.</p>"}))
    ObdSignal.add_member(:signal_value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalValueType, location_name: 'signalValueType', traits: {"smithy.api#documentation" => "<p>The value type of the signal. The default value is <code>INTEGER</code>.</p>"}))
    ObdSignal.type = Types::ObdSignal
    OnChangeStateTemplateUpdateStrategy.type = Types::OnChangeStateTemplateUpdateStrategy
    PeriodicStateTemplateUpdateStrategy.add_member(:state_template_update_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: TimePeriod, location_name: 'stateTemplateUpdateRate', traits: {"smithy.api#required" => {}}))
    PeriodicStateTemplateUpdateStrategy.type = Types::PeriodicStateTemplateUpdateStrategy
    PrimitiveMessageDefinition.add_member(:ros2_primitive_message_definition, Types::PrimitiveMessageDefinition::Ros2PrimitiveMessageDefinition, Smithy::Schema::Shapes::ShapeRef.new(shape: ROS2PrimitiveMessageDefinition, location_name: 'ros2PrimitiveMessageDefinition', traits: {"smithy.api#documentation" => "<p>Information about a <code>PrimitiveMessage</code> using a ROS 2 compliant primitive\n            type message of the complex data structure.</p>"}))
    PrimitiveMessageDefinition.add_member(:unknown, Types::PrimitiveMessageDefinition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PrimitiveMessageDefinition.type = Types::PrimitiveMessageDefinition
    PutEncryptionConfigurationRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key that is used for encryption.</p>", "smithy.api#length" => {"min" => 0, "max" => 2048}}))
    PutEncryptionConfigurationRequest.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption. Choose <code>KMS_BASED_ENCRYPTION</code> to use a KMS key or\n                <code>FLEETWISE_DEFAULT_ENCRYPTION</code> to use an Amazon Web Services managed key.</p>", "smithy.api#required" => {}}))
    PutEncryptionConfigurationRequest.type = Types::PutEncryptionConfigurationRequest
    PutEncryptionConfigurationResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key that is used for encryption.</p>"}))
    PutEncryptionConfigurationResponse.add_member(:encryption_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionStatus, location_name: 'encryptionStatus', traits: {"smithy.api#documentation" => "<p>The encryption status.</p>", "smithy.api#required" => {}}))
    PutEncryptionConfigurationResponse.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption. Set to <code>KMS_BASED_ENCRYPTION</code> to use an KMS key that \n            you own and manage. Set to <code>FLEETWISE_DEFAULT_ENCRYPTION</code> to use an Amazon Web Services managed \n            key that is owned by the Amazon Web Services IoT FleetWise service account.</p>", "smithy.api#required" => {}}))
    PutEncryptionConfigurationResponse.type = Types::PutEncryptionConfigurationResponse
    PutLoggingOptionsInput.add_member(:cloud_watch_log_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogDeliveryOptions, location_name: 'cloudWatchLogDelivery', traits: {"smithy.api#documentation" => "<p>Creates or updates the log delivery option to Amazon CloudWatch Logs.</p>", "smithy.api#required" => {}}))
    PutLoggingOptionsInput.type = Types::PutLoggingOptionsInput
    PutLoggingOptionsOutput.type = Types::PutLoggingOptionsOutput
    ROS2PrimitiveMessageDefinition.add_member(:primitive_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ROS2PrimitiveType, location_name: 'primitiveType', traits: {"smithy.api#documentation" => "<p>The primitive type (integer, floating point, boolean, etc.) for the ROS 2 primitive\n            message definition.</p>", "smithy.api#required" => {}}))
    ROS2PrimitiveMessageDefinition.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'offset', traits: {"smithy.api#documentation" => "<p>The offset used to calculate the signal value. Combined with scaling, the calculation\n            is <code>value = raw_value * scaling + offset</code>.</p>"}))
    ROS2PrimitiveMessageDefinition.add_member(:scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'scaling', traits: {"smithy.api#documentation" => "<p>A multiplier used to decode the message.</p>"}))
    ROS2PrimitiveMessageDefinition.add_member(:upper_bound, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxStringSize, location_name: 'upperBound', traits: {"smithy.api#documentation" => "<p>An optional attribute specifying the upper bound for <code>STRING</code> and\n                <code>WSTRING</code>.</p>", "smithy.api#range" => {"min" => 0, "max" => 2048}}))
    ROS2PrimitiveMessageDefinition.type = Types::ROS2PrimitiveMessageDefinition
    ROS2PrimitiveType.add_member(:bool, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOL', traits: {"smithy.api#enumValue" => "BOOL"}))
    ROS2PrimitiveType.add_member(:byte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTE', traits: {"smithy.api#enumValue" => "BYTE"}))
    ROS2PrimitiveType.add_member(:char, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHAR', traits: {"smithy.api#enumValue" => "CHAR"}))
    ROS2PrimitiveType.add_member(:float32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT32', traits: {"smithy.api#enumValue" => "FLOAT32"}))
    ROS2PrimitiveType.add_member(:float64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT64', traits: {"smithy.api#enumValue" => "FLOAT64"}))
    ROS2PrimitiveType.add_member(:int8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT8', traits: {"smithy.api#enumValue" => "INT8"}))
    ROS2PrimitiveType.add_member(:uint8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT8', traits: {"smithy.api#enumValue" => "UINT8"}))
    ROS2PrimitiveType.add_member(:int16, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT16', traits: {"smithy.api#enumValue" => "INT16"}))
    ROS2PrimitiveType.add_member(:uint16, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT16', traits: {"smithy.api#enumValue" => "UINT16"}))
    ROS2PrimitiveType.add_member(:int32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT32', traits: {"smithy.api#enumValue" => "INT32"}))
    ROS2PrimitiveType.add_member(:uint32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT32', traits: {"smithy.api#enumValue" => "UINT32"}))
    ROS2PrimitiveType.add_member(:int64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT64', traits: {"smithy.api#enumValue" => "INT64"}))
    ROS2PrimitiveType.add_member(:uint64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UINT64', traits: {"smithy.api#enumValue" => "UINT64"}))
    ROS2PrimitiveType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    ROS2PrimitiveType.add_member(:wstring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WSTRING', traits: {"smithy.api#enumValue" => "WSTRING"}))
    RegisterAccountInput.add_member(:timestream_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamResources, location_name: 'timestreamResources', traits: {"smithy.api#deprecated" => {"message" => "Amazon Timestream metadata is now passed in the CreateCampaign API."}}))
    RegisterAccountInput.add_member(:iam_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: IamResources, location_name: 'iamResources', traits: {"smithy.api#deprecated" => {"message" => "iamResources is no longer used or needed as input"}, "smithy.api#documentation" => "<p>The IAM resource that allows Amazon Web Services IoT FleetWise to send data to Amazon Timestream.</p>"}))
    RegisterAccountInput.type = Types::RegisterAccountInput
    RegisterAccountOutput.add_member(:register_account_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'registerAccountStatus', traits: {"smithy.api#documentation" => "<p> The status of registering your Amazon Web Services account, IAM role, and Timestream resources.\n        </p>", "smithy.api#required" => {}}))
    RegisterAccountOutput.add_member(:timestream_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamResources, location_name: 'timestreamResources'))
    RegisterAccountOutput.add_member(:iam_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: IamResources, location_name: 'iamResources', traits: {"smithy.api#documentation" => "<p> The registered IAM resource that allows Amazon Web Services IoT FleetWise to send data to Amazon Timestream. </p>", "smithy.api#required" => {}}))
    RegisterAccountOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time the account was registered, in seconds since epoch (January 1, 1970 at\n            midnight UTC time). </p>", "smithy.api#required" => {}}))
    RegisterAccountOutput.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p> The time this registration was last updated, in seconds since epoch (January 1, 1970\n            at midnight UTC time). </p>", "smithy.api#required" => {}}))
    RegisterAccountOutput.type = Types::RegisterAccountOutput
    RegistrationStatus.add_member(:registration_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTRATION_PENDING', traits: {"smithy.api#enumValue" => "REGISTRATION_PENDING"}))
    RegistrationStatus.add_member(:registration_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTRATION_SUCCESS', traits: {"smithy.api#enumValue" => "REGISTRATION_SUCCESS"}))
    RegistrationStatus.add_member(:registration_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTRATION_FAILURE', traits: {"smithy.api#enumValue" => "REGISTRATION_FAILURE"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource that wasn't found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that wasn't found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Config.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: 'bucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    S3Config.add_member(:data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: DataFormat, location_name: 'dataFormat', traits: {"smithy.api#documentation" => "<p>Specify the format that files are saved in the Amazon S3 bucket. You can save files in an\n            Apache Parquet or JSON format.</p>\n         <ul>\n            <li>\n               <p>Parquet - Store data in a columnar storage file format. Parquet is optimal for\n                    fast data retrieval and can reduce costs. This option is selected by\n                    default.</p>\n            </li>\n            <li>\n               <p>JSON - Store data in a standard text-based JSON file format.</p>\n            </li>\n         </ul>"}))
    S3Config.add_member(:storage_compression_format, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageCompressionFormat, location_name: 'storageCompressionFormat', traits: {"smithy.api#documentation" => "<p>By default, stored data is compressed as a .gzip file. Compressed files have a reduced\n            file size, which can optimize the cost of data storage.</p>"}))
    S3Config.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>Enter an S3 bucket prefix. The prefix is the string of characters after the\n            bucket name and before the object name. You can use the prefix to organize data stored\n            in Amazon S3 buckets. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html\">Organizing objects using\n                prefixes</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>\n         <p>By default, Amazon Web Services IoT FleetWise sets the prefix\n                <code>processed-data/year=YY/month=MM/date=DD/hour=HH/</code> (in UTC) to data it\n            delivers to Amazon S3. You can enter a prefix to append it to this default prefix. For\n            example, if you enter the prefix <code>vehicles</code>, the prefix will be\n                <code>vehicles/processed-data/year=YY/month=MM/date=DD/hour=HH/</code>.</p>"}))
    S3Config.type = Types::S3Config
    Sensor.add_member(:fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the sensor. For example, the fully qualified name of a\n            sensor might be <code>Vehicle.Body.Engine.Battery</code>.</p>", "smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^[a-zA-Z0-9_.]+$", "smithy.api#required" => {}}))
    Sensor.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The specified data type of the sensor. </p>", "smithy.api#required" => {}}))
    Sensor.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of a sensor.</p>"}))
    Sensor.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The scientific unit of measurement for data collected by the sensor.</p>"}))
    Sensor.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: 'allowedValues', traits: {"smithy.api#documentation" => "<p>A list of possible values a sensor can take.</p>"}))
    Sensor.add_member(:min, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'min', traits: {"smithy.api#documentation" => "<p>The specified possible minimum value of the sensor.</p>"}))
    Sensor.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'max', traits: {"smithy.api#documentation" => "<p>The specified possible maximum value of the sensor.</p>"}))
    Sensor.add_member(:deprecation_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'deprecationMessage', traits: {"smithy.api#documentation" => "<p>The deprecation message for the node or the branch that was moved or deleted.</p>"}))
    Sensor.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>A comment in addition to the description.</p>"}))
    Sensor.add_member(:struct_fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath, location_name: 'structFullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the struct node for a sensor if the data type of the\n            actuator is <code>Struct</code> or <code>StructArray</code>. For example, the struct\n            fully qualified name of a sensor might be <code>Vehicle.ADAS.CameraStruct</code>.</p>"}))
    Sensor.type = Types::Sensor
    SignalCatalogSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the signal catalog.</p>"}))
    SignalCatalogSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signal catalog.</p>"}))
    SignalCatalogSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the signal catalog was created in seconds since epoch (January 1, 1970 at midnight UTC time). </p>"}))
    SignalCatalogSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The time the signal catalog was last updated in seconds since epoch (January 1, 1970 at midnight UTC time). </p>"}))
    SignalCatalogSummary.type = Types::SignalCatalogSummary
    SignalDecoder.add_member(:fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FullyQualifiedName, location_name: 'fullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of a signal decoder as defined in a vehicle model.</p>", "smithy.api#required" => {}}))
    SignalDecoder.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalDecoderType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The network protocol for the vehicle. For example, <code>CAN_SIGNAL</code> specifies a\n            protocol that defines how data is communicated between electronic control units (ECUs).\n                <code>OBD_SIGNAL</code> specifies a protocol that defines how self-diagnostic data\n            is communicated between ECUs.</p>", "smithy.api#required" => {}}))
    SignalDecoder.add_member(:interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceId, location_name: 'interfaceId', traits: {"smithy.api#documentation" => "<p>The ID of a network interface that specifies what network protocol a vehicle\n            follows.</p>", "smithy.api#required" => {}}))
    SignalDecoder.add_member(:can_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: CanSignal, location_name: 'canSignal', traits: {"smithy.api#documentation" => "<p>Information about signal decoder using the Controller Area Network (CAN)\n            protocol.</p>"}))
    SignalDecoder.add_member(:obd_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: ObdSignal, location_name: 'obdSignal', traits: {"smithy.api#documentation" => "<p>Information about signal decoder using the on-board diagnostic (OBD) II\n            protocol.</p>"}))
    SignalDecoder.add_member(:message_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageSignal, location_name: 'messageSignal', traits: {"smithy.api#documentation" => "<p>The decoding information for a specific message which supports higher order data\n            types. </p>"}))
    SignalDecoder.add_member(:custom_decoding_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDecodingSignal, location_name: 'customDecodingSignal', traits: {"smithy.api#documentation" => "<p>Information about a <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CustomDecodingSignal.html\">custom signal \n          decoder</a>.</p>\n         <important>\n            <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html\">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>\n         </important>"}))
    SignalDecoder.type = Types::SignalDecoder
    SignalDecoderFailureReason.add_member(:duplicate_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_SIGNAL', traits: {"smithy.api#enumValue" => "DUPLICATE_SIGNAL"}))
    SignalDecoderFailureReason.add_member(:conflicting_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFLICTING_SIGNAL', traits: {"smithy.api#enumValue" => "CONFLICTING_SIGNAL"}))
    SignalDecoderFailureReason.add_member(:signal_to_add_already_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNAL_TO_ADD_ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "SIGNAL_TO_ADD_ALREADY_EXISTS"}))
    SignalDecoderFailureReason.add_member(:signal_not_associated_with_network_interface, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNAL_NOT_ASSOCIATED_WITH_NETWORK_INTERFACE', traits: {"smithy.api#enumValue" => "SIGNAL_NOT_ASSOCIATED_WITH_NETWORK_INTERFACE"}))
    SignalDecoderFailureReason.add_member(:network_interface_type_incompatible_with_signal_decoder_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_INTERFACE_TYPE_INCOMPATIBLE_WITH_SIGNAL_DECODER_TYPE', traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE_TYPE_INCOMPATIBLE_WITH_SIGNAL_DECODER_TYPE"}))
    SignalDecoderFailureReason.add_member(:signal_not_in_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNAL_NOT_IN_MODEL', traits: {"smithy.api#enumValue" => "SIGNAL_NOT_IN_MODEL"}))
    SignalDecoderFailureReason.add_member(:can_signal_info_is_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_SIGNAL_INFO_IS_NULL', traits: {"smithy.api#enumValue" => "CAN_SIGNAL_INFO_IS_NULL"}))
    SignalDecoderFailureReason.add_member(:obd_signal_info_is_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBD_SIGNAL_INFO_IS_NULL', traits: {"smithy.api#enumValue" => "OBD_SIGNAL_INFO_IS_NULL"}))
    SignalDecoderFailureReason.add_member(:no_decoder_info_for_signal_in_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_DECODER_INFO_FOR_SIGNAL_IN_MODEL', traits: {"smithy.api#enumValue" => "NO_DECODER_INFO_FOR_SIGNAL_IN_MODEL"}))
    SignalDecoderFailureReason.add_member(:message_signal_info_is_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_SIGNAL_INFO_IS_NULL', traits: {"smithy.api#enumValue" => "MESSAGE_SIGNAL_INFO_IS_NULL"}))
    SignalDecoderFailureReason.add_member(:signal_decoder_type_incompatible_with_message_signal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNAL_DECODER_TYPE_INCOMPATIBLE_WITH_MESSAGE_SIGNAL_TYPE', traits: {"smithy.api#enumValue" => "SIGNAL_DECODER_TYPE_INCOMPATIBLE_WITH_MESSAGE_SIGNAL_TYPE"}))
    SignalDecoderFailureReason.add_member(:struct_size_mismatch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRUCT_SIZE_MISMATCH', traits: {"smithy.api#enumValue" => "STRUCT_SIZE_MISMATCH"}))
    SignalDecoderFailureReason.add_member(:no_signal_in_catalog_for_decoder_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_SIGNAL_IN_CATALOG_FOR_DECODER_SIGNAL', traits: {"smithy.api#enumValue" => "NO_SIGNAL_IN_CATALOG_FOR_DECODER_SIGNAL"}))
    SignalDecoderFailureReason.add_member(:signal_decoder_incompatible_with_signal_catalog, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNAL_DECODER_INCOMPATIBLE_WITH_SIGNAL_CATALOG', traits: {"smithy.api#enumValue" => "SIGNAL_DECODER_INCOMPATIBLE_WITH_SIGNAL_CATALOG"}))
    SignalDecoderFailureReason.add_member(:empty_message_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMPTY_MESSAGE_SIGNAL', traits: {"smithy.api#enumValue" => "EMPTY_MESSAGE_SIGNAL"}))
    SignalDecoderFailureReason.add_member(:custom_decoding_signal_info_is_null, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_DECODING_SIGNAL_INFO_IS_NULL', traits: {"smithy.api#enumValue" => "CUSTOM_DECODING_SIGNAL_INFO_IS_NULL"}))
    SignalDecoderType.add_member(:can_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAN_SIGNAL', traits: {"smithy.api#enumValue" => "CAN_SIGNAL"}))
    SignalDecoderType.add_member(:obd_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBD_SIGNAL', traits: {"smithy.api#enumValue" => "OBD_SIGNAL"}))
    SignalDecoderType.add_member(:message_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_SIGNAL', traits: {"smithy.api#enumValue" => "MESSAGE_SIGNAL"}))
    SignalDecoderType.add_member(:custom_decoding_signal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_DECODING_SIGNAL', traits: {"smithy.api#enumValue" => "CUSTOM_DECODING_SIGNAL"}))
    SignalDecoders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SignalDecoder)
    SignalFetchConfig.add_member(:time_based, Types::SignalFetchConfig::TimeBased, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeBasedSignalFetchConfig, location_name: 'timeBased', traits: {"smithy.api#documentation" => "<p>The configuration of a time-based signal fetch operation.</p>"}))
    SignalFetchConfig.add_member(:condition_based, Types::SignalFetchConfig::ConditionBased, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionBasedSignalFetchConfig, location_name: 'conditionBased', traits: {"smithy.api#documentation" => "<p>The configuration of a condition-based signal fetch operation.</p>"}))
    SignalFetchConfig.add_member(:unknown, Types::SignalFetchConfig::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SignalFetchConfig.type = Types::SignalFetchConfig
    SignalFetchInformation.add_member(:fully_qualified_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath, location_name: 'fullyQualifiedName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the signal to be fetched.</p>", "smithy.api#required" => {}}))
    SignalFetchInformation.add_member(:signal_fetch_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalFetchConfig, location_name: 'signalFetchConfig', traits: {"smithy.api#documentation" => "<p>The configuration of the signal fetch operation.</p>", "smithy.api#required" => {}}))
    SignalFetchInformation.add_member(:condition_language_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageVersion, location_name: 'conditionLanguageVersion', traits: {"smithy.api#documentation" => "<p>The version of the condition language used.</p>"}))
    SignalFetchInformation.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: EventExpressionList, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions to be performed by the signal fetch.</p>", "smithy.api#required" => {}}))
    SignalFetchInformation.type = Types::SignalFetchInformation
    SignalFetchInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SignalFetchInformation)
    SignalInformation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WildcardSignalName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the signal.</p>", "smithy.api#required" => {}}))
    SignalInformation.add_member(:max_sample_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSampleCount, location_name: 'maxSampleCount', traits: {"smithy.api#documentation" => "<p>The maximum number of samples to collect.</p>"}))
    SignalInformation.add_member(:minimum_sampling_interval_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: Uint32, location_name: 'minimumSamplingIntervalMs', traits: {"smithy.api#documentation" => "<p>The minimum duration of time (in milliseconds) between two triggering events to\n            collect data.</p>\n         <note>\n            <p>If a signal changes often, you might want to collect data at a slower rate.</p>\n         </note>"}))
    SignalInformation.add_member(:data_partition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataPartitionId, location_name: 'dataPartitionId', traits: {"smithy.api#documentation" => "<p>The ID of the data partition this signal is associated with.</p>\n         <p>The ID must match one of the IDs provided in <code>dataPartitions</code>. This is\n            accomplished either by specifying a particular data partition ID or by using\n                <code>default</code> for an established default partition. You can establish a\n            default partition in the <code>DataPartition</code> data type.</p>\n         <note>\n            <p>If you upload a signal as a condition for a campaign's data partition,\n                the same signal must be included in <code>signalsToCollect</code>.</p>\n         </note>\n         <important>\n            <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html\">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>\n         </important>"}))
    SignalInformation.type = Types::SignalInformation
    SignalInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SignalInformation)
    SignalNodeType.add_member(:sensor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENSOR', traits: {"smithy.api#enumValue" => "SENSOR"}))
    SignalNodeType.add_member(:actuator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTUATOR', traits: {"smithy.api#enumValue" => "ACTUATOR"}))
    SignalNodeType.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTRIBUTE', traits: {"smithy.api#enumValue" => "ATTRIBUTE"}))
    SignalNodeType.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BRANCH', traits: {"smithy.api#enumValue" => "BRANCH"}))
    SignalNodeType.add_member(:custom_struct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_STRUCT', traits: {"smithy.api#enumValue" => "CUSTOM_STRUCT"}))
    SignalNodeType.add_member(:custom_property, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_PROPERTY', traits: {"smithy.api#enumValue" => "CUSTOM_PROPERTY"}))
    SignalValueType.add_member(:integer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "INTEGER"}))
    SignalValueType.add_member(:floating_point, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOATING_POINT', traits: {"smithy.api#enumValue" => "FLOATING_POINT"}))
    SpoolingMode.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    SpoolingMode.add_member(:to_disk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TO_DISK', traits: {"smithy.api#enumValue" => "TO_DISK"}))
    StateTemplateAssociation.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>", "smithy.api#required" => {}}))
    StateTemplateAssociation.add_member(:state_template_update_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateUpdateStrategy, location_name: 'stateTemplateUpdateStrategy', traits: {"smithy.api#required" => {}}))
    StateTemplateAssociation.type = Types::StateTemplateAssociation
    StateTemplateAssociationIdentifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier)
    StateTemplateAssociations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociation)
    StateTemplateDataExtraDimensionNodePathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath)
    StateTemplateMetadataExtraDimensionNodePathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath)
    StateTemplateProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodePath)
    StateTemplateSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateSummary)
    StateTemplateSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state template.</p>"}))
    StateTemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state template.</p>"}))
    StateTemplateSummary.add_member(:signal_catalog_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'signalCatalogArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the signal catalog associated with the state template.</p>"}))
    StateTemplateSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the state template.</p>"}))
    StateTemplateSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the state template was created, in seconds since epoch (January 1, 1970 at midnight UTC time).</p>"}))
    StateTemplateSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The time the state template was last updated, in seconds since epoch (January 1, 1970 at midnight UTC time).</p>"}))
    StateTemplateSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUniqueId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>"}))
    StateTemplateSummary.type = Types::StateTemplateSummary
    StateTemplateUpdateStrategy.add_member(:periodic, Types::StateTemplateUpdateStrategy::Periodic, Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodicStateTemplateUpdateStrategy, location_name: 'periodic'))
    StateTemplateUpdateStrategy.add_member(:on_change, Types::StateTemplateUpdateStrategy::OnChange, Smithy::Schema::Shapes::ShapeRef.new(shape: OnChangeStateTemplateUpdateStrategy, location_name: 'onChange'))
    StateTemplateUpdateStrategy.add_member(:unknown, Types::StateTemplateUpdateStrategy::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    StateTemplateUpdateStrategy.type = Types::StateTemplateUpdateStrategy
    StorageCompressionFormat.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    StorageCompressionFormat.add_member(:gzip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GZIP', traits: {"smithy.api#enumValue" => "GZIP"}))
    StorageMaximumSize.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMaximumSizeUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The data type of the data to store.</p>", "smithy.api#required" => {}}))
    StorageMaximumSize.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMaximumSizeValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The maximum amount of time to store data.</p>", "smithy.api#required" => {}}))
    StorageMaximumSize.type = Types::StorageMaximumSize
    StorageMaximumSizeUnit.add_member(:mb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MB', traits: {"smithy.api#enumValue" => "MB"}))
    StorageMaximumSizeUnit.add_member(:gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GB', traits: {"smithy.api#enumValue" => "GB"}))
    StorageMaximumSizeUnit.add_member(:tb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TB', traits: {"smithy.api#enumValue" => "TB"}))
    StorageMinimumTimeToLive.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMinimumTimeToLiveUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The time increment type.</p>", "smithy.api#required" => {}}))
    StorageMinimumTimeToLive.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMinimumTimeToLiveValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The minimum amount of time to store the data.</p>", "smithy.api#required" => {}}))
    StorageMinimumTimeToLive.type = Types::StorageMinimumTimeToLive
    StorageMinimumTimeToLiveUnit.add_member(:hours, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "HOURS"}))
    StorageMinimumTimeToLiveUnit.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    StorageMinimumTimeToLiveUnit.add_member(:weeks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKS', traits: {"smithy.api#enumValue" => "WEEKS"}))
    StructuredMessage.add_member(:primitive_message_definition, Types::StructuredMessage::PrimitiveMessageDefinition, Smithy::Schema::Shapes::ShapeRef.new(shape: PrimitiveMessageDefinition, location_name: 'primitiveMessageDefinition', traits: {"smithy.api#documentation" => "<p>Represents a primitive type node of the complex data structure.</p>"}))
    StructuredMessage.add_member(:structured_message_list_definition, Types::StructuredMessage::StructuredMessageListDefinition, Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredMessageListDefinition, location_name: 'structuredMessageListDefinition', traits: {"smithy.api#documentation" => "<p>Represents a list type node of the complex data structure.</p>"}))
    StructuredMessage.add_member(:structured_message_definition, Types::StructuredMessage::StructuredMessageDefinition, Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredMessageDefinition, location_name: 'structuredMessageDefinition', traits: {"smithy.api#documentation" => "<p>Represents a struct type node of the complex data structure.</p>"}))
    StructuredMessage.add_member(:unknown, Types::StructuredMessage::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    StructuredMessage.type = Types::StructuredMessage
    StructuredMessageDefinition.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredMessageFieldNameAndDataTypePair)
    StructuredMessageFieldNameAndDataTypePair.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StructureMessageName, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The field name of the structured message. It determines how a data value is referenced\n            in the target language. </p>", "smithy.api#required" => {}}))
    StructuredMessageFieldNameAndDataTypePair.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredMessage, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type. </p>", "smithy.api#required" => {}}))
    StructuredMessageFieldNameAndDataTypePair.type = Types::StructuredMessageFieldNameAndDataTypePair
    StructuredMessageListDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StructureMessageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the structured message list definition. </p>", "smithy.api#required" => {}}))
    StructuredMessageListDefinition.add_member(:member_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredMessage, location_name: 'memberType', traits: {"smithy.api#documentation" => "<p>The member type of the structured message list definition.</p>", "smithy.api#required" => {}}))
    StructuredMessageListDefinition.add_member(:list_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StructuredMessageListType, location_name: 'listType', traits: {"smithy.api#documentation" => "<p>The type of list of the structured message list definition.</p>", "smithy.api#required" => {}}))
    StructuredMessageListDefinition.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'capacity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The capacity of the structured message list definition when the list type is\n                <code>FIXED_CAPACITY</code> or <code>DYNAMIC_BOUNDED_CAPACITY</code>.</p>"}))
    StructuredMessageListDefinition.type = Types::StructuredMessageListDefinition
    StructuredMessageListType.add_member(:fixed_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIXED_CAPACITY', traits: {"smithy.api#enumValue" => "FIXED_CAPACITY"}))
    StructuredMessageListType.add_member(:dynamic_unbounded_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMIC_UNBOUNDED_CAPACITY', traits: {"smithy.api#enumValue" => "DYNAMIC_UNBOUNDED_CAPACITY"}))
    StructuredMessageListType.add_member(:dynamic_bounded_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMIC_BOUNDED_CAPACITY', traits: {"smithy.api#enumValue" => "DYNAMIC_BOUNDED_CAPACITY"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag's key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag's value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The new or modified tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The quota identifier of the applied throttling rules for this request.</p>"}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the service that couldn't be completed due to throttling.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of seconds to wait before retrying the command.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeBasedCollectionScheme.add_member(:period_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectionPeriodMs, location_name: 'periodMs', traits: {"smithy.api#documentation" => "<p>The time period (in milliseconds) to decide how often to collect data. For example, if\n            the time period is <code>60000</code>, the Edge Agent software collects data once every\n            minute.</p>", "smithy.api#required" => {}}))
    TimeBasedCollectionScheme.type = Types::TimeBasedCollectionScheme
    TimeBasedSignalFetchConfig.add_member(:execution_frequency_ms, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLong, location_name: 'executionFrequencyMs', traits: {"smithy.api#documentation" => "<p>The frequency with which the signal fetch will be executed.</p>", "smithy.api#required" => {}}))
    TimeBasedSignalFetchConfig.type = Types::TimeBasedSignalFetchConfig
    TimePeriod.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeUnit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>A unit of time.</p>", "smithy.api#required" => {}}))
    TimePeriod.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'value', traits: {"smithy.api#documentation" => "<p>A number of time units.</p>", "smithy.api#required" => {}}))
    TimePeriod.type = Types::TimePeriod
    TimeUnit.add_member(:millisecond, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MILLISECOND', traits: {"smithy.api#enumValue" => "MILLISECOND"}))
    TimeUnit.add_member(:second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECOND', traits: {"smithy.api#enumValue" => "SECOND"}))
    TimeUnit.add_member(:minute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINUTE', traits: {"smithy.api#enumValue" => "MINUTE"}))
    TimeUnit.add_member(:hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOUR', traits: {"smithy.api#enumValue" => "HOUR"}))
    TimestreamConfig.add_member(:timestream_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamTableArn, location_name: 'timestreamTableArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Timestream table.</p>", "smithy.api#required" => {}}))
    TimestreamConfig.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'executionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the task execution role that grants Amazon Web Services IoT FleetWise permission to\n            deliver data to the Amazon Timestream table.</p>", "smithy.api#required" => {}}))
    TimestreamConfig.type = Types::TimestreamConfig
    TimestreamRegistrationResponse.add_member(:timestream_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamDatabaseName, location_name: 'timestreamDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database.</p>", "smithy.api#required" => {}}))
    TimestreamRegistrationResponse.add_member(:timestream_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamTableName, location_name: 'timestreamTableName', traits: {"smithy.api#documentation" => "<p>The name of the Timestream database table.</p>", "smithy.api#required" => {}}))
    TimestreamRegistrationResponse.add_member(:timestream_database_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'timestreamDatabaseArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Timestream database.</p>"}))
    TimestreamRegistrationResponse.add_member(:timestream_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'timestreamTableArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Timestream database table.</p>"}))
    TimestreamRegistrationResponse.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'registrationStatus', traits: {"smithy.api#documentation" => "<p>The status of registering your Amazon Timestream resources. The status can be one of\n                <code>REGISTRATION_SUCCESS</code>, <code>REGISTRATION_PENDING</code>,\n                <code>REGISTRATION_FAILURE</code>.</p>", "smithy.api#required" => {}}))
    TimestreamRegistrationResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>A message associated with a registration error.</p>"}))
    TimestreamRegistrationResponse.type = Types::TimestreamRegistrationResponse
    TimestreamResources.add_member(:timestream_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamDatabaseName, location_name: 'timestreamDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the registered Amazon Timestream database.</p>", "smithy.api#required" => {}}))
    TimestreamResources.add_member(:timestream_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestreamTableName, location_name: 'timestreamTableName', traits: {"smithy.api#documentation" => "<p>The name of the registered Amazon Timestream database table.</p>", "smithy.api#required" => {}}))
    TimestreamResources.type = Types::TimestreamResources
    TriggerMode.add_member(:always, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS', traits: {"smithy.api#enumValue" => "ALWAYS"}))
    TriggerMode.add_member(:rising_edge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RISING_EDGE', traits: {"smithy.api#enumValue" => "RISING_EDGE"}))
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of the keys of the tags to be removed from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCampaignAction.add_member(:approve, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVE', traits: {"smithy.api#enumValue" => "APPROVE"}))
    UpdateCampaignAction.add_member(:suspend, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPEND', traits: {"smithy.api#enumValue" => "SUSPEND"}))
    UpdateCampaignAction.add_member(:resume, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESUME', traits: {"smithy.api#enumValue" => "RESUME"}))
    UpdateCampaignAction.add_member(:update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE', traits: {"smithy.api#enumValue" => "UPDATE"}))
    UpdateCampaignInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the campaign to update. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCampaignInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the campaign.</p>"}))
    UpdateCampaignInput.add_member(:data_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: DataExtraDimensionNodePathList, location_name: 'dataExtraDimensions', traits: {"smithy.api#documentation" => "<p> A list of vehicle attributes to associate with a signal. </p>\n         <p>Default: An empty array</p>"}))
    UpdateCampaignInput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p> Specifies how to update a campaign. The action can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>APPROVE</code> - To approve delivering a data collection scheme to\n                    vehicles. </p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPEND</code> - To suspend collecting signal data. The campaign is\n                    deleted from vehicles and all vehicles in the suspended campaign will stop\n                    sending data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RESUME</code> - To reactivate the <code>SUSPEND</code> campaign. The\n                    campaign is redeployed to all vehicles and the vehicles will resume sending\n                    data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATE</code> - To update a campaign. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateCampaignInput.type = Types::UpdateCampaignInput
    UpdateCampaignOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the campaign. </p>"}))
    UpdateCampaignOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the updated campaign.</p>"}))
    UpdateCampaignOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state of a campaign. The status can be one of:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> - Amazon Web Services IoT FleetWise is processing your request to create the\n                    campaign. </p>\n            </li>\n            <li>\n               <p>\n                  <code>WAITING_FOR_APPROVAL</code> - After you create a campaign, it enters this state. Use the  API operation to approve the campaign for deployment to the target vehicle or fleet.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code> - The campaign is active. </p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPENDED</code> - The campaign is suspended. To resume the campaign, use\n                    the  API operation. </p>\n            </li>\n         </ul>"}))
    UpdateCampaignOutput.type = Types::UpdateCampaignOutput
    UpdateDecoderManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the decoder manifest to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDecoderManifestInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the decoder manifest to update. </p>"}))
    UpdateDecoderManifestInput.add_member(:signal_decoders_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalDecoders, location_name: 'signalDecodersToAdd', traits: {"smithy.api#documentation" => "<p> A list of information about decoding additional signals to add to the decoder\n            manifest. </p>"}))
    UpdateDecoderManifestInput.add_member(:signal_decoders_to_update, Smithy::Schema::Shapes::ShapeRef.new(shape: SignalDecoders, location_name: 'signalDecodersToUpdate', traits: {"smithy.api#documentation" => "<p> A list of updated information about decoding signals to update in the decoder\n            manifest. </p>"}))
    UpdateDecoderManifestInput.add_member(:signal_decoders_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Fqns, location_name: 'signalDecodersToRemove', traits: {"smithy.api#documentation" => "<p> A list of signal decoders to remove from the decoder manifest. </p>"}))
    UpdateDecoderManifestInput.add_member(:network_interfaces_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfacesToAdd', traits: {"smithy.api#documentation" => "<p> A list of information about the network interfaces to add to the decoder manifest.\n        </p>"}))
    UpdateDecoderManifestInput.add_member(:network_interfaces_to_update, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfacesToUpdate', traits: {"smithy.api#documentation" => "<p> A list of information about the network interfaces to update in the decoder manifest.\n        </p>"}))
    UpdateDecoderManifestInput.add_member(:network_interfaces_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceIds, location_name: 'networkInterfacesToRemove', traits: {"smithy.api#documentation" => "<p> A list of network interfaces to remove from the decoder manifest.</p>"}))
    UpdateDecoderManifestInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The state of the decoder manifest. If the status is <code>ACTIVE</code>, the decoder\n            manifest can't be edited. If the status is <code>DRAFT</code>, you can edit the decoder\n            manifest. </p>"}))
    UpdateDecoderManifestInput.add_member(:default_for_unmapped_signals, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultForUnmappedSignalsType, location_name: 'defaultForUnmappedSignals', traits: {"smithy.api#documentation" => "<p>Use default decoders for all unmapped signals in the model. You don't need to provide any detailed decoding information.</p>\n         <important>\n            <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html\">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>\n         </important>"}))
    UpdateDecoderManifestInput.type = Types::UpdateDecoderManifestInput
    UpdateDecoderManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the updated decoder manifest. </p>", "smithy.api#required" => {}}))
    UpdateDecoderManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the updated decoder manifest. </p>", "smithy.api#required" => {}}))
    UpdateDecoderManifestOutput.type = Types::UpdateDecoderManifestOutput
    UpdateFleetInput.add_member(:fleet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'fleetId', traits: {"smithy.api#documentation" => "<p> The ID of the fleet to update. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFleetInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> An updated description of the fleet. </p>"}))
    UpdateFleetInput.type = Types::UpdateFleetInput
    UpdateFleetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the updated fleet.</p>"}))
    UpdateFleetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated fleet.</p>"}))
    UpdateFleetOutput.type = Types::UpdateFleetOutput
    UpdateMode.add_member(:overwrite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERWRITE', traits: {"smithy.api#enumValue" => "Overwrite"}))
    UpdateMode.add_member(:merge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE', traits: {"smithy.api#enumValue" => "Merge"}))
    UpdateModelManifestInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the vehicle model to update. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateModelManifestInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the vehicle model. </p>"}))
    UpdateModelManifestInput.add_member(:nodes_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePaths, location_name: 'nodesToAdd', traits: {"smithy.api#documentation" => "<p> A list of <code>fullyQualifiedName</code> of nodes, which are a general abstraction\n            of signals, to add to the vehicle model. </p>"}))
    UpdateModelManifestInput.add_member(:nodes_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePaths, location_name: 'nodesToRemove', traits: {"smithy.api#documentation" => "<p> A list of <code>fullyQualifiedName</code> of nodes, which are a general abstraction\n            of signals, to remove from the vehicle model. </p>"}))
    UpdateModelManifestInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The state of the vehicle model. If the status is <code>ACTIVE</code>, the vehicle\n            model can't be edited. If the status is <code>DRAFT</code>, you can edit the vehicle\n            model. </p>"}))
    UpdateModelManifestInput.type = Types::UpdateModelManifestInput
    UpdateModelManifestOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the updated vehicle model. </p>", "smithy.api#required" => {}}))
    UpdateModelManifestOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the updated vehicle model. </p>", "smithy.api#required" => {}}))
    UpdateModelManifestOutput.type = Types::UpdateModelManifestOutput
    UpdateSignalCatalogInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the signal catalog to update. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSignalCatalogInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> A brief description of the signal catalog to update.</p>"}))
    UpdateSignalCatalogInput.add_member(:nodes_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: Nodes, location_name: 'nodesToAdd', traits: {"smithy.api#documentation" => "<p> A list of information about nodes to add to the signal catalog. </p>"}))
    UpdateSignalCatalogInput.add_member(:nodes_to_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Nodes, location_name: 'nodesToUpdate', traits: {"smithy.api#documentation" => "<p> A list of information about nodes to update in the signal catalog. </p>"}))
    UpdateSignalCatalogInput.add_member(:nodes_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: NodePaths, location_name: 'nodesToRemove', traits: {"smithy.api#documentation" => "<p> A list of <code>fullyQualifiedName</code> of nodes to remove from the signal catalog.\n        </p>"}))
    UpdateSignalCatalogInput.type = Types::UpdateSignalCatalogInput
    UpdateSignalCatalogOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the updated signal catalog. </p>", "smithy.api#required" => {}}))
    UpdateSignalCatalogOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The ARN of the updated signal catalog. </p>", "smithy.api#required" => {}}))
    UpdateSignalCatalogOutput.type = Types::UpdateSignalCatalogOutput
    UpdateStateTemplateRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStateTemplateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the state template.</p>"}))
    UpdateStateTemplateRequest.add_member(:state_template_properties_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateProperties, location_name: 'stateTemplatePropertiesToAdd', traits: {"smithy.api#documentation" => "<p>Add signals from which data is collected as part of the state template.</p>"}))
    UpdateStateTemplateRequest.add_member(:state_template_properties_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateProperties, location_name: 'stateTemplatePropertiesToRemove', traits: {"smithy.api#documentation" => "<p>Remove signals from which data is collected as part of the state template.</p>"}))
    UpdateStateTemplateRequest.add_member(:data_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateDataExtraDimensionNodePathList, location_name: 'dataExtraDimensions', traits: {"smithy.api#documentation" => "<p>A list of vehicle attributes to associate with the payload published on the state template's \n          MQTT topic. (See <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data\">\n          Processing last known state vehicle data using MQTT messaging</a>). For example, if you add \n          <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise \n          will enrich the protobuf encoded payload with those attributes in the <code>extraDimensions</code>\n          field.</p>\n         <p>Default: An empty array</p>"}))
    UpdateStateTemplateRequest.add_member(:metadata_extra_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateMetadataExtraDimensionNodePathList, location_name: 'metadataExtraDimensions', traits: {"smithy.api#documentation" => "<p>A list of vehicle attributes to associate with user properties of the messages published on the\n          state template's MQTT topic. (See <a href=\"https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data\">\n          Processing last known state vehicle data using MQTT messaging</a>). For example, if you add \n          <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise \n          will include these attributes as User Properties with the MQTT message.</p>"}))
    UpdateStateTemplateRequest.type = Types::UpdateStateTemplateRequest
    UpdateStateTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the state template.</p>"}))
    UpdateStateTemplateResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the state template.</p>"}))
    UpdateStateTemplateResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUniqueId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the state template.</p>"}))
    UpdateStateTemplateResponse.type = Types::UpdateStateTemplateResponse
    UpdateVehicleError.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The ID of the vehicle with the error.</p>"}))
    UpdateVehicleError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Number, location_name: 'code', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The relevant HTTP error code (400+).</p>"}))
    UpdateVehicleError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message associated with the error.</p>"}))
    UpdateVehicleError.type = Types::UpdateVehicleError
    UpdateVehicleInput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The unique ID of the vehicle to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVehicleInput.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p>The ARN of a vehicle model (model manifest) associated with the vehicle.</p>"}))
    UpdateVehicleInput.add_member(:decoder_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'decoderManifestArn', traits: {"smithy.api#documentation" => "<p>The ARN of the decoder manifest associated with this vehicle.</p>"}))
    UpdateVehicleInput.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Static information about a vehicle in a key-value pair. For example:</p>\n         <p>\n            <code>\"engineType\"</code> : <code>\"1.3 L R2\"</code>\n         </p>"}))
    UpdateVehicleInput.add_member(:attribute_update_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMode, location_name: 'attributeUpdateMode', traits: {"smithy.api#documentation" => "<p>The method the specified attributes will update the existing attributes on the\n            vehicle. Use<code>Overwite</code> to replace the vehicle attributes with the specified\n            attributes. Or use <code>Merge</code> to combine all attributes.</p>\n         <p>This is required if attributes are present in the input.</p>"}))
    UpdateVehicleInput.add_member(:state_templates_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociations, location_name: 'stateTemplatesToAdd', traits: {"smithy.api#documentation" => "<p>Associate state templates with the vehicle.</p>"}))
    UpdateVehicleInput.add_member(:state_templates_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociationIdentifiers, location_name: 'stateTemplatesToRemove', traits: {"smithy.api#documentation" => "<p>Remove state templates from the vehicle.</p>"}))
    UpdateVehicleInput.add_member(:state_templates_to_update, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociations, location_name: 'stateTemplatesToUpdate', traits: {"smithy.api#documentation" => "<p>Change the <code>stateTemplateUpdateStrategy</code> of state templates already associated with the vehicle.</p>"}))
    UpdateVehicleInput.type = Types::UpdateVehicleInput
    UpdateVehicleOutput.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The ID of the updated vehicle.</p>"}))
    UpdateVehicleOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the updated vehicle.</p>"}))
    UpdateVehicleOutput.type = Types::UpdateVehicleOutput
    UpdateVehicleRequestItem.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The unique ID of the vehicle to update.</p>", "smithy.api#required" => {}}))
    UpdateVehicleRequestItem.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p>The ARN of the vehicle model (model manifest) associated with the vehicle to\n            update.</p>"}))
    UpdateVehicleRequestItem.add_member(:decoder_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'decoderManifestArn', traits: {"smithy.api#documentation" => "<p>The ARN of the signal decoder manifest associated with the vehicle to update.</p>"}))
    UpdateVehicleRequestItem.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Static information about a vehicle in a key-value pair. For example:</p>\n         <p>\n            <code>\"engineType\"</code> : <code>\"1.3 L R2\"</code>\n         </p>"}))
    UpdateVehicleRequestItem.add_member(:attribute_update_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMode, location_name: 'attributeUpdateMode', traits: {"smithy.api#documentation" => "<p>The method the specified attributes will update the existing attributes on the\n            vehicle. Use<code>Overwite</code> to replace the vehicle attributes with the specified\n            attributes. Or use <code>Merge</code> to combine all attributes.</p>\n         <p>This is required if attributes are present in the input.</p>"}))
    UpdateVehicleRequestItem.add_member(:state_templates_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociations, location_name: 'stateTemplatesToAdd', traits: {"smithy.api#documentation" => "<p>Associate additional state templates to track the state of the vehicle. State templates determine which signal updates the vehicle sends to the cloud.</p>"}))
    UpdateVehicleRequestItem.add_member(:state_templates_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociationIdentifiers, location_name: 'stateTemplatesToRemove', traits: {"smithy.api#documentation" => "<p>Remove existing state template associations from the vehicle.</p>"}))
    UpdateVehicleRequestItem.add_member(:state_templates_to_update, Smithy::Schema::Shapes::ShapeRef.new(shape: StateTemplateAssociations, location_name: 'stateTemplatesToUpdate', traits: {"smithy.api#documentation" => "<p>Change the <code>stateTemplateUpdateStrategy</code> of state templates already associated with the vehicle.</p>"}))
    UpdateVehicleRequestItem.type = Types::UpdateVehicleRequestItem
    UpdateVehicleResponseItem.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The unique ID of the updated vehicle.</p>"}))
    UpdateVehicleResponseItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the updated vehicle.</p>"}))
    UpdateVehicleResponseItem.type = Types::UpdateVehicleResponseItem
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason the input failed to satisfy the constraints specified by an Amazon Web Services\n            service.</p>"}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>The list of fields that fail to satisfy the constraints specified by an Amazon Web Services\n            service.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the parameter field with the validation error.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the validation error.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))
    VehicleAssociationBehavior.add_member(:create_iot_thing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IOT_THING', traits: {"smithy.api#enumValue" => "CreateIotThing"}))
    VehicleAssociationBehavior.add_member(:validate_iot_thing_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATE_IOT_THING_EXISTS', traits: {"smithy.api#enumValue" => "ValidateIotThingExists"}))
    VehicleMiddleware.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleMiddlewareName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the vehicle middleware. </p>", "smithy.api#required" => {}}))
    VehicleMiddleware.add_member(:protocol_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleMiddlewareProtocol, location_name: 'protocolName', traits: {"smithy.api#documentation" => "<p>The protocol name of the vehicle middleware. </p>", "smithy.api#required" => {}}))
    VehicleMiddleware.type = Types::VehicleMiddleware
    VehicleMiddlewareProtocol.add_member(:ros_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROS_2', traits: {"smithy.api#enumValue" => "ROS_2"}))
    VehicleState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    VehicleState.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    VehicleState.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    VehicleState.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    VehicleState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    VehicleState.add_member(:ready_for_checkin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY_FOR_CHECKIN', traits: {"smithy.api#enumValue" => "READY_FOR_CHECKIN"}))
    VehicleStatus.add_member(:campaign_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignName, location_name: 'campaignName', traits: {"smithy.api#documentation" => "<p>The name of a campaign.</p>"}))
    VehicleStatus.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The unique ID of the vehicle.</p>"}))
    VehicleStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleState, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a campaign, which can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATED</code> - The campaign exists but is not yet approved.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code> - The campaign is approved but has not been deployed to the vehicle. Data has not arrived at the vehicle yet.</p>\n            </li>\n            <li>\n               <p>\n                  <code>HEALTHY</code> - The campaign is deployed to the vehicle.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPENDED</code> - The campaign is suspended and data collection is paused.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code> - The campaign is being removed from the vehicle.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY_FOR_CHECKIN</code> - The campaign is approved and waiting for vehicle check-in before deployment.</p>\n            </li>\n         </ul>"}))
    VehicleStatus.type = Types::VehicleStatus
    VehicleStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleStatus)
    VehicleSummary.add_member(:vehicle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName, location_name: 'vehicleName', traits: {"smithy.api#documentation" => "<p>The unique ID of the vehicle.</p>", "smithy.api#required" => {}}))
    VehicleSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vehicle.</p>", "smithy.api#required" => {}}))
    VehicleSummary.add_member(:model_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'modelManifestArn', traits: {"smithy.api#documentation" => "<p>The ARN of a vehicle model (model manifest) associated with the vehicle.</p>", "smithy.api#required" => {}}))
    VehicleSummary.add_member(:decoder_manifest_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'decoderManifestArn', traits: {"smithy.api#documentation" => "<p>The ARN of a decoder manifest associated with the vehicle.</p>", "smithy.api#required" => {}}))
    VehicleSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the vehicle was created in seconds since epoch (January 1, 1970 at midnight UTC time).</p>", "smithy.api#required" => {}}))
    VehicleSummary.add_member(:last_modification_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModificationTime', traits: {"smithy.api#documentation" => "<p>The time the vehicle was last updated in seconds since epoch (January 1, 1970 at midnight UTC time). </p>", "smithy.api#required" => {}}))
    VehicleSummary.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Static information about a vehicle in a key-value pair. For example:</p>\n         <p>\n            <code>\"engineType\"</code> : <code>\"1.3 L R2\"</code>\n         </p>"}))
    VehicleSummary.type = Types::VehicleSummary
    AttributeNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    AttributeValuesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    AttributesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    AttributesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    CampaignSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignSummary)
    CreateVehicleErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVehicleError)
    CreateVehicleRequestItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVehicleRequestItem)
    CreateVehicleResponses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVehicleResponseItem)
    DecoderManifestSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DecoderManifestSummary)
    FleetSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetSummary)
    Fleets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetId)
    ListOfStrings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ModelManifestSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ModelManifestSummary)
    SignalCatalogSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SignalCatalogSummary)
    UpdateVehicleErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVehicleError)
    UpdateVehicleRequestItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVehicleRequestItem)
    UpdateVehicleResponseItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVehicleResponseItem)
    VehicleSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleSummary)
    Vehicles.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VehicleName)

    IoTAutobahnControlPlane = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotfleetwise#IoTAutobahnControlPlane"
      service.name = "IoTAutobahnControlPlane"
      service.version = "2021-06-17"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTFleetWise", "arnNamespace" => "iotfleetwise"}, "aws.auth#sigv4" => {"name" => "iotfleetwise"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS IoT FleetWise"}
      service.add_operation(:associate_vehicle_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#AssociateVehicleFleet"
        operation.name = "AssociateVehicleFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVehicleFleetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateVehicleFleetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/vehicles/{vehicleName}/associate", "code" => 204}}
      end)
      service.add_operation(:batch_create_vehicle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#BatchCreateVehicle"
        operation.name = "BatchCreateVehicle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateVehicleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateVehicleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/vehicles", "code" => 200}}
      end)
      service.add_operation(:batch_update_vehicle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#BatchUpdateVehicle"
        operation.name = "BatchUpdateVehicle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateVehicleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateVehicleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/vehicles", "code" => 200}}
      end)
      service.add_operation(:create_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#CreateCampaign"
        operation.name = "CreateCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCampaignOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/campaigns/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_decoder_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#CreateDecoderManifest"
        operation.name = "CreateDecoderManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDecoderManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDecoderManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DecoderManifestValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/decoder-manifests/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/fleets/{fleetId}", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_model_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#CreateModelManifest"
        operation.name = "CreateModelManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/model-manifests/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_signal_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#CreateSignalCatalog"
        operation.name = "CreateSignalCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSignalCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSignalCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNodeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/signal-catalogs/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_state_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#CreateStateTemplate"
        operation.name = "CreateStateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStateTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/state-templates/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_vehicle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#CreateVehicle"
        operation.name = "CreateVehicle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVehicleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVehicleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/vehicles/{vehicleName}", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#DeleteCampaign"
        operation.name = "DeleteCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCampaignOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/campaigns/{name}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_decoder_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#DeleteDecoderManifest"
        operation.name = "DeleteDecoderManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDecoderManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDecoderManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/decoder-manifests/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/fleets/{fleetId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_model_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#DeleteModelManifest"
        operation.name = "DeleteModelManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/model-manifests/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_signal_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#DeleteSignalCatalog"
        operation.name = "DeleteSignalCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSignalCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSignalCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/signal-catalogs/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_state_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#DeleteStateTemplate"
        operation.name = "DeleteStateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStateTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/state-templates/{identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vehicle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#DeleteVehicle"
        operation.name = "DeleteVehicle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVehicleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVehicleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/vehicles/{vehicleName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_vehicle_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#DisassociateVehicleFleet"
        operation.name = "DisassociateVehicleFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateVehicleFleetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateVehicleFleetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/vehicles/{vehicleName}/disassociate", "code" => 204}}
      end)
      service.add_operation(:get_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetCampaign"
        operation.name = "GetCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCampaignOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/campaigns/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_decoder_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetDecoderManifest"
        operation.name = "GetDecoderManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDecoderManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDecoderManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/decoder-manifests/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_encryption_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetEncryptionConfiguration"
        operation.name = "GetEncryptionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncryptionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEncryptionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/encryptionConfiguration", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetFleet"
        operation.name = "GetFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFleetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFleetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/fleets/{fleetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_logging_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetLoggingOptions"
        operation.name = "GetLoggingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggingOptionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLoggingOptionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/loggingOptions", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_model_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetModelManifest"
        operation.name = "GetModelManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/model-manifests/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_register_account_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetRegisterAccountStatus"
        operation.name = "GetRegisterAccountStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegisterAccountStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRegisterAccountStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/account/registration_status", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_signal_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetSignalCatalog"
        operation.name = "GetSignalCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSignalCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSignalCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signal-catalogs/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_state_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetStateTemplate"
        operation.name = "GetStateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStateTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/state-templates/{identifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vehicle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetVehicle"
        operation.name = "GetVehicle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVehicleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVehicleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vehicles/{vehicleName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vehicle_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#GetVehicleStatus"
        operation.name = "GetVehicleStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVehicleStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVehicleStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vehicles/{vehicleName}/status", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetVehicleStatus.new
      end)
      service.add_operation(:import_decoder_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ImportDecoderManifest"
        operation.name = "ImportDecoderManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDecoderManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDecoderManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DecoderManifestValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/decoder-manifests/{name}", "code" => 200}}
      end)
      service.add_operation(:import_signal_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ImportSignalCatalog"
        operation.name = "ImportSignalCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSignalCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSignalCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/signal-catalogs/{name}/nodes", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_campaigns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListCampaigns"
        operation.name = "ListCampaigns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCampaignsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCampaignsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/campaigns", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCampaigns.new
      end)
      service.add_operation(:list_decoder_manifest_network_interfaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListDecoderManifestNetworkInterfaces"
        operation.name = "ListDecoderManifestNetworkInterfaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDecoderManifestNetworkInterfacesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDecoderManifestNetworkInterfacesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/decoder-manifests/{name}/network-interfaces", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDecoderManifestNetworkInterfaces.new
      end)
      service.add_operation(:list_decoder_manifest_signals, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListDecoderManifestSignals"
        operation.name = "ListDecoderManifestSignals"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDecoderManifestSignalsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDecoderManifestSignalsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/decoder-manifests/{name}/signals", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDecoderManifestSignals.new
      end)
      service.add_operation(:list_decoder_manifests, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListDecoderManifests"
        operation.name = "ListDecoderManifests"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDecoderManifestsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDecoderManifestsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/decoder-manifests", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDecoderManifests.new
      end)
      service.add_operation(:list_fleets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListFleets"
        operation.name = "ListFleets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/fleets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFleets.new
      end)
      service.add_operation(:list_fleets_for_vehicle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListFleetsForVehicle"
        operation.name = "ListFleetsForVehicle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsForVehicleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsForVehicleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vehicles/{vehicleName}/fleets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFleetsForVehicle.new
      end)
      service.add_operation(:list_model_manifest_nodes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListModelManifestNodes"
        operation.name = "ListModelManifestNodes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelManifestNodesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelManifestNodesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/model-manifests/{name}/nodes", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListModelManifestNodes.new
      end)
      service.add_operation(:list_model_manifests, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListModelManifests"
        operation.name = "ListModelManifests"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelManifestsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelManifestsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/model-manifests", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListModelManifests.new
      end)
      service.add_operation(:list_signal_catalog_nodes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListSignalCatalogNodes"
        operation.name = "ListSignalCatalogNodes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSignalCatalogNodesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSignalCatalogNodesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signal-catalogs/{name}/nodes", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSignalCatalogNodes.new
      end)
      service.add_operation(:list_signal_catalogs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListSignalCatalogs"
        operation.name = "ListSignalCatalogs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSignalCatalogsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSignalCatalogsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/signal-catalogs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSignalCatalogs.new
      end)
      service.add_operation(:list_state_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListStateTemplates"
        operation.name = "ListStateTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/state-templates", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStateTemplates.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_vehicles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListVehicles"
        operation.name = "ListVehicles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVehiclesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVehiclesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/vehicles", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVehicles.new
      end)
      service.add_operation(:list_vehicles_in_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#ListVehiclesInFleet"
        operation.name = "ListVehiclesInFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVehiclesInFleetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVehiclesInFleetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/fleets/{fleetId}/vehicles", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVehiclesInFleet.new
      end)
      service.add_operation(:put_encryption_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#PutEncryptionConfiguration"
        operation.name = "PutEncryptionConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEncryptionConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEncryptionConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/encryptionConfiguration", "code" => 200}}
      end)
      service.add_operation(:put_logging_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#PutLoggingOptions"
        operation.name = "PutLoggingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingOptionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLoggingOptionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/loggingOptions", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:register_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#RegisterAccount"
        operation.name = "RegisterAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAccountInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterAccountOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/account/registration", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#UpdateCampaign"
        operation.name = "UpdateCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCampaignOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/campaigns/{name}", "code" => 200}}
      end)
      service.add_operation(:update_decoder_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#UpdateDecoderManifest"
        operation.name = "UpdateDecoderManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDecoderManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDecoderManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DecoderManifestValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/decoder-manifests/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#UpdateFleet"
        operation.name = "UpdateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFleetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFleetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/fleets/{fleetId}", "code" => 204}}
      end)
      service.add_operation(:update_model_manifest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#UpdateModelManifest"
        operation.name = "UpdateModelManifest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelManifestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateModelManifestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/model-manifests/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_signal_catalog, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#UpdateSignalCatalog"
        operation.name = "UpdateSignalCatalog"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSignalCatalogInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSignalCatalogOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNodeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/signal-catalogs/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_state_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#UpdateStateTemplate"
        operation.name = "UpdateStateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStateTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSignalsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/state-templates/{identifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_vehicle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleetwise#UpdateVehicle"
        operation.name = "UpdateVehicle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVehicleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVehicleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/vehicles/{vehicleName}", "code" => 204}}
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
