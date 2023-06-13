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

    AccountHasOngoingImportException = Shapes::StructureShape.new(name: 'AccountHasOngoingImportException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountNotFoundException = Shapes::StructureShape.new(name: 'AccountNotFoundException')
    AccountNotRegisteredException = Shapes::StructureShape.new(name: 'AccountNotRegisteredException')
    AccountRegisteredException = Shapes::StructureShape.new(name: 'AccountRegisteredException')
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
    CannotDelegateManagementAccountException = Shapes::StructureShape.new(name: 'CannotDelegateManagementAccountException')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelARNInvalidException = Shapes::StructureShape.new(name: 'ChannelARNInvalidException')
    ChannelAlreadyExistsException = Shapes::StructureShape.new(name: 'ChannelAlreadyExistsException')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    ChannelExistsForEDSException = Shapes::StructureShape.new(name: 'ChannelExistsForEDSException')
    ChannelMaxLimitExceededException = Shapes::StructureShape.new(name: 'ChannelMaxLimitExceededException')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelNotFoundException = Shapes::StructureShape.new(name: 'ChannelNotFoundException')
    Channels = Shapes::ListShape.new(name: 'Channels')
    CloudTrailARNInvalidException = Shapes::StructureShape.new(name: 'CloudTrailARNInvalidException')
    CloudTrailAccessNotEnabledException = Shapes::StructureShape.new(name: 'CloudTrailAccessNotEnabledException')
    CloudTrailInvalidClientTokenIdException = Shapes::StructureShape.new(name: 'CloudTrailInvalidClientTokenIdException')
    CloudWatchLogsDeliveryUnavailableException = Shapes::StructureShape.new(name: 'CloudWatchLogsDeliveryUnavailableException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateEventDataStoreRequest = Shapes::StructureShape.new(name: 'CreateEventDataStoreRequest')
    CreateEventDataStoreResponse = Shapes::StructureShape.new(name: 'CreateEventDataStoreResponse')
    CreateTrailRequest = Shapes::StructureShape.new(name: 'CreateTrailRequest')
    CreateTrailResponse = Shapes::StructureShape.new(name: 'CreateTrailResponse')
    DataResource = Shapes::StructureShape.new(name: 'DataResource')
    DataResourceValues = Shapes::ListShape.new(name: 'DataResourceValues')
    DataResources = Shapes::ListShape.new(name: 'DataResources')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DelegatedAdminAccountLimitExceededException = Shapes::StructureShape.new(name: 'DelegatedAdminAccountLimitExceededException')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteChannelResponse = Shapes::StructureShape.new(name: 'DeleteChannelResponse')
    DeleteEventDataStoreRequest = Shapes::StructureShape.new(name: 'DeleteEventDataStoreRequest')
    DeleteEventDataStoreResponse = Shapes::StructureShape.new(name: 'DeleteEventDataStoreResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteTrailRequest = Shapes::StructureShape.new(name: 'DeleteTrailRequest')
    DeleteTrailResponse = Shapes::StructureShape.new(name: 'DeleteTrailResponse')
    DeliveryS3Uri = Shapes::StringShape.new(name: 'DeliveryS3Uri')
    DeliveryStatus = Shapes::StringShape.new(name: 'DeliveryStatus')
    DeregisterOrganizationDelegatedAdminRequest = Shapes::StructureShape.new(name: 'DeregisterOrganizationDelegatedAdminRequest')
    DeregisterOrganizationDelegatedAdminResponse = Shapes::StructureShape.new(name: 'DeregisterOrganizationDelegatedAdminResponse')
    DescribeQueryRequest = Shapes::StructureShape.new(name: 'DescribeQueryRequest')
    DescribeQueryResponse = Shapes::StructureShape.new(name: 'DescribeQueryResponse')
    DescribeTrailsRequest = Shapes::StructureShape.new(name: 'DescribeTrailsRequest')
    DescribeTrailsResponse = Shapes::StructureShape.new(name: 'DescribeTrailsResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DestinationType = Shapes::StringShape.new(name: 'DestinationType')
    Destinations = Shapes::ListShape.new(name: 'Destinations')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategory = Shapes::StringShape.new(name: 'EventCategory')
    EventDataStore = Shapes::StructureShape.new(name: 'EventDataStore')
    EventDataStoreARNInvalidException = Shapes::StructureShape.new(name: 'EventDataStoreARNInvalidException')
    EventDataStoreAlreadyExistsException = Shapes::StructureShape.new(name: 'EventDataStoreAlreadyExistsException')
    EventDataStoreArn = Shapes::StringShape.new(name: 'EventDataStoreArn')
    EventDataStoreHasOngoingImportException = Shapes::StructureShape.new(name: 'EventDataStoreHasOngoingImportException')
    EventDataStoreKmsKeyId = Shapes::StringShape.new(name: 'EventDataStoreKmsKeyId')
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
    GetChannelRequest = Shapes::StructureShape.new(name: 'GetChannelRequest')
    GetChannelResponse = Shapes::StructureShape.new(name: 'GetChannelResponse')
    GetEventDataStoreRequest = Shapes::StructureShape.new(name: 'GetEventDataStoreRequest')
    GetEventDataStoreResponse = Shapes::StructureShape.new(name: 'GetEventDataStoreResponse')
    GetEventSelectorsRequest = Shapes::StructureShape.new(name: 'GetEventSelectorsRequest')
    GetEventSelectorsResponse = Shapes::StructureShape.new(name: 'GetEventSelectorsResponse')
    GetImportRequest = Shapes::StructureShape.new(name: 'GetImportRequest')
    GetImportResponse = Shapes::StructureShape.new(name: 'GetImportResponse')
    GetInsightSelectorsRequest = Shapes::StructureShape.new(name: 'GetInsightSelectorsRequest')
    GetInsightSelectorsResponse = Shapes::StructureShape.new(name: 'GetInsightSelectorsResponse')
    GetQueryResultsRequest = Shapes::StructureShape.new(name: 'GetQueryResultsRequest')
    GetQueryResultsResponse = Shapes::StructureShape.new(name: 'GetQueryResultsResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetTrailRequest = Shapes::StructureShape.new(name: 'GetTrailRequest')
    GetTrailResponse = Shapes::StructureShape.new(name: 'GetTrailResponse')
    GetTrailStatusRequest = Shapes::StructureShape.new(name: 'GetTrailStatusRequest')
    GetTrailStatusResponse = Shapes::StructureShape.new(name: 'GetTrailStatusResponse')
    ImportDestinations = Shapes::ListShape.new(name: 'ImportDestinations')
    ImportFailureList = Shapes::ListShape.new(name: 'ImportFailureList')
    ImportFailureListItem = Shapes::StructureShape.new(name: 'ImportFailureListItem')
    ImportFailureStatus = Shapes::StringShape.new(name: 'ImportFailureStatus')
    ImportNotFoundException = Shapes::StructureShape.new(name: 'ImportNotFoundException')
    ImportSource = Shapes::StructureShape.new(name: 'ImportSource')
    ImportStatistics = Shapes::StructureShape.new(name: 'ImportStatistics')
    ImportStatus = Shapes::StringShape.new(name: 'ImportStatus')
    ImportsList = Shapes::ListShape.new(name: 'ImportsList')
    ImportsListItem = Shapes::StructureShape.new(name: 'ImportsListItem')
    InactiveEventDataStoreException = Shapes::StructureShape.new(name: 'InactiveEventDataStoreException')
    InactiveQueryException = Shapes::StructureShape.new(name: 'InactiveQueryException')
    IngestionStatus = Shapes::StructureShape.new(name: 'IngestionStatus')
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
    InvalidEventDataStoreCategoryException = Shapes::StructureShape.new(name: 'InvalidEventDataStoreCategoryException')
    InvalidEventDataStoreStatusException = Shapes::StructureShape.new(name: 'InvalidEventDataStoreStatusException')
    InvalidEventSelectorsException = Shapes::StructureShape.new(name: 'InvalidEventSelectorsException')
    InvalidHomeRegionException = Shapes::StructureShape.new(name: 'InvalidHomeRegionException')
    InvalidImportSourceException = Shapes::StructureShape.new(name: 'InvalidImportSourceException')
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
    InvalidSourceException = Shapes::StructureShape.new(name: 'InvalidSourceException')
    InvalidTagParameterException = Shapes::StructureShape.new(name: 'InvalidTagParameterException')
    InvalidTimeRangeException = Shapes::StructureShape.new(name: 'InvalidTimeRangeException')
    InvalidTokenException = Shapes::StructureShape.new(name: 'InvalidTokenException')
    InvalidTrailNameException = Shapes::StructureShape.new(name: 'InvalidTrailNameException')
    KmsException = Shapes::StructureShape.new(name: 'KmsException')
    KmsKeyDisabledException = Shapes::StructureShape.new(name: 'KmsKeyDisabledException')
    KmsKeyNotFoundException = Shapes::StructureShape.new(name: 'KmsKeyNotFoundException')
    ListChannelsMaxResultsCount = Shapes::IntegerShape.new(name: 'ListChannelsMaxResultsCount')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListEventDataStoresMaxResultsCount = Shapes::IntegerShape.new(name: 'ListEventDataStoresMaxResultsCount')
    ListEventDataStoresRequest = Shapes::StructureShape.new(name: 'ListEventDataStoresRequest')
    ListEventDataStoresResponse = Shapes::StructureShape.new(name: 'ListEventDataStoresResponse')
    ListImportFailuresMaxResultsCount = Shapes::IntegerShape.new(name: 'ListImportFailuresMaxResultsCount')
    ListImportFailuresRequest = Shapes::StructureShape.new(name: 'ListImportFailuresRequest')
    ListImportFailuresResponse = Shapes::StructureShape.new(name: 'ListImportFailuresResponse')
    ListImportsMaxResultsCount = Shapes::IntegerShape.new(name: 'ListImportsMaxResultsCount')
    ListImportsRequest = Shapes::StructureShape.new(name: 'ListImportsRequest')
    ListImportsResponse = Shapes::StructureShape.new(name: 'ListImportsResponse')
    ListPublicKeysRequest = Shapes::StructureShape.new(name: 'ListPublicKeysRequest')
    ListPublicKeysResponse = Shapes::StructureShape.new(name: 'ListPublicKeysResponse')
    ListQueriesMaxResultsCount = Shapes::IntegerShape.new(name: 'ListQueriesMaxResultsCount')
    ListQueriesRequest = Shapes::StructureShape.new(name: 'ListQueriesRequest')
    ListQueriesResponse = Shapes::StructureShape.new(name: 'ListQueriesResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    ListTrailsRequest = Shapes::StructureShape.new(name: 'ListTrailsRequest')
    ListTrailsResponse = Shapes::StructureShape.new(name: 'ListTrailsResponse')
    Location = Shapes::StringShape.new(name: 'Location')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LookupAttribute = Shapes::StructureShape.new(name: 'LookupAttribute')
    LookupAttributeKey = Shapes::StringShape.new(name: 'LookupAttributeKey')
    LookupAttributeValue = Shapes::StringShape.new(name: 'LookupAttributeValue')
    LookupAttributesList = Shapes::ListShape.new(name: 'LookupAttributesList')
    LookupEventsRequest = Shapes::StructureShape.new(name: 'LookupEventsRequest')
    LookupEventsResponse = Shapes::StructureShape.new(name: 'LookupEventsResponse')
    MaxConcurrentQueriesException = Shapes::StructureShape.new(name: 'MaxConcurrentQueriesException')
    MaxQueryResults = Shapes::IntegerShape.new(name: 'MaxQueryResults')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumNumberOfTrailsExceededException = Shapes::StructureShape.new(name: 'MaximumNumberOfTrailsExceededException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoManagementAccountSLRExistsException = Shapes::StructureShape.new(name: 'NoManagementAccountSLRExistsException')
    NotOrganizationManagementAccountException = Shapes::StructureShape.new(name: 'NotOrganizationManagementAccountException')
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
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    Queries = Shapes::ListShape.new(name: 'Queries')
    Query = Shapes::StructureShape.new(name: 'Query')
    QueryAlias = Shapes::StringShape.new(name: 'QueryAlias')
    QueryIdNotFoundException = Shapes::StructureShape.new(name: 'QueryIdNotFoundException')
    QueryParameter = Shapes::StringShape.new(name: 'QueryParameter')
    QueryParameters = Shapes::ListShape.new(name: 'QueryParameters')
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
    RegisterOrganizationDelegatedAdminRequest = Shapes::StructureShape.new(name: 'RegisterOrganizationDelegatedAdminRequest')
    RegisterOrganizationDelegatedAdminResponse = Shapes::StructureShape.new(name: 'RegisterOrganizationDelegatedAdminResponse')
    RemoveTagsRequest = Shapes::StructureShape.new(name: 'RemoveTagsRequest')
    RemoveTagsResponse = Shapes::StructureShape.new(name: 'RemoveTagsResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceARNNotValidException = Shapes::StructureShape.new(name: 'ResourceARNNotValidException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    ResourcePolicyNotFoundException = Shapes::StructureShape.new(name: 'ResourcePolicyNotFoundException')
    ResourcePolicyNotValidException = Shapes::StructureShape.new(name: 'ResourcePolicyNotValidException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTypeNotSupportedException = Shapes::StructureShape.new(name: 'ResourceTypeNotSupportedException')
    RestoreEventDataStoreRequest = Shapes::StructureShape.new(name: 'RestoreEventDataStoreRequest')
    RestoreEventDataStoreResponse = Shapes::StructureShape.new(name: 'RestoreEventDataStoreResponse')
    RetentionPeriod = Shapes::IntegerShape.new(name: 'RetentionPeriod')
    S3BucketDoesNotExistException = Shapes::StructureShape.new(name: 'S3BucketDoesNotExistException')
    S3ImportSource = Shapes::StructureShape.new(name: 'S3ImportSource')
    SelectorField = Shapes::StringShape.new(name: 'SelectorField')
    SelectorName = Shapes::StringShape.new(name: 'SelectorName')
    Source = Shapes::StringShape.new(name: 'Source')
    SourceConfig = Shapes::StructureShape.new(name: 'SourceConfig')
    StartEventDataStoreIngestionRequest = Shapes::StructureShape.new(name: 'StartEventDataStoreIngestionRequest')
    StartEventDataStoreIngestionResponse = Shapes::StructureShape.new(name: 'StartEventDataStoreIngestionResponse')
    StartImportRequest = Shapes::StructureShape.new(name: 'StartImportRequest')
    StartImportResponse = Shapes::StructureShape.new(name: 'StartImportResponse')
    StartLoggingRequest = Shapes::StructureShape.new(name: 'StartLoggingRequest')
    StartLoggingResponse = Shapes::StructureShape.new(name: 'StartLoggingResponse')
    StartQueryRequest = Shapes::StructureShape.new(name: 'StartQueryRequest')
    StartQueryResponse = Shapes::StructureShape.new(name: 'StartQueryResponse')
    StopEventDataStoreIngestionRequest = Shapes::StructureShape.new(name: 'StopEventDataStoreIngestionRequest')
    StopEventDataStoreIngestionResponse = Shapes::StructureShape.new(name: 'StopEventDataStoreIngestionResponse')
    StopImportRequest = Shapes::StructureShape.new(name: 'StopImportRequest')
    StopImportResponse = Shapes::StructureShape.new(name: 'StopImportResponse')
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
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdateEventDataStoreRequest = Shapes::StructureShape.new(name: 'UpdateEventDataStoreRequest')
    UpdateEventDataStoreResponse = Shapes::StructureShape.new(name: 'UpdateEventDataStoreResponse')
    UpdateTrailRequest = Shapes::StructureShape.new(name: 'UpdateTrailRequest')
    UpdateTrailResponse = Shapes::StructureShape.new(name: 'UpdateTrailResponse')

    AccountHasOngoingImportException.struct_class = Types::AccountHasOngoingImportException

    AccountNotFoundException.struct_class = Types::AccountNotFoundException

    AccountNotRegisteredException.struct_class = Types::AccountNotRegisteredException

    AccountRegisteredException.struct_class = Types::AccountRegisteredException

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

    CancelQueryRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, deprecated: true, location_name: "EventDataStore", metadata: {"deprecatedMessage"=>"EventDataStore is no longer required by CancelQueryRequest"}))
    CancelQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "QueryId"))
    CancelQueryRequest.struct_class = Types::CancelQueryRequest

    CancelQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "QueryId"))
    CancelQueryResponse.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "QueryStatus"))
    CancelQueryResponse.struct_class = Types::CancelQueryResponse

    CannotDelegateManagementAccountException.struct_class = Types::CannotDelegateManagementAccountException

    Channel.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "ChannelArn"))
    Channel.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "Name"))
    Channel.struct_class = Types::Channel

    ChannelARNInvalidException.struct_class = Types::ChannelARNInvalidException

    ChannelAlreadyExistsException.struct_class = Types::ChannelAlreadyExistsException

    ChannelExistsForEDSException.struct_class = Types::ChannelExistsForEDSException

    ChannelMaxLimitExceededException.struct_class = Types::ChannelMaxLimitExceededException

    ChannelNotFoundException.struct_class = Types::ChannelNotFoundException

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    CloudTrailARNInvalidException.struct_class = Types::CloudTrailARNInvalidException

    CloudTrailAccessNotEnabledException.struct_class = Types::CloudTrailAccessNotEnabledException

    CloudTrailInvalidClientTokenIdException.struct_class = Types::CloudTrailInvalidClientTokenIdException

    CloudWatchLogsDeliveryUnavailableException.struct_class = Types::CloudWatchLogsDeliveryUnavailableException

    ConflictException.struct_class = Types::ConflictException

    CreateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "Name"))
    CreateChannelRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "Source"))
    CreateChannelRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, required: true, location_name: "Destinations"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "ChannelArn"))
    CreateChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "Name"))
    CreateChannelResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "Source"))
    CreateChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, location_name: "Destinations"))
    CreateChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateEventDataStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, required: true, location_name: "Name"))
    CreateEventDataStoreRequest.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    CreateEventDataStoreRequest.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    CreateEventDataStoreRequest.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    CreateEventDataStoreRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    CreateEventDataStoreRequest.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    CreateEventDataStoreRequest.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, location_name: "TagsList"))
    CreateEventDataStoreRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    CreateEventDataStoreRequest.add_member(:start_ingestion, Shapes::ShapeRef.new(shape: Boolean, location_name: "StartIngestion"))
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
    CreateEventDataStoreResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
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

    DelegatedAdminAccountLimitExceededException.struct_class = Types::DelegatedAdminAccountLimitExceededException

    DeleteChannelRequest.add_member(:channel, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "Channel"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteChannelResponse.struct_class = Types::DeleteChannelResponse

    DeleteEventDataStoreRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    DeleteEventDataStoreRequest.struct_class = Types::DeleteEventDataStoreRequest

    DeleteEventDataStoreResponse.struct_class = Types::DeleteEventDataStoreResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteTrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteTrailRequest.struct_class = Types::DeleteTrailRequest

    DeleteTrailResponse.struct_class = Types::DeleteTrailResponse

    DeregisterOrganizationDelegatedAdminRequest.add_member(:delegated_admin_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "DelegatedAdminAccountId"))
    DeregisterOrganizationDelegatedAdminRequest.struct_class = Types::DeregisterOrganizationDelegatedAdminRequest

    DeregisterOrganizationDelegatedAdminResponse.struct_class = Types::DeregisterOrganizationDelegatedAdminResponse

    DescribeQueryRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, deprecated: true, location_name: "EventDataStore", metadata: {"deprecatedMessage"=>"EventDataStore is no longer required by DescribeQueryRequest"}))
    DescribeQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, location_name: "QueryId"))
    DescribeQueryRequest.add_member(:query_alias, Shapes::ShapeRef.new(shape: QueryAlias, location_name: "QueryAlias"))
    DescribeQueryRequest.struct_class = Types::DescribeQueryRequest

    DescribeQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, location_name: "QueryId"))
    DescribeQueryResponse.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryStatement, location_name: "QueryString"))
    DescribeQueryResponse.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "QueryStatus"))
    DescribeQueryResponse.add_member(:query_statistics, Shapes::ShapeRef.new(shape: QueryStatisticsForDescribeQuery, location_name: "QueryStatistics"))
    DescribeQueryResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeQueryResponse.add_member(:delivery_s3_uri, Shapes::ShapeRef.new(shape: DeliveryS3Uri, location_name: "DeliveryS3Uri"))
    DescribeQueryResponse.add_member(:delivery_status, Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: "DeliveryStatus"))
    DescribeQueryResponse.struct_class = Types::DescribeQueryResponse

    DescribeTrailsRequest.add_member(:trail_name_list, Shapes::ShapeRef.new(shape: TrailNameList, location_name: "trailNameList"))
    DescribeTrailsRequest.add_member(:include_shadow_trails, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeShadowTrails"))
    DescribeTrailsRequest.struct_class = Types::DescribeTrailsRequest

    DescribeTrailsResponse.add_member(:trail_list, Shapes::ShapeRef.new(shape: TrailList, location_name: "trailList"))
    DescribeTrailsResponse.struct_class = Types::DescribeTrailsResponse

    Destination.add_member(:type, Shapes::ShapeRef.new(shape: DestinationType, required: true, location_name: "Type"))
    Destination.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "Location"))
    Destination.struct_class = Types::Destination

    Destinations.member = Shapes::ShapeRef.new(shape: Destination)

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
    EventDataStore.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, deprecated: true, location_name: "TerminationProtectionEnabled", metadata: {"deprecatedMessage"=>"TerminationProtectionEnabled is no longer returned by ListEventDataStores"}))
    EventDataStore.add_member(:status, Shapes::ShapeRef.new(shape: EventDataStoreStatus, deprecated: true, location_name: "Status", metadata: {"deprecatedMessage"=>"Status is no longer returned by ListEventDataStores"}))
    EventDataStore.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, deprecated: true, location_name: "AdvancedEventSelectors", metadata: {"deprecatedMessage"=>"AdvancedEventSelectors is no longer returned by ListEventDataStores"}))
    EventDataStore.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "MultiRegionEnabled", metadata: {"deprecatedMessage"=>"MultiRegionEnabled is no longer returned by ListEventDataStores"}))
    EventDataStore.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "OrganizationEnabled", metadata: {"deprecatedMessage"=>"OrganizationEnabled is no longer returned by ListEventDataStores"}))
    EventDataStore.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, deprecated: true, location_name: "RetentionPeriod", metadata: {"deprecatedMessage"=>"RetentionPeriod is no longer returned by ListEventDataStores"}))
    EventDataStore.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, deprecated: true, location_name: "CreatedTimestamp", metadata: {"deprecatedMessage"=>"CreatedTimestamp is no longer returned by ListEventDataStores"}))
    EventDataStore.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, deprecated: true, location_name: "UpdatedTimestamp", metadata: {"deprecatedMessage"=>"UpdatedTimestamp is no longer returned by ListEventDataStores"}))
    EventDataStore.struct_class = Types::EventDataStore

    EventDataStoreARNInvalidException.struct_class = Types::EventDataStoreARNInvalidException

    EventDataStoreAlreadyExistsException.struct_class = Types::EventDataStoreAlreadyExistsException

    EventDataStoreHasOngoingImportException.struct_class = Types::EventDataStoreHasOngoingImportException

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

    GetChannelRequest.add_member(:channel, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "Channel"))
    GetChannelRequest.struct_class = Types::GetChannelRequest

    GetChannelResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "ChannelArn"))
    GetChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "Name"))
    GetChannelResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "Source"))
    GetChannelResponse.add_member(:source_config, Shapes::ShapeRef.new(shape: SourceConfig, location_name: "SourceConfig"))
    GetChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, location_name: "Destinations"))
    GetChannelResponse.add_member(:ingestion_status, Shapes::ShapeRef.new(shape: IngestionStatus, location_name: "IngestionStatus"))
    GetChannelResponse.struct_class = Types::GetChannelResponse

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
    GetEventDataStoreResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    GetEventDataStoreResponse.struct_class = Types::GetEventDataStoreResponse

    GetEventSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    GetEventSelectorsRequest.struct_class = Types::GetEventSelectorsRequest

    GetEventSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    GetEventSelectorsResponse.add_member(:event_selectors, Shapes::ShapeRef.new(shape: EventSelectors, location_name: "EventSelectors"))
    GetEventSelectorsResponse.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    GetEventSelectorsResponse.struct_class = Types::GetEventSelectorsResponse

    GetImportRequest.add_member(:import_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "ImportId"))
    GetImportRequest.struct_class = Types::GetImportRequest

    GetImportResponse.add_member(:import_id, Shapes::ShapeRef.new(shape: UUID, location_name: "ImportId"))
    GetImportResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: ImportDestinations, location_name: "Destinations"))
    GetImportResponse.add_member(:import_source, Shapes::ShapeRef.new(shape: ImportSource, location_name: "ImportSource"))
    GetImportResponse.add_member(:start_event_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartEventTime"))
    GetImportResponse.add_member(:end_event_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndEventTime"))
    GetImportResponse.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "ImportStatus"))
    GetImportResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    GetImportResponse.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    GetImportResponse.add_member(:import_statistics, Shapes::ShapeRef.new(shape: ImportStatistics, location_name: "ImportStatistics"))
    GetImportResponse.struct_class = Types::GetImportResponse

    GetInsightSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    GetInsightSelectorsRequest.struct_class = Types::GetInsightSelectorsRequest

    GetInsightSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    GetInsightSelectorsResponse.add_member(:insight_selectors, Shapes::ShapeRef.new(shape: InsightSelectors, location_name: "InsightSelectors"))
    GetInsightSelectorsResponse.struct_class = Types::GetInsightSelectorsResponse

    GetQueryResultsRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, deprecated: true, location_name: "EventDataStore", metadata: {"deprecatedMessage"=>"EventDataStore is no longer required by GetQueryResultsRequest"}))
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

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    GetResourcePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "ResourcePolicy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

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

    ImportDestinations.member = Shapes::ShapeRef.new(shape: EventDataStoreArn)

    ImportFailureList.member = Shapes::ShapeRef.new(shape: ImportFailureListItem)

    ImportFailureListItem.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "Location"))
    ImportFailureListItem.add_member(:status, Shapes::ShapeRef.new(shape: ImportFailureStatus, location_name: "Status"))
    ImportFailureListItem.add_member(:error_type, Shapes::ShapeRef.new(shape: String, location_name: "ErrorType"))
    ImportFailureListItem.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    ImportFailureListItem.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdatedTime"))
    ImportFailureListItem.struct_class = Types::ImportFailureListItem

    ImportNotFoundException.struct_class = Types::ImportNotFoundException

    ImportSource.add_member(:s3, Shapes::ShapeRef.new(shape: S3ImportSource, required: true, location_name: "S3"))
    ImportSource.struct_class = Types::ImportSource

    ImportStatistics.add_member(:prefixes_found, Shapes::ShapeRef.new(shape: Long, location_name: "PrefixesFound"))
    ImportStatistics.add_member(:prefixes_completed, Shapes::ShapeRef.new(shape: Long, location_name: "PrefixesCompleted"))
    ImportStatistics.add_member(:files_completed, Shapes::ShapeRef.new(shape: Long, location_name: "FilesCompleted"))
    ImportStatistics.add_member(:events_completed, Shapes::ShapeRef.new(shape: Long, location_name: "EventsCompleted"))
    ImportStatistics.add_member(:failed_entries, Shapes::ShapeRef.new(shape: Long, location_name: "FailedEntries"))
    ImportStatistics.struct_class = Types::ImportStatistics

    ImportsList.member = Shapes::ShapeRef.new(shape: ImportsListItem)

    ImportsListItem.add_member(:import_id, Shapes::ShapeRef.new(shape: UUID, location_name: "ImportId"))
    ImportsListItem.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "ImportStatus"))
    ImportsListItem.add_member(:destinations, Shapes::ShapeRef.new(shape: ImportDestinations, location_name: "Destinations"))
    ImportsListItem.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    ImportsListItem.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    ImportsListItem.struct_class = Types::ImportsListItem

    InactiveEventDataStoreException.struct_class = Types::InactiveEventDataStoreException

    InactiveQueryException.struct_class = Types::InactiveQueryException

    IngestionStatus.add_member(:latest_ingestion_success_time, Shapes::ShapeRef.new(shape: Date, location_name: "LatestIngestionSuccessTime"))
    IngestionStatus.add_member(:latest_ingestion_success_event_id, Shapes::ShapeRef.new(shape: UUID, location_name: "LatestIngestionSuccessEventID"))
    IngestionStatus.add_member(:latest_ingestion_error_code, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "LatestIngestionErrorCode"))
    IngestionStatus.add_member(:latest_ingestion_attempt_time, Shapes::ShapeRef.new(shape: Date, location_name: "LatestIngestionAttemptTime"))
    IngestionStatus.add_member(:latest_ingestion_attempt_event_id, Shapes::ShapeRef.new(shape: UUID, location_name: "LatestIngestionAttemptEventID"))
    IngestionStatus.struct_class = Types::IngestionStatus

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

    InvalidEventDataStoreCategoryException.struct_class = Types::InvalidEventDataStoreCategoryException

    InvalidEventDataStoreStatusException.struct_class = Types::InvalidEventDataStoreStatusException

    InvalidEventSelectorsException.struct_class = Types::InvalidEventSelectorsException

    InvalidHomeRegionException.struct_class = Types::InvalidHomeRegionException

    InvalidImportSourceException.struct_class = Types::InvalidImportSourceException

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

    InvalidSourceException.struct_class = Types::InvalidSourceException

    InvalidTagParameterException.struct_class = Types::InvalidTagParameterException

    InvalidTimeRangeException.struct_class = Types::InvalidTimeRangeException

    InvalidTokenException.struct_class = Types::InvalidTokenException

    InvalidTrailNameException.struct_class = Types::InvalidTrailNameException

    KmsException.struct_class = Types::KmsException

    KmsKeyDisabledException.struct_class = Types::KmsKeyDisabledException

    KmsKeyNotFoundException.struct_class = Types::KmsKeyNotFoundException

    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChannelsMaxResultsCount, location_name: "MaxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "Channels"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListEventDataStoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEventDataStoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEventDataStoresMaxResultsCount, location_name: "MaxResults"))
    ListEventDataStoresRequest.struct_class = Types::ListEventDataStoresRequest

    ListEventDataStoresResponse.add_member(:event_data_stores, Shapes::ShapeRef.new(shape: EventDataStores, location_name: "EventDataStores"))
    ListEventDataStoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListEventDataStoresResponse.struct_class = Types::ListEventDataStoresResponse

    ListImportFailuresRequest.add_member(:import_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "ImportId"))
    ListImportFailuresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListImportFailuresMaxResultsCount, location_name: "MaxResults"))
    ListImportFailuresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListImportFailuresRequest.struct_class = Types::ListImportFailuresRequest

    ListImportFailuresResponse.add_member(:failures, Shapes::ShapeRef.new(shape: ImportFailureList, location_name: "Failures"))
    ListImportFailuresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListImportFailuresResponse.struct_class = Types::ListImportFailuresResponse

    ListImportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListImportsMaxResultsCount, location_name: "MaxResults"))
    ListImportsRequest.add_member(:destination, Shapes::ShapeRef.new(shape: EventDataStoreArn, location_name: "Destination"))
    ListImportsRequest.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "ImportStatus"))
    ListImportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListImportsRequest.struct_class = Types::ListImportsRequest

    ListImportsResponse.add_member(:imports, Shapes::ShapeRef.new(shape: ImportsList, location_name: "Imports"))
    ListImportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListImportsResponse.struct_class = Types::ListImportsResponse

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
    LookupAttribute.add_member(:attribute_value, Shapes::ShapeRef.new(shape: LookupAttributeValue, required: true, location_name: "AttributeValue"))
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

    NoManagementAccountSLRExistsException.struct_class = Types::NoManagementAccountSLRExistsException

    NotOrganizationManagementAccountException.struct_class = Types::NotOrganizationManagementAccountException

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

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    PutResourcePolicyRequest.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "ResourcePolicy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    PutResourcePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "ResourcePolicy"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    Queries.member = Shapes::ShapeRef.new(shape: Query)

    Query.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, location_name: "QueryId"))
    Query.add_member(:query_status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "QueryStatus"))
    Query.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    Query.struct_class = Types::Query

    QueryIdNotFoundException.struct_class = Types::QueryIdNotFoundException

    QueryParameters.member = Shapes::ShapeRef.new(shape: QueryParameter)

    QueryResultColumn.key = Shapes::ShapeRef.new(shape: QueryResultKey)
    QueryResultColumn.value = Shapes::ShapeRef.new(shape: QueryResultValue)

    QueryResultRow.member = Shapes::ShapeRef.new(shape: QueryResultColumn)

    QueryResultRows.member = Shapes::ShapeRef.new(shape: QueryResultRow)

    QueryStatistics.add_member(:results_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ResultsCount"))
    QueryStatistics.add_member(:total_results_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalResultsCount"))
    QueryStatistics.add_member(:bytes_scanned, Shapes::ShapeRef.new(shape: Long, location_name: "BytesScanned"))
    QueryStatistics.struct_class = Types::QueryStatistics

    QueryStatisticsForDescribeQuery.add_member(:events_matched, Shapes::ShapeRef.new(shape: Long, location_name: "EventsMatched"))
    QueryStatisticsForDescribeQuery.add_member(:events_scanned, Shapes::ShapeRef.new(shape: Long, location_name: "EventsScanned"))
    QueryStatisticsForDescribeQuery.add_member(:bytes_scanned, Shapes::ShapeRef.new(shape: Long, location_name: "BytesScanned"))
    QueryStatisticsForDescribeQuery.add_member(:execution_time_in_millis, Shapes::ShapeRef.new(shape: Integer, location_name: "ExecutionTimeInMillis"))
    QueryStatisticsForDescribeQuery.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    QueryStatisticsForDescribeQuery.struct_class = Types::QueryStatisticsForDescribeQuery

    RegisterOrganizationDelegatedAdminRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "MemberAccountId"))
    RegisterOrganizationDelegatedAdminRequest.struct_class = Types::RegisterOrganizationDelegatedAdminRequest

    RegisterOrganizationDelegatedAdminResponse.struct_class = Types::RegisterOrganizationDelegatedAdminResponse

    RemoveTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    RemoveTagsRequest.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, required: true, location_name: "TagsList"))
    RemoveTagsRequest.struct_class = Types::RemoveTagsRequest

    RemoveTagsResponse.struct_class = Types::RemoveTagsResponse

    Resource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    Resource.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "ResourceName"))
    Resource.struct_class = Types::Resource

    ResourceARNNotValidException.struct_class = Types::ResourceARNNotValidException

    ResourceIdList.member = Shapes::ShapeRef.new(shape: String)

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePolicyNotFoundException.struct_class = Types::ResourcePolicyNotFoundException

    ResourcePolicyNotValidException.struct_class = Types::ResourcePolicyNotValidException

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
    RestoreEventDataStoreResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
    RestoreEventDataStoreResponse.struct_class = Types::RestoreEventDataStoreResponse

    S3BucketDoesNotExistException.struct_class = Types::S3BucketDoesNotExistException

    S3ImportSource.add_member(:s3_location_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3LocationUri"))
    S3ImportSource.add_member(:s3_bucket_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketRegion"))
    S3ImportSource.add_member(:s3_bucket_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketAccessRoleArn"))
    S3ImportSource.struct_class = Types::S3ImportSource

    SourceConfig.add_member(:apply_to_all_regions, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyToAllRegions"))
    SourceConfig.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    SourceConfig.struct_class = Types::SourceConfig

    StartEventDataStoreIngestionRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    StartEventDataStoreIngestionRequest.struct_class = Types::StartEventDataStoreIngestionRequest

    StartEventDataStoreIngestionResponse.struct_class = Types::StartEventDataStoreIngestionResponse

    StartImportRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: ImportDestinations, location_name: "Destinations"))
    StartImportRequest.add_member(:import_source, Shapes::ShapeRef.new(shape: ImportSource, location_name: "ImportSource"))
    StartImportRequest.add_member(:start_event_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartEventTime"))
    StartImportRequest.add_member(:end_event_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndEventTime"))
    StartImportRequest.add_member(:import_id, Shapes::ShapeRef.new(shape: UUID, location_name: "ImportId"))
    StartImportRequest.struct_class = Types::StartImportRequest

    StartImportResponse.add_member(:import_id, Shapes::ShapeRef.new(shape: UUID, location_name: "ImportId"))
    StartImportResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: ImportDestinations, location_name: "Destinations"))
    StartImportResponse.add_member(:import_source, Shapes::ShapeRef.new(shape: ImportSource, location_name: "ImportSource"))
    StartImportResponse.add_member(:start_event_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartEventTime"))
    StartImportResponse.add_member(:end_event_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndEventTime"))
    StartImportResponse.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "ImportStatus"))
    StartImportResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    StartImportResponse.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    StartImportResponse.struct_class = Types::StartImportResponse

    StartLoggingRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartLoggingRequest.struct_class = Types::StartLoggingRequest

    StartLoggingResponse.struct_class = Types::StartLoggingResponse

    StartQueryRequest.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryStatement, location_name: "QueryStatement"))
    StartQueryRequest.add_member(:delivery_s3_uri, Shapes::ShapeRef.new(shape: DeliveryS3Uri, location_name: "DeliveryS3Uri"))
    StartQueryRequest.add_member(:query_alias, Shapes::ShapeRef.new(shape: QueryAlias, location_name: "QueryAlias"))
    StartQueryRequest.add_member(:query_parameters, Shapes::ShapeRef.new(shape: QueryParameters, location_name: "QueryParameters"))
    StartQueryRequest.struct_class = Types::StartQueryRequest

    StartQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: UUID, location_name: "QueryId"))
    StartQueryResponse.struct_class = Types::StartQueryResponse

    StopEventDataStoreIngestionRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    StopEventDataStoreIngestionRequest.struct_class = Types::StopEventDataStoreIngestionRequest

    StopEventDataStoreIngestionResponse.struct_class = Types::StopEventDataStoreIngestionResponse

    StopImportRequest.add_member(:import_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "ImportId"))
    StopImportRequest.struct_class = Types::StopImportRequest

    StopImportResponse.add_member(:import_id, Shapes::ShapeRef.new(shape: UUID, location_name: "ImportId"))
    StopImportResponse.add_member(:import_source, Shapes::ShapeRef.new(shape: ImportSource, location_name: "ImportSource"))
    StopImportResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: ImportDestinations, location_name: "Destinations"))
    StopImportResponse.add_member(:import_status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "ImportStatus"))
    StopImportResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedTimestamp"))
    StopImportResponse.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "UpdatedTimestamp"))
    StopImportResponse.add_member(:start_event_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartEventTime"))
    StopImportResponse.add_member(:end_event_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndEventTime"))
    StopImportResponse.add_member(:import_statistics, Shapes::ShapeRef.new(shape: ImportStatistics, location_name: "ImportStatistics"))
    StopImportResponse.struct_class = Types::StopImportResponse

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

    UpdateChannelRequest.add_member(:channel, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "Channel"))
    UpdateChannelRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, location_name: "Destinations"))
    UpdateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "Name"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "ChannelArn"))
    UpdateChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "Name"))
    UpdateChannelResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "Source"))
    UpdateChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, location_name: "Destinations"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    UpdateEventDataStoreRequest.add_member(:event_data_store, Shapes::ShapeRef.new(shape: EventDataStoreArn, required: true, location_name: "EventDataStore"))
    UpdateEventDataStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventDataStoreName, location_name: "Name"))
    UpdateEventDataStoreRequest.add_member(:advanced_event_selectors, Shapes::ShapeRef.new(shape: AdvancedEventSelectors, location_name: "AdvancedEventSelectors"))
    UpdateEventDataStoreRequest.add_member(:multi_region_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiRegionEnabled"))
    UpdateEventDataStoreRequest.add_member(:organization_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "OrganizationEnabled"))
    UpdateEventDataStoreRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "RetentionPeriod"))
    UpdateEventDataStoreRequest.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: TerminationProtectionEnabled, location_name: "TerminationProtectionEnabled"))
    UpdateEventDataStoreRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
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
    UpdateEventDataStoreResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EventDataStoreKmsKeyId, location_name: "KmsKeyId"))
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
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: TagsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ChannelMaxLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSourceException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TagsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:create_event_data_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventDataStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventDataStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventDataStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreMaxLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKmsKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: TagsLimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailInvalidClientTokenIdException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreHasOngoingImportException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelExistsForEDSException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceARNNotValidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:delete_trail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrailRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:deregister_organization_delegated_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterOrganizationDelegatedAdmin"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterOrganizationDelegatedAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterOrganizationDelegatedAdminResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationManagementAccountException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
      end)

      api.add_operation(:get_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
      end)

      api.add_operation(:get_event_selectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventSelectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEventSelectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventSelectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
      end)

      api.add_operation(:get_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetImportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ImportNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:get_insight_selectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsightSelectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInsightSelectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInsightSelectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InsightNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceARNNotValidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:get_trail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTrailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
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
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_import_failures, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImportFailures"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListImportFailuresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportFailuresResponse)
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

      api.add_operation(:list_imports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImports"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListImportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInsightSelectorsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceARNNotValidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyNotValidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:register_organization_delegated_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterOrganizationDelegatedAdmin"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterOrganizationDelegatedAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterOrganizationDelegatedAdminResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccountRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: CannotDelegateManagementAccountException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DelegatedAdminAccountLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationManagementAccountException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
      end)

      api.add_operation(:start_event_data_store_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEventDataStoreIngestion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartEventDataStoreIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartEventDataStoreIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:start_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartImportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccountHasOngoingImportException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidImportSourceException)
        o.errors << Shapes::ShapeRef.new(shape: ImportNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:start_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartLogging"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartLoggingRequest)
        o.output = Shapes::ShapeRef.new(shape: StartLoggingResponse)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TrailNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrailNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3PrefixException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3BucketNameException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: S3BucketDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
      end)

      api.add_operation(:stop_event_data_store_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopEventDataStoreIngestion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopEventDataStoreIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopEventDataStoreIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:stop_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopImport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopImportRequest)
        o.output = Shapes::ShapeRef.new(shape: StopImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ImportNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
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
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidHomeRegionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ChannelARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventDataStoreCategoryException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:update_event_data_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventDataStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventDataStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventDataStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventSelectorsException)
        o.errors << Shapes::ShapeRef.new(shape: EventDataStoreHasOngoingImportException)
        o.errors << Shapes::ShapeRef.new(shape: InactiveEventDataStoreException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientEncryptionPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKmsKeyIdException)
        o.errors << Shapes::ShapeRef.new(shape: KmsKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KmsException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDependencyServiceAccessPermissionException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationsNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailARNInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: NoManagementAccountSLRExistsException)
        o.errors << Shapes::ShapeRef.new(shape: CloudTrailInvalidClientTokenIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)
    end

  end
end
