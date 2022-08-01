# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Shield
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedForDependencyException = Shapes::StructureShape.new(name: 'AccessDeniedForDependencyException')
    ApplicationLayerAutomaticResponseConfiguration = Shapes::StructureShape.new(name: 'ApplicationLayerAutomaticResponseConfiguration')
    ApplicationLayerAutomaticResponseStatus = Shapes::StringShape.new(name: 'ApplicationLayerAutomaticResponseStatus')
    AssociateDRTLogBucketRequest = Shapes::StructureShape.new(name: 'AssociateDRTLogBucketRequest')
    AssociateDRTLogBucketResponse = Shapes::StructureShape.new(name: 'AssociateDRTLogBucketResponse')
    AssociateDRTRoleRequest = Shapes::StructureShape.new(name: 'AssociateDRTRoleRequest')
    AssociateDRTRoleResponse = Shapes::StructureShape.new(name: 'AssociateDRTRoleResponse')
    AssociateHealthCheckRequest = Shapes::StructureShape.new(name: 'AssociateHealthCheckRequest')
    AssociateHealthCheckResponse = Shapes::StructureShape.new(name: 'AssociateHealthCheckResponse')
    AssociateProactiveEngagementDetailsRequest = Shapes::StructureShape.new(name: 'AssociateProactiveEngagementDetailsRequest')
    AssociateProactiveEngagementDetailsResponse = Shapes::StructureShape.new(name: 'AssociateProactiveEngagementDetailsResponse')
    AttackDetail = Shapes::StructureShape.new(name: 'AttackDetail')
    AttackId = Shapes::StringShape.new(name: 'AttackId')
    AttackLayer = Shapes::StringShape.new(name: 'AttackLayer')
    AttackProperties = Shapes::ListShape.new(name: 'AttackProperties')
    AttackProperty = Shapes::StructureShape.new(name: 'AttackProperty')
    AttackPropertyIdentifier = Shapes::StringShape.new(name: 'AttackPropertyIdentifier')
    AttackStatisticsDataItem = Shapes::StructureShape.new(name: 'AttackStatisticsDataItem')
    AttackStatisticsDataList = Shapes::ListShape.new(name: 'AttackStatisticsDataList')
    AttackSummaries = Shapes::ListShape.new(name: 'AttackSummaries')
    AttackSummary = Shapes::StructureShape.new(name: 'AttackSummary')
    AttackTimestamp = Shapes::TimestampShape.new(name: 'AttackTimestamp')
    AttackVectorDescription = Shapes::StructureShape.new(name: 'AttackVectorDescription')
    AttackVectorDescriptionList = Shapes::ListShape.new(name: 'AttackVectorDescriptionList')
    AttackVolume = Shapes::StructureShape.new(name: 'AttackVolume')
    AttackVolumeStatistics = Shapes::StructureShape.new(name: 'AttackVolumeStatistics')
    AutoRenew = Shapes::StringShape.new(name: 'AutoRenew')
    BlockAction = Shapes::StructureShape.new(name: 'BlockAction')
    ContactNotes = Shapes::StringShape.new(name: 'ContactNotes')
    Contributor = Shapes::StructureShape.new(name: 'Contributor')
    CountAction = Shapes::StructureShape.new(name: 'CountAction')
    CreateProtectionGroupRequest = Shapes::StructureShape.new(name: 'CreateProtectionGroupRequest')
    CreateProtectionGroupResponse = Shapes::StructureShape.new(name: 'CreateProtectionGroupResponse')
    CreateProtectionRequest = Shapes::StructureShape.new(name: 'CreateProtectionRequest')
    CreateProtectionResponse = Shapes::StructureShape.new(name: 'CreateProtectionResponse')
    CreateSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateSubscriptionRequest')
    CreateSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateSubscriptionResponse')
    DeleteProtectionGroupRequest = Shapes::StructureShape.new(name: 'DeleteProtectionGroupRequest')
    DeleteProtectionGroupResponse = Shapes::StructureShape.new(name: 'DeleteProtectionGroupResponse')
    DeleteProtectionRequest = Shapes::StructureShape.new(name: 'DeleteProtectionRequest')
    DeleteProtectionResponse = Shapes::StructureShape.new(name: 'DeleteProtectionResponse')
    DeleteSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteSubscriptionRequest')
    DeleteSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteSubscriptionResponse')
    DescribeAttackRequest = Shapes::StructureShape.new(name: 'DescribeAttackRequest')
    DescribeAttackResponse = Shapes::StructureShape.new(name: 'DescribeAttackResponse')
    DescribeAttackStatisticsRequest = Shapes::StructureShape.new(name: 'DescribeAttackStatisticsRequest')
    DescribeAttackStatisticsResponse = Shapes::StructureShape.new(name: 'DescribeAttackStatisticsResponse')
    DescribeDRTAccessRequest = Shapes::StructureShape.new(name: 'DescribeDRTAccessRequest')
    DescribeDRTAccessResponse = Shapes::StructureShape.new(name: 'DescribeDRTAccessResponse')
    DescribeEmergencyContactSettingsRequest = Shapes::StructureShape.new(name: 'DescribeEmergencyContactSettingsRequest')
    DescribeEmergencyContactSettingsResponse = Shapes::StructureShape.new(name: 'DescribeEmergencyContactSettingsResponse')
    DescribeProtectionGroupRequest = Shapes::StructureShape.new(name: 'DescribeProtectionGroupRequest')
    DescribeProtectionGroupResponse = Shapes::StructureShape.new(name: 'DescribeProtectionGroupResponse')
    DescribeProtectionRequest = Shapes::StructureShape.new(name: 'DescribeProtectionRequest')
    DescribeProtectionResponse = Shapes::StructureShape.new(name: 'DescribeProtectionResponse')
    DescribeSubscriptionRequest = Shapes::StructureShape.new(name: 'DescribeSubscriptionRequest')
    DescribeSubscriptionResponse = Shapes::StructureShape.new(name: 'DescribeSubscriptionResponse')
    DisableApplicationLayerAutomaticResponseRequest = Shapes::StructureShape.new(name: 'DisableApplicationLayerAutomaticResponseRequest')
    DisableApplicationLayerAutomaticResponseResponse = Shapes::StructureShape.new(name: 'DisableApplicationLayerAutomaticResponseResponse')
    DisableProactiveEngagementRequest = Shapes::StructureShape.new(name: 'DisableProactiveEngagementRequest')
    DisableProactiveEngagementResponse = Shapes::StructureShape.new(name: 'DisableProactiveEngagementResponse')
    DisassociateDRTLogBucketRequest = Shapes::StructureShape.new(name: 'DisassociateDRTLogBucketRequest')
    DisassociateDRTLogBucketResponse = Shapes::StructureShape.new(name: 'DisassociateDRTLogBucketResponse')
    DisassociateDRTRoleRequest = Shapes::StructureShape.new(name: 'DisassociateDRTRoleRequest')
    DisassociateDRTRoleResponse = Shapes::StructureShape.new(name: 'DisassociateDRTRoleResponse')
    DisassociateHealthCheckRequest = Shapes::StructureShape.new(name: 'DisassociateHealthCheckRequest')
    DisassociateHealthCheckResponse = Shapes::StructureShape.new(name: 'DisassociateHealthCheckResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    DurationInSeconds = Shapes::IntegerShape.new(name: 'DurationInSeconds')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmergencyContact = Shapes::StructureShape.new(name: 'EmergencyContact')
    EmergencyContactList = Shapes::ListShape.new(name: 'EmergencyContactList')
    EnableApplicationLayerAutomaticResponseRequest = Shapes::StructureShape.new(name: 'EnableApplicationLayerAutomaticResponseRequest')
    EnableApplicationLayerAutomaticResponseResponse = Shapes::StructureShape.new(name: 'EnableApplicationLayerAutomaticResponseResponse')
    EnableProactiveEngagementRequest = Shapes::StructureShape.new(name: 'EnableProactiveEngagementRequest')
    EnableProactiveEngagementResponse = Shapes::StructureShape.new(name: 'EnableProactiveEngagementResponse')
    GetSubscriptionStateRequest = Shapes::StructureShape.new(name: 'GetSubscriptionStateRequest')
    GetSubscriptionStateResponse = Shapes::StructureShape.new(name: 'GetSubscriptionStateResponse')
    HealthCheckArn = Shapes::StringShape.new(name: 'HealthCheckArn')
    HealthCheckId = Shapes::StringShape.new(name: 'HealthCheckId')
    HealthCheckIds = Shapes::ListShape.new(name: 'HealthCheckIds')
    InclusionProtectionFilters = Shapes::StructureShape.new(name: 'InclusionProtectionFilters')
    InclusionProtectionGroupFilters = Shapes::StructureShape.new(name: 'InclusionProtectionGroupFilters')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidResourceException = Shapes::StructureShape.new(name: 'InvalidResourceException')
    Limit = Shapes::StructureShape.new(name: 'Limit')
    LimitNumber = Shapes::IntegerShape.new(name: 'LimitNumber')
    LimitType = Shapes::StringShape.new(name: 'LimitType')
    Limits = Shapes::ListShape.new(name: 'Limits')
    LimitsExceededException = Shapes::StructureShape.new(name: 'LimitsExceededException')
    ListAttacksRequest = Shapes::StructureShape.new(name: 'ListAttacksRequest')
    ListAttacksResponse = Shapes::StructureShape.new(name: 'ListAttacksResponse')
    ListProtectionGroupsRequest = Shapes::StructureShape.new(name: 'ListProtectionGroupsRequest')
    ListProtectionGroupsResponse = Shapes::StructureShape.new(name: 'ListProtectionGroupsResponse')
    ListProtectionsRequest = Shapes::StructureShape.new(name: 'ListProtectionsRequest')
    ListProtectionsResponse = Shapes::StructureShape.new(name: 'ListProtectionsResponse')
    ListResourcesInProtectionGroupRequest = Shapes::StructureShape.new(name: 'ListResourcesInProtectionGroupRequest')
    ListResourcesInProtectionGroupResponse = Shapes::StructureShape.new(name: 'ListResourcesInProtectionGroupResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LockedSubscriptionException = Shapes::StructureShape.new(name: 'LockedSubscriptionException')
    LogBucket = Shapes::StringShape.new(name: 'LogBucket')
    LogBucketList = Shapes::ListShape.new(name: 'LogBucketList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Mitigation = Shapes::StructureShape.new(name: 'Mitigation')
    MitigationList = Shapes::ListShape.new(name: 'MitigationList')
    NoAssociatedRoleException = Shapes::StructureShape.new(name: 'NoAssociatedRoleException')
    OptimisticLockException = Shapes::StructureShape.new(name: 'OptimisticLockException')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    ProactiveEngagementStatus = Shapes::StringShape.new(name: 'ProactiveEngagementStatus')
    ProtectedResourceType = Shapes::StringShape.new(name: 'ProtectedResourceType')
    ProtectedResourceTypeFilters = Shapes::ListShape.new(name: 'ProtectedResourceTypeFilters')
    Protection = Shapes::StructureShape.new(name: 'Protection')
    ProtectionGroup = Shapes::StructureShape.new(name: 'ProtectionGroup')
    ProtectionGroupAggregation = Shapes::StringShape.new(name: 'ProtectionGroupAggregation')
    ProtectionGroupAggregationFilters = Shapes::ListShape.new(name: 'ProtectionGroupAggregationFilters')
    ProtectionGroupArbitraryPatternLimits = Shapes::StructureShape.new(name: 'ProtectionGroupArbitraryPatternLimits')
    ProtectionGroupId = Shapes::StringShape.new(name: 'ProtectionGroupId')
    ProtectionGroupIdFilters = Shapes::ListShape.new(name: 'ProtectionGroupIdFilters')
    ProtectionGroupLimits = Shapes::StructureShape.new(name: 'ProtectionGroupLimits')
    ProtectionGroupMembers = Shapes::ListShape.new(name: 'ProtectionGroupMembers')
    ProtectionGroupPattern = Shapes::StringShape.new(name: 'ProtectionGroupPattern')
    ProtectionGroupPatternFilters = Shapes::ListShape.new(name: 'ProtectionGroupPatternFilters')
    ProtectionGroupPatternTypeLimits = Shapes::StructureShape.new(name: 'ProtectionGroupPatternTypeLimits')
    ProtectionGroups = Shapes::ListShape.new(name: 'ProtectionGroups')
    ProtectionId = Shapes::StringShape.new(name: 'ProtectionId')
    ProtectionLimits = Shapes::StructureShape.new(name: 'ProtectionLimits')
    ProtectionName = Shapes::StringShape.new(name: 'ProtectionName')
    ProtectionNameFilters = Shapes::ListShape.new(name: 'ProtectionNameFilters')
    Protections = Shapes::ListShape.new(name: 'Protections')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnFilterList = Shapes::ListShape.new(name: 'ResourceArnFilterList')
    ResourceArnFilters = Shapes::ListShape.new(name: 'ResourceArnFilters')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseAction = Shapes::StructureShape.new(name: 'ResponseAction')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    String = Shapes::StringShape.new(name: 'String')
    SubResourceSummary = Shapes::StructureShape.new(name: 'SubResourceSummary')
    SubResourceSummaryList = Shapes::ListShape.new(name: 'SubResourceSummaryList')
    SubResourceType = Shapes::StringShape.new(name: 'SubResourceType')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionLimits = Shapes::StructureShape.new(name: 'SubscriptionLimits')
    SubscriptionState = Shapes::StringShape.new(name: 'SubscriptionState')
    SummarizedAttackVector = Shapes::StructureShape.new(name: 'SummarizedAttackVector')
    SummarizedAttackVectorList = Shapes::ListShape.new(name: 'SummarizedAttackVectorList')
    SummarizedCounter = Shapes::StructureShape.new(name: 'SummarizedCounter')
    SummarizedCounterList = Shapes::ListShape.new(name: 'SummarizedCounterList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    TopContributors = Shapes::ListShape.new(name: 'TopContributors')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationLayerAutomaticResponseRequest = Shapes::StructureShape.new(name: 'UpdateApplicationLayerAutomaticResponseRequest')
    UpdateApplicationLayerAutomaticResponseResponse = Shapes::StructureShape.new(name: 'UpdateApplicationLayerAutomaticResponseResponse')
    UpdateEmergencyContactSettingsRequest = Shapes::StructureShape.new(name: 'UpdateEmergencyContactSettingsRequest')
    UpdateEmergencyContactSettingsResponse = Shapes::StructureShape.new(name: 'UpdateEmergencyContactSettingsResponse')
    UpdateProtectionGroupRequest = Shapes::StructureShape.new(name: 'UpdateProtectionGroupRequest')
    UpdateProtectionGroupResponse = Shapes::StructureShape.new(name: 'UpdateProtectionGroupResponse')
    UpdateSubscriptionRequest = Shapes::StructureShape.new(name: 'UpdateSubscriptionRequest')
    UpdateSubscriptionResponse = Shapes::StructureShape.new(name: 'UpdateSubscriptionResponse')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessDeniedForDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    AccessDeniedForDependencyException.struct_class = Types::AccessDeniedForDependencyException

    ApplicationLayerAutomaticResponseConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationLayerAutomaticResponseStatus, required: true, location_name: "Status"))
    ApplicationLayerAutomaticResponseConfiguration.add_member(:action, Shapes::ShapeRef.new(shape: ResponseAction, required: true, location_name: "Action"))
    ApplicationLayerAutomaticResponseConfiguration.struct_class = Types::ApplicationLayerAutomaticResponseConfiguration

    AssociateDRTLogBucketRequest.add_member(:log_bucket, Shapes::ShapeRef.new(shape: LogBucket, required: true, location_name: "LogBucket"))
    AssociateDRTLogBucketRequest.struct_class = Types::AssociateDRTLogBucketRequest

    AssociateDRTLogBucketResponse.struct_class = Types::AssociateDRTLogBucketResponse

    AssociateDRTRoleRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    AssociateDRTRoleRequest.struct_class = Types::AssociateDRTRoleRequest

    AssociateDRTRoleResponse.struct_class = Types::AssociateDRTRoleResponse

    AssociateHealthCheckRequest.add_member(:protection_id, Shapes::ShapeRef.new(shape: ProtectionId, required: true, location_name: "ProtectionId"))
    AssociateHealthCheckRequest.add_member(:health_check_arn, Shapes::ShapeRef.new(shape: HealthCheckArn, required: true, location_name: "HealthCheckArn"))
    AssociateHealthCheckRequest.struct_class = Types::AssociateHealthCheckRequest

    AssociateHealthCheckResponse.struct_class = Types::AssociateHealthCheckResponse

    AssociateProactiveEngagementDetailsRequest.add_member(:emergency_contact_list, Shapes::ShapeRef.new(shape: EmergencyContactList, required: true, location_name: "EmergencyContactList"))
    AssociateProactiveEngagementDetailsRequest.struct_class = Types::AssociateProactiveEngagementDetailsRequest

    AssociateProactiveEngagementDetailsResponse.struct_class = Types::AssociateProactiveEngagementDetailsResponse

    AttackDetail.add_member(:attack_id, Shapes::ShapeRef.new(shape: AttackId, location_name: "AttackId"))
    AttackDetail.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    AttackDetail.add_member(:sub_resources, Shapes::ShapeRef.new(shape: SubResourceSummaryList, location_name: "SubResources"))
    AttackDetail.add_member(:start_time, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "StartTime"))
    AttackDetail.add_member(:end_time, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "EndTime"))
    AttackDetail.add_member(:attack_counters, Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: "AttackCounters"))
    AttackDetail.add_member(:attack_properties, Shapes::ShapeRef.new(shape: AttackProperties, location_name: "AttackProperties"))
    AttackDetail.add_member(:mitigations, Shapes::ShapeRef.new(shape: MitigationList, location_name: "Mitigations"))
    AttackDetail.struct_class = Types::AttackDetail

    AttackProperties.member = Shapes::ShapeRef.new(shape: AttackProperty)

    AttackProperty.add_member(:attack_layer, Shapes::ShapeRef.new(shape: AttackLayer, location_name: "AttackLayer"))
    AttackProperty.add_member(:attack_property_identifier, Shapes::ShapeRef.new(shape: AttackPropertyIdentifier, location_name: "AttackPropertyIdentifier"))
    AttackProperty.add_member(:top_contributors, Shapes::ShapeRef.new(shape: TopContributors, location_name: "TopContributors"))
    AttackProperty.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    AttackProperty.add_member(:total, Shapes::ShapeRef.new(shape: Long, location_name: "Total"))
    AttackProperty.struct_class = Types::AttackProperty

    AttackStatisticsDataItem.add_member(:attack_volume, Shapes::ShapeRef.new(shape: AttackVolume, location_name: "AttackVolume"))
    AttackStatisticsDataItem.add_member(:attack_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "AttackCount"))
    AttackStatisticsDataItem.struct_class = Types::AttackStatisticsDataItem

    AttackStatisticsDataList.member = Shapes::ShapeRef.new(shape: AttackStatisticsDataItem)

    AttackSummaries.member = Shapes::ShapeRef.new(shape: AttackSummary)

    AttackSummary.add_member(:attack_id, Shapes::ShapeRef.new(shape: String, location_name: "AttackId"))
    AttackSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    AttackSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "StartTime"))
    AttackSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: "EndTime"))
    AttackSummary.add_member(:attack_vectors, Shapes::ShapeRef.new(shape: AttackVectorDescriptionList, location_name: "AttackVectors"))
    AttackSummary.struct_class = Types::AttackSummary

    AttackVectorDescription.add_member(:vector_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VectorType"))
    AttackVectorDescription.struct_class = Types::AttackVectorDescription

    AttackVectorDescriptionList.member = Shapes::ShapeRef.new(shape: AttackVectorDescription)

    AttackVolume.add_member(:bits_per_second, Shapes::ShapeRef.new(shape: AttackVolumeStatistics, location_name: "BitsPerSecond"))
    AttackVolume.add_member(:packets_per_second, Shapes::ShapeRef.new(shape: AttackVolumeStatistics, location_name: "PacketsPerSecond"))
    AttackVolume.add_member(:requests_per_second, Shapes::ShapeRef.new(shape: AttackVolumeStatistics, location_name: "RequestsPerSecond"))
    AttackVolume.struct_class = Types::AttackVolume

    AttackVolumeStatistics.add_member(:max, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Max"))
    AttackVolumeStatistics.struct_class = Types::AttackVolumeStatistics

    BlockAction.struct_class = Types::BlockAction

    Contributor.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Contributor.add_member(:value, Shapes::ShapeRef.new(shape: Long, location_name: "Value"))
    Contributor.struct_class = Types::Contributor

    CountAction.struct_class = Types::CountAction

    CreateProtectionGroupRequest.add_member(:protection_group_id, Shapes::ShapeRef.new(shape: ProtectionGroupId, required: true, location_name: "ProtectionGroupId"))
    CreateProtectionGroupRequest.add_member(:aggregation, Shapes::ShapeRef.new(shape: ProtectionGroupAggregation, required: true, location_name: "Aggregation"))
    CreateProtectionGroupRequest.add_member(:pattern, Shapes::ShapeRef.new(shape: ProtectionGroupPattern, required: true, location_name: "Pattern"))
    CreateProtectionGroupRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ProtectedResourceType, location_name: "ResourceType"))
    CreateProtectionGroupRequest.add_member(:members, Shapes::ShapeRef.new(shape: ProtectionGroupMembers, location_name: "Members"))
    CreateProtectionGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProtectionGroupRequest.struct_class = Types::CreateProtectionGroupRequest

    CreateProtectionGroupResponse.struct_class = Types::CreateProtectionGroupResponse

    CreateProtectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProtectionName, required: true, location_name: "Name"))
    CreateProtectionRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    CreateProtectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateProtectionRequest.struct_class = Types::CreateProtectionRequest

    CreateProtectionResponse.add_member(:protection_id, Shapes::ShapeRef.new(shape: ProtectionId, location_name: "ProtectionId"))
    CreateProtectionResponse.struct_class = Types::CreateProtectionResponse

    CreateSubscriptionRequest.struct_class = Types::CreateSubscriptionRequest

    CreateSubscriptionResponse.struct_class = Types::CreateSubscriptionResponse

    DeleteProtectionGroupRequest.add_member(:protection_group_id, Shapes::ShapeRef.new(shape: ProtectionGroupId, required: true, location_name: "ProtectionGroupId"))
    DeleteProtectionGroupRequest.struct_class = Types::DeleteProtectionGroupRequest

    DeleteProtectionGroupResponse.struct_class = Types::DeleteProtectionGroupResponse

    DeleteProtectionRequest.add_member(:protection_id, Shapes::ShapeRef.new(shape: ProtectionId, required: true, location_name: "ProtectionId"))
    DeleteProtectionRequest.struct_class = Types::DeleteProtectionRequest

    DeleteProtectionResponse.struct_class = Types::DeleteProtectionResponse

    DeleteSubscriptionRequest.struct_class = Types::DeleteSubscriptionRequest

    DeleteSubscriptionResponse.struct_class = Types::DeleteSubscriptionResponse

    DescribeAttackRequest.add_member(:attack_id, Shapes::ShapeRef.new(shape: AttackId, required: true, location_name: "AttackId"))
    DescribeAttackRequest.struct_class = Types::DescribeAttackRequest

    DescribeAttackResponse.add_member(:attack, Shapes::ShapeRef.new(shape: AttackDetail, location_name: "Attack"))
    DescribeAttackResponse.struct_class = Types::DescribeAttackResponse

    DescribeAttackStatisticsRequest.struct_class = Types::DescribeAttackStatisticsRequest

    DescribeAttackStatisticsResponse.add_member(:time_range, Shapes::ShapeRef.new(shape: TimeRange, required: true, location_name: "TimeRange"))
    DescribeAttackStatisticsResponse.add_member(:data_items, Shapes::ShapeRef.new(shape: AttackStatisticsDataList, required: true, location_name: "DataItems"))
    DescribeAttackStatisticsResponse.struct_class = Types::DescribeAttackStatisticsResponse

    DescribeDRTAccessRequest.struct_class = Types::DescribeDRTAccessRequest

    DescribeDRTAccessResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeDRTAccessResponse.add_member(:log_bucket_list, Shapes::ShapeRef.new(shape: LogBucketList, location_name: "LogBucketList"))
    DescribeDRTAccessResponse.struct_class = Types::DescribeDRTAccessResponse

    DescribeEmergencyContactSettingsRequest.struct_class = Types::DescribeEmergencyContactSettingsRequest

    DescribeEmergencyContactSettingsResponse.add_member(:emergency_contact_list, Shapes::ShapeRef.new(shape: EmergencyContactList, location_name: "EmergencyContactList"))
    DescribeEmergencyContactSettingsResponse.struct_class = Types::DescribeEmergencyContactSettingsResponse

    DescribeProtectionGroupRequest.add_member(:protection_group_id, Shapes::ShapeRef.new(shape: ProtectionGroupId, required: true, location_name: "ProtectionGroupId"))
    DescribeProtectionGroupRequest.struct_class = Types::DescribeProtectionGroupRequest

    DescribeProtectionGroupResponse.add_member(:protection_group, Shapes::ShapeRef.new(shape: ProtectionGroup, required: true, location_name: "ProtectionGroup"))
    DescribeProtectionGroupResponse.struct_class = Types::DescribeProtectionGroupResponse

    DescribeProtectionRequest.add_member(:protection_id, Shapes::ShapeRef.new(shape: ProtectionId, location_name: "ProtectionId"))
    DescribeProtectionRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    DescribeProtectionRequest.struct_class = Types::DescribeProtectionRequest

    DescribeProtectionResponse.add_member(:protection, Shapes::ShapeRef.new(shape: Protection, location_name: "Protection"))
    DescribeProtectionResponse.struct_class = Types::DescribeProtectionResponse

    DescribeSubscriptionRequest.struct_class = Types::DescribeSubscriptionRequest

    DescribeSubscriptionResponse.add_member(:subscription, Shapes::ShapeRef.new(shape: Subscription, location_name: "Subscription"))
    DescribeSubscriptionResponse.struct_class = Types::DescribeSubscriptionResponse

    DisableApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    DisableApplicationLayerAutomaticResponseRequest.struct_class = Types::DisableApplicationLayerAutomaticResponseRequest

    DisableApplicationLayerAutomaticResponseResponse.struct_class = Types::DisableApplicationLayerAutomaticResponseResponse

    DisableProactiveEngagementRequest.struct_class = Types::DisableProactiveEngagementRequest

    DisableProactiveEngagementResponse.struct_class = Types::DisableProactiveEngagementResponse

    DisassociateDRTLogBucketRequest.add_member(:log_bucket, Shapes::ShapeRef.new(shape: LogBucket, required: true, location_name: "LogBucket"))
    DisassociateDRTLogBucketRequest.struct_class = Types::DisassociateDRTLogBucketRequest

    DisassociateDRTLogBucketResponse.struct_class = Types::DisassociateDRTLogBucketResponse

    DisassociateDRTRoleRequest.struct_class = Types::DisassociateDRTRoleRequest

    DisassociateDRTRoleResponse.struct_class = Types::DisassociateDRTRoleResponse

    DisassociateHealthCheckRequest.add_member(:protection_id, Shapes::ShapeRef.new(shape: ProtectionId, required: true, location_name: "ProtectionId"))
    DisassociateHealthCheckRequest.add_member(:health_check_arn, Shapes::ShapeRef.new(shape: HealthCheckArn, required: true, location_name: "HealthCheckArn"))
    DisassociateHealthCheckRequest.struct_class = Types::DisassociateHealthCheckRequest

    DisassociateHealthCheckResponse.struct_class = Types::DisassociateHealthCheckResponse

    EmergencyContact.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    EmergencyContact.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    EmergencyContact.add_member(:contact_notes, Shapes::ShapeRef.new(shape: ContactNotes, location_name: "ContactNotes"))
    EmergencyContact.struct_class = Types::EmergencyContact

    EmergencyContactList.member = Shapes::ShapeRef.new(shape: EmergencyContact)

    EnableApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    EnableApplicationLayerAutomaticResponseRequest.add_member(:action, Shapes::ShapeRef.new(shape: ResponseAction, required: true, location_name: "Action"))
    EnableApplicationLayerAutomaticResponseRequest.struct_class = Types::EnableApplicationLayerAutomaticResponseRequest

    EnableApplicationLayerAutomaticResponseResponse.struct_class = Types::EnableApplicationLayerAutomaticResponseResponse

    EnableProactiveEngagementRequest.struct_class = Types::EnableProactiveEngagementRequest

    EnableProactiveEngagementResponse.struct_class = Types::EnableProactiveEngagementResponse

    GetSubscriptionStateRequest.struct_class = Types::GetSubscriptionStateRequest

    GetSubscriptionStateResponse.add_member(:subscription_state, Shapes::ShapeRef.new(shape: SubscriptionState, required: true, location_name: "SubscriptionState"))
    GetSubscriptionStateResponse.struct_class = Types::GetSubscriptionStateResponse

    HealthCheckIds.member = Shapes::ShapeRef.new(shape: HealthCheckId)

    InclusionProtectionFilters.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnFilters, location_name: "ResourceArns"))
    InclusionProtectionFilters.add_member(:protection_names, Shapes::ShapeRef.new(shape: ProtectionNameFilters, location_name: "ProtectionNames"))
    InclusionProtectionFilters.add_member(:resource_types, Shapes::ShapeRef.new(shape: ProtectedResourceTypeFilters, location_name: "ResourceTypes"))
    InclusionProtectionFilters.struct_class = Types::InclusionProtectionFilters

    InclusionProtectionGroupFilters.add_member(:protection_group_ids, Shapes::ShapeRef.new(shape: ProtectionGroupIdFilters, location_name: "ProtectionGroupIds"))
    InclusionProtectionGroupFilters.add_member(:patterns, Shapes::ShapeRef.new(shape: ProtectionGroupPatternFilters, location_name: "Patterns"))
    InclusionProtectionGroupFilters.add_member(:resource_types, Shapes::ShapeRef.new(shape: ProtectedResourceTypeFilters, location_name: "ResourceTypes"))
    InclusionProtectionGroupFilters.add_member(:aggregations, Shapes::ShapeRef.new(shape: ProtectionGroupAggregationFilters, location_name: "Aggregations"))
    InclusionProtectionGroupFilters.struct_class = Types::InclusionProtectionGroupFilters

    InternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalErrorException.struct_class = Types::InternalErrorException

    InvalidOperationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidOperationException.struct_class = Types::InvalidOperationException

    InvalidPaginationTokenException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidParameterException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    InvalidParameterException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fields"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidResourceException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidResourceException.struct_class = Types::InvalidResourceException

    Limit.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Limit.add_member(:max, Shapes::ShapeRef.new(shape: Long, location_name: "Max"))
    Limit.struct_class = Types::Limit

    Limits.member = Shapes::ShapeRef.new(shape: Limit)

    LimitsExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitsExceededException.add_member(:type, Shapes::ShapeRef.new(shape: LimitType, location_name: "Type"))
    LimitsExceededException.add_member(:limit, Shapes::ShapeRef.new(shape: LimitNumber, location_name: "Limit"))
    LimitsExceededException.struct_class = Types::LimitsExceededException

    ListAttacksRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnFilterList, location_name: "ResourceArns"))
    ListAttacksRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeRange, location_name: "StartTime"))
    ListAttacksRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeRange, location_name: "EndTime"))
    ListAttacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAttacksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAttacksRequest.struct_class = Types::ListAttacksRequest

    ListAttacksResponse.add_member(:attack_summaries, Shapes::ShapeRef.new(shape: AttackSummaries, location_name: "AttackSummaries"))
    ListAttacksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListAttacksResponse.struct_class = Types::ListAttacksResponse

    ListProtectionGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListProtectionGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListProtectionGroupsRequest.add_member(:inclusion_filters, Shapes::ShapeRef.new(shape: InclusionProtectionGroupFilters, location_name: "InclusionFilters"))
    ListProtectionGroupsRequest.struct_class = Types::ListProtectionGroupsRequest

    ListProtectionGroupsResponse.add_member(:protection_groups, Shapes::ShapeRef.new(shape: ProtectionGroups, required: true, location_name: "ProtectionGroups"))
    ListProtectionGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListProtectionGroupsResponse.struct_class = Types::ListProtectionGroupsResponse

    ListProtectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListProtectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListProtectionsRequest.add_member(:inclusion_filters, Shapes::ShapeRef.new(shape: InclusionProtectionFilters, location_name: "InclusionFilters"))
    ListProtectionsRequest.struct_class = Types::ListProtectionsRequest

    ListProtectionsResponse.add_member(:protections, Shapes::ShapeRef.new(shape: Protections, location_name: "Protections"))
    ListProtectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListProtectionsResponse.struct_class = Types::ListProtectionsResponse

    ListResourcesInProtectionGroupRequest.add_member(:protection_group_id, Shapes::ShapeRef.new(shape: ProtectionGroupId, required: true, location_name: "ProtectionGroupId"))
    ListResourcesInProtectionGroupRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesInProtectionGroupRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResourcesInProtectionGroupRequest.struct_class = Types::ListResourcesInProtectionGroupRequest

    ListResourcesInProtectionGroupResponse.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, required: true, location_name: "ResourceArns"))
    ListResourcesInProtectionGroupResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcesInProtectionGroupResponse.struct_class = Types::ListResourcesInProtectionGroupResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LockedSubscriptionException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LockedSubscriptionException.struct_class = Types::LockedSubscriptionException

    LogBucketList.member = Shapes::ShapeRef.new(shape: LogBucket)

    Mitigation.add_member(:mitigation_name, Shapes::ShapeRef.new(shape: String, location_name: "MitigationName"))
    Mitigation.struct_class = Types::Mitigation

    MitigationList.member = Shapes::ShapeRef.new(shape: Mitigation)

    NoAssociatedRoleException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    NoAssociatedRoleException.struct_class = Types::NoAssociatedRoleException

    OptimisticLockException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    OptimisticLockException.struct_class = Types::OptimisticLockException

    ProtectedResourceTypeFilters.member = Shapes::ShapeRef.new(shape: ProtectedResourceType)

    Protection.add_member(:id, Shapes::ShapeRef.new(shape: ProtectionId, location_name: "Id"))
    Protection.add_member(:name, Shapes::ShapeRef.new(shape: ProtectionName, location_name: "Name"))
    Protection.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    Protection.add_member(:health_check_ids, Shapes::ShapeRef.new(shape: HealthCheckIds, location_name: "HealthCheckIds"))
    Protection.add_member(:protection_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ProtectionArn"))
    Protection.add_member(:application_layer_automatic_response_configuration, Shapes::ShapeRef.new(shape: ApplicationLayerAutomaticResponseConfiguration, location_name: "ApplicationLayerAutomaticResponseConfiguration"))
    Protection.struct_class = Types::Protection

    ProtectionGroup.add_member(:protection_group_id, Shapes::ShapeRef.new(shape: ProtectionGroupId, required: true, location_name: "ProtectionGroupId"))
    ProtectionGroup.add_member(:aggregation, Shapes::ShapeRef.new(shape: ProtectionGroupAggregation, required: true, location_name: "Aggregation"))
    ProtectionGroup.add_member(:pattern, Shapes::ShapeRef.new(shape: ProtectionGroupPattern, required: true, location_name: "Pattern"))
    ProtectionGroup.add_member(:resource_type, Shapes::ShapeRef.new(shape: ProtectedResourceType, location_name: "ResourceType"))
    ProtectionGroup.add_member(:members, Shapes::ShapeRef.new(shape: ProtectionGroupMembers, required: true, location_name: "Members"))
    ProtectionGroup.add_member(:protection_group_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ProtectionGroupArn"))
    ProtectionGroup.struct_class = Types::ProtectionGroup

    ProtectionGroupAggregationFilters.member = Shapes::ShapeRef.new(shape: ProtectionGroupAggregation)

    ProtectionGroupArbitraryPatternLimits.add_member(:max_members, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "MaxMembers"))
    ProtectionGroupArbitraryPatternLimits.struct_class = Types::ProtectionGroupArbitraryPatternLimits

    ProtectionGroupIdFilters.member = Shapes::ShapeRef.new(shape: ProtectionGroupId)

    ProtectionGroupLimits.add_member(:max_protection_groups, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "MaxProtectionGroups"))
    ProtectionGroupLimits.add_member(:pattern_type_limits, Shapes::ShapeRef.new(shape: ProtectionGroupPatternTypeLimits, required: true, location_name: "PatternTypeLimits"))
    ProtectionGroupLimits.struct_class = Types::ProtectionGroupLimits

    ProtectionGroupMembers.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ProtectionGroupPatternFilters.member = Shapes::ShapeRef.new(shape: ProtectionGroupPattern)

    ProtectionGroupPatternTypeLimits.add_member(:arbitrary_pattern_limits, Shapes::ShapeRef.new(shape: ProtectionGroupArbitraryPatternLimits, required: true, location_name: "ArbitraryPatternLimits"))
    ProtectionGroupPatternTypeLimits.struct_class = Types::ProtectionGroupPatternTypeLimits

    ProtectionGroups.member = Shapes::ShapeRef.new(shape: ProtectionGroup)

    ProtectionLimits.add_member(:protected_resource_type_limits, Shapes::ShapeRef.new(shape: Limits, required: true, location_name: "ProtectedResourceTypeLimits"))
    ProtectionLimits.struct_class = Types::ProtectionLimits

    ProtectionNameFilters.member = Shapes::ShapeRef.new(shape: ProtectionName)

    Protections.member = Shapes::ShapeRef.new(shape: Protection)

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceAlreadyExistsException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceArnFilterList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceArnFilters.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceArnList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseAction.add_member(:block, Shapes::ShapeRef.new(shape: BlockAction, location_name: "Block"))
    ResponseAction.add_member(:count, Shapes::ShapeRef.new(shape: CountAction, location_name: "Count"))
    ResponseAction.struct_class = Types::ResponseAction

    SubResourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: SubResourceType, location_name: "Type"))
    SubResourceSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    SubResourceSummary.add_member(:attack_vectors, Shapes::ShapeRef.new(shape: SummarizedAttackVectorList, location_name: "AttackVectors"))
    SubResourceSummary.add_member(:counters, Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: "Counters"))
    SubResourceSummary.struct_class = Types::SubResourceSummary

    SubResourceSummaryList.member = Shapes::ShapeRef.new(shape: SubResourceSummary)

    Subscription.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    Subscription.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    Subscription.add_member(:time_commitment_in_seconds, Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: "TimeCommitmentInSeconds"))
    Subscription.add_member(:auto_renew, Shapes::ShapeRef.new(shape: AutoRenew, location_name: "AutoRenew"))
    Subscription.add_member(:limits, Shapes::ShapeRef.new(shape: Limits, location_name: "Limits"))
    Subscription.add_member(:proactive_engagement_status, Shapes::ShapeRef.new(shape: ProactiveEngagementStatus, location_name: "ProactiveEngagementStatus"))
    Subscription.add_member(:subscription_limits, Shapes::ShapeRef.new(shape: SubscriptionLimits, required: true, location_name: "SubscriptionLimits"))
    Subscription.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SubscriptionArn"))
    Subscription.struct_class = Types::Subscription

    SubscriptionLimits.add_member(:protection_limits, Shapes::ShapeRef.new(shape: ProtectionLimits, required: true, location_name: "ProtectionLimits"))
    SubscriptionLimits.add_member(:protection_group_limits, Shapes::ShapeRef.new(shape: ProtectionGroupLimits, required: true, location_name: "ProtectionGroupLimits"))
    SubscriptionLimits.struct_class = Types::SubscriptionLimits

    SummarizedAttackVector.add_member(:vector_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VectorType"))
    SummarizedAttackVector.add_member(:vector_counters, Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: "VectorCounters"))
    SummarizedAttackVector.struct_class = Types::SummarizedAttackVector

    SummarizedAttackVectorList.member = Shapes::ShapeRef.new(shape: SummarizedAttackVector)

    SummarizedCounter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SummarizedCounter.add_member(:max, Shapes::ShapeRef.new(shape: Double, location_name: "Max"))
    SummarizedCounter.add_member(:average, Shapes::ShapeRef.new(shape: Double, location_name: "Average"))
    SummarizedCounter.add_member(:sum, Shapes::ShapeRef.new(shape: Double, location_name: "Sum"))
    SummarizedCounter.add_member(:n, Shapes::ShapeRef.new(shape: Integer, location_name: "N"))
    SummarizedCounter.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "Unit"))
    SummarizedCounter.struct_class = Types::SummarizedCounter

    SummarizedCounterList.member = Shapes::ShapeRef.new(shape: SummarizedCounter)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TimeRange.add_member(:from_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "FromInclusive"))
    TimeRange.add_member(:to_exclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ToExclusive"))
    TimeRange.struct_class = Types::TimeRange

    TopContributors.member = Shapes::ShapeRef.new(shape: Contributor)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UpdateApplicationLayerAutomaticResponseRequest.add_member(:action, Shapes::ShapeRef.new(shape: ResponseAction, required: true, location_name: "Action"))
    UpdateApplicationLayerAutomaticResponseRequest.struct_class = Types::UpdateApplicationLayerAutomaticResponseRequest

    UpdateApplicationLayerAutomaticResponseResponse.struct_class = Types::UpdateApplicationLayerAutomaticResponseResponse

    UpdateEmergencyContactSettingsRequest.add_member(:emergency_contact_list, Shapes::ShapeRef.new(shape: EmergencyContactList, location_name: "EmergencyContactList"))
    UpdateEmergencyContactSettingsRequest.struct_class = Types::UpdateEmergencyContactSettingsRequest

    UpdateEmergencyContactSettingsResponse.struct_class = Types::UpdateEmergencyContactSettingsResponse

    UpdateProtectionGroupRequest.add_member(:protection_group_id, Shapes::ShapeRef.new(shape: ProtectionGroupId, required: true, location_name: "ProtectionGroupId"))
    UpdateProtectionGroupRequest.add_member(:aggregation, Shapes::ShapeRef.new(shape: ProtectionGroupAggregation, required: true, location_name: "Aggregation"))
    UpdateProtectionGroupRequest.add_member(:pattern, Shapes::ShapeRef.new(shape: ProtectionGroupPattern, required: true, location_name: "Pattern"))
    UpdateProtectionGroupRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ProtectedResourceType, location_name: "ResourceType"))
    UpdateProtectionGroupRequest.add_member(:members, Shapes::ShapeRef.new(shape: ProtectionGroupMembers, location_name: "Members"))
    UpdateProtectionGroupRequest.struct_class = Types::UpdateProtectionGroupRequest

    UpdateProtectionGroupResponse.struct_class = Types::UpdateProtectionGroupResponse

    UpdateSubscriptionRequest.add_member(:auto_renew, Shapes::ShapeRef.new(shape: AutoRenew, location_name: "AutoRenew"))
    UpdateSubscriptionRequest.struct_class = Types::UpdateSubscriptionRequest

    UpdateSubscriptionResponse.struct_class = Types::UpdateSubscriptionResponse

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-06-02"

      api.metadata = {
        "apiVersion" => "2016-06-02",
        "endpointPrefix" => "shield",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWS Shield",
        "serviceFullName" => "AWS Shield",
        "serviceId" => "Shield",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSShield_20160616",
        "uid" => "shield-2016-06-02",
      }

      api.add_operation(:associate_drt_log_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDRTLogBucket"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDRTLogBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDRTLogBucketResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NoAssociatedRoleException)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_drt_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDRTRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDRTRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDRTRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_health_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateHealthCheck"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateHealthCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateHealthCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)

      api.add_operation(:associate_proactive_engagement_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateProactiveEngagementDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateProactiveEngagementDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateProactiveEngagementDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
      end)

      api.add_operation(:create_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:create_protection_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProtectionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProtectionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProtectionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceededException)
      end)

      api.add_operation(:create_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:delete_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
      end)

      api.add_operation(:delete_protection_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProtectionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProtectionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProtectionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LockedSubscriptionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_attack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAttack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAttackRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAttackResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_attack_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAttackStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAttackStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAttackStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_drt_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDRTAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDRTAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDRTAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_emergency_contact_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEmergencyContactSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEmergencyContactSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEmergencyContactSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_protection_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProtectionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProtectionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProtectionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disable_application_layer_automatic_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableApplicationLayerAutomaticResponse"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableApplicationLayerAutomaticResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableApplicationLayerAutomaticResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:disable_proactive_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableProactiveEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableProactiveEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableProactiveEngagementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
      end)

      api.add_operation(:disassociate_drt_log_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDRTLogBucket"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDRTLogBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDRTLogBucketResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: NoAssociatedRoleException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_drt_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDRTRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDRTRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDRTRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_health_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateHealthCheck"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateHealthCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateHealthCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
      end)

      api.add_operation(:enable_application_layer_automatic_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableApplicationLayerAutomaticResponse"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableApplicationLayerAutomaticResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableApplicationLayerAutomaticResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:enable_proactive_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableProactiveEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableProactiveEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableProactiveEngagementResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
      end)

      api.add_operation(:get_subscription_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriptionState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_attacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAttacksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttacksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protection_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtectionGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProtectionGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProtectionGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProtectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProtectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources_in_protection_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourcesInProtectionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesInProtectionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesInProtectionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_application_layer_automatic_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplicationLayerAutomaticResponse"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationLayerAutomaticResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationLayerAutomaticResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:update_emergency_contact_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEmergencyContactSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEmergencyContactSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEmergencyContactSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_protection_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProtectionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProtectionGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProtectionGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LockedSubscriptionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OptimisticLockException)
      end)
    end

  end
end
