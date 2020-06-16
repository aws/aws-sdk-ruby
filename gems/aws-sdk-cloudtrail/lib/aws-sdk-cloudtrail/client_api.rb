# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudTrail
  # @api private
  module ClientApi

    include Seahorse::Model

    AddTagsRequest = Shapes::StructureShape.new(name: 'AddTagsRequest')
    AddTagsResponse = Shapes::StructureShape.new(name: 'AddTagsResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ByteBuffer = Shapes::BlobShape.new(name: 'ByteBuffer')
    CloudTrailARNInvalidException = Shapes::StructureShape.new(name: 'CloudTrailARNInvalidException')
    CloudTrailAccessNotEnabledException = Shapes::StructureShape.new(name: 'CloudTrailAccessNotEnabledException')
    CloudWatchLogsDeliveryUnavailableException = Shapes::StructureShape.new(name: 'CloudWatchLogsDeliveryUnavailableException')
    CreateTrailRequest = Shapes::StructureShape.new(name: 'CreateTrailRequest')
    CreateTrailResponse = Shapes::StructureShape.new(name: 'CreateTrailResponse')
    DataResource = Shapes::StructureShape.new(name: 'DataResource')
    DataResourceValues = Shapes::ListShape.new(name: 'DataResourceValues')
    DataResources = Shapes::ListShape.new(name: 'DataResources')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteTrailRequest = Shapes::StructureShape.new(name: 'DeleteTrailRequest')
    DeleteTrailResponse = Shapes::StructureShape.new(name: 'DeleteTrailResponse')
    DescribeTrailsRequest = Shapes::StructureShape.new(name: 'DescribeTrailsRequest')
    DescribeTrailsResponse = Shapes::StructureShape.new(name: 'DescribeTrailsResponse')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategory = Shapes::StringShape.new(name: 'EventCategory')
    EventSelector = Shapes::StructureShape.new(name: 'EventSelector')
    EventSelectors = Shapes::ListShape.new(name: 'EventSelectors')
    EventsList = Shapes::ListShape.new(name: 'EventsList')
    ExcludeManagementEventSources = Shapes::ListShape.new(name: 'ExcludeManagementEventSources')
    GetEventSelectorsRequest = Shapes::StructureShape.new(name: 'GetEventSelectorsRequest')
    GetEventSelectorsResponse = Shapes::StructureShape.new(name: 'GetEventSelectorsResponse')
    GetInsightSelectorsRequest = Shapes::StructureShape.new(name: 'GetInsightSelectorsRequest')
    GetInsightSelectorsResponse = Shapes::StructureShape.new(name: 'GetInsightSelectorsResponse')
    GetTrailRequest = Shapes::StructureShape.new(name: 'GetTrailRequest')
    GetTrailResponse = Shapes::StructureShape.new(name: 'GetTrailResponse')
    GetTrailStatusRequest = Shapes::StructureShape.new(name: 'GetTrailStatusRequest')
    GetTrailStatusResponse = Shapes::StructureShape.new(name: 'GetTrailStatusResponse')
    InsightNotEnabledException = Shapes::StructureShape.new(name: 'InsightNotEnabledException')
    InsightSelector = Shapes::StructureShape.new(name: 'InsightSelector')
    InsightSelectors = Shapes::ListShape.new(name: 'InsightSelectors')
    InsightType = Shapes::StringShape.new(name: 'InsightType')
    InsufficientDependencyServiceAccessPermissionException = Shapes::StructureShape.new(name: 'InsufficientDependencyServiceAccessPermissionException')
    InsufficientEncryptionPolicyException = Shapes::StructureShape.new(name: 'InsufficientEncryptionPolicyException')
    InsufficientS3BucketPolicyException = Shapes::StructureShape.new(name: 'InsufficientS3BucketPolicyException')
    InsufficientSnsTopicPolicyException = Shapes::StructureShape.new(name: 'InsufficientSnsTopicPolicyException')
    InvalidCloudWatchLogsLogGroupArnException = Shapes::StructureShape.new(name: 'InvalidCloudWatchLogsLogGroupArnException')
    InvalidCloudWatchLogsRoleArnException = Shapes::StructureShape.new(name: 'InvalidCloudWatchLogsRoleArnException')
    InvalidEventCategoryException = Shapes::StructureShape.new(name: 'InvalidEventCategoryException')
    InvalidEventSelectorsException = Shapes::StructureShape.new(name: 'InvalidEventSelectorsException')
    InvalidHomeRegionException = Shapes::StructureShape.new(name: 'InvalidHomeRegionException')
    InvalidInsightSelectorsException = Shapes::StructureShape.new(name: 'InvalidInsightSelectorsException')
    InvalidKmsKeyIdException = Shapes::StructureShape.new(name: 'InvalidKmsKeyIdException')
    InvalidLookupAttributesException = Shapes::StructureShape.new(name: 'InvalidLookupAttributesException')
    InvalidMaxResultsException = Shapes::StructureShape.new(name: 'InvalidMaxResultsException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
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
    ListPublicKeysRequest = Shapes::StructureShape.new(name: 'ListPublicKeysRequest')
    ListPublicKeysResponse = Shapes::StructureShape.new(name: 'ListPublicKeysResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    ListTrailsRequest = Shapes::StructureShape.new(name: 'ListTrailsRequest')
    ListTrailsResponse = Shapes::StructureShape.new(name: 'ListTrailsResponse')
    LookupAttribute = Shapes::StructureShape.new(name: 'LookupAttribute')
    LookupAttributeKey = Shapes::StringShape.new(name: 'LookupAttributeKey')
    LookupAttributesList = Shapes::ListShape.new(name: 'LookupAttributesList')
    LookupEventsRequest = Shapes::StructureShape.new(name: 'LookupEventsRequest')
    LookupEventsResponse = Shapes::StructureShape.new(name: 'LookupEventsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumNumberOfTrailsExceededException = Shapes::StructureShape.new(name: 'MaximumNumberOfTrailsExceededException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotOrganizationMasterAccountException = Shapes::StructureShape.new(name: 'NotOrganizationMasterAccountException')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    OrganizationNotInAllFeaturesModeException = Shapes::StructureShape.new(name: 'OrganizationNotInAllFeaturesModeException')
    OrganizationsNotInUseException = Shapes::StructureShape.new(name: 'OrganizationsNotInUseException')
    PublicKey = Shapes::StructureShape.new(name: 'PublicKey')
    PublicKeyList = Shapes::ListShape.new(name: 'PublicKeyList')
    PutEventSelectorsRequest = Shapes::StructureShape.new(name: 'PutEventSelectorsRequest')
    PutEventSelectorsResponse = Shapes::StructureShape.new(name: 'PutEventSelectorsResponse')
    PutInsightSelectorsRequest = Shapes::StructureShape.new(name: 'PutInsightSelectorsRequest')
    PutInsightSelectorsResponse = Shapes::StructureShape.new(name: 'PutInsightSelectorsResponse')
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
    S3BucketDoesNotExistException = Shapes::StructureShape.new(name: 'S3BucketDoesNotExistException')
    StartLoggingRequest = Shapes::StructureShape.new(name: 'StartLoggingRequest')
    StartLoggingResponse = Shapes::StructureShape.new(name: 'StartLoggingResponse')
    StopLoggingRequest = Shapes::StructureShape.new(name: 'StopLoggingRequest')
    StopLoggingResponse = Shapes::StructureShape.new(name: 'StopLoggingResponse')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagsLimitExceededException = Shapes::StructureShape.new(name: 'TagsLimitExceededException')
    TagsList = Shapes::ListShape.new(name: 'TagsList')
    Trail = Shapes::StructureShape.new(name: 'Trail')
    TrailAlreadyExistsException = Shapes::StructureShape.new(name: 'TrailAlreadyExistsException')
    TrailInfo = Shapes::StructureShape.new(name: 'TrailInfo')
    TrailList = Shapes::ListShape.new(name: 'TrailList')
    TrailNameList = Shapes::ListShape.new(name: 'TrailNameList')
    TrailNotFoundException = Shapes::StructureShape.new(name: 'TrailNotFoundException')
    TrailNotProvidedException = Shapes::StructureShape.new(name: 'TrailNotProvidedException')
    Trails = Shapes::ListShape.new(name: 'Trails')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UpdateTrailRequest = Shapes::StructureShape.new(name: 'UpdateTrailRequest')
    UpdateTrailResponse = Shapes::StructureShape.new(name: 'UpdateTrailResponse')

    AddTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    AddTagsRequest.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, location_name: "TagsList"))
    AddTagsRequest.struct_class = Types::AddTagsRequest

    AddTagsResponse.struct_class = Types::AddTagsResponse

    CloudTrailARNInvalidException.struct_class = Types::CloudTrailARNInvalidException

    CloudTrailAccessNotEnabledException.struct_class = Types::CloudTrailAccessNotEnabledException

    CloudWatchLogsDeliveryUnavailableException.struct_class = Types::CloudWatchLogsDeliveryUnavailableException

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

    DeleteTrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    DeleteTrailRequest.struct_class = Types::DeleteTrailRequest

    DeleteTrailResponse.struct_class = Types::DeleteTrailResponse

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

    EventSelector.add_member(:read_write_type, Shapes::ShapeRef.new(shape: ReadWriteType, location_name: "ReadWriteType"))
    EventSelector.add_member(:include_management_events, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeManagementEvents"))
    EventSelector.add_member(:data_resources, Shapes::ShapeRef.new(shape: DataResources, location_name: "DataResources"))
    EventSelector.add_member(:exclude_management_event_sources, Shapes::ShapeRef.new(shape: ExcludeManagementEventSources, location_name: "ExcludeManagementEventSources"))
    EventSelector.struct_class = Types::EventSelector

    EventSelectors.member = Shapes::ShapeRef.new(shape: EventSelector)

    EventsList.member = Shapes::ShapeRef.new(shape: Event)

    ExcludeManagementEventSources.member = Shapes::ShapeRef.new(shape: String)

    GetEventSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    GetEventSelectorsRequest.struct_class = Types::GetEventSelectorsRequest

    GetEventSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    GetEventSelectorsResponse.add_member(:event_selectors, Shapes::ShapeRef.new(shape: EventSelectors, location_name: "EventSelectors"))
    GetEventSelectorsResponse.struct_class = Types::GetEventSelectorsResponse

    GetInsightSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    GetInsightSelectorsRequest.struct_class = Types::GetInsightSelectorsRequest

    GetInsightSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    GetInsightSelectorsResponse.add_member(:insight_selectors, Shapes::ShapeRef.new(shape: InsightSelectors, location_name: "InsightSelectors"))
    GetInsightSelectorsResponse.struct_class = Types::GetInsightSelectorsResponse

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

    InvalidEventCategoryException.struct_class = Types::InvalidEventCategoryException

    InvalidEventSelectorsException.struct_class = Types::InvalidEventSelectorsException

    InvalidHomeRegionException.struct_class = Types::InvalidHomeRegionException

    InvalidInsightSelectorsException.struct_class = Types::InvalidInsightSelectorsException

    InvalidKmsKeyIdException.struct_class = Types::InvalidKmsKeyIdException

    InvalidLookupAttributesException.struct_class = Types::InvalidLookupAttributesException

    InvalidMaxResultsException.struct_class = Types::InvalidMaxResultsException

    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterCombinationException.struct_class = Types::InvalidParameterCombinationException

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

    ListPublicKeysRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartTime"))
    ListPublicKeysRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndTime"))
    ListPublicKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPublicKeysRequest.struct_class = Types::ListPublicKeysRequest

    ListPublicKeysResponse.add_member(:public_key_list, Shapes::ShapeRef.new(shape: PublicKeyList, location_name: "PublicKeyList"))
    ListPublicKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPublicKeysResponse.struct_class = Types::ListPublicKeysResponse

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

    MaximumNumberOfTrailsExceededException.struct_class = Types::MaximumNumberOfTrailsExceededException

    NotOrganizationMasterAccountException.struct_class = Types::NotOrganizationMasterAccountException

    OperationNotPermittedException.struct_class = Types::OperationNotPermittedException

    OrganizationNotInAllFeaturesModeException.struct_class = Types::OrganizationNotInAllFeaturesModeException

    OrganizationsNotInUseException.struct_class = Types::OrganizationsNotInUseException

    PublicKey.add_member(:value, Shapes::ShapeRef.new(shape: ByteBuffer, location_name: "Value"))
    PublicKey.add_member(:validity_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "ValidityStartTime"))
    PublicKey.add_member(:validity_end_time, Shapes::ShapeRef.new(shape: Date, location_name: "ValidityEndTime"))
    PublicKey.add_member(:fingerprint, Shapes::ShapeRef.new(shape: String, location_name: "Fingerprint"))
    PublicKey.struct_class = Types::PublicKey

    PublicKeyList.member = Shapes::ShapeRef.new(shape: PublicKey)

    PutEventSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    PutEventSelectorsRequest.add_member(:event_selectors, Shapes::ShapeRef.new(shape: EventSelectors, required: true, location_name: "EventSelectors"))
    PutEventSelectorsRequest.struct_class = Types::PutEventSelectorsRequest

    PutEventSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    PutEventSelectorsResponse.add_member(:event_selectors, Shapes::ShapeRef.new(shape: EventSelectors, location_name: "EventSelectors"))
    PutEventSelectorsResponse.struct_class = Types::PutEventSelectorsResponse

    PutInsightSelectorsRequest.add_member(:trail_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TrailName"))
    PutInsightSelectorsRequest.add_member(:insight_selectors, Shapes::ShapeRef.new(shape: InsightSelectors, required: true, location_name: "InsightSelectors"))
    PutInsightSelectorsRequest.struct_class = Types::PutInsightSelectorsRequest

    PutInsightSelectorsResponse.add_member(:trail_arn, Shapes::ShapeRef.new(shape: String, location_name: "TrailARN"))
    PutInsightSelectorsResponse.add_member(:insight_selectors, Shapes::ShapeRef.new(shape: InsightSelectors, location_name: "InsightSelectors"))
    PutInsightSelectorsResponse.struct_class = Types::PutInsightSelectorsResponse

    RemoveTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    RemoveTagsRequest.add_member(:tags_list, Shapes::ShapeRef.new(shape: TagsList, location_name: "TagsList"))
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

    S3BucketDoesNotExistException.struct_class = Types::S3BucketDoesNotExistException

    StartLoggingRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StartLoggingRequest.struct_class = Types::StartLoggingRequest

    StartLoggingResponse.struct_class = Types::StartLoggingResponse

    StopLoggingRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    StopLoggingRequest.struct_class = Types::StopLoggingRequest

    StopLoggingResponse.struct_class = Types::StopLoggingResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: NotOrganizationMasterAccountException)
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
      end)
    end

  end
end
