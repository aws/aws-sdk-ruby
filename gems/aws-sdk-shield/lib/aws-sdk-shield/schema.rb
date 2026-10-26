# frozen_string_literal: true

# This is generated code!

module Aws::Shield
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccessDeniedForDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AccessDeniedForDependencyException", name: "AccessDeniedForDependencyException", traits: {"smithy.api#error" => "client"})
    ApplicationLayerAutomaticResponseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ApplicationLayerAutomaticResponseConfiguration", name: "ApplicationLayerAutomaticResponseConfiguration")
    ApplicationLayerAutomaticResponseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#ApplicationLayerAutomaticResponseStatus", name: "ApplicationLayerAutomaticResponseStatus")
    AssociateDRTLogBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AssociateDRTLogBucketRequest", name: "AssociateDRTLogBucketRequest")
    AssociateDRTLogBucketResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AssociateDRTLogBucketResponse", name: "AssociateDRTLogBucketResponse")
    AssociateDRTRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AssociateDRTRoleRequest", name: "AssociateDRTRoleRequest")
    AssociateDRTRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AssociateDRTRoleResponse", name: "AssociateDRTRoleResponse")
    AssociateHealthCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AssociateHealthCheckRequest", name: "AssociateHealthCheckRequest")
    AssociateHealthCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AssociateHealthCheckResponse", name: "AssociateHealthCheckResponse")
    AssociateProactiveEngagementDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AssociateProactiveEngagementDetailsRequest", name: "AssociateProactiveEngagementDetailsRequest")
    AssociateProactiveEngagementDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AssociateProactiveEngagementDetailsResponse", name: "AssociateProactiveEngagementDetailsResponse")
    AttackDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AttackDetail", name: "AttackDetail")
    AttackId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#AttackId", name: "AttackId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\\\-]*$"})
    AttackLayer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#AttackLayer", name: "AttackLayer")
    AttackProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#AttackProperties", name: "AttackProperties")
    AttackProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AttackProperty", name: "AttackProperty")
    AttackPropertyIdentifier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#AttackPropertyIdentifier", name: "AttackPropertyIdentifier")
    AttackStatisticsDataItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AttackStatisticsDataItem", name: "AttackStatisticsDataItem")
    AttackStatisticsDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#AttackStatisticsDataList", name: "AttackStatisticsDataList")
    AttackSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#AttackSummaries", name: "AttackSummaries")
    AttackSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AttackSummary", name: "AttackSummary")
    AttackTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.shield#AttackTimestamp", name: "AttackTimestamp")
    AttackVectorDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AttackVectorDescription", name: "AttackVectorDescription")
    AttackVectorDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#AttackVectorDescriptionList", name: "AttackVectorDescriptionList")
    AttackVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AttackVolume", name: "AttackVolume")
    AttackVolumeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#AttackVolumeStatistics", name: "AttackVolumeStatistics")
    AutoRenew = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#AutoRenew", name: "AutoRenew")
    BlockAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#BlockAction", name: "BlockAction")
    ContactNotes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#ContactNotes", name: "ContactNotes", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\w\\s\\.\\-,:/()+@]*$"})
    Contributor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#Contributor", name: "Contributor")
    CountAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#CountAction", name: "CountAction")
    CreateProtectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#CreateProtectionGroupRequest", name: "CreateProtectionGroupRequest")
    CreateProtectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#CreateProtectionGroupResponse", name: "CreateProtectionGroupResponse")
    CreateProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#CreateProtectionRequest", name: "CreateProtectionRequest")
    CreateProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#CreateProtectionResponse", name: "CreateProtectionResponse")
    CreateSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#CreateSubscriptionRequest", name: "CreateSubscriptionRequest")
    CreateSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#CreateSubscriptionResponse", name: "CreateSubscriptionResponse")
    DeleteProtectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DeleteProtectionGroupRequest", name: "DeleteProtectionGroupRequest")
    DeleteProtectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DeleteProtectionGroupResponse", name: "DeleteProtectionGroupResponse")
    DeleteProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DeleteProtectionRequest", name: "DeleteProtectionRequest")
    DeleteProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DeleteProtectionResponse", name: "DeleteProtectionResponse")
    DeleteSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DeleteSubscriptionRequest", name: "DeleteSubscriptionRequest", traits: {"smithy.api#deprecated" => {}})
    DeleteSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DeleteSubscriptionResponse", name: "DeleteSubscriptionResponse", traits: {"smithy.api#deprecated" => {}})
    DescribeAttackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeAttackRequest", name: "DescribeAttackRequest")
    DescribeAttackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeAttackResponse", name: "DescribeAttackResponse")
    DescribeAttackStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeAttackStatisticsRequest", name: "DescribeAttackStatisticsRequest")
    DescribeAttackStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeAttackStatisticsResponse", name: "DescribeAttackStatisticsResponse")
    DescribeDRTAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeDRTAccessRequest", name: "DescribeDRTAccessRequest")
    DescribeDRTAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeDRTAccessResponse", name: "DescribeDRTAccessResponse")
    DescribeEmergencyContactSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeEmergencyContactSettingsRequest", name: "DescribeEmergencyContactSettingsRequest")
    DescribeEmergencyContactSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeEmergencyContactSettingsResponse", name: "DescribeEmergencyContactSettingsResponse")
    DescribeProtectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeProtectionGroupRequest", name: "DescribeProtectionGroupRequest")
    DescribeProtectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeProtectionGroupResponse", name: "DescribeProtectionGroupResponse")
    DescribeProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeProtectionRequest", name: "DescribeProtectionRequest")
    DescribeProtectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeProtectionResponse", name: "DescribeProtectionResponse")
    DescribeSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeSubscriptionRequest", name: "DescribeSubscriptionRequest")
    DescribeSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DescribeSubscriptionResponse", name: "DescribeSubscriptionResponse")
    DisableApplicationLayerAutomaticResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisableApplicationLayerAutomaticResponseRequest", name: "DisableApplicationLayerAutomaticResponseRequest")
    DisableApplicationLayerAutomaticResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisableApplicationLayerAutomaticResponseResponse", name: "DisableApplicationLayerAutomaticResponseResponse")
    DisableProactiveEngagementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisableProactiveEngagementRequest", name: "DisableProactiveEngagementRequest")
    DisableProactiveEngagementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisableProactiveEngagementResponse", name: "DisableProactiveEngagementResponse")
    DisassociateDRTLogBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisassociateDRTLogBucketRequest", name: "DisassociateDRTLogBucketRequest")
    DisassociateDRTLogBucketResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisassociateDRTLogBucketResponse", name: "DisassociateDRTLogBucketResponse")
    DisassociateDRTRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisassociateDRTRoleRequest", name: "DisassociateDRTRoleRequest")
    DisassociateDRTRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisassociateDRTRoleResponse", name: "DisassociateDRTRoleResponse")
    DisassociateHealthCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisassociateHealthCheckRequest", name: "DisassociateHealthCheckRequest")
    DisassociateHealthCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#DisassociateHealthCheckResponse", name: "DisassociateHealthCheckResponse")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.shield#Double", name: "Double", traits: {"smithy.api#default" => 0})
    DurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.shield#DurationInSeconds", name: "DurationInSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#EmailAddress", name: "EmailAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^\\S+@\\S+\\.\\S+$"})
    EmergencyContact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#EmergencyContact", name: "EmergencyContact")
    EmergencyContactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#EmergencyContactList", name: "EmergencyContactList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EnableApplicationLayerAutomaticResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#EnableApplicationLayerAutomaticResponseRequest", name: "EnableApplicationLayerAutomaticResponseRequest")
    EnableApplicationLayerAutomaticResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#EnableApplicationLayerAutomaticResponseResponse", name: "EnableApplicationLayerAutomaticResponseResponse")
    EnableProactiveEngagementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#EnableProactiveEngagementRequest", name: "EnableProactiveEngagementRequest")
    EnableProactiveEngagementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#EnableProactiveEngagementResponse", name: "EnableProactiveEngagementResponse")
    GetSubscriptionStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#GetSubscriptionStateRequest", name: "GetSubscriptionStateRequest")
    GetSubscriptionStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#GetSubscriptionStateResponse", name: "GetSubscriptionStateResponse")
    HealthCheckArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#HealthCheckArn", name: "HealthCheckArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:route53:::healthcheck/\\S{36}$"})
    HealthCheckId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#HealthCheckId", name: "HealthCheckId")
    HealthCheckIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#HealthCheckIds", name: "HealthCheckIds")
    InclusionProtectionFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#InclusionProtectionFilters", name: "InclusionProtectionFilters")
    InclusionProtectionGroupFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#InclusionProtectionGroupFilters", name: "InclusionProtectionGroupFilters")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.shield#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#InternalErrorException", name: "InternalErrorException", traits: {"smithy.api#error" => "server"})
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#InvalidOperationException", name: "InvalidOperationException", traits: {"smithy.api#error" => "client"})
    InvalidPaginationTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#InvalidPaginationTokenException", name: "InvalidPaginationTokenException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#InvalidResourceException", name: "InvalidResourceException", traits: {"smithy.api#error" => "client"})
    Limit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#Limit", name: "Limit")
    LimitNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.shield#LimitNumber", name: "LimitNumber", traits: {"smithy.api#default" => 0})
    LimitType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#LimitType", name: "LimitType")
    Limits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#Limits", name: "Limits")
    LimitsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#LimitsExceededException", name: "LimitsExceededException", traits: {"smithy.api#error" => "client"})
    ListAttacksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListAttacksRequest", name: "ListAttacksRequest")
    ListAttacksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListAttacksResponse", name: "ListAttacksResponse")
    ListProtectionGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListProtectionGroupsRequest", name: "ListProtectionGroupsRequest")
    ListProtectionGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListProtectionGroupsResponse", name: "ListProtectionGroupsResponse")
    ListProtectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListProtectionsRequest", name: "ListProtectionsRequest")
    ListProtectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListProtectionsResponse", name: "ListProtectionsResponse")
    ListResourcesInProtectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListResourcesInProtectionGroupRequest", name: "ListResourcesInProtectionGroupRequest")
    ListResourcesInProtectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListResourcesInProtectionGroupResponse", name: "ListResourcesInProtectionGroupResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LockedSubscriptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#LockedSubscriptionException", name: "LockedSubscriptionException", traits: {"smithy.api#error" => "client"})
    LogBucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#LogBucket", name: "LogBucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$"})
    LogBucketList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#LogBucketList", name: "LogBucketList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.shield#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.shield#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    Mitigation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#Mitigation", name: "Mitigation")
    MitigationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#MitigationList", name: "MitigationList")
    NoAssociatedRoleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#NoAssociatedRoleException", name: "NoAssociatedRoleException", traits: {"smithy.api#error" => "client"})
    OptimisticLockException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#OptimisticLockException", name: "OptimisticLockException", traits: {"smithy.api#error" => "client"})
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#PhoneNumber", name: "PhoneNumber", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^\\+[1-9]\\d{1,14}$"})
    ProactiveEngagementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#ProactiveEngagementStatus", name: "ProactiveEngagementStatus")
    ProtectedResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#ProtectedResourceType", name: "ProtectedResourceType")
    ProtectedResourceTypeFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ProtectedResourceTypeFilters", name: "ProtectedResourceTypeFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Protection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#Protection", name: "Protection")
    ProtectionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ProtectionGroup", name: "ProtectionGroup")
    ProtectionGroupAggregation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#ProtectionGroupAggregation", name: "ProtectionGroupAggregation")
    ProtectionGroupAggregationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ProtectionGroupAggregationFilters", name: "ProtectionGroupAggregationFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProtectionGroupArbitraryPatternLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ProtectionGroupArbitraryPatternLimits", name: "ProtectionGroupArbitraryPatternLimits")
    ProtectionGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#ProtectionGroupId", name: "ProtectionGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\\\-]*$"})
    ProtectionGroupIdFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ProtectionGroupIdFilters", name: "ProtectionGroupIdFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProtectionGroupLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ProtectionGroupLimits", name: "ProtectionGroupLimits")
    ProtectionGroupMembers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ProtectionGroupMembers", name: "ProtectionGroupMembers", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    ProtectionGroupPattern = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#ProtectionGroupPattern", name: "ProtectionGroupPattern")
    ProtectionGroupPatternFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ProtectionGroupPatternFilters", name: "ProtectionGroupPatternFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ProtectionGroupPatternTypeLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ProtectionGroupPatternTypeLimits", name: "ProtectionGroupPatternTypeLimits")
    ProtectionGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ProtectionGroups", name: "ProtectionGroups")
    ProtectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#ProtectionId", name: "ProtectionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\\\-]*$"})
    ProtectionLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ProtectionLimits", name: "ProtectionLimits")
    ProtectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#ProtectionName", name: "ProtectionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9_\\\\.\\\\-]*$"})
    ProtectionNameFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ProtectionNameFilters", name: "ProtectionNameFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Protections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#Protections", name: "Protections")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws"})
    ResourceArnFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ResourceArnFilterList", name: "ResourceArnFilterList")
    ResourceArnFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ResourceArnFilters", name: "ResourceArnFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ResourceArnList", name: "ResourceArnList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResponseAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ResponseAction", name: "ResponseAction")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#String", name: "String")
    SubResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#SubResourceSummary", name: "SubResourceSummary")
    SubResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#SubResourceSummaryList", name: "SubResourceSummaryList")
    SubResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#SubResourceType", name: "SubResourceType")
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#Subscription", name: "Subscription")
    SubscriptionLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#SubscriptionLimits", name: "SubscriptionLimits")
    SubscriptionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#SubscriptionState", name: "SubscriptionState")
    SummarizedAttackVector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#SummarizedAttackVector", name: "SummarizedAttackVector")
    SummarizedAttackVectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#SummarizedAttackVectorList", name: "SummarizedAttackVectorList")
    SummarizedCounter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#SummarizedCounter", name: "SummarizedCounter")
    SummarizedCounterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#SummarizedCounterList", name: "SummarizedCounterList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#TimeRange", name: "TimeRange")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.shield#Timestamp", name: "Timestamp")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^.*$"})
    TopContributors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#TopContributors", name: "TopContributors")
    Unit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#Unit", name: "Unit")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApplicationLayerAutomaticResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UpdateApplicationLayerAutomaticResponseRequest", name: "UpdateApplicationLayerAutomaticResponseRequest")
    UpdateApplicationLayerAutomaticResponseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UpdateApplicationLayerAutomaticResponseResponse", name: "UpdateApplicationLayerAutomaticResponseResponse")
    UpdateEmergencyContactSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UpdateEmergencyContactSettingsRequest", name: "UpdateEmergencyContactSettingsRequest")
    UpdateEmergencyContactSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UpdateEmergencyContactSettingsResponse", name: "UpdateEmergencyContactSettingsResponse")
    UpdateProtectionGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UpdateProtectionGroupRequest", name: "UpdateProtectionGroupRequest")
    UpdateProtectionGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UpdateProtectionGroupResponse", name: "UpdateProtectionGroupResponse")
    UpdateSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UpdateSubscriptionRequest", name: "UpdateSubscriptionRequest")
    UpdateSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#UpdateSubscriptionResponse", name: "UpdateSubscriptionResponse")
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.shield#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.shield#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.shield#ValidationExceptionReason", name: "ValidationExceptionReason")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.shield#errorMessage", name: "ErrorMessage")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedForDependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedForDependencyException.type = Types::AccessDeniedForDependencyException
    ApplicationLayerAutomaticResponseConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLayerAutomaticResponseStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ApplicationLayerAutomaticResponseConfiguration.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseAction, name: "Action", traits: {"smithy.api#required" => {}}))
    ApplicationLayerAutomaticResponseConfiguration.type = Types::ApplicationLayerAutomaticResponseConfiguration
    ApplicationLayerAutomaticResponseStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ApplicationLayerAutomaticResponseStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AssociateDRTLogBucketRequest.add_member(:log_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: LogBucket, name: "LogBucket", traits: {"smithy.api#required" => {}}))
    AssociateDRTLogBucketRequest.type = Types::AssociateDRTLogBucketRequest
    AssociateDRTLogBucketResponse.type = Types::AssociateDRTLogBucketResponse
    AssociateDRTRoleRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    AssociateDRTRoleRequest.type = Types::AssociateDRTRoleRequest
    AssociateDRTRoleResponse.type = Types::AssociateDRTRoleResponse
    AssociateHealthCheckRequest.add_member(:protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionId, name: "ProtectionId", traits: {"smithy.api#required" => {}}))
    AssociateHealthCheckRequest.add_member(:health_check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckArn, name: "HealthCheckArn", traits: {"smithy.api#required" => {}}))
    AssociateHealthCheckRequest.type = Types::AssociateHealthCheckRequest
    AssociateHealthCheckResponse.type = Types::AssociateHealthCheckResponse
    AssociateProactiveEngagementDetailsRequest.add_member(:emergency_contact_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EmergencyContactList, name: "EmergencyContactList", traits: {"smithy.api#required" => {}}))
    AssociateProactiveEngagementDetailsRequest.type = Types::AssociateProactiveEngagementDetailsRequest
    AssociateProactiveEngagementDetailsResponse.type = Types::AssociateProactiveEngagementDetailsResponse
    AttackDetail.add_member(:attack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackId, name: "AttackId"))
    AttackDetail.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    AttackDetail.add_member(:sub_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: SubResourceSummaryList, name: "SubResources"))
    AttackDetail.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackTimestamp, name: "StartTime"))
    AttackDetail.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackTimestamp, name: "EndTime"))
    AttackDetail.add_member(:attack_counters, ::Smithy::Schema::Shapes::MemberShape.new(target: SummarizedCounterList, name: "AttackCounters"))
    AttackDetail.add_member(:attack_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackProperties, name: "AttackProperties"))
    AttackDetail.add_member(:mitigations, ::Smithy::Schema::Shapes::MemberShape.new(target: MitigationList, name: "Mitigations"))
    AttackDetail.type = Types::AttackDetail
    AttackLayer.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK", traits: {"smithy.api#enumValue" => "NETWORK"}))
    AttackLayer.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    AttackProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackProperty, name: "member"))
    AttackProperty.add_member(:attack_layer, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackLayer, name: "AttackLayer"))
    AttackProperty.add_member(:attack_property_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackPropertyIdentifier, name: "AttackPropertyIdentifier"))
    AttackProperty.add_member(:top_contributors, ::Smithy::Schema::Shapes::MemberShape.new(target: TopContributors, name: "TopContributors"))
    AttackProperty.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: Unit, name: "Unit"))
    AttackProperty.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Total", traits: {"smithy.api#default" => 0}))
    AttackProperty.type = Types::AttackProperty
    AttackPropertyIdentifier.add_member(:destination_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESTINATION_URL", traits: {"smithy.api#enumValue" => "DESTINATION_URL"}))
    AttackPropertyIdentifier.add_member(:referrer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFERRER", traits: {"smithy.api#enumValue" => "REFERRER"}))
    AttackPropertyIdentifier.add_member(:source_asn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_ASN", traits: {"smithy.api#enumValue" => "SOURCE_ASN"}))
    AttackPropertyIdentifier.add_member(:source_country, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_COUNTRY", traits: {"smithy.api#enumValue" => "SOURCE_COUNTRY"}))
    AttackPropertyIdentifier.add_member(:source_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_IP_ADDRESS", traits: {"smithy.api#enumValue" => "SOURCE_IP_ADDRESS"}))
    AttackPropertyIdentifier.add_member(:source_user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_USER_AGENT", traits: {"smithy.api#enumValue" => "SOURCE_USER_AGENT"}))
    AttackPropertyIdentifier.add_member(:wordpress_pingback_reflector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORDPRESS_PINGBACK_REFLECTOR", traits: {"smithy.api#enumValue" => "WORDPRESS_PINGBACK_REFLECTOR"}))
    AttackPropertyIdentifier.add_member(:wordpress_pingback_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORDPRESS_PINGBACK_SOURCE", traits: {"smithy.api#enumValue" => "WORDPRESS_PINGBACK_SOURCE"}))
    AttackStatisticsDataItem.add_member(:attack_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackVolume, name: "AttackVolume"))
    AttackStatisticsDataItem.add_member(:attack_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AttackCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AttackStatisticsDataItem.type = Types::AttackStatisticsDataItem
    AttackStatisticsDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackStatisticsDataItem, name: "member"))
    AttackSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackSummary, name: "member"))
    AttackSummary.add_member(:attack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttackId"))
    AttackSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    AttackSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackTimestamp, name: "StartTime"))
    AttackSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackTimestamp, name: "EndTime"))
    AttackSummary.add_member(:attack_vectors, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackVectorDescriptionList, name: "AttackVectors"))
    AttackSummary.type = Types::AttackSummary
    AttackVectorDescription.add_member(:vector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VectorType", traits: {"smithy.api#required" => {}}))
    AttackVectorDescription.type = Types::AttackVectorDescription
    AttackVectorDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackVectorDescription, name: "member"))
    AttackVolume.add_member(:bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackVolumeStatistics, name: "BitsPerSecond"))
    AttackVolume.add_member(:packets_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackVolumeStatistics, name: "PacketsPerSecond"))
    AttackVolume.add_member(:requests_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackVolumeStatistics, name: "RequestsPerSecond"))
    AttackVolume.type = Types::AttackVolume
    AttackVolumeStatistics.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Max", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AttackVolumeStatistics.type = Types::AttackVolumeStatistics
    AutoRenew.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoRenew.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    BlockAction.type = Types::BlockAction
    Contributor.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Contributor.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Value", traits: {"smithy.api#default" => 0}))
    Contributor.type = Types::Contributor
    CountAction.type = Types::CountAction
    CreateProtectionGroupRequest.add_member(:protection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupId, name: "ProtectionGroupId", traits: {"smithy.api#required" => {}}))
    CreateProtectionGroupRequest.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupAggregation, name: "Aggregation", traits: {"smithy.api#required" => {}}))
    CreateProtectionGroupRequest.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupPattern, name: "Pattern", traits: {"smithy.api#required" => {}}))
    CreateProtectionGroupRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceType, name: "ResourceType"))
    CreateProtectionGroupRequest.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupMembers, name: "Members"))
    CreateProtectionGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateProtectionGroupRequest.type = Types::CreateProtectionGroupRequest
    CreateProtectionGroupResponse.type = Types::CreateProtectionGroupResponse
    CreateProtectionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateProtectionRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    CreateProtectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateProtectionRequest.type = Types::CreateProtectionRequest
    CreateProtectionResponse.add_member(:protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionId, name: "ProtectionId"))
    CreateProtectionResponse.type = Types::CreateProtectionResponse
    CreateSubscriptionRequest.type = Types::CreateSubscriptionRequest
    CreateSubscriptionResponse.type = Types::CreateSubscriptionResponse
    DeleteProtectionGroupRequest.add_member(:protection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupId, name: "ProtectionGroupId", traits: {"smithy.api#required" => {}}))
    DeleteProtectionGroupRequest.type = Types::DeleteProtectionGroupRequest
    DeleteProtectionGroupResponse.type = Types::DeleteProtectionGroupResponse
    DeleteProtectionRequest.add_member(:protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionId, name: "ProtectionId", traits: {"smithy.api#required" => {}}))
    DeleteProtectionRequest.type = Types::DeleteProtectionRequest
    DeleteProtectionResponse.type = Types::DeleteProtectionResponse
    DeleteSubscriptionRequest.type = Types::DeleteSubscriptionRequest
    DeleteSubscriptionResponse.type = Types::DeleteSubscriptionResponse
    DescribeAttackRequest.add_member(:attack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackId, name: "AttackId", traits: {"smithy.api#required" => {}}))
    DescribeAttackRequest.type = Types::DescribeAttackRequest
    DescribeAttackResponse.add_member(:attack, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackDetail, name: "Attack"))
    DescribeAttackResponse.type = Types::DescribeAttackResponse
    DescribeAttackStatisticsRequest.type = Types::DescribeAttackStatisticsRequest
    DescribeAttackStatisticsResponse.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "TimeRange", traits: {"smithy.api#required" => {}}))
    DescribeAttackStatisticsResponse.add_member(:data_items, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackStatisticsDataList, name: "DataItems", traits: {"smithy.api#required" => {}}))
    DescribeAttackStatisticsResponse.type = Types::DescribeAttackStatisticsResponse
    DescribeDRTAccessRequest.type = Types::DescribeDRTAccessRequest
    DescribeDRTAccessResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribeDRTAccessResponse.add_member(:log_bucket_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LogBucketList, name: "LogBucketList"))
    DescribeDRTAccessResponse.type = Types::DescribeDRTAccessResponse
    DescribeEmergencyContactSettingsRequest.type = Types::DescribeEmergencyContactSettingsRequest
    DescribeEmergencyContactSettingsResponse.add_member(:emergency_contact_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EmergencyContactList, name: "EmergencyContactList"))
    DescribeEmergencyContactSettingsResponse.type = Types::DescribeEmergencyContactSettingsResponse
    DescribeProtectionGroupRequest.add_member(:protection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupId, name: "ProtectionGroupId", traits: {"smithy.api#required" => {}}))
    DescribeProtectionGroupRequest.type = Types::DescribeProtectionGroupRequest
    DescribeProtectionGroupResponse.add_member(:protection_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroup, name: "ProtectionGroup", traits: {"smithy.api#required" => {}}))
    DescribeProtectionGroupResponse.type = Types::DescribeProtectionGroupResponse
    DescribeProtectionRequest.add_member(:protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionId, name: "ProtectionId"))
    DescribeProtectionRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    DescribeProtectionRequest.type = Types::DescribeProtectionRequest
    DescribeProtectionResponse.add_member(:protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Protection, name: "Protection"))
    DescribeProtectionResponse.type = Types::DescribeProtectionResponse
    DescribeSubscriptionRequest.type = Types::DescribeSubscriptionRequest
    DescribeSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: Subscription, name: "Subscription"))
    DescribeSubscriptionResponse.type = Types::DescribeSubscriptionResponse
    DisableApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DisableApplicationLayerAutomaticResponseRequest.type = Types::DisableApplicationLayerAutomaticResponseRequest
    DisableApplicationLayerAutomaticResponseResponse.type = Types::DisableApplicationLayerAutomaticResponseResponse
    DisableProactiveEngagementRequest.type = Types::DisableProactiveEngagementRequest
    DisableProactiveEngagementResponse.type = Types::DisableProactiveEngagementResponse
    DisassociateDRTLogBucketRequest.add_member(:log_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: LogBucket, name: "LogBucket", traits: {"smithy.api#required" => {}}))
    DisassociateDRTLogBucketRequest.type = Types::DisassociateDRTLogBucketRequest
    DisassociateDRTLogBucketResponse.type = Types::DisassociateDRTLogBucketResponse
    DisassociateDRTRoleRequest.type = Types::DisassociateDRTRoleRequest
    DisassociateDRTRoleResponse.type = Types::DisassociateDRTRoleResponse
    DisassociateHealthCheckRequest.add_member(:protection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionId, name: "ProtectionId", traits: {"smithy.api#required" => {}}))
    DisassociateHealthCheckRequest.add_member(:health_check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckArn, name: "HealthCheckArn", traits: {"smithy.api#required" => {}}))
    DisassociateHealthCheckRequest.type = Types::DisassociateHealthCheckRequest
    DisassociateHealthCheckResponse.type = Types::DisassociateHealthCheckResponse
    EmergencyContact.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    EmergencyContact.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "PhoneNumber"))
    EmergencyContact.add_member(:contact_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactNotes, name: "ContactNotes"))
    EmergencyContact.type = Types::EmergencyContact
    EmergencyContactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EmergencyContact, name: "member"))
    EnableApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    EnableApplicationLayerAutomaticResponseRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseAction, name: "Action", traits: {"smithy.api#required" => {}}))
    EnableApplicationLayerAutomaticResponseRequest.type = Types::EnableApplicationLayerAutomaticResponseRequest
    EnableApplicationLayerAutomaticResponseResponse.type = Types::EnableApplicationLayerAutomaticResponseResponse
    EnableProactiveEngagementRequest.type = Types::EnableProactiveEngagementRequest
    EnableProactiveEngagementResponse.type = Types::EnableProactiveEngagementResponse
    GetSubscriptionStateRequest.type = Types::GetSubscriptionStateRequest
    GetSubscriptionStateResponse.add_member(:subscription_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionState, name: "SubscriptionState", traits: {"smithy.api#required" => {}}))
    GetSubscriptionStateResponse.type = Types::GetSubscriptionStateResponse
    HealthCheckIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckId, name: "member"))
    InclusionProtectionFilters.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnFilters, name: "ResourceArns"))
    InclusionProtectionFilters.add_member(:protection_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionNameFilters, name: "ProtectionNames"))
    InclusionProtectionFilters.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceTypeFilters, name: "ResourceTypes"))
    InclusionProtectionFilters.type = Types::InclusionProtectionFilters
    InclusionProtectionGroupFilters.add_member(:protection_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupIdFilters, name: "ProtectionGroupIds"))
    InclusionProtectionGroupFilters.add_member(:patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupPatternFilters, name: "Patterns"))
    InclusionProtectionGroupFilters.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceTypeFilters, name: "ResourceTypes"))
    InclusionProtectionGroupFilters.add_member(:aggregations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupAggregationFilters, name: "Aggregations"))
    InclusionProtectionGroupFilters.type = Types::InclusionProtectionGroupFilters
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalErrorException.type = Types::InternalErrorException
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidPaginationTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidParameterException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    InvalidParameterException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fields"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidResourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidResourceException.type = Types::InvalidResourceException
    Limit.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    Limit.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Max", traits: {"smithy.api#default" => 0}))
    Limit.type = Types::Limit
    Limits.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "member"))
    LimitsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitsExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitType, name: "Type"))
    LimitsExceededException.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitNumber, name: "Limit", traits: {"smithy.api#default" => 0}))
    LimitsExceededException.type = Types::LimitsExceededException
    ListAttacksRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnFilterList, name: "ResourceArns"))
    ListAttacksRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "StartTime"))
    ListAttacksRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "EndTime"))
    ListAttacksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAttacksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAttacksRequest.type = Types::ListAttacksRequest
    ListAttacksResponse.add_member(:attack_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AttackSummaries, name: "AttackSummaries"))
    ListAttacksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListAttacksResponse.type = Types::ListAttacksResponse
    ListProtectionGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListProtectionGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListProtectionGroupsRequest.add_member(:inclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: InclusionProtectionGroupFilters, name: "InclusionFilters"))
    ListProtectionGroupsRequest.type = Types::ListProtectionGroupsRequest
    ListProtectionGroupsResponse.add_member(:protection_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroups, name: "ProtectionGroups", traits: {"smithy.api#required" => {}}))
    ListProtectionGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListProtectionGroupsResponse.type = Types::ListProtectionGroupsResponse
    ListProtectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListProtectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListProtectionsRequest.add_member(:inclusion_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: InclusionProtectionFilters, name: "InclusionFilters"))
    ListProtectionsRequest.type = Types::ListProtectionsRequest
    ListProtectionsResponse.add_member(:protections, ::Smithy::Schema::Shapes::MemberShape.new(target: Protections, name: "Protections"))
    ListProtectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListProtectionsResponse.type = Types::ListProtectionsResponse
    ListResourcesInProtectionGroupRequest.add_member(:protection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupId, name: "ProtectionGroupId", traits: {"smithy.api#required" => {}}))
    ListResourcesInProtectionGroupRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListResourcesInProtectionGroupRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResourcesInProtectionGroupRequest.type = Types::ListResourcesInProtectionGroupRequest
    ListResourcesInProtectionGroupResponse.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "ResourceArns", traits: {"smithy.api#required" => {}}))
    ListResourcesInProtectionGroupResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListResourcesInProtectionGroupResponse.type = Types::ListResourcesInProtectionGroupResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LockedSubscriptionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LockedSubscriptionException.type = Types::LockedSubscriptionException
    LogBucketList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogBucket, name: "member"))
    Mitigation.add_member(:mitigation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MitigationName"))
    Mitigation.type = Types::Mitigation
    MitigationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Mitigation, name: "member"))
    NoAssociatedRoleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoAssociatedRoleException.type = Types::NoAssociatedRoleException
    OptimisticLockException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    OptimisticLockException.type = Types::OptimisticLockException
    ProactiveEngagementStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ProactiveEngagementStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ProactiveEngagementStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ProtectedResourceType.add_member(:cloudfront_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFRONT_DISTRIBUTION", traits: {"smithy.api#enumValue" => "CLOUDFRONT_DISTRIBUTION"}))
    ProtectedResourceType.add_member(:route_53_hosted_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROUTE_53_HOSTED_ZONE", traits: {"smithy.api#enumValue" => "ROUTE_53_HOSTED_ZONE"}))
    ProtectedResourceType.add_member(:elastic_ip_allocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC_IP_ALLOCATION", traits: {"smithy.api#enumValue" => "ELASTIC_IP_ALLOCATION"}))
    ProtectedResourceType.add_member(:classic_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLASSIC_LOAD_BALANCER", traits: {"smithy.api#enumValue" => "CLASSIC_LOAD_BALANCER"}))
    ProtectedResourceType.add_member(:application_load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_LOAD_BALANCER", traits: {"smithy.api#enumValue" => "APPLICATION_LOAD_BALANCER"}))
    ProtectedResourceType.add_member(:global_accelerator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLOBAL_ACCELERATOR", traits: {"smithy.api#enumValue" => "GLOBAL_ACCELERATOR"}))
    ProtectedResourceTypeFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceType, name: "member"))
    Protection.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionId, name: "Id"))
    Protection.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionName, name: "Name"))
    Protection.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    Protection.add_member(:health_check_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckIds, name: "HealthCheckIds"))
    Protection.add_member(:protection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProtectionArn"))
    Protection.add_member(:application_layer_automatic_response_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLayerAutomaticResponseConfiguration, name: "ApplicationLayerAutomaticResponseConfiguration"))
    Protection.type = Types::Protection
    ProtectionGroup.add_member(:protection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupId, name: "ProtectionGroupId", traits: {"smithy.api#required" => {}}))
    ProtectionGroup.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupAggregation, name: "Aggregation", traits: {"smithy.api#required" => {}}))
    ProtectionGroup.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupPattern, name: "Pattern", traits: {"smithy.api#required" => {}}))
    ProtectionGroup.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceType, name: "ResourceType"))
    ProtectionGroup.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupMembers, name: "Members", traits: {"smithy.api#required" => {}}))
    ProtectionGroup.add_member(:protection_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProtectionGroupArn"))
    ProtectionGroup.type = Types::ProtectionGroup
    ProtectionGroupAggregation.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM", traits: {"smithy.api#enumValue" => "SUM"}))
    ProtectionGroupAggregation.add_member(:mean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEAN", traits: {"smithy.api#enumValue" => "MEAN"}))
    ProtectionGroupAggregation.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX", traits: {"smithy.api#enumValue" => "MAX"}))
    ProtectionGroupAggregationFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupAggregation, name: "member"))
    ProtectionGroupArbitraryPatternLimits.add_member(:max_members, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxMembers", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ProtectionGroupArbitraryPatternLimits.type = Types::ProtectionGroupArbitraryPatternLimits
    ProtectionGroupIdFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupId, name: "member"))
    ProtectionGroupLimits.add_member(:max_protection_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "MaxProtectionGroups", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ProtectionGroupLimits.add_member(:pattern_type_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupPatternTypeLimits, name: "PatternTypeLimits", traits: {"smithy.api#required" => {}}))
    ProtectionGroupLimits.type = Types::ProtectionGroupLimits
    ProtectionGroupMembers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ProtectionGroupPattern.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ProtectionGroupPattern.add_member(:arbitrary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARBITRARY", traits: {"smithy.api#enumValue" => "ARBITRARY"}))
    ProtectionGroupPattern.add_member(:by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BY_RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "BY_RESOURCE_TYPE"}))
    ProtectionGroupPatternFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupPattern, name: "member"))
    ProtectionGroupPatternTypeLimits.add_member(:arbitrary_pattern_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupArbitraryPatternLimits, name: "ArbitraryPatternLimits", traits: {"smithy.api#required" => {}}))
    ProtectionGroupPatternTypeLimits.type = Types::ProtectionGroupPatternTypeLimits
    ProtectionGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroup, name: "member"))
    ProtectionLimits.add_member(:protected_resource_type_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: Limits, name: "ProtectedResourceTypeLimits", traits: {"smithy.api#required" => {}}))
    ProtectionLimits.type = Types::ProtectionLimits
    ProtectionNameFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionName, name: "member"))
    Protections.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Protection, name: "member"))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceAlreadyExistsException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceArnFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ResourceArnFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ResourceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseAction.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockAction, name: "Block"))
    ResponseAction.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: CountAction, name: "Count"))
    ResponseAction.type = Types::ResponseAction
    SubResourceSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SubResourceType, name: "Type"))
    SubResourceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    SubResourceSummary.add_member(:attack_vectors, ::Smithy::Schema::Shapes::MemberShape.new(target: SummarizedAttackVectorList, name: "AttackVectors"))
    SubResourceSummary.add_member(:counters, ::Smithy::Schema::Shapes::MemberShape.new(target: SummarizedCounterList, name: "Counters"))
    SubResourceSummary.type = Types::SubResourceSummary
    SubResourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubResourceSummary, name: "member"))
    SubResourceType.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP", traits: {"smithy.api#enumValue" => "IP"}))
    SubResourceType.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    Subscription.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    Subscription.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    Subscription.add_member(:time_commitment_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationInSeconds, name: "TimeCommitmentInSeconds", traits: {"smithy.api#default" => 0}))
    Subscription.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRenew, name: "AutoRenew"))
    Subscription.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: Limits, name: "Limits"))
    Subscription.add_member(:proactive_engagement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProactiveEngagementStatus, name: "ProactiveEngagementStatus"))
    Subscription.add_member(:subscription_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionLimits, name: "SubscriptionLimits", traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SubscriptionArn"))
    Subscription.type = Types::Subscription
    SubscriptionLimits.add_member(:protection_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionLimits, name: "ProtectionLimits", traits: {"smithy.api#required" => {}}))
    SubscriptionLimits.add_member(:protection_group_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupLimits, name: "ProtectionGroupLimits", traits: {"smithy.api#required" => {}}))
    SubscriptionLimits.type = Types::SubscriptionLimits
    SubscriptionState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SubscriptionState.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    SummarizedAttackVector.add_member(:vector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VectorType", traits: {"smithy.api#required" => {}}))
    SummarizedAttackVector.add_member(:vector_counters, ::Smithy::Schema::Shapes::MemberShape.new(target: SummarizedCounterList, name: "VectorCounters"))
    SummarizedAttackVector.type = Types::SummarizedAttackVector
    SummarizedAttackVectorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SummarizedAttackVector, name: "member"))
    SummarizedCounter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    SummarizedCounter.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Max", traits: {"smithy.api#default" => 0}))
    SummarizedCounter.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Average", traits: {"smithy.api#default" => 0}))
    SummarizedCounter.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Sum", traits: {"smithy.api#default" => 0}))
    SummarizedCounter.add_member(:n, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "N", traits: {"smithy.api#default" => 0}))
    SummarizedCounter.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Unit"))
    SummarizedCounter.type = Types::SummarizedCounter
    SummarizedCounterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SummarizedCounter, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TimeRange.add_member(:from_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FromInclusive"))
    TimeRange.add_member(:to_exclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ToExclusive"))
    TimeRange.type = Types::TimeRange
    TopContributors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Contributor, name: "member"))
    Unit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS", traits: {"smithy.api#enumValue" => "BITS"}))
    Unit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES", traits: {"smithy.api#enumValue" => "BYTES"}))
    Unit.add_member(:packets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PACKETS", traits: {"smithy.api#enumValue" => "PACKETS"}))
    Unit.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTS", traits: {"smithy.api#enumValue" => "REQUESTS"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationLayerAutomaticResponseRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UpdateApplicationLayerAutomaticResponseRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseAction, name: "Action", traits: {"smithy.api#required" => {}}))
    UpdateApplicationLayerAutomaticResponseRequest.type = Types::UpdateApplicationLayerAutomaticResponseRequest
    UpdateApplicationLayerAutomaticResponseResponse.type = Types::UpdateApplicationLayerAutomaticResponseResponse
    UpdateEmergencyContactSettingsRequest.add_member(:emergency_contact_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EmergencyContactList, name: "EmergencyContactList"))
    UpdateEmergencyContactSettingsRequest.type = Types::UpdateEmergencyContactSettingsRequest
    UpdateEmergencyContactSettingsResponse.type = Types::UpdateEmergencyContactSettingsResponse
    UpdateProtectionGroupRequest.add_member(:protection_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupId, name: "ProtectionGroupId", traits: {"smithy.api#required" => {}}))
    UpdateProtectionGroupRequest.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupAggregation, name: "Aggregation", traits: {"smithy.api#required" => {}}))
    UpdateProtectionGroupRequest.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupPattern, name: "Pattern", traits: {"smithy.api#required" => {}}))
    UpdateProtectionGroupRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedResourceType, name: "ResourceType"))
    UpdateProtectionGroupRequest.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionGroupMembers, name: "Members"))
    UpdateProtectionGroupRequest.type = Types::UpdateProtectionGroupRequest
    UpdateProtectionGroupResponse.type = Types::UpdateProtectionGroupResponse
    UpdateSubscriptionRequest.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRenew, name: "AutoRenew"))
    UpdateSubscriptionRequest.type = Types::UpdateSubscriptionRequest
    UpdateSubscriptionResponse.type = Types::UpdateSubscriptionResponse
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))

    AWSShield20160616 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.shield#AWSShield_20160616"
      service.name = "AWSShield20160616"
      service.version = "2016-06-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Shield", "arnNamespace" => "shield", "cloudFormationName" => "Shield", "cloudTrailEventSource" => "shield.amazonaws.com", "endpointPrefix" => "shield"}, "aws.auth#sigv4" => {"name" => "shield"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Shield", "smithy.api#xmlNamespace" => {"uri" => "http://ddp.amazonaws.com/doc/2016-06-02/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://shield.us-east-1.amazonaws.com", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "shield", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://shield-fips.us-east-1.amazonaws.com", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "shield", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://shield-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://shield-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://shield.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://shield.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 15, "nodes" => "/////wAAAAH/////AAAAAAAAAA4AAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAkAAAAGAAAABAAAAAgAAAAHAAAABgX14QQF9eEMAAAABQX14QoF9eELAAAABAAAAAwAAAAKAAAABgX14QUAAAALAAAABwX14QgF9eEJAAAABQAAAA0F9eEHAAAABwX14QYF9eEHAAAAAwX14QEAAAAPAAAABAX14QIF9eED"}}
      service.add_operation(:associate_drt_log_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#AssociateDRTLogBucket"
        operation.name = "AssociateDRTLogBucket"
        operation.input = AssociateDRTLogBucketRequest
        operation.output = AssociateDRTLogBucketResponse
        operation.errors << AccessDeniedForDependencyException
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << LimitsExceededException
        operation.errors << NoAssociatedRoleException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_drt_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#AssociateDRTRole"
        operation.name = "AssociateDRTRole"
        operation.input = AssociateDRTRoleRequest
        operation.output = AssociateDRTRoleResponse
        operation.errors << AccessDeniedForDependencyException
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_health_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#AssociateHealthCheck"
        operation.name = "AssociateHealthCheck"
        operation.input = AssociateHealthCheckRequest
        operation.output = AssociateHealthCheckResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidResourceException
        operation.errors << LimitsExceededException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_proactive_engagement_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#AssociateProactiveEngagementDetails"
        operation.name = "AssociateProactiveEngagementDetails"
        operation.input = AssociateProactiveEngagementDetailsRequest
        operation.output = AssociateProactiveEngagementDetailsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#CreateProtection"
        operation.name = "CreateProtection"
        operation.input = CreateProtectionRequest
        operation.output = CreateProtectionResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << InvalidResourceException
        operation.errors << LimitsExceededException
        operation.errors << OptimisticLockException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_protection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#CreateProtectionGroup"
        operation.name = "CreateProtectionGroup"
        operation.input = CreateProtectionGroupRequest
        operation.output = CreateProtectionGroupResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LimitsExceededException
        operation.errors << OptimisticLockException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#CreateSubscription"
        operation.name = "CreateSubscription"
        operation.input = CreateSubscriptionRequest
        operation.output = CreateSubscriptionResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:delete_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DeleteProtection"
        operation.name = "DeleteProtection"
        operation.input = DeleteProtectionRequest
        operation.output = DeleteProtectionResponse
        operation.errors << InternalErrorException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_protection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DeleteProtectionGroup"
        operation.name = "DeleteProtectionGroup"
        operation.input = DeleteProtectionGroupRequest
        operation.output = DeleteProtectionGroupResponse
        operation.errors << InternalErrorException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DeleteSubscription"
        operation.name = "DeleteSubscription"
        operation.input = DeleteSubscriptionRequest
        operation.output = DeleteSubscriptionResponse
        operation.errors << InternalErrorException
        operation.errors << LockedSubscriptionException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:describe_attack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeAttack"
        operation.name = "DescribeAttack"
        operation.input = DescribeAttackRequest
        operation.output = DescribeAttackResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:describe_attack_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeAttackStatistics"
        operation.name = "DescribeAttackStatistics"
        operation.input = DescribeAttackStatisticsRequest
        operation.output = DescribeAttackStatisticsResponse
        operation.errors << InternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:describe_drt_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeDRTAccess"
        operation.name = "DescribeDRTAccess"
        operation.input = DescribeDRTAccessRequest
        operation.output = DescribeDRTAccessResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_emergency_contact_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeEmergencyContactSettings"
        operation.name = "DescribeEmergencyContactSettings"
        operation.input = DescribeEmergencyContactSettingsRequest
        operation.output = DescribeEmergencyContactSettingsResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeProtection"
        operation.name = "DescribeProtection"
        operation.input = DescribeProtectionRequest
        operation.output = DescribeProtectionResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_protection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeProtectionGroup"
        operation.name = "DescribeProtectionGroup"
        operation.input = DescribeProtectionGroupRequest
        operation.output = DescribeProtectionGroupResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DescribeSubscription"
        operation.name = "DescribeSubscription"
        operation.input = DescribeSubscriptionRequest
        operation.output = DescribeSubscriptionResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disable_application_layer_automatic_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisableApplicationLayerAutomaticResponse"
        operation.name = "DisableApplicationLayerAutomaticResponse"
        operation.input = DisableApplicationLayerAutomaticResponseRequest
        operation.output = DisableApplicationLayerAutomaticResponseResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disable_proactive_engagement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisableProactiveEngagement"
        operation.name = "DisableProactiveEngagement"
        operation.input = DisableProactiveEngagementRequest
        operation.output = DisableProactiveEngagementResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_drt_log_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisassociateDRTLogBucket"
        operation.name = "DisassociateDRTLogBucket"
        operation.input = DisassociateDRTLogBucketRequest
        operation.output = DisassociateDRTLogBucketResponse
        operation.errors << AccessDeniedForDependencyException
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << NoAssociatedRoleException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_drt_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisassociateDRTRole"
        operation.name = "DisassociateDRTRole"
        operation.input = DisassociateDRTRoleRequest
        operation.output = DisassociateDRTRoleResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_health_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#DisassociateHealthCheck"
        operation.name = "DisassociateHealthCheck"
        operation.input = DisassociateHealthCheckRequest
        operation.output = DisassociateHealthCheckResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidResourceException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:enable_application_layer_automatic_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#EnableApplicationLayerAutomaticResponse"
        operation.name = "EnableApplicationLayerAutomaticResponse"
        operation.input = EnableApplicationLayerAutomaticResponseRequest
        operation.output = EnableApplicationLayerAutomaticResponseResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << LimitsExceededException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:enable_proactive_engagement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#EnableProactiveEngagement"
        operation.name = "EnableProactiveEngagement"
        operation.input = EnableProactiveEngagementRequest
        operation.output = EnableProactiveEngagementResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_subscription_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#GetSubscriptionState"
        operation.name = "GetSubscriptionState"
        operation.input = GetSubscriptionStateRequest
        operation.output = GetSubscriptionStateResponse
        operation.errors << InternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:list_attacks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListAttacks"
        operation.name = "ListAttacks"
        operation.input = ListAttacksRequest
        operation.output = ListAttacksResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListAttacksSuccess", "params" => {}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListAttacks.new
      end)
      service.add_operation(:list_protection_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListProtectionGroups"
        operation.name = "ListProtectionGroups"
        operation.input = ListProtectionGroupsRequest
        operation.output = ListProtectionGroupsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidPaginationTokenException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProtectionGroups.new
      end)
      service.add_operation(:list_protections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListProtections"
        operation.name = "ListProtections"
        operation.input = ListProtectionsRequest
        operation.output = ListProtectionsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidPaginationTokenException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProtections.new
      end)
      service.add_operation(:list_resources_in_protection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListResourcesInProtectionGroup"
        operation.name = "ListResourcesInProtectionGroup"
        operation.input = ListResourcesInProtectionGroupRequest
        operation.output = ListResourcesInProtectionGroupResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidPaginationTokenException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourcesInProtectionGroup.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidResourceException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidResourceException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidResourceException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_application_layer_automatic_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UpdateApplicationLayerAutomaticResponse"
        operation.name = "UpdateApplicationLayerAutomaticResponse"
        operation.input = UpdateApplicationLayerAutomaticResponseRequest
        operation.output = UpdateApplicationLayerAutomaticResponseResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidParameterException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_emergency_contact_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UpdateEmergencyContactSettings"
        operation.name = "UpdateEmergencyContactSettings"
        operation.input = UpdateEmergencyContactSettingsRequest
        operation.output = UpdateEmergencyContactSettingsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_protection_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UpdateProtectionGroup"
        operation.name = "UpdateProtectionGroup"
        operation.input = UpdateProtectionGroupRequest
        operation.output = UpdateProtectionGroupResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.shield#UpdateSubscription"
        operation.name = "UpdateSubscription"
        operation.input = UpdateSubscriptionRequest
        operation.output = UpdateSubscriptionResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << LockedSubscriptionException
        operation.errors << OptimisticLockException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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
