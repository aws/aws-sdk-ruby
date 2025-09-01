# frozen_string_literal: true

# This is generated code!

module Aws::Rbin
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ConflictExceptionReason', name: 'ConflictExceptionReason')
    CreateRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#CreateRuleRequest', name: 'CreateRuleRequest')
    CreateRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#CreateRuleResponse', name: 'CreateRuleResponse')
    DeleteRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#DeleteRuleRequest', name: 'DeleteRuleRequest')
    DeleteRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#DeleteRuleResponse', name: 'DeleteRuleResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#Description', name: 'Description', traits: {"smithy.api#pattern" => "^[\\S ]{0,255}$"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#ErrorMessage', name: 'ErrorMessage')
    ExcludeResourceTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#ExcludeResourceTags', name: 'ExcludeResourceTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    GetRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#GetRuleRequest', name: 'GetRuleRequest')
    GetRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#GetRuleResponse', name: 'GetRuleResponse')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ListRulesRequest', name: 'ListRulesRequest')
    ListRulesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ListRulesResponse', name: 'ListRulesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LockConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#LockConfiguration', name: 'LockConfiguration')
    LockRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#LockRuleRequest', name: 'LockRuleRequest')
    LockRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#LockRuleResponse', name: 'LockRuleResponse')
    LockState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#LockState', name: 'LockState')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rbin#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^[A-Za-z0-9+/=]{1,2048}$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ResourceNotFoundExceptionReason', name: 'ResourceNotFoundExceptionReason')
    ResourceTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ResourceTag', name: 'ResourceTag')
    ResourceTagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#ResourceTagKey', name: 'ResourceTagKey', traits: {"smithy.api#pattern" => "^[\\S\\s]{1,128}$"})
    ResourceTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#ResourceTagValue', name: 'ResourceTagValue', traits: {"smithy.api#pattern" => "^[\\S\\s]{0,256}$"})
    ResourceTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#ResourceTags', name: 'ResourceTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ResourceType', name: 'ResourceType')
    RetentionPeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#RetentionPeriod', name: 'RetentionPeriod')
    RetentionPeriodUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#RetentionPeriodUnit', name: 'RetentionPeriodUnit')
    RetentionPeriodValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rbin#RetentionPeriodValue', name: 'RetentionPeriodValue', traits: {"smithy.api#range" => {"min" => 1, "max" => 3650}})
    RuleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#RuleArn', name: 'RuleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[a-z]{1,3}){0,2}:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$"})
    RuleIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#RuleIdentifier', name: 'RuleIdentifier', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{11}$"})
    RuleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#RuleStatus', name: 'RuleStatus')
    RuleSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#RuleSummary', name: 'RuleSummary')
    RuleSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#RuleSummaryList', name: 'RuleSummaryList')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ServiceQuotaExceededExceptionReason', name: 'ServiceQuotaExceededExceptionReason')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rbin#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rbin#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.rbin#TimeStamp', name: 'TimeStamp')
    UnlockDelay = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UnlockDelay', name: 'UnlockDelay')
    UnlockDelayUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#UnlockDelayUnit', name: 'UnlockDelayUnit')
    UnlockDelayValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rbin#UnlockDelayValue', name: 'UnlockDelayValue', traits: {"smithy.api#range" => {"min" => 7, "max" => 30}})
    UnlockRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UnlockRuleRequest', name: 'UnlockRuleRequest')
    UnlockRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UnlockRuleResponse', name: 'UnlockRuleResponse')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UpdateRuleRequest', name: 'UpdateRuleRequest')
    UpdateRuleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#UpdateRuleResponse', name: 'UpdateRuleResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rbin#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rbin#ValidationExceptionReason', name: 'ValidationExceptionReason')

    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:invalid_rule_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RULE_STATE', traits: {"smithy.api#enumValue" => "INVALID_RULE_STATE"}))
    CreateRuleRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>Information about the retention period for which the retention rule is to retain resources.</p>", "smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The retention rule description.</p>"}))
    CreateRuleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags to assign to the retention rule.</p>"}))
    CreateRuleRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots \n      and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To \n      retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>", "smithy.api#required" => {}}))
    CreateRuleRequest.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>[Tag-level retention rules only] Specifies the resource tags to use to identify resources that are to be retained by a \n  tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that \n  have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have \n  any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>\n         <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>\n         <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule \n      does not have any resource tags specified. It retains all deleted resources of the specified \n      resource type in the Region in which the rule is created, even if the resources are not tagged.</p>"}))
    CreateRuleRequest.add_member(:lock_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the retention rule lock configuration.</p>"}))
    CreateRuleRequest.add_member(:exclude_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] Specifies the exclusion tags to use to identify resources that are to be excluded, \nor ignored, by a Region-level retention rule. Resources that have any of these tags are not retained by the retention rule \nupon deletion.</p>\n         <p>You can't specify exclusion tags for tag-level retention rules.</p>"}))
    CreateRuleRequest.type = Types::CreateRuleRequest
    CreateRuleResponse.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>"}))
    CreateRuleResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    CreateRuleResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The retention rule description.</p>"}))
    CreateRuleResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags assigned to the retention rule.</p>"}))
    CreateRuleResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type retained by the retention rule.</p>"}))
    CreateRuleResponse.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention \n      rule.</p>"}))
    CreateRuleResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The state of the retention rule. Only retention rules that are in the <code>available</code> \n      state retain resources.</p>"}))
    CreateRuleResponse.add_member(:lock_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the retention rule lock configuration.</p>"}))
    CreateRuleResponse.add_member(:lock_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] The lock state for the retention rule.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>pending_unlock</code> - The retention rule has been unlocked but it is still within \n          the unlock delay period. The retention rule can be modified or deleted only after the unlock \n          delay period has expired.</p>\n            </li>\n            <li>\n               <p>\n                  <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by \n          any user with the required permissions.</p>\n            </li>\n            <li>\n               <p>\n                  <code>null</code> - The retention rule has never been locked. Once a retention rule has \n        been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states \n        only; it can never transition back to <code>null</code>.</p>\n            </li>\n         </ul>"}))
    CreateRuleResponse.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>"}))
    CreateRuleResponse.add_member(:exclude_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be \nexcluded, or ignored, by the retention rule.</p>"}))
    CreateRuleResponse.type = Types::CreateRuleResponse
    DeleteRuleRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleRequest.type = Types::DeleteRuleRequest
    DeleteRuleResponse.type = Types::DeleteRuleResponse
    ExcludeResourceTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    GetRuleRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleRequest.type = Types::GetRuleRequest
    GetRuleResponse.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>"}))
    GetRuleResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The retention rule description.</p>"}))
    GetRuleResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type retained by the retention rule.</p>"}))
    GetRuleResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>Information about the retention period for which the retention rule is to retain resources.</p>"}))
    GetRuleResponse.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention \n      rule.</p>"}))
    GetRuleResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The state of the retention rule. Only retention rules that are in the <code>available</code> \n      state retain resources.</p>"}))
    GetRuleResponse.add_member(:lock_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the retention rule lock configuration.</p>"}))
    GetRuleResponse.add_member(:lock_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] The lock state for the retention rule.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>pending_unlock</code> - The retention rule has been unlocked but it is still within \n          the unlock delay period. The retention rule can be modified or deleted only after the unlock \n          delay period has expired.</p>\n            </li>\n            <li>\n               <p>\n                  <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by \n          any user with the required permissions.</p>\n            </li>\n            <li>\n               <p>\n                  <code>null</code> - The retention rule has never been locked. Once a retention rule has \n        been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states \n        only; it can never transition back to <code>null</code>.</p>\n            </li>\n         </ul>"}))
    GetRuleResponse.add_member(:lock_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LockEndTime', traits: {"smithy.api#documentation" => "<p>The date and time at which the unlock delay is set to expire. Only returned \n      for retention rules that have been unlocked and that are still within the unlock \n      delay period.</p>"}))
    GetRuleResponse.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>"}))
    GetRuleResponse.add_member(:exclude_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be \nexcluded, or ignored, by the retention rule.</p>"}))
    GetRuleResponse.type = Types::GetRuleResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListRulesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return with a single call.\n\tTo retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"}))
    ListRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next page of results.</p>"}))
    ListRulesRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type retained by the retention rule. Only retention rules that retain \n      the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed \n      AMIs are supported. To list retention rules that retain snapshots, specify \n      <code>EBS_SNAPSHOT</code>. To list retention rules that retain EBS-backed AMIs, specify \n      <code>EC2_IMAGE</code>.</p>", "smithy.api#required" => {}}))
    ListRulesRequest.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention \n      rule.</p>"}))
    ListRulesRequest.add_member(:lock_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState', traits: {"smithy.api#documentation" => "<p>The lock state of the retention rules to list. Only retention rules with the specified \n      lock state are returned.</p>"}))
    ListRulesRequest.add_member(:exclude_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be \nexcluded, or ignored, by the retention rule.</p>"}))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummaryList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>Information about the retention rules.</p>"}))
    ListRulesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"}))
    ListRulesResponse.type = Types::ListRulesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags assigned to the retention rule.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LockConfiguration.add_member(:unlock_delay, Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockDelay, location_name: 'UnlockDelay', traits: {"smithy.api#documentation" => "<p>Information about the retention rule unlock delay.</p>", "smithy.api#required" => {}}))
    LockConfiguration.type = Types::LockConfiguration
    LockRuleRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    LockRuleRequest.add_member(:lock_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the retention rule lock configuration.</p>", "smithy.api#required" => {}}))
    LockRuleRequest.type = Types::LockRuleRequest
    LockRuleResponse.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>"}))
    LockRuleResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The retention rule description.</p>"}))
    LockRuleResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type retained by the retention rule.</p>"}))
    LockRuleResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    LockRuleResponse.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention \n      rule.</p>"}))
    LockRuleResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The state of the retention rule. Only retention rules that are in the <code>available</code> \n      state retain resources.</p>"}))
    LockRuleResponse.add_member(:lock_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the retention rule lock configuration.</p>"}))
    LockRuleResponse.add_member(:lock_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] The lock state for the retention rule.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>pending_unlock</code> - The retention rule has been unlocked but it is still within \n          the unlock delay period. The retention rule can be modified or deleted only after the unlock \n          delay period has expired.</p>\n            </li>\n            <li>\n               <p>\n                  <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by \n          any user with the required permissions.</p>\n            </li>\n            <li>\n               <p>\n                  <code>null</code> - The retention rule has never been locked. Once a retention rule has \n        been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states \n        only; it can never transition back to <code>null</code>.</p>\n            </li>\n         </ul>"}))
    LockRuleResponse.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>"}))
    LockRuleResponse.add_member(:exclude_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be \nexcluded, or ignored, by the retention rule.</p>"}))
    LockRuleResponse.type = Types::LockRuleResponse
    LockState.add_member(:locked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCKED', traits: {"smithy.api#enumValue" => "locked"}))
    LockState.add_member(:pending_unlock, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UNLOCK', traits: {"smithy.api#enumValue" => "pending_unlock"}))
    LockState.add_member(:unlocked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNLOCKED', traits: {"smithy.api#enumValue" => "unlocked"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:rule_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RULE_NOT_FOUND"}))
    ResourceTag.add_member(:resource_tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey, location_name: 'ResourceTagKey', traits: {"smithy.api#documentation" => "<p>The tag key.</p>", "smithy.api#required" => {}}))
    ResourceTag.add_member(:resource_tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: 'ResourceTagValue', traits: {"smithy.api#documentation" => "<p>The tag value.</p>"}))
    ResourceTag.type = Types::ResourceTag
    ResourceTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    ResourceType.add_member(:ebs_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS_SNAPSHOT', traits: {"smithy.api#enumValue" => "EBS_SNAPSHOT"}))
    ResourceType.add_member(:ec2_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_IMAGE', traits: {"smithy.api#enumValue" => "EC2_IMAGE"}))
    RetentionPeriod.add_member(:retention_period_value, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriodValue, location_name: 'RetentionPeriodValue', traits: {"smithy.api#documentation" => "<p>The period value for which the retention rule is to retain resources. The period is measured using \n      the unit specified for <b>RetentionPeriodUnit</b>.</p>", "smithy.api#required" => {}}))
    RetentionPeriod.add_member(:retention_period_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriodUnit, location_name: 'RetentionPeriodUnit', traits: {"smithy.api#documentation" => "<p>The unit of time in which the retention period is measured. Currently, only <code>DAYS</code> \n      is supported.</p>", "smithy.api#required" => {}}))
    RetentionPeriod.type = Types::RetentionPeriod
    RetentionPeriodUnit.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    RuleStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "pending"}))
    RuleStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "available"}))
    RuleSummary.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>"}))
    RuleSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The retention rule description.</p>"}))
    RuleSummary.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>Information about the retention period for which the retention rule is to retain resources.</p>"}))
    RuleSummary.add_member(:lock_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] The lock state for the retention rule.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>pending_unlock</code> - The retention rule has been unlocked but it is still within \n          the unlock delay period. The retention rule can be modified or deleted only after the unlock \n          delay period has expired.</p>\n            </li>\n            <li>\n               <p>\n                  <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by \n          any user with the required permissions.</p>\n            </li>\n            <li>\n               <p>\n                  <code>null</code> - The retention rule has never been locked. Once a retention rule has \n        been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states \n        only; it can never transition back to <code>null</code>.</p>\n            </li>\n         </ul>"}))
    RuleSummary.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>"}))
    RuleSummary.type = Types::RuleSummary
    RuleSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleSummary)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:service_quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Information about the tags to assign to the retention rule.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UnlockDelay.add_member(:unlock_delay_value, Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockDelayValue, location_name: 'UnlockDelayValue', traits: {"smithy.api#documentation" => "<p>The unlock delay period, measured in the unit specified for <b>\n      UnlockDelayUnit</b>.</p>", "smithy.api#required" => {}}))
    UnlockDelay.add_member(:unlock_delay_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockDelayUnit, location_name: 'UnlockDelayUnit', traits: {"smithy.api#documentation" => "<p>The unit of time in which to measure the unlock delay. Currently, the unlock delay can \n      be measure only in days.</p>", "smithy.api#required" => {}}))
    UnlockDelay.type = Types::UnlockDelay
    UnlockDelayUnit.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    UnlockRuleRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnlockRuleRequest.type = Types::UnlockRuleRequest
    UnlockRuleResponse.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>"}))
    UnlockRuleResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The retention rule description.</p>"}))
    UnlockRuleResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type retained by the retention rule.</p>"}))
    UnlockRuleResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    UnlockRuleResponse.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention \n      rule.</p>"}))
    UnlockRuleResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The state of the retention rule. Only retention rules that are in the <code>available</code> \n      state retain resources.</p>"}))
    UnlockRuleResponse.add_member(:lock_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LockConfiguration, location_name: 'LockConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the retention rule lock configuration.</p>"}))
    UnlockRuleResponse.add_member(:lock_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] The lock state for the retention rule.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>pending_unlock</code> - The retention rule has been unlocked but it is still within \n          the unlock delay period. The retention rule can be modified or deleted only after the unlock \n          delay period has expired.</p>\n            </li>\n            <li>\n               <p>\n                  <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by \n          any user with the required permissions.</p>\n            </li>\n            <li>\n               <p>\n                  <code>null</code> - The retention rule has never been locked. Once a retention rule has \n        been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states \n        only; it can never transition back to <code>null</code>.</p>\n            </li>\n         </ul>"}))
    UnlockRuleResponse.add_member(:lock_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LockEndTime', traits: {"smithy.api#documentation" => "<p>The date and time at which the unlock delay is set to expire. Only returned \n      for retention rules that have been unlocked and that are still within the unlock \n      delay period.</p>"}))
    UnlockRuleResponse.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>"}))
    UnlockRuleResponse.add_member(:exclude_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be \nexcluded, or ignored, by the retention rule.</p>"}))
    UnlockRuleResponse.type = Types::UnlockRuleResponse
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys of the tags to unassign. All tags that have the specified tag key are unassigned.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateRuleRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleRequest.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>Information about the retention period for which the retention rule is to retain resources.</p>"}))
    UpdateRuleRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The retention rule description.</p>"}))
    UpdateRuleRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<note>\n            <p>This parameter is currently not supported. You can't update a retention rule's resource type \n      after creation.</p>\n         </note>"}))
    UpdateRuleRequest.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>[Tag-level retention rules only] Specifies the resource tags to use to identify resources that are to be retained by a \n  tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that \n  have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have \n  any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>\n         <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>\n         <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule \n      does not have any resource tags specified. It retains all deleted resources of the specified \n      resource type in the Region in which the rule is created, even if the resources are not tagged.</p>"}))
    UpdateRuleRequest.add_member(:exclude_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] Specifies the exclusion tags to use to identify resources that are to be excluded, \nor ignored, by a Region-level retention rule. Resources that have any of these tags are not retained by the retention rule \nupon deletion.</p>\n         <p>You can't specify exclusion tags for tag-level retention rules.</p>"}))
    UpdateRuleRequest.type = Types::UpdateRuleRequest
    UpdateRuleResponse.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique ID of the retention rule.</p>"}))
    UpdateRuleResponse.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: 'RetentionPeriod'))
    UpdateRuleResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The retention rule description.</p>"}))
    UpdateRuleResponse.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type retained by the retention rule.</p>"}))
    UpdateRuleResponse.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention \n      rule.</p>"}))
    UpdateRuleResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The state of the retention rule. Only retention rules that are in the <code>available</code> \n      state retain resources.</p>"}))
    UpdateRuleResponse.add_member(:lock_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LockState, location_name: 'LockState', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] The lock state for the retention rule.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>pending_unlock</code> - The retention rule has been unlocked but it is still within \n          the unlock delay period. The retention rule can be modified or deleted only after the unlock \n          delay period has expired.</p>\n            </li>\n            <li>\n               <p>\n                  <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by \n          any user with the required permissions.</p>\n            </li>\n            <li>\n               <p>\n                  <code>null</code> - The retention rule has never been locked. Once a retention rule has \n        been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states \n        only; it can never transition back to <code>null</code>.</p>\n            </li>\n         </ul>"}))
    UpdateRuleResponse.add_member(:lock_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LockEndTime', traits: {"smithy.api#documentation" => "<p>The date and time at which the unlock delay is set to expire. Only returned \n      for retention rules that have been unlocked and that are still within the unlock \n      delay period.</p>"}))
    UpdateRuleResponse.add_member(:rule_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleArn, location_name: 'RuleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retention rule.</p>"}))
    UpdateRuleResponse.add_member(:exclude_resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeResourceTags, location_name: 'ExcludeResourceTags', traits: {"smithy.api#documentation" => "<p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be \nexcluded, or ignored, by the retention rule.</p>"}))
    UpdateRuleResponse.type = Types::UpdateRuleResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_page_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAGE_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_PAGE_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARAMETER_VALUE', traits: {"smithy.api#enumValue" => "INVALID_PARAMETER_VALUE"}))

    AmazonRecycleBin = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rbin#AmazonRecycleBin"
      service.name = "AmazonRecycleBin"
      service.version = "2021-06-15"
      service.traits = {"aws.api#service" => {"sdkId" => "rbin", "arnNamespace" => "rbin", "cloudFormationName" => "Rbin", "cloudTrailEventSource" => "rbin.amazonaws.com", "endpointPrefix" => "rbin"}, "aws.auth#sigv4" => {"name" => "rbin"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Recycle Bin"}
      service.add_operation(:create_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#CreateRule"
        operation.name = "CreateRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rules", "code" => 201}}
      end)
      service.add_operation(:delete_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/rules/{Identifier}", "code" => 204}}
      end)
      service.add_operation(:get_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#GetRule"
        operation.name = "GetRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rules/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:list_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#ListRules"
        operation.name = "ListRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-rules", "code" => 200}}
        operation[:paginator] = Paginators::ListRules.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:lock_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#LockRule"
        operation.name = "LockRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: LockRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: LockRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/rules/{Identifier}/lock", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 201}}
      end)
      service.add_operation(:unlock_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UnlockRule"
        operation.name = "UnlockRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/rules/{Identifier}/unlock", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rbin#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRuleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/rules/{Identifier}", "code" => 200}}
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
