# frozen_string_literal: true

# This is generated code!

module Aws::IoTTwinMaker
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BatchPutPropertyError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#BatchPutPropertyError", name: "BatchPutPropertyError")
    BatchPutPropertyErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#BatchPutPropertyErrorEntry", name: "BatchPutPropertyErrorEntry")
    BatchPutPropertyValuesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#BatchPutPropertyValuesInput", name: "BatchPutPropertyValuesInput")
    BatchPutPropertyValuesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#BatchPutPropertyValuesOutput", name: "BatchPutPropertyValuesOutput")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iottwinmaker#Boolean", name: "Boolean")
    BundleInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#BundleInformation", name: "BundleInformation")
    BundleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#BundleName", name: "BundleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    CancelMetadataTransferJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CancelMetadataTransferJobRequest", name: "CancelMetadataTransferJobRequest")
    CancelMetadataTransferJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CancelMetadataTransferJobResponse", name: "CancelMetadataTransferJobResponse")
    ColumnDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ColumnDescription", name: "ColumnDescription")
    ColumnDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#ColumnDescriptions", name: "ColumnDescriptions")
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ColumnName", name: "ColumnName", traits: {"smithy.api#pattern" => "^.*$"})
    ColumnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ColumnType", name: "ColumnType", traits: {"smithy.api#enum" => [{"name" => "NODE", "value" => "NODE"}, {"name" => "EDGE", "value" => "EDGE"}, {"name" => "VALUE", "value" => "VALUE"}]})
    ComponentPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ComponentPath", name: "ComponentPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z_\\-0-9/]+$"})
    ComponentPropertyGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ComponentPropertyGroupRequest", name: "ComponentPropertyGroupRequest")
    ComponentPropertyGroupRequests = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#ComponentPropertyGroupRequests", name: "ComponentPropertyGroupRequests")
    ComponentPropertyGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ComponentPropertyGroupResponse", name: "ComponentPropertyGroupResponse")
    ComponentPropertyGroupResponses = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#ComponentPropertyGroupResponses", name: "ComponentPropertyGroupResponses")
    ComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ComponentRequest", name: "ComponentRequest")
    ComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ComponentResponse", name: "ComponentResponse")
    ComponentSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#ComponentSummaries", name: "ComponentSummaries")
    ComponentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ComponentSummary", name: "ComponentSummary")
    ComponentTypeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ComponentTypeId", name: "ComponentTypeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_\\.\\-0-9:]+$"})
    ComponentTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ComponentTypeName", name: "ComponentTypeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "[^\\u0000-\\u001F\\u007F]*"})
    ComponentTypeSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#ComponentTypeSummaries", name: "ComponentTypeSummaries")
    ComponentTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ComponentTypeSummary", name: "ComponentTypeSummary")
    ComponentUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ComponentUpdateRequest", name: "ComponentUpdateRequest")
    ComponentUpdateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ComponentUpdateType", name: "ComponentUpdateType", traits: {"smithy.api#enum" => [{"name" => "CREATE", "value" => "CREATE"}, {"name" => "UPDATE", "value" => "UPDATE"}, {"name" => "DELETE", "value" => "DELETE"}]})
    ComponentUpdatesMapRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#ComponentUpdatesMapRequest", name: "ComponentUpdatesMapRequest")
    ComponentsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#ComponentsMap", name: "ComponentsMap")
    ComponentsMapRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#ComponentsMapRequest", name: "ComponentsMapRequest")
    CompositeComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentRequest", name: "CompositeComponentRequest")
    CompositeComponentResponse = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentResponse", name: "CompositeComponentResponse")
    CompositeComponentTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentTypeRequest", name: "CompositeComponentTypeRequest")
    CompositeComponentTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentTypeResponse", name: "CompositeComponentTypeResponse")
    CompositeComponentTypesRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentTypesRequest", name: "CompositeComponentTypesRequest")
    CompositeComponentTypesResponse = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentTypesResponse", name: "CompositeComponentTypesResponse")
    CompositeComponentUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentUpdateRequest", name: "CompositeComponentUpdateRequest")
    CompositeComponentUpdatesMapRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentUpdatesMapRequest", name: "CompositeComponentUpdatesMapRequest")
    CompositeComponentsMapRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#CompositeComponentsMapRequest", name: "CompositeComponentsMapRequest")
    Configuration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#Configuration", name: "Configuration")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectorFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ConnectorFailureException", name: "ConnectorFailureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    ConnectorTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ConnectorTimeoutException", name: "ConnectorTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    CreateComponentTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateComponentTypeInput", name: "CreateComponentTypeInput")
    CreateComponentTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateComponentTypeOutput", name: "CreateComponentTypeOutput")
    CreateEntityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateEntityInput", name: "CreateEntityInput")
    CreateEntityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateEntityOutput", name: "CreateEntityOutput")
    CreateMetadataTransferJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateMetadataTransferJobRequest", name: "CreateMetadataTransferJobRequest")
    CreateMetadataTransferJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateMetadataTransferJobResponse", name: "CreateMetadataTransferJobResponse")
    CreateSceneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateSceneInput", name: "CreateSceneInput")
    CreateSceneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateSceneOutput", name: "CreateSceneOutput")
    CreateSyncJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateSyncJobInput", name: "CreateSyncJobInput")
    CreateSyncJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateSyncJobOutput", name: "CreateSyncJobOutput")
    CreateWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateWorkspaceInput", name: "CreateWorkspaceInput")
    CreateWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#CreateWorkspaceOutput", name: "CreateWorkspaceOutput")
    DataConnector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DataConnector", name: "DataConnector")
    DataType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DataType", name: "DataType")
    DataValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DataValue", name: "DataValue")
    DataValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#DataValueList", name: "DataValueList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DataValueMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#DataValueMap", name: "DataValueMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DeleteComponentTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteComponentTypeInput", name: "DeleteComponentTypeInput")
    DeleteComponentTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteComponentTypeOutput", name: "DeleteComponentTypeOutput")
    DeleteEntityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteEntityInput", name: "DeleteEntityInput")
    DeleteEntityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteEntityOutput", name: "DeleteEntityOutput")
    DeleteSceneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteSceneInput", name: "DeleteSceneInput")
    DeleteSceneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteSceneOutput", name: "DeleteSceneOutput")
    DeleteSyncJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteSyncJobInput", name: "DeleteSyncJobInput")
    DeleteSyncJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteSyncJobOutput", name: "DeleteSyncJobOutput")
    DeleteWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteWorkspaceInput", name: "DeleteWorkspaceInput")
    DeleteWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DeleteWorkspaceOutput", name: "DeleteWorkspaceOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#DestinationConfiguration", name: "DestinationConfiguration")
    DestinationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#DestinationType", name: "DestinationType", traits: {"smithy.api#enum" => [{"name" => "S3", "value" => "s3"}, {"name" => "IOTSITEWISE", "value" => "iotsitewise"}, {"name" => "IOTTWINMAKER", "value" => "iottwinmaker"}]})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.iottwinmaker#Double", name: "Double")
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|^[a-zA-Z0-9][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9]+$"})
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#EntityName", name: "EntityName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\u0000-\\u001F\\u007F]+$"})
    EntityPropertyReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#EntityPropertyReference", name: "EntityPropertyReference")
    EntitySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#EntitySummaries", name: "EntitySummaries")
    EntitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#EntitySummary", name: "EntitySummary")
    Entries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#Entries", name: "Entries", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ErrorCode", name: "ErrorCode", traits: {"smithy.api#enum" => [{"name" => "VALIDATION_ERROR", "value" => "VALIDATION_ERROR"}, {"name" => "INTERNAL_FAILURE", "value" => "INTERNAL_FAILURE"}, {"name" => "SYNC_INITIALIZING_ERROR", "value" => "SYNC_INITIALIZING_ERROR"}, {"name" => "SYNC_CREATING_ERROR", "value" => "SYNC_CREATING_ERROR"}, {"name" => "SYNC_PROCESSING_ERROR", "value" => "SYNC_PROCESSING_ERROR"}, {"name" => "SYNC_DELETING_ERROR", "value" => "SYNC_DELETING_ERROR"}, {"name" => "PROCESSING_ERROR", "value" => "PROCESSING_ERROR"}, {"name" => "COMPOSITE_COMPONENT_FAILURE", "value" => "COMPOSITE_COMPONENT_FAILURE"}]})
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ErrorDetails", name: "ErrorDetails")
    ErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#ErrorEntries", name: "ErrorEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    Errors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#Errors", name: "Errors", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ExceptionMessage", name: "ExceptionMessage")
    ExecuteQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ExecuteQueryInput", name: "ExecuteQueryInput")
    ExecuteQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ExecuteQueryOutput", name: "ExecuteQueryOutput")
    Expression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Expression", name: "Expression", traits: {"smithy.api#length" => {"min" => 1, "max" => 316}, "smithy.api#pattern" => "^(^\\$\\{Parameters\\.[a-zA-z]+([a-zA-z_0-9]*)}$)$"})
    ExtendsFrom = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#ExtendsFrom", name: "ExtendsFrom")
    ExternalIdProperty = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#ExternalIdProperty", name: "ExternalIdProperty")
    FilterByAsset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#FilterByAsset", name: "FilterByAsset")
    FilterByAssetModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#FilterByAssetModel", name: "FilterByAssetModel")
    FilterByComponentType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#FilterByComponentType", name: "FilterByComponentType")
    FilterByEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#FilterByEntity", name: "FilterByEntity")
    FunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#FunctionRequest", name: "FunctionRequest")
    FunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#FunctionResponse", name: "FunctionResponse")
    FunctionsRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#FunctionsRequest", name: "FunctionsRequest")
    FunctionsResponse = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#FunctionsResponse", name: "FunctionsResponse")
    GeneratedSceneMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#GeneratedSceneMetadataMap", name: "GeneratedSceneMetadataMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    GetComponentTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetComponentTypeInput", name: "GetComponentTypeInput")
    GetComponentTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetComponentTypeOutput", name: "GetComponentTypeOutput")
    GetEntityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetEntityInput", name: "GetEntityInput")
    GetEntityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetEntityOutput", name: "GetEntityOutput")
    GetMetadataTransferJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetMetadataTransferJobRequest", name: "GetMetadataTransferJobRequest")
    GetMetadataTransferJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetMetadataTransferJobResponse", name: "GetMetadataTransferJobResponse")
    GetPricingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetPricingPlanInput", name: "GetPricingPlanInput")
    GetPricingPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetPricingPlanOutput", name: "GetPricingPlanOutput")
    GetPropertyValueHistoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetPropertyValueHistoryInput", name: "GetPropertyValueHistoryInput")
    GetPropertyValueHistoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetPropertyValueHistoryOutput", name: "GetPropertyValueHistoryOutput")
    GetPropertyValueInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetPropertyValueInput", name: "GetPropertyValueInput")
    GetPropertyValueOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetPropertyValueOutput", name: "GetPropertyValueOutput")
    GetSceneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetSceneInput", name: "GetSceneInput")
    GetSceneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetSceneOutput", name: "GetSceneOutput")
    GetSyncJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetSyncJobInput", name: "GetSyncJobInput")
    GetSyncJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetSyncJobOutput", name: "GetSyncJobOutput")
    GetWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetWorkspaceInput", name: "GetWorkspaceInput")
    GetWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#GetWorkspaceOutput", name: "GetWorkspaceOutput")
    GroupType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#GroupType", name: "GroupType", traits: {"smithy.api#enum" => [{"name" => "TABULAR", "value" => "TABULAR"}]})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z_0-9][a-zA-Z_\\-0-9]*[a-zA-Z0-9]+$"})
    IdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#IdOrArn", name: "IdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z_0-9][a-zA-Z_\\-0-9]*[a-zA-Z0-9]+$|^arn:((aws)|(aws-cn)|(aws-us-gov)):iottwinmaker:[a-z0-9-]+:[0-9]{12}:[\\/a-zA-Z0-9_-]+$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iottwinmaker#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InterpolationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#InterpolationParameters", name: "InterpolationParameters")
    InterpolationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#InterpolationType", name: "InterpolationType", traits: {"smithy.api#enum" => [{"name" => "LINEAR", "value" => "LINEAR"}]})
    IntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iottwinmaker#IntervalInSeconds", name: "IntervalInSeconds")
    IotSiteWiseSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#IotSiteWiseSourceConfiguration", name: "IotSiteWiseSourceConfiguration")
    IotSiteWiseSourceConfigurationFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.iottwinmaker#IotSiteWiseSourceConfigurationFilter", name: "IotSiteWiseSourceConfigurationFilter")
    IotSiteWiseSourceConfigurationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#IotSiteWiseSourceConfigurationFilters", name: "IotSiteWiseSourceConfigurationFilters")
    IotTwinMakerDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#IotTwinMakerDestinationConfiguration", name: "IotTwinMakerDestinationConfiguration")
    IotTwinMakerSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#IotTwinMakerSourceConfiguration", name: "IotTwinMakerSourceConfiguration")
    IotTwinMakerSourceConfigurationFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.iottwinmaker#IotTwinMakerSourceConfigurationFilter", name: "IotTwinMakerSourceConfigurationFilter")
    IotTwinMakerSourceConfigurationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#IotTwinMakerSourceConfigurationFilters", name: "IotTwinMakerSourceConfigurationFilters")
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#LambdaArn", name: "LambdaArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:((aws)|(aws-cn)|(aws-us-gov)):lambda:[a-z0-9-]+:[0-9]{12}:function:[\\/a-zA-Z0-9_-]+$"})
    LambdaFunction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#LambdaFunction", name: "LambdaFunction")
    LinkedService = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#LinkedService", name: "LinkedService", traits: {"smithy.api#pattern" => "^[a-zA-Z_0-9]+$"})
    LinkedServices = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#LinkedServices", name: "LinkedServices", traits: {"smithy.api#uniqueItems" => {}})
    ListComponentTypesFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.iottwinmaker#ListComponentTypesFilter", name: "ListComponentTypesFilter")
    ListComponentTypesFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#ListComponentTypesFilters", name: "ListComponentTypesFilters")
    ListComponentTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListComponentTypesInput", name: "ListComponentTypesInput")
    ListComponentTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListComponentTypesOutput", name: "ListComponentTypesOutput")
    ListComponentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListComponentsRequest", name: "ListComponentsRequest")
    ListComponentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListComponentsResponse", name: "ListComponentsResponse")
    ListEntitiesFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.iottwinmaker#ListEntitiesFilter", name: "ListEntitiesFilter")
    ListEntitiesFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#ListEntitiesFilters", name: "ListEntitiesFilters")
    ListEntitiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListEntitiesInput", name: "ListEntitiesInput")
    ListEntitiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListEntitiesOutput", name: "ListEntitiesOutput")
    ListMetadataTransferJobsFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.iottwinmaker#ListMetadataTransferJobsFilter", name: "ListMetadataTransferJobsFilter")
    ListMetadataTransferJobsFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#ListMetadataTransferJobsFilters", name: "ListMetadataTransferJobsFilters")
    ListMetadataTransferJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListMetadataTransferJobsRequest", name: "ListMetadataTransferJobsRequest")
    ListMetadataTransferJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListMetadataTransferJobsResponse", name: "ListMetadataTransferJobsResponse")
    ListPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListPropertiesRequest", name: "ListPropertiesRequest")
    ListPropertiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListPropertiesResponse", name: "ListPropertiesResponse")
    ListScenesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListScenesInput", name: "ListScenesInput")
    ListScenesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListScenesOutput", name: "ListScenesOutput")
    ListSyncJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListSyncJobsInput", name: "ListSyncJobsInput")
    ListSyncJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListSyncJobsOutput", name: "ListSyncJobsOutput")
    ListSyncResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListSyncResourcesInput", name: "ListSyncResourcesInput")
    ListSyncResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListSyncResourcesOutput", name: "ListSyncResourcesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListWorkspacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListWorkspacesInput", name: "ListWorkspacesInput")
    ListWorkspacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ListWorkspacesOutput", name: "ListWorkspacesOutput")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iottwinmaker#Long", name: "Long")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iottwinmaker#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 200}})
    MetadataTransferJobProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#MetadataTransferJobProgress", name: "MetadataTransferJobProgress")
    MetadataTransferJobState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#MetadataTransferJobState", name: "MetadataTransferJobState", traits: {"smithy.api#enum" => [{"name" => "VALIDATING", "value" => "VALIDATING"}, {"name" => "PENDING", "value" => "PENDING"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "CANCELLING", "value" => "CANCELLING"}, {"name" => "ERROR", "value" => "ERROR"}, {"name" => "COMPLETED", "value" => "COMPLETED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}]})
    MetadataTransferJobStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#MetadataTransferJobStatus", name: "MetadataTransferJobStatus")
    MetadataTransferJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#MetadataTransferJobSummaries", name: "MetadataTransferJobSummaries")
    MetadataTransferJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#MetadataTransferJobSummary", name: "MetadataTransferJobSummary")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_\\-0-9]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 17880}, "smithy.api#pattern" => ".*"})
    Order = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Order", name: "Order", traits: {"smithy.api#enum" => [{"name" => "ASCENDING", "value" => "ASCENDING"}, {"name" => "DESCENDING", "value" => "DESCENDING"}]})
    OrderBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#OrderBy", name: "OrderBy")
    OrderByList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#OrderByList", name: "OrderByList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OrderByTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#OrderByTime", name: "OrderByTime", traits: {"smithy.api#enum" => [{"name" => "ASCENDING", "value" => "ASCENDING"}, {"name" => "DESCENDING", "value" => "DESCENDING"}]})
    ParentEntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ParentEntityId", name: "ParentEntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\$ROOT|^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|^[a-zA-Z0-9][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9]+$"})
    ParentEntityUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ParentEntityUpdateRequest", name: "ParentEntityUpdateRequest")
    ParentEntityUpdateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#ParentEntityUpdateType", name: "ParentEntityUpdateType", traits: {"smithy.api#enum" => [{"name" => "UPDATE", "value" => "UPDATE"}, {"name" => "DELETE", "value" => "DELETE"}]})
    PricingBundles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#PricingBundles", name: "PricingBundles", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PricingMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#PricingMode", name: "PricingMode", traits: {"smithy.api#enum" => [{"name" => "BASIC", "value" => "BASIC"}, {"name" => "STANDARD", "value" => "STANDARD"}, {"name" => "TIERED_BUNDLE", "value" => "TIERED_BUNDLE"}]})
    PricingPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PricingPlan", name: "PricingPlan")
    PricingTier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#PricingTier", name: "PricingTier", traits: {"smithy.api#enum" => [{"name" => "TIER_1", "value" => "TIER_1"}, {"name" => "TIER_2", "value" => "TIER_2"}, {"name" => "TIER_3", "value" => "TIER_3"}, {"name" => "TIER_4", "value" => "TIER_4"}]})
    PropertyDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyDefinitionRequest", name: "PropertyDefinitionRequest")
    PropertyDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyDefinitionResponse", name: "PropertyDefinitionResponse")
    PropertyDefinitionsRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#PropertyDefinitionsRequest", name: "PropertyDefinitionsRequest")
    PropertyDefinitionsResponse = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#PropertyDefinitionsResponse", name: "PropertyDefinitionsResponse")
    PropertyDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#PropertyDisplayName", name: "PropertyDisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "[^\\u0000-\\u001F\\u007F]*"})
    PropertyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyFilter", name: "PropertyFilter")
    PropertyFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#PropertyFilters", name: "PropertyFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PropertyGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyGroupRequest", name: "PropertyGroupRequest")
    PropertyGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyGroupResponse", name: "PropertyGroupResponse")
    PropertyGroupUpdateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#PropertyGroupUpdateType", name: "PropertyGroupUpdateType", traits: {"smithy.api#enum" => [{"name" => "UPDATE", "value" => "UPDATE"}, {"name" => "DELETE", "value" => "DELETE"}, {"name" => "CREATE", "value" => "CREATE"}]})
    PropertyGroupsRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#PropertyGroupsRequest", name: "PropertyGroupsRequest")
    PropertyGroupsResponse = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#PropertyGroupsResponse", name: "PropertyGroupsResponse")
    PropertyLatestValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyLatestValue", name: "PropertyLatestValue")
    PropertyLatestValueMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#PropertyLatestValueMap", name: "PropertyLatestValueMap")
    PropertyNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#PropertyNames", name: "PropertyNames", traits: {"smithy.api#uniqueItems" => {}})
    PropertyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyRequest", name: "PropertyRequest")
    PropertyRequests = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#PropertyRequests", name: "PropertyRequests")
    PropertyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyResponse", name: "PropertyResponse")
    PropertyResponses = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#PropertyResponses", name: "PropertyResponses")
    PropertySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#PropertySummaries", name: "PropertySummaries")
    PropertySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertySummary", name: "PropertySummary")
    PropertyTableValue = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#PropertyTableValue", name: "PropertyTableValue")
    PropertyUpdateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#PropertyUpdateType", name: "PropertyUpdateType", traits: {"smithy.api#enum" => [{"name" => "UPDATE", "value" => "UPDATE"}, {"name" => "DELETE", "value" => "DELETE"}, {"name" => "CREATE", "value" => "CREATE"}, {"name" => "RESET_VALUE", "value" => "RESET_VALUE"}]})
    PropertyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyValue", name: "PropertyValue")
    PropertyValueEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyValueEntry", name: "PropertyValueEntry")
    PropertyValueHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#PropertyValueHistory", name: "PropertyValueHistory")
    PropertyValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#PropertyValueList", name: "PropertyValueList")
    PropertyValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#PropertyValues", name: "PropertyValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    QueryResultValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.iottwinmaker#QueryResultValue", name: "QueryResultValue")
    QueryServiceMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iottwinmaker#QueryServiceMaxResults", name: "QueryServiceMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    QueryStatement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#QueryStatement", name: "QueryStatement", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    QueryTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#QueryTimeoutException", name: "QueryTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    Relationship = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#Relationship", name: "Relationship")
    RelationshipValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#RelationshipValue", name: "RelationshipValue")
    RequiredProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#RequiredProperties", name: "RequiredProperties", traits: {"smithy.api#uniqueItems" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:((aws)|(aws-cn)|(aws-us-gov)):iam::[0-9]{12}:role/"})
    Row = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#Row", name: "Row")
    RowData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#RowData", name: "RowData")
    Rows = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#Rows", name: "Rows")
    S3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#S3DestinationConfiguration", name: "S3DestinationConfiguration")
    S3DestinationLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#S3DestinationLocation", name: "S3DestinationLocation", traits: {"smithy.api#pattern" => "(^arn:((aws)|(aws-cn)|(aws-us-gov)):s3:::)([/a-zA-Z0-9_-]+$)"})
    S3Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#S3Location", name: "S3Location", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "(^arn:((aws)|(aws-cn)|(aws-us-gov)):s3:::)([a-zA-Z0-9_-]+$)"})
    S3SourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#S3SourceConfiguration", name: "S3SourceConfiguration")
    S3SourceLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#S3SourceLocation", name: "S3SourceLocation", traits: {"smithy.api#pattern" => "(^arn:((aws)|(aws-cn)|(aws-us-gov)):s3:::)([a-zA-Z0-9_-]+)\\/([/.a-zA-Z0-9_-]+$)"})
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#S3Url", name: "S3Url", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[sS]3://[A-Za-z0-9._/-]+$"})
    SceneCapabilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#SceneCapabilities", name: "SceneCapabilities", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SceneCapability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SceneCapability", name: "SceneCapability", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    SceneError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#SceneError", name: "SceneError")
    SceneErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SceneErrorCode", name: "SceneErrorCode", traits: {"smithy.api#enum" => [{"name" => "MATTERPORT_ERROR", "value" => "MATTERPORT_ERROR"}]})
    SceneMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#SceneMetadataMap", name: "SceneMetadataMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SceneMetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SceneMetadataValue", name: "SceneMetadataValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    SceneSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#SceneSummaries", name: "SceneSummaries")
    SceneSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#SceneSummary", name: "SceneSummary")
    Scope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Scope", name: "Scope", traits: {"smithy.api#enum" => [{"name" => "ENTITY", "value" => "ENTITY"}, {"name" => "WORKSPACE", "value" => "WORKSPACE"}]})
    SelectedPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#SelectedPropertyList", name: "SelectedPropertyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SiteWiseExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SiteWiseExternalId", name: "SiteWiseExternalId", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}, "smithy.api#pattern" => "[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+"})
    SourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#SourceConfiguration", name: "SourceConfiguration")
    SourceConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#SourceConfigurations", name: "SourceConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SourceType", name: "SourceType", traits: {"smithy.api#enum" => [{"name" => "S3", "value" => "s3"}, {"name" => "IOTSITEWISE", "value" => "iotsitewise"}, {"name" => "IOTTWINMAKER", "value" => "iottwinmaker"}]})
    State = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#State", name: "State", traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING"}, {"name" => "UPDATING", "value" => "UPDATING"}, {"name" => "DELETING", "value" => "DELETING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "ERROR", "value" => "ERROR"}]})
    Status = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#Status", name: "Status")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#String", name: "String", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    SyncJobState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SyncJobState", name: "SyncJobState", traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING"}, {"name" => "INITIALIZING", "value" => "INITIALIZING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "DELETING", "value" => "DELETING"}, {"name" => "ERROR", "value" => "ERROR"}]})
    SyncJobStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#SyncJobStatus", name: "SyncJobStatus")
    SyncJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#SyncJobSummaries", name: "SyncJobSummaries")
    SyncJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#SyncJobSummary", name: "SyncJobSummary")
    SyncResourceFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.iottwinmaker#SyncResourceFilter", name: "SyncResourceFilter")
    SyncResourceFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#SyncResourceFilters", name: "SyncResourceFilters")
    SyncResourceState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SyncResourceState", name: "SyncResourceState", traits: {"smithy.api#enum" => [{"name" => "INITIALIZING", "value" => "INITIALIZING"}, {"name" => "PROCESSING", "value" => "PROCESSING"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "IN_SYNC", "value" => "IN_SYNC"}, {"name" => "ERROR", "value" => "ERROR"}]})
    SyncResourceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#SyncResourceStatus", name: "SyncResourceStatus")
    SyncResourceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#SyncResourceSummaries", name: "SyncResourceSummaries")
    SyncResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#SyncResourceSummary", name: "SyncResourceSummary")
    SyncResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SyncResourceType", name: "SyncResourceType", traits: {"smithy.api#enum" => [{"name" => "ENTITY", "value" => "ENTITY"}, {"name" => "COMPONENT_TYPE", "value" => "COMPONENT_TYPE"}]})
    SyncSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#SyncSource", name: "SyncSource", traits: {"smithy.api#pattern" => "^[a-zA-Z_0-9]+$"})
    TabularConditions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#TabularConditions", name: "TabularConditions")
    TabularPropertyValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#TabularPropertyValue", name: "TabularPropertyValue")
    TabularPropertyValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#TabularPropertyValues", name: "TabularPropertyValues")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iottwinmaker#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Time = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Time", name: "Time", traits: {"smithy.api#length" => {"min" => 20, "max" => 35}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iottwinmaker#Timestamp", name: "Timestamp")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TwinMakerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#TwinMakerArn", name: "TwinMakerArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:((aws)|(aws-cn)|(aws-us-gov)):iottwinmaker:[a-z0-9-]+:[0-9]{12}:[\\/a-zA-Z0-9_\\-\\.:]+$"})
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Type", name: "Type", traits: {"smithy.api#enum" => [{"name" => "RELATIONSHIP", "value" => "RELATIONSHIP"}, {"name" => "STRING", "value" => "STRING"}, {"name" => "LONG", "value" => "LONG"}, {"name" => "BOOLEAN", "value" => "BOOLEAN"}, {"name" => "INTEGER", "value" => "INTEGER"}, {"name" => "DOUBLE", "value" => "DOUBLE"}, {"name" => "LIST", "value" => "LIST"}, {"name" => "MAP", "value" => "MAP"}]})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateComponentTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdateComponentTypeInput", name: "UpdateComponentTypeInput")
    UpdateComponentTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdateComponentTypeOutput", name: "UpdateComponentTypeOutput")
    UpdateEntityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdateEntityInput", name: "UpdateEntityInput")
    UpdateEntityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdateEntityOutput", name: "UpdateEntityOutput")
    UpdatePricingPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdatePricingPlanInput", name: "UpdatePricingPlanInput")
    UpdatePricingPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdatePricingPlanOutput", name: "UpdatePricingPlanOutput")
    UpdateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#UpdateReason", name: "UpdateReason", traits: {"smithy.api#enum" => [{"name" => "DEFAULT", "value" => "DEFAULT"}, {"name" => "PRICING_TIER_UPDATE", "value" => "PRICING_TIER_UPDATE"}, {"name" => "ENTITY_COUNT_UPDATE", "value" => "ENTITY_COUNT_UPDATE"}, {"name" => "PRICING_MODE_UPDATE", "value" => "PRICING_MODE_UPDATE"}, {"name" => "OVERWRITTEN", "value" => "OVERWRITTEN"}]})
    UpdateSceneInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdateSceneInput", name: "UpdateSceneInput")
    UpdateSceneOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdateSceneOutput", name: "UpdateSceneOutput")
    UpdateWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdateWorkspaceInput", name: "UpdateWorkspaceInput")
    UpdateWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#UpdateWorkspaceOutput", name: "UpdateWorkspaceOutput")
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Uuid", name: "Uuid", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#Value", name: "Value", traits: {"smithy.api#pattern" => ".*"})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#Values", name: "Values")
    WorkspaceDeleteMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iottwinmaker#WorkspaceDeleteMessage", name: "WorkspaceDeleteMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    WorkspaceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iottwinmaker#WorkspaceSummaries", name: "WorkspaceSummaries")
    WorkspaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iottwinmaker#WorkspaceSummary", name: "WorkspaceSummary")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BatchPutPropertyError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyError.add_member(:entry, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueEntry, name: "entry", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyError.type = Types::BatchPutPropertyError
    BatchPutPropertyErrorEntry.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: Errors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyErrorEntry.type = Types::BatchPutPropertyErrorEntry
    BatchPutPropertyValuesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutPropertyValuesInput.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: Entries, name: "entries", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyValuesInput.type = Types::BatchPutPropertyValuesInput
    BatchPutPropertyValuesOutput.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorEntries, name: "errorEntries", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyValuesOutput.type = Types::BatchPutPropertyValuesOutput
    BundleInformation.add_member(:bundle_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingBundles, name: "bundleNames", traits: {"smithy.api#required" => {}}))
    BundleInformation.add_member(:pricing_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingTier, name: "pricingTier"))
    BundleInformation.type = Types::BundleInformation
    CancelMetadataTransferJobRequest.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "metadataTransferJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelMetadataTransferJobRequest.type = Types::CancelMetadataTransferJobRequest
    CancelMetadataTransferJobResponse.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "metadataTransferJobId", traits: {"smithy.api#required" => {}}))
    CancelMetadataTransferJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CancelMetadataTransferJobResponse.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    CancelMetadataTransferJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CancelMetadataTransferJobResponse.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobProgress, name: "progress"))
    CancelMetadataTransferJobResponse.type = Types::CancelMetadataTransferJobResponse
    ColumnDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "name"))
    ColumnDescription.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnType, name: "type"))
    ColumnDescription.type = Types::ColumnDescription
    ColumnDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDescription, name: "member"))
    ComponentPropertyGroupRequest.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "groupType"))
    ComponentPropertyGroupRequest.add_member(:property_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNames, name: "propertyNames"))
    ComponentPropertyGroupRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroupUpdateType, name: "updateType"))
    ComponentPropertyGroupRequest.type = Types::ComponentPropertyGroupRequest
    ComponentPropertyGroupRequests.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    ComponentPropertyGroupRequests.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyGroupRequest, name: "value"))
    ComponentPropertyGroupResponse.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "groupType", traits: {"smithy.api#required" => {}}))
    ComponentPropertyGroupResponse.add_member(:property_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNames, name: "propertyNames", traits: {"smithy.api#required" => {}}))
    ComponentPropertyGroupResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isInherited", traits: {"smithy.api#required" => {}}))
    ComponentPropertyGroupResponse.type = Types::ComponentPropertyGroupResponse
    ComponentPropertyGroupResponses.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    ComponentPropertyGroupResponses.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyGroupResponse, name: "value"))
    ComponentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ComponentRequest.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId"))
    ComponentRequest.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyRequests, name: "properties"))
    ComponentRequest.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyGroupRequests, name: "propertyGroups"))
    ComponentRequest.type = Types::ComponentRequest
    ComponentResponse.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "componentName"))
    ComponentResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ComponentResponse.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId"))
    ComponentResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    ComponentResponse.add_member(:defined_in, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "definedIn"))
    ComponentResponse.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyResponses, name: "properties"))
    ComponentResponse.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyGroupResponses, name: "propertyGroups"))
    ComponentResponse.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource"))
    ComponentResponse.add_member(:are_all_properties_returned, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "areAllPropertiesReturned"))
    ComponentResponse.add_member(:composite_components, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentResponse, name: "compositeComponents"))
    ComponentResponse.add_member(:are_all_composite_components_returned, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "areAllCompositeComponentsReturned"))
    ComponentResponse.type = Types::ComponentResponse
    ComponentSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummary, name: "member"))
    ComponentSummary.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "componentName", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:defined_in, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "definedIn"))
    ComponentSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ComponentSummary.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyGroupResponses, name: "propertyGroups"))
    ComponentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource"))
    ComponentSummary.add_member(:component_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPath, name: "componentPath"))
    ComponentSummary.type = Types::ComponentSummary
    ComponentTypeSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeSummary, name: "member"))
    ComponentTypeSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ComponentTypeSummary.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    ComponentTypeSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    ComponentTypeSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    ComponentTypeSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ComponentTypeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    ComponentTypeSummary.add_member(:component_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeName, name: "componentTypeName"))
    ComponentTypeSummary.type = Types::ComponentTypeSummary
    ComponentUpdateRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentUpdateType, name: "updateType"))
    ComponentUpdateRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ComponentUpdateRequest.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId"))
    ComponentUpdateRequest.add_member(:property_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyRequests, name: "propertyUpdates"))
    ComponentUpdateRequest.add_member(:property_group_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyGroupRequests, name: "propertyGroupUpdates"))
    ComponentUpdateRequest.type = Types::ComponentUpdateRequest
    ComponentUpdatesMapRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    ComponentUpdatesMapRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentUpdateRequest, name: "value"))
    ComponentsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    ComponentsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentResponse, name: "value"))
    ComponentsMapRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    ComponentsMapRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentRequest, name: "value"))
    CompositeComponentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CompositeComponentRequest.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyRequests, name: "properties"))
    CompositeComponentRequest.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyGroupRequests, name: "propertyGroups"))
    CompositeComponentRequest.type = Types::CompositeComponentRequest
    CompositeComponentResponse.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    CompositeComponentResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummary, name: "value"))
    CompositeComponentTypeRequest.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId"))
    CompositeComponentTypeRequest.type = Types::CompositeComponentTypeRequest
    CompositeComponentTypeResponse.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId"))
    CompositeComponentTypeResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isInherited"))
    CompositeComponentTypeResponse.type = Types::CompositeComponentTypeResponse
    CompositeComponentTypesRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    CompositeComponentTypesRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentTypeRequest, name: "value"))
    CompositeComponentTypesResponse.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    CompositeComponentTypesResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentTypeResponse, name: "value"))
    CompositeComponentUpdateRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentUpdateType, name: "updateType"))
    CompositeComponentUpdateRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CompositeComponentUpdateRequest.add_member(:property_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyRequests, name: "propertyUpdates"))
    CompositeComponentUpdateRequest.add_member(:property_group_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyGroupRequests, name: "propertyGroupUpdates"))
    CompositeComponentUpdateRequest.type = Types::CompositeComponentUpdateRequest
    CompositeComponentUpdatesMapRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPath, name: "key"))
    CompositeComponentUpdatesMapRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentUpdateRequest, name: "value"))
    CompositeComponentsMapRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPath, name: "key"))
    CompositeComponentsMapRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentRequest, name: "value"))
    Configuration.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    Configuration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    ConnectorFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConnectorFailureException.type = Types::ConnectorFailureException
    ConnectorTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConnectorTimeoutException.type = Types::ConnectorTimeoutException
    CreateComponentTypeInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateComponentTypeInput.add_member(:is_singleton, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isSingleton"))
    CreateComponentTypeInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateComponentTypeInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateComponentTypeInput.add_member(:property_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDefinitionsRequest, name: "propertyDefinitions"))
    CreateComponentTypeInput.add_member(:extends_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendsFrom, name: "extendsFrom"))
    CreateComponentTypeInput.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionsRequest, name: "functions"))
    CreateComponentTypeInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateComponentTypeInput.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroupsRequest, name: "propertyGroups"))
    CreateComponentTypeInput.add_member(:component_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeName, name: "componentTypeName"))
    CreateComponentTypeInput.add_member(:composite_component_types, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentTypesRequest, name: "compositeComponentTypes"))
    CreateComponentTypeInput.type = Types::CreateComponentTypeInput
    CreateComponentTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateComponentTypeOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateComponentTypeOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    CreateComponentTypeOutput.type = Types::CreateComponentTypeOutput
    CreateEntityInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEntityInput.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId"))
    CreateEntityInput.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "entityName", traits: {"smithy.api#required" => {}}))
    CreateEntityInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateEntityInput.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentsMapRequest, name: "components"))
    CreateEntityInput.add_member(:composite_components, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentsMapRequest, name: "compositeComponents"))
    CreateEntityInput.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentEntityId, name: "parentEntityId"))
    CreateEntityInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateEntityInput.type = Types::CreateEntityInput
    CreateEntityOutput.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#required" => {}}))
    CreateEntityOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateEntityOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateEntityOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    CreateEntityOutput.type = Types::CreateEntityOutput
    CreateMetadataTransferJobRequest.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "metadataTransferJobId"))
    CreateMetadataTransferJobRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateMetadataTransferJobRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfigurations, name: "sources", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "destination", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobRequest.type = Types::CreateMetadataTransferJobRequest
    CreateMetadataTransferJobResponse.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "metadataTransferJobId", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobResponse.type = Types::CreateMetadataTransferJobResponse
    CreateSceneInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSceneInput.add_member(:scene_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "sceneId", traits: {"smithy.api#required" => {}}))
    CreateSceneInput.add_member(:content_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "contentLocation", traits: {"smithy.api#required" => {}}))
    CreateSceneInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateSceneInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneCapabilities, name: "capabilities"))
    CreateSceneInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSceneInput.add_member(:scene_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneMetadataMap, name: "sceneMetadata"))
    CreateSceneInput.type = Types::CreateSceneInput
    CreateSceneOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSceneOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateSceneOutput.type = Types::CreateSceneOutput
    CreateSyncJobInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSyncJobInput.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSyncJobInput.add_member(:sync_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "syncRole", traits: {"smithy.api#required" => {}}))
    CreateSyncJobInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSyncJobInput.type = Types::CreateSyncJobInput
    CreateSyncJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSyncJobOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateSyncJobOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncJobState, name: "state", traits: {"smithy.api#required" => {}}))
    CreateSyncJobOutput.type = Types::CreateSyncJobOutput
    CreateWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateWorkspaceInput.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    CreateWorkspaceInput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "role"))
    CreateWorkspaceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateWorkspaceInput.type = Types::CreateWorkspaceInput
    CreateWorkspaceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.type = Types::CreateWorkspaceOutput
    DataConnector.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunction, name: "lambda"))
    DataConnector.add_member(:is_native, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isNative"))
    DataConnector.type = Types::DataConnector
    DataType.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type", traits: {"smithy.api#required" => {}}))
    DataType.add_member(:nested_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataType, name: "nestedType"))
    DataType.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValueList, name: "allowedValues"))
    DataType.add_member(:unit_of_measure, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "unitOfMeasure"))
    DataType.add_member(:relationship, ::Smithy::Schema::Shapes::MemberShape.new(target: Relationship, name: "relationship"))
    DataType.type = Types::DataType
    DataValue.add_member(:boolean_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "booleanValue"))
    DataValue.add_member(:double_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "doubleValue"))
    DataValue.add_member(:integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "integerValue"))
    DataValue.add_member(:long_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "longValue"))
    DataValue.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stringValue"))
    DataValue.add_member(:list_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValueList, name: "listValue"))
    DataValue.add_member(:map_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValueMap, name: "mapValue"))
    DataValue.add_member(:relationship_value, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipValue, name: "relationshipValue"))
    DataValue.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "expression"))
    DataValue.type = Types::DataValue
    DataValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "member"))
    DataValueMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    DataValueMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "value"))
    DeleteComponentTypeInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentTypeInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentTypeInput.type = Types::DeleteComponentTypeInput
    DeleteComponentTypeOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    DeleteComponentTypeOutput.type = Types::DeleteComponentTypeOutput
    DeleteEntityInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEntityInput.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEntityInput.add_member(:is_recursive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isRecursive", traits: {"smithy.api#httpQuery" => "isRecursive"}))
    DeleteEntityInput.type = Types::DeleteEntityInput
    DeleteEntityOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    DeleteEntityOutput.type = Types::DeleteEntityOutput
    DeleteSceneInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSceneInput.add_member(:scene_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "sceneId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSceneInput.type = Types::DeleteSceneInput
    DeleteSceneOutput.type = Types::DeleteSceneOutput
    DeleteSyncJobInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSyncJobInput.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSyncJobInput.type = Types::DeleteSyncJobInput
    DeleteSyncJobOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncJobState, name: "state", traits: {"smithy.api#required" => {}}))
    DeleteSyncJobOutput.type = Types::DeleteSyncJobOutput
    DeleteWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceInput.type = Types::DeleteWorkspaceInput
    DeleteWorkspaceOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDeleteMessage, name: "message"))
    DeleteWorkspaceOutput.type = Types::DeleteWorkspaceOutput
    DestinationConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "type", traits: {"smithy.api#required" => {}}))
    DestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "s3Configuration"))
    DestinationConfiguration.add_member(:iot_twin_maker_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IotTwinMakerDestinationConfiguration, name: "iotTwinMakerConfiguration"))
    DestinationConfiguration.type = Types::DestinationConfiguration
    EntityPropertyReference.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "componentName"))
    EntityPropertyReference.add_member(:component_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPath, name: "componentPath"))
    EntityPropertyReference.add_member(:external_id_property, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIdProperty, name: "externalIdProperty"))
    EntityPropertyReference.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId"))
    EntityPropertyReference.add_member(:property_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "propertyName", traits: {"smithy.api#required" => {}}))
    EntityPropertyReference.type = Types::EntityPropertyReference
    EntitySummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitySummary, name: "member"))
    EntitySummary.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "entityName", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentEntityId, name: "parentEntityId"))
    EntitySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    EntitySummary.add_member(:has_child_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hasChildEntities"))
    EntitySummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    EntitySummary.type = Types::EntitySummary
    Entries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueEntry, name: "member"))
    ErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    ErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ErrorDetails.type = Types::ErrorDetails
    ErrorEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutPropertyErrorEntry, name: "member"))
    Errors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutPropertyError, name: "member"))
    ExecuteQueryInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:query_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatement, name: "queryStatement", traits: {"smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryServiceMaxResults, name: "maxResults"))
    ExecuteQueryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ExecuteQueryInput.type = Types::ExecuteQueryInput
    ExecuteQueryOutput.add_member(:column_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDescriptions, name: "columnDescriptions"))
    ExecuteQueryOutput.add_member(:rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Rows, name: "rows"))
    ExecuteQueryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ExecuteQueryOutput.type = Types::ExecuteQueryOutput
    ExtendsFrom.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "member"))
    ExternalIdProperty.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ExternalIdProperty.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    FilterByAsset.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assetId"))
    FilterByAsset.add_member(:asset_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteWiseExternalId, name: "assetExternalId"))
    FilterByAsset.add_member(:include_offspring, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeOffspring"))
    FilterByAsset.add_member(:include_asset_model, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeAssetModel"))
    FilterByAsset.type = Types::FilterByAsset
    FilterByAssetModel.add_member(:asset_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assetModelId"))
    FilterByAssetModel.add_member(:asset_model_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteWiseExternalId, name: "assetModelExternalId"))
    FilterByAssetModel.add_member(:include_offspring, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeOffspring"))
    FilterByAssetModel.add_member(:include_assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeAssets"))
    FilterByAssetModel.type = Types::FilterByAssetModel
    FilterByComponentType.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    FilterByComponentType.type = Types::FilterByComponentType
    FilterByEntity.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#required" => {}}))
    FilterByEntity.type = Types::FilterByEntity
    FunctionRequest.add_member(:required_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredProperties, name: "requiredProperties"))
    FunctionRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "scope"))
    FunctionRequest.add_member(:implemented_by, ::Smithy::Schema::Shapes::MemberShape.new(target: DataConnector, name: "implementedBy"))
    FunctionRequest.type = Types::FunctionRequest
    FunctionResponse.add_member(:required_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredProperties, name: "requiredProperties"))
    FunctionResponse.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "scope"))
    FunctionResponse.add_member(:implemented_by, ::Smithy::Schema::Shapes::MemberShape.new(target: DataConnector, name: "implementedBy"))
    FunctionResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isInherited"))
    FunctionResponse.type = Types::FunctionResponse
    FunctionsRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    FunctionsRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionRequest, name: "value"))
    FunctionsResponse.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    FunctionsResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponse, name: "value"))
    GeneratedSceneMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    GeneratedSceneMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneMetadataValue, name: "value"))
    GetComponentTypeInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentTypeInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentTypeInput.type = Types::GetComponentTypeInput
    GetComponentTypeOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:is_singleton, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isSingleton"))
    GetComponentTypeOutput.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetComponentTypeOutput.add_member(:property_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDefinitionsResponse, name: "propertyDefinitions"))
    GetComponentTypeOutput.add_member(:extends_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendsFrom, name: "extendsFrom"))
    GetComponentTypeOutput.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionsResponse, name: "functions"))
    GetComponentTypeOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:is_abstract, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isAbstract"))
    GetComponentTypeOutput.add_member(:is_schema_initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isSchemaInitialized"))
    GetComponentTypeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    GetComponentTypeOutput.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroupsResponse, name: "propertyGroups"))
    GetComponentTypeOutput.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource"))
    GetComponentTypeOutput.add_member(:component_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeName, name: "componentTypeName"))
    GetComponentTypeOutput.add_member(:composite_component_types, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentTypesResponse, name: "compositeComponentTypes"))
    GetComponentTypeOutput.type = Types::GetComponentTypeOutput
    GetEntityInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEntityInput.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEntityInput.type = Types::GetEntityInput
    GetEntityOutput.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "entityName", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetEntityOutput.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentsMap, name: "components"))
    GetEntityOutput.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentEntityId, name: "parentEntityId", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:has_child_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hasChildEntities", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource"))
    GetEntityOutput.add_member(:are_all_components_returned, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "areAllComponentsReturned"))
    GetEntityOutput.type = Types::GetEntityOutput
    GetMetadataTransferJobRequest.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "metadataTransferJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMetadataTransferJobRequest.type = Types::GetMetadataTransferJobRequest
    GetMetadataTransferJobResponse.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "metadataTransferJobId", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetMetadataTransferJobResponse.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfigurations, name: "sources", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfiguration, name: "destination", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:metadata_transfer_job_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "metadataTransferJobRole", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:report_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reportUrl"))
    GetMetadataTransferJobResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobProgress, name: "progress"))
    GetMetadataTransferJobResponse.type = Types::GetMetadataTransferJobResponse
    GetPricingPlanInput.type = Types::GetPricingPlanInput
    GetPricingPlanOutput.add_member(:current_pricing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "currentPricingPlan", traits: {"smithy.api#required" => {}}))
    GetPricingPlanOutput.add_member(:pending_pricing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "pendingPricingPlan"))
    GetPricingPlanOutput.type = Types::GetPricingPlanOutput
    GetPropertyValueHistoryInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPropertyValueHistoryInput.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId"))
    GetPropertyValueHistoryInput.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "componentName"))
    GetPropertyValueHistoryInput.add_member(:component_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPath, name: "componentPath"))
    GetPropertyValueHistoryInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId"))
    GetPropertyValueHistoryInput.add_member(:selected_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedPropertyList, name: "selectedProperties", traits: {"smithy.api#required" => {}}))
    GetPropertyValueHistoryInput.add_member(:property_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyFilters, name: "propertyFilters"))
    GetPropertyValueHistoryInput.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startDateTime", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated and will throw an error in the future. Use startTime instead."}}))
    GetPropertyValueHistoryInput.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endDateTime", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated and will throw an error in the future. Use endTime instead."}}))
    GetPropertyValueHistoryInput.add_member(:interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: InterpolationParameters, name: "interpolation"))
    GetPropertyValueHistoryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetPropertyValueHistoryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetPropertyValueHistoryInput.add_member(:order_by_time, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderByTime, name: "orderByTime"))
    GetPropertyValueHistoryInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "startTime"))
    GetPropertyValueHistoryInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "endTime"))
    GetPropertyValueHistoryInput.type = Types::GetPropertyValueHistoryInput
    GetPropertyValueHistoryOutput.add_member(:property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueList, name: "propertyValues", traits: {"smithy.api#required" => {}}))
    GetPropertyValueHistoryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetPropertyValueHistoryOutput.type = Types::GetPropertyValueHistoryOutput
    GetPropertyValueInput.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "componentName"))
    GetPropertyValueInput.add_member(:component_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPath, name: "componentPath"))
    GetPropertyValueInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId"))
    GetPropertyValueInput.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId"))
    GetPropertyValueInput.add_member(:selected_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedPropertyList, name: "selectedProperties", traits: {"smithy.api#required" => {}}))
    GetPropertyValueInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPropertyValueInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetPropertyValueInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetPropertyValueInput.add_member(:property_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "propertyGroupName"))
    GetPropertyValueInput.add_member(:tabular_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: TabularConditions, name: "tabularConditions"))
    GetPropertyValueInput.type = Types::GetPropertyValueInput
    GetPropertyValueOutput.add_member(:property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyLatestValueMap, name: "propertyValues"))
    GetPropertyValueOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetPropertyValueOutput.add_member(:tabular_property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TabularPropertyValues, name: "tabularPropertyValues"))
    GetPropertyValueOutput.type = Types::GetPropertyValueOutput
    GetSceneInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSceneInput.add_member(:scene_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "sceneId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSceneInput.type = Types::GetSceneInput
    GetSceneOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:scene_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "sceneId", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:content_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "contentLocation", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetSceneOutput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneCapabilities, name: "capabilities"))
    GetSceneOutput.add_member(:scene_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneMetadataMap, name: "sceneMetadata"))
    GetSceneOutput.add_member(:generated_scene_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedSceneMetadataMap, name: "generatedSceneMetadata"))
    GetSceneOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneError, name: "error"))
    GetSceneOutput.type = Types::GetSceneOutput
    GetSyncJobInput.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSyncJobInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpQuery" => "workspace"}))
    GetSyncJobInput.type = Types::GetSyncJobInput
    GetSyncJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:sync_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "syncRole", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.type = Types::GetSyncJobOutput
    GetWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdOrArn, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkspaceInput.type = Types::GetWorkspaceInput
    GetWorkspaceOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetWorkspaceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetWorkspaceOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetWorkspaceOutput.add_member(:linked_services, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedServices, name: "linkedServices"))
    GetWorkspaceOutput.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    GetWorkspaceOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "role"))
    GetWorkspaceOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetWorkspaceOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetWorkspaceOutput.type = Types::GetWorkspaceOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InterpolationParameters.add_member(:interpolation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InterpolationType, name: "interpolationType"))
    InterpolationParameters.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntervalInSeconds, name: "intervalInSeconds"))
    InterpolationParameters.type = Types::InterpolationParameters
    IotSiteWiseSourceConfiguration.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: IotSiteWiseSourceConfigurationFilters, name: "filters"))
    IotSiteWiseSourceConfiguration.type = Types::IotSiteWiseSourceConfiguration
    IotSiteWiseSourceConfigurationFilter.add_member(:filter_by_asset_model, Types::IotSiteWiseSourceConfigurationFilter::FilterByAssetModel, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterByAssetModel, name: "filterByAssetModel"))
    IotSiteWiseSourceConfigurationFilter.add_member(:filter_by_asset, Types::IotSiteWiseSourceConfigurationFilter::FilterByAsset, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterByAsset, name: "filterByAsset"))
    IotSiteWiseSourceConfigurationFilter.add_member(:unknown, Types::IotSiteWiseSourceConfigurationFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IotSiteWiseSourceConfigurationFilter.type = Types::IotSiteWiseSourceConfigurationFilter
    IotSiteWiseSourceConfigurationFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IotSiteWiseSourceConfigurationFilter, name: "member"))
    IotTwinMakerDestinationConfiguration.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "workspace", traits: {"smithy.api#required" => {}}))
    IotTwinMakerDestinationConfiguration.type = Types::IotTwinMakerDestinationConfiguration
    IotTwinMakerSourceConfiguration.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "workspace", traits: {"smithy.api#required" => {}}))
    IotTwinMakerSourceConfiguration.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: IotTwinMakerSourceConfigurationFilters, name: "filters"))
    IotTwinMakerSourceConfiguration.type = Types::IotTwinMakerSourceConfiguration
    IotTwinMakerSourceConfigurationFilter.add_member(:filter_by_component_type, Types::IotTwinMakerSourceConfigurationFilter::FilterByComponentType, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterByComponentType, name: "filterByComponentType"))
    IotTwinMakerSourceConfigurationFilter.add_member(:filter_by_entity, Types::IotTwinMakerSourceConfigurationFilter::FilterByEntity, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterByEntity, name: "filterByEntity"))
    IotTwinMakerSourceConfigurationFilter.add_member(:unknown, Types::IotTwinMakerSourceConfigurationFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IotTwinMakerSourceConfigurationFilter.type = Types::IotTwinMakerSourceConfigurationFilter
    IotTwinMakerSourceConfigurationFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IotTwinMakerSourceConfigurationFilter, name: "member"))
    LambdaFunction.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "arn", traits: {"smithy.api#required" => {}}))
    LambdaFunction.type = Types::LambdaFunction
    LinkedServices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedService, name: "member"))
    ListComponentTypesFilter.add_member(:extends_from, Types::ListComponentTypesFilter::ExtendsFrom, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "extendsFrom"))
    ListComponentTypesFilter.add_member(:namespace, Types::ListComponentTypesFilter::Namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace"))
    ListComponentTypesFilter.add_member(:is_abstract, Types::ListComponentTypesFilter::IsAbstract, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isAbstract"))
    ListComponentTypesFilter.add_member(:unknown, Types::ListComponentTypesFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListComponentTypesFilter.type = Types::ListComponentTypesFilter
    ListComponentTypesFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListComponentTypesFilter, name: "member"))
    ListComponentTypesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentTypesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListComponentTypesFilters, name: "filters"))
    ListComponentTypesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListComponentTypesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListComponentTypesInput.type = Types::ListComponentTypesInput
    ListComponentTypesOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    ListComponentTypesOutput.add_member(:component_type_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeSummaries, name: "componentTypeSummaries", traits: {"smithy.api#required" => {}}))
    ListComponentTypesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListComponentTypesOutput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListComponentTypesOutput.type = Types::ListComponentTypesOutput
    ListComponentsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentsRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentsRequest.add_member(:component_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPath, name: "componentPath"))
    ListComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:component_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummaries, name: "componentSummaries", traits: {"smithy.api#required" => {}}))
    ListComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListEntitiesFilter.add_member(:parent_entity_id, Types::ListEntitiesFilter::ParentEntityId, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentEntityId, name: "parentEntityId"))
    ListEntitiesFilter.add_member(:component_type_id, Types::ListEntitiesFilter::ComponentTypeId, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId"))
    ListEntitiesFilter.add_member(:external_id, Types::ListEntitiesFilter::ExternalId, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "externalId"))
    ListEntitiesFilter.add_member(:unknown, Types::ListEntitiesFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListEntitiesFilter.type = Types::ListEntitiesFilter
    ListEntitiesFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEntitiesFilter, name: "member"))
    ListEntitiesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEntitiesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEntitiesFilters, name: "filters"))
    ListEntitiesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListEntitiesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListEntitiesInput.type = Types::ListEntitiesInput
    ListEntitiesOutput.add_member(:entity_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitySummaries, name: "entitySummaries"))
    ListEntitiesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListEntitiesOutput.type = Types::ListEntitiesOutput
    ListMetadataTransferJobsFilter.add_member(:workspace_id, Types::ListMetadataTransferJobsFilter::WorkspaceId, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId"))
    ListMetadataTransferJobsFilter.add_member(:state, Types::ListMetadataTransferJobsFilter::State, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobState, name: "state"))
    ListMetadataTransferJobsFilter.add_member(:unknown, Types::ListMetadataTransferJobsFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListMetadataTransferJobsFilter.type = Types::ListMetadataTransferJobsFilter
    ListMetadataTransferJobsFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMetadataTransferJobsFilter, name: "member"))
    ListMetadataTransferJobsRequest.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "sourceType", traits: {"smithy.api#required" => {}}))
    ListMetadataTransferJobsRequest.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "destinationType", traits: {"smithy.api#required" => {}}))
    ListMetadataTransferJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMetadataTransferJobsFilters, name: "filters"))
    ListMetadataTransferJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMetadataTransferJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListMetadataTransferJobsRequest.type = Types::ListMetadataTransferJobsRequest
    ListMetadataTransferJobsResponse.add_member(:metadata_transfer_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobSummaries, name: "metadataTransferJobSummaries", traits: {"smithy.api#required" => {}}))
    ListMetadataTransferJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMetadataTransferJobsResponse.type = Types::ListMetadataTransferJobsResponse
    ListPropertiesRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPropertiesRequest.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "componentName"))
    ListPropertiesRequest.add_member(:component_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPath, name: "componentPath"))
    ListPropertiesRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#required" => {}}))
    ListPropertiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPropertiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPropertiesRequest.type = Types::ListPropertiesRequest
    ListPropertiesResponse.add_member(:property_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertySummaries, name: "propertySummaries", traits: {"smithy.api#required" => {}}))
    ListPropertiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPropertiesResponse.type = Types::ListPropertiesResponse
    ListScenesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListScenesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListScenesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListScenesInput.type = Types::ListScenesInput
    ListScenesOutput.add_member(:scene_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneSummaries, name: "sceneSummaries"))
    ListScenesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListScenesOutput.type = Types::ListScenesOutput
    ListSyncJobsInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSyncJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSyncJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSyncJobsInput.type = Types::ListSyncJobsInput
    ListSyncJobsOutput.add_member(:sync_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncJobSummaries, name: "syncJobSummaries"))
    ListSyncJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSyncJobsOutput.type = Types::ListSyncJobsOutput
    ListSyncResourcesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSyncResourcesInput.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSyncResourcesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceFilters, name: "filters"))
    ListSyncResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSyncResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSyncResourcesInput.type = Types::ListSyncResourcesInput
    ListSyncResourcesOutput.add_member(:sync_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceSummaries, name: "syncResources"))
    ListSyncResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSyncResourcesOutput.type = Types::ListSyncResourcesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "resourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkspacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListWorkspacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWorkspacesInput.type = Types::ListWorkspacesInput
    ListWorkspacesOutput.add_member(:workspace_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceSummaries, name: "workspaceSummaries"))
    ListWorkspacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWorkspacesOutput.type = Types::ListWorkspacesOutput
    MetadataTransferJobProgress.add_member(:total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "totalCount"))
    MetadataTransferJobProgress.add_member(:succeeded_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "succeededCount"))
    MetadataTransferJobProgress.add_member(:skipped_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "skippedCount"))
    MetadataTransferJobProgress.add_member(:failed_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "failedCount"))
    MetadataTransferJobProgress.type = Types::MetadataTransferJobProgress
    MetadataTransferJobStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobState, name: "state"))
    MetadataTransferJobStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    MetadataTransferJobStatus.add_member(:queued_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "queuedPosition"))
    MetadataTransferJobStatus.type = Types::MetadataTransferJobStatus
    MetadataTransferJobSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobSummary, name: "member"))
    MetadataTransferJobSummary.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "metadataTransferJobId", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTransferJobProgress, name: "progress"))
    MetadataTransferJobSummary.type = Types::MetadataTransferJobSummary
    OrderBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "order"))
    OrderBy.add_member(:property_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "propertyName", traits: {"smithy.api#required" => {}}))
    OrderBy.type = Types::OrderBy
    OrderByList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "member"))
    ParentEntityUpdateRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentEntityUpdateType, name: "updateType", traits: {"smithy.api#required" => {}}))
    ParentEntityUpdateRequest.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentEntityId, name: "parentEntityId"))
    ParentEntityUpdateRequest.type = Types::ParentEntityUpdateRequest
    PricingBundles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleName, name: "member"))
    PricingPlan.add_member(:billable_entity_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "billableEntityCount"))
    PricingPlan.add_member(:bundle_information, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleInformation, name: "bundleInformation"))
    PricingPlan.add_member(:effective_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "effectiveDateTime", traits: {"smithy.api#required" => {}}))
    PricingPlan.add_member(:pricing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingMode, name: "pricingMode", traits: {"smithy.api#required" => {}}))
    PricingPlan.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    PricingPlan.add_member(:update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateReason, name: "updateReason", traits: {"smithy.api#required" => {}}))
    PricingPlan.type = Types::PricingPlan
    PropertyDefinitionRequest.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataType, name: "dataType"))
    PropertyDefinitionRequest.add_member(:is_required_in_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isRequiredInEntity"))
    PropertyDefinitionRequest.add_member(:is_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isExternalId"))
    PropertyDefinitionRequest.add_member(:is_stored_externally, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isStoredExternally"))
    PropertyDefinitionRequest.add_member(:is_time_series, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isTimeSeries"))
    PropertyDefinitionRequest.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "defaultValue"))
    PropertyDefinitionRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "configuration"))
    PropertyDefinitionRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDisplayName, name: "displayName"))
    PropertyDefinitionRequest.type = Types::PropertyDefinitionRequest
    PropertyDefinitionResponse.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_time_series, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isTimeSeries", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_required_in_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isRequiredInEntity", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isExternalId", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_stored_externally, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isStoredExternally", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_imported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isImported", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_final, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isFinal", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isInherited", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "defaultValue"))
    PropertyDefinitionResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "configuration"))
    PropertyDefinitionResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDisplayName, name: "displayName"))
    PropertyDefinitionResponse.type = Types::PropertyDefinitionResponse
    PropertyDefinitionsRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    PropertyDefinitionsRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDefinitionRequest, name: "value"))
    PropertyDefinitionsResponse.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    PropertyDefinitionsResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDefinitionResponse, name: "value"))
    PropertyFilter.add_member(:property_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "propertyName"))
    PropertyFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "operator"))
    PropertyFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "value"))
    PropertyFilter.type = Types::PropertyFilter
    PropertyFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyFilter, name: "member"))
    PropertyGroupRequest.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "groupType"))
    PropertyGroupRequest.add_member(:property_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNames, name: "propertyNames"))
    PropertyGroupRequest.type = Types::PropertyGroupRequest
    PropertyGroupResponse.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "groupType", traits: {"smithy.api#required" => {}}))
    PropertyGroupResponse.add_member(:property_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyNames, name: "propertyNames", traits: {"smithy.api#required" => {}}))
    PropertyGroupResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isInherited", traits: {"smithy.api#required" => {}}))
    PropertyGroupResponse.type = Types::PropertyGroupResponse
    PropertyGroupsRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    PropertyGroupsRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroupRequest, name: "value"))
    PropertyGroupsResponse.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    PropertyGroupsResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroupResponse, name: "value"))
    PropertyLatestValue.add_member(:property_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityPropertyReference, name: "propertyReference", traits: {"smithy.api#required" => {}}))
    PropertyLatestValue.add_member(:property_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "propertyValue"))
    PropertyLatestValue.type = Types::PropertyLatestValue
    PropertyLatestValueMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    PropertyLatestValueMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyLatestValue, name: "value"))
    PropertyNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "member"))
    PropertyRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDefinitionRequest, name: "definition"))
    PropertyRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "value"))
    PropertyRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyUpdateType, name: "updateType"))
    PropertyRequest.type = Types::PropertyRequest
    PropertyRequests.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    PropertyRequests.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyRequest, name: "value"))
    PropertyResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDefinitionResponse, name: "definition"))
    PropertyResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "value"))
    PropertyResponse.add_member(:are_all_property_values_returned, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "areAllPropertyValuesReturned"))
    PropertyResponse.type = Types::PropertyResponse
    PropertyResponses.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    PropertyResponses.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyResponse, name: "value"))
    PropertySummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertySummary, name: "member"))
    PropertySummary.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDefinitionResponse, name: "definition"))
    PropertySummary.add_member(:property_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "propertyName", traits: {"smithy.api#required" => {}}))
    PropertySummary.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "value"))
    PropertySummary.add_member(:are_all_property_values_returned, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "areAllPropertyValuesReturned"))
    PropertySummary.type = Types::PropertySummary
    PropertyTableValue.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    PropertyTableValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "value"))
    PropertyValue.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timestamp", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated and will throw an error in the future. Use time instead."}}))
    PropertyValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataValue, name: "value", traits: {"smithy.api#required" => {}}))
    PropertyValue.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "time"))
    PropertyValue.type = Types::PropertyValue
    PropertyValueEntry.add_member(:entity_property_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityPropertyReference, name: "entityPropertyReference", traits: {"smithy.api#required" => {}}))
    PropertyValueEntry.add_member(:property_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValues, name: "propertyValues"))
    PropertyValueEntry.type = Types::PropertyValueEntry
    PropertyValueHistory.add_member(:entity_property_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityPropertyReference, name: "entityPropertyReference", traits: {"smithy.api#required" => {}}))
    PropertyValueHistory.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "values"))
    PropertyValueHistory.type = Types::PropertyValueHistory
    PropertyValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValueHistory, name: "member"))
    PropertyValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValue, name: "member"))
    QueryTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    QueryTimeoutException.type = Types::QueryTimeoutException
    Relationship.add_member(:target_component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "targetComponentTypeId"))
    Relationship.add_member(:relationship_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "relationshipType"))
    Relationship.type = Types::Relationship
    RelationshipValue.add_member(:target_entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "targetEntityId"))
    RelationshipValue.add_member(:target_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "targetComponentName"))
    RelationshipValue.type = Types::RelationshipValue
    RequiredProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Row.add_member(:row_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RowData, name: "rowData"))
    Row.type = Types::Row
    RowData.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultValue, name: "member"))
    Rows.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Row, name: "member"))
    S3DestinationConfiguration.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationLocation, name: "location", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3SourceConfiguration.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SourceLocation, name: "location", traits: {"smithy.api#required" => {}}))
    S3SourceConfiguration.type = Types::S3SourceConfiguration
    SceneCapabilities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneCapability, name: "member"))
    SceneError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneErrorCode, name: "code"))
    SceneError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    SceneError.type = Types::SceneError
    SceneMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key"))
    SceneMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneMetadataValue, name: "value"))
    SceneSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneSummary, name: "member"))
    SceneSummary.add_member(:scene_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "sceneId", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:content_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "contentLocation", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    SceneSummary.type = Types::SceneSummary
    SelectedPropertyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "type", traits: {"smithy.api#required" => {}}))
    SourceConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SourceConfiguration, name: "s3Configuration"))
    SourceConfiguration.add_member(:iot_site_wise_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IotSiteWiseSourceConfiguration, name: "iotSiteWiseConfiguration"))
    SourceConfiguration.add_member(:iot_twin_maker_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IotTwinMakerSourceConfiguration, name: "iotTwinMakerConfiguration"))
    SourceConfiguration.type = Types::SourceConfiguration
    SourceConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "member"))
    Status.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state"))
    Status.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    Status.type = Types::Status
    SyncJobStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncJobState, name: "state"))
    SyncJobStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    SyncJobStatus.type = Types::SyncJobStatus
    SyncJobSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncJobSummary, name: "member"))
    SyncJobSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn"))
    SyncJobSummary.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId"))
    SyncJobSummary.add_member(:sync_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncSource, name: "syncSource"))
    SyncJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncJobStatus, name: "status"))
    SyncJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime"))
    SyncJobSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime"))
    SyncJobSummary.type = Types::SyncJobSummary
    SyncResourceFilter.add_member(:state, Types::SyncResourceFilter::State, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceState, name: "state"))
    SyncResourceFilter.add_member(:resource_type, Types::SyncResourceFilter::ResourceType, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceType, name: "resourceType"))
    SyncResourceFilter.add_member(:resource_id, Types::SyncResourceFilter::ResourceId, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "resourceId"))
    SyncResourceFilter.add_member(:external_id, Types::SyncResourceFilter::ExternalId, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "externalId"))
    SyncResourceFilter.add_member(:unknown, Types::SyncResourceFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SyncResourceFilter.type = Types::SyncResourceFilter
    SyncResourceFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceFilter, name: "member"))
    SyncResourceStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceState, name: "state"))
    SyncResourceStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    SyncResourceStatus.type = Types::SyncResourceStatus
    SyncResourceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceSummary, name: "member"))
    SyncResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceType, name: "resourceType"))
    SyncResourceSummary.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "externalId"))
    SyncResourceSummary.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "resourceId"))
    SyncResourceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncResourceStatus, name: "status"))
    SyncResourceSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime"))
    SyncResourceSummary.type = Types::SyncResourceSummary
    TabularConditions.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderByList, name: "orderBy"))
    TabularConditions.add_member(:property_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyFilters, name: "propertyFilters"))
    TabularConditions.type = Types::TabularConditions
    TabularPropertyValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyTableValue, name: "member"))
    TabularPropertyValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TabularPropertyValue, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "resourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "resourceARN", traits: {"smithy.api#httpQuery" => "resourceARN", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateComponentTypeInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentTypeInput.add_member(:is_singleton, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isSingleton"))
    UpdateComponentTypeInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentTypeInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateComponentTypeInput.add_member(:property_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDefinitionsRequest, name: "propertyDefinitions"))
    UpdateComponentTypeInput.add_member(:extends_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendsFrom, name: "extendsFrom"))
    UpdateComponentTypeInput.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionsRequest, name: "functions"))
    UpdateComponentTypeInput.add_member(:property_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyGroupsRequest, name: "propertyGroups"))
    UpdateComponentTypeInput.add_member(:component_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeName, name: "componentTypeName"))
    UpdateComponentTypeInput.add_member(:composite_component_types, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentTypesRequest, name: "compositeComponentTypes"))
    UpdateComponentTypeInput.type = Types::UpdateComponentTypeInput
    UpdateComponentTypeOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    UpdateComponentTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateComponentTypeOutput.add_member(:component_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentTypeId, name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    UpdateComponentTypeOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    UpdateComponentTypeOutput.type = Types::UpdateComponentTypeOutput
    UpdateEntityInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEntityInput.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEntityInput.add_member(:entity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "entityName"))
    UpdateEntityInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateEntityInput.add_member(:component_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentUpdatesMapRequest, name: "componentUpdates"))
    UpdateEntityInput.add_member(:composite_component_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositeComponentUpdatesMapRequest, name: "compositeComponentUpdates"))
    UpdateEntityInput.add_member(:parent_entity_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentEntityUpdateRequest, name: "parentEntityUpdate"))
    UpdateEntityInput.type = Types::UpdateEntityInput
    UpdateEntityOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    UpdateEntityOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    UpdateEntityOutput.type = Types::UpdateEntityOutput
    UpdatePricingPlanInput.add_member(:pricing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingMode, name: "pricingMode", traits: {"smithy.api#required" => {}}))
    UpdatePricingPlanInput.add_member(:bundle_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingBundles, name: "bundleNames"))
    UpdatePricingPlanInput.type = Types::UpdatePricingPlanInput
    UpdatePricingPlanOutput.add_member(:current_pricing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "currentPricingPlan", traits: {"smithy.api#required" => {}}))
    UpdatePricingPlanOutput.add_member(:pending_pricing_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "pendingPricingPlan"))
    UpdatePricingPlanOutput.type = Types::UpdatePricingPlanOutput
    UpdateSceneInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSceneInput.add_member(:scene_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "sceneId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSceneInput.add_member(:content_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "contentLocation"))
    UpdateSceneInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateSceneInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneCapabilities, name: "capabilities"))
    UpdateSceneInput.add_member(:scene_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SceneMetadataMap, name: "sceneMetadata"))
    UpdateSceneInput.type = Types::UpdateSceneInput
    UpdateSceneOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    UpdateSceneOutput.type = Types::UpdateSceneOutput
    UpdateWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateWorkspaceInput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "role"))
    UpdateWorkspaceInput.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    UpdateWorkspaceInput.type = Types::UpdateWorkspaceInput
    UpdateWorkspaceOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceOutput.type = Types::UpdateWorkspaceOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    Values.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValue, name: "member"))
    WorkspaceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceSummary, name: "member"))
    WorkspaceSummary.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TwinMakerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    WorkspaceSummary.add_member(:linked_services, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedServices, name: "linkedServices"))
    WorkspaceSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.type = Types::WorkspaceSummary

    AWSIoTTwinMaker = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iottwinmaker#AWSIoTTwinMaker"
      service.name = "AWSIoTTwinMaker"
      service.version = "2021-11-29"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTTwinMaker", "endpointPrefix" => "iottwinmaker"}, "aws.auth#sigv4" => {"name" => "iottwinmaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT TwinMaker", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://iottwinmaker-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://iottwinmaker-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://iottwinmaker.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://iottwinmaker.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_put_property_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#BatchPutPropertyValues"
        operation.name = "BatchPutPropertyValues"
        operation.input = BatchPutPropertyValuesInput
        operation.output = BatchPutPropertyValuesOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entity-properties", "code" => 200}}
      end)
      service.add_operation(:cancel_metadata_transfer_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CancelMetadataTransferJob"
        operation.name = "CancelMetadataTransferJob"
        operation.input = CancelMetadataTransferJobRequest
        operation.output = CancelMetadataTransferJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/metadata-transfer-jobs/{metadataTransferJobId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_component_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateComponentType"
        operation.name = "CreateComponentType"
        operation.input = CreateComponentTypeInput
        operation.output = CreateComponentTypeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/component-types/{componentTypeId}", "code" => 200}}
      end)
      service.add_operation(:create_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateEntity"
        operation.name = "CreateEntity"
        operation.input = CreateEntityInput
        operation.output = CreateEntityOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entities", "code" => 200}}
      end)
      service.add_operation(:create_metadata_transfer_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateMetadataTransferJob"
        operation.name = "CreateMetadataTransferJob"
        operation.input = CreateMetadataTransferJobRequest
        operation.output = CreateMetadataTransferJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/metadata-transfer-jobs", "code" => 200}}
      end)
      service.add_operation(:create_scene, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateScene"
        operation.name = "CreateScene"
        operation.input = CreateSceneInput
        operation.output = CreateSceneOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/scenes", "code" => 200}}
      end)
      service.add_operation(:create_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateSyncJob"
        operation.name = "CreateSyncJob"
        operation.input = CreateSyncJobInput
        operation.output = CreateSyncJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/sync-jobs/{syncSource}", "code" => 200}}
      end)
      service.add_operation(:create_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateWorkspace"
        operation.name = "CreateWorkspace"
        operation.input = CreateWorkspaceInput
        operation.output = CreateWorkspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}", "code" => 200}}
      end)
      service.add_operation(:delete_component_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteComponentType"
        operation.name = "DeleteComponentType"
        operation.input = DeleteComponentTypeInput
        operation.output = DeleteComponentTypeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}/component-types/{componentTypeId}", "code" => 200}}
      end)
      service.add_operation(:delete_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteEntity"
        operation.name = "DeleteEntity"
        operation.input = DeleteEntityInput
        operation.output = DeleteEntityOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}/entities/{entityId}", "code" => 200}}
      end)
      service.add_operation(:delete_scene, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteScene"
        operation.name = "DeleteScene"
        operation.input = DeleteSceneInput
        operation.output = DeleteSceneOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}/scenes/{sceneId}", "code" => 200}}
      end)
      service.add_operation(:delete_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteSyncJob"
        operation.name = "DeleteSyncJob"
        operation.input = DeleteSyncJobInput
        operation.output = DeleteSyncJobOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}/sync-jobs/{syncSource}", "code" => 200}}
      end)
      service.add_operation(:delete_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteWorkspace"
        operation.name = "DeleteWorkspace"
        operation.input = DeleteWorkspaceInput
        operation.output = DeleteWorkspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}", "code" => 200}}
      end)
      service.add_operation(:execute_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ExecuteQuery"
        operation.name = "ExecuteQuery"
        operation.input = ExecuteQueryInput
        operation.output = ExecuteQueryOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << QueryTimeoutException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/queries/execution"}}
        operation[:paginator] = Paginators::ExecuteQuery.new
      end)
      service.add_operation(:get_component_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetComponentType"
        operation.name = "GetComponentType"
        operation.input = GetComponentTypeInput
        operation.output = GetComponentTypeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/workspaces/{workspaceId}/component-types/{componentTypeId}", "code" => 200}}
      end)
      service.add_operation(:get_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetEntity"
        operation.name = "GetEntity"
        operation.input = GetEntityInput
        operation.output = GetEntityOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/workspaces/{workspaceId}/entities/{entityId}", "code" => 200}}
      end)
      service.add_operation(:get_metadata_transfer_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetMetadataTransferJob"
        operation.name = "GetMetadataTransferJob"
        operation.input = GetMetadataTransferJobRequest
        operation.output = GetMetadataTransferJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/metadata-transfer-jobs/{metadataTransferJobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetPricingPlan"
        operation.name = "GetPricingPlan"
        operation.input = GetPricingPlanInput
        operation.output = GetPricingPlanOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/pricingplan", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_property_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetPropertyValue"
        operation.name = "GetPropertyValue"
        operation.input = GetPropertyValueInput
        operation.output = GetPropertyValueOutput
        operation.errors << AccessDeniedException
        operation.errors << ConnectorFailureException
        operation.errors << ConnectorTimeoutException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entity-properties/value", "code" => 200}}
        operation[:paginator] = Paginators::GetPropertyValue.new
      end)
      service.add_operation(:get_property_value_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetPropertyValueHistory"
        operation.name = "GetPropertyValueHistory"
        operation.input = GetPropertyValueHistoryInput
        operation.output = GetPropertyValueHistoryOutput
        operation.errors << AccessDeniedException
        operation.errors << ConnectorFailureException
        operation.errors << ConnectorTimeoutException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entity-properties/history", "code" => 200}}
        operation[:paginator] = Paginators::GetPropertyValueHistory.new
      end)
      service.add_operation(:get_scene, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetScene"
        operation.name = "GetScene"
        operation.input = GetSceneInput
        operation.output = GetSceneOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/workspaces/{workspaceId}/scenes/{sceneId}", "code" => 200}}
      end)
      service.add_operation(:get_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetSyncJob"
        operation.name = "GetSyncJob"
        operation.input = GetSyncJobInput
        operation.output = GetSyncJobOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/sync-jobs/{syncSource}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetWorkspace"
        operation.name = "GetWorkspace"
        operation.input = GetWorkspaceInput
        operation.output = GetWorkspaceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/workspaces/{workspaceId}", "code" => 200}}
      end)
      service.add_operation(:list_component_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListComponentTypes"
        operation.name = "ListComponentTypes"
        operation.input = ListComponentTypesInput
        operation.output = ListComponentTypesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/component-types-list", "code" => 200}}
        operation[:paginator] = Paginators::ListComponentTypes.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListComponents"
        operation.name = "ListComponents"
        operation.input = ListComponentsRequest
        operation.output = ListComponentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entities/{entityId}/components-list", "code" => 200}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListEntities"
        operation.name = "ListEntities"
        operation.input = ListEntitiesInput
        operation.output = ListEntitiesOutput
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entities-list", "code" => 200}}
        operation[:paginator] = Paginators::ListEntities.new
      end)
      service.add_operation(:list_metadata_transfer_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListMetadataTransferJobs"
        operation.name = "ListMetadataTransferJobs"
        operation.input = ListMetadataTransferJobsRequest
        operation.output = ListMetadataTransferJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/metadata-transfer-jobs-list", "code" => 200}}
        operation[:paginator] = Paginators::ListMetadataTransferJobs.new
      end)
      service.add_operation(:list_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListProperties"
        operation.name = "ListProperties"
        operation.input = ListPropertiesRequest
        operation.output = ListPropertiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/properties-list", "code" => 200}}
        operation[:paginator] = Paginators::ListProperties.new
      end)
      service.add_operation(:list_scenes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListScenes"
        operation.name = "ListScenes"
        operation.input = ListScenesInput
        operation.output = ListScenesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/scenes-list", "code" => 200}}
        operation[:paginator] = Paginators::ListScenes.new
      end)
      service.add_operation(:list_sync_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListSyncJobs"
        operation.name = "ListSyncJobs"
        operation.input = ListSyncJobsInput
        operation.output = ListSyncJobsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/sync-jobs-list", "code" => 200}}
        operation[:paginator] = Paginators::ListSyncJobs.new
      end)
      service.add_operation(:list_sync_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListSyncResources"
        operation.name = "ListSyncResources"
        operation.input = ListSyncResourcesInput
        operation.output = ListSyncResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/sync-jobs/{syncSource}/resources-list", "code" => 200}}
        operation[:paginator] = Paginators::ListSyncResources.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags-list", "code" => 200}}
      end)
      service.add_operation(:list_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListWorkspaces"
        operation.name = "ListWorkspaces"
        operation.input = ListWorkspacesInput
        operation.output = ListWorkspacesOutput
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces-list", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkspaces.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:update_component_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdateComponentType"
        operation.name = "UpdateComponentType"
        operation.input = UpdateComponentTypeInput
        operation.output = UpdateComponentTypeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/workspaces/{workspaceId}/component-types/{componentTypeId}", "code" => 200}}
      end)
      service.add_operation(:update_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdateEntity"
        operation.name = "UpdateEntity"
        operation.input = UpdateEntityInput
        operation.output = UpdateEntityOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/workspaces/{workspaceId}/entities/{entityId}", "code" => 200}}
      end)
      service.add_operation(:update_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdatePricingPlan"
        operation.name = "UpdatePricingPlan"
        operation.input = UpdatePricingPlanInput
        operation.output = UpdatePricingPlanOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/pricingplan", "code" => 200}}
      end)
      service.add_operation(:update_scene, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdateScene"
        operation.name = "UpdateScene"
        operation.input = UpdateSceneInput
        operation.output = UpdateSceneOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/workspaces/{workspaceId}/scenes/{sceneId}", "code" => 200}}
      end)
      service.add_operation(:update_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdateWorkspace"
        operation.name = "UpdateWorkspace"
        operation.input = UpdateWorkspaceInput
        operation.output = UpdateWorkspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/workspaces/{workspaceId}", "code" => 200}}
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
