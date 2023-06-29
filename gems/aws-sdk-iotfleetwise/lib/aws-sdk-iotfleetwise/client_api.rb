# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTFleetWise
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Actuator = Shapes::StructureShape.new(name: 'Actuator')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AssociateVehicleFleetRequest = Shapes::StructureShape.new(name: 'AssociateVehicleFleetRequest')
    AssociateVehicleFleetResponse = Shapes::StructureShape.new(name: 'AssociateVehicleFleetResponse')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    BatchCreateVehicleRequest = Shapes::StructureShape.new(name: 'BatchCreateVehicleRequest')
    BatchCreateVehicleResponse = Shapes::StructureShape.new(name: 'BatchCreateVehicleResponse')
    BatchUpdateVehicleRequest = Shapes::StructureShape.new(name: 'BatchUpdateVehicleRequest')
    BatchUpdateVehicleResponse = Shapes::StructureShape.new(name: 'BatchUpdateVehicleResponse')
    Branch = Shapes::StructureShape.new(name: 'Branch')
    CampaignStatus = Shapes::StringShape.new(name: 'CampaignStatus')
    CampaignSummary = Shapes::StructureShape.new(name: 'CampaignSummary')
    CanDbcDefinition = Shapes::StructureShape.new(name: 'CanDbcDefinition')
    CanInterface = Shapes::StructureShape.new(name: 'CanInterface')
    CanInterfaceName = Shapes::StringShape.new(name: 'CanInterfaceName')
    CanSignal = Shapes::StructureShape.new(name: 'CanSignal')
    CanSignalName = Shapes::StringShape.new(name: 'CanSignalName')
    CloudWatchLogDeliveryOptions = Shapes::StructureShape.new(name: 'CloudWatchLogDeliveryOptions')
    CloudWatchLogGroupName = Shapes::StringShape.new(name: 'CloudWatchLogGroupName')
    CollectionScheme = Shapes::UnionShape.new(name: 'CollectionScheme')
    Compression = Shapes::StringShape.new(name: 'Compression')
    ConditionBasedCollectionScheme = Shapes::StructureShape.new(name: 'ConditionBasedCollectionScheme')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCampaignRequest = Shapes::StructureShape.new(name: 'CreateCampaignRequest')
    CreateCampaignResponse = Shapes::StructureShape.new(name: 'CreateCampaignResponse')
    CreateDecoderManifestRequest = Shapes::StructureShape.new(name: 'CreateDecoderManifestRequest')
    CreateDecoderManifestResponse = Shapes::StructureShape.new(name: 'CreateDecoderManifestResponse')
    CreateFleetRequest = Shapes::StructureShape.new(name: 'CreateFleetRequest')
    CreateFleetResponse = Shapes::StructureShape.new(name: 'CreateFleetResponse')
    CreateModelManifestRequest = Shapes::StructureShape.new(name: 'CreateModelManifestRequest')
    CreateModelManifestResponse = Shapes::StructureShape.new(name: 'CreateModelManifestResponse')
    CreateSignalCatalogRequest = Shapes::StructureShape.new(name: 'CreateSignalCatalogRequest')
    CreateSignalCatalogResponse = Shapes::StructureShape.new(name: 'CreateSignalCatalogResponse')
    CreateVehicleError = Shapes::StructureShape.new(name: 'CreateVehicleError')
    CreateVehicleRequest = Shapes::StructureShape.new(name: 'CreateVehicleRequest')
    CreateVehicleRequestItem = Shapes::StructureShape.new(name: 'CreateVehicleRequestItem')
    CreateVehicleResponse = Shapes::StructureShape.new(name: 'CreateVehicleResponse')
    CreateVehicleResponseItem = Shapes::StructureShape.new(name: 'CreateVehicleResponseItem')
    DataDestinationConfig = Shapes::UnionShape.new(name: 'DataDestinationConfig')
    DataDestinationConfigs = Shapes::ListShape.new(name: 'DataDestinationConfigs')
    DataExtraDimensionNodePathList = Shapes::ListShape.new(name: 'DataExtraDimensionNodePathList')
    DataFormat = Shapes::StringShape.new(name: 'DataFormat')
    DecoderManifestSummary = Shapes::StructureShape.new(name: 'DecoderManifestSummary')
    DecoderManifestValidationException = Shapes::StructureShape.new(name: 'DecoderManifestValidationException')
    DeleteCampaignRequest = Shapes::StructureShape.new(name: 'DeleteCampaignRequest')
    DeleteCampaignResponse = Shapes::StructureShape.new(name: 'DeleteCampaignResponse')
    DeleteDecoderManifestRequest = Shapes::StructureShape.new(name: 'DeleteDecoderManifestRequest')
    DeleteDecoderManifestResponse = Shapes::StructureShape.new(name: 'DeleteDecoderManifestResponse')
    DeleteFleetRequest = Shapes::StructureShape.new(name: 'DeleteFleetRequest')
    DeleteFleetResponse = Shapes::StructureShape.new(name: 'DeleteFleetResponse')
    DeleteModelManifestRequest = Shapes::StructureShape.new(name: 'DeleteModelManifestRequest')
    DeleteModelManifestResponse = Shapes::StructureShape.new(name: 'DeleteModelManifestResponse')
    DeleteSignalCatalogRequest = Shapes::StructureShape.new(name: 'DeleteSignalCatalogRequest')
    DeleteSignalCatalogResponse = Shapes::StructureShape.new(name: 'DeleteSignalCatalogResponse')
    DeleteVehicleRequest = Shapes::StructureShape.new(name: 'DeleteVehicleRequest')
    DeleteVehicleResponse = Shapes::StructureShape.new(name: 'DeleteVehicleResponse')
    DiagnosticsMode = Shapes::StringShape.new(name: 'DiagnosticsMode')
    DisassociateVehicleFleetRequest = Shapes::StructureShape.new(name: 'DisassociateVehicleFleetRequest')
    DisassociateVehicleFleetResponse = Shapes::StructureShape.new(name: 'DisassociateVehicleFleetResponse')
    FleetSummary = Shapes::StructureShape.new(name: 'FleetSummary')
    FormattedVss = Shapes::UnionShape.new(name: 'FormattedVss')
    Fqns = Shapes::ListShape.new(name: 'Fqns')
    FullyQualifiedName = Shapes::StringShape.new(name: 'FullyQualifiedName')
    GetCampaignRequest = Shapes::StructureShape.new(name: 'GetCampaignRequest')
    GetCampaignResponse = Shapes::StructureShape.new(name: 'GetCampaignResponse')
    GetDecoderManifestRequest = Shapes::StructureShape.new(name: 'GetDecoderManifestRequest')
    GetDecoderManifestResponse = Shapes::StructureShape.new(name: 'GetDecoderManifestResponse')
    GetFleetRequest = Shapes::StructureShape.new(name: 'GetFleetRequest')
    GetFleetResponse = Shapes::StructureShape.new(name: 'GetFleetResponse')
    GetLoggingOptionsRequest = Shapes::StructureShape.new(name: 'GetLoggingOptionsRequest')
    GetLoggingOptionsResponse = Shapes::StructureShape.new(name: 'GetLoggingOptionsResponse')
    GetModelManifestRequest = Shapes::StructureShape.new(name: 'GetModelManifestRequest')
    GetModelManifestResponse = Shapes::StructureShape.new(name: 'GetModelManifestResponse')
    GetRegisterAccountStatusRequest = Shapes::StructureShape.new(name: 'GetRegisterAccountStatusRequest')
    GetRegisterAccountStatusResponse = Shapes::StructureShape.new(name: 'GetRegisterAccountStatusResponse')
    GetSignalCatalogRequest = Shapes::StructureShape.new(name: 'GetSignalCatalogRequest')
    GetSignalCatalogResponse = Shapes::StructureShape.new(name: 'GetSignalCatalogResponse')
    GetVehicleRequest = Shapes::StructureShape.new(name: 'GetVehicleRequest')
    GetVehicleResponse = Shapes::StructureShape.new(name: 'GetVehicleResponse')
    GetVehicleStatusRequest = Shapes::StructureShape.new(name: 'GetVehicleStatusRequest')
    GetVehicleStatusResponse = Shapes::StructureShape.new(name: 'GetVehicleStatusResponse')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    IamRegistrationResponse = Shapes::StructureShape.new(name: 'IamRegistrationResponse')
    IamResources = Shapes::StructureShape.new(name: 'IamResources')
    ImportDecoderManifestRequest = Shapes::StructureShape.new(name: 'ImportDecoderManifestRequest')
    ImportDecoderManifestResponse = Shapes::StructureShape.new(name: 'ImportDecoderManifestResponse')
    ImportSignalCatalogRequest = Shapes::StructureShape.new(name: 'ImportSignalCatalogRequest')
    ImportSignalCatalogResponse = Shapes::StructureShape.new(name: 'ImportSignalCatalogResponse')
    InterfaceId = Shapes::StringShape.new(name: 'InterfaceId')
    InterfaceIds = Shapes::ListShape.new(name: 'InterfaceIds')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidNetworkInterface = Shapes::StructureShape.new(name: 'InvalidNetworkInterface')
    InvalidNetworkInterfaces = Shapes::ListShape.new(name: 'InvalidNetworkInterfaces')
    InvalidNodeException = Shapes::StructureShape.new(name: 'InvalidNodeException')
    InvalidSignal = Shapes::StructureShape.new(name: 'InvalidSignal')
    InvalidSignalDecoder = Shapes::StructureShape.new(name: 'InvalidSignalDecoder')
    InvalidSignalDecoders = Shapes::ListShape.new(name: 'InvalidSignalDecoders')
    InvalidSignals = Shapes::ListShape.new(name: 'InvalidSignals')
    InvalidSignalsException = Shapes::StructureShape.new(name: 'InvalidSignalsException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCampaignsRequest = Shapes::StructureShape.new(name: 'ListCampaignsRequest')
    ListCampaignsResponse = Shapes::StructureShape.new(name: 'ListCampaignsResponse')
    ListDecoderManifestNetworkInterfacesRequest = Shapes::StructureShape.new(name: 'ListDecoderManifestNetworkInterfacesRequest')
    ListDecoderManifestNetworkInterfacesResponse = Shapes::StructureShape.new(name: 'ListDecoderManifestNetworkInterfacesResponse')
    ListDecoderManifestSignalsRequest = Shapes::StructureShape.new(name: 'ListDecoderManifestSignalsRequest')
    ListDecoderManifestSignalsResponse = Shapes::StructureShape.new(name: 'ListDecoderManifestSignalsResponse')
    ListDecoderManifestsRequest = Shapes::StructureShape.new(name: 'ListDecoderManifestsRequest')
    ListDecoderManifestsResponse = Shapes::StructureShape.new(name: 'ListDecoderManifestsResponse')
    ListFleetsForVehicleRequest = Shapes::StructureShape.new(name: 'ListFleetsForVehicleRequest')
    ListFleetsForVehicleResponse = Shapes::StructureShape.new(name: 'ListFleetsForVehicleResponse')
    ListFleetsRequest = Shapes::StructureShape.new(name: 'ListFleetsRequest')
    ListFleetsResponse = Shapes::StructureShape.new(name: 'ListFleetsResponse')
    ListModelManifestNodesRequest = Shapes::StructureShape.new(name: 'ListModelManifestNodesRequest')
    ListModelManifestNodesResponse = Shapes::StructureShape.new(name: 'ListModelManifestNodesResponse')
    ListModelManifestsRequest = Shapes::StructureShape.new(name: 'ListModelManifestsRequest')
    ListModelManifestsResponse = Shapes::StructureShape.new(name: 'ListModelManifestsResponse')
    ListSignalCatalogNodesRequest = Shapes::StructureShape.new(name: 'ListSignalCatalogNodesRequest')
    ListSignalCatalogNodesResponse = Shapes::StructureShape.new(name: 'ListSignalCatalogNodesResponse')
    ListSignalCatalogsRequest = Shapes::StructureShape.new(name: 'ListSignalCatalogsRequest')
    ListSignalCatalogsResponse = Shapes::StructureShape.new(name: 'ListSignalCatalogsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVehiclesInFleetRequest = Shapes::StructureShape.new(name: 'ListVehiclesInFleetRequest')
    ListVehiclesInFleetResponse = Shapes::StructureShape.new(name: 'ListVehiclesInFleetResponse')
    ListVehiclesRequest = Shapes::StructureShape.new(name: 'ListVehiclesRequest')
    ListVehiclesResponse = Shapes::StructureShape.new(name: 'ListVehiclesResponse')
    LogType = Shapes::StringShape.new(name: 'LogType')
    ManifestStatus = Shapes::StringShape.new(name: 'ManifestStatus')
    ModelManifestSummary = Shapes::StructureShape.new(name: 'ModelManifestSummary')
    ModelSignalsMap = Shapes::MapShape.new(name: 'ModelSignalsMap')
    NetworkFileBlob = Shapes::BlobShape.new(name: 'NetworkFileBlob')
    NetworkFileDefinition = Shapes::UnionShape.new(name: 'NetworkFileDefinition')
    NetworkFileDefinitions = Shapes::ListShape.new(name: 'NetworkFileDefinitions')
    NetworkFilesList = Shapes::ListShape.new(name: 'NetworkFilesList')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceFailureReason = Shapes::StringShape.new(name: 'NetworkInterfaceFailureReason')
    NetworkInterfaceType = Shapes::StringShape.new(name: 'NetworkInterfaceType')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    Node = Shapes::UnionShape.new(name: 'Node')
    NodeCounts = Shapes::StructureShape.new(name: 'NodeCounts')
    NodeDataType = Shapes::StringShape.new(name: 'NodeDataType')
    NodePath = Shapes::StringShape.new(name: 'NodePath')
    NodePaths = Shapes::ListShape.new(name: 'NodePaths')
    Nodes = Shapes::ListShape.new(name: 'Nodes')
    ObdBitmaskLength = Shapes::IntegerShape.new(name: 'ObdBitmaskLength')
    ObdByteLength = Shapes::IntegerShape.new(name: 'ObdByteLength')
    ObdInterface = Shapes::StructureShape.new(name: 'ObdInterface')
    ObdInterfaceName = Shapes::StringShape.new(name: 'ObdInterfaceName')
    ObdSignal = Shapes::StructureShape.new(name: 'ObdSignal')
    ObdStandard = Shapes::StringShape.new(name: 'ObdStandard')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    ProtocolName = Shapes::StringShape.new(name: 'ProtocolName')
    ProtocolVersion = Shapes::StringShape.new(name: 'ProtocolVersion')
    PutLoggingOptionsRequest = Shapes::StructureShape.new(name: 'PutLoggingOptionsRequest')
    PutLoggingOptionsResponse = Shapes::StructureShape.new(name: 'PutLoggingOptionsResponse')
    RegisterAccountRequest = Shapes::StructureShape.new(name: 'RegisterAccountRequest')
    RegisterAccountResponse = Shapes::StructureShape.new(name: 'RegisterAccountResponse')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    Sensor = Shapes::StructureShape.new(name: 'Sensor')
    SignalCatalogSummary = Shapes::StructureShape.new(name: 'SignalCatalogSummary')
    SignalDecoder = Shapes::StructureShape.new(name: 'SignalDecoder')
    SignalDecoderFailureReason = Shapes::StringShape.new(name: 'SignalDecoderFailureReason')
    SignalDecoderType = Shapes::StringShape.new(name: 'SignalDecoderType')
    SignalDecoders = Shapes::ListShape.new(name: 'SignalDecoders')
    SignalInformation = Shapes::StructureShape.new(name: 'SignalInformation')
    SignalInformationList = Shapes::ListShape.new(name: 'SignalInformationList')
    SpoolingMode = Shapes::StringShape.new(name: 'SpoolingMode')
    StorageCompressionFormat = Shapes::StringShape.new(name: 'StorageCompressionFormat')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeBasedCollectionScheme = Shapes::StructureShape.new(name: 'TimeBasedCollectionScheme')
    TimestreamConfig = Shapes::StructureShape.new(name: 'TimestreamConfig')
    TimestreamDatabaseName = Shapes::StringShape.new(name: 'TimestreamDatabaseName')
    TimestreamRegistrationResponse = Shapes::StructureShape.new(name: 'TimestreamRegistrationResponse')
    TimestreamResources = Shapes::StructureShape.new(name: 'TimestreamResources')
    TimestreamTableArn = Shapes::StringShape.new(name: 'TimestreamTableArn')
    TimestreamTableName = Shapes::StringShape.new(name: 'TimestreamTableName')
    TriggerMode = Shapes::StringShape.new(name: 'TriggerMode')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCampaignAction = Shapes::StringShape.new(name: 'UpdateCampaignAction')
    UpdateCampaignRequest = Shapes::StructureShape.new(name: 'UpdateCampaignRequest')
    UpdateCampaignResponse = Shapes::StructureShape.new(name: 'UpdateCampaignResponse')
    UpdateDecoderManifestRequest = Shapes::StructureShape.new(name: 'UpdateDecoderManifestRequest')
    UpdateDecoderManifestResponse = Shapes::StructureShape.new(name: 'UpdateDecoderManifestResponse')
    UpdateFleetRequest = Shapes::StructureShape.new(name: 'UpdateFleetRequest')
    UpdateFleetResponse = Shapes::StructureShape.new(name: 'UpdateFleetResponse')
    UpdateMode = Shapes::StringShape.new(name: 'UpdateMode')
    UpdateModelManifestRequest = Shapes::StructureShape.new(name: 'UpdateModelManifestRequest')
    UpdateModelManifestResponse = Shapes::StructureShape.new(name: 'UpdateModelManifestResponse')
    UpdateSignalCatalogRequest = Shapes::StructureShape.new(name: 'UpdateSignalCatalogRequest')
    UpdateSignalCatalogResponse = Shapes::StructureShape.new(name: 'UpdateSignalCatalogResponse')
    UpdateVehicleError = Shapes::StructureShape.new(name: 'UpdateVehicleError')
    UpdateVehicleRequest = Shapes::StructureShape.new(name: 'UpdateVehicleRequest')
    UpdateVehicleRequestItem = Shapes::StructureShape.new(name: 'UpdateVehicleRequestItem')
    UpdateVehicleResponse = Shapes::StructureShape.new(name: 'UpdateVehicleResponse')
    UpdateVehicleResponseItem = Shapes::StructureShape.new(name: 'UpdateVehicleResponseItem')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VehicleAssociationBehavior = Shapes::StringShape.new(name: 'VehicleAssociationBehavior')
    VehicleState = Shapes::StringShape.new(name: 'VehicleState')
    VehicleStatus = Shapes::StructureShape.new(name: 'VehicleStatus')
    VehicleStatusList = Shapes::ListShape.new(name: 'VehicleStatusList')
    VehicleSummary = Shapes::StructureShape.new(name: 'VehicleSummary')
    arn = Shapes::StringShape.new(name: 'arn')
    attributeName = Shapes::StringShape.new(name: 'attributeName')
    attributeValue = Shapes::StringShape.new(name: 'attributeValue')
    attributesMap = Shapes::MapShape.new(name: 'attributesMap')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    campaignName = Shapes::StringShape.new(name: 'campaignName')
    campaignSummaries = Shapes::ListShape.new(name: 'campaignSummaries')
    collectionPeriodMs = Shapes::IntegerShape.new(name: 'collectionPeriodMs')
    createVehicleErrors = Shapes::ListShape.new(name: 'createVehicleErrors')
    createVehicleRequestItems = Shapes::ListShape.new(name: 'createVehicleRequestItems')
    createVehicleResponses = Shapes::ListShape.new(name: 'createVehicleResponses')
    customerAccountId = Shapes::StringShape.new(name: 'customerAccountId')
    decoderManifestSummaries = Shapes::ListShape.new(name: 'decoderManifestSummaries')
    description = Shapes::StringShape.new(name: 'description')
    double = Shapes::FloatShape.new(name: 'double')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    eventExpression = Shapes::StringShape.new(name: 'eventExpression')
    fleetId = Shapes::StringShape.new(name: 'fleetId')
    fleetSummaries = Shapes::ListShape.new(name: 'fleetSummaries')
    fleets = Shapes::ListShape.new(name: 'fleets')
    languageVersion = Shapes::IntegerShape.new(name: 'languageVersion')
    listOfStrings = Shapes::ListShape.new(name: 'listOfStrings')
    listVehiclesMaxResults = Shapes::IntegerShape.new(name: 'listVehiclesMaxResults')
    maxResults = Shapes::IntegerShape.new(name: 'maxResults')
    maxSampleCount = Shapes::IntegerShape.new(name: 'maxSampleCount')
    message = Shapes::StringShape.new(name: 'message')
    modelManifestSummaries = Shapes::ListShape.new(name: 'modelManifestSummaries')
    nextToken = Shapes::StringShape.new(name: 'nextToken')
    nonNegativeInteger = Shapes::IntegerShape.new(name: 'nonNegativeInteger')
    number = Shapes::IntegerShape.new(name: 'number')
    positiveInteger = Shapes::IntegerShape.new(name: 'positiveInteger')
    priority = Shapes::IntegerShape.new(name: 'priority')
    resourceName = Shapes::StringShape.new(name: 'resourceName')
    signalCatalogSummaries = Shapes::ListShape.new(name: 'signalCatalogSummaries')
    status = Shapes::StringShape.new(name: 'status')
    string = Shapes::StringShape.new(name: 'string')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')
    uint32 = Shapes::IntegerShape.new(name: 'uint32')
    updateVehicleErrors = Shapes::ListShape.new(name: 'updateVehicleErrors')
    updateVehicleRequestItems = Shapes::ListShape.new(name: 'updateVehicleRequestItems')
    updateVehicleResponseItems = Shapes::ListShape.new(name: 'updateVehicleResponseItems')
    vehicleName = Shapes::StringShape.new(name: 'vehicleName')
    vehicleSummaries = Shapes::ListShape.new(name: 'vehicleSummaries')
    vehicles = Shapes::ListShape.new(name: 'vehicles')
    wildcardSignalName = Shapes::StringShape.new(name: 'wildcardSignalName')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Actuator.add_member(:fully_qualified_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "fullyQualifiedName"))
    Actuator.add_member(:data_type, Shapes::ShapeRef.new(shape: NodeDataType, required: true, location_name: "dataType"))
    Actuator.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Actuator.add_member(:unit, Shapes::ShapeRef.new(shape: string, location_name: "unit"))
    Actuator.add_member(:allowed_values, Shapes::ShapeRef.new(shape: listOfStrings, location_name: "allowedValues"))
    Actuator.add_member(:min, Shapes::ShapeRef.new(shape: double, location_name: "min"))
    Actuator.add_member(:max, Shapes::ShapeRef.new(shape: double, location_name: "max"))
    Actuator.add_member(:assigned_value, Shapes::ShapeRef.new(shape: string, deprecated: true, location_name: "assignedValue", metadata: {"deprecatedMessage"=>"assignedValue is no longer in use"}))
    Actuator.add_member(:deprecation_message, Shapes::ShapeRef.new(shape: message, location_name: "deprecationMessage"))
    Actuator.add_member(:comment, Shapes::ShapeRef.new(shape: message, location_name: "comment"))
    Actuator.struct_class = Types::Actuator

    AssociateVehicleFleetRequest.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    AssociateVehicleFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "fleetId"))
    AssociateVehicleFleetRequest.struct_class = Types::AssociateVehicleFleetRequest

    AssociateVehicleFleetResponse.struct_class = Types::AssociateVehicleFleetResponse

    Attribute.add_member(:fully_qualified_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "fullyQualifiedName"))
    Attribute.add_member(:data_type, Shapes::ShapeRef.new(shape: NodeDataType, required: true, location_name: "dataType"))
    Attribute.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Attribute.add_member(:unit, Shapes::ShapeRef.new(shape: string, location_name: "unit"))
    Attribute.add_member(:allowed_values, Shapes::ShapeRef.new(shape: listOfStrings, location_name: "allowedValues"))
    Attribute.add_member(:min, Shapes::ShapeRef.new(shape: double, location_name: "min"))
    Attribute.add_member(:max, Shapes::ShapeRef.new(shape: double, location_name: "max"))
    Attribute.add_member(:assigned_value, Shapes::ShapeRef.new(shape: string, deprecated: true, location_name: "assignedValue", metadata: {"deprecatedMessage"=>"assignedValue is no longer in use"}))
    Attribute.add_member(:default_value, Shapes::ShapeRef.new(shape: string, location_name: "defaultValue"))
    Attribute.add_member(:deprecation_message, Shapes::ShapeRef.new(shape: message, location_name: "deprecationMessage"))
    Attribute.add_member(:comment, Shapes::ShapeRef.new(shape: message, location_name: "comment"))
    Attribute.struct_class = Types::Attribute

    BatchCreateVehicleRequest.add_member(:vehicles, Shapes::ShapeRef.new(shape: createVehicleRequestItems, required: true, location_name: "vehicles"))
    BatchCreateVehicleRequest.struct_class = Types::BatchCreateVehicleRequest

    BatchCreateVehicleResponse.add_member(:vehicles, Shapes::ShapeRef.new(shape: createVehicleResponses, location_name: "vehicles"))
    BatchCreateVehicleResponse.add_member(:errors, Shapes::ShapeRef.new(shape: createVehicleErrors, location_name: "errors"))
    BatchCreateVehicleResponse.struct_class = Types::BatchCreateVehicleResponse

    BatchUpdateVehicleRequest.add_member(:vehicles, Shapes::ShapeRef.new(shape: updateVehicleRequestItems, required: true, location_name: "vehicles"))
    BatchUpdateVehicleRequest.struct_class = Types::BatchUpdateVehicleRequest

    BatchUpdateVehicleResponse.add_member(:vehicles, Shapes::ShapeRef.new(shape: updateVehicleResponseItems, location_name: "vehicles"))
    BatchUpdateVehicleResponse.add_member(:errors, Shapes::ShapeRef.new(shape: updateVehicleErrors, location_name: "errors"))
    BatchUpdateVehicleResponse.struct_class = Types::BatchUpdateVehicleResponse

    Branch.add_member(:fully_qualified_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "fullyQualifiedName"))
    Branch.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Branch.add_member(:deprecation_message, Shapes::ShapeRef.new(shape: message, location_name: "deprecationMessage"))
    Branch.add_member(:comment, Shapes::ShapeRef.new(shape: message, location_name: "comment"))
    Branch.struct_class = Types::Branch

    CampaignSummary.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    CampaignSummary.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, location_name: "name"))
    CampaignSummary.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CampaignSummary.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, location_name: "signalCatalogArn"))
    CampaignSummary.add_member(:target_arn, Shapes::ShapeRef.new(shape: arn, location_name: "targetArn"))
    CampaignSummary.add_member(:status, Shapes::ShapeRef.new(shape: CampaignStatus, location_name: "status"))
    CampaignSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    CampaignSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    CampaignSummary.struct_class = Types::CampaignSummary

    CanDbcDefinition.add_member(:network_interface, Shapes::ShapeRef.new(shape: InterfaceId, required: true, location_name: "networkInterface"))
    CanDbcDefinition.add_member(:can_dbc_files, Shapes::ShapeRef.new(shape: NetworkFilesList, required: true, location_name: "canDbcFiles"))
    CanDbcDefinition.add_member(:signals_map, Shapes::ShapeRef.new(shape: ModelSignalsMap, location_name: "signalsMap"))
    CanDbcDefinition.struct_class = Types::CanDbcDefinition

    CanInterface.add_member(:name, Shapes::ShapeRef.new(shape: CanInterfaceName, required: true, location_name: "name"))
    CanInterface.add_member(:protocol_name, Shapes::ShapeRef.new(shape: ProtocolName, location_name: "protocolName"))
    CanInterface.add_member(:protocol_version, Shapes::ShapeRef.new(shape: ProtocolVersion, location_name: "protocolVersion"))
    CanInterface.struct_class = Types::CanInterface

    CanSignal.add_member(:message_id, Shapes::ShapeRef.new(shape: nonNegativeInteger, required: true, location_name: "messageId"))
    CanSignal.add_member(:is_big_endian, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "isBigEndian"))
    CanSignal.add_member(:is_signed, Shapes::ShapeRef.new(shape: boolean, required: true, location_name: "isSigned"))
    CanSignal.add_member(:start_bit, Shapes::ShapeRef.new(shape: nonNegativeInteger, required: true, location_name: "startBit"))
    CanSignal.add_member(:offset, Shapes::ShapeRef.new(shape: double, required: true, location_name: "offset"))
    CanSignal.add_member(:factor, Shapes::ShapeRef.new(shape: double, required: true, location_name: "factor"))
    CanSignal.add_member(:length, Shapes::ShapeRef.new(shape: nonNegativeInteger, required: true, location_name: "length"))
    CanSignal.add_member(:name, Shapes::ShapeRef.new(shape: CanSignalName, location_name: "name"))
    CanSignal.struct_class = Types::CanSignal

    CloudWatchLogDeliveryOptions.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, required: true, location_name: "logType"))
    CloudWatchLogDeliveryOptions.add_member(:log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "logGroupName"))
    CloudWatchLogDeliveryOptions.struct_class = Types::CloudWatchLogDeliveryOptions

    CollectionScheme.add_member(:time_based_collection_scheme, Shapes::ShapeRef.new(shape: TimeBasedCollectionScheme, location_name: "timeBasedCollectionScheme"))
    CollectionScheme.add_member(:condition_based_collection_scheme, Shapes::ShapeRef.new(shape: ConditionBasedCollectionScheme, location_name: "conditionBasedCollectionScheme"))
    CollectionScheme.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CollectionScheme.add_member_subclass(:time_based_collection_scheme, Types::CollectionScheme::TimeBasedCollectionScheme)
    CollectionScheme.add_member_subclass(:condition_based_collection_scheme, Types::CollectionScheme::ConditionBasedCollectionScheme)
    CollectionScheme.add_member_subclass(:unknown, Types::CollectionScheme::Unknown)
    CollectionScheme.struct_class = Types::CollectionScheme

    ConditionBasedCollectionScheme.add_member(:expression, Shapes::ShapeRef.new(shape: eventExpression, required: true, location_name: "expression"))
    ConditionBasedCollectionScheme.add_member(:minimum_trigger_interval_ms, Shapes::ShapeRef.new(shape: uint32, location_name: "minimumTriggerIntervalMs"))
    ConditionBasedCollectionScheme.add_member(:trigger_mode, Shapes::ShapeRef.new(shape: TriggerMode, location_name: "triggerMode"))
    ConditionBasedCollectionScheme.add_member(:condition_language_version, Shapes::ShapeRef.new(shape: languageVersion, location_name: "conditionLanguageVersion"))
    ConditionBasedCollectionScheme.struct_class = Types::ConditionBasedCollectionScheme

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ConflictException.add_member(:resource, Shapes::ShapeRef.new(shape: string, required: true, location_name: "resource"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: string, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, required: true, location_name: "name"))
    CreateCampaignRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateCampaignRequest.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "signalCatalogArn"))
    CreateCampaignRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "targetArn"))
    CreateCampaignRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "startTime"))
    CreateCampaignRequest.add_member(:expiry_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "expiryTime"))
    CreateCampaignRequest.add_member(:post_trigger_collection_duration, Shapes::ShapeRef.new(shape: uint32, location_name: "postTriggerCollectionDuration"))
    CreateCampaignRequest.add_member(:diagnostics_mode, Shapes::ShapeRef.new(shape: DiagnosticsMode, location_name: "diagnosticsMode"))
    CreateCampaignRequest.add_member(:spooling_mode, Shapes::ShapeRef.new(shape: SpoolingMode, location_name: "spoolingMode"))
    CreateCampaignRequest.add_member(:compression, Shapes::ShapeRef.new(shape: Compression, location_name: "compression"))
    CreateCampaignRequest.add_member(:priority, Shapes::ShapeRef.new(shape: priority, location_name: "priority"))
    CreateCampaignRequest.add_member(:signals_to_collect, Shapes::ShapeRef.new(shape: SignalInformationList, location_name: "signalsToCollect"))
    CreateCampaignRequest.add_member(:collection_scheme, Shapes::ShapeRef.new(shape: CollectionScheme, required: true, location_name: "collectionScheme"))
    CreateCampaignRequest.add_member(:data_extra_dimensions, Shapes::ShapeRef.new(shape: DataExtraDimensionNodePathList, location_name: "dataExtraDimensions"))
    CreateCampaignRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateCampaignRequest.add_member(:data_destination_configs, Shapes::ShapeRef.new(shape: DataDestinationConfigs, location_name: "dataDestinationConfigs"))
    CreateCampaignRequest.struct_class = Types::CreateCampaignRequest

    CreateCampaignResponse.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, location_name: "name"))
    CreateCampaignResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    CreateCampaignResponse.struct_class = Types::CreateCampaignResponse

    CreateDecoderManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    CreateDecoderManifestRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateDecoderManifestRequest.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "modelManifestArn"))
    CreateDecoderManifestRequest.add_member(:signal_decoders, Shapes::ShapeRef.new(shape: SignalDecoders, location_name: "signalDecoders"))
    CreateDecoderManifestRequest.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    CreateDecoderManifestRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDecoderManifestRequest.struct_class = Types::CreateDecoderManifestRequest

    CreateDecoderManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    CreateDecoderManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    CreateDecoderManifestResponse.struct_class = Types::CreateDecoderManifestResponse

    CreateFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "fleetId"))
    CreateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateFleetRequest.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "signalCatalogArn"))
    CreateFleetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateFleetRequest.struct_class = Types::CreateFleetRequest

    CreateFleetResponse.add_member(:id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "id"))
    CreateFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    CreateFleetResponse.struct_class = Types::CreateFleetResponse

    CreateModelManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    CreateModelManifestRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateModelManifestRequest.add_member(:nodes, Shapes::ShapeRef.new(shape: listOfStrings, required: true, location_name: "nodes"))
    CreateModelManifestRequest.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "signalCatalogArn"))
    CreateModelManifestRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateModelManifestRequest.struct_class = Types::CreateModelManifestRequest

    CreateModelManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    CreateModelManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    CreateModelManifestResponse.struct_class = Types::CreateModelManifestResponse

    CreateSignalCatalogRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    CreateSignalCatalogRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    CreateSignalCatalogRequest.add_member(:nodes, Shapes::ShapeRef.new(shape: Nodes, location_name: "nodes"))
    CreateSignalCatalogRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateSignalCatalogRequest.struct_class = Types::CreateSignalCatalogRequest

    CreateSignalCatalogResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    CreateSignalCatalogResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    CreateSignalCatalogResponse.struct_class = Types::CreateSignalCatalogResponse

    CreateVehicleError.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, location_name: "vehicleName"))
    CreateVehicleError.add_member(:code, Shapes::ShapeRef.new(shape: string, location_name: "code"))
    CreateVehicleError.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    CreateVehicleError.struct_class = Types::CreateVehicleError

    CreateVehicleRequest.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    CreateVehicleRequest.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "modelManifestArn"))
    CreateVehicleRequest.add_member(:decoder_manifest_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "decoderManifestArn"))
    CreateVehicleRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: attributesMap, location_name: "attributes"))
    CreateVehicleRequest.add_member(:association_behavior, Shapes::ShapeRef.new(shape: VehicleAssociationBehavior, location_name: "associationBehavior"))
    CreateVehicleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateVehicleRequest.struct_class = Types::CreateVehicleRequest

    CreateVehicleRequestItem.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    CreateVehicleRequestItem.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "modelManifestArn"))
    CreateVehicleRequestItem.add_member(:decoder_manifest_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "decoderManifestArn"))
    CreateVehicleRequestItem.add_member(:attributes, Shapes::ShapeRef.new(shape: attributesMap, location_name: "attributes"))
    CreateVehicleRequestItem.add_member(:association_behavior, Shapes::ShapeRef.new(shape: VehicleAssociationBehavior, location_name: "associationBehavior"))
    CreateVehicleRequestItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateVehicleRequestItem.struct_class = Types::CreateVehicleRequestItem

    CreateVehicleResponse.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, location_name: "vehicleName"))
    CreateVehicleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    CreateVehicleResponse.add_member(:thing_arn, Shapes::ShapeRef.new(shape: arn, location_name: "thingArn"))
    CreateVehicleResponse.struct_class = Types::CreateVehicleResponse

    CreateVehicleResponseItem.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, location_name: "vehicleName"))
    CreateVehicleResponseItem.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    CreateVehicleResponseItem.add_member(:thing_arn, Shapes::ShapeRef.new(shape: arn, location_name: "thingArn"))
    CreateVehicleResponseItem.struct_class = Types::CreateVehicleResponseItem

    DataDestinationConfig.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "s3Config"))
    DataDestinationConfig.add_member(:timestream_config, Shapes::ShapeRef.new(shape: TimestreamConfig, location_name: "timestreamConfig"))
    DataDestinationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataDestinationConfig.add_member_subclass(:s3_config, Types::DataDestinationConfig::S3Config)
    DataDestinationConfig.add_member_subclass(:timestream_config, Types::DataDestinationConfig::TimestreamConfig)
    DataDestinationConfig.add_member_subclass(:unknown, Types::DataDestinationConfig::Unknown)
    DataDestinationConfig.struct_class = Types::DataDestinationConfig

    DataDestinationConfigs.member = Shapes::ShapeRef.new(shape: DataDestinationConfig)

    DataExtraDimensionNodePathList.member = Shapes::ShapeRef.new(shape: NodePath)

    DecoderManifestSummary.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    DecoderManifestSummary.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    DecoderManifestSummary.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "modelManifestArn"))
    DecoderManifestSummary.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    DecoderManifestSummary.add_member(:status, Shapes::ShapeRef.new(shape: ManifestStatus, location_name: "status"))
    DecoderManifestSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    DecoderManifestSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    DecoderManifestSummary.struct_class = Types::DecoderManifestSummary

    DecoderManifestValidationException.add_member(:invalid_signals, Shapes::ShapeRef.new(shape: InvalidSignalDecoders, location_name: "invalidSignals"))
    DecoderManifestValidationException.add_member(:invalid_network_interfaces, Shapes::ShapeRef.new(shape: InvalidNetworkInterfaces, location_name: "invalidNetworkInterfaces"))
    DecoderManifestValidationException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    DecoderManifestValidationException.struct_class = Types::DecoderManifestValidationException

    DeleteCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, required: true, location_name: "name"))
    DeleteCampaignRequest.struct_class = Types::DeleteCampaignRequest

    DeleteCampaignResponse.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, location_name: "name"))
    DeleteCampaignResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    DeleteCampaignResponse.struct_class = Types::DeleteCampaignResponse

    DeleteDecoderManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    DeleteDecoderManifestRequest.struct_class = Types::DeleteDecoderManifestRequest

    DeleteDecoderManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    DeleteDecoderManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    DeleteDecoderManifestResponse.struct_class = Types::DeleteDecoderManifestResponse

    DeleteFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "fleetId"))
    DeleteFleetRequest.struct_class = Types::DeleteFleetRequest

    DeleteFleetResponse.add_member(:id, Shapes::ShapeRef.new(shape: fleetId, location_name: "id"))
    DeleteFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    DeleteFleetResponse.struct_class = Types::DeleteFleetResponse

    DeleteModelManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    DeleteModelManifestRequest.struct_class = Types::DeleteModelManifestRequest

    DeleteModelManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    DeleteModelManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    DeleteModelManifestResponse.struct_class = Types::DeleteModelManifestResponse

    DeleteSignalCatalogRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    DeleteSignalCatalogRequest.struct_class = Types::DeleteSignalCatalogRequest

    DeleteSignalCatalogResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    DeleteSignalCatalogResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    DeleteSignalCatalogResponse.struct_class = Types::DeleteSignalCatalogResponse

    DeleteVehicleRequest.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    DeleteVehicleRequest.struct_class = Types::DeleteVehicleRequest

    DeleteVehicleResponse.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    DeleteVehicleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    DeleteVehicleResponse.struct_class = Types::DeleteVehicleResponse

    DisassociateVehicleFleetRequest.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    DisassociateVehicleFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "fleetId"))
    DisassociateVehicleFleetRequest.struct_class = Types::DisassociateVehicleFleetRequest

    DisassociateVehicleFleetResponse.struct_class = Types::DisassociateVehicleFleetResponse

    FleetSummary.add_member(:id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "id"))
    FleetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    FleetSummary.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    FleetSummary.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "signalCatalogArn"))
    FleetSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    FleetSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "lastModificationTime"))
    FleetSummary.struct_class = Types::FleetSummary

    FormattedVss.add_member(:vss_json, Shapes::ShapeRef.new(shape: String, location_name: "vssJson"))
    FormattedVss.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FormattedVss.add_member_subclass(:vss_json, Types::FormattedVss::VssJson)
    FormattedVss.add_member_subclass(:unknown, Types::FormattedVss::Unknown)
    FormattedVss.struct_class = Types::FormattedVss

    Fqns.member = Shapes::ShapeRef.new(shape: FullyQualifiedName)

    GetCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, required: true, location_name: "name"))
    GetCampaignRequest.struct_class = Types::GetCampaignRequest

    GetCampaignResponse.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, location_name: "name"))
    GetCampaignResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    GetCampaignResponse.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    GetCampaignResponse.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, location_name: "signalCatalogArn"))
    GetCampaignResponse.add_member(:target_arn, Shapes::ShapeRef.new(shape: arn, location_name: "targetArn"))
    GetCampaignResponse.add_member(:status, Shapes::ShapeRef.new(shape: CampaignStatus, location_name: "status"))
    GetCampaignResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "startTime"))
    GetCampaignResponse.add_member(:expiry_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "expiryTime"))
    GetCampaignResponse.add_member(:post_trigger_collection_duration, Shapes::ShapeRef.new(shape: uint32, location_name: "postTriggerCollectionDuration"))
    GetCampaignResponse.add_member(:diagnostics_mode, Shapes::ShapeRef.new(shape: DiagnosticsMode, location_name: "diagnosticsMode"))
    GetCampaignResponse.add_member(:spooling_mode, Shapes::ShapeRef.new(shape: SpoolingMode, location_name: "spoolingMode"))
    GetCampaignResponse.add_member(:compression, Shapes::ShapeRef.new(shape: Compression, location_name: "compression"))
    GetCampaignResponse.add_member(:priority, Shapes::ShapeRef.new(shape: priority, location_name: "priority"))
    GetCampaignResponse.add_member(:signals_to_collect, Shapes::ShapeRef.new(shape: SignalInformationList, location_name: "signalsToCollect"))
    GetCampaignResponse.add_member(:collection_scheme, Shapes::ShapeRef.new(shape: CollectionScheme, location_name: "collectionScheme"))
    GetCampaignResponse.add_member(:data_extra_dimensions, Shapes::ShapeRef.new(shape: DataExtraDimensionNodePathList, location_name: "dataExtraDimensions"))
    GetCampaignResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "creationTime"))
    GetCampaignResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "lastModificationTime"))
    GetCampaignResponse.add_member(:data_destination_configs, Shapes::ShapeRef.new(shape: DataDestinationConfigs, location_name: "dataDestinationConfigs"))
    GetCampaignResponse.struct_class = Types::GetCampaignResponse

    GetDecoderManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    GetDecoderManifestRequest.struct_class = Types::GetDecoderManifestRequest

    GetDecoderManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "name"))
    GetDecoderManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    GetDecoderManifestResponse.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    GetDecoderManifestResponse.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "modelManifestArn"))
    GetDecoderManifestResponse.add_member(:status, Shapes::ShapeRef.new(shape: ManifestStatus, location_name: "status"))
    GetDecoderManifestResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    GetDecoderManifestResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    GetDecoderManifestResponse.struct_class = Types::GetDecoderManifestResponse

    GetFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "fleetId"))
    GetFleetRequest.struct_class = Types::GetFleetRequest

    GetFleetResponse.add_member(:id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "id"))
    GetFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    GetFleetResponse.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    GetFleetResponse.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "signalCatalogArn"))
    GetFleetResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    GetFleetResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    GetFleetResponse.struct_class = Types::GetFleetResponse

    GetLoggingOptionsRequest.struct_class = Types::GetLoggingOptionsRequest

    GetLoggingOptionsResponse.add_member(:cloud_watch_log_delivery, Shapes::ShapeRef.new(shape: CloudWatchLogDeliveryOptions, required: true, location_name: "cloudWatchLogDelivery"))
    GetLoggingOptionsResponse.struct_class = Types::GetLoggingOptionsResponse

    GetModelManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    GetModelManifestRequest.struct_class = Types::GetModelManifestRequest

    GetModelManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    GetModelManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    GetModelManifestResponse.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    GetModelManifestResponse.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, location_name: "signalCatalogArn"))
    GetModelManifestResponse.add_member(:status, Shapes::ShapeRef.new(shape: ManifestStatus, location_name: "status"))
    GetModelManifestResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    GetModelManifestResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    GetModelManifestResponse.struct_class = Types::GetModelManifestResponse

    GetRegisterAccountStatusRequest.struct_class = Types::GetRegisterAccountStatusRequest

    GetRegisterAccountStatusResponse.add_member(:customer_account_id, Shapes::ShapeRef.new(shape: customerAccountId, required: true, location_name: "customerAccountId"))
    GetRegisterAccountStatusResponse.add_member(:account_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "accountStatus"))
    GetRegisterAccountStatusResponse.add_member(:timestream_registration_response, Shapes::ShapeRef.new(shape: TimestreamRegistrationResponse, location_name: "timestreamRegistrationResponse"))
    GetRegisterAccountStatusResponse.add_member(:iam_registration_response, Shapes::ShapeRef.new(shape: IamRegistrationResponse, required: true, location_name: "iamRegistrationResponse"))
    GetRegisterAccountStatusResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    GetRegisterAccountStatusResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    GetRegisterAccountStatusResponse.struct_class = Types::GetRegisterAccountStatusResponse

    GetSignalCatalogRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    GetSignalCatalogRequest.struct_class = Types::GetSignalCatalogRequest

    GetSignalCatalogResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    GetSignalCatalogResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    GetSignalCatalogResponse.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    GetSignalCatalogResponse.add_member(:node_counts, Shapes::ShapeRef.new(shape: NodeCounts, location_name: "nodeCounts"))
    GetSignalCatalogResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    GetSignalCatalogResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    GetSignalCatalogResponse.struct_class = Types::GetSignalCatalogResponse

    GetVehicleRequest.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    GetVehicleRequest.struct_class = Types::GetVehicleRequest

    GetVehicleResponse.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, location_name: "vehicleName"))
    GetVehicleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    GetVehicleResponse.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "modelManifestArn"))
    GetVehicleResponse.add_member(:decoder_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "decoderManifestArn"))
    GetVehicleResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: attributesMap, location_name: "attributes"))
    GetVehicleResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "creationTime"))
    GetVehicleResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "lastModificationTime"))
    GetVehicleResponse.struct_class = Types::GetVehicleResponse

    GetVehicleStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    GetVehicleStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    GetVehicleStatusRequest.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    GetVehicleStatusRequest.struct_class = Types::GetVehicleStatusRequest

    GetVehicleStatusResponse.add_member(:campaigns, Shapes::ShapeRef.new(shape: VehicleStatusList, location_name: "campaigns"))
    GetVehicleStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    GetVehicleStatusResponse.struct_class = Types::GetVehicleStatusResponse

    IamRegistrationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "roleArn"))
    IamRegistrationResponse.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "registrationStatus"))
    IamRegistrationResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "errorMessage"))
    IamRegistrationResponse.struct_class = Types::IamRegistrationResponse

    IamResources.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "roleArn"))
    IamResources.struct_class = Types::IamResources

    ImportDecoderManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    ImportDecoderManifestRequest.add_member(:network_file_definitions, Shapes::ShapeRef.new(shape: NetworkFileDefinitions, required: true, location_name: "networkFileDefinitions"))
    ImportDecoderManifestRequest.struct_class = Types::ImportDecoderManifestRequest

    ImportDecoderManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    ImportDecoderManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    ImportDecoderManifestResponse.struct_class = Types::ImportDecoderManifestResponse

    ImportSignalCatalogRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    ImportSignalCatalogRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    ImportSignalCatalogRequest.add_member(:vss, Shapes::ShapeRef.new(shape: FormattedVss, location_name: "vss"))
    ImportSignalCatalogRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ImportSignalCatalogRequest.struct_class = Types::ImportSignalCatalogRequest

    ImportSignalCatalogResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    ImportSignalCatalogResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    ImportSignalCatalogResponse.struct_class = Types::ImportSignalCatalogResponse

    InterfaceIds.member = Shapes::ShapeRef.new(shape: InterfaceId)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidNetworkInterface.add_member(:interface_id, Shapes::ShapeRef.new(shape: InterfaceId, location_name: "interfaceId"))
    InvalidNetworkInterface.add_member(:reason, Shapes::ShapeRef.new(shape: NetworkInterfaceFailureReason, location_name: "reason"))
    InvalidNetworkInterface.struct_class = Types::InvalidNetworkInterface

    InvalidNetworkInterfaces.member = Shapes::ShapeRef.new(shape: InvalidNetworkInterface)

    InvalidNodeException.add_member(:invalid_nodes, Shapes::ShapeRef.new(shape: Nodes, location_name: "invalidNodes"))
    InvalidNodeException.add_member(:reason, Shapes::ShapeRef.new(shape: string, location_name: "reason"))
    InvalidNodeException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    InvalidNodeException.struct_class = Types::InvalidNodeException

    InvalidSignal.add_member(:name, Shapes::ShapeRef.new(shape: FullyQualifiedName, location_name: "name"))
    InvalidSignal.add_member(:reason, Shapes::ShapeRef.new(shape: string, location_name: "reason"))
    InvalidSignal.struct_class = Types::InvalidSignal

    InvalidSignalDecoder.add_member(:name, Shapes::ShapeRef.new(shape: FullyQualifiedName, location_name: "name"))
    InvalidSignalDecoder.add_member(:reason, Shapes::ShapeRef.new(shape: SignalDecoderFailureReason, location_name: "reason"))
    InvalidSignalDecoder.struct_class = Types::InvalidSignalDecoder

    InvalidSignalDecoders.member = Shapes::ShapeRef.new(shape: InvalidSignalDecoder)

    InvalidSignals.member = Shapes::ShapeRef.new(shape: InvalidSignal)

    InvalidSignalsException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    InvalidSignalsException.add_member(:invalid_signals, Shapes::ShapeRef.new(shape: InvalidSignals, location_name: "invalidSignals"))
    InvalidSignalsException.struct_class = Types::InvalidSignalsException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    LimitExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "resourceId"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: string, required: true, location_name: "resourceType"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListCampaignsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListCampaignsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListCampaignsRequest.add_member(:status, Shapes::ShapeRef.new(shape: status, location_name: "status"))
    ListCampaignsRequest.struct_class = Types::ListCampaignsRequest

    ListCampaignsResponse.add_member(:campaign_summaries, Shapes::ShapeRef.new(shape: campaignSummaries, location_name: "campaignSummaries"))
    ListCampaignsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListCampaignsResponse.struct_class = Types::ListCampaignsResponse

    ListDecoderManifestNetworkInterfacesRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    ListDecoderManifestNetworkInterfacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListDecoderManifestNetworkInterfacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListDecoderManifestNetworkInterfacesRequest.struct_class = Types::ListDecoderManifestNetworkInterfacesRequest

    ListDecoderManifestNetworkInterfacesResponse.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    ListDecoderManifestNetworkInterfacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListDecoderManifestNetworkInterfacesResponse.struct_class = Types::ListDecoderManifestNetworkInterfacesResponse

    ListDecoderManifestSignalsRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    ListDecoderManifestSignalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListDecoderManifestSignalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListDecoderManifestSignalsRequest.struct_class = Types::ListDecoderManifestSignalsRequest

    ListDecoderManifestSignalsResponse.add_member(:signal_decoders, Shapes::ShapeRef.new(shape: SignalDecoders, location_name: "signalDecoders"))
    ListDecoderManifestSignalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListDecoderManifestSignalsResponse.struct_class = Types::ListDecoderManifestSignalsResponse

    ListDecoderManifestsRequest.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "modelManifestArn"))
    ListDecoderManifestsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListDecoderManifestsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListDecoderManifestsRequest.struct_class = Types::ListDecoderManifestsRequest

    ListDecoderManifestsResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: decoderManifestSummaries, location_name: "summaries"))
    ListDecoderManifestsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListDecoderManifestsResponse.struct_class = Types::ListDecoderManifestsResponse

    ListFleetsForVehicleRequest.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    ListFleetsForVehicleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListFleetsForVehicleRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListFleetsForVehicleRequest.struct_class = Types::ListFleetsForVehicleRequest

    ListFleetsForVehicleResponse.add_member(:fleets, Shapes::ShapeRef.new(shape: fleets, location_name: "fleets"))
    ListFleetsForVehicleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListFleetsForVehicleResponse.struct_class = Types::ListFleetsForVehicleResponse

    ListFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListFleetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListFleetsRequest.struct_class = Types::ListFleetsRequest

    ListFleetsResponse.add_member(:fleet_summaries, Shapes::ShapeRef.new(shape: fleetSummaries, location_name: "fleetSummaries"))
    ListFleetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListFleetsResponse.struct_class = Types::ListFleetsResponse

    ListModelManifestNodesRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    ListModelManifestNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListModelManifestNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListModelManifestNodesRequest.struct_class = Types::ListModelManifestNodesRequest

    ListModelManifestNodesResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: Nodes, location_name: "nodes"))
    ListModelManifestNodesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListModelManifestNodesResponse.struct_class = Types::ListModelManifestNodesResponse

    ListModelManifestsRequest.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, location_name: "signalCatalogArn"))
    ListModelManifestsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListModelManifestsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListModelManifestsRequest.struct_class = Types::ListModelManifestsRequest

    ListModelManifestsResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: modelManifestSummaries, location_name: "summaries"))
    ListModelManifestsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListModelManifestsResponse.struct_class = Types::ListModelManifestsResponse

    ListSignalCatalogNodesRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    ListSignalCatalogNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListSignalCatalogNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListSignalCatalogNodesRequest.struct_class = Types::ListSignalCatalogNodesRequest

    ListSignalCatalogNodesResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: Nodes, location_name: "nodes"))
    ListSignalCatalogNodesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListSignalCatalogNodesResponse.struct_class = Types::ListSignalCatalogNodesResponse

    ListSignalCatalogsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListSignalCatalogsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListSignalCatalogsRequest.struct_class = Types::ListSignalCatalogsRequest

    ListSignalCatalogsResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: signalCatalogSummaries, location_name: "summaries"))
    ListSignalCatalogsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListSignalCatalogsResponse.struct_class = Types::ListSignalCatalogsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVehiclesInFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "fleetId"))
    ListVehiclesInFleetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListVehiclesInFleetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxResults, location_name: "maxResults"))
    ListVehiclesInFleetRequest.struct_class = Types::ListVehiclesInFleetRequest

    ListVehiclesInFleetResponse.add_member(:vehicles, Shapes::ShapeRef.new(shape: vehicles, location_name: "vehicles"))
    ListVehiclesInFleetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListVehiclesInFleetResponse.struct_class = Types::ListVehiclesInFleetResponse

    ListVehiclesRequest.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "modelManifestArn"))
    ListVehiclesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListVehiclesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: listVehiclesMaxResults, location_name: "maxResults"))
    ListVehiclesRequest.struct_class = Types::ListVehiclesRequest

    ListVehiclesResponse.add_member(:vehicle_summaries, Shapes::ShapeRef.new(shape: vehicleSummaries, location_name: "vehicleSummaries"))
    ListVehiclesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: nextToken, location_name: "nextToken"))
    ListVehiclesResponse.struct_class = Types::ListVehiclesResponse

    ModelManifestSummary.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    ModelManifestSummary.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    ModelManifestSummary.add_member(:signal_catalog_arn, Shapes::ShapeRef.new(shape: arn, location_name: "signalCatalogArn"))
    ModelManifestSummary.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    ModelManifestSummary.add_member(:status, Shapes::ShapeRef.new(shape: ManifestStatus, location_name: "status"))
    ModelManifestSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    ModelManifestSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    ModelManifestSummary.struct_class = Types::ModelManifestSummary

    ModelSignalsMap.key = Shapes::ShapeRef.new(shape: string)
    ModelSignalsMap.value = Shapes::ShapeRef.new(shape: string)

    NetworkFileDefinition.add_member(:can_dbc, Shapes::ShapeRef.new(shape: CanDbcDefinition, location_name: "canDbc"))
    NetworkFileDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NetworkFileDefinition.add_member_subclass(:can_dbc, Types::NetworkFileDefinition::CanDbc)
    NetworkFileDefinition.add_member_subclass(:unknown, Types::NetworkFileDefinition::Unknown)
    NetworkFileDefinition.struct_class = Types::NetworkFileDefinition

    NetworkFileDefinitions.member = Shapes::ShapeRef.new(shape: NetworkFileDefinition)

    NetworkFilesList.member = Shapes::ShapeRef.new(shape: NetworkFileBlob)

    NetworkInterface.add_member(:interface_id, Shapes::ShapeRef.new(shape: InterfaceId, required: true, location_name: "interfaceId"))
    NetworkInterface.add_member(:type, Shapes::ShapeRef.new(shape: NetworkInterfaceType, required: true, location_name: "type"))
    NetworkInterface.add_member(:can_interface, Shapes::ShapeRef.new(shape: CanInterface, location_name: "canInterface"))
    NetworkInterface.add_member(:obd_interface, Shapes::ShapeRef.new(shape: ObdInterface, location_name: "obdInterface"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    Node.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, location_name: "branch"))
    Node.add_member(:sensor, Shapes::ShapeRef.new(shape: Sensor, location_name: "sensor"))
    Node.add_member(:actuator, Shapes::ShapeRef.new(shape: Actuator, location_name: "actuator"))
    Node.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, location_name: "attribute"))
    Node.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Node.add_member_subclass(:branch, Types::Node::Branch)
    Node.add_member_subclass(:sensor, Types::Node::Sensor)
    Node.add_member_subclass(:actuator, Types::Node::Actuator)
    Node.add_member_subclass(:attribute, Types::Node::Attribute)
    Node.add_member_subclass(:unknown, Types::Node::Unknown)
    Node.struct_class = Types::Node

    NodeCounts.add_member(:total_nodes, Shapes::ShapeRef.new(shape: number, location_name: "totalNodes"))
    NodeCounts.add_member(:total_branches, Shapes::ShapeRef.new(shape: number, location_name: "totalBranches"))
    NodeCounts.add_member(:total_sensors, Shapes::ShapeRef.new(shape: number, location_name: "totalSensors"))
    NodeCounts.add_member(:total_attributes, Shapes::ShapeRef.new(shape: number, location_name: "totalAttributes"))
    NodeCounts.add_member(:total_actuators, Shapes::ShapeRef.new(shape: number, location_name: "totalActuators"))
    NodeCounts.struct_class = Types::NodeCounts

    NodePaths.member = Shapes::ShapeRef.new(shape: NodePath)

    Nodes.member = Shapes::ShapeRef.new(shape: Node)

    ObdInterface.add_member(:name, Shapes::ShapeRef.new(shape: ObdInterfaceName, required: true, location_name: "name"))
    ObdInterface.add_member(:request_message_id, Shapes::ShapeRef.new(shape: nonNegativeInteger, required: true, location_name: "requestMessageId"))
    ObdInterface.add_member(:obd_standard, Shapes::ShapeRef.new(shape: ObdStandard, location_name: "obdStandard"))
    ObdInterface.add_member(:pid_request_interval_seconds, Shapes::ShapeRef.new(shape: nonNegativeInteger, location_name: "pidRequestIntervalSeconds"))
    ObdInterface.add_member(:dtc_request_interval_seconds, Shapes::ShapeRef.new(shape: nonNegativeInteger, location_name: "dtcRequestIntervalSeconds"))
    ObdInterface.add_member(:use_extended_ids, Shapes::ShapeRef.new(shape: boolean, location_name: "useExtendedIds"))
    ObdInterface.add_member(:has_transmission_ecu, Shapes::ShapeRef.new(shape: boolean, location_name: "hasTransmissionEcu"))
    ObdInterface.struct_class = Types::ObdInterface

    ObdSignal.add_member(:pid_response_length, Shapes::ShapeRef.new(shape: positiveInteger, required: true, location_name: "pidResponseLength"))
    ObdSignal.add_member(:service_mode, Shapes::ShapeRef.new(shape: nonNegativeInteger, required: true, location_name: "serviceMode"))
    ObdSignal.add_member(:pid, Shapes::ShapeRef.new(shape: nonNegativeInteger, required: true, location_name: "pid"))
    ObdSignal.add_member(:scaling, Shapes::ShapeRef.new(shape: double, required: true, location_name: "scaling"))
    ObdSignal.add_member(:offset, Shapes::ShapeRef.new(shape: double, required: true, location_name: "offset"))
    ObdSignal.add_member(:start_byte, Shapes::ShapeRef.new(shape: nonNegativeInteger, required: true, location_name: "startByte"))
    ObdSignal.add_member(:byte_length, Shapes::ShapeRef.new(shape: ObdByteLength, required: true, location_name: "byteLength"))
    ObdSignal.add_member(:bit_right_shift, Shapes::ShapeRef.new(shape: nonNegativeInteger, location_name: "bitRightShift"))
    ObdSignal.add_member(:bit_mask_length, Shapes::ShapeRef.new(shape: ObdBitmaskLength, location_name: "bitMaskLength"))
    ObdSignal.struct_class = Types::ObdSignal

    PutLoggingOptionsRequest.add_member(:cloud_watch_log_delivery, Shapes::ShapeRef.new(shape: CloudWatchLogDeliveryOptions, required: true, location_name: "cloudWatchLogDelivery"))
    PutLoggingOptionsRequest.struct_class = Types::PutLoggingOptionsRequest

    PutLoggingOptionsResponse.struct_class = Types::PutLoggingOptionsResponse

    RegisterAccountRequest.add_member(:timestream_resources, Shapes::ShapeRef.new(shape: TimestreamResources, deprecated: true, location_name: "timestreamResources", metadata: {"deprecatedMessage"=>"Amazon Timestream metadata is now passed in the CreateCampaign API."}))
    RegisterAccountRequest.add_member(:iam_resources, Shapes::ShapeRef.new(shape: IamResources, deprecated: true, location_name: "iamResources", metadata: {"deprecatedMessage"=>"iamResources is no longer used or needed as input"}))
    RegisterAccountRequest.struct_class = Types::RegisterAccountRequest

    RegisterAccountResponse.add_member(:register_account_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "registerAccountStatus"))
    RegisterAccountResponse.add_member(:timestream_resources, Shapes::ShapeRef.new(shape: TimestreamResources, location_name: "timestreamResources"))
    RegisterAccountResponse.add_member(:iam_resources, Shapes::ShapeRef.new(shape: IamResources, required: true, location_name: "iamResources"))
    RegisterAccountResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    RegisterAccountResponse.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    RegisterAccountResponse.struct_class = Types::RegisterAccountResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: string, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: string, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Config.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, required: true, location_name: "bucketArn"))
    S3Config.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, location_name: "dataFormat"))
    S3Config.add_member(:storage_compression_format, Shapes::ShapeRef.new(shape: StorageCompressionFormat, location_name: "storageCompressionFormat"))
    S3Config.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix"))
    S3Config.struct_class = Types::S3Config

    Sensor.add_member(:fully_qualified_name, Shapes::ShapeRef.new(shape: string, required: true, location_name: "fullyQualifiedName"))
    Sensor.add_member(:data_type, Shapes::ShapeRef.new(shape: NodeDataType, required: true, location_name: "dataType"))
    Sensor.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    Sensor.add_member(:unit, Shapes::ShapeRef.new(shape: string, location_name: "unit"))
    Sensor.add_member(:allowed_values, Shapes::ShapeRef.new(shape: listOfStrings, location_name: "allowedValues"))
    Sensor.add_member(:min, Shapes::ShapeRef.new(shape: double, location_name: "min"))
    Sensor.add_member(:max, Shapes::ShapeRef.new(shape: double, location_name: "max"))
    Sensor.add_member(:deprecation_message, Shapes::ShapeRef.new(shape: message, location_name: "deprecationMessage"))
    Sensor.add_member(:comment, Shapes::ShapeRef.new(shape: message, location_name: "comment"))
    Sensor.struct_class = Types::Sensor

    SignalCatalogSummary.add_member(:name, Shapes::ShapeRef.new(shape: string, location_name: "name"))
    SignalCatalogSummary.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    SignalCatalogSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "creationTime"))
    SignalCatalogSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, location_name: "lastModificationTime"))
    SignalCatalogSummary.struct_class = Types::SignalCatalogSummary

    SignalDecoder.add_member(:fully_qualified_name, Shapes::ShapeRef.new(shape: FullyQualifiedName, required: true, location_name: "fullyQualifiedName"))
    SignalDecoder.add_member(:type, Shapes::ShapeRef.new(shape: SignalDecoderType, required: true, location_name: "type"))
    SignalDecoder.add_member(:interface_id, Shapes::ShapeRef.new(shape: InterfaceId, required: true, location_name: "interfaceId"))
    SignalDecoder.add_member(:can_signal, Shapes::ShapeRef.new(shape: CanSignal, location_name: "canSignal"))
    SignalDecoder.add_member(:obd_signal, Shapes::ShapeRef.new(shape: ObdSignal, location_name: "obdSignal"))
    SignalDecoder.struct_class = Types::SignalDecoder

    SignalDecoders.member = Shapes::ShapeRef.new(shape: SignalDecoder)

    SignalInformation.add_member(:name, Shapes::ShapeRef.new(shape: wildcardSignalName, required: true, location_name: "name"))
    SignalInformation.add_member(:max_sample_count, Shapes::ShapeRef.new(shape: maxSampleCount, location_name: "maxSampleCount"))
    SignalInformation.add_member(:minimum_sampling_interval_ms, Shapes::ShapeRef.new(shape: uint32, location_name: "minimumSamplingIntervalMs"))
    SignalInformation.struct_class = Types::SignalInformation

    SignalInformationList.member = Shapes::ShapeRef.new(shape: SignalInformation)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: string, location_name: "quotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: string, location_name: "serviceCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeBasedCollectionScheme.add_member(:period_ms, Shapes::ShapeRef.new(shape: collectionPeriodMs, required: true, location_name: "periodMs"))
    TimeBasedCollectionScheme.struct_class = Types::TimeBasedCollectionScheme

    TimestreamConfig.add_member(:timestream_table_arn, Shapes::ShapeRef.new(shape: TimestreamTableArn, required: true, location_name: "timestreamTableArn"))
    TimestreamConfig.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "executionRoleArn"))
    TimestreamConfig.struct_class = Types::TimestreamConfig

    TimestreamRegistrationResponse.add_member(:timestream_database_name, Shapes::ShapeRef.new(shape: TimestreamDatabaseName, required: true, location_name: "timestreamDatabaseName"))
    TimestreamRegistrationResponse.add_member(:timestream_table_name, Shapes::ShapeRef.new(shape: TimestreamTableName, required: true, location_name: "timestreamTableName"))
    TimestreamRegistrationResponse.add_member(:timestream_database_arn, Shapes::ShapeRef.new(shape: arn, location_name: "timestreamDatabaseArn"))
    TimestreamRegistrationResponse.add_member(:timestream_table_arn, Shapes::ShapeRef.new(shape: arn, location_name: "timestreamTableArn"))
    TimestreamRegistrationResponse.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, required: true, location_name: "registrationStatus"))
    TimestreamRegistrationResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "errorMessage"))
    TimestreamRegistrationResponse.struct_class = Types::TimestreamRegistrationResponse

    TimestreamResources.add_member(:timestream_database_name, Shapes::ShapeRef.new(shape: TimestreamDatabaseName, required: true, location_name: "timestreamDatabaseName"))
    TimestreamResources.add_member(:timestream_table_name, Shapes::ShapeRef.new(shape: TimestreamTableName, required: true, location_name: "timestreamTableName"))
    TimestreamResources.struct_class = Types::TimestreamResources

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCampaignRequest.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, required: true, location_name: "name"))
    UpdateCampaignRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateCampaignRequest.add_member(:data_extra_dimensions, Shapes::ShapeRef.new(shape: DataExtraDimensionNodePathList, location_name: "dataExtraDimensions"))
    UpdateCampaignRequest.add_member(:action, Shapes::ShapeRef.new(shape: UpdateCampaignAction, required: true, location_name: "action"))
    UpdateCampaignRequest.struct_class = Types::UpdateCampaignRequest

    UpdateCampaignResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    UpdateCampaignResponse.add_member(:name, Shapes::ShapeRef.new(shape: campaignName, location_name: "name"))
    UpdateCampaignResponse.add_member(:status, Shapes::ShapeRef.new(shape: CampaignStatus, location_name: "status"))
    UpdateCampaignResponse.struct_class = Types::UpdateCampaignResponse

    UpdateDecoderManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    UpdateDecoderManifestRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateDecoderManifestRequest.add_member(:signal_decoders_to_add, Shapes::ShapeRef.new(shape: SignalDecoders, location_name: "signalDecodersToAdd"))
    UpdateDecoderManifestRequest.add_member(:signal_decoders_to_update, Shapes::ShapeRef.new(shape: SignalDecoders, location_name: "signalDecodersToUpdate"))
    UpdateDecoderManifestRequest.add_member(:signal_decoders_to_remove, Shapes::ShapeRef.new(shape: Fqns, location_name: "signalDecodersToRemove"))
    UpdateDecoderManifestRequest.add_member(:network_interfaces_to_add, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfacesToAdd"))
    UpdateDecoderManifestRequest.add_member(:network_interfaces_to_update, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfacesToUpdate"))
    UpdateDecoderManifestRequest.add_member(:network_interfaces_to_remove, Shapes::ShapeRef.new(shape: InterfaceIds, location_name: "networkInterfacesToRemove"))
    UpdateDecoderManifestRequest.add_member(:status, Shapes::ShapeRef.new(shape: ManifestStatus, location_name: "status"))
    UpdateDecoderManifestRequest.struct_class = Types::UpdateDecoderManifestRequest

    UpdateDecoderManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    UpdateDecoderManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    UpdateDecoderManifestResponse.struct_class = Types::UpdateDecoderManifestResponse

    UpdateFleetRequest.add_member(:fleet_id, Shapes::ShapeRef.new(shape: fleetId, required: true, location_name: "fleetId"))
    UpdateFleetRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateFleetRequest.struct_class = Types::UpdateFleetRequest

    UpdateFleetResponse.add_member(:id, Shapes::ShapeRef.new(shape: fleetId, location_name: "id"))
    UpdateFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    UpdateFleetResponse.struct_class = Types::UpdateFleetResponse

    UpdateModelManifestRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    UpdateModelManifestRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateModelManifestRequest.add_member(:nodes_to_add, Shapes::ShapeRef.new(shape: NodePaths, location_name: "nodesToAdd"))
    UpdateModelManifestRequest.add_member(:nodes_to_remove, Shapes::ShapeRef.new(shape: NodePaths, location_name: "nodesToRemove"))
    UpdateModelManifestRequest.add_member(:status, Shapes::ShapeRef.new(shape: ManifestStatus, location_name: "status"))
    UpdateModelManifestRequest.struct_class = Types::UpdateModelManifestRequest

    UpdateModelManifestResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    UpdateModelManifestResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    UpdateModelManifestResponse.struct_class = Types::UpdateModelManifestResponse

    UpdateSignalCatalogRequest.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    UpdateSignalCatalogRequest.add_member(:description, Shapes::ShapeRef.new(shape: description, location_name: "description"))
    UpdateSignalCatalogRequest.add_member(:nodes_to_add, Shapes::ShapeRef.new(shape: Nodes, location_name: "nodesToAdd"))
    UpdateSignalCatalogRequest.add_member(:nodes_to_update, Shapes::ShapeRef.new(shape: Nodes, location_name: "nodesToUpdate"))
    UpdateSignalCatalogRequest.add_member(:nodes_to_remove, Shapes::ShapeRef.new(shape: NodePaths, location_name: "nodesToRemove"))
    UpdateSignalCatalogRequest.struct_class = Types::UpdateSignalCatalogRequest

    UpdateSignalCatalogResponse.add_member(:name, Shapes::ShapeRef.new(shape: resourceName, required: true, location_name: "name"))
    UpdateSignalCatalogResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    UpdateSignalCatalogResponse.struct_class = Types::UpdateSignalCatalogResponse

    UpdateVehicleError.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, location_name: "vehicleName"))
    UpdateVehicleError.add_member(:code, Shapes::ShapeRef.new(shape: number, location_name: "code"))
    UpdateVehicleError.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    UpdateVehicleError.struct_class = Types::UpdateVehicleError

    UpdateVehicleRequest.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    UpdateVehicleRequest.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "modelManifestArn"))
    UpdateVehicleRequest.add_member(:decoder_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "decoderManifestArn"))
    UpdateVehicleRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: attributesMap, location_name: "attributes"))
    UpdateVehicleRequest.add_member(:attribute_update_mode, Shapes::ShapeRef.new(shape: UpdateMode, location_name: "attributeUpdateMode"))
    UpdateVehicleRequest.struct_class = Types::UpdateVehicleRequest

    UpdateVehicleRequestItem.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    UpdateVehicleRequestItem.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "modelManifestArn"))
    UpdateVehicleRequestItem.add_member(:decoder_manifest_arn, Shapes::ShapeRef.new(shape: arn, location_name: "decoderManifestArn"))
    UpdateVehicleRequestItem.add_member(:attributes, Shapes::ShapeRef.new(shape: attributesMap, location_name: "attributes"))
    UpdateVehicleRequestItem.add_member(:attribute_update_mode, Shapes::ShapeRef.new(shape: UpdateMode, location_name: "attributeUpdateMode"))
    UpdateVehicleRequestItem.struct_class = Types::UpdateVehicleRequestItem

    UpdateVehicleResponse.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, location_name: "vehicleName"))
    UpdateVehicleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    UpdateVehicleResponse.struct_class = Types::UpdateVehicleResponse

    UpdateVehicleResponseItem.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, location_name: "vehicleName"))
    UpdateVehicleResponseItem.add_member(:arn, Shapes::ShapeRef.new(shape: arn, location_name: "arn"))
    UpdateVehicleResponseItem.struct_class = Types::UpdateVehicleResponseItem

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: string, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VehicleStatus.add_member(:campaign_name, Shapes::ShapeRef.new(shape: string, location_name: "campaignName"))
    VehicleStatus.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, location_name: "vehicleName"))
    VehicleStatus.add_member(:status, Shapes::ShapeRef.new(shape: VehicleState, location_name: "status"))
    VehicleStatus.struct_class = Types::VehicleStatus

    VehicleStatusList.member = Shapes::ShapeRef.new(shape: VehicleStatus)

    VehicleSummary.add_member(:vehicle_name, Shapes::ShapeRef.new(shape: vehicleName, required: true, location_name: "vehicleName"))
    VehicleSummary.add_member(:arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "arn"))
    VehicleSummary.add_member(:model_manifest_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "modelManifestArn"))
    VehicleSummary.add_member(:decoder_manifest_arn, Shapes::ShapeRef.new(shape: arn, required: true, location_name: "decoderManifestArn"))
    VehicleSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "creationTime"))
    VehicleSummary.add_member(:last_modification_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "lastModificationTime"))
    VehicleSummary.struct_class = Types::VehicleSummary

    attributesMap.key = Shapes::ShapeRef.new(shape: attributeName)
    attributesMap.value = Shapes::ShapeRef.new(shape: attributeValue)

    campaignSummaries.member = Shapes::ShapeRef.new(shape: CampaignSummary)

    createVehicleErrors.member = Shapes::ShapeRef.new(shape: CreateVehicleError)

    createVehicleRequestItems.member = Shapes::ShapeRef.new(shape: CreateVehicleRequestItem)

    createVehicleResponses.member = Shapes::ShapeRef.new(shape: CreateVehicleResponseItem)

    decoderManifestSummaries.member = Shapes::ShapeRef.new(shape: DecoderManifestSummary)

    fleetSummaries.member = Shapes::ShapeRef.new(shape: FleetSummary)

    fleets.member = Shapes::ShapeRef.new(shape: fleetId)

    listOfStrings.member = Shapes::ShapeRef.new(shape: string)

    modelManifestSummaries.member = Shapes::ShapeRef.new(shape: ModelManifestSummary)

    signalCatalogSummaries.member = Shapes::ShapeRef.new(shape: SignalCatalogSummary)

    updateVehicleErrors.member = Shapes::ShapeRef.new(shape: UpdateVehicleError)

    updateVehicleRequestItems.member = Shapes::ShapeRef.new(shape: UpdateVehicleRequestItem)

    updateVehicleResponseItems.member = Shapes::ShapeRef.new(shape: UpdateVehicleResponseItem)

    vehicleSummaries.member = Shapes::ShapeRef.new(shape: VehicleSummary)

    vehicles.member = Shapes::ShapeRef.new(shape: vehicleName)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-06-17"

      api.metadata = {
        "apiVersion" => "2021-06-17",
        "endpointPrefix" => "iotfleetwise",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "AWS IoT FleetWise",
        "serviceId" => "IoTFleetWise",
        "signatureVersion" => "v4",
        "signingName" => "iotfleetwise",
        "targetPrefix" => "IoTAutobahnControlPlane",
        "uid" => "iotfleetwise-2021-06-17",
      }

      api.add_operation(:associate_vehicle_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateVehicleFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateVehicleFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateVehicleFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_create_vehicle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateVehicle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateVehicleRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateVehicleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_update_vehicle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateVehicle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateVehicleRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateVehicleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_decoder_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDecoderManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDecoderManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDecoderManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DecoderManifestValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_model_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateModelManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSignalsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_signal_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSignalCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSignalCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSignalCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNodeException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSignalsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_vehicle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVehicle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVehicleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVehicleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_decoder_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDecoderManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDecoderManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDecoderManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_model_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteModelManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_signal_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSignalCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSignalCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSignalCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_vehicle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVehicle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVehicleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVehicleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_vehicle_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateVehicleFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateVehicleFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateVehicleFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_decoder_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDecoderManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDecoderManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDecoderManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoggingOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_model_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetModelManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_register_account_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegisterAccountStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRegisterAccountStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegisterAccountStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_signal_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSignalCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSignalCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSignalCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_vehicle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVehicle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetVehicleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVehicleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_vehicle_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVehicleStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetVehicleStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVehicleStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:import_decoder_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportDecoderManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportDecoderManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportDecoderManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DecoderManifestValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSignalsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_signal_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportSignalCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportSignalCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportSignalCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSignalsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_campaigns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCampaigns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCampaignsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCampaignsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_decoder_manifest_network_interfaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDecoderManifestNetworkInterfaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDecoderManifestNetworkInterfacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDecoderManifestNetworkInterfacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_decoder_manifest_signals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDecoderManifestSignals"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDecoderManifestSignalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDecoderManifestSignalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_decoder_manifests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDecoderManifests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDecoderManifestsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDecoderManifestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFleetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fleets_for_vehicle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFleetsForVehicle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFleetsForVehicleRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFleetsForVehicleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_manifest_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelManifestNodes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelManifestNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelManifestNodesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_manifests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelManifests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListModelManifestsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelManifestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_signal_catalog_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSignalCatalogNodes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSignalCatalogNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSignalCatalogNodesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_signal_catalogs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSignalCatalogs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSignalCatalogsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSignalCatalogsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_vehicles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVehicles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVehiclesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVehiclesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_vehicles_in_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVehiclesInFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListVehiclesInFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVehiclesInFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLoggingOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:register_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCampaign"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_decoder_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDecoderManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDecoderManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDecoderManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DecoderManifestValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_model_manifest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateModelManifest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateModelManifestRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateModelManifestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSignalsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_signal_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSignalCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSignalCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSignalCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNodeException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSignalsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_vehicle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVehicle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVehicleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVehicleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
