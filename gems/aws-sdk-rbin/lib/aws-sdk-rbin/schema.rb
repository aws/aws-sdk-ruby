# frozen_string_literal: true

# This is generated code!

module Aws::Rbin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ConflictExceptionReason', name: 'ConflictExceptionReason')
    CreateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#CreateRuleRequest', name: 'CreateRuleRequest')
    CreateRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#CreateRuleResponse', name: 'CreateRuleResponse')
    DeleteRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#DeleteRuleRequest', name: 'DeleteRuleRequest')
    DeleteRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#DeleteRuleResponse', name: 'DeleteRuleResponse')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#Description', name: 'Description', traits: {"smithy.api#pattern" => "^[\\S ]{0,255}$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#ErrorMessage', name: 'ErrorMessage')
    ExcludeResourceTags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#ExcludeResourceTags', name: 'ExcludeResourceTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    GetRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#GetRuleRequest', name: 'GetRuleRequest')
    GetRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#GetRuleResponse', name: 'GetRuleResponse')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ListRulesRequest', name: 'ListRulesRequest')
    ListRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ListRulesResponse', name: 'ListRulesResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#LockConfiguration', name: 'LockConfiguration')
    LockRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#LockRuleRequest', name: 'LockRuleRequest')
    LockRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#LockRuleResponse', name: 'LockRuleResponse')
    LockState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#LockState', name: 'LockState')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rbin#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^[A-Za-z0-9+/=]{1,2048}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ResourceNotFoundExceptionReason', name: 'ResourceNotFoundExceptionReason')
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ResourceTag', name: 'ResourceTag')
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#ResourceTagKey', name: 'ResourceTagKey', traits: {"smithy.api#pattern" => "^[\\S\\s]{1,128}$"})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#ResourceTagValue', name: 'ResourceTagValue', traits: {"smithy.api#pattern" => "^[\\S\\s]{0,256}$"})
    ResourceTags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#ResourceTags', name: 'ResourceTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ResourceType', name: 'ResourceType')
    RetentionPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#RetentionPeriod', name: 'RetentionPeriod')
    RetentionPeriodUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#RetentionPeriodUnit', name: 'RetentionPeriodUnit')
    RetentionPeriodValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rbin#RetentionPeriodValue', name: 'RetentionPeriodValue', traits: {"smithy.api#range" => {"min" => 1, "max" => 3650}})
    RuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#RuleArn', name: 'RuleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,3}){0,2}:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$"})
    RuleIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#RuleIdentifier', name: 'RuleIdentifier', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{11}$"})
    RuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#RuleStatus', name: 'RuleStatus')
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#RuleSummary', name: 'RuleSummary')
    RuleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#RuleSummaryList', name: 'RuleSummaryList')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ServiceQuotaExceededExceptionReason', name: 'ServiceQuotaExceededExceptionReason')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.rbin#TimeStamp', name: 'TimeStamp')
    UnlockDelay = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UnlockDelay', name: 'UnlockDelay')
    UnlockDelayUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#UnlockDelayUnit', name: 'UnlockDelayUnit')
    UnlockDelayValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rbin#UnlockDelayValue', name: 'UnlockDelayValue', traits: {"smithy.api#range" => {"min" => 7, "max" => 30}})
    UnlockRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UnlockRuleRequest', name: 'UnlockRuleRequest')
    UnlockRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UnlockRuleResponse', name: 'UnlockRuleResponse')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UpdateRuleRequest', name: 'UpdateRuleRequest')
    UpdateRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UpdateRuleResponse', name: 'UpdateRuleResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ValidationExceptionReason', name: 'ValidationExceptionReason')

    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: 'Reason'))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:invalid_rule_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RULE_STATE', traits: {"smithy.api#enumValue" => "INVALID_RULE_STATE"}))
    CreateRuleRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateRuleRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    CreateRuleRequest.add_member(:lock_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration'))
    CreateRuleRequest.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags'))
    CreateRuleRequest.type = Types::CreateRuleRequest
    CreateRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier'))
    CreateRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    CreateRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateRuleResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    CreateRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    CreateRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status'))
    CreateRuleResponse.add_member(:lock_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration'))
    CreateRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState'))
    CreateRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn'))
    CreateRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags'))
    CreateRuleResponse.type = Types::CreateRuleResponse
    DeleteRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DeleteRuleResponse.type = Types::DeleteRuleResponse
    ExcludeResourceTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    GetRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleRequest.type = Types::GetRuleRequest
    GetRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier'))
    GetRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    GetRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    GetRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    GetRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    GetRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status'))
    GetRuleResponse.add_member(:lock_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration'))
    GetRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState'))
    GetRuleResponse.add_member(:lock_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LockEndTime'))
    GetRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn'))
    GetRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags'))
    GetRuleResponse.type = Types::GetRuleResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListRulesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#required" => {}}))
    ListRulesRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    ListRulesRequest.add_member(:lock_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState'))
    ListRulesRequest.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags'))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummaryList, location_name: 'Rules'))
    ListRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListRulesResponse.type = Types::ListRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LockConfiguration.add_member(:unlock_delay, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockDelay, location_name: 'UnlockDelay', traits: {"smithy.api#required" => {}}))
    LockConfiguration.type = Types::LockConfiguration
    LockRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    LockRuleRequest.add_member(:lock_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration', traits: {"smithy.api#required" => {}}))
    LockRuleRequest.type = Types::LockRuleRequest
    LockRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier'))
    LockRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    LockRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    LockRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    LockRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    LockRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status'))
    LockRuleResponse.add_member(:lock_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration'))
    LockRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState'))
    LockRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn'))
    LockRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags'))
    LockRuleResponse.type = Types::LockRuleResponse
    LockState.add_member(:locked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCKED', traits: {"smithy.api#enumValue" => "locked"}))
    LockState.add_member(:pending_unlock, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UNLOCK', traits: {"smithy.api#enumValue" => "pending_unlock"}))
    LockState.add_member(:unlocked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNLOCKED', traits: {"smithy.api#enumValue" => "unlocked"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundExceptionReason, location_name: 'Reason'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:rule_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RULE_NOT_FOUND"}))
    ResourceTag.add_member(:resource_tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey, location_name: 'ResourceTagKey', traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:resource_tag_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: 'ResourceTagValue'))
    ResourceTag.type = Types::ResourceTag
    ResourceTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    ResourceType.add_member(:ebs_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS_SNAPSHOT', traits: {"smithy.api#enumValue" => "EBS_SNAPSHOT"}))
    ResourceType.add_member(:ec2_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_IMAGE', traits: {"smithy.api#enumValue" => "EC2_IMAGE"}))
    RetentionPeriod.add_member(:retention_period_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriodValue, location_name: 'RetentionPeriodValue', traits: {"smithy.api#required" => {}}))
    RetentionPeriod.add_member(:retention_period_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriodUnit, location_name: 'RetentionPeriodUnit', traits: {"smithy.api#required" => {}}))
    RetentionPeriod.type = Types::RetentionPeriod
    RetentionPeriodUnit.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    RuleStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "pending"}))
    RuleStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "available"}))
    RuleSummary.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier'))
    RuleSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    RuleSummary.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    RuleSummary.add_member(:lock_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState'))
    RuleSummary.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn'))
    RuleSummary.type = Types::RuleSummary
    RuleSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummary)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: 'Reason'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:service_quota_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UnlockDelay.add_member(:unlock_delay_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockDelayValue, location_name: 'UnlockDelayValue', traits: {"smithy.api#required" => {}}))
    UnlockDelay.add_member(:unlock_delay_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockDelayUnit, location_name: 'UnlockDelayUnit', traits: {"smithy.api#required" => {}}))
    UnlockDelay.type = Types::UnlockDelay
    UnlockDelayUnit.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    UnlockRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnlockRuleRequest.type = Types::UnlockRuleRequest
    UnlockRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier'))
    UnlockRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UnlockRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    UnlockRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    UnlockRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    UnlockRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status'))
    UnlockRuleResponse.add_member(:lock_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration'))
    UnlockRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState'))
    UnlockRuleResponse.add_member(:lock_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LockEndTime'))
    UnlockRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn'))
    UnlockRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags'))
    UnlockRuleResponse.type = Types::UnlockRuleResponse
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateRuleRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    UpdateRuleRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateRuleRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    UpdateRuleRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    UpdateRuleRequest.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags'))
    UpdateRuleRequest.type = Types::UpdateRuleRequest
    UpdateRuleResponse.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier'))
    UpdateRuleResponse.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    UpdateRuleResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateRuleResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    UpdateRuleResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    UpdateRuleResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status'))
    UpdateRuleResponse.add_member(:lock_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState'))
    UpdateRuleResponse.add_member(:lock_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LockEndTime'))
    UpdateRuleResponse.add_member(:rule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn'))
    UpdateRuleResponse.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags'))
    UpdateRuleResponse.type = Types::UpdateRuleResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAGE_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_PAGE_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARAMETER_VALUE', traits: {"smithy.api#enumValue" => "INVALID_PARAMETER_VALUE"}))

    AmazonRecycleBin = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rbin#AmazonRecycleBin"
      service.name = "AmazonRecycleBin"
      service.version = "2021-06-15"
      service.traits = {"aws.api#service" => {"sdkId" => "rbin", "arnNamespace" => "rbin", "cloudFormationName" => "Rbin", "cloudTrailEventSource" => "rbin.amazonaws.com", "endpointPrefix" => "rbin"}, "aws.auth#sigv4" => {"name" => "rbin"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Recycle Bin"}
      service.add_operation(:create_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#CreateRule"
        operation.name = "CreateRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rules", "code" => 201}}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/rules/{Identifier}", "code" => 204}}
      end)
      service.add_operation(:get_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#GetRule"
        operation.name = "GetRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rules/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:list_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#ListRules"
        operation.name = "ListRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-rules", "code" => 200}}
        operation[:paginator] = Paginators::ListRules.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:lock_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#LockRule"
        operation.name = "LockRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/rules/{Identifier}/lock", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 201}}
      end)
      service.add_operation(:unlock_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UnlockRule"
        operation.name = "UnlockRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/rules/{Identifier}/unlock", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
