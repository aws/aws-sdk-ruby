# frozen_string_literal: true

# This is generated code!

module Aws::Shield
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    AccessDeniedForDependencyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AccessDeniedForDependencyException', name: 'AccessDeniedForDependencyException', traits: {"smithy.api#error" => "client"})
    ApplicationLayerAutomaticResponseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ApplicationLayerAutomaticResponseConfiguration', name: 'ApplicationLayerAutomaticResponseConfiguration')
    ApplicationLayerAutomaticResponseStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#ApplicationLayerAutomaticResponseStatus', name: 'ApplicationLayerAutomaticResponseStatus')
    AssociateDRTLogBucketRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AssociateDRTLogBucketRequest', name: 'AssociateDRTLogBucketRequest')
    AssociateDRTLogBucketResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AssociateDRTLogBucketResponse', name: 'AssociateDRTLogBucketResponse')
    AssociateDRTRoleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AssociateDRTRoleRequest', name: 'AssociateDRTRoleRequest')
    AssociateDRTRoleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AssociateDRTRoleResponse', name: 'AssociateDRTRoleResponse')
    AssociateHealthCheckRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AssociateHealthCheckRequest', name: 'AssociateHealthCheckRequest')
    AssociateHealthCheckResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AssociateHealthCheckResponse', name: 'AssociateHealthCheckResponse')
    AssociateProactiveEngagementDetailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AssociateProactiveEngagementDetailsRequest', name: 'AssociateProactiveEngagementDetailsRequest')
    AssociateProactiveEngagementDetailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AssociateProactiveEngagementDetailsResponse', name: 'AssociateProactiveEngagementDetailsResponse')
    AttackDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AttackDetail', name: 'AttackDetail')
    AttackId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#AttackId', name: 'AttackId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\\\-]*$"})
    AttackLayer = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#AttackLayer', name: 'AttackLayer')
    AttackProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#AttackProperties', name: 'AttackProperties')
    AttackProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AttackProperty', name: 'AttackProperty')
    AttackPropertyIdentifier = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#AttackPropertyIdentifier', name: 'AttackPropertyIdentifier')
    AttackStatisticsDataItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AttackStatisticsDataItem', name: 'AttackStatisticsDataItem')
    AttackStatisticsDataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#AttackStatisticsDataList', name: 'AttackStatisticsDataList')
    AttackSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#AttackSummaries', name: 'AttackSummaries')
    AttackSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AttackSummary', name: 'AttackSummary')
    AttackTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.shield#AttackTimestamp', name: 'AttackTimestamp')
    AttackVectorDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AttackVectorDescription', name: 'AttackVectorDescription')
    AttackVectorDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#AttackVectorDescriptionList', name: 'AttackVectorDescriptionList')
    AttackVolume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AttackVolume', name: 'AttackVolume')
    AttackVolumeStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#AttackVolumeStatistics', name: 'AttackVolumeStatistics')
    AutoRenew = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#AutoRenew', name: 'AutoRenew')
    BlockAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#BlockAction', name: 'BlockAction')
    ContactNotes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#ContactNotes', name: 'ContactNotes', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\w\\s\\.\\-,:/()+@]*$"})
    Contributor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#Contributor', name: 'Contributor')
    CountAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#CountAction', name: 'CountAction')
    CreateProtectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#CreateProtectionGroupRequest', name: 'CreateProtectionGroupRequest')
    CreateProtectionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#CreateProtectionGroupResponse', name: 'CreateProtectionGroupResponse')
    CreateProtectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#CreateProtectionRequest', name: 'CreateProtectionRequest')
    CreateProtectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#CreateProtectionResponse', name: 'CreateProtectionResponse')
    CreateSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#CreateSubscriptionRequest', name: 'CreateSubscriptionRequest')
    CreateSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#CreateSubscriptionResponse', name: 'CreateSubscriptionResponse')
    DeleteProtectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DeleteProtectionGroupRequest', name: 'DeleteProtectionGroupRequest')
    DeleteProtectionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DeleteProtectionGroupResponse', name: 'DeleteProtectionGroupResponse')
    DeleteProtectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DeleteProtectionRequest', name: 'DeleteProtectionRequest')
    DeleteProtectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DeleteProtectionResponse', name: 'DeleteProtectionResponse')
    DeleteSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DeleteSubscriptionRequest', name: 'DeleteSubscriptionRequest', traits: {"smithy.api#deprecated" => {}})
    DeleteSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DeleteSubscriptionResponse', name: 'DeleteSubscriptionResponse', traits: {"smithy.api#deprecated" => {}})
    DescribeAttackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeAttackRequest', name: 'DescribeAttackRequest')
    DescribeAttackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeAttackResponse', name: 'DescribeAttackResponse')
    DescribeAttackStatisticsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeAttackStatisticsRequest', name: 'DescribeAttackStatisticsRequest')
    DescribeAttackStatisticsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeAttackStatisticsResponse', name: 'DescribeAttackStatisticsResponse')
    DescribeDRTAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeDRTAccessRequest', name: 'DescribeDRTAccessRequest')
    DescribeDRTAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeDRTAccessResponse', name: 'DescribeDRTAccessResponse')
    DescribeEmergencyContactSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeEmergencyContactSettingsRequest', name: 'DescribeEmergencyContactSettingsRequest')
    DescribeEmergencyContactSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeEmergencyContactSettingsResponse', name: 'DescribeEmergencyContactSettingsResponse')
    DescribeProtectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeProtectionGroupRequest', name: 'DescribeProtectionGroupRequest')
    DescribeProtectionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeProtectionGroupResponse', name: 'DescribeProtectionGroupResponse')
    DescribeProtectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeProtectionRequest', name: 'DescribeProtectionRequest')
    DescribeProtectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeProtectionResponse', name: 'DescribeProtectionResponse')
    DescribeSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeSubscriptionRequest', name: 'DescribeSubscriptionRequest')
    DescribeSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DescribeSubscriptionResponse', name: 'DescribeSubscriptionResponse')
    DisableApplicationLayerAutomaticResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisableApplicationLayerAutomaticResponseRequest', name: 'DisableApplicationLayerAutomaticResponseRequest')
    DisableApplicationLayerAutomaticResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisableApplicationLayerAutomaticResponseResponse', name: 'DisableApplicationLayerAutomaticResponseResponse')
    DisableProactiveEngagementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisableProactiveEngagementRequest', name: 'DisableProactiveEngagementRequest')
    DisableProactiveEngagementResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisableProactiveEngagementResponse', name: 'DisableProactiveEngagementResponse')
    DisassociateDRTLogBucketRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisassociateDRTLogBucketRequest', name: 'DisassociateDRTLogBucketRequest')
    DisassociateDRTLogBucketResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisassociateDRTLogBucketResponse', name: 'DisassociateDRTLogBucketResponse')
    DisassociateDRTRoleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisassociateDRTRoleRequest', name: 'DisassociateDRTRoleRequest')
    DisassociateDRTRoleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisassociateDRTRoleResponse', name: 'DisassociateDRTRoleResponse')
    DisassociateHealthCheckRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisassociateHealthCheckRequest', name: 'DisassociateHealthCheckRequest')
    DisassociateHealthCheckResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#DisassociateHealthCheckResponse', name: 'DisassociateHealthCheckResponse')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.shield#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    DurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.shield#DurationInSeconds', name: 'DurationInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    EmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^\\S+@\\S+\\.\\S+$"})
    EmergencyContact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#EmergencyContact', name: 'EmergencyContact')
    EmergencyContactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#EmergencyContactList', name: 'EmergencyContactList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EnableApplicationLayerAutomaticResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#EnableApplicationLayerAutomaticResponseRequest', name: 'EnableApplicationLayerAutomaticResponseRequest')
    EnableApplicationLayerAutomaticResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#EnableApplicationLayerAutomaticResponseResponse', name: 'EnableApplicationLayerAutomaticResponseResponse')
    EnableProactiveEngagementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#EnableProactiveEngagementRequest', name: 'EnableProactiveEngagementRequest')
    EnableProactiveEngagementResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#EnableProactiveEngagementResponse', name: 'EnableProactiveEngagementResponse')
    GetSubscriptionStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#GetSubscriptionStateRequest', name: 'GetSubscriptionStateRequest')
    GetSubscriptionStateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#GetSubscriptionStateResponse', name: 'GetSubscriptionStateResponse')
    HealthCheckArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#HealthCheckArn', name: 'HealthCheckArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:route53:::healthcheck/\\S{36}$"})
    HealthCheckId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#HealthCheckId', name: 'HealthCheckId')
    HealthCheckIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#HealthCheckIds', name: 'HealthCheckIds')
    InclusionProtectionFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#InclusionProtectionFilters', name: 'InclusionProtectionFilters')
    InclusionProtectionGroupFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#InclusionProtectionGroupFilters', name: 'InclusionProtectionGroupFilters')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.shield#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#InternalErrorException', name: 'InternalErrorException', traits: {"smithy.api#error" => "server"})
    InvalidOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#InvalidOperationException', name: 'InvalidOperationException', traits: {"smithy.api#error" => "client"})
    InvalidPaginationTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#InvalidPaginationTokenException', name: 'InvalidPaginationTokenException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidResourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#InvalidResourceException', name: 'InvalidResourceException', traits: {"smithy.api#error" => "client"})
    Limit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#Limit', name: 'Limit')
    LimitNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.shield#LimitNumber', name: 'LimitNumber', traits: {"smithy.api#default" => 0})
    LimitType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#LimitType', name: 'LimitType')
    Limits = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#Limits', name: 'Limits')
    LimitsExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#LimitsExceededException', name: 'LimitsExceededException', traits: {"smithy.api#error" => "client"})
    ListAttacksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListAttacksRequest', name: 'ListAttacksRequest')
    ListAttacksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListAttacksResponse', name: 'ListAttacksResponse')
    ListProtectionGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListProtectionGroupsRequest', name: 'ListProtectionGroupsRequest')
    ListProtectionGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListProtectionGroupsResponse', name: 'ListProtectionGroupsResponse')
    ListProtectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListProtectionsRequest', name: 'ListProtectionsRequest')
    ListProtectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListProtectionsResponse', name: 'ListProtectionsResponse')
    ListResourcesInProtectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListResourcesInProtectionGroupRequest', name: 'ListResourcesInProtectionGroupRequest')
    ListResourcesInProtectionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListResourcesInProtectionGroupResponse', name: 'ListResourcesInProtectionGroupResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LockedSubscriptionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#LockedSubscriptionException', name: 'LockedSubscriptionException', traits: {"smithy.api#error" => "client"})
    LogBucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#LogBucket', name: 'LogBucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$"})
    LogBucketList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#LogBucketList', name: 'LogBucketList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.shield#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.shield#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    Mitigation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#Mitigation', name: 'Mitigation')
    MitigationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#MitigationList', name: 'MitigationList')
    NoAssociatedRoleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#NoAssociatedRoleException', name: 'NoAssociatedRoleException', traits: {"smithy.api#error" => "client"})
    OptimisticLockException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#OptimisticLockException', name: 'OptimisticLockException', traits: {"smithy.api#error" => "client"})
    PhoneNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#PhoneNumber', name: 'PhoneNumber', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^\\+[1-9]\\d{1,14}$"})
    ProactiveEngagementStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#ProactiveEngagementStatus', name: 'ProactiveEngagementStatus')
    ProtectedResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#ProtectedResourceType', name: 'ProtectedResourceType')
    ProtectedResourceTypeFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ProtectedResourceTypeFilters', name: 'ProtectedResourceTypeFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Protection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#Protection', name: 'Protection')
    ProtectionGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ProtectionGroup', name: 'ProtectionGroup')
    ProtectionGroupAggregation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#ProtectionGroupAggregation', name: 'ProtectionGroupAggregation')
    ProtectionGroupAggregationFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ProtectionGroupAggregationFilters', name: 'ProtectionGroupAggregationFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProtectionGroupArbitraryPatternLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ProtectionGroupArbitraryPatternLimits', name: 'ProtectionGroupArbitraryPatternLimits')
    ProtectionGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#ProtectionGroupId', name: 'ProtectionGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\\\-]*$"})
    ProtectionGroupIdFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ProtectionGroupIdFilters', name: 'ProtectionGroupIdFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProtectionGroupLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ProtectionGroupLimits', name: 'ProtectionGroupLimits')
    ProtectionGroupMembers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ProtectionGroupMembers', name: 'ProtectionGroupMembers', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    ProtectionGroupPattern = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#ProtectionGroupPattern', name: 'ProtectionGroupPattern')
    ProtectionGroupPatternFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ProtectionGroupPatternFilters', name: 'ProtectionGroupPatternFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProtectionGroupPatternTypeLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ProtectionGroupPatternTypeLimits', name: 'ProtectionGroupPatternTypeLimits')
    ProtectionGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ProtectionGroups', name: 'ProtectionGroups')
    ProtectionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#ProtectionId', name: 'ProtectionId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\\\-]*$"})
    ProtectionLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ProtectionLimits', name: 'ProtectionLimits')
    ProtectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#ProtectionName', name: 'ProtectionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9_\\\\.\\\\-]*$"})
    ProtectionNameFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ProtectionNameFilters', name: 'ProtectionNameFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Protections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#Protections', name: 'Protections')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws"})
    ResourceArnFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ResourceArnFilterList', name: 'ResourceArnFilterList')
    ResourceArnFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ResourceArnFilters', name: 'ResourceArnFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResourceArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ResourceArnList', name: 'ResourceArnList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResponseAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ResponseAction', name: 'ResponseAction')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#String', name: 'String')
    SubResourceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#SubResourceSummary', name: 'SubResourceSummary')
    SubResourceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#SubResourceSummaryList', name: 'SubResourceSummaryList')
    SubResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#SubResourceType', name: 'SubResourceType')
    Subscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#Subscription', name: 'Subscription')
    SubscriptionLimits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#SubscriptionLimits', name: 'SubscriptionLimits')
    SubscriptionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#SubscriptionState', name: 'SubscriptionState')
    SummarizedAttackVector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#SummarizedAttackVector', name: 'SummarizedAttackVector')
    SummarizedAttackVectorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#SummarizedAttackVectorList', name: 'SummarizedAttackVectorList')
    SummarizedCounter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#SummarizedCounter', name: 'SummarizedCounter')
    SummarizedCounterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#SummarizedCounterList', name: 'SummarizedCounterList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#TimeRange', name: 'TimeRange')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.shield#Timestamp', name: 'Timestamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^.*$"})
    TopContributors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#TopContributors', name: 'TopContributors')
    Unit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#Unit', name: 'Unit')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationLayerAutomaticResponseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UpdateApplicationLayerAutomaticResponseRequest', name: 'UpdateApplicationLayerAutomaticResponseRequest')
    UpdateApplicationLayerAutomaticResponseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UpdateApplicationLayerAutomaticResponseResponse', name: 'UpdateApplicationLayerAutomaticResponseResponse')
    UpdateEmergencyContactSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UpdateEmergencyContactSettingsRequest', name: 'UpdateEmergencyContactSettingsRequest')
    UpdateEmergencyContactSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UpdateEmergencyContactSettingsResponse', name: 'UpdateEmergencyContactSettingsResponse')
    UpdateProtectionGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UpdateProtectionGroupRequest', name: 'UpdateProtectionGroupRequest')
    UpdateProtectionGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UpdateProtectionGroupResponse', name: 'UpdateProtectionGroupResponse')
    UpdateSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UpdateSubscriptionRequest', name: 'UpdateSubscriptionRequest')
    UpdateSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#UpdateSubscriptionResponse', name: 'UpdateSubscriptionResponse')
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.shield#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.shield#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.shield#ValidationExceptionReason', name: 'ValidationExceptionReason')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.shield#errorMessage', name: 'ErrorMessage')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedForDependencyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedForDependencyException.type = Types::AccessDeniedForDependencyException
    ApplicationLayerAutomaticResponseConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationLayerAutomaticResponseStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates whether automatic application layer DDoS mitigation is enabled for the protection. </p>", "smithy.api#required" => {}}))
    ApplicationLayerAutomaticResponseConfiguration.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the\n   protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,\n   when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>", "smithy.api#required" => {}}))
    ApplicationLayerAutomaticResponseConfiguration.type = Types::ApplicationLayerAutomaticResponseConfiguration
    ApplicationLayerAutomaticResponseStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApplicationLayerAutomaticResponseStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AssociateDRTLogBucketRequest.add_member(:log_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: LogBucket, location_name: 'LogBucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the logs that you want to share.</p>", "smithy.api#required" => {}}))
    AssociateDRTLogBucketRequest.type = Types::AssociateDRTLogBucketRequest
    AssociateDRTLogBucketResponse.type = Types::AssociateDRTLogBucketResponse
    AssociateDRTRoleRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role the SRT will use to access your Amazon Web Services account.</p>\n         <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href=\"https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy\">AWSShieldDRTAccessPolicy</a> managed policy to this role.  For more information see <a href=\" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html\">Attaching and Detaching IAM Policies</a>.</p>", "smithy.api#required" => {}}))
    AssociateDRTRoleRequest.type = Types::AssociateDRTRoleRequest
    AssociateDRTRoleResponse.type = Types::AssociateDRTRoleResponse
    AssociateHealthCheckRequest.add_member(:protection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionId, location_name: 'ProtectionId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the <a>Protection</a> object to add the health check association to. </p>", "smithy.api#required" => {}}))
    AssociateHealthCheckRequest.add_member(:health_check_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckArn, location_name: 'HealthCheckArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the health check to associate with the protection.</p>", "smithy.api#required" => {}}))
    AssociateHealthCheckRequest.type = Types::AssociateHealthCheckRequest
    AssociateHealthCheckResponse.type = Types::AssociateHealthCheckResponse
    AssociateProactiveEngagementDetailsRequest.add_member(:emergency_contact_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EmergencyContactList, location_name: 'EmergencyContactList', traits: {"smithy.api#documentation" => "<p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you for escalations to the SRT and to initiate proactive customer support. </p>\n         <p>To enable proactive engagement, the contact list must include at least one phone number.</p>\n         <note>\n            <p>The contacts that you provide here replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it here.  </p>\n         </note>", "smithy.api#required" => {}}))
    AssociateProactiveEngagementDetailsRequest.type = Types::AssociateProactiveEngagementDetailsRequest
    AssociateProactiveEngagementDetailsResponse.type = Types::AssociateProactiveEngagementDetailsResponse
    AttackDetail.add_member(:attack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackId, location_name: 'AttackId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the attack.</p>"}))
    AttackDetail.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>"}))
    AttackDetail.add_member(:sub_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: SubResourceSummaryList, location_name: 'SubResources', traits: {"smithy.api#documentation" => "<p>If applicable, additional detail about the resource being attacked, for example, IP address or URL.</p>"}))
    AttackDetail.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time the attack started, in Unix time in seconds. </p>"}))
    AttackDetail.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time the attack ended, in Unix time in seconds. </p>"}))
    AttackDetail.add_member(:attack_counters, Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: 'AttackCounters', traits: {"smithy.api#documentation" => "<p>List of counters that describe the attack for the specified time period.</p>"}))
    AttackDetail.add_member(:attack_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackProperties, location_name: 'AttackProperties', traits: {"smithy.api#documentation" => "<p>The array of objects that provide details of the Shield event. </p>\n         <p>For infrastructure\n  layer events (L3 and L4 events), you can view metrics for top contributors in Amazon CloudWatch metrics.\n           For more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#set-ddos-alarms\">Shield metrics and alarms</a>\n               in the <i>WAF Developer Guide</i>. </p>"}))
    AttackDetail.add_member(:mitigations, Smithy::Schema::Shapes::ShapeRef.new(shape: MitigationList, location_name: 'Mitigations', traits: {"smithy.api#documentation" => "<p>List of mitigation actions taken for the attack.</p>"}))
    AttackDetail.type = Types::AttackDetail
    AttackLayer.add_member(:network, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK', traits: {"smithy.api#enumValue" => "NETWORK"}))
    AttackLayer.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "APPLICATION"}))
    AttackProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttackProperty)
    AttackProperty.add_member(:attack_layer, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackLayer, location_name: 'AttackLayer', traits: {"smithy.api#documentation" => "<p>The type of Shield event that was observed. <code>NETWORK</code> indicates layer 3 and layer 4 events and <code>APPLICATION</code>\n         indicates layer 7 events.</p>\n         <p>For infrastructure\n  layer events (L3 and L4 events), you can view metrics for top contributors in Amazon CloudWatch metrics.\n           For more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#set-ddos-alarms\">Shield metrics and alarms</a>\n               in the <i>WAF Developer Guide</i>. </p>"}))
    AttackProperty.add_member(:attack_property_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackPropertyIdentifier, location_name: 'AttackPropertyIdentifier', traits: {"smithy.api#documentation" => "<p>Defines the Shield event property information that is provided. The\n            <code>WORDPRESS_PINGBACK_REFLECTOR</code> and <code>WORDPRESS_PINGBACK_SOURCE</code>\n         values are valid only for WordPress reflective pingback events.</p>"}))
    AttackProperty.add_member(:top_contributors, Smithy::Schema::Shapes::ShapeRef.new(shape: TopContributors, location_name: 'TopContributors', traits: {"smithy.api#documentation" => "<p>Contributor objects for the top five contributors to a Shield event. A contributor is a source of traffic that Shield Advanced identifies as responsible for some or all of an event.</p>"}))
    AttackProperty.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Unit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>The unit used for the <code>Contributor</code>\n            <code>Value</code> property. </p>"}))
    AttackProperty.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Total', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total contributions made to this Shield event by all contributors.</p>"}))
    AttackProperty.type = Types::AttackProperty
    AttackPropertyIdentifier.add_member(:destination_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESTINATION_URL', traits: {"smithy.api#enumValue" => "DESTINATION_URL"}))
    AttackPropertyIdentifier.add_member(:referrer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REFERRER', traits: {"smithy.api#enumValue" => "REFERRER"}))
    AttackPropertyIdentifier.add_member(:source_asn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_ASN', traits: {"smithy.api#enumValue" => "SOURCE_ASN"}))
    AttackPropertyIdentifier.add_member(:source_country, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_COUNTRY', traits: {"smithy.api#enumValue" => "SOURCE_COUNTRY"}))
    AttackPropertyIdentifier.add_member(:source_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_IP_ADDRESS', traits: {"smithy.api#enumValue" => "SOURCE_IP_ADDRESS"}))
    AttackPropertyIdentifier.add_member(:source_user_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_USER_AGENT', traits: {"smithy.api#enumValue" => "SOURCE_USER_AGENT"}))
    AttackPropertyIdentifier.add_member(:wordpress_pingback_reflector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORDPRESS_PINGBACK_REFLECTOR', traits: {"smithy.api#enumValue" => "WORDPRESS_PINGBACK_REFLECTOR"}))
    AttackPropertyIdentifier.add_member(:wordpress_pingback_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORDPRESS_PINGBACK_SOURCE', traits: {"smithy.api#enumValue" => "WORDPRESS_PINGBACK_SOURCE"}))
    AttackStatisticsDataItem.add_member(:attack_volume, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackVolume, location_name: 'AttackVolume', traits: {"smithy.api#documentation" => "<p>Information about the volume of attacks during the time period. If the accompanying <code>AttackCount</code> is zero, this setting might be empty.</p>"}))
    AttackStatisticsDataItem.add_member(:attack_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AttackCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of attacks detected during the time period. This is always present, but might be zero. </p>", "smithy.api#required" => {}}))
    AttackStatisticsDataItem.type = Types::AttackStatisticsDataItem
    AttackStatisticsDataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttackStatisticsDataItem)
    AttackSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttackSummary)
    AttackSummary.add_member(:attack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttackId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the attack.</p>"}))
    AttackSummary.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>"}))
    AttackSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time of the attack, in Unix time in seconds. </p>"}))
    AttackSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackTimestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time of the attack, in Unix time in seconds. </p>"}))
    AttackSummary.add_member(:attack_vectors, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackVectorDescriptionList, location_name: 'AttackVectors', traits: {"smithy.api#documentation" => "<p>The list of attacks for a specified time period.</p>"}))
    AttackSummary.type = Types::AttackSummary
    AttackVectorDescription.add_member(:vector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VectorType', traits: {"smithy.api#documentation" => "<p>The attack type. Valid values:</p>\n         <ul>\n            <li>\n               <p>UDP_TRAFFIC</p>\n            </li>\n            <li>\n               <p>UDP_FRAGMENT</p>\n            </li>\n            <li>\n               <p>GENERIC_UDP_REFLECTION</p>\n            </li>\n            <li>\n               <p>DNS_REFLECTION</p>\n            </li>\n            <li>\n               <p>NTP_REFLECTION</p>\n            </li>\n            <li>\n               <p>CHARGEN_REFLECTION</p>\n            </li>\n            <li>\n               <p>SSDP_REFLECTION</p>\n            </li>\n            <li>\n               <p>PORT_MAPPER</p>\n            </li>\n            <li>\n               <p>RIP_REFLECTION</p>\n            </li>\n            <li>\n               <p>SNMP_REFLECTION</p>\n            </li>\n            <li>\n               <p>MSSQL_REFLECTION</p>\n            </li>\n            <li>\n               <p>NET_BIOS_REFLECTION</p>\n            </li>\n            <li>\n               <p>SYN_FLOOD</p>\n            </li>\n            <li>\n               <p>ACK_FLOOD</p>\n            </li>\n            <li>\n               <p>REQUEST_FLOOD</p>\n            </li>\n            <li>\n               <p>HTTP_REFLECTION</p>\n            </li>\n            <li>\n               <p>UDS_REFLECTION</p>\n            </li>\n            <li>\n               <p>MEMCACHED_REFLECTION</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AttackVectorDescription.type = Types::AttackVectorDescription
    AttackVectorDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttackVectorDescription)
    AttackVolume.add_member(:bits_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackVolumeStatistics, location_name: 'BitsPerSecond', traits: {"smithy.api#documentation" => "<p>A statistics object that uses bits per second as the unit. This is included for network level attacks. </p>"}))
    AttackVolume.add_member(:packets_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackVolumeStatistics, location_name: 'PacketsPerSecond', traits: {"smithy.api#documentation" => "<p>A statistics object that uses packets per second as the unit. This is included for network level attacks. </p>"}))
    AttackVolume.add_member(:requests_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackVolumeStatistics, location_name: 'RequestsPerSecond', traits: {"smithy.api#documentation" => "<p>A statistics object that uses requests per second as the unit. This is included for application level attacks, and is only available for accounts that are subscribed to Shield Advanced.</p>"}))
    AttackVolume.type = Types::AttackVolume
    AttackVolumeStatistics.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Max', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum attack volume observed for the given unit.</p>", "smithy.api#required" => {}}))
    AttackVolumeStatistics.type = Types::AttackVolumeStatistics
    AutoRenew.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoRenew.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    BlockAction.type = Types::BlockAction
    Contributor.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the contributor. The type of name that you'll find here depends on the <code>AttackPropertyIdentifier</code> setting in the <code>AttackProperty</code> where this contributor is defined. For example, if the <code>AttackPropertyIdentifier</code> is <code>SOURCE_COUNTRY</code>, the <code>Name</code> could be <code>United States</code>.</p>"}))
    Contributor.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The contribution of this contributor expressed in <a>Protection</a> units. For example <code>10,000</code>.</p>"}))
    Contributor.type = Types::Contributor
    CountAction.type = Types::CountAction
    CreateProtectionGroupRequest.add_member(:protection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupId, location_name: 'ProtectionGroupId', traits: {"smithy.api#documentation" => "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>", "smithy.api#required" => {}}))
    CreateProtectionGroupRequest.add_member(:aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupAggregation, location_name: 'Aggregation', traits: {"smithy.api#documentation" => "<p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>\n         <ul>\n            <li>\n               <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>\n            </li>\n            <li>\n               <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>\n            </li>\n            <li>\n               <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront and origin resources for CloudFront distributions.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateProtectionGroupRequest.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupPattern, location_name: 'Pattern', traits: {"smithy.api#documentation" => "<p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type. </p>", "smithy.api#required" => {}}))
    CreateProtectionGroupRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type to include in the protection group. All protected resources of this type are included in the protection group. Newly protected resources of this type are automatically added to the group.\n           You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>"}))
    CreateProtectionGroupRequest.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupMembers, location_name: 'Members', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>"}))
    CreateProtectionGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tag key-value pairs for the protection group.</p>"}))
    CreateProtectionGroupRequest.type = Types::CreateProtectionGroupRequest
    CreateProtectionGroupResponse.type = Types::CreateProtectionGroupResponse
    CreateProtectionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Friendly name for the <code>Protection</code> you are creating.</p>", "smithy.api#required" => {}}))
    CreateProtectionRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the resource to be protected.</p>\n         <p>The ARN should be in one of the following formats:</p>\n         <ul>\n            <li>\n               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For an Elastic Load Balancer (Classic Load Balancer): <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/<i>load-balancer-name</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For an Amazon CloudFront distribution: <code>arn:aws:cloudfront::<i>account-id</i>:distribution/<i>distribution-id</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For an Global Accelerator standard accelerator: <code>arn:aws:globalaccelerator::<i>account-id</i>:accelerator/<i>accelerator-id</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For Amazon Route 53: <code>arn:aws:route53:::hostedzone/<i>hosted-zone-id</i>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>For an Elastic IP address: <code>arn:aws:ec2:<i>region</i>:<i>account-id</i>:eip-allocation/<i>allocation-id</i>\n                  </code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateProtectionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tag key-value pairs for the <a>Protection</a> object that is created.</p>"}))
    CreateProtectionRequest.type = Types::CreateProtectionRequest
    CreateProtectionResponse.add_member(:protection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionId, location_name: 'ProtectionId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the <a>Protection</a> object that is created.</p>"}))
    CreateProtectionResponse.type = Types::CreateProtectionResponse
    CreateSubscriptionRequest.type = Types::CreateSubscriptionRequest
    CreateSubscriptionResponse.type = Types::CreateSubscriptionResponse
    DeleteProtectionGroupRequest.add_member(:protection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupId, location_name: 'ProtectionGroupId', traits: {"smithy.api#documentation" => "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>", "smithy.api#required" => {}}))
    DeleteProtectionGroupRequest.type = Types::DeleteProtectionGroupRequest
    DeleteProtectionGroupResponse.type = Types::DeleteProtectionGroupResponse
    DeleteProtectionRequest.add_member(:protection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionId, location_name: 'ProtectionId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the <a>Protection</a> object to be\n         deleted.</p>", "smithy.api#required" => {}}))
    DeleteProtectionRequest.type = Types::DeleteProtectionRequest
    DeleteProtectionResponse.type = Types::DeleteProtectionResponse
    DeleteSubscriptionRequest.type = Types::DeleteSubscriptionRequest
    DeleteSubscriptionResponse.type = Types::DeleteSubscriptionResponse
    DescribeAttackRequest.add_member(:attack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackId, location_name: 'AttackId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the attack.</p>", "smithy.api#required" => {}}))
    DescribeAttackRequest.type = Types::DescribeAttackRequest
    DescribeAttackResponse.add_member(:attack, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackDetail, location_name: 'Attack', traits: {"smithy.api#documentation" => "<p>The attack that you requested. </p>"}))
    DescribeAttackResponse.type = Types::DescribeAttackResponse
    DescribeAttackStatisticsRequest.type = Types::DescribeAttackStatisticsRequest
    DescribeAttackStatisticsResponse.add_member(:time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'TimeRange', traits: {"smithy.api#documentation" => "<p>The time range of the attack.</p>", "smithy.api#required" => {}}))
    DescribeAttackStatisticsResponse.add_member(:data_items, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackStatisticsDataList, location_name: 'DataItems', traits: {"smithy.api#documentation" => "<p>The data that describes the attacks detected during the time period.</p>", "smithy.api#required" => {}}))
    DescribeAttackStatisticsResponse.type = Types::DescribeAttackStatisticsResponse
    DescribeDRTAccessRequest.type = Types::DescribeDRTAccessRequest
    DescribeDRTAccessResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role the SRT used to access your Amazon Web Services account.</p>"}))
    DescribeDRTAccessResponse.add_member(:log_bucket_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LogBucketList, location_name: 'LogBucketList', traits: {"smithy.api#documentation" => "<p>The list of Amazon S3 buckets accessed by the SRT.</p>"}))
    DescribeDRTAccessResponse.type = Types::DescribeDRTAccessResponse
    DescribeEmergencyContactSettingsRequest.type = Types::DescribeEmergencyContactSettingsRequest
    DescribeEmergencyContactSettingsResponse.add_member(:emergency_contact_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EmergencyContactList, location_name: 'EmergencyContactList', traits: {"smithy.api#documentation" => "<p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>"}))
    DescribeEmergencyContactSettingsResponse.type = Types::DescribeEmergencyContactSettingsResponse
    DescribeProtectionGroupRequest.add_member(:protection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupId, location_name: 'ProtectionGroupId', traits: {"smithy.api#documentation" => "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>", "smithy.api#required" => {}}))
    DescribeProtectionGroupRequest.type = Types::DescribeProtectionGroupRequest
    DescribeProtectionGroupResponse.add_member(:protection_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroup, location_name: 'ProtectionGroup', traits: {"smithy.api#documentation" => "<p>A grouping of protected resources that you and Shield Advanced can monitor as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>", "smithy.api#required" => {}}))
    DescribeProtectionGroupResponse.type = Types::DescribeProtectionGroupResponse
    DescribeProtectionRequest.add_member(:protection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionId, location_name: 'ProtectionId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the <a>Protection</a> object to describe. \n           You must provide either the <code>ResourceArn</code> of the protected resource or the <code>ProtectionID</code> of the protection, but not both.</p>"}))
    DescribeProtectionRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the protected Amazon Web Services resource. \n           You must provide either the <code>ResourceArn</code> of the protected resource or the <code>ProtectionID</code> of the protection, but not both.</p>"}))
    DescribeProtectionRequest.type = Types::DescribeProtectionRequest
    DescribeProtectionResponse.add_member(:protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Protection, location_name: 'Protection', traits: {"smithy.api#documentation" => "<p>The <a>Protection</a> that you requested. </p>"}))
    DescribeProtectionResponse.type = Types::DescribeProtectionResponse
    DescribeSubscriptionRequest.type = Types::DescribeSubscriptionRequest
    DescribeSubscriptionResponse.add_member(:subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription, location_name: 'Subscription', traits: {"smithy.api#documentation" => "<p>The Shield Advanced subscription details for an account.</p>"}))
    DescribeSubscriptionResponse.type = Types::DescribeSubscriptionResponse
    DisableApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the protected resource.</p>", "smithy.api#required" => {}}))
    DisableApplicationLayerAutomaticResponseRequest.type = Types::DisableApplicationLayerAutomaticResponseRequest
    DisableApplicationLayerAutomaticResponseResponse.type = Types::DisableApplicationLayerAutomaticResponseResponse
    DisableProactiveEngagementRequest.type = Types::DisableProactiveEngagementRequest
    DisableProactiveEngagementResponse.type = Types::DisableProactiveEngagementResponse
    DisassociateDRTLogBucketRequest.add_member(:log_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: LogBucket, location_name: 'LogBucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the logs that you want to share.</p>", "smithy.api#required" => {}}))
    DisassociateDRTLogBucketRequest.type = Types::DisassociateDRTLogBucketRequest
    DisassociateDRTLogBucketResponse.type = Types::DisassociateDRTLogBucketResponse
    DisassociateDRTRoleRequest.type = Types::DisassociateDRTRoleRequest
    DisassociateDRTRoleResponse.type = Types::DisassociateDRTRoleResponse
    DisassociateHealthCheckRequest.add_member(:protection_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionId, location_name: 'ProtectionId', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the <a>Protection</a> object to remove the health check association from. </p>", "smithy.api#required" => {}}))
    DisassociateHealthCheckRequest.add_member(:health_check_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckArn, location_name: 'HealthCheckArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the health check that is associated with the protection.</p>", "smithy.api#required" => {}}))
    DisassociateHealthCheckRequest.type = Types::DisassociateHealthCheckRequest
    DisassociateHealthCheckResponse.type = Types::DisassociateHealthCheckResponse
    EmergencyContact.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address for the contact.</p>", "smithy.api#required" => {}}))
    EmergencyContact.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber, location_name: 'PhoneNumber', traits: {"smithy.api#documentation" => "<p>The phone number for the contact.</p>"}))
    EmergencyContact.add_member(:contact_notes, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactNotes, location_name: 'ContactNotes', traits: {"smithy.api#documentation" => "<p>Additional notes regarding the contact. </p>"}))
    EmergencyContact.type = Types::EmergencyContact
    EmergencyContactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmergencyContact)
    EnableApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the protected resource.</p>", "smithy.api#required" => {}}))
    EnableApplicationLayerAutomaticResponseRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the\n   protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,\n   when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>", "smithy.api#required" => {}}))
    EnableApplicationLayerAutomaticResponseRequest.type = Types::EnableApplicationLayerAutomaticResponseRequest
    EnableApplicationLayerAutomaticResponseResponse.type = Types::EnableApplicationLayerAutomaticResponseResponse
    EnableProactiveEngagementRequest.type = Types::EnableProactiveEngagementRequest
    EnableProactiveEngagementResponse.type = Types::EnableProactiveEngagementResponse
    GetSubscriptionStateRequest.type = Types::GetSubscriptionStateRequest
    GetSubscriptionStateResponse.add_member(:subscription_state, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionState, location_name: 'SubscriptionState', traits: {"smithy.api#documentation" => "<p>The status of the subscription.</p>", "smithy.api#required" => {}}))
    GetSubscriptionStateResponse.type = Types::GetSubscriptionStateResponse
    HealthCheckIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckId)
    InclusionProtectionFilters.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnFilters, location_name: 'ResourceArns', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the resource whose protection you want to retrieve.  </p>"}))
    InclusionProtectionFilters.add_member(:protection_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionNameFilters, location_name: 'ProtectionNames', traits: {"smithy.api#documentation" => "<p>The name of the protection that you want to retrieve.  </p>"}))
    InclusionProtectionFilters.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceTypeFilters, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>The type of protected resource whose protections you want to retrieve.  </p>"}))
    InclusionProtectionFilters.type = Types::InclusionProtectionFilters
    InclusionProtectionGroupFilters.add_member(:protection_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupIdFilters, location_name: 'ProtectionGroupIds', traits: {"smithy.api#documentation" => "<p>The ID of the protection group that you want to retrieve.  </p>"}))
    InclusionProtectionGroupFilters.add_member(:patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupPatternFilters, location_name: 'Patterns', traits: {"smithy.api#documentation" => "<p>The pattern specification of the protection groups that you want to retrieve.  </p>"}))
    InclusionProtectionGroupFilters.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceTypeFilters, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource type configuration of the protection groups that you want to retrieve. In the protection group configuration, you specify the resource type when you set the group's <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code>. </p>"}))
    InclusionProtectionGroupFilters.add_member(:aggregations, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupAggregationFilters, location_name: 'Aggregations', traits: {"smithy.api#documentation" => "<p>The aggregation setting of the protection groups that you want to retrieve.  </p>"}))
    InclusionProtectionGroupFilters.type = Types::InclusionProtectionGroupFilters
    InternalErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalErrorException.type = Types::InternalErrorException
    InvalidOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidPaginationTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidParameterException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Additional information about the exception.</p>"}))
    InvalidParameterException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>Fields that caused the exception.</p>"}))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidResourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidResourceException.type = Types::InvalidResourceException
    Limit.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of protection.</p>"}))
    Limit.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Max', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of protections that can be created for the specified <code>Type</code>.</p>"}))
    Limit.type = Types::Limit
    Limits.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Limit)
    LimitsExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitsExceededException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of limit that would be exceeded.</p>"}))
    LimitsExceededException.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitNumber, location_name: 'Limit', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The threshold that would be exceeded.</p>"}))
    LimitsExceededException.type = Types::LimitsExceededException
    ListAttacksRequest.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnFilterList, location_name: 'ResourceArns', traits: {"smithy.api#documentation" => "<p>The ARNs (Amazon Resource Names) of the resources that were attacked. If you leave this\n         blank, all applicable resources for this account will be included.</p>"}))
    ListAttacksRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,\n           but you can provide the time in any valid <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp\">timestamp format</a> setting.  </p>"}))
    ListAttacksRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,\n           but you can provide the time in any valid <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp\">timestamp format</a> setting.  </p>"}))
    ListAttacksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,\n           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and\n           providing the token that was returned by the prior call in your request. </p>\n         <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>\n           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>\n         <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>\n         <p>On your first call to a list operation, leave this setting empty.</p>"}))
    ListAttacksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects\n         than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value\n         in the response.</p>\n         <p>The default setting is 20.</p>"}))
    ListAttacksRequest.type = Types::ListAttacksRequest
    ListAttacksResponse.add_member(:attack_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AttackSummaries, location_name: 'AttackSummaries', traits: {"smithy.api#documentation" => "<p>The attack information for the specified time range.</p>"}))
    ListAttacksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,\n           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and\n           providing the token that was returned by the prior call in your request. </p>\n         <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>\n           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>\n         <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>"}))
    ListAttacksResponse.type = Types::ListAttacksResponse
    ListProtectionGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,\n           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and\n           providing the token that was returned by the prior call in your request. </p>\n         <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>\n           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>\n         <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>\n         <p>On your first call to a list operation, leave this setting empty.</p>"}))
    ListProtectionGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects\n         than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value\n         in the response.</p>\n         <p>The default setting is 20.</p>"}))
    ListProtectionGroupsRequest.add_member(:inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: InclusionProtectionGroupFilters, location_name: 'InclusionFilters', traits: {"smithy.api#documentation" => "<p>Narrows the set of protection groups that the call retrieves. You can retrieve a single protection group by its name and you can retrieve all protection groups that are configured with specific pattern or aggregation settings. You can provide up to one criteria per filter type. Shield Advanced returns the protection groups that exactly match all of the search criteria that you provide.</p>"}))
    ListProtectionGroupsRequest.type = Types::ListProtectionGroupsRequest
    ListProtectionGroupsResponse.add_member(:protection_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroups, location_name: 'ProtectionGroups', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    ListProtectionGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,\n           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and\n           providing the token that was returned by the prior call in your request. </p>\n         <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>\n           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>\n         <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>"}))
    ListProtectionGroupsResponse.type = Types::ListProtectionGroupsResponse
    ListProtectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,\n           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and\n           providing the token that was returned by the prior call in your request. </p>\n         <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>\n           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>\n         <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>\n         <p>On your first call to a list operation, leave this setting empty.</p>"}))
    ListProtectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects\n         than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value\n         in the response.</p>\n         <p>The default setting is 20.</p>"}))
    ListProtectionsRequest.add_member(:inclusion_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: InclusionProtectionFilters, location_name: 'InclusionFilters', traits: {"smithy.api#documentation" => "<p>Narrows the set of protections that the call retrieves. You can retrieve a single protection by providing its name or the ARN (Amazon Resource Name) of its protected resource. You can also retrieve all protections for a specific resource type. You can provide up to one criteria per filter type. Shield Advanced returns protections that exactly match all of the filter criteria that you provide.</p>"}))
    ListProtectionsRequest.type = Types::ListProtectionsRequest
    ListProtectionsResponse.add_member(:protections, Smithy::Schema::Shapes::ShapeRef.new(shape: Protections, location_name: 'Protections', traits: {"smithy.api#documentation" => "<p>The array of enabled <a>Protection</a> objects.</p>"}))
    ListProtectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,\n           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and\n           providing the token that was returned by the prior call in your request. </p>\n         <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>\n           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>\n         <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>"}))
    ListProtectionsResponse.type = Types::ListProtectionsResponse
    ListResourcesInProtectionGroupRequest.add_member(:protection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupId, location_name: 'ProtectionGroupId', traits: {"smithy.api#documentation" => "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>", "smithy.api#required" => {}}))
    ListResourcesInProtectionGroupRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,\n           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and\n           providing the token that was returned by the prior call in your request. </p>\n         <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>\n           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>\n         <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>\n         <p>On your first call to a list operation, leave this setting empty.</p>"}))
    ListResourcesInProtectionGroupRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects\n         than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value\n         in the response.</p>\n         <p>The default setting is 20.</p>"}))
    ListResourcesInProtectionGroupRequest.type = Types::ListResourcesInProtectionGroupRequest
    ListResourcesInProtectionGroupResponse.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'ResourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the resources that are included in the protection group.</p>", "smithy.api#required" => {}}))
    ListResourcesInProtectionGroupResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects,\n           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and\n           providing the token that was returned by the prior call in your request. </p>\n         <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>\n           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p>\n         <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>"}))
    ListResourcesInProtectionGroupResponse.type = Types::ListResourcesInProtectionGroupResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag key and value pairs associated with the specified resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LockedSubscriptionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LockedSubscriptionException.type = Types::LockedSubscriptionException
    LogBucketList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LogBucket)
    Mitigation.add_member(:mitigation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MitigationName', traits: {"smithy.api#documentation" => "<p>The name of the mitigation taken for this attack.</p>"}))
    Mitigation.type = Types::Mitigation
    MitigationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Mitigation)
    NoAssociatedRoleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NoAssociatedRoleException.type = Types::NoAssociatedRoleException
    OptimisticLockException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    OptimisticLockException.type = Types::OptimisticLockException
    ProactiveEngagementStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ProactiveEngagementStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ProactiveEngagementStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ProtectedResourceType.add_member(:cloudfront_distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFRONT_DISTRIBUTION', traits: {"smithy.api#enumValue" => "CLOUDFRONT_DISTRIBUTION"}))
    ProtectedResourceType.add_member(:route_53_hosted_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE_53_HOSTED_ZONE', traits: {"smithy.api#enumValue" => "ROUTE_53_HOSTED_ZONE"}))
    ProtectedResourceType.add_member(:elastic_ip_allocation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC_IP_ALLOCATION', traits: {"smithy.api#enumValue" => "ELASTIC_IP_ALLOCATION"}))
    ProtectedResourceType.add_member(:classic_load_balancer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLASSIC_LOAD_BALANCER', traits: {"smithy.api#enumValue" => "CLASSIC_LOAD_BALANCER"}))
    ProtectedResourceType.add_member(:application_load_balancer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION_LOAD_BALANCER', traits: {"smithy.api#enumValue" => "APPLICATION_LOAD_BALANCER"}))
    ProtectedResourceType.add_member(:global_accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLOBAL_ACCELERATOR', traits: {"smithy.api#enumValue" => "GLOBAL_ACCELERATOR"}))
    ProtectedResourceTypeFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceType)
    Protection.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the protection.</p>"}))
    Protection.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the protection. For example, <code>My CloudFront distributions</code>.</p>"}))
    Protection.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the Amazon Web Services resource that is protected.</p>"}))
    Protection.add_member(:health_check_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: HealthCheckIds, location_name: 'HealthCheckIds', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) for the Route 53 health check that's associated with the protection. </p>"}))
    Protection.add_member(:protection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ProtectionArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the protection.</p>"}))
    Protection.add_member(:application_layer_automatic_response_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationLayerAutomaticResponseConfiguration, location_name: 'ApplicationLayerAutomaticResponseConfiguration', traits: {"smithy.api#documentation" => "<p>The automatic application layer DDoS mitigation settings for the protection.\n       This configuration determines whether Shield Advanced automatically\n       manages rules in the web ACL in order to respond to application layer events that Shield Advanced determines to be DDoS attacks. </p>"}))
    Protection.type = Types::Protection
    ProtectionGroup.add_member(:protection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupId, location_name: 'ProtectionGroupId', traits: {"smithy.api#documentation" => "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>", "smithy.api#required" => {}}))
    ProtectionGroup.add_member(:aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupAggregation, location_name: 'Aggregation', traits: {"smithy.api#documentation" => "<p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>\n         <ul>\n            <li>\n               <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>\n            </li>\n            <li>\n               <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>\n            </li>\n            <li>\n               <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources for CloudFront distributions.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ProtectionGroup.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupPattern, location_name: 'Pattern', traits: {"smithy.api#documentation" => "<p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource ARNs (Amazon Resource Names), or include all resources of a specified resource type.</p>", "smithy.api#required" => {}}))
    ProtectionGroup.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type to include in the protection group. All protected resources of this type are included in the protection group.\n           You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>"}))
    ProtectionGroup.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupMembers, location_name: 'Members', traits: {"smithy.api#documentation" => "<p>The ARNs (Amazon Resource Names) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>", "smithy.api#required" => {}}))
    ProtectionGroup.add_member(:protection_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ProtectionGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the protection group.</p>"}))
    ProtectionGroup.type = Types::ProtectionGroup
    ProtectionGroupAggregation.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUM', traits: {"smithy.api#enumValue" => "SUM"}))
    ProtectionGroupAggregation.add_member(:mean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEAN', traits: {"smithy.api#enumValue" => "MEAN"}))
    ProtectionGroupAggregation.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX', traits: {"smithy.api#enumValue" => "MAX"}))
    ProtectionGroupAggregationFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupAggregation)
    ProtectionGroupArbitraryPatternLimits.add_member(:max_members, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxMembers', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of resources you can specify for a single arbitrary pattern in a protection group.</p>", "smithy.api#required" => {}}))
    ProtectionGroupArbitraryPatternLimits.type = Types::ProtectionGroupArbitraryPatternLimits
    ProtectionGroupIdFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupId)
    ProtectionGroupLimits.add_member(:max_protection_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'MaxProtectionGroups', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of protection groups that you can have at one time. </p>", "smithy.api#required" => {}}))
    ProtectionGroupLimits.add_member(:pattern_type_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupPatternTypeLimits, location_name: 'PatternTypeLimits', traits: {"smithy.api#documentation" => "<p>Limits settings by pattern type in the protection groups for your subscription. </p>", "smithy.api#required" => {}}))
    ProtectionGroupLimits.type = Types::ProtectionGroupLimits
    ProtectionGroupMembers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ProtectionGroupPattern.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ProtectionGroupPattern.add_member(:arbitrary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARBITRARY', traits: {"smithy.api#enumValue" => "ARBITRARY"}))
    ProtectionGroupPattern.add_member(:by_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BY_RESOURCE_TYPE', traits: {"smithy.api#enumValue" => "BY_RESOURCE_TYPE"}))
    ProtectionGroupPatternFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupPattern)
    ProtectionGroupPatternTypeLimits.add_member(:arbitrary_pattern_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupArbitraryPatternLimits, location_name: 'ArbitraryPatternLimits', traits: {"smithy.api#documentation" => "<p>Limits settings on protection groups with arbitrary pattern type. </p>", "smithy.api#required" => {}}))
    ProtectionGroupPatternTypeLimits.type = Types::ProtectionGroupPatternTypeLimits
    ProtectionGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroup)
    ProtectionLimits.add_member(:protected_resource_type_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: Limits, location_name: 'ProtectedResourceTypeLimits', traits: {"smithy.api#documentation" => "<p>The maximum number of resource types that you can specify in a protection.</p>", "smithy.api#required" => {}}))
    ProtectionLimits.type = Types::ProtectionLimits
    ProtectionNameFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionName)
    Protections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Protection)
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that already exists.</p>"}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceArnFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceArnFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Type of resource.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseAction.add_member(:block, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockAction, location_name: 'Block', traits: {"smithy.api#documentation" => "<p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Block</code> action. </p>\n         <p>You must specify exactly one action, either <code>Block</code> or <code>Count</code>.</p>"}))
    ResponseAction.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: CountAction, location_name: 'Count', traits: {"smithy.api#documentation" => "<p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Count</code> action. </p>\n         <p>You must specify exactly one action, either <code>Block</code> or <code>Count</code>.</p>"}))
    ResponseAction.type = Types::ResponseAction
    SubResourceSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SubResourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The <code>SubResource</code> type.</p>"}))
    SubResourceSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier (ID) of the <code>SubResource</code>.</p>"}))
    SubResourceSummary.add_member(:attack_vectors, Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizedAttackVectorList, location_name: 'AttackVectors', traits: {"smithy.api#documentation" => "<p>The list of attack types and associated counters.</p>"}))
    SubResourceSummary.add_member(:counters, Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: 'Counters', traits: {"smithy.api#documentation" => "<p>The counters that describe the details of the attack.</p>"}))
    SubResourceSummary.type = Types::SubResourceSummary
    SubResourceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubResourceSummary)
    SubResourceType.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP', traits: {"smithy.api#enumValue" => "IP"}))
    SubResourceType.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'URL', traits: {"smithy.api#enumValue" => "URL"}))
    Subscription.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time of the subscription, in Unix time in seconds. </p>"}))
    Subscription.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The date and time your subscription will end.</p>"}))
    Subscription.add_member(:time_commitment_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationInSeconds, location_name: 'TimeCommitmentInSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The length, in seconds, of the Shield Advanced subscription for the account.</p>"}))
    Subscription.add_member(:auto_renew, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRenew, location_name: 'AutoRenew', traits: {"smithy.api#documentation" => "<p>If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period.</p>\n         <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>"}))
    Subscription.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: Limits, location_name: 'Limits', traits: {"smithy.api#documentation" => "<p>Specifies how many protections of a given type you can create.</p>"}))
    Subscription.add_member(:proactive_engagement_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ProactiveEngagementStatus, location_name: 'ProactiveEngagementStatus', traits: {"smithy.api#documentation" => "<p>If <code>ENABLED</code>, the Shield Response Team (SRT) will use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.</p>\n         <p>If <code>PENDING</code>, you have requested proactive engagement and the request is pending. The status changes to <code>ENABLED</code> when your request is fully processed.</p>\n         <p>If <code>DISABLED</code>, the SRT will not proactively notify contacts about escalations or to initiate proactive customer support. </p>"}))
    Subscription.add_member(:subscription_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionLimits, location_name: 'SubscriptionLimits', traits: {"smithy.api#documentation" => "<p>Limits settings for your subscription. </p>", "smithy.api#required" => {}}))
    Subscription.add_member(:subscription_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'SubscriptionArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the subscription.</p>"}))
    Subscription.type = Types::Subscription
    SubscriptionLimits.add_member(:protection_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionLimits, location_name: 'ProtectionLimits', traits: {"smithy.api#documentation" => "<p>Limits settings on protections for your subscription. </p>", "smithy.api#required" => {}}))
    SubscriptionLimits.add_member(:protection_group_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupLimits, location_name: 'ProtectionGroupLimits', traits: {"smithy.api#documentation" => "<p>Limits settings on protection groups for your subscription. </p>", "smithy.api#required" => {}}))
    SubscriptionLimits.type = Types::SubscriptionLimits
    SubscriptionState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SubscriptionState.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    SummarizedAttackVector.add_member(:vector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VectorType', traits: {"smithy.api#documentation" => "<p>The attack type, for example, SNMP reflection or SYN flood.</p>", "smithy.api#required" => {}}))
    SummarizedAttackVector.add_member(:vector_counters, Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizedCounterList, location_name: 'VectorCounters', traits: {"smithy.api#documentation" => "<p>The list of counters that describe the details of the attack.</p>"}))
    SummarizedAttackVector.type = Types::SummarizedAttackVector
    SummarizedAttackVectorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizedAttackVector)
    SummarizedCounter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The counter name.</p>"}))
    SummarizedCounter.add_member(:max, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Max', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum value of the counter for a specified time period.</p>"}))
    SummarizedCounter.add_member(:average, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Average', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The average value of the counter for a specified time period.</p>"}))
    SummarizedCounter.add_member(:sum, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Sum', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total of counter values for a specified time period.</p>"}))
    SummarizedCounter.add_member(:n, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'N', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of counters for a specified time period.</p>"}))
    SummarizedCounter.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>The unit of the counters.</p>"}))
    SummarizedCounter.type = Types::SummarizedCounter
    SummarizedCounterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SummarizedCounter)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are case-sensitive.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or \"companyB.\" Tag values are case-sensitive.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that you want to modify or add to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TimeRange.add_member(:from_inclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FromInclusive', traits: {"smithy.api#documentation" => "<p>The start time, in Unix time in seconds. </p>"}))
    TimeRange.add_member(:to_exclusive, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ToExclusive', traits: {"smithy.api#documentation" => "<p>The end time, in Unix time in seconds. </p>"}))
    TimeRange.type = Types::TimeRange
    TopContributors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Contributor)
    Unit.add_member(:bits, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITS', traits: {"smithy.api#enumValue" => "BITS"}))
    Unit.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTES', traits: {"smithy.api#enumValue" => "BYTES"}))
    Unit.add_member(:packets, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PACKETS', traits: {"smithy.api#enumValue" => "PACKETS"}))
    Unit.add_member(:requests, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTS', traits: {"smithy.api#enumValue" => "REQUESTS"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag key for each tag that you want to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the resource.</p>", "smithy.api#required" => {}}))
    UpdateApplicationLayerAutomaticResponseRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseAction, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the\n   protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature,\n   when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>", "smithy.api#required" => {}}))
    UpdateApplicationLayerAutomaticResponseRequest.type = Types::UpdateApplicationLayerAutomaticResponseRequest
    UpdateApplicationLayerAutomaticResponseResponse.type = Types::UpdateApplicationLayerAutomaticResponseResponse
    UpdateEmergencyContactSettingsRequest.add_member(:emergency_contact_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EmergencyContactList, location_name: 'EmergencyContactList', traits: {"smithy.api#documentation" => "<p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>\n         <p>If you have proactive engagement enabled, the contact list must include at least one phone number.</p>"}))
    UpdateEmergencyContactSettingsRequest.type = Types::UpdateEmergencyContactSettingsRequest
    UpdateEmergencyContactSettingsResponse.type = Types::UpdateEmergencyContactSettingsResponse
    UpdateProtectionGroupRequest.add_member(:protection_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupId, location_name: 'ProtectionGroupId', traits: {"smithy.api#documentation" => "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>", "smithy.api#required" => {}}))
    UpdateProtectionGroupRequest.add_member(:aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupAggregation, location_name: 'Aggregation', traits: {"smithy.api#documentation" => "<p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>\n         <ul>\n            <li>\n               <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>\n            </li>\n            <li>\n               <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>\n            </li>\n            <li>\n               <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources for CloudFront distributions.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateProtectionGroupRequest.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupPattern, location_name: 'Pattern', traits: {"smithy.api#documentation" => "<p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.</p>", "smithy.api#required" => {}}))
    UpdateProtectionGroupRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectedResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type to include in the protection group. All protected resources of this type are included in the protection group.\n           You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>"}))
    UpdateProtectionGroupRequest.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionGroupMembers, location_name: 'Members', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>"}))
    UpdateProtectionGroupRequest.type = Types::UpdateProtectionGroupRequest
    UpdateProtectionGroupResponse.type = Types::UpdateProtectionGroupResponse
    UpdateSubscriptionRequest.add_member(:auto_renew, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRenew, location_name: 'AutoRenew', traits: {"smithy.api#documentation" => "<p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>"}))
    UpdateSubscriptionRequest.type = Types::UpdateSubscriptionRequest
    UpdateSubscriptionResponse.type = Types::UpdateSubscriptionResponse
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the parameter that failed validation.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message describing why the parameter failed validation.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))

    AWSShield20160616 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.shield#AWSShield_20160616"
      service.name = "AWSShield20160616"
      service.version = "2016-06-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Shield", "arnNamespace" => "shield", "cloudFormationName" => "Shield", "cloudTrailEventSource" => "shield.amazonaws.com", "endpointPrefix" => "shield"}, "aws.auth#sigv4" => {"name" => "shield"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Shield", "smithy.api#xmlNamespace" => {"uri" => "http://ddp.amazonaws.com/doc/2016-06-02/"}}
      service.add_operation(:associate_drt_log_bucket, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#AssociateDRTLogBucket"
        operation.name = "AssociateDRTLogBucket"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDRTLogBucketRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDRTLogBucketResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAssociatedRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_drt_role, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#AssociateDRTRole"
        operation.name = "AssociateDRTRole"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDRTRoleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDRTRoleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_health_check, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#AssociateHealthCheck"
        operation.name = "AssociateHealthCheck"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateHealthCheckRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateHealthCheckResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_proactive_engagement_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#AssociateProactiveEngagementDetails"
        operation.name = "AssociateProactiveEngagementDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProactiveEngagementDetailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateProactiveEngagementDetailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_protection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#CreateProtection"
        operation.name = "CreateProtection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProtectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProtectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_protection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#CreateProtectionGroup"
        operation.name = "CreateProtectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProtectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProtectionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#CreateSubscription"
        operation.name = "CreateSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_protection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DeleteProtection"
        operation.name = "DeleteProtection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_protection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DeleteProtectionGroup"
        operation.name = "DeleteProtectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtectionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DeleteSubscription"
        operation.name = "DeleteSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LockedSubscriptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:describe_attack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeAttack"
        operation.name = "DescribeAttack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:describe_attack_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeAttackStatistics"
        operation.name = "DescribeAttackStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttackStatisticsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttackStatisticsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:describe_drt_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeDRTAccess"
        operation.name = "DescribeDRTAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDRTAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDRTAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_emergency_contact_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeEmergencyContactSettings"
        operation.name = "DescribeEmergencyContactSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEmergencyContactSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEmergencyContactSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_protection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeProtection"
        operation.name = "DescribeProtection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProtectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProtectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_protection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeProtectionGroup"
        operation.name = "DescribeProtectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProtectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProtectionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeSubscription"
        operation.name = "DescribeSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disable_application_layer_automatic_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisableApplicationLayerAutomaticResponse"
        operation.name = "DisableApplicationLayerAutomaticResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableApplicationLayerAutomaticResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableApplicationLayerAutomaticResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disable_proactive_engagement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisableProactiveEngagement"
        operation.name = "DisableProactiveEngagement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableProactiveEngagementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableProactiveEngagementResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_drt_log_bucket, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisassociateDRTLogBucket"
        operation.name = "DisassociateDRTLogBucket"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDRTLogBucketRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDRTLogBucketResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedForDependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAssociatedRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_drt_role, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisassociateDRTRole"
        operation.name = "DisassociateDRTRole"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDRTRoleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDRTRoleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_health_check, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisassociateHealthCheck"
        operation.name = "DisassociateHealthCheck"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateHealthCheckRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateHealthCheckResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:enable_application_layer_automatic_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#EnableApplicationLayerAutomaticResponse"
        operation.name = "EnableApplicationLayerAutomaticResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableApplicationLayerAutomaticResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableApplicationLayerAutomaticResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:enable_proactive_engagement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#EnableProactiveEngagement"
        operation.name = "EnableProactiveEngagement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableProactiveEngagementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableProactiveEngagementResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_subscription_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#GetSubscriptionState"
        operation.name = "GetSubscriptionState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriptionStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriptionStateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:list_attacks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListAttacks"
        operation.name = "ListAttacks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttacksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttacksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListAttacksSuccess", "params" => {}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListAttacks.new
      end)
      service.add_operation(:list_protection_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListProtectionGroups"
        operation.name = "ListProtectionGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectionGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectionGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProtectionGroups.new
      end)
      service.add_operation(:list_protections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListProtections"
        operation.name = "ListProtections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProtections.new
      end)
      service.add_operation(:list_resources_in_protection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListResourcesInProtectionGroup"
        operation.name = "ListResourcesInProtectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesInProtectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesInProtectionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourcesInProtectionGroup.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_application_layer_automatic_response, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UpdateApplicationLayerAutomaticResponse"
        operation.name = "UpdateApplicationLayerAutomaticResponse"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationLayerAutomaticResponseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationLayerAutomaticResponseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_emergency_contact_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UpdateEmergencyContactSettings"
        operation.name = "UpdateEmergencyContactSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmergencyContactSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmergencyContactSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_protection_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UpdateProtectionGroup"
        operation.name = "UpdateProtectionGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectionGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProtectionGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UpdateSubscription"
        operation.name = "UpdateSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LockedSubscriptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OptimisticLockException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
