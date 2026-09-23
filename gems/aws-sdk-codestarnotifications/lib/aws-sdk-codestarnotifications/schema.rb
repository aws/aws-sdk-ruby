# frozen_string_literal: true

# This is generated code!

module Aws::Codestarnotifications
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w:/-]+$"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ConfigurationException", name: "ConfigurationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateNotificationRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#CreateNotificationRuleRequest", name: "CreateNotificationRuleRequest")
    CreateNotificationRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#CreateNotificationRuleResult", name: "CreateNotificationRuleResult")
    CreatedTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codestarnotifications#CreatedTimestamp", name: "CreatedTimestamp")
    DeleteNotificationRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#DeleteNotificationRuleRequest", name: "DeleteNotificationRuleRequest")
    DeleteNotificationRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#DeleteNotificationRuleResult", name: "DeleteNotificationRuleResult")
    DeleteTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#DeleteTargetRequest", name: "DeleteTargetRequest")
    DeleteTargetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#DeleteTargetResult", name: "DeleteTargetResult")
    DescribeNotificationRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#DescribeNotificationRuleRequest", name: "DescribeNotificationRuleRequest")
    DescribeNotificationRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#DescribeNotificationRuleResult", name: "DescribeNotificationRuleResult")
    DetailType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarnotifications#DetailType", name: "DetailType")
    EventTypeBatch = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#EventTypeBatch", name: "EventTypeBatch")
    EventTypeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#EventTypeId", name: "EventTypeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    EventTypeIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#EventTypeIds", name: "EventTypeIds")
    EventTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#EventTypeName", name: "EventTypeName")
    EventTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#EventTypeSummary", name: "EventTypeSummary")
    ForceUnsubscribeAll = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codestarnotifications#ForceUnsubscribeAll", name: "ForceUnsubscribeAll", traits: {"smithy.api#default" => false})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastModifiedTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codestarnotifications#LastModifiedTimestamp", name: "LastModifiedTimestamp")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListEventTypesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListEventTypesFilter", name: "ListEventTypesFilter")
    ListEventTypesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarnotifications#ListEventTypesFilterName", name: "ListEventTypesFilterName")
    ListEventTypesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#ListEventTypesFilterValue", name: "ListEventTypesFilterValue")
    ListEventTypesFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#ListEventTypesFilters", name: "ListEventTypesFilters")
    ListEventTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListEventTypesRequest", name: "ListEventTypesRequest")
    ListEventTypesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListEventTypesResult", name: "ListEventTypesResult")
    ListNotificationRulesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListNotificationRulesFilter", name: "ListNotificationRulesFilter")
    ListNotificationRulesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarnotifications#ListNotificationRulesFilterName", name: "ListNotificationRulesFilterName")
    ListNotificationRulesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#ListNotificationRulesFilterValue", name: "ListNotificationRulesFilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListNotificationRulesFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#ListNotificationRulesFilters", name: "ListNotificationRulesFilters")
    ListNotificationRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListNotificationRulesRequest", name: "ListNotificationRulesRequest")
    ListNotificationRulesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListNotificationRulesResult", name: "ListNotificationRulesResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListTagsForResourceResult", name: "ListTagsForResourceResult")
    ListTargetsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListTargetsFilter", name: "ListTargetsFilter")
    ListTargetsFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarnotifications#ListTargetsFilterName", name: "ListTargetsFilterName")
    ListTargetsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#ListTargetsFilterValue", name: "ListTargetsFilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListTargetsFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#ListTargetsFilters", name: "ListTargetsFilters")
    ListTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListTargetsRequest", name: "ListTargetsRequest")
    ListTargetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ListTargetsResult", name: "ListTargetsResult")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codestarnotifications#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 1}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#NextToken", name: "NextToken", traits: {"smithy.api#pattern" => "^[\\w/+=]+$"})
    NotificationRuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#NotificationRuleArn", name: "NotificationRuleArn", traits: {"smithy.api#pattern" => "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$"})
    NotificationRuleBatch = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#NotificationRuleBatch", name: "NotificationRuleBatch")
    NotificationRuleCreatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#NotificationRuleCreatedBy", name: "NotificationRuleCreatedBy", traits: {"smithy.api#length" => {"min" => 1}})
    NotificationRuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#NotificationRuleId", name: "NotificationRuleId", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    NotificationRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#NotificationRuleName", name: "NotificationRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9\\-_ ]+$", "smithy.api#sensitive" => {}})
    NotificationRuleResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#NotificationRuleResource", name: "NotificationRuleResource", traits: {"smithy.api#pattern" => "^arn:aws[^:\\s]*:[^:\\s]*:[^:\\s]*:[0-9]{12}:[^\\s]+$"})
    NotificationRuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarnotifications#NotificationRuleStatus", name: "NotificationRuleStatus")
    NotificationRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#NotificationRuleSummary", name: "NotificationRuleSummary")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^([a-zA-Z0-9-])+$"})
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#ServiceName", name: "ServiceName")
    SubscribeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#SubscribeRequest", name: "SubscribeRequest")
    SubscribeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#SubscribeResult", name: "SubscribeResult")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#TagKeys", name: "TagKeys")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#TagResourceResult", name: "TagResourceResult")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codestarnotifications#Tags", name: "Tags")
    Target = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#Target", name: "Target")
    TargetAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#TargetAddress", name: "TargetAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#sensitive" => {}})
    TargetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarnotifications#TargetStatus", name: "TargetStatus")
    TargetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#TargetSummary", name: "TargetSummary")
    TargetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarnotifications#TargetType", name: "TargetType", traits: {"smithy.api#pattern" => "^[A-Za-z]+$"})
    Targets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#Targets", name: "Targets", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TargetsBatch = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarnotifications#TargetsBatch", name: "TargetsBatch")
    UnsubscribeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#UnsubscribeRequest", name: "UnsubscribeRequest")
    UnsubscribeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#UnsubscribeResult", name: "UnsubscribeResult")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#UntagResourceResult", name: "UntagResourceResult")
    UpdateNotificationRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#UpdateNotificationRuleRequest", name: "UpdateNotificationRuleRequest")
    UpdateNotificationRuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#UpdateNotificationRuleResult", name: "UpdateNotificationRuleResult")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarnotifications#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ConfigurationException.type = Types::ConfigurationException
    CreateNotificationRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:event_type_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeIds, name: "EventTypeIds", traits: {"smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleResource, name: "Resource", traits: {"smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets", traits: {"smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:detail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailType, name: "DetailType", traits: {"smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNotificationRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateNotificationRuleRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleStatus, name: "Status"))
    CreateNotificationRuleRequest.type = Types::CreateNotificationRuleRequest
    CreateNotificationRuleResult.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn"))
    CreateNotificationRuleResult.type = Types::CreateNotificationRuleResult
    DeleteNotificationRuleRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteNotificationRuleRequest.type = Types::DeleteNotificationRuleRequest
    DeleteNotificationRuleResult.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn"))
    DeleteNotificationRuleResult.type = Types::DeleteNotificationRuleResult
    DeleteTargetRequest.add_member(:target_address, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAddress, name: "TargetAddress", traits: {"smithy.api#required" => {}}))
    DeleteTargetRequest.add_member(:force_unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceUnsubscribeAll, name: "ForceUnsubscribeAll", traits: {"smithy.api#default" => false}))
    DeleteTargetRequest.type = Types::DeleteTargetRequest
    DeleteTargetResult.type = Types::DeleteTargetResult
    DescribeNotificationRuleRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DescribeNotificationRuleRequest.type = Types::DescribeNotificationRuleRequest
    DescribeNotificationRuleResult.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DescribeNotificationRuleResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleName, name: "Name"))
    DescribeNotificationRuleResult.add_member(:event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeBatch, name: "EventTypes"))
    DescribeNotificationRuleResult.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleResource, name: "Resource"))
    DescribeNotificationRuleResult.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetsBatch, name: "Targets"))
    DescribeNotificationRuleResult.add_member(:detail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailType, name: "DetailType"))
    DescribeNotificationRuleResult.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleCreatedBy, name: "CreatedBy"))
    DescribeNotificationRuleResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleStatus, name: "Status"))
    DescribeNotificationRuleResult.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTimestamp, name: "CreatedTimestamp"))
    DescribeNotificationRuleResult.add_member(:last_modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTimestamp, name: "LastModifiedTimestamp"))
    DescribeNotificationRuleResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DescribeNotificationRuleResult.type = Types::DescribeNotificationRuleResult
    DetailType.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    DetailType.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    EventTypeBatch.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeSummary, name: "member"))
    EventTypeIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeId, name: "member"))
    EventTypeSummary.add_member(:event_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeId, name: "EventTypeId"))
    EventTypeSummary.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName"))
    EventTypeSummary.add_member(:event_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeName, name: "EventTypeName"))
    EventTypeSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    EventTypeSummary.type = Types::EventTypeSummary
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListEventTypesFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEventTypesFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListEventTypesFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEventTypesFilterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    ListEventTypesFilter.type = Types::ListEventTypesFilter
    ListEventTypesFilterName.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    ListEventTypesFilterName.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_NAME", traits: {"smithy.api#enumValue" => "SERVICE_NAME"}))
    ListEventTypesFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEventTypesFilter, name: "member"))
    ListEventTypesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEventTypesFilters, name: "Filters"))
    ListEventTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListEventTypesRequest.type = Types::ListEventTypesRequest
    ListEventTypesResult.add_member(:event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeBatch, name: "EventTypes"))
    ListEventTypesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventTypesResult.type = Types::ListEventTypesResult
    ListNotificationRulesFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNotificationRulesFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListNotificationRulesFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNotificationRulesFilterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    ListNotificationRulesFilter.type = Types::ListNotificationRulesFilter
    ListNotificationRulesFilterName.add_member(:event_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT_TYPE_ID", traits: {"smithy.api#enumValue" => "EVENT_TYPE_ID"}))
    ListNotificationRulesFilterName.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_BY", traits: {"smithy.api#enumValue" => "CREATED_BY"}))
    ListNotificationRulesFilterName.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    ListNotificationRulesFilterName.add_member(:target_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_ADDRESS", traits: {"smithy.api#enumValue" => "TARGET_ADDRESS"}))
    ListNotificationRulesFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNotificationRulesFilter, name: "member"))
    ListNotificationRulesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNotificationRulesFilters, name: "Filters"))
    ListNotificationRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNotificationRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListNotificationRulesRequest.type = Types::ListNotificationRulesRequest
    ListNotificationRulesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNotificationRulesResult.add_member(:notification_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleBatch, name: "NotificationRules"))
    ListNotificationRulesResult.type = Types::ListNotificationRulesResult
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    ListTargetsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTargetsFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListTargetsFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTargetsFilterValue, name: "Value", traits: {"smithy.api#required" => {}}))
    ListTargetsFilter.type = Types::ListTargetsFilter
    ListTargetsFilterName.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_TYPE", traits: {"smithy.api#enumValue" => "TARGET_TYPE"}))
    ListTargetsFilterName.add_member(:target_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_ADDRESS", traits: {"smithy.api#enumValue" => "TARGET_ADDRESS"}))
    ListTargetsFilterName.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_STATUS", traits: {"smithy.api#enumValue" => "TARGET_STATUS"}))
    ListTargetsFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTargetsFilter, name: "member"))
    ListTargetsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTargetsFilters, name: "Filters"))
    ListTargetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTargetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTargetsRequest.type = Types::ListTargetsRequest
    ListTargetsResult.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetsBatch, name: "Targets"))
    ListTargetsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTargetsResult.type = Types::ListTargetsResult
    NotificationRuleBatch.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleSummary, name: "member"))
    NotificationRuleStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    NotificationRuleStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    NotificationRuleSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleId, name: "Id"))
    NotificationRuleSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn"))
    NotificationRuleSummary.type = Types::NotificationRuleSummary
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SubscribeRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    SubscribeRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "Target", traits: {"smithy.api#required" => {}}))
    SubscribeRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    SubscribeRequest.type = Types::SubscribeRequest
    SubscribeResult.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn"))
    SubscribeResult.type = Types::SubscribeResult
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    TagResourceResult.type = Types::TagResourceResult
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    Target.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType"))
    Target.add_member(:target_address, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAddress, name: "TargetAddress"))
    Target.type = Types::Target
    TargetStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    TargetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TargetStatus.add_member(:unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNREACHABLE", traits: {"smithy.api#enumValue" => "UNREACHABLE"}))
    TargetStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TargetStatus.add_member(:deactivated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEACTIVATED", traits: {"smithy.api#enumValue" => "DEACTIVATED"}))
    TargetSummary.add_member(:target_address, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAddress, name: "TargetAddress"))
    TargetSummary.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType"))
    TargetSummary.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStatus, name: "TargetStatus"))
    TargetSummary.type = Types::TargetSummary
    Targets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "member"))
    TargetsBatch.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSummary, name: "member"))
    UnsubscribeRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UnsubscribeRequest.add_member(:target_address, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetAddress, name: "TargetAddress", traits: {"smithy.api#required" => {}}))
    UnsubscribeRequest.type = Types::UnsubscribeRequest
    UnsubscribeResult.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UnsubscribeResult.type = Types::UnsubscribeResult
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateNotificationRuleRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateNotificationRuleRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleName, name: "Name"))
    UpdateNotificationRuleRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleStatus, name: "Status"))
    UpdateNotificationRuleRequest.add_member(:event_type_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeIds, name: "EventTypeIds"))
    UpdateNotificationRuleRequest.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: Targets, name: "Targets"))
    UpdateNotificationRuleRequest.add_member(:detail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailType, name: "DetailType"))
    UpdateNotificationRuleRequest.type = Types::UpdateNotificationRuleRequest
    UpdateNotificationRuleResult.type = Types::UpdateNotificationRuleResult
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ValidationException.type = Types::ValidationException

    CodeStarNotifications20191015 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codestarnotifications#CodeStarNotifications_20191015"
      service.name = "CodeStarNotifications20191015"
      service.version = "2019-10-15"
      service.traits = {"aws.api#service" => {"sdkId" => "codestar notifications", "arnNamespace" => "codestar-notifications", "cloudFormationName" => "CodeStarNotifications", "cloudTrailEventSource" => "codestarnotifications.amazonaws.com", "endpointPrefix" => "codestar-notifications"}, "aws.auth#sigv4" => {"name" => "codestar-notifications"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS CodeStar Notifications"}
      service.add_operation(:create_notification_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#CreateNotificationRule"
        operation.name = "CreateNotificationRule"
        operation.input = CreateNotificationRuleRequest
        operation.output = CreateNotificationRuleResult
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << ConfigurationException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createNotificationRule", "code" => 200}}
      end)
      service.add_operation(:delete_notification_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#DeleteNotificationRule"
        operation.name = "DeleteNotificationRule"
        operation.input = DeleteNotificationRuleRequest
        operation.output = DeleteNotificationRuleResult
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteNotificationRule", "code" => 200}}
      end)
      service.add_operation(:delete_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#DeleteTarget"
        operation.name = "DeleteTarget"
        operation.input = DeleteTargetRequest
        operation.output = DeleteTargetResult
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteTarget", "code" => 200}}
      end)
      service.add_operation(:describe_notification_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#DescribeNotificationRule"
        operation.name = "DescribeNotificationRule"
        operation.input = DescribeNotificationRuleRequest
        operation.output = DescribeNotificationRuleResult
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeNotificationRule", "code" => 200}}
      end)
      service.add_operation(:list_event_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#ListEventTypes"
        operation.name = "ListEventTypes"
        operation.input = ListEventTypesRequest
        operation.output = ListEventTypesResult
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listEventTypes", "code" => 200}}
        operation[:paginator] = Paginators::ListEventTypes.new
      end)
      service.add_operation(:list_notification_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#ListNotificationRules"
        operation.name = "ListNotificationRules"
        operation.input = ListNotificationRulesRequest
        operation.output = ListNotificationRulesResult
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listNotificationRules", "code" => 200}}
        operation[:paginator] = Paginators::ListNotificationRules.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResult
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listTagsForResource", "code" => 200}}
      end)
      service.add_operation(:list_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#ListTargets"
        operation.name = "ListTargets"
        operation.input = ListTargetsRequest
        operation.output = ListTargetsResult
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listTargets", "code" => 200}}
        operation[:paginator] = Paginators::ListTargets.new
      end)
      service.add_operation(:subscribe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#Subscribe"
        operation.name = "Subscribe"
        operation.input = SubscribeRequest
        operation.output = SubscribeResult
        operation.errors << ConfigurationException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/subscribe", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResult
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tagResource", "code" => 200}}
      end)
      service.add_operation(:unsubscribe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#Unsubscribe"
        operation.name = "Unsubscribe"
        operation.input = UnsubscribeRequest
        operation.output = UnsubscribeResult
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/unsubscribe", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResult
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untagResource/{Arn}", "code" => 200}}
      end)
      service.add_operation(:update_notification_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#UpdateNotificationRule"
        operation.name = "UpdateNotificationRule"
        operation.input = UpdateNotificationRuleRequest
        operation.output = UpdateNotificationRuleResult
        operation.errors << ConfigurationException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateNotificationRule", "code" => 200}}
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
