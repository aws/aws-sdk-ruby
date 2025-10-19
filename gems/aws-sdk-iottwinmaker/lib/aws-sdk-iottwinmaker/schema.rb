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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BatchPutPropertyError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyError.add_member(:entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueEntry, location_name: "entry", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyError.type = Types::BatchPutPropertyError
    BatchPutPropertyErrorEntry.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Errors, location_name: "errors", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyErrorEntry.type = Types::BatchPutPropertyErrorEntry
    BatchPutPropertyValuesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutPropertyValuesInput.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Entries, location_name: "entries", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyValuesInput.type = Types::BatchPutPropertyValuesInput
    BatchPutPropertyValuesOutput.add_member(:error_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorEntries, location_name: "errorEntries", traits: {"smithy.api#required" => {}}))
    BatchPutPropertyValuesOutput.type = Types::BatchPutPropertyValuesOutput
    BundleInformation.add_member(:bundle_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingBundles, location_name: "bundleNames", traits: {"smithy.api#required" => {}}))
    BundleInformation.add_member(:pricing_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingTier, location_name: "pricingTier"))
    BundleInformation.type = Types::BundleInformation
    CancelMetadataTransferJobRequest.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "metadataTransferJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelMetadataTransferJobRequest.type = Types::CancelMetadataTransferJobRequest
    CancelMetadataTransferJobResponse.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "metadataTransferJobId", traits: {"smithy.api#required" => {}}))
    CancelMetadataTransferJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CancelMetadataTransferJobResponse.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    CancelMetadataTransferJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CancelMetadataTransferJobResponse.add_member(:progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobProgress, location_name: "progress"))
    CancelMetadataTransferJobResponse.type = Types::CancelMetadataTransferJobResponse
    ColumnDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnName, location_name: "name"))
    ColumnDescription.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnType, location_name: "type"))
    ColumnDescription.type = Types::ColumnDescription
    ColumnDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDescription)
    ComponentPropertyGroupRequest.add_member(:group_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: "groupType"))
    ComponentPropertyGroupRequest.add_member(:property_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNames, location_name: "propertyNames"))
    ComponentPropertyGroupRequest.add_member(:update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroupUpdateType, location_name: "updateType"))
    ComponentPropertyGroupRequest.type = Types::ComponentPropertyGroupRequest
    ComponentPropertyGroupRequests.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    ComponentPropertyGroupRequests.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyGroupRequest)
    ComponentPropertyGroupResponse.add_member(:group_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: "groupType", traits: {"smithy.api#required" => {}}))
    ComponentPropertyGroupResponse.add_member(:property_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNames, location_name: "propertyNames", traits: {"smithy.api#required" => {}}))
    ComponentPropertyGroupResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isInherited", traits: {"smithy.api#required" => {}}))
    ComponentPropertyGroupResponse.type = Types::ComponentPropertyGroupResponse
    ComponentPropertyGroupResponses.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    ComponentPropertyGroupResponses.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyGroupResponse)
    ComponentRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentRequest.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    ComponentRequest.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyRequests, location_name: "properties"))
    ComponentRequest.add_member(:property_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyGroupRequests, location_name: "propertyGroups"))
    ComponentRequest.type = Types::ComponentRequest
    ComponentResponse.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    ComponentResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentResponse.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    ComponentResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    ComponentResponse.add_member(:defined_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "definedIn"))
    ComponentResponse.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyResponses, location_name: "properties"))
    ComponentResponse.add_member(:property_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyGroupResponses, location_name: "propertyGroups"))
    ComponentResponse.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource"))
    ComponentResponse.add_member(:are_all_properties_returned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "areAllPropertiesReturned"))
    ComponentResponse.add_member(:composite_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentResponse, location_name: "compositeComponents"))
    ComponentResponse.add_member(:are_all_composite_components_returned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "areAllCompositeComponentsReturned"))
    ComponentResponse.type = Types::ComponentResponse
    ComponentSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummary)
    ComponentSummary.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "componentName", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:defined_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "definedIn"))
    ComponentSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentSummary.add_member(:property_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyGroupResponses, location_name: "propertyGroups"))
    ComponentSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource"))
    ComponentSummary.add_member(:component_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPath, location_name: "componentPath"))
    ComponentSummary.type = Types::ComponentSummary
    ComponentTypeSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeSummary)
    ComponentTypeSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ComponentTypeSummary.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    ComponentTypeSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    ComponentTypeSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    ComponentTypeSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentTypeSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    ComponentTypeSummary.add_member(:component_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeName, location_name: "componentTypeName"))
    ComponentTypeSummary.type = Types::ComponentTypeSummary
    ComponentUpdateRequest.add_member(:update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentUpdateType, location_name: "updateType"))
    ComponentUpdateRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentUpdateRequest.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    ComponentUpdateRequest.add_member(:property_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyRequests, location_name: "propertyUpdates"))
    ComponentUpdateRequest.add_member(:property_group_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyGroupRequests, location_name: "propertyGroupUpdates"))
    ComponentUpdateRequest.type = Types::ComponentUpdateRequest
    ComponentUpdatesMapRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    ComponentUpdatesMapRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentUpdateRequest)
    ComponentsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    ComponentsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentResponse)
    ComponentsMapRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    ComponentsMapRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentRequest)
    CompositeComponentRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CompositeComponentRequest.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyRequests, location_name: "properties"))
    CompositeComponentRequest.add_member(:property_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyGroupRequests, location_name: "propertyGroups"))
    CompositeComponentRequest.type = Types::CompositeComponentRequest
    CompositeComponentResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    CompositeComponentResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummary)
    CompositeComponentTypeRequest.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    CompositeComponentTypeRequest.type = Types::CompositeComponentTypeRequest
    CompositeComponentTypeResponse.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    CompositeComponentTypeResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isInherited"))
    CompositeComponentTypeResponse.type = Types::CompositeComponentTypeResponse
    CompositeComponentTypesRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    CompositeComponentTypesRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentTypeRequest)
    CompositeComponentTypesResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    CompositeComponentTypesResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentTypeResponse)
    CompositeComponentUpdateRequest.add_member(:update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentUpdateType, location_name: "updateType"))
    CompositeComponentUpdateRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CompositeComponentUpdateRequest.add_member(:property_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyRequests, location_name: "propertyUpdates"))
    CompositeComponentUpdateRequest.add_member(:property_group_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyGroupRequests, location_name: "propertyGroupUpdates"))
    CompositeComponentUpdateRequest.type = Types::CompositeComponentUpdateRequest
    CompositeComponentUpdatesMapRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPath)
    CompositeComponentUpdatesMapRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentUpdateRequest)
    CompositeComponentsMapRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPath)
    CompositeComponentsMapRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentRequest)
    Configuration.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    Configuration.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.type = Types::ConflictException
    ConnectorFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConnectorFailureException.type = Types::ConnectorFailureException
    ConnectorTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConnectorTimeoutException.type = Types::ConnectorTimeoutException
    CreateComponentTypeInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateComponentTypeInput.add_member(:is_singleton, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isSingleton"))
    CreateComponentTypeInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateComponentTypeInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateComponentTypeInput.add_member(:property_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDefinitionsRequest, location_name: "propertyDefinitions"))
    CreateComponentTypeInput.add_member(:extends_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendsFrom, location_name: "extendsFrom"))
    CreateComponentTypeInput.add_member(:functions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionsRequest, location_name: "functions"))
    CreateComponentTypeInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateComponentTypeInput.add_member(:property_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroupsRequest, location_name: "propertyGroups"))
    CreateComponentTypeInput.add_member(:component_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeName, location_name: "componentTypeName"))
    CreateComponentTypeInput.add_member(:composite_component_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentTypesRequest, location_name: "compositeComponentTypes"))
    CreateComponentTypeInput.type = Types::CreateComponentTypeInput
    CreateComponentTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateComponentTypeOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateComponentTypeOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: "state", traits: {"smithy.api#required" => {}}))
    CreateComponentTypeOutput.type = Types::CreateComponentTypeOutput
    CreateEntityInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEntityInput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId"))
    CreateEntityInput.add_member(:entity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "entityName", traits: {"smithy.api#required" => {}}))
    CreateEntityInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEntityInput.add_member(:components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentsMapRequest, location_name: "components"))
    CreateEntityInput.add_member(:composite_components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentsMapRequest, location_name: "compositeComponents"))
    CreateEntityInput.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId"))
    CreateEntityInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEntityInput.type = Types::CreateEntityInput
    CreateEntityOutput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#required" => {}}))
    CreateEntityOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateEntityOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateEntityOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: "state", traits: {"smithy.api#required" => {}}))
    CreateEntityOutput.type = Types::CreateEntityOutput
    CreateMetadataTransferJobRequest.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "metadataTransferJobId"))
    CreateMetadataTransferJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateMetadataTransferJobRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigurations, location_name: "sources", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobRequest.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destination", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobRequest.type = Types::CreateMetadataTransferJobRequest
    CreateMetadataTransferJobResponse.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "metadataTransferJobId", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateMetadataTransferJobResponse.type = Types::CreateMetadataTransferJobResponse
    CreateSceneInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSceneInput.add_member(:scene_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "sceneId", traits: {"smithy.api#required" => {}}))
    CreateSceneInput.add_member(:content_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "contentLocation", traits: {"smithy.api#required" => {}}))
    CreateSceneInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSceneInput.add_member(:capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneCapabilities, location_name: "capabilities"))
    CreateSceneInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSceneInput.add_member(:scene_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneMetadataMap, location_name: "sceneMetadata"))
    CreateSceneInput.type = Types::CreateSceneInput
    CreateSceneOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSceneOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateSceneOutput.type = Types::CreateSceneOutput
    CreateSyncJobInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSyncJobInput.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSyncJobInput.add_member(:sync_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "syncRole", traits: {"smithy.api#required" => {}}))
    CreateSyncJobInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSyncJobInput.type = Types::CreateSyncJobInput
    CreateSyncJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSyncJobOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateSyncJobOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncJobState, location_name: "state", traits: {"smithy.api#required" => {}}))
    CreateSyncJobOutput.type = Types::CreateSyncJobOutput
    CreateWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateWorkspaceInput.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    CreateWorkspaceInput.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "role"))
    CreateWorkspaceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkspaceInput.type = Types::CreateWorkspaceInput
    CreateWorkspaceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.type = Types::CreateWorkspaceOutput
    DataConnector.add_member(:lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunction, location_name: "lambda"))
    DataConnector.add_member(:is_native, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isNative"))
    DataConnector.type = Types::DataConnector
    DataType.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: "type", traits: {"smithy.api#required" => {}}))
    DataType.add_member(:nested_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: "nestedType"))
    DataType.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValueList, location_name: "allowedValues"))
    DataType.add_member(:unit_of_measure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "unitOfMeasure"))
    DataType.add_member(:relationship, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Relationship, location_name: "relationship"))
    DataType.type = Types::DataType
    DataValue.add_member(:boolean_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "booleanValue"))
    DataValue.add_member(:double_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    DataValue.add_member(:integer_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "integerValue"))
    DataValue.add_member(:long_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "longValue"))
    DataValue.add_member(:string_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "stringValue"))
    DataValue.add_member(:list_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValueList, location_name: "listValue"))
    DataValue.add_member(:map_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValueMap, location_name: "mapValue"))
    DataValue.add_member(:relationship_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipValue, location_name: "relationshipValue"))
    DataValue.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: "expression"))
    DataValue.type = Types::DataValue
    DataValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue)
    DataValueMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DataValueMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue)
    DeleteComponentTypeInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentTypeInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentTypeInput.type = Types::DeleteComponentTypeInput
    DeleteComponentTypeOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: "state", traits: {"smithy.api#required" => {}}))
    DeleteComponentTypeOutput.type = Types::DeleteComponentTypeOutput
    DeleteEntityInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEntityInput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEntityInput.add_member(:is_recursive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isRecursive", traits: {"smithy.api#httpQuery" => "isRecursive"}))
    DeleteEntityInput.type = Types::DeleteEntityInput
    DeleteEntityOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: "state", traits: {"smithy.api#required" => {}}))
    DeleteEntityOutput.type = Types::DeleteEntityOutput
    DeleteSceneInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSceneInput.add_member(:scene_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "sceneId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSceneInput.type = Types::DeleteSceneInput
    DeleteSceneOutput.type = Types::DeleteSceneOutput
    DeleteSyncJobInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSyncJobInput.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSyncJobInput.type = Types::DeleteSyncJobInput
    DeleteSyncJobOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncJobState, location_name: "state", traits: {"smithy.api#required" => {}}))
    DeleteSyncJobOutput.type = Types::DeleteSyncJobOutput
    DeleteWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceInput.type = Types::DeleteWorkspaceInput
    DeleteWorkspaceOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDeleteMessage, location_name: "message"))
    DeleteWorkspaceOutput.type = Types::DeleteWorkspaceOutput
    DestinationConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationType, location_name: "type", traits: {"smithy.api#required" => {}}))
    DestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "s3Configuration"))
    DestinationConfiguration.add_member(:iot_twin_maker_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotTwinMakerDestinationConfiguration, location_name: "iotTwinMakerConfiguration"))
    DestinationConfiguration.type = Types::DestinationConfiguration
    EntityPropertyReference.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    EntityPropertyReference.add_member(:component_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPath, location_name: "componentPath"))
    EntityPropertyReference.add_member(:external_id_property, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalIdProperty, location_name: "externalIdProperty"))
    EntityPropertyReference.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId"))
    EntityPropertyReference.add_member(:property_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "propertyName", traits: {"smithy.api#required" => {}}))
    EntityPropertyReference.type = Types::EntityPropertyReference
    EntitySummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySummary)
    EntitySummary.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:entity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "entityName", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId"))
    EntitySummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EntitySummary.add_member(:has_child_entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "hasChildEntities"))
    EntitySummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    EntitySummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    EntitySummary.type = Types::EntitySummary
    Entries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueEntry)
    ErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ErrorDetails.type = Types::ErrorDetails
    ErrorEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutPropertyErrorEntry)
    Errors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutPropertyError)
    ExecuteQueryInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:query_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryStatement, location_name: "queryStatement", traits: {"smithy.api#required" => {}}))
    ExecuteQueryInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryServiceMaxResults, location_name: "maxResults"))
    ExecuteQueryInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ExecuteQueryInput.type = Types::ExecuteQueryInput
    ExecuteQueryOutput.add_member(:column_descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDescriptions, location_name: "columnDescriptions"))
    ExecuteQueryOutput.add_member(:rows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Rows, location_name: "rows"))
    ExecuteQueryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ExecuteQueryOutput.type = Types::ExecuteQueryOutput
    ExtendsFrom.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId)
    ExternalIdProperty.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ExternalIdProperty.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FilterByAsset.add_member(:asset_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: "assetId"))
    FilterByAsset.add_member(:asset_external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteWiseExternalId, location_name: "assetExternalId"))
    FilterByAsset.add_member(:include_offspring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeOffspring"))
    FilterByAsset.add_member(:include_asset_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeAssetModel"))
    FilterByAsset.type = Types::FilterByAsset
    FilterByAssetModel.add_member(:asset_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: "assetModelId"))
    FilterByAssetModel.add_member(:asset_model_external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SiteWiseExternalId, location_name: "assetModelExternalId"))
    FilterByAssetModel.add_member(:include_offspring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeOffspring"))
    FilterByAssetModel.add_member(:include_assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "includeAssets"))
    FilterByAssetModel.type = Types::FilterByAssetModel
    FilterByComponentType.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    FilterByComponentType.type = Types::FilterByComponentType
    FilterByEntity.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#required" => {}}))
    FilterByEntity.type = Types::FilterByEntity
    FunctionRequest.add_member(:required_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredProperties, location_name: "requiredProperties"))
    FunctionRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    FunctionRequest.add_member(:implemented_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataConnector, location_name: "implementedBy"))
    FunctionRequest.type = Types::FunctionRequest
    FunctionResponse.add_member(:required_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredProperties, location_name: "requiredProperties"))
    FunctionResponse.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    FunctionResponse.add_member(:implemented_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataConnector, location_name: "implementedBy"))
    FunctionResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isInherited"))
    FunctionResponse.type = Types::FunctionResponse
    FunctionsRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    FunctionsRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionRequest)
    FunctionsResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    FunctionsResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionResponse)
    GeneratedSceneMetadataMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    GeneratedSceneMetadataMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneMetadataValue)
    GetComponentTypeInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentTypeInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentTypeInput.type = Types::GetComponentTypeInput
    GetComponentTypeOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:is_singleton, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isSingleton"))
    GetComponentTypeOutput.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetComponentTypeOutput.add_member(:property_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDefinitionsResponse, location_name: "propertyDefinitions"))
    GetComponentTypeOutput.add_member(:extends_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendsFrom, location_name: "extendsFrom"))
    GetComponentTypeOutput.add_member(:functions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionsResponse, location_name: "functions"))
    GetComponentTypeOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetComponentTypeOutput.add_member(:is_abstract, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isAbstract"))
    GetComponentTypeOutput.add_member(:is_schema_initialized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isSchemaInitialized"))
    GetComponentTypeOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    GetComponentTypeOutput.add_member(:property_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroupsResponse, location_name: "propertyGroups"))
    GetComponentTypeOutput.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource"))
    GetComponentTypeOutput.add_member(:component_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeName, location_name: "componentTypeName"))
    GetComponentTypeOutput.add_member(:composite_component_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentTypesResponse, location_name: "compositeComponentTypes"))
    GetComponentTypeOutput.type = Types::GetComponentTypeOutput
    GetEntityInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEntityInput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEntityInput.type = Types::GetEntityInput
    GetEntityOutput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:entity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "entityName", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetEntityOutput.add_member(:components, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentsMap, location_name: "components"))
    GetEntityOutput.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:has_child_entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "hasChildEntities", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetEntityOutput.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource"))
    GetEntityOutput.add_member(:are_all_components_returned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "areAllComponentsReturned"))
    GetEntityOutput.type = Types::GetEntityOutput
    GetMetadataTransferJobRequest.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "metadataTransferJobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMetadataTransferJobRequest.type = Types::GetMetadataTransferJobRequest
    GetMetadataTransferJobResponse.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "metadataTransferJobId", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetMetadataTransferJobResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfigurations, location_name: "sources", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destination", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:metadata_transfer_job_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "metadataTransferJobRole", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:report_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "reportUrl"))
    GetMetadataTransferJobResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetMetadataTransferJobResponse.add_member(:progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobProgress, location_name: "progress"))
    GetMetadataTransferJobResponse.type = Types::GetMetadataTransferJobResponse
    GetPricingPlanInput.type = Types::GetPricingPlanInput
    GetPricingPlanOutput.add_member(:current_pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: "currentPricingPlan", traits: {"smithy.api#required" => {}}))
    GetPricingPlanOutput.add_member(:pending_pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: "pendingPricingPlan"))
    GetPricingPlanOutput.type = Types::GetPricingPlanOutput
    GetPropertyValueHistoryInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPropertyValueHistoryInput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId"))
    GetPropertyValueHistoryInput.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    GetPropertyValueHistoryInput.add_member(:component_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPath, location_name: "componentPath"))
    GetPropertyValueHistoryInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    GetPropertyValueHistoryInput.add_member(:selected_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedPropertyList, location_name: "selectedProperties", traits: {"smithy.api#required" => {}}))
    GetPropertyValueHistoryInput.add_member(:property_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyFilters, location_name: "propertyFilters"))
    GetPropertyValueHistoryInput.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startDateTime", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated and will throw an error in the future. Use startTime instead."}}))
    GetPropertyValueHistoryInput.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endDateTime", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated and will throw an error in the future. Use endTime instead."}}))
    GetPropertyValueHistoryInput.add_member(:interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterpolationParameters, location_name: "interpolation"))
    GetPropertyValueHistoryInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetPropertyValueHistoryInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetPropertyValueHistoryInput.add_member(:order_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderByTime, location_name: "orderByTime"))
    GetPropertyValueHistoryInput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    GetPropertyValueHistoryInput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    GetPropertyValueHistoryInput.type = Types::GetPropertyValueHistoryInput
    GetPropertyValueHistoryOutput.add_member(:property_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueList, location_name: "propertyValues", traits: {"smithy.api#required" => {}}))
    GetPropertyValueHistoryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetPropertyValueHistoryOutput.type = Types::GetPropertyValueHistoryOutput
    GetPropertyValueInput.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    GetPropertyValueInput.add_member(:component_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPath, location_name: "componentPath"))
    GetPropertyValueInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    GetPropertyValueInput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId"))
    GetPropertyValueInput.add_member(:selected_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedPropertyList, location_name: "selectedProperties", traits: {"smithy.api#required" => {}}))
    GetPropertyValueInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPropertyValueInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetPropertyValueInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetPropertyValueInput.add_member(:property_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "propertyGroupName"))
    GetPropertyValueInput.add_member(:tabular_conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TabularConditions, location_name: "tabularConditions"))
    GetPropertyValueInput.type = Types::GetPropertyValueInput
    GetPropertyValueOutput.add_member(:property_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyLatestValueMap, location_name: "propertyValues"))
    GetPropertyValueOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetPropertyValueOutput.add_member(:tabular_property_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TabularPropertyValues, location_name: "tabularPropertyValues"))
    GetPropertyValueOutput.type = Types::GetPropertyValueOutput
    GetSceneInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSceneInput.add_member(:scene_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "sceneId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSceneInput.type = Types::GetSceneInput
    GetSceneOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:scene_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "sceneId", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:content_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "contentLocation", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetSceneOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetSceneOutput.add_member(:capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneCapabilities, location_name: "capabilities"))
    GetSceneOutput.add_member(:scene_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneMetadataMap, location_name: "sceneMetadata"))
    GetSceneOutput.add_member(:generated_scene_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedSceneMetadataMap, location_name: "generatedSceneMetadata"))
    GetSceneOutput.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneError, location_name: "error"))
    GetSceneOutput.type = Types::GetSceneOutput
    GetSyncJobInput.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSyncJobInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpQuery" => "workspace"}))
    GetSyncJobInput.type = Types::GetSyncJobInput
    GetSyncJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:sync_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "syncRole", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetSyncJobOutput.type = Types::GetSyncJobOutput
    GetWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdOrArn, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkspaceInput.type = Types::GetWorkspaceInput
    GetWorkspaceOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    GetWorkspaceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetWorkspaceOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetWorkspaceOutput.add_member(:linked_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedServices, location_name: "linkedServices"))
    GetWorkspaceOutput.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    GetWorkspaceOutput.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "role"))
    GetWorkspaceOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    GetWorkspaceOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    GetWorkspaceOutput.type = Types::GetWorkspaceOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    InterpolationParameters.add_member(:interpolation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InterpolationType, location_name: "interpolationType"))
    InterpolationParameters.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntervalInSeconds, location_name: "intervalInSeconds"))
    InterpolationParameters.type = Types::InterpolationParameters
    IotSiteWiseSourceConfiguration.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseSourceConfigurationFilters, location_name: "filters"))
    IotSiteWiseSourceConfiguration.type = Types::IotSiteWiseSourceConfiguration
    IotSiteWiseSourceConfigurationFilter.add_member(:filter_by_asset_model, Types::IotSiteWiseSourceConfigurationFilter::FilterByAssetModel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterByAssetModel, location_name: "filterByAssetModel"))
    IotSiteWiseSourceConfigurationFilter.add_member(:filter_by_asset, Types::IotSiteWiseSourceConfigurationFilter::FilterByAsset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterByAsset, location_name: "filterByAsset"))
    IotSiteWiseSourceConfigurationFilter.add_member(:unknown, Types::IotSiteWiseSourceConfigurationFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IotSiteWiseSourceConfigurationFilter.type = Types::IotSiteWiseSourceConfigurationFilter
    IotSiteWiseSourceConfigurationFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseSourceConfigurationFilter)
    IotTwinMakerDestinationConfiguration.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "workspace", traits: {"smithy.api#required" => {}}))
    IotTwinMakerDestinationConfiguration.type = Types::IotTwinMakerDestinationConfiguration
    IotTwinMakerSourceConfiguration.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "workspace", traits: {"smithy.api#required" => {}}))
    IotTwinMakerSourceConfiguration.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotTwinMakerSourceConfigurationFilters, location_name: "filters"))
    IotTwinMakerSourceConfiguration.type = Types::IotTwinMakerSourceConfiguration
    IotTwinMakerSourceConfigurationFilter.add_member(:filter_by_component_type, Types::IotTwinMakerSourceConfigurationFilter::FilterByComponentType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterByComponentType, location_name: "filterByComponentType"))
    IotTwinMakerSourceConfigurationFilter.add_member(:filter_by_entity, Types::IotTwinMakerSourceConfigurationFilter::FilterByEntity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterByEntity, location_name: "filterByEntity"))
    IotTwinMakerSourceConfigurationFilter.add_member(:unknown, Types::IotTwinMakerSourceConfigurationFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IotTwinMakerSourceConfigurationFilter.type = Types::IotTwinMakerSourceConfigurationFilter
    IotTwinMakerSourceConfigurationFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotTwinMakerSourceConfigurationFilter)
    LambdaFunction.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    LambdaFunction.type = Types::LambdaFunction
    LinkedServices.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedService)
    ListComponentTypesFilter.add_member(:extends_from, Types::ListComponentTypesFilter::ExtendsFrom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "extendsFrom"))
    ListComponentTypesFilter.add_member(:namespace, Types::ListComponentTypesFilter::Namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    ListComponentTypesFilter.add_member(:is_abstract, Types::ListComponentTypesFilter::IsAbstract, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isAbstract"))
    ListComponentTypesFilter.add_member(:unknown, Types::ListComponentTypesFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListComponentTypesFilter.type = Types::ListComponentTypesFilter
    ListComponentTypesFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentTypesFilter)
    ListComponentTypesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentTypesInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentTypesFilters, location_name: "filters"))
    ListComponentTypesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComponentTypesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListComponentTypesInput.type = Types::ListComponentTypesInput
    ListComponentTypesOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    ListComponentTypesOutput.add_member(:component_type_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeSummaries, location_name: "componentTypeSummaries", traits: {"smithy.api#required" => {}}))
    ListComponentTypesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComponentTypesOutput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListComponentTypesOutput.type = Types::ListComponentTypesOutput
    ListComponentsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentsRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentsRequest.add_member(:component_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPath, location_name: "componentPath"))
    ListComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:component_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummaries, location_name: "componentSummaries", traits: {"smithy.api#required" => {}}))
    ListComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListEntitiesFilter.add_member(:parent_entity_id, Types::ListEntitiesFilter::ParentEntityId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId"))
    ListEntitiesFilter.add_member(:component_type_id, Types::ListEntitiesFilter::ComponentTypeId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    ListEntitiesFilter.add_member(:external_id, Types::ListEntitiesFilter::ExternalId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    ListEntitiesFilter.add_member(:unknown, Types::ListEntitiesFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListEntitiesFilter.type = Types::ListEntitiesFilter
    ListEntitiesFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesFilter)
    ListEntitiesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEntitiesInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesFilters, location_name: "filters"))
    ListEntitiesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEntitiesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEntitiesInput.type = Types::ListEntitiesInput
    ListEntitiesOutput.add_member(:entity_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntitySummaries, location_name: "entitySummaries"))
    ListEntitiesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEntitiesOutput.type = Types::ListEntitiesOutput
    ListMetadataTransferJobsFilter.add_member(:workspace_id, Types::ListMetadataTransferJobsFilter::WorkspaceId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId"))
    ListMetadataTransferJobsFilter.add_member(:state, Types::ListMetadataTransferJobsFilter::State, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobState, location_name: "state"))
    ListMetadataTransferJobsFilter.add_member(:unknown, Types::ListMetadataTransferJobsFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListMetadataTransferJobsFilter.type = Types::ListMetadataTransferJobsFilter
    ListMetadataTransferJobsFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetadataTransferJobsFilter)
    ListMetadataTransferJobsRequest.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: "sourceType", traits: {"smithy.api#required" => {}}))
    ListMetadataTransferJobsRequest.add_member(:destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationType, location_name: "destinationType", traits: {"smithy.api#required" => {}}))
    ListMetadataTransferJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetadataTransferJobsFilters, location_name: "filters"))
    ListMetadataTransferJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMetadataTransferJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListMetadataTransferJobsRequest.type = Types::ListMetadataTransferJobsRequest
    ListMetadataTransferJobsResponse.add_member(:metadata_transfer_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobSummaries, location_name: "metadataTransferJobSummaries", traits: {"smithy.api#required" => {}}))
    ListMetadataTransferJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMetadataTransferJobsResponse.type = Types::ListMetadataTransferJobsResponse
    ListPropertiesRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPropertiesRequest.add_member(:component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    ListPropertiesRequest.add_member(:component_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPath, location_name: "componentPath"))
    ListPropertiesRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#required" => {}}))
    ListPropertiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPropertiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPropertiesRequest.type = Types::ListPropertiesRequest
    ListPropertiesResponse.add_member(:property_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertySummaries, location_name: "propertySummaries", traits: {"smithy.api#required" => {}}))
    ListPropertiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPropertiesResponse.type = Types::ListPropertiesResponse
    ListScenesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListScenesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListScenesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScenesInput.type = Types::ListScenesInput
    ListScenesOutput.add_member(:scene_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneSummaries, location_name: "sceneSummaries"))
    ListScenesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScenesOutput.type = Types::ListScenesOutput
    ListSyncJobsInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSyncJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSyncJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSyncJobsInput.type = Types::ListSyncJobsInput
    ListSyncJobsOutput.add_member(:sync_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncJobSummaries, location_name: "syncJobSummaries"))
    ListSyncJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSyncJobsOutput.type = Types::ListSyncJobsOutput
    ListSyncResourcesInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSyncResourcesInput.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSyncResourcesInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceFilters, location_name: "filters"))
    ListSyncResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSyncResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSyncResourcesInput.type = Types::ListSyncResourcesInput
    ListSyncResourcesOutput.add_member(:sync_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceSummaries, location_name: "syncResources"))
    ListSyncResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSyncResourcesOutput.type = Types::ListSyncResourcesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "resourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWorkspacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWorkspacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkspacesInput.type = Types::ListWorkspacesInput
    ListWorkspacesOutput.add_member(:workspace_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceSummaries, location_name: "workspaceSummaries"))
    ListWorkspacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkspacesOutput.type = Types::ListWorkspacesOutput
    MetadataTransferJobProgress.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "totalCount"))
    MetadataTransferJobProgress.add_member(:succeeded_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "succeededCount"))
    MetadataTransferJobProgress.add_member(:skipped_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "skippedCount"))
    MetadataTransferJobProgress.add_member(:failed_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "failedCount"))
    MetadataTransferJobProgress.type = Types::MetadataTransferJobProgress
    MetadataTransferJobStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobState, location_name: "state"))
    MetadataTransferJobStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    MetadataTransferJobStatus.add_member(:queued_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "queuedPosition"))
    MetadataTransferJobStatus.type = Types::MetadataTransferJobStatus
    MetadataTransferJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobSummary)
    MetadataTransferJobSummary.add_member(:metadata_transfer_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "metadataTransferJobId", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    MetadataTransferJobSummary.add_member(:progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataTransferJobProgress, location_name: "progress"))
    MetadataTransferJobSummary.type = Types::MetadataTransferJobSummary
    OrderBy.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Order, location_name: "order"))
    OrderBy.add_member(:property_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "propertyName", traits: {"smithy.api#required" => {}}))
    OrderBy.type = Types::OrderBy
    OrderByList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy)
    ParentEntityUpdateRequest.add_member(:update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentEntityUpdateType, location_name: "updateType", traits: {"smithy.api#required" => {}}))
    ParentEntityUpdateRequest.add_member(:parent_entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId"))
    ParentEntityUpdateRequest.type = Types::ParentEntityUpdateRequest
    PricingBundles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BundleName)
    PricingPlan.add_member(:billable_entity_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "billableEntityCount"))
    PricingPlan.add_member(:bundle_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BundleInformation, location_name: "bundleInformation"))
    PricingPlan.add_member(:effective_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "effectiveDateTime", traits: {"smithy.api#required" => {}}))
    PricingPlan.add_member(:pricing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingMode, location_name: "pricingMode", traits: {"smithy.api#required" => {}}))
    PricingPlan.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    PricingPlan.add_member(:update_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReason, location_name: "updateReason", traits: {"smithy.api#required" => {}}))
    PricingPlan.type = Types::PricingPlan
    PropertyDefinitionRequest.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    PropertyDefinitionRequest.add_member(:is_required_in_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isRequiredInEntity"))
    PropertyDefinitionRequest.add_member(:is_external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isExternalId"))
    PropertyDefinitionRequest.add_member(:is_stored_externally, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isStoredExternally"))
    PropertyDefinitionRequest.add_member(:is_time_series, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isTimeSeries"))
    PropertyDefinitionRequest.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue, location_name: "defaultValue"))
    PropertyDefinitionRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration, location_name: "configuration"))
    PropertyDefinitionRequest.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDisplayName, location_name: "displayName"))
    PropertyDefinitionRequest.type = Types::PropertyDefinitionRequest
    PropertyDefinitionResponse.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataType, location_name: "dataType", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_time_series, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isTimeSeries", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_required_in_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isRequiredInEntity", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isExternalId", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_stored_externally, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isStoredExternally", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_imported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isImported", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_final, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isFinal", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isInherited", traits: {"smithy.api#required" => {}}))
    PropertyDefinitionResponse.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue, location_name: "defaultValue"))
    PropertyDefinitionResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration, location_name: "configuration"))
    PropertyDefinitionResponse.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDisplayName, location_name: "displayName"))
    PropertyDefinitionResponse.type = Types::PropertyDefinitionResponse
    PropertyDefinitionsRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyDefinitionsRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDefinitionRequest)
    PropertyDefinitionsResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyDefinitionsResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDefinitionResponse)
    PropertyFilter.add_member(:property_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "propertyName"))
    PropertyFilter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "operator"))
    PropertyFilter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue, location_name: "value"))
    PropertyFilter.type = Types::PropertyFilter
    PropertyFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyFilter)
    PropertyGroupRequest.add_member(:group_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: "groupType"))
    PropertyGroupRequest.add_member(:property_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNames, location_name: "propertyNames"))
    PropertyGroupRequest.type = Types::PropertyGroupRequest
    PropertyGroupResponse.add_member(:group_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: "groupType", traits: {"smithy.api#required" => {}}))
    PropertyGroupResponse.add_member(:property_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyNames, location_name: "propertyNames", traits: {"smithy.api#required" => {}}))
    PropertyGroupResponse.add_member(:is_inherited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isInherited", traits: {"smithy.api#required" => {}}))
    PropertyGroupResponse.type = Types::PropertyGroupResponse
    PropertyGroupsRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyGroupsRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroupRequest)
    PropertyGroupsResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyGroupsResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroupResponse)
    PropertyLatestValue.add_member(:property_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityPropertyReference, location_name: "propertyReference", traits: {"smithy.api#required" => {}}))
    PropertyLatestValue.add_member(:property_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue, location_name: "propertyValue"))
    PropertyLatestValue.type = Types::PropertyLatestValue
    PropertyLatestValueMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyLatestValueMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyLatestValue)
    PropertyNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyRequest.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDefinitionRequest, location_name: "definition"))
    PropertyRequest.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue, location_name: "value"))
    PropertyRequest.add_member(:update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyUpdateType, location_name: "updateType"))
    PropertyRequest.type = Types::PropertyRequest
    PropertyRequests.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyRequests.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyRequest)
    PropertyResponse.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDefinitionResponse, location_name: "definition"))
    PropertyResponse.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue, location_name: "value"))
    PropertyResponse.add_member(:are_all_property_values_returned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "areAllPropertyValuesReturned"))
    PropertyResponse.type = Types::PropertyResponse
    PropertyResponses.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyResponses.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyResponse)
    PropertySummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertySummary)
    PropertySummary.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDefinitionResponse, location_name: "definition"))
    PropertySummary.add_member(:property_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "propertyName", traits: {"smithy.api#required" => {}}))
    PropertySummary.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue, location_name: "value"))
    PropertySummary.add_member(:are_all_property_values_returned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "areAllPropertyValuesReturned"))
    PropertySummary.type = Types::PropertySummary
    PropertyTableValue.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    PropertyTableValue.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue)
    PropertyValue.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated and will throw an error in the future. Use time instead."}}))
    PropertyValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    PropertyValue.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "time"))
    PropertyValue.type = Types::PropertyValue
    PropertyValueEntry.add_member(:entity_property_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityPropertyReference, location_name: "entityPropertyReference", traits: {"smithy.api#required" => {}}))
    PropertyValueEntry.add_member(:property_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValues, location_name: "propertyValues"))
    PropertyValueEntry.type = Types::PropertyValueEntry
    PropertyValueHistory.add_member(:entity_property_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityPropertyReference, location_name: "entityPropertyReference", traits: {"smithy.api#required" => {}}))
    PropertyValueHistory.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: "values"))
    PropertyValueHistory.type = Types::PropertyValueHistory
    PropertyValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValueHistory)
    PropertyValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValue)
    QueryTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    QueryTimeoutException.type = Types::QueryTimeoutException
    Relationship.add_member(:target_component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "targetComponentTypeId"))
    Relationship.add_member(:relationship_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "relationshipType"))
    Relationship.type = Types::Relationship
    RelationshipValue.add_member(:target_entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "targetEntityId"))
    RelationshipValue.add_member(:target_component_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "targetComponentName"))
    RelationshipValue.type = Types::RelationshipValue
    RequiredProperties.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Row.add_member(:row_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RowData, location_name: "rowData"))
    Row.type = Types::Row
    RowData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryResultValue)
    Rows.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Row)
    S3DestinationConfiguration.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DestinationLocation, location_name: "location", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3SourceConfiguration.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SourceLocation, location_name: "location", traits: {"smithy.api#required" => {}}))
    S3SourceConfiguration.type = Types::S3SourceConfiguration
    SceneCapabilities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneCapability)
    SceneError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneErrorCode, location_name: "code"))
    SceneError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    SceneError.type = Types::SceneError
    SceneMetadataMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name)
    SceneMetadataMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneMetadataValue)
    SceneSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneSummary)
    SceneSummary.add_member(:scene_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "sceneId", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:content_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "contentLocation", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    SceneSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SceneSummary.type = Types::SceneSummary
    SelectedPropertyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    SourceConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SourceConfiguration, location_name: "s3Configuration"))
    SourceConfiguration.add_member(:iot_site_wise_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotSiteWiseSourceConfiguration, location_name: "iotSiteWiseConfiguration"))
    SourceConfiguration.add_member(:iot_twin_maker_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IotTwinMakerSourceConfiguration, location_name: "iotTwinMakerConfiguration"))
    SourceConfiguration.type = Types::SourceConfiguration
    SourceConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration)
    Status.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: "state"))
    Status.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    Status.type = Types::Status
    SyncJobStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncJobState, location_name: "state"))
    SyncJobStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    SyncJobStatus.type = Types::SyncJobStatus
    SyncJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncJobSummary)
    SyncJobSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn"))
    SyncJobSummary.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId"))
    SyncJobSummary.add_member(:sync_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSource, location_name: "syncSource"))
    SyncJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncJobStatus, location_name: "status"))
    SyncJobSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime"))
    SyncJobSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime"))
    SyncJobSummary.type = Types::SyncJobSummary
    SyncResourceFilter.add_member(:state, Types::SyncResourceFilter::State, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceState, location_name: "state"))
    SyncResourceFilter.add_member(:resource_type, Types::SyncResourceFilter::ResourceType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceType, location_name: "resourceType"))
    SyncResourceFilter.add_member(:resource_id, Types::SyncResourceFilter::ResourceId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "resourceId"))
    SyncResourceFilter.add_member(:external_id, Types::SyncResourceFilter::ExternalId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "externalId"))
    SyncResourceFilter.add_member(:unknown, Types::SyncResourceFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    SyncResourceFilter.type = Types::SyncResourceFilter
    SyncResourceFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceFilter)
    SyncResourceStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceState, location_name: "state"))
    SyncResourceStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    SyncResourceStatus.type = Types::SyncResourceStatus
    SyncResourceSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceSummary)
    SyncResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceType, location_name: "resourceType"))
    SyncResourceSummary.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "externalId"))
    SyncResourceSummary.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "resourceId"))
    SyncResourceSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncResourceStatus, location_name: "status"))
    SyncResourceSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime"))
    SyncResourceSummary.type = Types::SyncResourceSummary
    TabularConditions.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderByList, location_name: "orderBy"))
    TabularConditions.add_member(:property_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyFilters, location_name: "propertyFilters"))
    TabularConditions.type = Types::TabularConditions
    TabularPropertyValue.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyTableValue)
    TabularPropertyValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TabularPropertyValue)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "resourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "resourceARN", traits: {"smithy.api#httpQuery" => "resourceARN", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateComponentTypeInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentTypeInput.add_member(:is_singleton, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "isSingleton"))
    UpdateComponentTypeInput.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentTypeInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateComponentTypeInput.add_member(:property_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDefinitionsRequest, location_name: "propertyDefinitions"))
    UpdateComponentTypeInput.add_member(:extends_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendsFrom, location_name: "extendsFrom"))
    UpdateComponentTypeInput.add_member(:functions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionsRequest, location_name: "functions"))
    UpdateComponentTypeInput.add_member(:property_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyGroupsRequest, location_name: "propertyGroups"))
    UpdateComponentTypeInput.add_member(:component_type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeName, location_name: "componentTypeName"))
    UpdateComponentTypeInput.add_member(:composite_component_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentTypesRequest, location_name: "compositeComponentTypes"))
    UpdateComponentTypeInput.type = Types::UpdateComponentTypeInput
    UpdateComponentTypeOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    UpdateComponentTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateComponentTypeOutput.add_member(:component_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId", traits: {"smithy.api#required" => {}}))
    UpdateComponentTypeOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: "state", traits: {"smithy.api#required" => {}}))
    UpdateComponentTypeOutput.type = Types::UpdateComponentTypeOutput
    UpdateEntityInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEntityInput.add_member(:entity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEntityInput.add_member(:entity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: "entityName"))
    UpdateEntityInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEntityInput.add_member(:component_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentUpdatesMapRequest, location_name: "componentUpdates"))
    UpdateEntityInput.add_member(:composite_component_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompositeComponentUpdatesMapRequest, location_name: "compositeComponentUpdates"))
    UpdateEntityInput.add_member(:parent_entity_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentEntityUpdateRequest, location_name: "parentEntityUpdate"))
    UpdateEntityInput.type = Types::UpdateEntityInput
    UpdateEntityOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    UpdateEntityOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: "state", traits: {"smithy.api#required" => {}}))
    UpdateEntityOutput.type = Types::UpdateEntityOutput
    UpdatePricingPlanInput.add_member(:pricing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingMode, location_name: "pricingMode", traits: {"smithy.api#required" => {}}))
    UpdatePricingPlanInput.add_member(:bundle_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingBundles, location_name: "bundleNames"))
    UpdatePricingPlanInput.type = Types::UpdatePricingPlanInput
    UpdatePricingPlanOutput.add_member(:current_pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: "currentPricingPlan", traits: {"smithy.api#required" => {}}))
    UpdatePricingPlanOutput.add_member(:pending_pricing_plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingPlan, location_name: "pendingPricingPlan"))
    UpdatePricingPlanOutput.type = Types::UpdatePricingPlanOutput
    UpdateSceneInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSceneInput.add_member(:scene_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "sceneId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSceneInput.add_member(:content_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: "contentLocation"))
    UpdateSceneInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateSceneInput.add_member(:capabilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneCapabilities, location_name: "capabilities"))
    UpdateSceneInput.add_member(:scene_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SceneMetadataMap, location_name: "sceneMetadata"))
    UpdateSceneInput.type = Types::UpdateSceneInput
    UpdateSceneOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    UpdateSceneOutput.type = Types::UpdateSceneOutput
    UpdateWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateWorkspaceInput.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "role"))
    UpdateWorkspaceInput.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    UpdateWorkspaceInput.type = Types::UpdateWorkspaceInput
    UpdateWorkspaceOutput.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceOutput.type = Types::UpdateWorkspaceOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.type = Types::ValidationException
    Values.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyValue)
    WorkspaceSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceSummary)
    WorkspaceSummary.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "workspaceId", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TwinMakerArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    WorkspaceSummary.add_member(:linked_services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkedServices, location_name: "linkedServices"))
    WorkspaceSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDateTime", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateDateTime", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.type = Types::WorkspaceSummary

    AWSIoTTwinMaker = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iottwinmaker#AWSIoTTwinMaker"
      service.name = "AWSIoTTwinMaker"
      service.version = "2021-11-29"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTTwinMaker", "endpointPrefix" => "iottwinmaker"}, "aws.auth#sigv4" => {"name" => "iottwinmaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT TwinMaker"}
      service.add_operation(:batch_put_property_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#BatchPutPropertyValues"
        operation.name = "BatchPutPropertyValues"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutPropertyValuesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutPropertyValuesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entity-properties", "code" => 200}}
      end)
      service.add_operation(:cancel_metadata_transfer_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CancelMetadataTransferJob"
        operation.name = "CancelMetadataTransferJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelMetadataTransferJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelMetadataTransferJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/metadata-transfer-jobs/{metadataTransferJobId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_component_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateComponentType"
        operation.name = "CreateComponentType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentTypeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentTypeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/component-types/{componentTypeId}", "code" => 200}}
      end)
      service.add_operation(:create_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateEntity"
        operation.name = "CreateEntity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEntityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEntityOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entities", "code" => 200}}
      end)
      service.add_operation(:create_metadata_transfer_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateMetadataTransferJob"
        operation.name = "CreateMetadataTransferJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMetadataTransferJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMetadataTransferJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/metadata-transfer-jobs", "code" => 200}}
      end)
      service.add_operation(:create_scene, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateScene"
        operation.name = "CreateScene"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSceneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSceneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/scenes", "code" => 200}}
      end)
      service.add_operation(:create_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateSyncJob"
        operation.name = "CreateSyncJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSyncJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSyncJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/sync-jobs/{syncSource}", "code" => 200}}
      end)
      service.add_operation(:create_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#CreateWorkspace"
        operation.name = "CreateWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}", "code" => 200}}
      end)
      service.add_operation(:delete_component_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteComponentType"
        operation.name = "DeleteComponentType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentTypeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentTypeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}/component-types/{componentTypeId}", "code" => 200}}
      end)
      service.add_operation(:delete_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteEntity"
        operation.name = "DeleteEntity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEntityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEntityOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}/entities/{entityId}", "code" => 200}}
      end)
      service.add_operation(:delete_scene, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteScene"
        operation.name = "DeleteScene"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSceneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSceneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}/scenes/{sceneId}", "code" => 200}}
      end)
      service.add_operation(:delete_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteSyncJob"
        operation.name = "DeleteSyncJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSyncJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSyncJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}/sync-jobs/{syncSource}", "code" => 200}}
      end)
      service.add_operation(:delete_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#DeleteWorkspace"
        operation.name = "DeleteWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workspaces/{workspaceId}", "code" => 200}}
      end)
      service.add_operation(:execute_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ExecuteQuery"
        operation.name = "ExecuteQuery"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteQueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/queries/execution"}}
        operation[:paginator] = Paginators::ExecuteQuery.new
      end)
      service.add_operation(:get_component_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetComponentType"
        operation.name = "GetComponentType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentTypeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentTypeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/workspaces/{workspaceId}/component-types/{componentTypeId}", "code" => 200}}
      end)
      service.add_operation(:get_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetEntity"
        operation.name = "GetEntity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntityOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/workspaces/{workspaceId}/entities/{entityId}", "code" => 200}}
      end)
      service.add_operation(:get_metadata_transfer_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetMetadataTransferJob"
        operation.name = "GetMetadataTransferJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetadataTransferJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetadataTransferJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/metadata-transfer-jobs/{metadataTransferJobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetPricingPlan"
        operation.name = "GetPricingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPricingPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPricingPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/pricingplan", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_property_value, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetPropertyValue"
        operation.name = "GetPropertyValue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPropertyValueInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPropertyValueOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entity-properties/value", "code" => 200}}
        operation[:paginator] = Paginators::GetPropertyValue.new
      end)
      service.add_operation(:get_property_value_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetPropertyValueHistory"
        operation.name = "GetPropertyValueHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPropertyValueHistoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPropertyValueHistoryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entity-properties/history", "code" => 200}}
        operation[:paginator] = Paginators::GetPropertyValueHistory.new
      end)
      service.add_operation(:get_scene, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetScene"
        operation.name = "GetScene"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSceneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSceneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/workspaces/{workspaceId}/scenes/{sceneId}", "code" => 200}}
      end)
      service.add_operation(:get_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetSyncJob"
        operation.name = "GetSyncJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/sync-jobs/{syncSource}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#GetWorkspace"
        operation.name = "GetWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "GET", "uri" => "/workspaces/{workspaceId}", "code" => 200}}
      end)
      service.add_operation(:list_component_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListComponentTypes"
        operation.name = "ListComponentTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentTypesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentTypesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/component-types-list", "code" => 200}}
        operation[:paginator] = Paginators::ListComponentTypes.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListComponents"
        operation.name = "ListComponents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entities/{entityId}/components-list", "code" => 200}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListEntities"
        operation.name = "ListEntities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitiesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/entities-list", "code" => 200}}
        operation[:paginator] = Paginators::ListEntities.new
      end)
      service.add_operation(:list_metadata_transfer_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListMetadataTransferJobs"
        operation.name = "ListMetadataTransferJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetadataTransferJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMetadataTransferJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/metadata-transfer-jobs-list", "code" => 200}}
        operation[:paginator] = Paginators::ListMetadataTransferJobs.new
      end)
      service.add_operation(:list_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListProperties"
        operation.name = "ListProperties"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPropertiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPropertiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/properties-list", "code" => 200}}
        operation[:paginator] = Paginators::ListProperties.new
      end)
      service.add_operation(:list_scenes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListScenes"
        operation.name = "ListScenes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScenesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScenesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/scenes-list", "code" => 200}}
        operation[:paginator] = Paginators::ListScenes.new
      end)
      service.add_operation(:list_sync_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListSyncJobs"
        operation.name = "ListSyncJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSyncJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSyncJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/sync-jobs-list", "code" => 200}}
        operation[:paginator] = Paginators::ListSyncJobs.new
      end)
      service.add_operation(:list_sync_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListSyncResources"
        operation.name = "ListSyncResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSyncResourcesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSyncResourcesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces/{workspaceId}/sync-jobs/{syncSource}/resources-list", "code" => 200}}
        operation[:paginator] = Paginators::ListSyncResources.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags-list", "code" => 200}}
      end)
      service.add_operation(:list_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#ListWorkspaces"
        operation.name = "ListWorkspaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/workspaces-list", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkspaces.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:update_component_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdateComponentType"
        operation.name = "UpdateComponentType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentTypeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentTypeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/workspaces/{workspaceId}/component-types/{componentTypeId}", "code" => 200}}
      end)
      service.add_operation(:update_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdateEntity"
        operation.name = "UpdateEntity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEntityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEntityOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/workspaces/{workspaceId}/entities/{entityId}", "code" => 200}}
      end)
      service.add_operation(:update_pricing_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdatePricingPlan"
        operation.name = "UpdatePricingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingPlanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePricingPlanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "POST", "uri" => "/pricingplan", "code" => 200}}
      end)
      service.add_operation(:update_scene, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdateScene"
        operation.name = "UpdateScene"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSceneInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSceneOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api."}, "smithy.api#http" => {"method" => "PUT", "uri" => "/workspaces/{workspaceId}/scenes/{sceneId}", "code" => 200}}
      end)
      service.add_operation(:update_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iottwinmaker#UpdateWorkspace"
        operation.name = "UpdateWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
