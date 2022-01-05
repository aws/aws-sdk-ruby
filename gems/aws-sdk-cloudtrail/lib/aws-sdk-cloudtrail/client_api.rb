# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudTrail
  # @api private
  module ClientApi

    include Seahorse::Model

    AddTagsRequest = Shapes::StructureShape.new(name: 'AddTagsRequest')
    AddTagsResponse = Shapes::StructureShape.new(name: 'AddTagsResponse')
    AdvancedEventSelector = Shapes::StructureShape.new(name: 'AdvancedEventSelector')
    AdvancedEventSelectors = Shapes::ListShape.new(name: 'AdvancedEventSelectors')
    AdvancedFieldSelector = Shapes::StructureShape.new(name: 'AdvancedFieldSelector')
    AdvancedFieldSelectors = Shapes::ListShape.new(name: 'AdvancedFieldSelectors')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ByteBuffer = Shapes::BlobShape.new(name: 'ByteBuffer')
    CancelQueryRequest = Shapes::StructureShape.new(name: 'CancelQueryRequest')
    CancelQueryResponse = Shapes::StructureShape.new(name: 'CancelQueryResponse')
    CloudTrailARNInvalidException = Shapes::StructureShape.new(name: 'CloudTrailARNInvalidException')
    CloudTrailAccessNotEnabledException = Shapes::StructureShape.new(name: 'CloudTrailAccessNotEnabledException')
    CloudTrailInvalidClientTokenIdException = Shapes::StructureShape.new(name: 'CloudTrailInvalidClientTokenIdException')
    CloudWatchLogsDeliveryUnavailableException = Shapes::StructureShape.new(name: 'CloudWatchLogsDeliveryUnavailableException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEventDataStoreRequest = Shapes::StructureShape.new(name: 'CreateEventDataStoreRequest')
    CreateEventDataStoreResponse = Shapes::StructureShape.new(name: 'CreateEventDataStoreResponse')
    CreateTrailRequest = Shapes::StructureShape.new(name: 'CreateTrailRequest')
    CreateTrailResponse = Shapes::StructureShape.new(name: 'CreateTrailResponse')
    DataResource = Shapes::StructureShape.new(name: 'DataResource')
    DataResourceValues = Shapes::ListShape.new(name: 'DataResourceValues')
    DataResources = Shapes::ListShape.new(name: 'DataResources')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteEventDataStoreRequest = Shapes::StructureShape.new(name: 'DeleteEventDataStoreRequest')
    DeleteEventDataStoreResponse = Shapes::StructureShape.new(name: 'DeleteEventDataStoreResponse')
    DeleteTrailRequest = Shapes::StructureShape.new(name: 'DeleteTrailRequest')
    DeleteTrailResponse = Shapes::StructureShape.new(name: 'DeleteTrailResponse')
    DescribeQueryRequest = Shapes::StructureShape.new(name: 'DescribeQueryRequest')
    DescribeQueryResponse = Shapes::StructureShape.new(name: 'DescribeQueryResponse')
    DescribeTrailsRequest = Shapes::StructureShape.new(name: 'DescribeTrailsRequest')
    DescribeTrailsResponse = Shapes::StructureShape.new(name: 'DescribeTrailsResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategory = Shapes::StringShape.new(name: 'EventCategory')
    EventDataStore = Shapes::StructureShape.new(name: 'EventDataStore')
    EventDataStoreARNInvalidException = Shapes::StructureShape.new(name: 'EventDataStoreARNInvalidException')
    EventDataStoreAlreadyExistsException = Shapes::StructureShape.new(name: 'EventDataStoreAlreadyExistsException')
    EventDataStoreArn = Shapes::StringShape.new(name: 'EventDataStoreArn')
    EventDataStoreMaxLimitExceededException = Shapes::StructureShape.new(name: 'EventDataStoreMaxLimitExceededException')
    EventDataStoreName = Shapes::StringShape.new(name: 'EventDataStoreName')
    EventDataStoreNotFoundException = Shapes::StructureShape.new(name: 'EventDataStoreNotFoundException')
    EventDataStoreStatus = Shapes::StringShape.new(name: 'EventDataStoreStatus')
    EventDataStoreTerminationProtectedException = Shapes::StructureShape.new(name: 'EventDataStoreTerminationProtectedException')
    EventDataStores = Shapes::ListShape.new(name: 'EventDataStores')
    EventSelector = Shapes::StructureShape.new(name: 'EventSelector')
    EventSelectors = Shapes::ListShape.new(name: 'EventSelectors')
    EventsList = Shapes::ListShape.new(name: 'EventsList')
    ExcludeManagementEventSources = Shapes::ListShape.new(name: 'ExcludeManagementEventSources')
    GetEventDataStoreRequest = Shapes::StructureShape.new(name: 'GetEventDataStoreRequest')
    GetEventDataStoreResponse = Shapes::StructureShape.new(name: 'GetEventDataStoreResponse')
    GetEventSelectorsRequest = Shapes::StructureShape.new(name: 'GetEventSelectorsRequest')
    GetEventSelectorsResponse = Shapes::StructureShape.new(name: 'GetEventSelectorsResponse')
    GetInsightSelectorsRequest = Shapes::StructureShape.new(name: 'GetInsightSelectorsRequest')
    GetInsightSelectorsResponse = Shapes::StructureShape.new(name: 'GetInsightSelectorsResponse')
    GetQueryResultsRequest = Shapes::StructureShape.new(name: 'GetQueryResultsRequest')
    GetQueryResultsResponse = Shapes::StructureShape.new(name: 'GetQueryResultsResponse')
    GetTrailRequest = Shapes::StructureShape.new(name: 'GetTrailRequest')
    GetTrailResponse = Shapes::StructureShape.new(name: 'GetTrailResponse')
    GetTrailStatusRequest = Shapes::StructureShape.new(name: 'GetTrailStatusRequest')
    GetTrailStatusResponse = Shapes::StructureShape.new(name: 'GetTrailStatusResponse')
    InactiveEventDataStoreException = Shapes::StructureShape.new(name: 'InactiveEventDataStoreException')
    InactiveQueryException = Shapes::StructureShape.new(name: 'InactiveQueryException')
    InsightNotEnabledException = Shapes::StructureShape.new(name: 'InsightNotEnabledException')
    InsightSelector = Shapes::StructureShape.new(name: 'InsightSelector')
    InsightSelectors = Shapes::ListShape.new(name: 'InsightSelectors')
    InsightType = Shapes::StringShape.new(name: 'InsightType')
    InsufficientDependencyServiceAccessPermissionException = Shapes::StructureShape.new(name: 'InsufficientDependencyServiceAccessPermissionException')
    InsufficientEncryptionPolicyException = Shapes::StructureShape.new(name: 'InsufficientEncryptionPolicyException')
    InsufficientS3BucketPolicyException = Shapes::StructureShape.new(name: 'InsufficientS3BucketPolicyException')
    InsufficientSnsTopicPolicyException = Shapes::StructureShape.new(name: 'InsufficientSnsTopicPolicyException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidCloudWatchLogsLogGroupArnException = Shapes::StructureShape.new(name: 'InvalidCloudWatchLogsLogGroupArnException')
    InvalidCloudWatchLogsRoleArnException = Shapes::StructureShape.new(name: 'InvalidCloudWatchLogsRoleArnException')
    InvalidDateRangeException = Shapes::StructureShape.new(name: 'InvalidDateRangeException')
    InvalidEventCategoryException = Shapes::StructureShape.new(name: 'InvalidEventCategoryException')
    InvalidEventDataStoreStatusException = Shapes::StructureShape.new(name: 'InvalidEventDataStoreStatusException')
    InvalidEventSelectorsException = Shapes::StructureShape.new(name: 'InvalidEventSelectorsException')
    InvalidHomeRegionException = Shapes::StructureShape.new(name: 'InvalidHomeRegionException')
    InvalidInsightSelectorsException = Shapes::StructureShape.new(name: 'InvalidInsightSelectorsException')
    InvalidKmsKeyIdException = Shapes::StructureShape.new(name: 'InvalidKmsKeyIdException')
    InvalidLookupAttributesException = Shapes::StructureShape.new(name: 'InvalidLookupAttributesException')
    InvalidMaxResultsException = Shapes::StructureShape.new(name: 'InvalidMaxResultsException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidQueryStatementException = Shapes::StructureShape.new(name: 'InvalidQueryStatementException')
    InvalidQueryStatusException = Shapes::StructureShape.new(name: 'InvalidQueryStatusException')
    InvalidS3BucketNameException = Shapes::StructureShape.new(name: 'InvalidS3BucketNameException')
    InvalidS3PrefixException = Shapes::StructureShape.new(name: 'InvalidS3PrefixException')
    InvalidSnsTopicNameException = Shapes::StructureShape.new(name: 'InvalidSnsTopicNameException')
    InvalidTagParameterException = Shapes::StructureShape.new(name: 'InvalidTagParameterException')
    InvalidTimeRangeException = Shapes::StructureShape.new(name: 'InvalidTimeRangeException')
    InvalidTokenException = Shapes::StructureShape.new(name: 'InvalidTokenException')
    InvalidTrailNameException = Shapes::StructureShape.new(name: 'InvalidTrailNameException')
    KmsException = Shapes::StructureShape.new(name: 'KmsException')
    KmsKeyDisabledException = Shapes::StructureShape.new(name: 'KmsKeyDisabledException')
    KmsKeyNotFoundException = Shapes::StructureShape.new(name: 'KmsKeyNotFoundException')
    ListEventDataStoresMaxResultsCount = Shapes::IntegerShape.new(name: 'ListEventDataStoresMaxResultsCount')
    ListEventDataStoresRequest = Shapes::StructureShape.new(name: 'ListEventDataStoresRequest')
    ListEventDataStoresResponse = Shapes::StructureShape.new(name: 'ListEventDataStoresResponse')
    ListPublicKeysRequest = Shapes::StructureShape.new(name: 'ListPublicKeysRequest')
    ListPublicKeysResponse = Shapes::StructureShape.new(name: 'ListPublicKeysResponse')
    ListQueriesMaxResultsCount = Shapes::IntegerShape.new(name: 'ListQueriesMaxResultsCount')
    ListQueriesRequest = Shapes::StructureShape.new(name: 'ListQueriesRequest')
    ListQueriesResponse = Shapes::StructureShape.new(name: 'ListQueriesResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    ListTrailsRequest = Shapes::StructureShape.new(name: 'ListTrailsRequest')
    ListTrailsResponse = Shapes::StructureShape.new(name: 'ListTrailsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LookupAttribute = Shapes::StructureShape.new(name: 'LookupAttribute')
    LookupAttributeKey = Shapes::StringShape.new(name: 'LookupAttributeKey')
    LookupAttributesList = Shapes::ListShape.new(name: 'LookupAttributesList')
    LookupEventsRequest = Shapes::StructureShape.new(name: 'LookupEventsRequest')
    LookupEventsResponse = Shapes::StructureShape.new(name: 'LookupEventsResponse')
    MaxConcurrentQueriesException = Shapes::StructureShape.new(name: 'MaxConcurrentQueriesException')
    MaxQueryResults = Shapes::IntegerShape.new(name: 'MaxQueryResults')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumNumberOfTrailsExceededException = Shapes::StructureShape.new(name: 'MaximumNumberOfTrailsExceededException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotOrganizationMasterAccountException = Shapes::StructureShape.new(name: 'NotOrganizationMasterAccountException')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    Operator = Shapes::ListShape.new(name: 'Operator')
    OperatorValue = Shapes::StringShape.new(name: 'OperatorValue')
    OrganizationNotInAllFeaturesModeException = Shapes::StructureShape.new(name: 'OrganizationNotInAllFeaturesModeException')
    OrganizationsNotInUseException = Shapes::StructureShape.new(name: 'OrganizationsNotInUseException')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PublicKey = Shapes::StructureShape.new(name: 'PublicKey')
    PublicKeyList = Shapes::ListShape.new(name: 'PublicKeyList')
    PutEventSelectorsRequest = Shapes::StructureShape.new(name: 'PutEventSelectorsRequest')
    PutEventSelectorsResponse = Shapes::StructureShape.new(name: 'PutEventSelectorsResponse')
    PutInsightSelectorsRequest = Shapes::StructureShape.new(name: 'PutInsightSelectorsRequest')
    PutInsightSelectorsResponse = Shapes::StructureShape.new(name: 'PutInsightSelectorsResponse')
    Queries = Shapes::ListShape.new(name: 'Queries')
    Query = Shapes::StructureShape.new(name: 'Query')
    QueryIdNotFoundException = Shapes::StructureShape.new(name: 'QueryIdNotFoundException')
    QueryResultColumn = Shapes::MapShape.new(name: 'QueryResultColumn')
    QueryResultKey = Shapes::StringShape.new(name: 'QueryResultKey')
    QueryResultRow = Shapes::ListShape.new(name: 'QueryResultRow')
    QueryResultRows = Shapes::ListShape.new(name: 'QueryResultRows')
    QueryResultValue = Shapes::StringShape.new(name: 'QueryResultValue')
    QueryStatement = Shapes::StringShape.new(name: 'QueryStatement')
    QueryStatistics = Shapes::StructureShape.new(name: 'QueryStatistics')
    QueryStatisticsForDescribeQuery = Shapes::StructureShape.new(name: 'QueryStatisticsForDescribeQuery')
    QueryStatus = Shapes::StringShape.new(name: 'QueryStatus')
    ReadWriteType = Shapes::StringShape.new(name: 'ReadWriteType')
    RemoveTagsRequest = Shapes::StructureShape.new(name: 'RemoveTagsRequest')
    RemoveTagsResponse = Shapes::StructureShape.new(name: 'RemoveTagsResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTypeNotSupportedException = Shapes::StructureShape.new(name: 'ResourceTypeNotSupportedException')
    RestoreEventDataStoreRequest = Shapes::StructureShape.new(name: 'RestoreEventDataStoreRequest')
    RestoreEventDataStoreResponse = Shapes::StructureShape.new(name: 'RestoreEventDataStoreResponse')
    RetentionPeriod = Shapes::IntegerShape.new(name: 'RetentionPeriod')
    S3BucketDoesNotExistException = Shapes::StructureShape.new(name: 'S3BucketDoesNotExistException')
    SelectorField = Shapes::StringShape.new(name: 'SelectorField')
    SelectorName = Shapes::StringShape.new(name: 'SelectorName')
    StartLoggingRequest = Shapes::StructureShape.new(name: 'StartLoggingRequest')
    StartLoggingResponse = Shapes::StructureShape.new(name: 'StartLoggingResponse')
    StartQueryRequest = Shapes::StructureShape.new(name: 'StartQueryRequest')
    StartQueryResponse = Shapes::StructureShape.new(name: 'StartQueryResponse')
    StopLoggingRequest = Shapes::StructureShape.new(name: 'StopLoggingRequest')
    StopLoggingResponse = Shapes::StructureShape.new(name: 'StopLoggingResponse')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsLimitExceededException = Shapes::StructureShape.new(name: 'TagsLimitExceededException')
    TagsList = Shapes::ListShape.new(name: 'TagsList')
    TerminationProtectionEnabled = Shapes::BooleanShape.new(name: 'TerminationProtectionEnabled')
    Trail = Shapes::StructureShape.new(name: 'Trail')
    TrailAlreadyExistsException = Shapes::StructureShape.new(name: 'TrailAlreadyExistsException')
    TrailInfo = Shapes::StructureShape.new(name: 'TrailInfo')
    TrailList = Shapes::ListShape.new(name: 'TrailList')
    TrailNameList = Shapes::ListShape.new(name: 'TrailNameList')
    TrailNotFoundException = Shapes::StructureShape.new(name: 'TrailNotFoundException')
    TrailNotProvidedException = Shapes::StructureShape.new(name: 'TrailNotProvidedException')
    Trails = Shapes::ListShape.new(name: 'Trails')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UpdateEventDataStoreRequest = Shapes::StructureShape.new(name: 'UpdateEventDataStoreRequest')
    UpdateEventDataStoreResponse = Shapes::StructureShape.new(name: 'UpdateEventDataStoreResponse')
    UpdateTrailRequest = Shapes::StructureShape.new(name: 'UpdateTrailRequest')
    UpdateTrailResponse = Shapes::StructureShape.new(name: 'UpdateTrailResponse')

    AddTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    AddTagsRequest.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, required: true, location_name: "TagsList"))
    AddTagsRequest.struct_class = Types::AddTagsRequest

    AddTagsResponse.struct_class = Types::AddTagsResponse

    AdvancedEventSelector.add_member(:name, Shapes::ShapeRef.new(shape: SelectorName, location_name: "Name"))
    AdvancedEventSelector.add_member(:field_selectors, Shapes::ShapeRef.new(shape: AdvancedFieldSelectors, required: true, location_name: "FieldSelectors"))
    AdvancedEventSelector.struct_class = Types::AdvancedEventSelector

    AdvancedEventSelectors.member = Shapes::ShapeRef.new(shape: AdvancedEventSelector)

    AdvancedFieldSelector.add_member(:field, Shapes::ShapeRef.new(shape: SelectorField, required: true, location_name: "Field"))
    AdvancedFieldSelector.add_member(:equals, Shapes::ShapeRef.new(shape: Operator, location_name: "Equals"))
    AdvancedFieldSelector.add_member(:starts_with, Shapes::ShapeRef.new(shape: Operator, location_name: "StartsWith"))
    AdvancedFieldSelector.add_member(:ends_with, Shapes::ShapeRef.new(shape: Operator, location_name: "EndsWith"))
    AdvancedFieldSelector.add_member(:not_equals, Shapes::ShapeRef.new(shape: Operator, location_name: "NotEquals"))
    AdvancedFieldSelector.add_member(:not_starts_with, Shapes::ShapeRef.new(shape: Operator, location_name: "NotStartsWith"))
    AdvancedFieldSelector.add_member(:not_ends_with, Shapes::ShapeRef.new(shape: Operator, location_name: "NotEndsWith"))
    AdvancedFieldSelector.struct_class = Types::AdvancedFieldSelector

    AdvancedFieldSelectors.member = Shapes::ShapeRef.new(shape: AdvancedFieldSelector)

    CancelQueryRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    CancelQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "QueryId"))
    CancelQueryRequest.struct_class = Types::CancelQueryRequest

    CancelQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "QueryId"))
    CancelQueryResponse.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "QueryStatus"))
    CancelQueryResponse.struct_class = Types::CancelQueryResponse

    CloudTrailARNInvalidException.struct_class = Types::CloudTrailARNInvalidException

    CloudTrailAccessNotEnabledException.struct_class = Types::CloudTrailAccessNotEnabledException

    CloudTrailInvalidClientTokenIdException.struct_class = Types::CloudTrailInvalidClientTokenIdException

    CloudWatchLogsDeliveryUnavailableException.struct_class = Types::CloudWatchLogsDeliveryUnavailableException

    ConflictException.struct_class = Types::ConflictException

    CreateEventDataStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, required: true, location_name: "Name"))
    CreateEventDataStoreRequest.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    CreateEventDataStoreRequest.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    CreateEventDataStoreRequest.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    CreateEventDataStoreRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    CreateEventDataStoreRequest.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    CreateEventDataStoreRequest.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, location_name: "TagsList"))
    CreateEventDataStoreRequest.struct_class = Types::CreateEventDataStoreRequest

    CreateEventDataStoreResponse.add_member(:event_data_store_arn, Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: "EventDataStoreArn"))
    CreateEventDataStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: "Name"))
    CreateEventDataStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: "Status"))
    CreateEventDataStoreResponse.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    CreateEventDataStoreResponse.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    CreateEventDataStoreResponse.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    CreateEventDataStoreResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    CreateEventDataStoreResponse.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    CreateEventDataStoreResponse.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, location_name: "TagsList"))
    CreateEventDataStoreResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    CreateEventDataStoreResponse.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    CreateEventDataStoreResponse.struct_class = Types::CreateEventDataStoreResponse

    CreateTrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateTrailRequest.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketName"))
    CreateTrailRequest.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    CreateTrailRequest.add_member(:sns_topic_name, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicName"))
    CreateTrailRequest.add_member(:include_global_service_events, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeGlobalServiceEvents"))
    CreateTrailRequest.add_member(:is_multi_region_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMultiRegionTrail"))
    CreateTrailRequest.add_member(:enable_log_file_validation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableLogFileValidation"))
    CreateTrailRequest.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsLogGroupArn"))
    CreateTrailRequest.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsRoleArn"))
    CreateTrailRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateTrailRequest.add_member(:is_organization_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsOrganizationTrail"))
    CreateTrailRequest.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, location_name: "TagsList"))
    CreateTrailRequest.struct_class = Types::CreateTrailRequest

    CreateTrailResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CreateTrailResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    CreateTrailResponse.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    CreateTrailResponse.add_member(:sns_topic_name, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "SnsTopicName"))
    CreateTrailResponse.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicARN"))
    CreateTrailResponse.add_member(:include_global_service_events, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeGlobalServiceEvents"))
    CreateTrailResponse.add_member(:is_multi_region_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMultiRegionTrail"))
    CreateTrailResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    CreateTrailResponse.add_member(:log_file_validation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "LogFileValidationEnabled"))
    CreateTrailResponse.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsLogGroupArn"))
    CreateTrailResponse.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsRoleArn"))
    CreateTrailResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateTrailResponse.add_member(:is_organization_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsOrganizationTrail"))
    CreateTrailResponse.struct_class = Types::CreateTrailResponse

    DataResource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    DataResource.add_member(:values, Shapes::ShapeRef.new(shape: DataResourceValues, location_name: "Values"))
    DataResource.struct_class = Types::DataResource

    DataResourceValues.member = Shapes::ShapeRef.new(shape: String)

    DataResources.member = Shapes::ShapeRef.new(shape: DataResource)

    DeleteEventDataStoreRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    DeleteEventDataStoreRequest.struct_class = Types::DeleteEventDataStoreRequest

    DeleteEventDataStoreResponse.struct_class = Types::DeleteEventDataStoreResponse

    DeleteTrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteTrailRequest.struct_class = Types::DeleteTrailRequest

    DeleteTrailResponse.struct_class = Types::DeleteTrailResponse

    DescribeQueryRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    DescribeQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "QueryId"))
    DescribeQueryRequest.struct_class = Types::DescribeQueryRequest

    DescribeQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, location_name: "QueryId"))
    DescribeQueryResponse.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryStatement, location_name: "QueryString"))
    DescribeQueryResponse.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "QueryStatus"))
    DescribeQueryResponse.add_member(:query_statistics, Shapes::ShapeRef.new(shape: QueryStatisticsForDescribeQuery, location_name: "QueryStatistics"))
    DescribeQueryResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeQueryResponse.struct_class = Types::DescribeQueryResponse

    DescribeTrailsRequest.add_member(:trail_name_list, Shapes::ShapeRef.new(shape: TrailNameList, location_name: "trailNameList"))
    DescribeTrailsRequest.add_member(:include_shadow_trails, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeShadowTrails"))
    DescribeTrailsRequest.struct_class = Types::DescribeTrailsRequest

    DescribeTrailsResponse.add_member(:trail_list, Shapes::ShapeRef.new(shape: TrailList, location_name: "trailList"))
    DescribeTrailsResponse.struct_class = Types::DescribeTrailsResponse

    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: String, location_name: "EventId"))
    Event.add_member(:event_name, Shapes::ShapeRef.new(shape: String, location_name: "EventName"))
    Event.add_member(:read_only, Shapes::ShapeRef.new(shape: String, location_name: "ReadOnly"))
    Event.add_member(:access_key_id, Shapes::ShapeRef.new(shape: String, location_name: "AccessKeyId"))
    Event.add_member(:event_time, Shapes::ShapeRef.new(shape: Date, location_name: "EventTime"))
    Event.add_member(:event_source, Shapes::ShapeRef.new(shape: String, location_name: "EventSource"))
    Event.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    Event.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "Resources"))
    Event.add_member(:cloud_trail_event, Shapes::ShapeRef.new(shape: String, location_name: "CloudTrailEvent"))
    Event.struct_class = Types::Event

    EventDataStore.add_member(:event_data_store_arn, Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: "EventDataStoreArn"))
    EventDataStore.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: "Name"))
    EventDataStore.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    EventDataStore.add_member(:status, Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: "Status"))
    EventDataStore.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    EventDataStore.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    EventDataStore.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    EventDataStore.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    EventDataStore.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    EventDataStore.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    EventDataStore.struct_class = Types::EventDataStore

    EventDataStoreARNInvalidException.struct_class = Types::EventDataStoreARNInvalidException

    EventDataStoreAlreadyExistsException.struct_class = Types::EventDataStoreAlreadyExistsException

    EventDataStoreMaxLimitExceededException.struct_class = Types::EventDataStoreMaxLimitExceededException

    EventDataStoreNotFoundException.struct_class = Types::EventDataStoreNotFoundException

    EventDataStoreTerminationProtectedException.struct_class = Types::EventDataStoreTerminationProtectedException

    EventDataStores.member = Shapes::ShapeRef.new(shape: EventDataStore)

    EventSelector.add_member(:read_write_type, Shapes::ShapeRef.new(shape: ReadWriteType, location_name: "ReadWriteType"))
    EventSelector.add_member(:include_management_events, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeManagementEvents"))
    EventSelector.add_member(:data_resources, Shapes::ShapeRef.new(shape: DataResources, location_name: "DataResources"))
    EventSelector.add_member(:exclude_management_event_sources, Shapes::ShapeRef.new(shape: ExcludeManagementEventSources, location_name: "ExcludeManagementEventSources"))
    EventSelector.struct_class = Types::EventSelector

    EventSelectors.member = Shapes::ShapeRef.new(shape: EventSelector)

    EventsList.member = Shapes::ShapeRef.new(shape: Event)

    ExcludeManagementEventSources.member = Shapes::ShapeRef.new(shape: String)

    GetEventDataStoreRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    GetEventDataStoreRequest.struct_class = Types::GetEventDataStoreRequest

    GetEventDataStoreResponse.add_member(:event_data_store_arn, Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: "EventDataStoreArn"))
    GetEventDataStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: "Name"))
    GetEventDataStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: "Status"))
    GetEventDataStoreResponse.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    GetEventDataStoreResponse.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    GetEventDataStoreResponse.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    GetEventDataStoreResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    GetEventDataStoreResponse.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    GetEventDataStoreResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    GetEventDataStoreResponse.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    GetEventDataStoreResponse.struct_class = Types::GetEventDataStoreResponse

    GetEventSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    GetEventSelectorsRequest.struct_class = Types::GetEventSelectorsRequest

    GetEventSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    GetEventSelectorsResponse.add_member(:event_selectors, Shapes::ShapeRef.new(shape: EventSelectors, location_name: "EventSelectors"))
    GetEventSelectorsResponse.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    GetEventSelectorsResponse.struct_class = Types::GetEventSelectorsResponse

    GetInsightSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    GetInsightSelectorsRequest.struct_class = Types::GetInsightSelectorsRequest

    GetInsightSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    GetInsightSelectorsResponse.add_member(:insight_selectors, Shapes::ShapeRef.new(shape: InsightSelectors, location_name: "InsightSelectors"))
    GetInsightSelectorsResponse.struct_class = Types::GetInsightSelectorsResponse

    GetQueryResultsRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    GetQueryResultsRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "QueryId"))
    GetQueryResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetQueryResultsRequest.add_member(:max_query_results, Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: "MaxQueryResults"))
    GetQueryResultsRequest.struct_class = Types::GetQueryResultsRequest

    GetQueryResultsResponse.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "QueryStatus"))
    GetQueryResultsResponse.add_member(:query_statistics, Shapes::ShapeRef.new(shape: QueryStatistics, location_name: "QueryStatistics"))
    GetQueryResultsResponse.add_member(:query_result_rows, Shapes::ShapeRef.new(shape: QueryResultRows, location_name: "QueryResultRows"))
    GetQueryResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetQueryResultsResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    GetQueryResultsResponse.struct_class = Types::GetQueryResultsResponse

    GetTrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    GetTrailRequest.struct_class = Types::GetTrailRequest

    GetTrailResponse.add_member(:trail, Shapes::ShapeRef.new(shape: Trail, location_name: "Trail"))
    GetTrailResponse.struct_class = Types::GetTrailResponse

    GetTrailStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    GetTrailStatusRequest.struct_class = Types::GetTrailStatusRequest

    GetTrailStatusResponse.add_member(:is_logging, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsLogging"))
    GetTrailStatusResponse.add_member(:latest_delivery_error, Shapes::ShapeRef.new(shape: String, location_name: "LatestDeliveryError"))
    GetTrailStatusResponse.add_member(:latest_notification_error, Shapes::ShapeRef.new(shape: String, location_name: "LatestNotificationError"))
    GetTrailStatusResponse.add_member(:latest_delivery_time, Shapes::ShapeRef.new(shape: Date, location_name: "LatestDeliveryTime"))
    GetTrailStatusResponse.add_member(:latest_notification_time, Shapes::ShapeRef.new(shape: Date, location_name: "LatestNotificationTime"))
    GetTrailStatusResponse.add_member(:start_logging_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartLoggingTime"))
    GetTrailStatusResponse.add_member(:stop_logging_time, Shapes::ShapeRef.new(shape: Date, location_name: "StopLoggingTime"))
    GetTrailStatusResponse.add_member(:latest_cloud_watch_logs_delivery_error, Shapes::ShapeRef.new(shape: String, location_name: "LatestCloudWatchLogsDeliveryError"))
    GetTrailStatusResponse.add_member(:latest_cloud_watch_logs_delivery_time, Shapes::ShapeRef.new(shape: Date, location_name: "LatestCloudWatchLogsDeliveryTime"))
    GetTrailStatusResponse.add_member(:latest_digest_delivery_time, Shapes::ShapeRef.new(shape: Date, location_name: "LatestDigestDeliveryTime"))
    GetTrailStatusResponse.add_member(:latest_digest_delivery_error, Shapes::ShapeRef.new(shape: String, location_name: "LatestDigestDeliveryError"))
    GetTrailStatusResponse.add_member(:latest_delivery_attempt_time, Shapes::ShapeRef.new(shape: String, location_name: "LatestDeliveryAttemptTime"))
    GetTrailStatusResponse.add_member(:latest_notification_attempt_time, Shapes::ShapeRef.new(shape: String, location_name: "LatestNotificationAttemptTime"))
    GetTrailStatusResponse.add_member(:latest_notification_attempt_succeeded, Shapes::ShapeRef.new(shape: String, location_name: "LatestNotificationAttemptSucceeded"))
    GetTrailStatusResponse.add_member(:latest_delivery_attempt_succeeded, Shapes::ShapeRef.new(shape: String, location_name: "LatestDeliveryAttemptSucceeded"))
    GetTrailStatusResponse.add_member(:time_logging_started, Shapes::ShapeRef.new(shape: String, location_name: "TimeLoggingStarted"))
    GetTrailStatusResponse.add_member(:time_logging_stopped, Shapes::ShapeRef.new(shape: String, location_name: "TimeLoggingStopped"))
    GetTrailStatusResponse.struct_class = Types::GetTrailStatusResponse

    InactiveEventDataStoreException.struct_class = Types::InactiveEventDataStoreException

    InactiveQueryException.struct_class = Types::InactiveQueryException

    InsightNotEnabledException.struct_class = Types::InsightNotEnabledException

    InsightSelector.add_member(:insight_type, Shapes::ShapeRef.new(shape: InsightType, location_name: "InsightType"))
    InsightSelector.struct_class = Types::InsightSelector

    InsightSelectors.member = Shapes::ShapeRef.new(shape: InsightSelector)

    InsufficientDependencyServiceAccessPermissionException.struct_class = Types::InsufficientDependencyServiceAccessPermissionException

    InsufficientEncryptionPolicyException.struct_class = Types::InsufficientEncryptionPolicyException

    InsufficientS3BucketPolicyException.struct_class = Types::InsufficientS3BucketPolicyException

    InsufficientSnsTopicPolicyException.struct_class = Types::InsufficientSnsTopicPolicyException

    InvalidCloudWatchLogsLogGroupArnException.struct_class = Types::InvalidCloudWatchLogsLogGroupArnException

    InvalidCloudWatchLogsRoleArnException.struct_class = Types::InvalidCloudWatchLogsRoleArnException

    InvalidDateRangeException.struct_class = Types::InvalidDateRangeException

    InvalidEventCategoryException.struct_class = Types::InvalidEventCategoryException

    InvalidEventDataStoreStatusException.struct_class = Types::InvalidEventDataStoreStatusException

    InvalidEventSelectorsException.struct_class = Types::InvalidEventSelectorsException

    InvalidHomeRegionException.struct_class = Types::InvalidHomeRegionException

    InvalidInsightSelectorsException.struct_class = Types::InvalidInsightSelectorsException

    InvalidKmsKeyIdException.struct_class = Types::InvalidKmsKeyIdException

    InvalidLookupAttributesException.struct_class = Types::InvalidLookupAttributesException

    InvalidMaxResultsException.struct_class = Types::InvalidMaxResultsException

    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterCombinationException.struct_class = Types::InvalidParameterCombinationException

    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidQueryStatementException.struct_class = Types::InvalidQueryStatementException

    InvalidQueryStatusException.struct_class = Types::InvalidQueryStatusException

    InvalidS3BucketNameException.struct_class = Types::InvalidS3BucketNameException

    InvalidS3PrefixException.struct_class = Types::InvalidS3PrefixException

    InvalidSnsTopicNameException.struct_class = Types::InvalidSnsTopicNameException

    InvalidTagParameterException.struct_class = Types::InvalidTagParameterException

    InvalidTimeRangeException.struct_class = Types::InvalidTimeRangeException

    InvalidTokenException.struct_class = Types::InvalidTokenException

    InvalidTrailNameException.struct_class = Types::InvalidTrailNameException

    KmsException.struct_class = Types::KmsException

    KmsKeyDisabledException.struct_class = Types::KmsKeyDisabledException

    KmsKeyNotFoundException.struct_class = Types::KmsKeyNotFoundException

    ListEventDataStoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEventDataStoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEventDataStoresMaxResultsCount, location_name: "MaxResults"))
    ListEventDataStoresRequest.struct_class = Types::ListEventDataStoresRequest

    ListEventDataStoresResponse.add_member(:event_data_stores, Shapes::ShapeRef.new(shape: EventDataStores, location_name: "EventDataStores"))
    ListEventDataStoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEventDataStoresResponse.struct_class = Types::ListEventDataStoresResponse

    ListPublicKeysRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartTime"))
    ListPublicKeysRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndTime"))
    ListPublicKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPublicKeysRequest.struct_class = Types::ListPublicKeysRequest

    ListPublicKeysResponse.add_member(:public_key_list, Shapes::ShapeRef.new(shape: PublicKeyList, location_name: "PublicKeyList"))
    ListPublicKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPublicKeysResponse.struct_class = Types::ListPublicKeysResponse

    ListQueriesRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    ListQueriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListQueriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListQueriesMaxResultsCount, location_name: "MaxResults"))
    ListQueriesRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartTime"))
    ListQueriesRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndTime"))
    ListQueriesRequest.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "QueryStatus"))
    ListQueriesRequest.struct_class = Types::ListQueriesRequest

    ListQueriesResponse.add_member(:queries, Shapes::ShapeRef.new(shape: Queries, location_name: "Queries"))
    ListQueriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListQueriesResponse.struct_class = Types::ListQueriesResponse

    ListTagsRequest.add_member(:resource_id_list, Shapes::ShapeRef.new(shape: ResourceIdList, required: true, location_name: "ResourceIdList"))
    ListTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:resource_tag_list, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTagList"))
    ListTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    ListTrailsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTrailsRequest.struct_class = Types::ListTrailsRequest

    ListTrailsResponse.add_member(:trails, Shapes::ShapeRef.new(shape: Trails, location_name: "Trails"))
    ListTrailsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTrailsResponse.struct_class = Types::ListTrailsResponse

    LookupAttribute.add_member(:attribute_key, Shapes::ShapeRef.new(shape: LookupAttributeKey, required: true, location_name: "AttributeKey"))
    LookupAttribute.add_member(:attribute_value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AttributeValue"))
    LookupAttribute.struct_class = Types::LookupAttribute

    LookupAttributesList.member = Shapes::ShapeRef.new(shape: LookupAttribute)

    LookupEventsRequest.add_member(:lookup_attributes, Shapes::ShapeRef.new(shape: LookupAttributesList, location_name: "LookupAttributes"))
    LookupEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartTime"))
    LookupEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndTime"))
    LookupEventsRequest.add_member(:event_category, Shapes::ShapeRef.new(shape: EventCategory, location_name: "EventCategory"))
    LookupEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    LookupEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    LookupEventsRequest.struct_class = Types::LookupEventsRequest

    LookupEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: EventsList, location_name: "Events"))
    LookupEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    LookupEventsResponse.struct_class = Types::LookupEventsResponse

    MaxConcurrentQueriesException.struct_class = Types::MaxConcurrentQueriesException

    MaximumNumberOfTrailsExceededException.struct_class = Types::MaximumNumberOfTrailsExceededException

    NotOrganizationMasterAccountException.struct_class = Types::NotOrganizationMasterAccountException

    OperationNotPermittedException.struct_class = Types::OperationNotPermittedException

    Operator.member = Shapes::ShapeRef.new(shape: OperatorValue)

    OrganizationNotInAllFeaturesModeException.struct_class = Types::OrganizationNotInAllFeaturesModeException

    OrganizationsNotInUseException.struct_class = Types::OrganizationsNotInUseException

    PublicKey.add_member(:value, Shapes::ShapeRef.new(shape: ByteBuffer, location_name: "Value"))
    PublicKey.add_member(:validity_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "ValidityStartTime"))
    PublicKey.add_member(:validity_end_time, Shapes::ShapeRef.new(shape: Date, location_name: "ValidityEndTime"))
    PublicKey.add_member(:fingerprint, Shapes::ShapeRef.new(shape: String, location_name: "Fingerprint"))
    PublicKey.struct_class = Types::PublicKey

    PublicKeyList.member = Shapes::ShapeRef.new(shape: PublicKey)

    PutEventSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    PutEventSelectorsRequest.add_member(:event_selectors, Shapes::ShapeRef.new(shape: EventSelectors, location_name: "EventSelectors"))
    PutEventSelectorsRequest.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    PutEventSelectorsRequest.struct_class = Types::PutEventSelectorsRequest

    PutEventSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    PutEventSelectorsResponse.add_member(:event_selectors, Shapes::ShapeRef.new(shape: EventSelectors, location_name: "EventSelectors"))
    PutEventSelectorsResponse.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    PutEventSelectorsResponse.struct_class = Types::PutEventSelectorsResponse

    PutInsightSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    PutInsightSelectorsRequest.add_member(:insight_selectors, Shapes::ShapeRef.new(shape: InsightSelectors, required: true, location_name: "InsightSelectors"))
    PutInsightSelectorsRequest.struct_class = Types::PutInsightSelectorsRequest

    PutInsightSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    PutInsightSelectorsResponse.add_member(:insight_selectors, Shapes::ShapeRef.new(shape: InsightSelectors, location_name: "InsightSelectors"))
    PutInsightSelectorsResponse.struct_class = Types::PutInsightSelectorsResponse

    Queries.member = Shapes::ShapeRef.new(shape: Query)

    Query.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, location_name: "QueryId"))
    Query.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "QueryStatus"))
    Query.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    Query.struct_class = Types::Query

    QueryIdNotFoundException.struct_class = Types::QueryIdNotFoundException

    QueryResultColumn.key = Shapes::ShapeRef.new(shape: QueryResultKey)
    QueryResultColumn.value = Shapes::ShapeRef.new(shape: QueryResultValue)

    QueryResultRow.member = Shapes::ShapeRef.new(shape: QueryResultColumn)

    QueryResultRows.member = Shapes::ShapeRef.new(shape: QueryResultRow)

    QueryStatistics.add_member(:results_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ResultsCount"))
    QueryStatistics.add_member(:total_results_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalResultsCount"))
    QueryStatistics.struct_class = Types::QueryStatistics

    QueryStatisticsForDescribeQuery.add_member(:events_matched, Shapes::ShapeRef.new(shape: Long, location_name: "EventsMatched"))
    QueryStatisticsForDescribeQuery.add_member(:events_scanned, Shapes::ShapeRef.new(shape: Long, location_name: "EventsScanned"))
    QueryStatisticsForDescribeQuery.add_member(:execution_time_in_millis, Shapes::ShapeRef.new(shape: Integer, location_name: "ExecutionTimeInMillis"))
    QueryStatisticsForDescribeQuery.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    QueryStatisticsForDescribeQuery.struct_class = Types::QueryStatisticsForDescribeQuery

    RemoveTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    RemoveTagsRequest.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, required: true, location_name: "TagsList"))
    RemoveTagsRequest.struct_class = Types::RemoveTagsRequest

    RemoveTagsResponse.struct_class = Types::RemoveTagsResponse

    Resource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    Resource.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "ResourceName"))
    Resource.struct_class = Types::Resource

    ResourceIdList.member = Shapes::ShapeRef.new(shape: String)

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceTag.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, location_name: "TagsList"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    ResourceTypeNotSupportedException.struct_class = Types::ResourceTypeNotSupportedException

    RestoreEventDataStoreRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    RestoreEventDataStoreRequest.struct_class = Types::RestoreEventDataStoreRequest

    RestoreEventDataStoreResponse.add_member(:event_data_store_arn, Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: "EventDataStoreArn"))
    RestoreEventDataStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: "Name"))
    RestoreEventDataStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: "Status"))
    RestoreEventDataStoreResponse.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    RestoreEventDataStoreResponse.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    RestoreEventDataStoreResponse.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    RestoreEventDataStoreResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    RestoreEventDataStoreResponse.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    RestoreEventDataStoreResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    RestoreEventDataStoreResponse.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    RestoreEventDataStoreResponse.struct_class = Types::RestoreEventDataStoreResponse

    S3BucketDoesNotExistException.struct_class = Types::S3BucketDoesNotExistException

    StartLoggingRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartLoggingRequest.struct_class = Types::StartLoggingRequest

    StartLoggingResponse.struct_class = Types::StartLoggingResponse

    StartQueryRequest.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryStatement, required: true, location_name: "QueryStatement"))
    StartQueryRequest.struct_class = Types::StartQueryRequest

    StartQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, location_name: "QueryId"))
    StartQueryResponse.struct_class = Types::StartQueryResponse

    StopLoggingRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StopLoggingRequest.struct_class = Types::StopLoggingRequest

    StopLoggingResponse.struct_class = Types::StopLoggingResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagsLimitExceededException.struct_class = Types::TagsLimitExceededException

    TagsList.member = Shapes::ShapeRef.new(shape: Tag)

    Trail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Trail.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    Trail.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    Trail.add_member(:sns_topic_name, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "SnsTopicName"))
    Trail.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicARN"))
    Trail.add_member(:include_global_service_events, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeGlobalServiceEvents"))
    Trail.add_member(:is_multi_region_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMultiRegionTrail"))
    Trail.add_member(:home_region, Shapes::ShapeRef.new(shape: String, location_name: "HomeRegion"))
    Trail.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    Trail.add_member(:log_file_validation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "LogFileValidationEnabled"))
    Trail.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsLogGroupArn"))
    Trail.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsRoleArn"))
    Trail.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    Trail.add_member(:has_custom_event_selectors, Shapes::ShapeRef.new(shape: Boolean, location_name: "HasCustomEventSelectors"))
    Trail.add_member(:has_insight_selectors, Shapes::ShapeRef.new(shape: Boolean, location_name: "HasInsightSelectors"))
    Trail.add_member(:is_organization_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsOrganizationTrail"))
    Trail.struct_class = Types::Trail

    TrailAlreadyExistsException.struct_class = Types::TrailAlreadyExistsException

    TrailInfo.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    TrailInfo.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    TrailInfo.add_member(:home_region, Shapes::ShapeRef.new(shape: String, location_name: "HomeRegion"))
    TrailInfo.struct_class = Types::TrailInfo

    TrailList.member = Shapes::ShapeRef.new(shape: Trail)

    TrailNameList.member = Shapes::ShapeRef.new(shape: String)

    TrailNotFoundException.struct_class = Types::TrailNotFoundException

    TrailNotProvidedException.struct_class = Types::TrailNotProvidedException

    Trails.member = Shapes::ShapeRef.new(shape: TrailInfo)

    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UpdateEventDataStoreRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    UpdateEventDataStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: "Name"))
    UpdateEventDataStoreRequest.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    UpdateEventDataStoreRequest.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    UpdateEventDataStoreRequest.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    UpdateEventDataStoreRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    UpdateEventDataStoreRequest.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    UpdateEventDataStoreRequest.struct_class = Types::UpdateEventDataStoreRequest

    UpdateEventDataStoreResponse.add_member(:event_data_store_arn, Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: "EventDataStoreArn"))
    UpdateEventDataStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: "Name"))
    UpdateEventDataStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: EventDataStoreStatus, location_name: "Status"))
    UpdateEventDataStoreResponse.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    UpdateEventDataStoreResponse.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    UpdateEventDataStoreResponse.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    UpdateEventDataStoreResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    UpdateEventDataStoreResponse.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    UpdateEventDataStoreResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    UpdateEventDataStoreResponse.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    UpdateEventDataStoreResponse.struct_class = Types::UpdateEventDataStoreResponse

    UpdateTrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    UpdateTrailRequest.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    UpdateTrailRequest.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    UpdateTrailRequest.add_member(:sns_topic_name, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicName"))
    UpdateTrailRequest.add_member(:include_global_service_events, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeGlobalServiceEvents"))
    UpdateTrailRequest.add_member(:is_multi_region_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMultiRegionTrail"))
    UpdateTrailRequest.add_member(:enable_log_file_validation, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableLogFileValidation"))
    UpdateTrailRequest.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsLogGroupArn"))
    UpdateTrailRequest.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsRoleArn"))
    UpdateTrailRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    UpdateTrailRequest.add_member(:is_organization_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsOrganizationTrail"))
    UpdateTrailRequest.struct_class = Types::UpdateTrailRequest

    UpdateTrailResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateTrailResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "S3BucketName"))
    UpdateTrailResponse.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3KeyPrefix"))
    UpdateTrailResponse.add_member(:sns_topic_name, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "SnsTopicName"))
    UpdateTrailResponse.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicARN"))
    UpdateTrailResponse.add_member(:include_global_service_events, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeGlobalServiceEvents"))
    UpdateTrailResponse.add_member(:is_multi_region_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMultiRegionTrail"))
    UpdateTrailResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    UpdateTrailResponse.add_member(:log_file_validation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "LogFileValidationEnabled"))
    UpdateTrailResponse.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsLogGroupArn"))
    UpdateTrailResponse.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudWatchLogsRoleArn"))
    UpdateTrailResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    UpdateTrailResponse.add_member(:is_organization_trail, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsOrganizationTrail"))
    UpdateTrailResponse.struct_class = Types::UpdateTrailResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-11-01"

      api.metadata = {
        "apiVersion" => "2013-11-01",
        "endpointPrefix" => "cloudtrail",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "CloudTrail",
        "serviceFullName" => "AWS CloudTrail",
        "serviceId" => "CloudTrail",
        "signatureVersion" => "v4",
        "targetPrefix" => "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
        "uid" => "cloudtrail-2013-11-01",
      }

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: TagsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:cancel_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveQueryException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: QueryIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_event_data_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventDataStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventDataStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventDataStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreMaxLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
      end)

      api.add_operation(:create_trail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTrailRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: MaximumNumberOfTrailsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TrailAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientSnsTopicPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3BucketNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3PrefixException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnsTopicNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKmsKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotProvidedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCloudWatchLogsLogGroupArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCloudWatchLogsRoleArnException)
        o.errors << Shapes::ShapeRef.new(shape: CloudWatchLogsDeliveryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailInvalidClientTokenIdException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_event_data_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventDataStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventDataStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventDataStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreTerminationProtectedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:delete_trail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrailRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: QueryIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:describe_trails, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrailsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
      end)

      api.add_operation(:get_event_data_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventDataStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEventDataStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventDataStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:get_event_selectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventSelectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEventSelectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventSelectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_insight_selectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsightSelectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInsightSelectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInsightSelectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InsightNotEnabledException)
      end)

      api.add_operation(:get_query_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: QueryIdNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_trail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTrailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_trail_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrailStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTrailStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrailStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:list_event_data_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventDataStores"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventDataStoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventDataStoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_public_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPublicKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPublicKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPublicKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTimeRangeException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQueriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDateRangeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStatusException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trails, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTrailsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:lookup_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LookupEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LookupEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: LookupEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLookupAttributesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTimeRangeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventCategoryException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_event_selectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEventSelectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEventSelectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventSelectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:put_insight_selectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInsightSelectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutInsightSelectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInsightSelectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInsightSelectorsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
      end)

      api.add_operation(:restore_event_data_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreEventDataStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreEventDataStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreEventDataStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreMaxLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
      end)

      api.add_operation(:start_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartLogging"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartLoggingRequest)
        o.output = Shapes::ShapeRef.new(shape: StartLoggingResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:start_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryStatementException)
        o.errors << Shapes::ShapeRef.new(shape: MaxConcurrentQueriesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:stop_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopLogging"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopLoggingRequest)
        o.output = Shapes::ShapeRef.new(shape: StopLoggingResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:update_event_data_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventDataStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventDataStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventDataStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
      end)

      api.add_operation(:update_trail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrailRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientSnsTopicPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3BucketNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3PrefixException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnsTopicNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKmsKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotProvidedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCloudWatchLogsLogGroupArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCloudWatchLogsRoleArnException)
        o.errors << Shapes::ShapeRef.new(shape: CloudWatchLogsDeliveryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailInvalidClientTokenIdException)
      end)
    end

  end
end
