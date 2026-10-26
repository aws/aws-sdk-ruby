# frozen_string_literal: true

# This is generated code!

module Aws::Rbin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#ConflictExceptionReason", name: "ConflictExceptionReason")
    CreateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#CreateRuleRequest", name: "CreateRuleRequest")
    CreateRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#CreateRuleResponse", name: "CreateRuleResponse")
    DeleteRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#DeleteRuleRequest", name: "DeleteRuleRequest")
    DeleteRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#DeleteRuleResponse", name: "DeleteRuleResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#Description", name: "Description", traits: {"smithy.api#pattern" => "^[\\S ]{0,255}$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#ErrorMessage", name: "ErrorMessage")
    ExcludeResourceTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rbin#ExcludeResourceTags", name: "ExcludeResourceTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    GetRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#GetRuleRequest", name: "GetRuleRequest")
    GetRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#GetRuleResponse", name: "GetRuleResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ListRulesRequest", name: "ListRulesRequest")
    ListRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ListRulesResponse", name: "ListRulesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#LockConfiguration", name: "LockConfiguration")
    LockRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#LockRuleRequest", name: "LockRuleRequest")
    LockRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#LockRuleResponse", name: "LockRuleResponse")
    LockState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#LockState", name: "LockState")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rbin#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#NextToken", name: "NextToken", traits: {"smithy.api#pattern" => "^[A-Za-z0-9+/=]{1,2048}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#ResourceNotFoundExceptionReason", name: "ResourceNotFoundExceptionReason")
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#pattern" => "^[\\S\\s]{1,128}$"})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#pattern" => "^[\\S\\s]{0,256}$"})
    ResourceTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rbin#ResourceTags", name: "ResourceTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#ResourceType", name: "ResourceType")
    RetentionPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#RetentionPeriod", name: "RetentionPeriod")
    RetentionPeriodUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#RetentionPeriodUnit", name: "RetentionPeriodUnit")
    RetentionPeriodValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rbin#RetentionPeriodValue", name: "RetentionPeriodValue", traits: {"smithy.api#range" => {"min" => 1, "max" => 3650}})
    RuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#RuleArn", name: "RuleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1011}, "smithy.api#pattern" => "^arn:\\S+:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$"})
    RuleIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#RuleIdentifier", name: "RuleIdentifier", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{11}$"})
    RuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#RuleStatus", name: "RuleStatus")
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#RuleSummary", name: "RuleSummary")
    RuleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rbin#RuleSummaryList", name: "RuleSummaryList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#ServiceQuotaExceededExceptionReason", name: "ServiceQuotaExceededExceptionReason")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rbin#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rbin#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rbin#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.rbin#TimeStamp", name: "TimeStamp")
    UnlockDelay = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#UnlockDelay", name: "UnlockDelay")
    UnlockDelayUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#UnlockDelayUnit", name: "UnlockDelayUnit")
    UnlockDelayValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rbin#UnlockDelayValue", name: "UnlockDelayValue", traits: {"smithy.api#range" => {"min" => 7, "max" => 30}})
    UnlockRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#UnlockRuleRequest", name: "UnlockRuleRequest")
    UnlockRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#UnlockRuleResponse", name: "UnlockRuleResponse")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#UpdateRuleRequest", name: "UpdateRuleRequest")
    UpdateRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#UpdateRuleResponse", name: "UpdateRuleResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rbin#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rbin#ValidationExceptionReason", name: "ValidationExceptionReason")

    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "Reason"))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:invalid_rule_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_RULE_STATE", traits: {"smithy.api#enumValue" => "INVALID_RULE_STATE"}))
    CreateRuleRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod", traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRuleRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    CreateRuleRequest.add_member(:lock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LockConfiguration, name: "LockConfiguration"))
    CreateRuleRequest.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeResourceTags, name: "ExcludeResourceTags"))
    CreateRuleRequest.type = Types::CreateRuleRequest
    CreateRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier"))
    CreateRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod"))
    CreateRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateRuleResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    CreateRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    CreateRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "Status"))
    CreateRuleResponse.add_member(:lock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LockConfiguration, name: "LockConfiguration"))
    CreateRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LockState, name: "LockState"))
    CreateRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "RuleArn"))
    CreateRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeResourceTags, name: "ExcludeResourceTags"))
    CreateRuleResponse.type = Types::CreateRuleResponse
    DeleteRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DeleteRuleResponse.type = Types::DeleteRuleResponse
    ExcludeResourceTags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member"))
    GetRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleRequest.type = Types::GetRuleRequest
    GetRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier"))
    GetRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    GetRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod"))
    GetRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    GetRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "Status"))
    GetRuleResponse.add_member(:lock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LockConfiguration, name: "LockConfiguration"))
    GetRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LockState, name: "LockState"))
    GetRuleResponse.add_member(:lock_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LockEndTime"))
    GetRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "RuleArn"))
    GetRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeResourceTags, name: "ExcludeResourceTags"))
    GetRuleResponse.type = Types::GetRuleResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRulesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ListRulesRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    ListRulesRequest.add_member(:lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LockState, name: "LockState"))
    ListRulesRequest.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeResourceTags, name: "ExcludeResourceTags"))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaryList, name: "Rules"))
    ListRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRulesResponse.type = Types::ListRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LockConfiguration.add_member(:unlock_delay, ::Smithy::Schema::Shapes::MemberShape.new(target: UnlockDelay, name: "UnlockDelay", traits: {"smithy.api#required" => {}}))
    LockConfiguration.type = Types::LockConfiguration
    LockRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    LockRuleRequest.add_member(:lock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LockConfiguration, name: "LockConfiguration", traits: {"smithy.api#required" => {}}))
    LockRuleRequest.type = Types::LockRuleRequest
    LockRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier"))
    LockRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    LockRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    LockRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod"))
    LockRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    LockRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "Status"))
    LockRuleResponse.add_member(:lock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LockConfiguration, name: "LockConfiguration"))
    LockRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LockState, name: "LockState"))
    LockRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "RuleArn"))
    LockRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeResourceTags, name: "ExcludeResourceTags"))
    LockRuleResponse.type = Types::LockRuleResponse
    LockState.add_member(:locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCKED", traits: {"smithy.api#enumValue" => "locked"}))
    LockState.add_member(:pending_unlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_UNLOCK", traits: {"smithy.api#enumValue" => "pending_unlock"}))
    LockState.add_member(:unlocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNLOCKED", traits: {"smithy.api#enumValue" => "unlocked"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundExceptionReason, name: "Reason"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:rule_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RULE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RULE_NOT_FOUND"}))
    ResourceTag.add_member(:resource_tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "ResourceTagKey", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:resource_tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagValue, name: "ResourceTagValue"))
    ResourceTag.type = Types::ResourceTag
    ResourceTags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member"))
    ResourceType.add_member(:ebs_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_SNAPSHOT", traits: {"smithy.api#enumValue" => "EBS_SNAPSHOT"}))
    ResourceType.add_member(:ec2_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_IMAGE", traits: {"smithy.api#enumValue" => "EC2_IMAGE"}))
    ResourceType.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME", traits: {"smithy.api#enumValue" => "EBS_VOLUME"}))
    RetentionPeriod.add_member(:retention_period_value, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodValue, name: "RetentionPeriodValue", traits: {"smithy.api#required" => {}}))
    RetentionPeriod.add_member(:retention_period_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodUnit, name: "RetentionPeriodUnit", traits: {"smithy.api#required" => {}}))
    RetentionPeriod.type = Types::RetentionPeriod
    RetentionPeriodUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    RuleStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "pending"}))
    RuleStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "available"}))
    RuleSummary.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier"))
    RuleSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    RuleSummary.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod"))
    RuleSummary.add_member(:lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LockState, name: "LockState"))
    RuleSummary.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "RuleArn"))
    RuleSummary.type = Types::RuleSummary
    RuleSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummary, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededExceptionReason, name: "Reason"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:service_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UnlockDelay.add_member(:unlock_delay_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UnlockDelayValue, name: "UnlockDelayValue", traits: {"smithy.api#required" => {}}))
    UnlockDelay.add_member(:unlock_delay_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: UnlockDelayUnit, name: "UnlockDelayUnit", traits: {"smithy.api#required" => {}}))
    UnlockDelay.type = Types::UnlockDelay
    UnlockDelayUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    UnlockRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnlockRuleRequest.type = Types::UnlockRuleRequest
    UnlockRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier"))
    UnlockRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UnlockRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    UnlockRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod"))
    UnlockRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    UnlockRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "Status"))
    UnlockRuleResponse.add_member(:lock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LockConfiguration, name: "LockConfiguration"))
    UnlockRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LockState, name: "LockState"))
    UnlockRuleResponse.add_member(:lock_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LockEndTime"))
    UnlockRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "RuleArn"))
    UnlockRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeResourceTags, name: "ExcludeResourceTags"))
    UnlockRuleResponse.type = Types::UnlockRuleResponse
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod"))
    UpdateRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateRuleRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    UpdateRuleRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    UpdateRuleRequest.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeResourceTags, name: "ExcludeResourceTags"))
    UpdateRuleRequest.type = Types::UpdateRuleRequest
    UpdateRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "Identifier"))
    UpdateRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriod, name: "RetentionPeriod"))
    UpdateRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    UpdateRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    UpdateRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStatus, name: "Status"))
    UpdateRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LockState, name: "LockState"))
    UpdateRuleResponse.add_member(:lock_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LockEndTime"))
    UpdateRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "RuleArn"))
    UpdateRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeResourceTags, name: "ExcludeResourceTags"))
    UpdateRuleResponse.type = Types::UpdateRuleResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PAGE_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_PAGE_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PARAMETER_VALUE", traits: {"smithy.api#enumValue" => "INVALID_PARAMETER_VALUE"}))

    AmazonRecycleBin = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rbin#AmazonRecycleBin"
      service.name = "AmazonRecycleBin"
      service.version = "2021-06-15"
      service.traits = {"aws.api#service" => {"sdkId" => "rbin", "arnNamespace" => "rbin", "cloudFormationName" => "Rbin", "cloudTrailEventSource" => "rbin.amazonaws.com", "endpointPrefix" => "rbin"}, "aws.auth#sigv4" => {"name" => "rbin"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Recycle Bin", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://rbin-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rbin-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rbin.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://rbin.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#CreateRule"
        operation.name = "CreateRule"
        operation.input = CreateRuleRequest
        operation.output = CreateRuleResponse
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rules", "code" => 201}}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = DeleteRuleRequest
        operation.output = DeleteRuleResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/rules/{Identifier}", "code" => 204}}
      end)
      service.add_operation(:get_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#GetRule"
        operation.name = "GetRule"
        operation.input = GetRuleRequest
        operation.output = GetRuleResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rules/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:list_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#ListRules"
        operation.name = "ListRules"
        operation.input = ListRulesRequest
        operation.output = ListRulesResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-rules", "code" => 200}}
        operation[:paginator] = Paginators::ListRules.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:lock_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#LockRule"
        operation.name = "LockRule"
        operation.input = LockRuleRequest
        operation.output = LockRuleResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/rules/{Identifier}/lock", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 201}}
      end)
      service.add_operation(:unlock_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UnlockRule"
        operation.name = "UnlockRule"
        operation.input = UnlockRuleRequest
        operation.output = UnlockRuleResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/rules/{Identifier}/unlock", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = UpdateRuleRequest
        operation.output = UpdateRuleResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/rules/{Identifier}", "code" => 200}}
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
