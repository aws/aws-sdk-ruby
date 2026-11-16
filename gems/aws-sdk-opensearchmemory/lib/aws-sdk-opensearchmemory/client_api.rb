# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::OpenSearchMemory
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActorId = Shapes::StringShape.new(name: 'ActorId')
    ActorIdList = Shapes::ListShape.new(name: 'ActorIdList')
    BatchGetEventError = Shapes::StructureShape.new(name: 'BatchGetEventError')
    BatchGetEventErrorCode = Shapes::StringShape.new(name: 'BatchGetEventErrorCode')
    BatchGetEventErrorList = Shapes::ListShape.new(name: 'BatchGetEventErrorList')
    BatchGetEventIdList = Shapes::ListShape.new(name: 'BatchGetEventIdList')
    BatchGetEventInput = Shapes::StructureShape.new(name: 'BatchGetEventInput')
    BatchGetEventOutput = Shapes::StructureShape.new(name: 'BatchGetEventOutput')
    BlobContentType = Shapes::StringShape.new(name: 'BlobContentType')
    BlobPayload = Shapes::StructureShape.new(name: 'BlobPayload')
    BlobSource = Shapes::UnionShape.new(name: 'BlobSource')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConversationalPayload = Shapes::UnionShape.new(name: 'ConversationalPayload')
    CreateEventInput = Shapes::StructureShape.new(name: 'CreateEventInput')
    CreateEventOutput = Shapes::StructureShape.new(name: 'CreateEventOutput')
    CreateMemoryContent = Shapes::StringShape.new(name: 'CreateMemoryContent')
    CreateMemoryDetail = Shapes::StructureShape.new(name: 'CreateMemoryDetail')
    CreateMemoryInput = Shapes::StructureShape.new(name: 'CreateMemoryInput')
    CreateMemoryOutput = Shapes::StructureShape.new(name: 'CreateMemoryOutput')
    CreateSpaceRequest = Shapes::StructureShape.new(name: 'CreateSpaceRequest')
    CreateSpaceResponse = Shapes::StructureShape.new(name: 'CreateSpaceResponse')
    DeleteEventInput = Shapes::StructureShape.new(name: 'DeleteEventInput')
    DeleteEventOutput = Shapes::StructureShape.new(name: 'DeleteEventOutput')
    DeleteMemoryInput = Shapes::StructureShape.new(name: 'DeleteMemoryInput')
    DeleteMemoryOutput = Shapes::StructureShape.new(name: 'DeleteMemoryOutput')
    DeleteSpaceRequest = Shapes::StructureShape.new(name: 'DeleteSpaceRequest')
    DeleteSpaceResponse = Shapes::StructureShape.new(name: 'DeleteSpaceResponse')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    Double = Shapes::FloatShape.new(name: 'Double')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventDetail = Shapes::StructureShape.new(name: 'EventDetail')
    EventExpiryDays = Shapes::IntegerShape.new(name: 'EventExpiryDays')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventPayload = Shapes::UnionShape.new(name: 'EventPayload')
    EventSearchSummary = Shapes::StructureShape.new(name: 'EventSearchSummary')
    EventSearchSummaryList = Shapes::ListShape.new(name: 'EventSearchSummaryList')
    EventSummary = Shapes::StructureShape.new(name: 'EventSummary')
    EventSummaryList = Shapes::ListShape.new(name: 'EventSummaryList')
    EventTimestamp = Shapes::TimestampShape.new(name: 'EventTimestamp', timestampFormat: "iso8601")
    ExtractionModelId = Shapes::StringShape.new(name: 'ExtractionModelId')
    ExtractionPrompt = Shapes::StringShape.new(name: 'ExtractionPrompt')
    GetEventInput = Shapes::StructureShape.new(name: 'GetEventInput')
    GetEventOutput = Shapes::StructureShape.new(name: 'GetEventOutput')
    GetMemoryInput = Shapes::StructureShape.new(name: 'GetMemoryInput')
    GetMemoryOutput = Shapes::StructureShape.new(name: 'GetMemoryOutput')
    GetSpaceRequest = Shapes::StructureShape.new(name: 'GetSpaceRequest')
    GetSpaceResponse = Shapes::StructureShape.new(name: 'GetSpaceResponse')
    IdleTimeoutSeconds = Shapes::IntegerShape.new(name: 'IdleTimeoutSeconds')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListEventsInput = Shapes::StructureShape.new(name: 'ListEventsInput')
    ListEventsOutput = Shapes::StructureShape.new(name: 'ListEventsOutput')
    ListMemoriesInput = Shapes::StructureShape.new(name: 'ListMemoriesInput')
    ListMemoriesOutput = Shapes::StructureShape.new(name: 'ListMemoriesOutput')
    ListSpacesRequest = Shapes::StructureShape.new(name: 'ListSpacesRequest')
    ListSpacesResponse = Shapes::StructureShape.new(name: 'ListSpacesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Memory = Shapes::StructureShape.new(name: 'Memory')
    MemoryExpiryDays = Shapes::IntegerShape.new(name: 'MemoryExpiryDays')
    MemoryId = Shapes::StringShape.new(name: 'MemoryId')
    MemoryListSummary = Shapes::StructureShape.new(name: 'MemoryListSummary')
    MemoryListSummaryList = Shapes::ListShape.new(name: 'MemoryListSummaryList')
    MemorySearchSummary = Shapes::StructureShape.new(name: 'MemorySearchSummary')
    MemorySearchSummaryList = Shapes::ListShape.new(name: 'MemorySearchSummaryList')
    MemorySortField = Shapes::StringShape.new(name: 'MemorySortField')
    MemoryStrategy = Shapes::StructureShape.new(name: 'MemoryStrategy')
    MemoryStrategyConfiguration = Shapes::StructureShape.new(name: 'MemoryStrategyConfiguration')
    MemoryStrategyDescription = Shapes::StringShape.new(name: 'MemoryStrategyDescription')
    MemoryStrategyList = Shapes::ListShape.new(name: 'MemoryStrategyList')
    MemoryStrategyName = Shapes::StringShape.new(name: 'MemoryStrategyName')
    MemoryStrategyType = Shapes::StringShape.new(name: 'MemoryStrategyType')
    MemoryType = Shapes::StringShape.new(name: 'MemoryType')
    MemoryUpdateContent = Shapes::StringShape.new(name: 'MemoryUpdateContent')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageContent = Shapes::StructureShape.new(name: 'MessageContent')
    MessageList = Shapes::ListShape.new(name: 'MessageList')
    MessageRole = Shapes::StringShape.new(name: 'MessageRole')
    MessageText = Shapes::StringShape.new(name: 'MessageText')
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    MetadataMap = Shapes::MapShape.new(name: 'MetadataMap')
    MetadataMode = Shapes::StringShape.new(name: 'MetadataMode')
    MetadataValue = Shapes::StringShape.new(name: 'MetadataValue')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationUriString = Shapes::StringShape.new(name: 'S3LocationUriString')
    SearchEventsInput = Shapes::StructureShape.new(name: 'SearchEventsInput')
    SearchEventsOutput = Shapes::StructureShape.new(name: 'SearchEventsOutput')
    SearchMemoriesInput = Shapes::StructureShape.new(name: 'SearchMemoriesInput')
    SearchMemoriesOutput = Shapes::StructureShape.new(name: 'SearchMemoriesOutput')
    SearchQuery = Shapes::DocumentShape.new(name: 'SearchQuery', document: true)
    SearchSort = Shapes::DocumentShape.new(name: 'SearchSort', document: true)
    SeedMemoryCount = Shapes::IntegerShape.new(name: 'SeedMemoryCount')
    SensitiveContent = Shapes::StringShape.new(name: 'SensitiveContent')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionIdList = Shapes::ListShape.new(name: 'SessionIdList')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SourceEventIdList = Shapes::ListShape.new(name: 'SourceEventIdList')
    SpaceArn = Shapes::StringShape.new(name: 'SpaceArn')
    SpaceId = Shapes::StringShape.new(name: 'SpaceId')
    SpaceName = Shapes::StringShape.new(name: 'SpaceName')
    SpaceStatus = Shapes::StringShape.new(name: 'SpaceStatus')
    SpaceSummary = Shapes::StructureShape.new(name: 'SpaceSummary')
    SpaceSummaryList = Shapes::ListShape.new(name: 'SpaceSummaryList')
    StrategyName = Shapes::StringShape.new(name: 'StrategyName')
    StrategyNameList = Shapes::ListShape.new(name: 'StrategyNameList')
    StrategySelector = Shapes::StructureShape.new(name: 'StrategySelector')
    StrategySelectorList = Shapes::ListShape.new(name: 'StrategySelectorList')
    String = Shapes::StringShape.new(name: 'String')
    StructuredDataPayload = Shapes::StructureShape.new(name: 'StructuredDataPayload')
    StructuredDataSource = Shapes::UnionShape.new(name: 'StructuredDataSource')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    SystemMetadata = Shapes::StructureShape.new(name: 'SystemMetadata')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TokenCount = Shapes::IntegerShape.new(name: 'TokenCount')
    TriggerEveryNMessages = Shapes::IntegerShape.new(name: 'TriggerEveryNMessages')
    UnifiedConversational = Shapes::StructureShape.new(name: 'UnifiedConversational')
    UnifiedConversationalObject = Shapes::StructureShape.new(name: 'UnifiedConversationalObject')
    UnifiedConversationalSource = Shapes::UnionShape.new(name: 'UnifiedConversationalSource')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateMemoryInput = Shapes::StructureShape.new(name: 'UpdateMemoryInput')
    UpdateMemoryOutput = Shapes::StructureShape.new(name: 'UpdateMemoryOutput')
    UpdateSpaceRequest = Shapes::StructureShape.new(name: 'UpdateSpaceRequest')
    UpdateSpaceResponse = Shapes::StructureShape.new(name: 'UpdateSpaceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActorIdList.member = Shapes::ShapeRef.new(shape: ActorId)

    BatchGetEventError.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    BatchGetEventError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchGetEventErrorCode, required: true, location_name: "errorCode"))
    BatchGetEventError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchGetEventError.struct_class = Types::BatchGetEventError

    BatchGetEventErrorList.member = Shapes::ShapeRef.new(shape: BatchGetEventError)

    BatchGetEventIdList.member = Shapes::ShapeRef.new(shape: EventId)

    BatchGetEventInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    BatchGetEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, location_name: "actorId"))
    BatchGetEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    BatchGetEventInput.add_member(:event_ids, Shapes::ShapeRef.new(shape: BatchGetEventIdList, required: true, location_name: "eventIds"))
    BatchGetEventInput.struct_class = Types::BatchGetEventInput

    BatchGetEventOutput.add_member(:events, Shapes::ShapeRef.new(shape: EventList, required: true, location_name: "events"))
    BatchGetEventOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetEventErrorList, required: true, location_name: "errors"))
    BatchGetEventOutput.struct_class = Types::BatchGetEventOutput

    BlobPayload.add_member(:content_type, Shapes::ShapeRef.new(shape: BlobContentType, required: true, location_name: "contentType"))
    BlobPayload.add_member(:source, Shapes::ShapeRef.new(shape: BlobSource, required: true, location_name: "source"))
    BlobPayload.struct_class = Types::BlobPayload

    BlobSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    BlobSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BlobSource.add_member_subclass(:s3_location, Types::BlobSource::S3Location)
    BlobSource.add_member_subclass(:unknown, Types::BlobSource::Unknown)
    BlobSource.struct_class = Types::BlobSource

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConversationalPayload.add_member(:unified, Shapes::ShapeRef.new(shape: UnifiedConversational, location_name: "unified"))
    ConversationalPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConversationalPayload.add_member_subclass(:unified, Types::ConversationalPayload::Unified)
    ConversationalPayload.add_member_subclass(:unknown, Types::ConversationalPayload::Unknown)
    ConversationalPayload.struct_class = Types::ConversationalPayload

    CreateEventInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    CreateEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    CreateEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    CreateEventInput.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: EventTimestamp, location_name: "eventTimestamp"))
    CreateEventInput.add_member(:payload, Shapes::ShapeRef.new(shape: EventPayload, required: true, location_name: "payload"))
    CreateEventInput.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    CreateEventInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEventInput.add_member(:infer, Shapes::ShapeRef.new(shape: Boolean, location_name: "infer"))
    CreateEventInput.struct_class = Types::CreateEventInput

    CreateEventOutput.add_member(:event, Shapes::ShapeRef.new(shape: EventDetail, required: true, location_name: "event"))
    CreateEventOutput.struct_class = Types::CreateEventOutput

    CreateMemoryDetail.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    CreateMemoryDetail.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    CreateMemoryDetail.add_member(:name, Shapes::ShapeRef.new(shape: StrategyName, required: true, location_name: "name"))
    CreateMemoryDetail.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    CreateMemoryDetail.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    CreateMemoryDetail.struct_class = Types::CreateMemoryDetail

    CreateMemoryInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    CreateMemoryInput.add_member(:name, Shapes::ShapeRef.new(shape: StrategyName, required: true, location_name: "name"))
    CreateMemoryInput.add_member(:content, Shapes::ShapeRef.new(shape: CreateMemoryContent, required: true, location_name: "content"))
    CreateMemoryInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    CreateMemoryInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    CreateMemoryInput.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    CreateMemoryInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateMemoryInput.struct_class = Types::CreateMemoryInput

    CreateMemoryOutput.add_member(:memory, Shapes::ShapeRef.new(shape: CreateMemoryDetail, required: true, location_name: "memory"))
    CreateMemoryOutput.struct_class = Types::CreateMemoryOutput

    CreateSpaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: SpaceName, required: true, location_name: "name"))
    CreateSpaceRequest.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: MemoryStrategyList, location_name: "memoryStrategies"))
    CreateSpaceRequest.add_member(:event_expiry_days, Shapes::ShapeRef.new(shape: EventExpiryDays, location_name: "eventExpiryDays"))
    CreateSpaceRequest.add_member(:memory_expiry_days, Shapes::ShapeRef.new(shape: MemoryExpiryDays, location_name: "memoryExpiryDays"))
    CreateSpaceRequest.add_member(:extraction_model_id, Shapes::ShapeRef.new(shape: ExtractionModelId, location_name: "extractionModelId"))
    CreateSpaceRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateSpaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateSpaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSpaceRequest.struct_class = Types::CreateSpaceRequest

    CreateSpaceResponse.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    CreateSpaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SpaceArn, required: true, location_name: "arn"))
    CreateSpaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: SpaceName, required: true, location_name: "name"))
    CreateSpaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: SpaceStatus, required: true, location_name: "status"))
    CreateSpaceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateSpaceResponse.struct_class = Types::CreateSpaceResponse

    DeleteEventInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    DeleteEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    DeleteEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, location_name: "actorId"))
    DeleteEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    DeleteEventInput.struct_class = Types::DeleteEventInput

    DeleteEventOutput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    DeleteEventOutput.struct_class = Types::DeleteEventOutput

    DeleteMemoryInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    DeleteMemoryInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    DeleteMemoryInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, location_name: "actorId"))
    DeleteMemoryInput.add_member(:strategy_name, Shapes::ShapeRef.new(shape: StrategyName, location_name: "strategyName"))
    DeleteMemoryInput.struct_class = Types::DeleteMemoryInput

    DeleteMemoryOutput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    DeleteMemoryOutput.struct_class = Types::DeleteMemoryOutput

    DeleteSpaceRequest.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    DeleteSpaceRequest.struct_class = Types::DeleteSpaceRequest

    DeleteSpaceResponse.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    DeleteSpaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: SpaceStatus, required: true, location_name: "status"))
    DeleteSpaceResponse.struct_class = Types::DeleteSpaceResponse

    EncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyArn"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    Event.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    Event.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    Event.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    Event.add_member(:payload, Shapes::ShapeRef.new(shape: EventPayload, required: true, location_name: "payload"))
    Event.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    Event.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: EventTimestamp, required: true, location_name: "eventTimestamp"))
    Event.struct_class = Types::Event

    EventDetail.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    EventDetail.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    EventDetail.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    EventDetail.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    EventDetail.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: EventTimestamp, required: true, location_name: "eventTimestamp"))
    EventDetail.struct_class = Types::EventDetail

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    EventPayload.add_member(:conversational, Shapes::ShapeRef.new(shape: ConversationalPayload, location_name: "conversational"))
    EventPayload.add_member(:structured_data, Shapes::ShapeRef.new(shape: StructuredDataPayload, location_name: "structuredData"))
    EventPayload.add_member(:blob, Shapes::ShapeRef.new(shape: BlobPayload, location_name: "blob"))
    EventPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EventPayload.add_member_subclass(:conversational, Types::EventPayload::Conversational)
    EventPayload.add_member_subclass(:structured_data, Types::EventPayload::StructuredData)
    EventPayload.add_member_subclass(:blob, Types::EventPayload::Blob)
    EventPayload.add_member_subclass(:unknown, Types::EventPayload::Unknown)
    EventPayload.struct_class = Types::EventPayload

    EventSearchSummary.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    EventSearchSummary.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "score"))
    EventSearchSummary.add_member(:system_metadata, Shapes::ShapeRef.new(shape: SystemMetadata, location_name: "systemMetadata"))
    EventSearchSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    EventSearchSummary.add_member(:matched_content, Shapes::ShapeRef.new(shape: SensitiveContent, location_name: "matchedContent"))
    EventSearchSummary.struct_class = Types::EventSearchSummary

    EventSearchSummaryList.member = Shapes::ShapeRef.new(shape: EventSearchSummary)

    EventSummary.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    EventSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    EventSummary.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: EventTimestamp, required: true, location_name: "eventTimestamp"))
    EventSummary.struct_class = Types::EventSummary

    EventSummaryList.member = Shapes::ShapeRef.new(shape: EventSummary)

    GetEventInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    GetEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    GetEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, location_name: "actorId"))
    GetEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    GetEventInput.struct_class = Types::GetEventInput

    GetEventOutput.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "event"))
    GetEventOutput.struct_class = Types::GetEventOutput

    GetMemoryInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    GetMemoryInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    GetMemoryInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, location_name: "actorId"))
    GetMemoryInput.add_member(:strategy_name, Shapes::ShapeRef.new(shape: StrategyName, location_name: "strategyName"))
    GetMemoryInput.struct_class = Types::GetMemoryInput

    GetMemoryOutput.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, required: true, location_name: "memory"))
    GetMemoryOutput.struct_class = Types::GetMemoryOutput

    GetSpaceRequest.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    GetSpaceRequest.struct_class = Types::GetSpaceRequest

    GetSpaceResponse.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    GetSpaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SpaceArn, required: true, location_name: "arn"))
    GetSpaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: SpaceName, required: true, location_name: "name"))
    GetSpaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: SpaceStatus, required: true, location_name: "status"))
    GetSpaceResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetSpaceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetSpaceResponse.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: MemoryStrategyList, location_name: "memoryStrategies"))
    GetSpaceResponse.add_member(:event_expiry_days, Shapes::ShapeRef.new(shape: EventExpiryDays, location_name: "eventExpiryDays"))
    GetSpaceResponse.add_member(:memory_expiry_days, Shapes::ShapeRef.new(shape: MemoryExpiryDays, location_name: "memoryExpiryDays"))
    GetSpaceResponse.add_member(:extraction_model_id, Shapes::ShapeRef.new(shape: ExtractionModelId, location_name: "extractionModelId"))
    GetSpaceResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    GetSpaceResponse.struct_class = Types::GetSpaceResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListEventsInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    ListEventsInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    ListEventsInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    ListEventsInput.add_member(:event_timestamp_before, Shapes::ShapeRef.new(shape: EventTimestamp, location_name: "eventTimestampBefore"))
    ListEventsInput.add_member(:event_timestamp_after, Shapes::ShapeRef.new(shape: EventTimestamp, location_name: "eventTimestampAfter"))
    ListEventsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListEventsInput.add_member(:metadata_filters, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadataFilters"))
    ListEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEventsInput.struct_class = Types::ListEventsInput

    ListEventsOutput.add_member(:events, Shapes::ShapeRef.new(shape: EventSummaryList, required: true, location_name: "events"))
    ListEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEventsOutput.struct_class = Types::ListEventsOutput

    ListMemoriesInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    ListMemoriesInput.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: StrategySelectorList, location_name: "memoryStrategies"))
    ListMemoriesInput.add_member(:actor_ids, Shapes::ShapeRef.new(shape: ActorIdList, location_name: "actorIds"))
    ListMemoriesInput.add_member(:session_ids, Shapes::ShapeRef.new(shape: SessionIdList, location_name: "sessionIds"))
    ListMemoriesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: MemorySortField, location_name: "sortBy"))
    ListMemoriesInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListMemoriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListMemoriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMemoriesInput.struct_class = Types::ListMemoriesInput

    ListMemoriesOutput.add_member(:memories, Shapes::ShapeRef.new(shape: MemoryListSummaryList, required: true, location_name: "memories"))
    ListMemoriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMemoriesOutput.struct_class = Types::ListMemoriesOutput

    ListSpacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSpacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSpacesRequest.struct_class = Types::ListSpacesRequest

    ListSpacesResponse.add_member(:spaces, Shapes::ShapeRef.new(shape: SpaceSummaryList, required: true, location_name: "spaces"))
    ListSpacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSpacesResponse.struct_class = Types::ListSpacesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SpaceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Memory.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    Memory.add_member(:memory_type, Shapes::ShapeRef.new(shape: MemoryType, required: true, location_name: "memoryType"))
    Memory.add_member(:strategy_name, Shapes::ShapeRef.new(shape: StrategyName, location_name: "strategyName"))
    Memory.add_member(:content, Shapes::ShapeRef.new(shape: SensitiveContent, required: true, location_name: "content"))
    Memory.add_member(:system_metadata, Shapes::ShapeRef.new(shape: SystemMetadata, required: true, location_name: "systemMetadata"))
    Memory.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    Memory.struct_class = Types::Memory

    MemoryListSummary.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    MemoryListSummary.add_member(:memory_type, Shapes::ShapeRef.new(shape: MemoryType, required: true, location_name: "memoryType"))
    MemoryListSummary.add_member(:strategy_name, Shapes::ShapeRef.new(shape: StrategyName, location_name: "strategyName"))
    MemoryListSummary.add_member(:system_metadata, Shapes::ShapeRef.new(shape: SystemMetadata, required: true, location_name: "systemMetadata"))
    MemoryListSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    MemoryListSummary.struct_class = Types::MemoryListSummary

    MemoryListSummaryList.member = Shapes::ShapeRef.new(shape: MemoryListSummary)

    MemorySearchSummary.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    MemorySearchSummary.add_member(:memory_type, Shapes::ShapeRef.new(shape: MemoryType, location_name: "memoryType"))
    MemorySearchSummary.add_member(:strategy_name, Shapes::ShapeRef.new(shape: StrategyName, location_name: "strategyName"))
    MemorySearchSummary.add_member(:content, Shapes::ShapeRef.new(shape: SensitiveContent, location_name: "content"))
    MemorySearchSummary.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "score"))
    MemorySearchSummary.add_member(:system_metadata, Shapes::ShapeRef.new(shape: SystemMetadata, location_name: "systemMetadata"))
    MemorySearchSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    MemorySearchSummary.add_member(:source_event_ids, Shapes::ShapeRef.new(shape: SourceEventIdList, location_name: "sourceEventIds"))
    MemorySearchSummary.struct_class = Types::MemorySearchSummary

    MemorySearchSummaryList.member = Shapes::ShapeRef.new(shape: MemorySearchSummary)

    MemoryStrategy.add_member(:type, Shapes::ShapeRef.new(shape: MemoryStrategyType, required: true, location_name: "type"))
    MemoryStrategy.add_member(:name, Shapes::ShapeRef.new(shape: MemoryStrategyName, location_name: "name"))
    MemoryStrategy.add_member(:description, Shapes::ShapeRef.new(shape: MemoryStrategyDescription, location_name: "description"))
    MemoryStrategy.add_member(:configuration, Shapes::ShapeRef.new(shape: MemoryStrategyConfiguration, location_name: "configuration"))
    MemoryStrategy.struct_class = Types::MemoryStrategy

    MemoryStrategyConfiguration.add_member(:extraction_prompt, Shapes::ShapeRef.new(shape: ExtractionPrompt, location_name: "extractionPrompt"))
    MemoryStrategyConfiguration.add_member(:extract_every_n_messages, Shapes::ShapeRef.new(shape: TriggerEveryNMessages, location_name: "extractEveryNMessages"))
    MemoryStrategyConfiguration.add_member(:extract_every_n_tokens, Shapes::ShapeRef.new(shape: TokenCount, location_name: "extractEveryNTokens"))
    MemoryStrategyConfiguration.add_member(:idle_timeout_seconds, Shapes::ShapeRef.new(shape: IdleTimeoutSeconds, location_name: "idleTimeoutSeconds"))
    MemoryStrategyConfiguration.add_member(:extraction_seed_top_k, Shapes::ShapeRef.new(shape: SeedMemoryCount, location_name: "extractionSeedTopK"))
    MemoryStrategyConfiguration.add_member(:extraction_seed_recent_n, Shapes::ShapeRef.new(shape: SeedMemoryCount, location_name: "extractionSeedRecentN"))
    MemoryStrategyConfiguration.add_member(:consolidation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "consolidationEnabled"))
    MemoryStrategyConfiguration.struct_class = Types::MemoryStrategyConfiguration

    MemoryStrategyList.member = Shapes::ShapeRef.new(shape: MemoryStrategy)

    Message.add_member(:role, Shapes::ShapeRef.new(shape: MessageRole, required: true, location_name: "role"))
    Message.add_member(:content, Shapes::ShapeRef.new(shape: MessageContent, required: true, location_name: "content"))
    Message.struct_class = Types::Message

    MessageContent.add_member(:text, Shapes::ShapeRef.new(shape: MessageText, required: true, location_name: "text"))
    MessageContent.struct_class = Types::MessageContent

    MessageList.member = Shapes::ShapeRef.new(shape: Message)

    MetadataMap.key = Shapes::ShapeRef.new(shape: MetadataKey)
    MetadataMap.value = Shapes::ShapeRef.new(shape: MetadataValue)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Location.add_member(:uri, Shapes::ShapeRef.new(shape: S3LocationUriString, required: true, location_name: "uri"))
    S3Location.struct_class = Types::S3Location

    SearchEventsInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    SearchEventsInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    SearchEventsInput.add_member(:session_ids, Shapes::ShapeRef.new(shape: SessionIdList, location_name: "sessionIds"))
    SearchEventsInput.add_member(:query, Shapes::ShapeRef.new(shape: SearchQuery, required: true, location_name: "query"))
    SearchEventsInput.add_member(:sort, Shapes::ShapeRef.new(shape: SearchSort, location_name: "sort"))
    SearchEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchEventsInput.struct_class = Types::SearchEventsInput

    SearchEventsOutput.add_member(:events, Shapes::ShapeRef.new(shape: EventSearchSummaryList, required: true, location_name: "events"))
    SearchEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchEventsOutput.struct_class = Types::SearchEventsOutput

    SearchMemoriesInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    SearchMemoriesInput.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: StrategySelectorList, location_name: "memoryStrategies"))
    SearchMemoriesInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    SearchMemoriesInput.add_member(:query, Shapes::ShapeRef.new(shape: SearchQuery, required: true, location_name: "query"))
    SearchMemoriesInput.add_member(:sort, Shapes::ShapeRef.new(shape: SearchSort, location_name: "sort"))
    SearchMemoriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchMemoriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchMemoriesInput.struct_class = Types::SearchMemoriesInput

    SearchMemoriesOutput.add_member(:memories, Shapes::ShapeRef.new(shape: MemorySearchSummaryList, required: true, location_name: "memories"))
    SearchMemoriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    SearchMemoriesOutput.struct_class = Types::SearchMemoriesOutput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionIdList.member = Shapes::ShapeRef.new(shape: SessionId)

    SourceEventIdList.member = Shapes::ShapeRef.new(shape: EventId)

    SpaceSummary.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    SpaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: SpaceArn, required: true, location_name: "arn"))
    SpaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: SpaceName, required: true, location_name: "name"))
    SpaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: SpaceStatus, required: true, location_name: "status"))
    SpaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SpaceSummary.struct_class = Types::SpaceSummary

    SpaceSummaryList.member = Shapes::ShapeRef.new(shape: SpaceSummary)

    StrategyNameList.member = Shapes::ShapeRef.new(shape: StrategyName)

    StrategySelector.add_member(:memory_type, Shapes::ShapeRef.new(shape: MemoryType, required: true, location_name: "memoryType"))
    StrategySelector.add_member(:memory_strategy_names, Shapes::ShapeRef.new(shape: StrategyNameList, location_name: "memoryStrategyNames"))
    StrategySelector.struct_class = Types::StrategySelector

    StrategySelectorList.member = Shapes::ShapeRef.new(shape: StrategySelector)

    StructuredDataPayload.add_member(:source, Shapes::ShapeRef.new(shape: StructuredDataSource, required: true, location_name: "source"))
    StructuredDataPayload.struct_class = Types::StructuredDataPayload

    StructuredDataSource.add_member(:json, Shapes::ShapeRef.new(shape: Document, location_name: "json"))
    StructuredDataSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StructuredDataSource.add_member_subclass(:json, Types::StructuredDataSource::Json)
    StructuredDataSource.add_member_subclass(:unknown, Types::StructuredDataSource::Unknown)
    StructuredDataSource.struct_class = Types::StructuredDataSource

    SystemMetadata.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, location_name: "actorId"))
    SystemMetadata.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    SystemMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    SystemMetadata.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    SystemMetadata.struct_class = Types::SystemMetadata

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SpaceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnifiedConversational.add_member(:source, Shapes::ShapeRef.new(shape: UnifiedConversationalSource, required: true, location_name: "source"))
    UnifiedConversational.struct_class = Types::UnifiedConversational

    UnifiedConversationalObject.add_member(:messages, Shapes::ShapeRef.new(shape: MessageList, required: true, location_name: "messages"))
    UnifiedConversationalObject.struct_class = Types::UnifiedConversationalObject

    UnifiedConversationalSource.add_member(:object, Shapes::ShapeRef.new(shape: UnifiedConversationalObject, location_name: "object"))
    UnifiedConversationalSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UnifiedConversationalSource.add_member_subclass(:object, Types::UnifiedConversationalSource::Object)
    UnifiedConversationalSource.add_member_subclass(:unknown, Types::UnifiedConversationalSource::Unknown)
    UnifiedConversationalSource.struct_class = Types::UnifiedConversationalSource

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SpaceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateMemoryInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId", metadata: {"contextParam" => {"name" => "SpaceId"}}))
    UpdateMemoryInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    UpdateMemoryInput.add_member(:content, Shapes::ShapeRef.new(shape: MemoryUpdateContent, location_name: "content"))
    UpdateMemoryInput.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    UpdateMemoryInput.add_member(:metadata_mode, Shapes::ShapeRef.new(shape: MetadataMode, location_name: "metadataMode"))
    UpdateMemoryInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, location_name: "actorId"))
    UpdateMemoryInput.add_member(:strategy_name, Shapes::ShapeRef.new(shape: StrategyName, location_name: "strategyName"))
    UpdateMemoryInput.struct_class = Types::UpdateMemoryInput

    UpdateMemoryOutput.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, required: true, location_name: "memory"))
    UpdateMemoryOutput.struct_class = Types::UpdateMemoryOutput

    UpdateSpaceRequest.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    UpdateSpaceRequest.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: MemoryStrategyList, location_name: "memoryStrategies"))
    UpdateSpaceRequest.add_member(:event_expiry_days, Shapes::ShapeRef.new(shape: EventExpiryDays, location_name: "eventExpiryDays"))
    UpdateSpaceRequest.add_member(:memory_expiry_days, Shapes::ShapeRef.new(shape: MemoryExpiryDays, location_name: "memoryExpiryDays"))
    UpdateSpaceRequest.add_member(:extraction_model_id, Shapes::ShapeRef.new(shape: ExtractionModelId, location_name: "extractionModelId"))
    UpdateSpaceRequest.struct_class = Types::UpdateSpaceRequest

    UpdateSpaceResponse.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    UpdateSpaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: SpaceStatus, required: true, location_name: "status"))
    UpdateSpaceResponse.struct_class = Types::UpdateSpaceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-08-24"

      api.metadata = {
        "apiVersion" => "2026-08-24",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "osm",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon OpenSearch Memory",
        "serviceId" => "OpenSearchMemory",
        "signatureVersion" => "v4",
        "signingName" => "osm",
        "targetPrefix" => "OpenSearchMemory",
        "uid" => "opensearchmemory-2026-08-24",
      }

      api.add_operation(:batch_get_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetEventInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMemory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMemoryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMemoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSpace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSpaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSpaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMemory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMemoryInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMemoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSpace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSpaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSpaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEventInput)
        o.output = Shapes::ShapeRef.new(shape: GetEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMemory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMemoryInput)
        o.output = Shapes::ShapeRef.new(shape: GetMemoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSpace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSpaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSpaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMemoriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListMemoriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_spaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSpaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSpacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSpacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:search_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchEventsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_memories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchMemories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchMemoriesInput)
        o.output = Shapes::ShapeRef.new(shape: SearchMemoriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMemory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMemoryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMemoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSpace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSpaceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSpaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
