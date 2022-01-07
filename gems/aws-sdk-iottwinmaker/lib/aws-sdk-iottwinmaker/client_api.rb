# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTTwinMaker
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    BatchPutPropertyError = Shapes::StructureShape.new(name: 'BatchPutPropertyError')
    BatchPutPropertyErrorEntry = Shapes::StructureShape.new(name: 'BatchPutPropertyErrorEntry')
    BatchPutPropertyValuesRequest = Shapes::StructureShape.new(name: 'BatchPutPropertyValuesRequest')
    BatchPutPropertyValuesResponse = Shapes::StructureShape.new(name: 'BatchPutPropertyValuesResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ComponentRequest = Shapes::StructureShape.new(name: 'ComponentRequest')
    ComponentResponse = Shapes::StructureShape.new(name: 'ComponentResponse')
    ComponentTypeId = Shapes::StringShape.new(name: 'ComponentTypeId')
    ComponentTypeSummaries = Shapes::ListShape.new(name: 'ComponentTypeSummaries')
    ComponentTypeSummary = Shapes::StructureShape.new(name: 'ComponentTypeSummary')
    ComponentUpdateRequest = Shapes::StructureShape.new(name: 'ComponentUpdateRequest')
    ComponentUpdateType = Shapes::StringShape.new(name: 'ComponentUpdateType')
    ComponentUpdatesMapRequest = Shapes::MapShape.new(name: 'ComponentUpdatesMapRequest')
    ComponentsMap = Shapes::MapShape.new(name: 'ComponentsMap')
    ComponentsMapRequest = Shapes::MapShape.new(name: 'ComponentsMapRequest')
    Configuration = Shapes::MapShape.new(name: 'Configuration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectorFailureException = Shapes::StructureShape.new(name: 'ConnectorFailureException')
    ConnectorTimeoutException = Shapes::StructureShape.new(name: 'ConnectorTimeoutException')
    CreateComponentTypeRequest = Shapes::StructureShape.new(name: 'CreateComponentTypeRequest')
    CreateComponentTypeResponse = Shapes::StructureShape.new(name: 'CreateComponentTypeResponse')
    CreateEntityRequest = Shapes::StructureShape.new(name: 'CreateEntityRequest')
    CreateEntityResponse = Shapes::StructureShape.new(name: 'CreateEntityResponse')
    CreateSceneRequest = Shapes::StructureShape.new(name: 'CreateSceneRequest')
    CreateSceneResponse = Shapes::StructureShape.new(name: 'CreateSceneResponse')
    CreateWorkspaceRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceRequest')
    CreateWorkspaceResponse = Shapes::StructureShape.new(name: 'CreateWorkspaceResponse')
    DataConnector = Shapes::StructureShape.new(name: 'DataConnector')
    DataType = Shapes::StructureShape.new(name: 'DataType')
    DataValue = Shapes::StructureShape.new(name: 'DataValue')
    DataValueList = Shapes::ListShape.new(name: 'DataValueList')
    DataValueMap = Shapes::MapShape.new(name: 'DataValueMap')
    DeleteComponentTypeRequest = Shapes::StructureShape.new(name: 'DeleteComponentTypeRequest')
    DeleteComponentTypeResponse = Shapes::StructureShape.new(name: 'DeleteComponentTypeResponse')
    DeleteEntityRequest = Shapes::StructureShape.new(name: 'DeleteEntityRequest')
    DeleteEntityResponse = Shapes::StructureShape.new(name: 'DeleteEntityResponse')
    DeleteSceneRequest = Shapes::StructureShape.new(name: 'DeleteSceneRequest')
    DeleteSceneResponse = Shapes::StructureShape.new(name: 'DeleteSceneResponse')
    DeleteWorkspaceRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceRequest')
    DeleteWorkspaceResponse = Shapes::StructureShape.new(name: 'DeleteWorkspaceResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Double = Shapes::FloatShape.new(name: 'Double')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EntityPropertyReference = Shapes::StructureShape.new(name: 'EntityPropertyReference')
    EntitySummaries = Shapes::ListShape.new(name: 'EntitySummaries')
    EntitySummary = Shapes::StructureShape.new(name: 'EntitySummary')
    Entries = Shapes::ListShape.new(name: 'Entries')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorEntries = Shapes::ListShape.new(name: 'ErrorEntries')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Errors = Shapes::ListShape.new(name: 'Errors')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Expression = Shapes::StringShape.new(name: 'Expression')
    ExtendsFrom = Shapes::ListShape.new(name: 'ExtendsFrom')
    ExternalIdProperty = Shapes::MapShape.new(name: 'ExternalIdProperty')
    FunctionRequest = Shapes::StructureShape.new(name: 'FunctionRequest')
    FunctionResponse = Shapes::StructureShape.new(name: 'FunctionResponse')
    FunctionsRequest = Shapes::MapShape.new(name: 'FunctionsRequest')
    FunctionsResponse = Shapes::MapShape.new(name: 'FunctionsResponse')
    GetComponentTypeRequest = Shapes::StructureShape.new(name: 'GetComponentTypeRequest')
    GetComponentTypeResponse = Shapes::StructureShape.new(name: 'GetComponentTypeResponse')
    GetEntityRequest = Shapes::StructureShape.new(name: 'GetEntityRequest')
    GetEntityResponse = Shapes::StructureShape.new(name: 'GetEntityResponse')
    GetPropertyValueHistoryRequest = Shapes::StructureShape.new(name: 'GetPropertyValueHistoryRequest')
    GetPropertyValueHistoryResponse = Shapes::StructureShape.new(name: 'GetPropertyValueHistoryResponse')
    GetPropertyValueRequest = Shapes::StructureShape.new(name: 'GetPropertyValueRequest')
    GetPropertyValueResponse = Shapes::StructureShape.new(name: 'GetPropertyValueResponse')
    GetSceneRequest = Shapes::StructureShape.new(name: 'GetSceneRequest')
    GetSceneResponse = Shapes::StructureShape.new(name: 'GetSceneResponse')
    GetWorkspaceRequest = Shapes::StructureShape.new(name: 'GetWorkspaceRequest')
    GetWorkspaceResponse = Shapes::StructureShape.new(name: 'GetWorkspaceResponse')
    Id = Shapes::StringShape.new(name: 'Id')
    IdOrArn = Shapes::StringShape.new(name: 'IdOrArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InterpolationParameters = Shapes::StructureShape.new(name: 'InterpolationParameters')
    InterpolationType = Shapes::StringShape.new(name: 'InterpolationType')
    IntervalInSeconds = Shapes::IntegerShape.new(name: 'IntervalInSeconds')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LambdaFunction = Shapes::StructureShape.new(name: 'LambdaFunction')
    ListComponentTypesFilter = Shapes::UnionShape.new(name: 'ListComponentTypesFilter')
    ListComponentTypesFilters = Shapes::ListShape.new(name: 'ListComponentTypesFilters')
    ListComponentTypesRequest = Shapes::StructureShape.new(name: 'ListComponentTypesRequest')
    ListComponentTypesResponse = Shapes::StructureShape.new(name: 'ListComponentTypesResponse')
    ListEntitiesFilter = Shapes::UnionShape.new(name: 'ListEntitiesFilter')
    ListEntitiesFilters = Shapes::ListShape.new(name: 'ListEntitiesFilters')
    ListEntitiesRequest = Shapes::StructureShape.new(name: 'ListEntitiesRequest')
    ListEntitiesResponse = Shapes::StructureShape.new(name: 'ListEntitiesResponse')
    ListScenesRequest = Shapes::StructureShape.new(name: 'ListScenesRequest')
    ListScenesResponse = Shapes::StructureShape.new(name: 'ListScenesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWorkspacesRequest = Shapes::StructureShape.new(name: 'ListWorkspacesRequest')
    ListWorkspacesResponse = Shapes::StructureShape.new(name: 'ListWorkspacesResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OrderByTime = Shapes::StringShape.new(name: 'OrderByTime')
    ParentEntityId = Shapes::StringShape.new(name: 'ParentEntityId')
    ParentEntityUpdateRequest = Shapes::StructureShape.new(name: 'ParentEntityUpdateRequest')
    ParentEntityUpdateType = Shapes::StringShape.new(name: 'ParentEntityUpdateType')
    PropertyDefinitionRequest = Shapes::StructureShape.new(name: 'PropertyDefinitionRequest')
    PropertyDefinitionResponse = Shapes::StructureShape.new(name: 'PropertyDefinitionResponse')
    PropertyDefinitionsRequest = Shapes::MapShape.new(name: 'PropertyDefinitionsRequest')
    PropertyDefinitionsResponse = Shapes::MapShape.new(name: 'PropertyDefinitionsResponse')
    PropertyFilter = Shapes::StructureShape.new(name: 'PropertyFilter')
    PropertyFilters = Shapes::ListShape.new(name: 'PropertyFilters')
    PropertyLatestValue = Shapes::StructureShape.new(name: 'PropertyLatestValue')
    PropertyLatestValueMap = Shapes::MapShape.new(name: 'PropertyLatestValueMap')
    PropertyRequest = Shapes::StructureShape.new(name: 'PropertyRequest')
    PropertyRequests = Shapes::MapShape.new(name: 'PropertyRequests')
    PropertyResponse = Shapes::StructureShape.new(name: 'PropertyResponse')
    PropertyResponses = Shapes::MapShape.new(name: 'PropertyResponses')
    PropertyUpdateType = Shapes::StringShape.new(name: 'PropertyUpdateType')
    PropertyValue = Shapes::StructureShape.new(name: 'PropertyValue')
    PropertyValueEntry = Shapes::StructureShape.new(name: 'PropertyValueEntry')
    PropertyValueHistory = Shapes::StructureShape.new(name: 'PropertyValueHistory')
    PropertyValueList = Shapes::ListShape.new(name: 'PropertyValueList')
    PropertyValues = Shapes::ListShape.new(name: 'PropertyValues')
    Relationship = Shapes::StructureShape.new(name: 'Relationship')
    RelationshipValue = Shapes::StructureShape.new(name: 'RelationshipValue')
    RequiredProperties = Shapes::ListShape.new(name: 'RequiredProperties')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Location = Shapes::StringShape.new(name: 'S3Location')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    SceneCapabilities = Shapes::ListShape.new(name: 'SceneCapabilities')
    SceneCapability = Shapes::StringShape.new(name: 'SceneCapability')
    SceneSummaries = Shapes::ListShape.new(name: 'SceneSummaries')
    SceneSummary = Shapes::StructureShape.new(name: 'SceneSummary')
    Scope = Shapes::StringShape.new(name: 'Scope')
    SelectedPropertyList = Shapes::ListShape.new(name: 'SelectedPropertyList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    State = Shapes::StringShape.new(name: 'State')
    Status = Shapes::StructureShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TwinMakerArn = Shapes::StringShape.new(name: 'TwinMakerArn')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateComponentTypeRequest = Shapes::StructureShape.new(name: 'UpdateComponentTypeRequest')
    UpdateComponentTypeResponse = Shapes::StructureShape.new(name: 'UpdateComponentTypeResponse')
    UpdateEntityRequest = Shapes::StructureShape.new(name: 'UpdateEntityRequest')
    UpdateEntityResponse = Shapes::StructureShape.new(name: 'UpdateEntityResponse')
    UpdateSceneRequest = Shapes::StructureShape.new(name: 'UpdateSceneRequest')
    UpdateSceneResponse = Shapes::StructureShape.new(name: 'UpdateSceneResponse')
    UpdateWorkspaceRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceRequest')
    UpdateWorkspaceResponse = Shapes::StructureShape.new(name: 'UpdateWorkspaceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')
    WorkspaceSummaries = Shapes::ListShape.new(name: 'WorkspaceSummaries')
    WorkspaceSummary = Shapes::StructureShape.new(name: 'WorkspaceSummary')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BatchPutPropertyError.add_member(:entry, Shapes::ShapeRef.new(shape: PropertyValueEntry, required: true, location_name: "entry"))
    BatchPutPropertyError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorCode"))
    BatchPutPropertyError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorMessage"))
    BatchPutPropertyError.struct_class = Types::BatchPutPropertyError

    BatchPutPropertyErrorEntry.add_member(:errors, Shapes::ShapeRef.new(shape: Errors, required: true, location_name: "errors"))
    BatchPutPropertyErrorEntry.struct_class = Types::BatchPutPropertyErrorEntry

    BatchPutPropertyValuesRequest.add_member(:entries, Shapes::ShapeRef.new(shape: Entries, required: true, location_name: "entries"))
    BatchPutPropertyValuesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    BatchPutPropertyValuesRequest.struct_class = Types::BatchPutPropertyValuesRequest

    BatchPutPropertyValuesResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: ErrorEntries, required: true, location_name: "errorEntries"))
    BatchPutPropertyValuesResponse.struct_class = Types::BatchPutPropertyValuesResponse

    ComponentRequest.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    ComponentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentRequest.add_member(:properties, Shapes::ShapeRef.new(shape: PropertyRequests, location_name: "properties"))
    ComponentRequest.struct_class = Types::ComponentRequest

    ComponentResponse.add_member(:component_name, Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    ComponentResponse.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    ComponentResponse.add_member(:defined_in, Shapes::ShapeRef.new(shape: String, location_name: "definedIn"))
    ComponentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentResponse.add_member(:properties, Shapes::ShapeRef.new(shape: PropertyResponses, location_name: "properties"))
    ComponentResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    ComponentResponse.struct_class = Types::ComponentResponse

    ComponentTypeSummaries.member = Shapes::ShapeRef.new(shape: ComponentTypeSummary)

    ComponentTypeSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    ComponentTypeSummary.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, required: true, location_name: "componentTypeId"))
    ComponentTypeSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    ComponentTypeSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentTypeSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    ComponentTypeSummary.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    ComponentTypeSummary.struct_class = Types::ComponentTypeSummary

    ComponentUpdateRequest.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    ComponentUpdateRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ComponentUpdateRequest.add_member(:property_updates, Shapes::ShapeRef.new(shape: PropertyRequests, location_name: "propertyUpdates"))
    ComponentUpdateRequest.add_member(:update_type, Shapes::ShapeRef.new(shape: ComponentUpdateType, location_name: "updateType"))
    ComponentUpdateRequest.struct_class = Types::ComponentUpdateRequest

    ComponentUpdatesMapRequest.key = Shapes::ShapeRef.new(shape: Name)
    ComponentUpdatesMapRequest.value = Shapes::ShapeRef.new(shape: ComponentUpdateRequest)

    ComponentsMap.key = Shapes::ShapeRef.new(shape: Name)
    ComponentsMap.value = Shapes::ShapeRef.new(shape: ComponentResponse)

    ComponentsMapRequest.key = Shapes::ShapeRef.new(shape: Name)
    ComponentsMapRequest.value = Shapes::ShapeRef.new(shape: ComponentRequest)

    Configuration.key = Shapes::ShapeRef.new(shape: Name)
    Configuration.value = Shapes::ShapeRef.new(shape: Value)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectorFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConnectorFailureException.struct_class = Types::ConnectorFailureException

    ConnectorTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConnectorTimeoutException.struct_class = Types::ConnectorTimeoutException

    CreateComponentTypeRequest.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, required: true, location: "uri", location_name: "componentTypeId"))
    CreateComponentTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateComponentTypeRequest.add_member(:extends_from, Shapes::ShapeRef.new(shape: ExtendsFrom, location_name: "extendsFrom"))
    CreateComponentTypeRequest.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionsRequest, location_name: "functions"))
    CreateComponentTypeRequest.add_member(:is_singleton, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSingleton"))
    CreateComponentTypeRequest.add_member(:property_definitions, Shapes::ShapeRef.new(shape: PropertyDefinitionsRequest, location_name: "propertyDefinitions"))
    CreateComponentTypeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateComponentTypeRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    CreateComponentTypeRequest.struct_class = Types::CreateComponentTypeRequest

    CreateComponentTypeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    CreateComponentTypeResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    CreateComponentTypeResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    CreateComponentTypeResponse.struct_class = Types::CreateComponentTypeResponse

    CreateEntityRequest.add_member(:components, Shapes::ShapeRef.new(shape: ComponentsMapRequest, location_name: "components"))
    CreateEntityRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEntityRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId"))
    CreateEntityRequest.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "entityName"))
    CreateEntityRequest.add_member(:parent_entity_id, Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId"))
    CreateEntityRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEntityRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    CreateEntityRequest.struct_class = Types::CreateEntityRequest

    CreateEntityResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    CreateEntityResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    CreateEntityResponse.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "entityId"))
    CreateEntityResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    CreateEntityResponse.struct_class = Types::CreateEntityResponse

    CreateSceneRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: SceneCapabilities, location_name: "capabilities"))
    CreateSceneRequest.add_member(:content_location, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "contentLocation"))
    CreateSceneRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSceneRequest.add_member(:scene_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "sceneId"))
    CreateSceneRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSceneRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    CreateSceneRequest.struct_class = Types::CreateSceneRequest

    CreateSceneResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    CreateSceneResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    CreateSceneResponse.struct_class = Types::CreateSceneResponse

    CreateWorkspaceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateWorkspaceRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "role"))
    CreateWorkspaceRequest.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "s3Location"))
    CreateWorkspaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    CreateWorkspaceRequest.struct_class = Types::CreateWorkspaceRequest

    CreateWorkspaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    CreateWorkspaceResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    CreateWorkspaceResponse.struct_class = Types::CreateWorkspaceResponse

    DataConnector.add_member(:is_native, Shapes::ShapeRef.new(shape: Boolean, location_name: "isNative"))
    DataConnector.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaFunction, location_name: "lambda"))
    DataConnector.struct_class = Types::DataConnector

    DataType.add_member(:allowed_values, Shapes::ShapeRef.new(shape: DataValueList, location_name: "allowedValues"))
    DataType.add_member(:nested_type, Shapes::ShapeRef.new(shape: DataType, location_name: "nestedType"))
    DataType.add_member(:relationship, Shapes::ShapeRef.new(shape: Relationship, location_name: "relationship"))
    DataType.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    DataType.add_member(:unit_of_measure, Shapes::ShapeRef.new(shape: String, location_name: "unitOfMeasure"))
    DataType.struct_class = Types::DataType

    DataValue.add_member(:boolean_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "booleanValue"))
    DataValue.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    DataValue.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "expression"))
    DataValue.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "integerValue"))
    DataValue.add_member(:list_value, Shapes::ShapeRef.new(shape: DataValueList, location_name: "listValue"))
    DataValue.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "longValue"))
    DataValue.add_member(:map_value, Shapes::ShapeRef.new(shape: DataValueMap, location_name: "mapValue"))
    DataValue.add_member(:relationship_value, Shapes::ShapeRef.new(shape: RelationshipValue, location_name: "relationshipValue"))
    DataValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "stringValue"))
    DataValue.struct_class = Types::DataValue

    DataValueList.member = Shapes::ShapeRef.new(shape: DataValue)

    DataValueMap.key = Shapes::ShapeRef.new(shape: String)
    DataValueMap.value = Shapes::ShapeRef.new(shape: DataValue)

    DeleteComponentTypeRequest.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, required: true, location: "uri", location_name: "componentTypeId"))
    DeleteComponentTypeRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    DeleteComponentTypeRequest.struct_class = Types::DeleteComponentTypeRequest

    DeleteComponentTypeResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    DeleteComponentTypeResponse.struct_class = Types::DeleteComponentTypeResponse

    DeleteEntityRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location: "uri", location_name: "entityId"))
    DeleteEntityRequest.add_member(:is_recursive, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "isRecursive"))
    DeleteEntityRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    DeleteEntityRequest.struct_class = Types::DeleteEntityRequest

    DeleteEntityResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    DeleteEntityResponse.struct_class = Types::DeleteEntityResponse

    DeleteSceneRequest.add_member(:scene_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "sceneId"))
    DeleteSceneRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    DeleteSceneRequest.struct_class = Types::DeleteSceneRequest

    DeleteSceneResponse.struct_class = Types::DeleteSceneResponse

    DeleteWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    DeleteWorkspaceRequest.struct_class = Types::DeleteWorkspaceRequest

    DeleteWorkspaceResponse.struct_class = Types::DeleteWorkspaceResponse

    EntityPropertyReference.add_member(:component_name, Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    EntityPropertyReference.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId"))
    EntityPropertyReference.add_member(:external_id_property, Shapes::ShapeRef.new(shape: ExternalIdProperty, location_name: "externalIdProperty"))
    EntityPropertyReference.add_member(:property_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "propertyName"))
    EntityPropertyReference.struct_class = Types::EntityPropertyReference

    EntitySummaries.member = Shapes::ShapeRef.new(shape: EntitySummary)

    EntitySummary.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    EntitySummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    EntitySummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EntitySummary.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "entityId"))
    EntitySummary.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "entityName"))
    EntitySummary.add_member(:has_child_entities, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasChildEntities"))
    EntitySummary.add_member(:parent_entity_id, Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId"))
    EntitySummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    EntitySummary.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    EntitySummary.struct_class = Types::EntitySummary

    Entries.member = Shapes::ShapeRef.new(shape: PropertyValueEntry)

    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ErrorEntries.member = Shapes::ShapeRef.new(shape: BatchPutPropertyErrorEntry)

    Errors.member = Shapes::ShapeRef.new(shape: BatchPutPropertyError)

    ExtendsFrom.member = Shapes::ShapeRef.new(shape: ComponentTypeId)

    ExternalIdProperty.key = Shapes::ShapeRef.new(shape: String)
    ExternalIdProperty.value = Shapes::ShapeRef.new(shape: String)

    FunctionRequest.add_member(:implemented_by, Shapes::ShapeRef.new(shape: DataConnector, location_name: "implementedBy"))
    FunctionRequest.add_member(:required_properties, Shapes::ShapeRef.new(shape: RequiredProperties, location_name: "requiredProperties"))
    FunctionRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    FunctionRequest.struct_class = Types::FunctionRequest

    FunctionResponse.add_member(:implemented_by, Shapes::ShapeRef.new(shape: DataConnector, location_name: "implementedBy"))
    FunctionResponse.add_member(:is_inherited, Shapes::ShapeRef.new(shape: Boolean, location_name: "isInherited"))
    FunctionResponse.add_member(:required_properties, Shapes::ShapeRef.new(shape: RequiredProperties, location_name: "requiredProperties"))
    FunctionResponse.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    FunctionResponse.struct_class = Types::FunctionResponse

    FunctionsRequest.key = Shapes::ShapeRef.new(shape: Name)
    FunctionsRequest.value = Shapes::ShapeRef.new(shape: FunctionRequest)

    FunctionsResponse.key = Shapes::ShapeRef.new(shape: Name)
    FunctionsResponse.value = Shapes::ShapeRef.new(shape: FunctionResponse)

    GetComponentTypeRequest.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, required: true, location: "uri", location_name: "componentTypeId"))
    GetComponentTypeRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    GetComponentTypeRequest.struct_class = Types::GetComponentTypeRequest

    GetComponentTypeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    GetComponentTypeResponse.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, required: true, location_name: "componentTypeId"))
    GetComponentTypeResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    GetComponentTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetComponentTypeResponse.add_member(:extends_from, Shapes::ShapeRef.new(shape: ExtendsFrom, location_name: "extendsFrom"))
    GetComponentTypeResponse.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionsResponse, location_name: "functions"))
    GetComponentTypeResponse.add_member(:is_abstract, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAbstract"))
    GetComponentTypeResponse.add_member(:is_schema_initialized, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSchemaInitialized"))
    GetComponentTypeResponse.add_member(:is_singleton, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSingleton"))
    GetComponentTypeResponse.add_member(:property_definitions, Shapes::ShapeRef.new(shape: PropertyDefinitionsResponse, location_name: "propertyDefinitions"))
    GetComponentTypeResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    GetComponentTypeResponse.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    GetComponentTypeResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "workspaceId"))
    GetComponentTypeResponse.struct_class = Types::GetComponentTypeResponse

    GetEntityRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location: "uri", location_name: "entityId"))
    GetEntityRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    GetEntityRequest.struct_class = Types::GetEntityRequest

    GetEntityResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    GetEntityResponse.add_member(:components, Shapes::ShapeRef.new(shape: ComponentsMap, location_name: "components"))
    GetEntityResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    GetEntityResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetEntityResponse.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "entityId"))
    GetEntityResponse.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "entityName"))
    GetEntityResponse.add_member(:has_child_entities, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "hasChildEntities"))
    GetEntityResponse.add_member(:parent_entity_id, Shapes::ShapeRef.new(shape: ParentEntityId, required: true, location_name: "parentEntityId"))
    GetEntityResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    GetEntityResponse.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    GetEntityResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "workspaceId"))
    GetEntityResponse.struct_class = Types::GetEntityResponse

    GetPropertyValueHistoryRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    GetPropertyValueHistoryRequest.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    GetPropertyValueHistoryRequest.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endDateTime"))
    GetPropertyValueHistoryRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId"))
    GetPropertyValueHistoryRequest.add_member(:interpolation, Shapes::ShapeRef.new(shape: InterpolationParameters, location_name: "interpolation"))
    GetPropertyValueHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetPropertyValueHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetPropertyValueHistoryRequest.add_member(:order_by_time, Shapes::ShapeRef.new(shape: OrderByTime, location_name: "orderByTime"))
    GetPropertyValueHistoryRequest.add_member(:property_filters, Shapes::ShapeRef.new(shape: PropertyFilters, location_name: "propertyFilters"))
    GetPropertyValueHistoryRequest.add_member(:selected_properties, Shapes::ShapeRef.new(shape: SelectedPropertyList, required: true, location_name: "selectedProperties"))
    GetPropertyValueHistoryRequest.add_member(:start_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDateTime"))
    GetPropertyValueHistoryRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    GetPropertyValueHistoryRequest.struct_class = Types::GetPropertyValueHistoryRequest

    GetPropertyValueHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetPropertyValueHistoryResponse.add_member(:property_values, Shapes::ShapeRef.new(shape: PropertyValueList, required: true, location_name: "propertyValues"))
    GetPropertyValueHistoryResponse.struct_class = Types::GetPropertyValueHistoryResponse

    GetPropertyValueRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: Name, location_name: "componentName"))
    GetPropertyValueRequest.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    GetPropertyValueRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "entityId"))
    GetPropertyValueRequest.add_member(:selected_properties, Shapes::ShapeRef.new(shape: SelectedPropertyList, required: true, location_name: "selectedProperties"))
    GetPropertyValueRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    GetPropertyValueRequest.struct_class = Types::GetPropertyValueRequest

    GetPropertyValueResponse.add_member(:property_values, Shapes::ShapeRef.new(shape: PropertyLatestValueMap, required: true, location_name: "propertyValues"))
    GetPropertyValueResponse.struct_class = Types::GetPropertyValueResponse

    GetSceneRequest.add_member(:scene_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "sceneId"))
    GetSceneRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    GetSceneRequest.struct_class = Types::GetSceneRequest

    GetSceneResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    GetSceneResponse.add_member(:capabilities, Shapes::ShapeRef.new(shape: SceneCapabilities, location_name: "capabilities"))
    GetSceneResponse.add_member(:content_location, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "contentLocation"))
    GetSceneResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    GetSceneResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetSceneResponse.add_member(:scene_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "sceneId"))
    GetSceneResponse.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    GetSceneResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "workspaceId"))
    GetSceneResponse.struct_class = Types::GetSceneResponse

    GetWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: IdOrArn, required: true, location: "uri", location_name: "workspaceId"))
    GetWorkspaceRequest.struct_class = Types::GetWorkspaceRequest

    GetWorkspaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    GetWorkspaceResponse.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    GetWorkspaceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetWorkspaceResponse.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "role"))
    GetWorkspaceResponse.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "s3Location"))
    GetWorkspaceResponse.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    GetWorkspaceResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "workspaceId"))
    GetWorkspaceResponse.struct_class = Types::GetWorkspaceResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InterpolationParameters.add_member(:interpolation_type, Shapes::ShapeRef.new(shape: InterpolationType, location_name: "interpolationType"))
    InterpolationParameters.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: IntervalInSeconds, location_name: "intervalInSeconds"))
    InterpolationParameters.struct_class = Types::InterpolationParameters

    LambdaFunction.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "arn"))
    LambdaFunction.struct_class = Types::LambdaFunction

    ListComponentTypesFilter.add_member(:extends_from, Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "extendsFrom"))
    ListComponentTypesFilter.add_member(:is_abstract, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAbstract"))
    ListComponentTypesFilter.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    ListComponentTypesFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListComponentTypesFilter.add_member_subclass(:extends_from, Types::ListComponentTypesFilter::ExtendsFrom)
    ListComponentTypesFilter.add_member_subclass(:is_abstract, Types::ListComponentTypesFilter::IsAbstract)
    ListComponentTypesFilter.add_member_subclass(:namespace, Types::ListComponentTypesFilter::Namespace)
    ListComponentTypesFilter.add_member_subclass(:unknown, Types::ListComponentTypesFilter::Unknown)
    ListComponentTypesFilter.struct_class = Types::ListComponentTypesFilter

    ListComponentTypesFilters.member = Shapes::ShapeRef.new(shape: ListComponentTypesFilter)

    ListComponentTypesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListComponentTypesFilters, location_name: "filters"))
    ListComponentTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListComponentTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComponentTypesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    ListComponentTypesRequest.struct_class = Types::ListComponentTypesRequest

    ListComponentTypesResponse.add_member(:component_type_summaries, Shapes::ShapeRef.new(shape: ComponentTypeSummaries, required: true, location_name: "componentTypeSummaries"))
    ListComponentTypesResponse.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListComponentTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComponentTypesResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "workspaceId"))
    ListComponentTypesResponse.struct_class = Types::ListComponentTypesResponse

    ListEntitiesFilter.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "componentTypeId"))
    ListEntitiesFilter.add_member(:parent_entity_id, Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId"))
    ListEntitiesFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListEntitiesFilter.add_member_subclass(:component_type_id, Types::ListEntitiesFilter::ComponentTypeId)
    ListEntitiesFilter.add_member_subclass(:parent_entity_id, Types::ListEntitiesFilter::ParentEntityId)
    ListEntitiesFilter.add_member_subclass(:unknown, Types::ListEntitiesFilter::Unknown)
    ListEntitiesFilter.struct_class = Types::ListEntitiesFilter

    ListEntitiesFilters.member = Shapes::ShapeRef.new(shape: ListEntitiesFilter)

    ListEntitiesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListEntitiesFilters, location_name: "filters"))
    ListEntitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEntitiesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    ListEntitiesRequest.struct_class = Types::ListEntitiesRequest

    ListEntitiesResponse.add_member(:entity_summaries, Shapes::ShapeRef.new(shape: EntitySummaries, location_name: "entitySummaries"))
    ListEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEntitiesResponse.struct_class = Types::ListEntitiesResponse

    ListScenesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListScenesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScenesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    ListScenesRequest.struct_class = Types::ListScenesRequest

    ListScenesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScenesResponse.add_member(:scene_summaries, Shapes::ShapeRef.new(shape: SceneSummaries, location_name: "sceneSummaries"))
    ListScenesResponse.struct_class = Types::ListScenesResponse

    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWorkspacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkspacesRequest.struct_class = Types::ListWorkspacesRequest

    ListWorkspacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkspacesResponse.add_member(:workspace_summaries, Shapes::ShapeRef.new(shape: WorkspaceSummaries, location_name: "workspaceSummaries"))
    ListWorkspacesResponse.struct_class = Types::ListWorkspacesResponse

    ParentEntityUpdateRequest.add_member(:parent_entity_id, Shapes::ShapeRef.new(shape: ParentEntityId, location_name: "parentEntityId"))
    ParentEntityUpdateRequest.add_member(:update_type, Shapes::ShapeRef.new(shape: ParentEntityUpdateType, required: true, location_name: "updateType"))
    ParentEntityUpdateRequest.struct_class = Types::ParentEntityUpdateRequest

    PropertyDefinitionRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, location_name: "configuration"))
    PropertyDefinitionRequest.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, location_name: "dataType"))
    PropertyDefinitionRequest.add_member(:default_value, Shapes::ShapeRef.new(shape: DataValue, location_name: "defaultValue"))
    PropertyDefinitionRequest.add_member(:is_external_id, Shapes::ShapeRef.new(shape: Boolean, location_name: "isExternalId"))
    PropertyDefinitionRequest.add_member(:is_required_in_entity, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRequiredInEntity"))
    PropertyDefinitionRequest.add_member(:is_stored_externally, Shapes::ShapeRef.new(shape: Boolean, location_name: "isStoredExternally"))
    PropertyDefinitionRequest.add_member(:is_time_series, Shapes::ShapeRef.new(shape: Boolean, location_name: "isTimeSeries"))
    PropertyDefinitionRequest.struct_class = Types::PropertyDefinitionRequest

    PropertyDefinitionResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, location_name: "configuration"))
    PropertyDefinitionResponse.add_member(:data_type, Shapes::ShapeRef.new(shape: DataType, required: true, location_name: "dataType"))
    PropertyDefinitionResponse.add_member(:default_value, Shapes::ShapeRef.new(shape: DataValue, location_name: "defaultValue"))
    PropertyDefinitionResponse.add_member(:is_external_id, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isExternalId"))
    PropertyDefinitionResponse.add_member(:is_final, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isFinal"))
    PropertyDefinitionResponse.add_member(:is_imported, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isImported"))
    PropertyDefinitionResponse.add_member(:is_inherited, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isInherited"))
    PropertyDefinitionResponse.add_member(:is_required_in_entity, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isRequiredInEntity"))
    PropertyDefinitionResponse.add_member(:is_stored_externally, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isStoredExternally"))
    PropertyDefinitionResponse.add_member(:is_time_series, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isTimeSeries"))
    PropertyDefinitionResponse.struct_class = Types::PropertyDefinitionResponse

    PropertyDefinitionsRequest.key = Shapes::ShapeRef.new(shape: Name)
    PropertyDefinitionsRequest.value = Shapes::ShapeRef.new(shape: PropertyDefinitionRequest)

    PropertyDefinitionsResponse.key = Shapes::ShapeRef.new(shape: Name)
    PropertyDefinitionsResponse.value = Shapes::ShapeRef.new(shape: PropertyDefinitionResponse)

    PropertyFilter.add_member(:operator, Shapes::ShapeRef.new(shape: String, location_name: "operator"))
    PropertyFilter.add_member(:property_name, Shapes::ShapeRef.new(shape: String, location_name: "propertyName"))
    PropertyFilter.add_member(:value, Shapes::ShapeRef.new(shape: DataValue, location_name: "value"))
    PropertyFilter.struct_class = Types::PropertyFilter

    PropertyFilters.member = Shapes::ShapeRef.new(shape: PropertyFilter)

    PropertyLatestValue.add_member(:property_reference, Shapes::ShapeRef.new(shape: EntityPropertyReference, required: true, location_name: "propertyReference"))
    PropertyLatestValue.add_member(:property_value, Shapes::ShapeRef.new(shape: DataValue, location_name: "propertyValue"))
    PropertyLatestValue.struct_class = Types::PropertyLatestValue

    PropertyLatestValueMap.key = Shapes::ShapeRef.new(shape: Name)
    PropertyLatestValueMap.value = Shapes::ShapeRef.new(shape: PropertyLatestValue)

    PropertyRequest.add_member(:definition, Shapes::ShapeRef.new(shape: PropertyDefinitionRequest, location_name: "definition"))
    PropertyRequest.add_member(:update_type, Shapes::ShapeRef.new(shape: PropertyUpdateType, location_name: "updateType"))
    PropertyRequest.add_member(:value, Shapes::ShapeRef.new(shape: DataValue, location_name: "value"))
    PropertyRequest.struct_class = Types::PropertyRequest

    PropertyRequests.key = Shapes::ShapeRef.new(shape: Name)
    PropertyRequests.value = Shapes::ShapeRef.new(shape: PropertyRequest)

    PropertyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PropertyDefinitionResponse, location_name: "definition"))
    PropertyResponse.add_member(:value, Shapes::ShapeRef.new(shape: DataValue, location_name: "value"))
    PropertyResponse.struct_class = Types::PropertyResponse

    PropertyResponses.key = Shapes::ShapeRef.new(shape: Name)
    PropertyResponses.value = Shapes::ShapeRef.new(shape: PropertyResponse)

    PropertyValue.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    PropertyValue.add_member(:value, Shapes::ShapeRef.new(shape: DataValue, required: true, location_name: "value"))
    PropertyValue.struct_class = Types::PropertyValue

    PropertyValueEntry.add_member(:entity_property_reference, Shapes::ShapeRef.new(shape: EntityPropertyReference, required: true, location_name: "entityPropertyReference"))
    PropertyValueEntry.add_member(:property_values, Shapes::ShapeRef.new(shape: PropertyValues, location_name: "propertyValues"))
    PropertyValueEntry.struct_class = Types::PropertyValueEntry

    PropertyValueHistory.add_member(:entity_property_reference, Shapes::ShapeRef.new(shape: EntityPropertyReference, required: true, location_name: "entityPropertyReference"))
    PropertyValueHistory.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "values"))
    PropertyValueHistory.struct_class = Types::PropertyValueHistory

    PropertyValueList.member = Shapes::ShapeRef.new(shape: PropertyValueHistory)

    PropertyValues.member = Shapes::ShapeRef.new(shape: PropertyValue)

    Relationship.add_member(:relationship_type, Shapes::ShapeRef.new(shape: String, location_name: "relationshipType"))
    Relationship.add_member(:target_component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, location_name: "targetComponentTypeId"))
    Relationship.struct_class = Types::Relationship

    RelationshipValue.add_member(:target_component_name, Shapes::ShapeRef.new(shape: Name, location_name: "targetComponentName"))
    RelationshipValue.add_member(:target_entity_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "targetEntityId"))
    RelationshipValue.struct_class = Types::RelationshipValue

    RequiredProperties.member = Shapes::ShapeRef.new(shape: Name)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SceneCapabilities.member = Shapes::ShapeRef.new(shape: SceneCapability)

    SceneSummaries.member = Shapes::ShapeRef.new(shape: SceneSummary)

    SceneSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    SceneSummary.add_member(:content_location, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "contentLocation"))
    SceneSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    SceneSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SceneSummary.add_member(:scene_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "sceneId"))
    SceneSummary.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    SceneSummary.struct_class = Types::SceneSummary

    SelectedPropertyList.member = Shapes::ShapeRef.new(shape: String)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Status.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    Status.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    Status.struct_class = Types::Status

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location: "querystring", location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateComponentTypeRequest.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, required: true, location: "uri", location_name: "componentTypeId"))
    UpdateComponentTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateComponentTypeRequest.add_member(:extends_from, Shapes::ShapeRef.new(shape: ExtendsFrom, location_name: "extendsFrom"))
    UpdateComponentTypeRequest.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionsRequest, location_name: "functions"))
    UpdateComponentTypeRequest.add_member(:is_singleton, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSingleton"))
    UpdateComponentTypeRequest.add_member(:property_definitions, Shapes::ShapeRef.new(shape: PropertyDefinitionsRequest, location_name: "propertyDefinitions"))
    UpdateComponentTypeRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    UpdateComponentTypeRequest.struct_class = Types::UpdateComponentTypeRequest

    UpdateComponentTypeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    UpdateComponentTypeResponse.add_member(:component_type_id, Shapes::ShapeRef.new(shape: ComponentTypeId, required: true, location_name: "componentTypeId"))
    UpdateComponentTypeResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    UpdateComponentTypeResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "workspaceId"))
    UpdateComponentTypeResponse.struct_class = Types::UpdateComponentTypeResponse

    UpdateEntityRequest.add_member(:component_updates, Shapes::ShapeRef.new(shape: ComponentUpdatesMapRequest, location_name: "componentUpdates"))
    UpdateEntityRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEntityRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location: "uri", location_name: "entityId"))
    UpdateEntityRequest.add_member(:entity_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "entityName"))
    UpdateEntityRequest.add_member(:parent_entity_update, Shapes::ShapeRef.new(shape: ParentEntityUpdateRequest, location_name: "parentEntityUpdate"))
    UpdateEntityRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    UpdateEntityRequest.struct_class = Types::UpdateEntityRequest

    UpdateEntityResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    UpdateEntityResponse.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    UpdateEntityResponse.struct_class = Types::UpdateEntityResponse

    UpdateSceneRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: SceneCapabilities, location_name: "capabilities"))
    UpdateSceneRequest.add_member(:content_location, Shapes::ShapeRef.new(shape: S3Url, location_name: "contentLocation"))
    UpdateSceneRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateSceneRequest.add_member(:scene_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "sceneId"))
    UpdateSceneRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    UpdateSceneRequest.struct_class = Types::UpdateSceneRequest

    UpdateSceneResponse.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    UpdateSceneResponse.struct_class = Types::UpdateSceneResponse

    UpdateWorkspaceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateWorkspaceRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "role"))
    UpdateWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "workspaceId"))
    UpdateWorkspaceRequest.struct_class = Types::UpdateWorkspaceRequest

    UpdateWorkspaceResponse.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    UpdateWorkspaceResponse.struct_class = Types::UpdateWorkspaceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    Values.member = Shapes::ShapeRef.new(shape: PropertyValue)

    WorkspaceSummaries.member = Shapes::ShapeRef.new(shape: WorkspaceSummary)

    WorkspaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TwinMakerArn, required: true, location_name: "arn"))
    WorkspaceSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDateTime"))
    WorkspaceSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    WorkspaceSummary.add_member(:update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updateDateTime"))
    WorkspaceSummary.add_member(:workspace_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "workspaceId"))
    WorkspaceSummary.struct_class = Types::WorkspaceSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-11-29"

      api.metadata = {
        "apiVersion" => "2021-11-29",
        "endpointPrefix" => "iottwinmaker",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT TwinMaker",
        "serviceId" => "IoTTwinMaker",
        "signatureVersion" => "v4",
        "signingName" => "iottwinmaker",
        "uid" => "iottwinmaker-2021-11-29",
      }

      api.add_operation(:batch_put_property_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutPropertyValues"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/entity-properties"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchPutPropertyValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutPropertyValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_component_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComponentType"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/component-types/{componentTypeId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateComponentTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComponentTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEntity"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/entities"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_scene, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScene"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/scenes"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateSceneRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSceneResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspace"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_component_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComponentType"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/component-types/{componentTypeId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteComponentTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteComponentTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEntity"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/entities/{entityId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_scene, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScene"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/scenes/{sceneId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteSceneRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSceneResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspace"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_component_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComponentType"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/component-types/{componentTypeId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetComponentTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComponentTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEntity"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/entities/{entityId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_property_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPropertyValue"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/entity-properties/value"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetPropertyValueRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPropertyValueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorTimeoutException)
      end)

      api.add_operation(:get_property_value_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPropertyValueHistory"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/entity-properties/history"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetPropertyValueHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPropertyValueHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConnectorTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_scene, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScene"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/scenes/{sceneId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetSceneRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSceneResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkspace"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_component_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponentTypes"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/component-types-list"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListComponentTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComponentTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntities"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/entities-list"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scenes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScenes"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/scenes-list"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListScenesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScenesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/tags-list"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces-list"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkspacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_component_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComponentType"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/component-types/{componentTypeId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateComponentTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComponentTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEntity"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/entities/{entityId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_scene, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScene"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/scenes/{sceneId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateSceneRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSceneResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspace"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
