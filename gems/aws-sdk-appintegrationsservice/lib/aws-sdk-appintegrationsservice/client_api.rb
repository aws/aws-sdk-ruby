# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppIntegrationsService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ApplicationApprovedOrigins = Shapes::ListShape.new(name: 'ApplicationApprovedOrigins')
    ApplicationAssociationSummary = Shapes::StructureShape.new(name: 'ApplicationAssociationSummary')
    ApplicationAssociationsList = Shapes::ListShape.new(name: 'ApplicationAssociationsList')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationNamespace = Shapes::StringShape.new(name: 'ApplicationNamespace')
    ApplicationSourceConfig = Shapes::StructureShape.new(name: 'ApplicationSourceConfig')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationTrustedSource = Shapes::StringShape.new(name: 'ApplicationTrustedSource')
    ApplicationsList = Shapes::ListShape.new(name: 'ApplicationsList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnOrUUID = Shapes::StringShape.new(name: 'ArnOrUUID')
    ClientAssociationMetadata = Shapes::MapShape.new(name: 'ClientAssociationMetadata')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateDataIntegrationAssociationRequest = Shapes::StructureShape.new(name: 'CreateDataIntegrationAssociationRequest')
    CreateDataIntegrationAssociationResponse = Shapes::StructureShape.new(name: 'CreateDataIntegrationAssociationResponse')
    CreateDataIntegrationRequest = Shapes::StructureShape.new(name: 'CreateDataIntegrationRequest')
    CreateDataIntegrationResponse = Shapes::StructureShape.new(name: 'CreateDataIntegrationResponse')
    CreateEventIntegrationRequest = Shapes::StructureShape.new(name: 'CreateEventIntegrationRequest')
    CreateEventIntegrationResponse = Shapes::StructureShape.new(name: 'CreateEventIntegrationResponse')
    DataIntegrationAssociationSummary = Shapes::StructureShape.new(name: 'DataIntegrationAssociationSummary')
    DataIntegrationAssociationsList = Shapes::ListShape.new(name: 'DataIntegrationAssociationsList')
    DataIntegrationSummary = Shapes::StructureShape.new(name: 'DataIntegrationSummary')
    DataIntegrationsList = Shapes::ListShape.new(name: 'DataIntegrationsList')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteDataIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteDataIntegrationRequest')
    DeleteDataIntegrationResponse = Shapes::StructureShape.new(name: 'DeleteDataIntegrationResponse')
    DeleteEventIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteEventIntegrationRequest')
    DeleteEventIntegrationResponse = Shapes::StructureShape.new(name: 'DeleteEventIntegrationResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DestinationURI = Shapes::StringShape.new(name: 'DestinationURI')
    DuplicateResourceException = Shapes::StructureShape.new(name: 'DuplicateResourceException')
    EventBridgeBus = Shapes::StringShape.new(name: 'EventBridgeBus')
    EventBridgeRuleName = Shapes::StringShape.new(name: 'EventBridgeRuleName')
    EventDefinitionSchema = Shapes::StringShape.new(name: 'EventDefinitionSchema')
    EventFilter = Shapes::StructureShape.new(name: 'EventFilter')
    EventIntegration = Shapes::StructureShape.new(name: 'EventIntegration')
    EventIntegrationAssociation = Shapes::StructureShape.new(name: 'EventIntegrationAssociation')
    EventIntegrationAssociationsList = Shapes::ListShape.new(name: 'EventIntegrationAssociationsList')
    EventIntegrationsList = Shapes::ListShape.new(name: 'EventIntegrationsList')
    EventName = Shapes::StringShape.new(name: 'EventName')
    ExecutionConfiguration = Shapes::StructureShape.new(name: 'ExecutionConfiguration')
    ExecutionMode = Shapes::StringShape.new(name: 'ExecutionMode')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExternalUrlConfig = Shapes::StructureShape.new(name: 'ExternalUrlConfig')
    Fields = Shapes::StringShape.new(name: 'Fields')
    FieldsList = Shapes::ListShape.new(name: 'FieldsList')
    FieldsMap = Shapes::MapShape.new(name: 'FieldsMap')
    FileConfiguration = Shapes::StructureShape.new(name: 'FileConfiguration')
    FolderList = Shapes::ListShape.new(name: 'FolderList')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetDataIntegrationRequest = Shapes::StructureShape.new(name: 'GetDataIntegrationRequest')
    GetDataIntegrationResponse = Shapes::StructureShape.new(name: 'GetDataIntegrationResponse')
    GetEventIntegrationRequest = Shapes::StructureShape.new(name: 'GetEventIntegrationRequest')
    GetEventIntegrationResponse = Shapes::StructureShape.new(name: 'GetEventIntegrationResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LastExecutionStatus = Shapes::StructureShape.new(name: 'LastExecutionStatus')
    ListApplicationAssociationsRequest = Shapes::StructureShape.new(name: 'ListApplicationAssociationsRequest')
    ListApplicationAssociationsResponse = Shapes::StructureShape.new(name: 'ListApplicationAssociationsResponse')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListDataIntegrationAssociationsRequest = Shapes::StructureShape.new(name: 'ListDataIntegrationAssociationsRequest')
    ListDataIntegrationAssociationsResponse = Shapes::StructureShape.new(name: 'ListDataIntegrationAssociationsResponse')
    ListDataIntegrationsRequest = Shapes::StructureShape.new(name: 'ListDataIntegrationsRequest')
    ListDataIntegrationsResponse = Shapes::StructureShape.new(name: 'ListDataIntegrationsResponse')
    ListEventIntegrationAssociationsRequest = Shapes::StructureShape.new(name: 'ListEventIntegrationAssociationsRequest')
    ListEventIntegrationAssociationsResponse = Shapes::StructureShape.new(name: 'ListEventIntegrationAssociationsResponse')
    ListEventIntegrationsRequest = Shapes::StructureShape.new(name: 'ListEventIntegrationsRequest')
    ListEventIntegrationsResponse = Shapes::StructureShape.new(name: 'ListEventIntegrationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankLongString = Shapes::StringShape.new(name: 'NonBlankLongString')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    Object = Shapes::StringShape.new(name: 'Object')
    ObjectConfiguration = Shapes::MapShape.new(name: 'ObjectConfiguration')
    OnDemandConfiguration = Shapes::StructureShape.new(name: 'OnDemandConfiguration')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PermissionList = Shapes::ListShape.new(name: 'PermissionList')
    Publication = Shapes::StructureShape.new(name: 'Publication')
    PublicationList = Shapes::ListShape.new(name: 'PublicationList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceQuotaExceededException = Shapes::StructureShape.new(name: 'ResourceQuotaExceededException')
    ScheduleConfiguration = Shapes::StructureShape.new(name: 'ScheduleConfiguration')
    Source = Shapes::StringShape.new(name: 'Source')
    SourceURI = Shapes::StringShape.new(name: 'SourceURI')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionList = Shapes::ListShape.new(name: 'SubscriptionList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    URL = Shapes::StringShape.new(name: 'URL')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UpdateDataIntegrationAssociationRequest = Shapes::StructureShape.new(name: 'UpdateDataIntegrationAssociationRequest')
    UpdateDataIntegrationAssociationResponse = Shapes::StructureShape.new(name: 'UpdateDataIntegrationAssociationResponse')
    UpdateDataIntegrationRequest = Shapes::StructureShape.new(name: 'UpdateDataIntegrationRequest')
    UpdateDataIntegrationResponse = Shapes::StructureShape.new(name: 'UpdateDataIntegrationResponse')
    UpdateEventIntegrationRequest = Shapes::StructureShape.new(name: 'UpdateEventIntegrationRequest')
    UpdateEventIntegrationResponse = Shapes::StructureShape.new(name: 'UpdateEventIntegrationResponse')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ApplicationApprovedOrigins.member = Shapes::ShapeRef.new(shape: ApplicationTrustedSource)

    ApplicationAssociationSummary.add_member(:application_association_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ApplicationAssociationArn"))
    ApplicationAssociationSummary.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ApplicationArn"))
    ApplicationAssociationSummary.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "ClientId"))
    ApplicationAssociationSummary.struct_class = Types::ApplicationAssociationSummary

    ApplicationAssociationsList.member = Shapes::ShapeRef.new(shape: ApplicationAssociationSummary)

    ApplicationSourceConfig.add_member(:external_url_config, Shapes::ShapeRef.new(shape: ExternalUrlConfig, location_name: "ExternalUrlConfig"))
    ApplicationSourceConfig.struct_class = Types::ApplicationSourceConfig

    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "Id"))
    ApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "Name"))
    ApplicationSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: ApplicationNamespace, location_name: "Namespace"))
    ApplicationSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ApplicationSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ApplicationsList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ClientAssociationMetadata.key = Shapes::ShapeRef.new(shape: NonBlankString)
    ClientAssociationMetadata.value = Shapes::ShapeRef.new(shape: NonBlankString)

    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "Name"))
    CreateApplicationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: ApplicationNamespace, required: true, location_name: "Namespace"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateApplicationRequest.add_member(:application_source_config, Shapes::ShapeRef.new(shape: ApplicationSourceConfig, required: true, location_name: "ApplicationSourceConfig"))
    CreateApplicationRequest.add_member(:subscriptions, Shapes::ShapeRef.new(shape: SubscriptionList, deprecated: true, location_name: "Subscriptions", metadata: {"deprecatedMessage"=>"Subscriptions has been replaced with Permissions"}))
    CreateApplicationRequest.add_member(:publications, Shapes::ShapeRef.new(shape: PublicationList, deprecated: true, location_name: "Publications", metadata: {"deprecatedMessage"=>"Publications has been replaced with Permissions"}))
    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateApplicationRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "Id"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateDataIntegrationAssociationRequest.add_member(:data_integration_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    CreateDataIntegrationAssociationRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "ClientId"))
    CreateDataIntegrationAssociationRequest.add_member(:object_configuration, Shapes::ShapeRef.new(shape: ObjectConfiguration, location_name: "ObjectConfiguration"))
    CreateDataIntegrationAssociationRequest.add_member(:destination_uri, Shapes::ShapeRef.new(shape: DestinationURI, location_name: "DestinationURI"))
    CreateDataIntegrationAssociationRequest.add_member(:client_association_metadata, Shapes::ShapeRef.new(shape: ClientAssociationMetadata, location_name: "ClientAssociationMetadata"))
    CreateDataIntegrationAssociationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataIntegrationAssociationRequest.add_member(:execution_configuration, Shapes::ShapeRef.new(shape: ExecutionConfiguration, location_name: "ExecutionConfiguration"))
    CreateDataIntegrationAssociationRequest.struct_class = Types::CreateDataIntegrationAssociationRequest

    CreateDataIntegrationAssociationResponse.add_member(:data_integration_association_id, Shapes::ShapeRef.new(shape: UUID, location_name: "DataIntegrationAssociationId"))
    CreateDataIntegrationAssociationResponse.add_member(:data_integration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DataIntegrationArn"))
    CreateDataIntegrationAssociationResponse.struct_class = Types::CreateDataIntegrationAssociationResponse

    CreateDataIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateDataIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDataIntegrationRequest.add_member(:kms_key, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "KmsKey"))
    CreateDataIntegrationRequest.add_member(:source_uri, Shapes::ShapeRef.new(shape: SourceURI, location_name: "SourceURI"))
    CreateDataIntegrationRequest.add_member(:schedule_config, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "ScheduleConfig"))
    CreateDataIntegrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDataIntegrationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataIntegrationRequest.add_member(:file_configuration, Shapes::ShapeRef.new(shape: FileConfiguration, location_name: "FileConfiguration"))
    CreateDataIntegrationRequest.add_member(:object_configuration, Shapes::ShapeRef.new(shape: ObjectConfiguration, location_name: "ObjectConfiguration"))
    CreateDataIntegrationRequest.struct_class = Types::CreateDataIntegrationRequest

    CreateDataIntegrationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateDataIntegrationResponse.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "Id"))
    CreateDataIntegrationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateDataIntegrationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDataIntegrationResponse.add_member(:kms_key, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "KmsKey"))
    CreateDataIntegrationResponse.add_member(:source_uri, Shapes::ShapeRef.new(shape: SourceURI, location_name: "SourceURI"))
    CreateDataIntegrationResponse.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "ScheduleConfiguration"))
    CreateDataIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDataIntegrationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken"))
    CreateDataIntegrationResponse.add_member(:file_configuration, Shapes::ShapeRef.new(shape: FileConfiguration, location_name: "FileConfiguration"))
    CreateDataIntegrationResponse.add_member(:object_configuration, Shapes::ShapeRef.new(shape: ObjectConfiguration, location_name: "ObjectConfiguration"))
    CreateDataIntegrationResponse.struct_class = Types::CreateDataIntegrationResponse

    CreateEventIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateEventIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEventIntegrationRequest.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, required: true, location_name: "EventFilter"))
    CreateEventIntegrationRequest.add_member(:event_bridge_bus, Shapes::ShapeRef.new(shape: EventBridgeBus, required: true, location_name: "EventBridgeBus"))
    CreateEventIntegrationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateEventIntegrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEventIntegrationRequest.struct_class = Types::CreateEventIntegrationRequest

    CreateEventIntegrationResponse.add_member(:event_integration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventIntegrationArn"))
    CreateEventIntegrationResponse.struct_class = Types::CreateEventIntegrationResponse

    DataIntegrationAssociationSummary.add_member(:data_integration_association_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DataIntegrationAssociationArn"))
    DataIntegrationAssociationSummary.add_member(:data_integration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DataIntegrationArn"))
    DataIntegrationAssociationSummary.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "ClientId"))
    DataIntegrationAssociationSummary.add_member(:destination_uri, Shapes::ShapeRef.new(shape: DestinationURI, location_name: "DestinationURI"))
    DataIntegrationAssociationSummary.add_member(:last_execution_status, Shapes::ShapeRef.new(shape: LastExecutionStatus, location_name: "LastExecutionStatus"))
    DataIntegrationAssociationSummary.add_member(:execution_configuration, Shapes::ShapeRef.new(shape: ExecutionConfiguration, location_name: "ExecutionConfiguration"))
    DataIntegrationAssociationSummary.struct_class = Types::DataIntegrationAssociationSummary

    DataIntegrationAssociationsList.member = Shapes::ShapeRef.new(shape: DataIntegrationAssociationSummary)

    DataIntegrationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DataIntegrationSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    DataIntegrationSummary.add_member(:source_uri, Shapes::ShapeRef.new(shape: SourceURI, location_name: "SourceURI"))
    DataIntegrationSummary.struct_class = Types::DataIntegrationSummary

    DataIntegrationsList.member = Shapes::ShapeRef.new(shape: DataIntegrationSummary)

    DeleteApplicationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ArnOrUUID, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteDataIntegrationRequest.add_member(:data_integration_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    DeleteDataIntegrationRequest.struct_class = Types::DeleteDataIntegrationRequest

    DeleteDataIntegrationResponse.struct_class = Types::DeleteDataIntegrationResponse

    DeleteEventIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    DeleteEventIntegrationRequest.struct_class = Types::DeleteEventIntegrationRequest

    DeleteEventIntegrationResponse.struct_class = Types::DeleteEventIntegrationResponse

    DuplicateResourceException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DuplicateResourceException.struct_class = Types::DuplicateResourceException

    EventFilter.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "Source"))
    EventFilter.struct_class = Types::EventFilter

    EventIntegration.add_member(:event_integration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventIntegrationArn"))
    EventIntegration.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    EventIntegration.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    EventIntegration.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, location_name: "EventFilter"))
    EventIntegration.add_member(:event_bridge_bus, Shapes::ShapeRef.new(shape: EventBridgeBus, location_name: "EventBridgeBus"))
    EventIntegration.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EventIntegration.struct_class = Types::EventIntegration

    EventIntegrationAssociation.add_member(:event_integration_association_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventIntegrationAssociationArn"))
    EventIntegrationAssociation.add_member(:event_integration_association_id, Shapes::ShapeRef.new(shape: UUID, location_name: "EventIntegrationAssociationId"))
    EventIntegrationAssociation.add_member(:event_integration_name, Shapes::ShapeRef.new(shape: Name, location_name: "EventIntegrationName"))
    EventIntegrationAssociation.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "ClientId"))
    EventIntegrationAssociation.add_member(:event_bridge_rule_name, Shapes::ShapeRef.new(shape: EventBridgeRuleName, location_name: "EventBridgeRuleName"))
    EventIntegrationAssociation.add_member(:client_association_metadata, Shapes::ShapeRef.new(shape: ClientAssociationMetadata, location_name: "ClientAssociationMetadata"))
    EventIntegrationAssociation.struct_class = Types::EventIntegrationAssociation

    EventIntegrationAssociationsList.member = Shapes::ShapeRef.new(shape: EventIntegrationAssociation)

    EventIntegrationsList.member = Shapes::ShapeRef.new(shape: EventIntegration)

    ExecutionConfiguration.add_member(:execution_mode, Shapes::ShapeRef.new(shape: ExecutionMode, required: true, location_name: "ExecutionMode"))
    ExecutionConfiguration.add_member(:on_demand_configuration, Shapes::ShapeRef.new(shape: OnDemandConfiguration, location_name: "OnDemandConfiguration"))
    ExecutionConfiguration.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "ScheduleConfiguration"))
    ExecutionConfiguration.struct_class = Types::ExecutionConfiguration

    ExternalUrlConfig.add_member(:access_url, Shapes::ShapeRef.new(shape: URL, required: true, location_name: "AccessUrl"))
    ExternalUrlConfig.add_member(:approved_origins, Shapes::ShapeRef.new(shape: ApplicationApprovedOrigins, location_name: "ApprovedOrigins"))
    ExternalUrlConfig.struct_class = Types::ExternalUrlConfig

    FieldsList.member = Shapes::ShapeRef.new(shape: Fields)

    FieldsMap.key = Shapes::ShapeRef.new(shape: NonBlankString)
    FieldsMap.value = Shapes::ShapeRef.new(shape: FieldsList)

    FileConfiguration.add_member(:folders, Shapes::ShapeRef.new(shape: FolderList, required: true, location_name: "Folders"))
    FileConfiguration.add_member(:filters, Shapes::ShapeRef.new(shape: FieldsMap, location_name: "Filters"))
    FileConfiguration.struct_class = Types::FileConfiguration

    FolderList.member = Shapes::ShapeRef.new(shape: NonBlankLongString)

    GetApplicationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ArnOrUUID, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "Id"))
    GetApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "Name"))
    GetApplicationResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: ApplicationNamespace, location_name: "Namespace"))
    GetApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetApplicationResponse.add_member(:application_source_config, Shapes::ShapeRef.new(shape: ApplicationSourceConfig, location_name: "ApplicationSourceConfig"))
    GetApplicationResponse.add_member(:subscriptions, Shapes::ShapeRef.new(shape: SubscriptionList, deprecated: true, location_name: "Subscriptions", metadata: {"deprecatedMessage"=>"Subscriptions has been replaced with Permissions"}))
    GetApplicationResponse.add_member(:publications, Shapes::ShapeRef.new(shape: PublicationList, deprecated: true, location_name: "Publications", metadata: {"deprecatedMessage"=>"Publications has been replaced with Permissions"}))
    GetApplicationResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    GetApplicationResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    GetApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetApplicationResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetDataIntegrationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    GetDataIntegrationRequest.struct_class = Types::GetDataIntegrationRequest

    GetDataIntegrationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetDataIntegrationResponse.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "Id"))
    GetDataIntegrationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    GetDataIntegrationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetDataIntegrationResponse.add_member(:kms_key, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "KmsKey"))
    GetDataIntegrationResponse.add_member(:source_uri, Shapes::ShapeRef.new(shape: SourceURI, location_name: "SourceURI"))
    GetDataIntegrationResponse.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: "ScheduleConfiguration"))
    GetDataIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetDataIntegrationResponse.add_member(:file_configuration, Shapes::ShapeRef.new(shape: FileConfiguration, location_name: "FileConfiguration"))
    GetDataIntegrationResponse.add_member(:object_configuration, Shapes::ShapeRef.new(shape: ObjectConfiguration, location_name: "ObjectConfiguration"))
    GetDataIntegrationResponse.struct_class = Types::GetDataIntegrationResponse

    GetEventIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    GetEventIntegrationRequest.struct_class = Types::GetEventIntegrationRequest

    GetEventIntegrationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    GetEventIntegrationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetEventIntegrationResponse.add_member(:event_integration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventIntegrationArn"))
    GetEventIntegrationResponse.add_member(:event_bridge_bus, Shapes::ShapeRef.new(shape: EventBridgeBus, location_name: "EventBridgeBus"))
    GetEventIntegrationResponse.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, location_name: "EventFilter"))
    GetEventIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetEventIntegrationResponse.struct_class = Types::GetEventIntegrationResponse

    InternalServiceError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalServiceError.struct_class = Types::InternalServiceError

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    LastExecutionStatus.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "ExecutionStatus"))
    LastExecutionStatus.add_member(:status_message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "StatusMessage"))
    LastExecutionStatus.struct_class = Types::LastExecutionStatus

    ListApplicationAssociationsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ArnOrUUID, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    ListApplicationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApplicationAssociationsRequest.struct_class = Types::ListApplicationAssociationsRequest

    ListApplicationAssociationsResponse.add_member(:application_associations, Shapes::ShapeRef.new(shape: ApplicationAssociationsList, location_name: "ApplicationAssociations"))
    ListApplicationAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationAssociationsResponse.struct_class = Types::ListApplicationAssociationsResponse

    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationsList, location_name: "Applications"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListDataIntegrationAssociationsRequest.add_member(:data_integration_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    ListDataIntegrationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDataIntegrationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataIntegrationAssociationsRequest.struct_class = Types::ListDataIntegrationAssociationsRequest

    ListDataIntegrationAssociationsResponse.add_member(:data_integration_associations, Shapes::ShapeRef.new(shape: DataIntegrationAssociationsList, location_name: "DataIntegrationAssociations"))
    ListDataIntegrationAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataIntegrationAssociationsResponse.struct_class = Types::ListDataIntegrationAssociationsResponse

    ListDataIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDataIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataIntegrationsRequest.struct_class = Types::ListDataIntegrationsRequest

    ListDataIntegrationsResponse.add_member(:data_integrations, Shapes::ShapeRef.new(shape: DataIntegrationsList, location_name: "DataIntegrations"))
    ListDataIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataIntegrationsResponse.struct_class = Types::ListDataIntegrationsResponse

    ListEventIntegrationAssociationsRequest.add_member(:event_integration_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    ListEventIntegrationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEventIntegrationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEventIntegrationAssociationsRequest.struct_class = Types::ListEventIntegrationAssociationsRequest

    ListEventIntegrationAssociationsResponse.add_member(:event_integration_associations, Shapes::ShapeRef.new(shape: EventIntegrationAssociationsList, location_name: "EventIntegrationAssociations"))
    ListEventIntegrationAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventIntegrationAssociationsResponse.struct_class = Types::ListEventIntegrationAssociationsResponse

    ListEventIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEventIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEventIntegrationsRequest.struct_class = Types::ListEventIntegrationsRequest

    ListEventIntegrationsResponse.add_member(:event_integrations, Shapes::ShapeRef.new(shape: EventIntegrationsList, location_name: "EventIntegrations"))
    ListEventIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventIntegrationsResponse.struct_class = Types::ListEventIntegrationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ObjectConfiguration.key = Shapes::ShapeRef.new(shape: NonBlankString)
    ObjectConfiguration.value = Shapes::ShapeRef.new(shape: FieldsMap)

    OnDemandConfiguration.add_member(:start_time, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "StartTime"))
    OnDemandConfiguration.add_member(:end_time, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "EndTime"))
    OnDemandConfiguration.struct_class = Types::OnDemandConfiguration

    PermissionList.member = Shapes::ShapeRef.new(shape: Permission)

    Publication.add_member(:event, Shapes::ShapeRef.new(shape: EventName, required: true, location_name: "Event"))
    Publication.add_member(:schema, Shapes::ShapeRef.new(shape: EventDefinitionSchema, required: true, location_name: "Schema"))
    Publication.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Publication.struct_class = Types::Publication

    PublicationList.member = Shapes::ShapeRef.new(shape: Publication)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceQuotaExceededException.struct_class = Types::ResourceQuotaExceededException

    ScheduleConfiguration.add_member(:first_execution_from, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "FirstExecutionFrom"))
    ScheduleConfiguration.add_member(:object, Shapes::ShapeRef.new(shape: Object, location_name: "Object"))
    ScheduleConfiguration.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "ScheduleExpression"))
    ScheduleConfiguration.struct_class = Types::ScheduleConfiguration

    Subscription.add_member(:event, Shapes::ShapeRef.new(shape: EventName, required: true, location_name: "Event"))
    Subscription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Subscription.struct_class = Types::Subscription

    SubscriptionList.member = Shapes::ShapeRef.new(shape: Subscription)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ArnOrUUID, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "Name"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationRequest.add_member(:application_source_config, Shapes::ShapeRef.new(shape: ApplicationSourceConfig, location_name: "ApplicationSourceConfig"))
    UpdateApplicationRequest.add_member(:subscriptions, Shapes::ShapeRef.new(shape: SubscriptionList, deprecated: true, location_name: "Subscriptions", metadata: {"deprecatedMessage"=>"Subscriptions has been replaced with Permissions"}))
    UpdateApplicationRequest.add_member(:publications, Shapes::ShapeRef.new(shape: PublicationList, deprecated: true, location_name: "Publications", metadata: {"deprecatedMessage"=>"Publications has been replaced with Permissions"}))
    UpdateApplicationRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateDataIntegrationAssociationRequest.add_member(:data_integration_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    UpdateDataIntegrationAssociationRequest.add_member(:data_integration_association_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "DataIntegrationAssociationIdentifier"))
    UpdateDataIntegrationAssociationRequest.add_member(:execution_configuration, Shapes::ShapeRef.new(shape: ExecutionConfiguration, required: true, location_name: "ExecutionConfiguration"))
    UpdateDataIntegrationAssociationRequest.struct_class = Types::UpdateDataIntegrationAssociationRequest

    UpdateDataIntegrationAssociationResponse.struct_class = Types::UpdateDataIntegrationAssociationResponse

    UpdateDataIntegrationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    UpdateDataIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateDataIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDataIntegrationRequest.struct_class = Types::UpdateDataIntegrationRequest

    UpdateDataIntegrationResponse.struct_class = Types::UpdateDataIntegrationResponse

    UpdateEventIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    UpdateEventIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEventIntegrationRequest.struct_class = Types::UpdateEventIntegrationRequest

    UpdateEventIntegrationResponse.struct_class = Types::UpdateEventIntegrationResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-29"

      api.metadata = {
        "apiVersion" => "2020-07-29",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "app-integrations",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon AppIntegrations Service",
        "serviceId" => "AppIntegrations",
        "signatureVersion" => "v4",
        "signingName" => "app-integrations",
        "uid" => "appintegrations-2020-07-29",
      }

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:create_data_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/dataIntegrations"
        o.input = Shapes::ShapeRef.new(shape: CreateDataIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_data_integration_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataIntegrationAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/dataIntegrations/{Identifier}/associations"
        o.input = Shapes::ShapeRef.new(shape: CreateDataIntegrationAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataIntegrationAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_event_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/eventIntegrations"
        o.input = Shapes::ShapeRef.new(shape: CreateEventIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{ApplicationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_data_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataIntegration"
        o.http_method = "DELETE"
        o.http_request_uri = "/dataIntegrations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_event_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventIntegration"
        o.http_method = "DELETE"
        o.http_request_uri = "/eventIntegrations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_data_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataIntegration"
        o.http_method = "GET"
        o.http_request_uri = "/dataIntegrations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetDataIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_event_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventIntegration"
        o.http_method = "GET"
        o.http_request_uri = "/eventIntegrations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetEventIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_application_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/associations"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_integration_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataIntegrationAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/dataIntegrations/{Identifier}/associations"
        o.input = Shapes::ShapeRef.new(shape: ListDataIntegrationAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataIntegrationAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataIntegrations"
        o.http_method = "GET"
        o.http_request_uri = "/dataIntegrations"
        o.input = Shapes::ShapeRef.new(shape: ListDataIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_integration_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventIntegrationAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/eventIntegrations/{Name}/associations"
        o.input = Shapes::ShapeRef.new(shape: ListEventIntegrationAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventIntegrationAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventIntegrations"
        o.http_method = "GET"
        o.http_request_uri = "/eventIntegrations"
        o.input = Shapes::ShapeRef.new(shape: ListEventIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
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
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{ApplicationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:update_data_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataIntegration"
        o.http_method = "PATCH"
        o.http_request_uri = "/dataIntegrations/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_data_integration_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataIntegrationAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/dataIntegrations/{Identifier}/associations/{DataIntegrationAssociationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataIntegrationAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataIntegrationAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_event_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventIntegration"
        o.http_method = "PATCH"
        o.http_request_uri = "/eventIntegrations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
