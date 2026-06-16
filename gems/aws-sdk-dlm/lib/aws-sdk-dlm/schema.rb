# frozen_string_literal: true

# This is generated code!

module Aws::DLM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#Action", name: "Action")
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ActionList", name: "ActionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#ActionName", name: "ActionName", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}, "smithy.api#pattern" => "^[0-9A-Za-z _-]+$"})
    ArchiveRetainRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#ArchiveRetainRule", name: "ArchiveRetainRule")
    ArchiveRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#ArchiveRule", name: "ArchiveRule")
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#AvailabilityZone", name: "AvailabilityZone", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#pattern" => "^([a-z]+-){2,3}\\d[a-z]$"})
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#AvailabilityZoneList", name: "AvailabilityZoneList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    CmkArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#CmkArn", name: "CmkArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,3}){0,2}:kms:([a-z]+-){2,3}\\d:\\d+:key/"})
    CopyTags = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#CopyTags", name: "CopyTags")
    CopyTagsNullable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#CopyTagsNullable", name: "CopyTagsNullable")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dlm#Count", name: "Count", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    CreateInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dlm#CreateInterval", name: "CreateInterval", traits: {"smithy.api#range" => {"min" => 1}})
    CreateLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#CreateLifecyclePolicyRequest", name: "CreateLifecyclePolicyRequest")
    CreateLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#CreateLifecyclePolicyResponse", name: "CreateLifecyclePolicyResponse")
    CreateRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#CreateRule", name: "CreateRule")
    CronExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#CronExpression", name: "CronExpression", traits: {"smithy.api#length" => {"min" => 17, "max" => 106}, "smithy.api#pattern" => "^cron\\([^\\n]{11,100}\\)$"})
    CrossRegionCopyAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#CrossRegionCopyAction", name: "CrossRegionCopyAction")
    CrossRegionCopyActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#CrossRegionCopyActionList", name: "CrossRegionCopyActionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    CrossRegionCopyDeprecateRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#CrossRegionCopyDeprecateRule", name: "CrossRegionCopyDeprecateRule")
    CrossRegionCopyRetainRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#CrossRegionCopyRetainRule", name: "CrossRegionCopyRetainRule")
    CrossRegionCopyRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#CrossRegionCopyRule", name: "CrossRegionCopyRule")
    CrossRegionCopyRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#CrossRegionCopyRules", name: "CrossRegionCopyRules", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    CrossRegionCopyTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#CrossRegionCopyTarget", name: "CrossRegionCopyTarget")
    CrossRegionCopyTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#CrossRegionCopyTargetList", name: "CrossRegionCopyTargetList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    DefaultPoliciesTypeValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#DefaultPoliciesTypeValues", name: "DefaultPoliciesTypeValues")
    DefaultPolicy = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#DefaultPolicy", name: "DefaultPolicy")
    DefaultPolicyTypeValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#DefaultPolicyTypeValues", name: "DefaultPolicyTypeValues")
    DeleteLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#DeleteLifecyclePolicyRequest", name: "DeleteLifecyclePolicyRequest")
    DeleteLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#DeleteLifecyclePolicyResponse", name: "DeleteLifecyclePolicyResponse")
    DeprecateRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#DeprecateRule", name: "DeprecateRule")
    DescriptionRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#DescriptionRegex", name: "DescriptionRegex", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\p{all}]*$"})
    Encrypted = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#Encrypted", name: "Encrypted")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#EncryptionConfiguration", name: "EncryptionConfiguration")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#ErrorMessage", name: "ErrorMessage")
    EventParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#EventParameters", name: "EventParameters")
    EventSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#EventSource", name: "EventSource")
    EventSourceValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#EventSourceValues", name: "EventSourceValues")
    EventTypeValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#EventTypeValues", name: "EventTypeValues")
    ExcludeBootVolume = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#ExcludeBootVolume", name: "ExcludeBootVolume")
    ExcludeBootVolumes = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#ExcludeBootVolumes", name: "ExcludeBootVolumes")
    ExcludeDataVolumeTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ExcludeDataVolumeTagList", name: "ExcludeDataVolumeTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ExcludeTagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ExcludeTagsList", name: "ExcludeTagsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ExcludeVolumeTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ExcludeVolumeTypesList", name: "ExcludeVolumeTypesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    Exclusions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#Exclusions", name: "Exclusions")
    ExecuteOperationOnScriptFailure = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#ExecuteOperationOnScriptFailure", name: "ExecuteOperationOnScriptFailure")
    ExecutionHandler = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#ExecutionHandler", name: "ExecutionHandler", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^([a-zA-Z0-9_\\-.]{3,128}|[a-zA-Z0-9_\\-.:/]{3,200}|[A-Z0-9_]+)$"})
    ExecutionHandlerServiceValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#ExecutionHandlerServiceValues", name: "ExecutionHandlerServiceValues")
    ExecutionRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#ExecutionRoleArn", name: "ExecutionRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,3}){0,2}:iam::\\d+:role/"})
    ExtendDeletion = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#ExtendDeletion", name: "ExtendDeletion")
    FastRestoreRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#FastRestoreRule", name: "FastRestoreRule")
    GetLifecyclePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#GetLifecyclePoliciesRequest", name: "GetLifecyclePoliciesRequest")
    GetLifecyclePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#GetLifecyclePoliciesResponse", name: "GetLifecyclePoliciesResponse")
    GetLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#GetLifecyclePolicyRequest", name: "GetLifecyclePolicyRequest")
    GetLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#GetLifecyclePolicyResponse", name: "GetLifecyclePolicyResponse")
    GettablePolicyStateValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#GettablePolicyStateValues", name: "GettablePolicyStateValues")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Interval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dlm#Interval", name: "Interval", traits: {"smithy.api#range" => {"min" => 1}})
    IntervalUnitValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#IntervalUnitValues", name: "IntervalUnitValues")
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LifecyclePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#LifecyclePolicy", name: "LifecyclePolicy")
    LifecyclePolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#LifecyclePolicySummary", name: "LifecyclePolicySummary")
    LifecyclePolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#LifecyclePolicySummaryList", name: "LifecyclePolicySummaryList")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LocationValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#LocationValues", name: "LocationValues")
    NoReboot = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dlm#NoReboot", name: "NoReboot")
    Parameter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#Parameter", name: "Parameter")
    ParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ParameterList", name: "ParameterList")
    Parameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#Parameters", name: "Parameters")
    PolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#PolicyArn", name: "PolicyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,3}){0,2}:dlm:[A-Za-z0-9_/.-]{0,63}:\\d+:policy/[0-9A-Za-z_-]{1,128}$"})
    PolicyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#PolicyDescription", name: "PolicyDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[0-9A-Za-z _-]+$"})
    PolicyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#PolicyDetails", name: "PolicyDetails")
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#PolicyId", name: "PolicyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^policy-[a-f0-9]+$"})
    PolicyIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#PolicyIdList", name: "PolicyIdList")
    PolicyLanguageValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#PolicyLanguageValues", name: "PolicyLanguageValues")
    PolicyTypeValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#PolicyTypeValues", name: "PolicyTypeValues")
    ResourceLocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ResourceLocationList", name: "ResourceLocationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResourceLocationValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#ResourceLocationValues", name: "ResourceLocationValues")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTypeValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#ResourceTypeValues", name: "ResourceTypeValues")
    ResourceTypeValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ResourceTypeValuesList", name: "ResourceTypeValuesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RetainInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dlm#RetainInterval", name: "RetainInterval", traits: {"smithy.api#range" => {"min" => 1}})
    RetainRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#RetainRule", name: "RetainRule")
    RetentionArchiveTier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#RetentionArchiveTier", name: "RetentionArchiveTier")
    RetentionIntervalUnitValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#RetentionIntervalUnitValues", name: "RetentionIntervalUnitValues")
    Schedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#Schedule", name: "Schedule")
    ScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ScheduleList", name: "ScheduleList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    ScheduleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#ScheduleName", name: "ScheduleName", traits: {"smithy.api#length" => {"min" => 0, "max" => 120}, "smithy.api#pattern" => "^[0-9A-Za-z _-]+$"})
    Script = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#Script", name: "Script")
    ScriptExecutionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dlm#ScriptExecutionTimeout", name: "ScriptExecutionTimeout", traits: {"smithy.api#range" => {"min" => 10, "max" => 120}})
    ScriptMaximumRetryCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dlm#ScriptMaximumRetryCount", name: "ScriptMaximumRetryCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 3}})
    ScriptsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ScriptsList", name: "ScriptsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    SettablePolicyStateValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#SettablePolicyStateValues", name: "SettablePolicyStateValues")
    ShareRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#ShareRule", name: "ShareRule")
    ShareRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ShareRules", name: "ShareRules", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ShareTargetAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#ShareTargetAccountList", name: "ShareTargetAccountList", traits: {"smithy.api#length" => {"min" => 1}})
    SnapshotOwnerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#SnapshotOwnerList", name: "SnapshotOwnerList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    StageValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dlm#StageValues", name: "StageValues")
    StagesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#StagesList", name: "StagesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    StandardTierRetainRuleCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dlm#StandardTierRetainRuleCount", name: "StandardTierRetainRuleCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    StandardTierRetainRuleInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dlm#StandardTierRetainRuleInterval", name: "StandardTierRetainRuleInterval", traits: {"smithy.api#range" => {"min" => 0}})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\p{all}]*$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\p{all}]*$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#Tag", name: "Tag")
    TagFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#TagFilter", name: "TagFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{all}]*$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dlm#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{all}]*$"})
    TagsToAddFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#TagsToAddFilterList", name: "TagsToAddFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagsToAddList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#TagsToAddList", name: "TagsToAddList", traits: {"smithy.api#length" => {"min" => 0, "max" => 45}})
    Target = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#Target", name: "Target", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\w:\\-\\/\\*]+$"})
    TargetRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#TargetRegion", name: "TargetRegion", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#pattern" => "^([a-z]+-){2,3}\\d$"})
    TargetTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#TargetTagList", name: "TargetTagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TargetTagsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#TargetTagsFilterList", name: "TargetTagsFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Time = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#Time", name: "Time", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"})
    TimesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#TimesList", name: "TimesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dlm#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#UpdateLifecyclePolicyRequest", name: "UpdateLifecyclePolicyRequest")
    UpdateLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dlm#UpdateLifecyclePolicyResponse", name: "UpdateLifecyclePolicyResponse")
    VariableTagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dlm#VariableTagsList", name: "VariableTagsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 45}})
    VolumeTypeValues = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dlm#VolumeTypeValues", name: "VolumeTypeValues")

    Action.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Action.add_member(:cross_region_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyActionList, location_name: "CrossRegionCopy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Action.type = Types::Action
    ActionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Action)
    ArchiveRetainRule.add_member(:retention_archive_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionArchiveTier, location_name: "RetentionArchiveTier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ArchiveRetainRule.type = Types::ArchiveRetainRule
    ArchiveRule.add_member(:retain_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveRetainRule, location_name: "RetainRule", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ArchiveRule.type = Types::ArchiveRule
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone)
    CreateLifecyclePolicyRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleArn, location_name: "ExecutionRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, location_name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SettablePolicyStateValues, location_name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDetails, location_name: "PolicyDetails"))
    CreateLifecyclePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    CreateLifecyclePolicyRequest.add_member(:default_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultPolicyTypeValues, location_name: "DefaultPolicy"))
    CreateLifecyclePolicyRequest.add_member(:create_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateInterval, location_name: "CreateInterval"))
    CreateLifecyclePolicyRequest.add_member(:retain_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainInterval, location_name: "RetainInterval"))
    CreateLifecyclePolicyRequest.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyTagsNullable, location_name: "CopyTags"))
    CreateLifecyclePolicyRequest.add_member(:extend_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendDeletion, location_name: "ExtendDeletion"))
    CreateLifecyclePolicyRequest.add_member(:cross_region_copy_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyTargetList, location_name: "CrossRegionCopyTargets"))
    CreateLifecyclePolicyRequest.add_member(:exclusions, ::Smithy::Schema::Shapes::MemberShape.new(target: Exclusions, location_name: "Exclusions"))
    CreateLifecyclePolicyRequest.type = Types::CreateLifecyclePolicyRequest
    CreateLifecyclePolicyResponse.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "PolicyId"))
    CreateLifecyclePolicyResponse.type = Types::CreateLifecyclePolicyResponse
    CreateRule.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationValues, location_name: "Location"))
    CreateRule.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, location_name: "Interval"))
    CreateRule.add_member(:interval_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntervalUnitValues, location_name: "IntervalUnit"))
    CreateRule.add_member(:times, ::Smithy::Schema::Shapes::MemberShape.new(target: TimesList, location_name: "Times"))
    CreateRule.add_member(:cron_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: CronExpression, location_name: "CronExpression"))
    CreateRule.add_member(:scripts, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptsList, location_name: "Scripts"))
    CreateRule.type = Types::CreateRule
    CrossRegionCopyAction.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "Target", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CrossRegionCopyAction.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, location_name: "EncryptionConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CrossRegionCopyAction.add_member(:retain_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyRetainRule, location_name: "RetainRule"))
    CrossRegionCopyAction.type = Types::CrossRegionCopyAction
    CrossRegionCopyActionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyAction)
    CrossRegionCopyDeprecateRule.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, location_name: "Interval"))
    CrossRegionCopyDeprecateRule.add_member(:interval_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    CrossRegionCopyDeprecateRule.type = Types::CrossRegionCopyDeprecateRule
    CrossRegionCopyRetainRule.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, location_name: "Interval"))
    CrossRegionCopyRetainRule.add_member(:interval_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    CrossRegionCopyRetainRule.type = Types::CrossRegionCopyRetainRule
    CrossRegionCopyRule.add_member(:target_region, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetRegion, location_name: "TargetRegion"))
    CrossRegionCopyRule.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "Target"))
    CrossRegionCopyRule.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Encrypted, location_name: "Encrypted", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CrossRegionCopyRule.add_member(:cmk_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkArn, location_name: "CmkArn"))
    CrossRegionCopyRule.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyTagsNullable, location_name: "CopyTags"))
    CrossRegionCopyRule.add_member(:retain_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyRetainRule, location_name: "RetainRule"))
    CrossRegionCopyRule.add_member(:deprecate_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyDeprecateRule, location_name: "DeprecateRule"))
    CrossRegionCopyRule.type = Types::CrossRegionCopyRule
    CrossRegionCopyRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyRule)
    CrossRegionCopyTarget.add_member(:target_region, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetRegion, location_name: "TargetRegion"))
    CrossRegionCopyTarget.type = Types::CrossRegionCopyTarget
    CrossRegionCopyTargetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyTarget)
    DefaultPoliciesTypeValues.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VOLUME", traits: {"smithy.api#enumValue" => "VOLUME"}))
    DefaultPoliciesTypeValues.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    DefaultPoliciesTypeValues.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    DefaultPolicyTypeValues.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VOLUME", traits: {"smithy.api#enumValue" => "VOLUME"}))
    DefaultPolicyTypeValues.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    DeleteLifecyclePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "PolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.type = Types::DeleteLifecyclePolicyRequest
    DeleteLifecyclePolicyResponse.type = Types::DeleteLifecyclePolicyResponse
    DeprecateRule.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, location_name: "Count"))
    DeprecateRule.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, location_name: "Interval"))
    DeprecateRule.add_member(:interval_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    DeprecateRule.type = Types::DeprecateRule
    EncryptionConfiguration.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Encrypted, location_name: "Encrypted", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:cmk_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkArn, location_name: "CmkArn"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EventParameters.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeValues, location_name: "EventType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventParameters.add_member(:snapshot_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotOwnerList, location_name: "SnapshotOwner", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventParameters.add_member(:description_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionRegex, location_name: "DescriptionRegex", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventParameters.type = Types::EventParameters
    EventSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceValues, location_name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EventSource.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: EventParameters, location_name: "Parameters"))
    EventSource.type = Types::EventSource
    EventSourceValues.add_member(:managed_cwe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED_CWE", traits: {"smithy.api#enumValue" => "MANAGED_CWE"}))
    EventTypeValues.add_member(:share_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARE_SNAPSHOT", traits: {"smithy.api#enumValue" => "shareSnapshot"}))
    ExcludeDataVolumeTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    ExcludeTagsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    ExcludeVolumeTypesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeTypeValues)
    Exclusions.add_member(:exclude_boot_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeBootVolumes, location_name: "ExcludeBootVolumes"))
    Exclusions.add_member(:exclude_volume_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeVolumeTypesList, location_name: "ExcludeVolumeTypes"))
    Exclusions.add_member(:exclude_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeTagsList, location_name: "ExcludeTags"))
    Exclusions.type = Types::Exclusions
    ExecutionHandlerServiceValues.add_member(:aws_systems_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SYSTEMS_MANAGER", traits: {"smithy.api#enumValue" => "AWS_SYSTEMS_MANAGER"}))
    FastRestoreRule.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, location_name: "Count"))
    FastRestoreRule.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, location_name: "Interval"))
    FastRestoreRule.add_member(:interval_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    FastRestoreRule.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, location_name: "AvailabilityZones", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FastRestoreRule.type = Types::FastRestoreRule
    GetLifecyclePoliciesRequest.add_member(:policy_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdList, location_name: "PolicyIds", traits: {"smithy.api#httpQuery" => "policyIds"}))
    GetLifecyclePoliciesRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: GettablePolicyStateValues, location_name: "State", traits: {"smithy.api#httpQuery" => "state"}))
    GetLifecyclePoliciesRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeValuesList, location_name: "ResourceTypes", traits: {"smithy.api#httpQuery" => "resourceTypes"}))
    GetLifecyclePoliciesRequest.add_member(:target_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTagsFilterList, location_name: "TargetTags", traits: {"smithy.api#httpQuery" => "targetTags"}))
    GetLifecyclePoliciesRequest.add_member(:tags_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsToAddFilterList, location_name: "TagsToAdd", traits: {"smithy.api#httpQuery" => "tagsToAdd"}))
    GetLifecyclePoliciesRequest.add_member(:default_policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultPoliciesTypeValues, location_name: "DefaultPolicyType", traits: {"smithy.api#httpQuery" => "defaultPolicyType"}))
    GetLifecyclePoliciesRequest.type = Types::GetLifecyclePoliciesRequest
    GetLifecyclePoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicySummaryList, location_name: "Policies"))
    GetLifecyclePoliciesResponse.type = Types::GetLifecyclePoliciesResponse
    GetLifecyclePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "PolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLifecyclePolicyRequest.type = Types::GetLifecyclePolicyRequest
    GetLifecyclePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicy, location_name: "Policy"))
    GetLifecyclePolicyResponse.type = Types::GetLifecyclePolicyResponse
    GettablePolicyStateValues.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    GettablePolicyStateValues.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    GettablePolicyStateValues.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InternalServerException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    InternalServerException.type = Types::InternalServerException
    IntervalUnitValues.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURS", traits: {"smithy.api#enumValue" => "HOURS"}))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    InvalidRequestException.add_member(:required_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterList, location_name: "RequiredParameters"))
    InvalidRequestException.add_member(:mutually_exclusive_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterList, location_name: "MutuallyExclusiveParameters"))
    InvalidRequestException.type = Types::InvalidRequestException
    LifecyclePolicy.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "PolicyId"))
    LifecyclePolicy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, location_name: "Description"))
    LifecyclePolicy.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: GettablePolicyStateValues, location_name: "State"))
    LifecyclePolicy.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, location_name: "StatusMessage"))
    LifecyclePolicy.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleArn, location_name: "ExecutionRoleArn"))
    LifecyclePolicy.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DateCreated"))
    LifecyclePolicy.add_member(:date_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "DateModified"))
    LifecyclePolicy.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDetails, location_name: "PolicyDetails"))
    LifecyclePolicy.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    LifecyclePolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, location_name: "PolicyArn"))
    LifecyclePolicy.add_member(:default_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultPolicy, location_name: "DefaultPolicy"))
    LifecyclePolicy.type = Types::LifecyclePolicy
    LifecyclePolicySummary.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "PolicyId"))
    LifecyclePolicySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, location_name: "Description"))
    LifecyclePolicySummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: GettablePolicyStateValues, location_name: "State"))
    LifecyclePolicySummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    LifecyclePolicySummary.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeValues, location_name: "PolicyType"))
    LifecyclePolicySummary.add_member(:default_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultPolicy, location_name: "DefaultPolicy"))
    LifecyclePolicySummary.type = Types::LifecyclePolicySummary
    LifecyclePolicySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicySummary)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    LimitExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceType"))
    LimitExceededException.type = Types::LimitExceededException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LocationValues.add_member(:cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUD", traits: {"smithy.api#enumValue" => "CLOUD"}))
    LocationValues.add_member(:outpost_local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OUTPOST_LOCAL", traits: {"smithy.api#enumValue" => "OUTPOST_LOCAL"}))
    LocationValues.add_member(:local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCAL_ZONE", traits: {"smithy.api#enumValue" => "LOCAL_ZONE"}))
    ParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter)
    Parameters.add_member(:exclude_boot_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeBootVolume, location_name: "ExcludeBootVolume"))
    Parameters.add_member(:no_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: NoReboot, location_name: "NoReboot"))
    Parameters.add_member(:exclude_data_volume_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeDataVolumeTagList, location_name: "ExcludeDataVolumeTags"))
    Parameters.type = Types::Parameters
    PolicyDetails.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeValues, location_name: "PolicyType"))
    PolicyDetails.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeValuesList, location_name: "ResourceTypes"))
    PolicyDetails.add_member(:resource_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocationList, location_name: "ResourceLocations"))
    PolicyDetails.add_member(:target_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTagList, location_name: "TargetTags"))
    PolicyDetails.add_member(:schedules, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleList, location_name: "Schedules"))
    PolicyDetails.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, location_name: "Parameters"))
    PolicyDetails.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSource, location_name: "EventSource"))
    PolicyDetails.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, location_name: "Actions"))
    PolicyDetails.add_member(:policy_language, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyLanguageValues, location_name: "PolicyLanguage"))
    PolicyDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeValues, location_name: "ResourceType"))
    PolicyDetails.add_member(:create_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateInterval, location_name: "CreateInterval"))
    PolicyDetails.add_member(:retain_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainInterval, location_name: "RetainInterval"))
    PolicyDetails.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyTagsNullable, location_name: "CopyTags"))
    PolicyDetails.add_member(:cross_region_copy_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyTargetList, location_name: "CrossRegionCopyTargets"))
    PolicyDetails.add_member(:extend_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendDeletion, location_name: "ExtendDeletion"))
    PolicyDetails.add_member(:exclusions, ::Smithy::Schema::Shapes::MemberShape.new(target: Exclusions, location_name: "Exclusions"))
    PolicyDetails.type = Types::PolicyDetails
    PolicyIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId)
    PolicyLanguageValues.add_member(:simplified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIMPLIFIED", traits: {"smithy.api#enumValue" => "SIMPLIFIED"}))
    PolicyLanguageValues.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    PolicyTypeValues.add_member(:ebs_snapshot_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EBS_SNAPSHOT_MANAGEMENT", traits: {"smithy.api#enumValue" => "EBS_SNAPSHOT_MANAGEMENT"}))
    PolicyTypeValues.add_member(:image_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMAGE_MANAGEMENT", traits: {"smithy.api#enumValue" => "IMAGE_MANAGEMENT"}))
    PolicyTypeValues.add_member(:event_based_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT_BASED_POLICY", traits: {"smithy.api#enumValue" => "EVENT_BASED_POLICY"}))
    ResourceLocationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocationValues)
    ResourceLocationValues.add_member(:cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUD", traits: {"smithy.api#enumValue" => "CLOUD"}))
    ResourceLocationValues.add_member(:outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OUTPOST", traits: {"smithy.api#enumValue" => "OUTPOST"}))
    ResourceLocationValues.add_member(:local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCAL_ZONE", traits: {"smithy.api#enumValue" => "LOCAL_ZONE"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdList, location_name: "ResourceIds"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTypeValues.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VOLUME", traits: {"smithy.api#enumValue" => "VOLUME"}))
    ResourceTypeValues.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    ResourceTypeValuesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeValues)
    RetainRule.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardTierRetainRuleCount, location_name: "Count"))
    RetainRule.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardTierRetainRuleInterval, location_name: "Interval"))
    RetainRule.add_member(:interval_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    RetainRule.type = Types::RetainRule
    RetentionArchiveTier.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, location_name: "Count"))
    RetentionArchiveTier.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, location_name: "Interval"))
    RetentionArchiveTier.add_member(:interval_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    RetentionArchiveTier.type = Types::RetentionArchiveTier
    RetentionIntervalUnitValues.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    RetentionIntervalUnitValues.add_member(:weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEEKS", traits: {"smithy.api#enumValue" => "WEEKS"}))
    RetentionIntervalUnitValues.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    RetentionIntervalUnitValues.add_member(:years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YEARS", traits: {"smithy.api#enumValue" => "YEARS"}))
    Schedule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleName, location_name: "Name"))
    Schedule.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyTags, location_name: "CopyTags"))
    Schedule.add_member(:tags_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsToAddList, location_name: "TagsToAdd"))
    Schedule.add_member(:variable_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableTagsList, location_name: "VariableTags"))
    Schedule.add_member(:create_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateRule, location_name: "CreateRule"))
    Schedule.add_member(:retain_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainRule, location_name: "RetainRule"))
    Schedule.add_member(:fast_restore_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: FastRestoreRule, location_name: "FastRestoreRule"))
    Schedule.add_member(:cross_region_copy_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyRules, location_name: "CrossRegionCopyRules"))
    Schedule.add_member(:share_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareRules, location_name: "ShareRules"))
    Schedule.add_member(:deprecate_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecateRule, location_name: "DeprecateRule"))
    Schedule.add_member(:archive_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveRule, location_name: "ArchiveRule"))
    Schedule.type = Types::Schedule
    ScheduleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule)
    Script.add_member(:stages, ::Smithy::Schema::Shapes::MemberShape.new(target: StagesList, location_name: "Stages"))
    Script.add_member(:execution_handler_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionHandlerServiceValues, location_name: "ExecutionHandlerService"))
    Script.add_member(:execution_handler, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionHandler, location_name: "ExecutionHandler", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Script.add_member(:execute_operation_on_script_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteOperationOnScriptFailure, location_name: "ExecuteOperationOnScriptFailure"))
    Script.add_member(:execution_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptExecutionTimeout, location_name: "ExecutionTimeout"))
    Script.add_member(:maximum_retry_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptMaximumRetryCount, location_name: "MaximumRetryCount"))
    Script.type = Types::Script
    ScriptsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Script)
    SettablePolicyStateValues.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SettablePolicyStateValues.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ShareRule.add_member(:target_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareTargetAccountList, location_name: "TargetAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ShareRule.add_member(:unshare_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, location_name: "UnshareInterval"))
    ShareRule.add_member(:unshare_interval_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionIntervalUnitValues, location_name: "UnshareIntervalUnit"))
    ShareRule.type = Types::ShareRule
    ShareRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ShareRule)
    ShareTargetAccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId)
    SnapshotOwnerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId)
    StageValues.add_member(:pre, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRE", traits: {"smithy.api#enumValue" => "PRE"}))
    StageValues.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    StagesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StageValues)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsToAddFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter)
    TagsToAddList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TargetTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TargetTagsFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter)
    TimesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Time)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateLifecyclePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "PolicyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionRoleArn, location_name: "ExecutionRoleArn"))
    UpdateLifecyclePolicyRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SettablePolicyStateValues, location_name: "State"))
    UpdateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDescription, location_name: "Description"))
    UpdateLifecyclePolicyRequest.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDetails, location_name: "PolicyDetails"))
    UpdateLifecyclePolicyRequest.add_member(:create_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateInterval, location_name: "CreateInterval"))
    UpdateLifecyclePolicyRequest.add_member(:retain_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainInterval, location_name: "RetainInterval"))
    UpdateLifecyclePolicyRequest.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyTagsNullable, location_name: "CopyTags"))
    UpdateLifecyclePolicyRequest.add_member(:extend_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendDeletion, location_name: "ExtendDeletion"))
    UpdateLifecyclePolicyRequest.add_member(:cross_region_copy_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossRegionCopyTargetList, location_name: "CrossRegionCopyTargets"))
    UpdateLifecyclePolicyRequest.add_member(:exclusions, ::Smithy::Schema::Shapes::MemberShape.new(target: Exclusions, location_name: "Exclusions"))
    UpdateLifecyclePolicyRequest.type = Types::UpdateLifecyclePolicyRequest
    UpdateLifecyclePolicyResponse.type = Types::UpdateLifecyclePolicyResponse
    VariableTagsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)

    Dlm20180112 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dlm#dlm_20180112"
      service.name = "Dlm20180112"
      service.version = "2018-01-12"
      service.traits = {"aws.api#service" => {"sdkId" => "DLM", "arnNamespace" => "dlm", "cloudFormationName" => "DLM", "cloudTrailEventSource" => "dlm.amazonaws.com", "endpointPrefix" => "dlm"}, "aws.auth#sigv4" => {"name" => "dlm"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Data Lifecycle Manager"}
      service.add_operation(:create_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dlm#CreateLifecyclePolicy"
        operation.name = "CreateLifecyclePolicy"
        operation.input = CreateLifecyclePolicyRequest
        operation.output = CreateLifecyclePolicyResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/policies", "code" => 200}}
      end)
      service.add_operation(:delete_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dlm#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = DeleteLifecyclePolicyRequest
        operation.output = DeleteLifecyclePolicyResponse
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/policies/{PolicyId}", "code" => 200}}
      end)
      service.add_operation(:get_lifecycle_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dlm#GetLifecyclePolicies"
        operation.name = "GetLifecyclePolicies"
        operation.input = GetLifecyclePoliciesRequest
        operation.output = GetLifecyclePoliciesResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/policies", "code" => 200}}
      end)
      service.add_operation(:get_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dlm#GetLifecyclePolicy"
        operation.name = "GetLifecyclePolicy"
        operation.input = GetLifecyclePolicyRequest
        operation.output = GetLifecyclePolicyResponse
        operation.errors << InternalServerException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/policies/{PolicyId}", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dlm#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dlm#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dlm#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dlm#UpdateLifecyclePolicy"
        operation.name = "UpdateLifecyclePolicy"
        operation.input = UpdateLifecyclePolicyRequest
        operation.output = UpdateLifecyclePolicyResponse
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/policies/{PolicyId}", "code" => 200}}
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
