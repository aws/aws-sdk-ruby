# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeStarNotifications
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConfigurationException = Shapes::StructureShape.new(name: 'ConfigurationException')
    CreateNotificationRuleRequest = Shapes::StructureShape.new(name: 'CreateNotificationRuleRequest')
    CreateNotificationRuleResult = Shapes::StructureShape.new(name: 'CreateNotificationRuleResult')
    CreatedTimestamp = Shapes::TimestampShape.new(name: 'CreatedTimestamp')
    DeleteNotificationRuleRequest = Shapes::StructureShape.new(name: 'DeleteNotificationRuleRequest')
    DeleteNotificationRuleResult = Shapes::StructureShape.new(name: 'DeleteNotificationRuleResult')
    DeleteTargetRequest = Shapes::StructureShape.new(name: 'DeleteTargetRequest')
    DeleteTargetResult = Shapes::StructureShape.new(name: 'DeleteTargetResult')
    DescribeNotificationRuleRequest = Shapes::StructureShape.new(name: 'DescribeNotificationRuleRequest')
    DescribeNotificationRuleResult = Shapes::StructureShape.new(name: 'DescribeNotificationRuleResult')
    DetailType = Shapes::StringShape.new(name: 'DetailType')
    EventTypeBatch = Shapes::ListShape.new(name: 'EventTypeBatch')
    EventTypeId = Shapes::StringShape.new(name: 'EventTypeId')
    EventTypeIds = Shapes::ListShape.new(name: 'EventTypeIds')
    EventTypeName = Shapes::StringShape.new(name: 'EventTypeName')
    EventTypeSummary = Shapes::StructureShape.new(name: 'EventTypeSummary')
    ForceUnsubscribeAll = Shapes::BooleanShape.new(name: 'ForceUnsubscribeAll')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    LastModifiedTimestamp = Shapes::TimestampShape.new(name: 'LastModifiedTimestamp')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListEventTypesFilter = Shapes::StructureShape.new(name: 'ListEventTypesFilter')
    ListEventTypesFilterName = Shapes::StringShape.new(name: 'ListEventTypesFilterName')
    ListEventTypesFilterValue = Shapes::StringShape.new(name: 'ListEventTypesFilterValue')
    ListEventTypesFilters = Shapes::ListShape.new(name: 'ListEventTypesFilters')
    ListEventTypesRequest = Shapes::StructureShape.new(name: 'ListEventTypesRequest')
    ListEventTypesResult = Shapes::StructureShape.new(name: 'ListEventTypesResult')
    ListNotificationRulesFilter = Shapes::StructureShape.new(name: 'ListNotificationRulesFilter')
    ListNotificationRulesFilterName = Shapes::StringShape.new(name: 'ListNotificationRulesFilterName')
    ListNotificationRulesFilterValue = Shapes::StringShape.new(name: 'ListNotificationRulesFilterValue')
    ListNotificationRulesFilters = Shapes::ListShape.new(name: 'ListNotificationRulesFilters')
    ListNotificationRulesRequest = Shapes::StructureShape.new(name: 'ListNotificationRulesRequest')
    ListNotificationRulesResult = Shapes::StructureShape.new(name: 'ListNotificationRulesResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    ListTargetsFilter = Shapes::StructureShape.new(name: 'ListTargetsFilter')
    ListTargetsFilterName = Shapes::StringShape.new(name: 'ListTargetsFilterName')
    ListTargetsFilterValue = Shapes::StringShape.new(name: 'ListTargetsFilterValue')
    ListTargetsFilters = Shapes::ListShape.new(name: 'ListTargetsFilters')
    ListTargetsRequest = Shapes::StructureShape.new(name: 'ListTargetsRequest')
    ListTargetsResult = Shapes::StructureShape.new(name: 'ListTargetsResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotificationRuleArn = Shapes::StringShape.new(name: 'NotificationRuleArn')
    NotificationRuleBatch = Shapes::ListShape.new(name: 'NotificationRuleBatch')
    NotificationRuleCreatedBy = Shapes::StringShape.new(name: 'NotificationRuleCreatedBy')
    NotificationRuleId = Shapes::StringShape.new(name: 'NotificationRuleId')
    NotificationRuleName = Shapes::StringShape.new(name: 'NotificationRuleName')
    NotificationRuleResource = Shapes::StringShape.new(name: 'NotificationRuleResource')
    NotificationRuleStatus = Shapes::StringShape.new(name: 'NotificationRuleStatus')
    NotificationRuleSummary = Shapes::StructureShape.new(name: 'NotificationRuleSummary')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    SubscribeRequest = Shapes::StructureShape.new(name: 'SubscribeRequest')
    SubscribeResult = Shapes::StructureShape.new(name: 'SubscribeResult')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetAddress = Shapes::StringShape.new(name: 'TargetAddress')
    TargetStatus = Shapes::StringShape.new(name: 'TargetStatus')
    TargetSummary = Shapes::StructureShape.new(name: 'TargetSummary')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    Targets = Shapes::ListShape.new(name: 'Targets')
    TargetsBatch = Shapes::ListShape.new(name: 'TargetsBatch')
    UnsubscribeRequest = Shapes::StructureShape.new(name: 'UnsubscribeRequest')
    UnsubscribeResult = Shapes::StructureShape.new(name: 'UnsubscribeResult')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateNotificationRuleRequest = Shapes::StructureShape.new(name: 'UpdateNotificationRuleRequest')
    UpdateNotificationRuleResult = Shapes::StructureShape.new(name: 'UpdateNotificationRuleResult')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ConfigurationException.struct_class = Types::ConfigurationException

    CreateNotificationRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: NotificationRuleName, required: true, location_name: "Name"))
    CreateNotificationRuleRequest.add_member(:event_type_ids, Shapes::ShapeRef.new(shape: EventTypeIds, required: true, location_name: "EventTypeIds"))
    CreateNotificationRuleRequest.add_member(:resource, Shapes::ShapeRef.new(shape: NotificationRuleResource, required: true, location_name: "Resource"))
    CreateNotificationRuleRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "Targets"))
    CreateNotificationRuleRequest.add_member(:detail_type, Shapes::ShapeRef.new(shape: DetailType, required: true, location_name: "DetailType"))
    CreateNotificationRuleRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNotificationRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateNotificationRuleRequest.add_member(:status, Shapes::ShapeRef.new(shape: NotificationRuleStatus, location_name: "Status"))
    CreateNotificationRuleRequest.struct_class = Types::CreateNotificationRuleRequest

    CreateNotificationRuleResult.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: "Arn"))
    CreateNotificationRuleResult.struct_class = Types::CreateNotificationRuleResult

    DeleteNotificationRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    DeleteNotificationRuleRequest.struct_class = Types::DeleteNotificationRuleRequest

    DeleteNotificationRuleResult.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: "Arn"))
    DeleteNotificationRuleResult.struct_class = Types::DeleteNotificationRuleResult

    DeleteTargetRequest.add_member(:target_address, Shapes::ShapeRef.new(shape: TargetAddress, required: true, location_name: "TargetAddress"))
    DeleteTargetRequest.add_member(:force_unsubscribe_all, Shapes::ShapeRef.new(shape: ForceUnsubscribeAll, location_name: "ForceUnsubscribeAll"))
    DeleteTargetRequest.struct_class = Types::DeleteTargetRequest

    DeleteTargetResult.struct_class = Types::DeleteTargetResult

    DescribeNotificationRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    DescribeNotificationRuleRequest.struct_class = Types::DescribeNotificationRuleRequest

    DescribeNotificationRuleResult.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    DescribeNotificationRuleResult.add_member(:name, Shapes::ShapeRef.new(shape: NotificationRuleName, location_name: "Name"))
    DescribeNotificationRuleResult.add_member(:event_types, Shapes::ShapeRef.new(shape: EventTypeBatch, location_name: "EventTypes"))
    DescribeNotificationRuleResult.add_member(:resource, Shapes::ShapeRef.new(shape: NotificationRuleResource, location_name: "Resource"))
    DescribeNotificationRuleResult.add_member(:targets, Shapes::ShapeRef.new(shape: TargetsBatch, location_name: "Targets"))
    DescribeNotificationRuleResult.add_member(:detail_type, Shapes::ShapeRef.new(shape: DetailType, location_name: "DetailType"))
    DescribeNotificationRuleResult.add_member(:created_by, Shapes::ShapeRef.new(shape: NotificationRuleCreatedBy, location_name: "CreatedBy"))
    DescribeNotificationRuleResult.add_member(:status, Shapes::ShapeRef.new(shape: NotificationRuleStatus, location_name: "Status"))
    DescribeNotificationRuleResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "CreatedTimestamp"))
    DescribeNotificationRuleResult.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "LastModifiedTimestamp"))
    DescribeNotificationRuleResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    DescribeNotificationRuleResult.struct_class = Types::DescribeNotificationRuleResult

    EventTypeBatch.member = Shapes::ShapeRef.new(shape: EventTypeSummary)

    EventTypeIds.member = Shapes::ShapeRef.new(shape: EventTypeId)

    EventTypeSummary.add_member(:event_type_id, Shapes::ShapeRef.new(shape: EventTypeId, location_name: "EventTypeId"))
    EventTypeSummary.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    EventTypeSummary.add_member(:event_type_name, Shapes::ShapeRef.new(shape: EventTypeName, location_name: "EventTypeName"))
    EventTypeSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    EventTypeSummary.struct_class = Types::EventTypeSummary

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListEventTypesFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListEventTypesFilterName, required: true, location_name: "Name"))
    ListEventTypesFilter.add_member(:value, Shapes::ShapeRef.new(shape: ListEventTypesFilterValue, required: true, location_name: "Value"))
    ListEventTypesFilter.struct_class = Types::ListEventTypesFilter

    ListEventTypesFilters.member = Shapes::ShapeRef.new(shape: ListEventTypesFilter)

    ListEventTypesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListEventTypesFilters, location_name: "Filters"))
    ListEventTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListEventTypesRequest.struct_class = Types::ListEventTypesRequest

    ListEventTypesResult.add_member(:event_types, Shapes::ShapeRef.new(shape: EventTypeBatch, location_name: "EventTypes"))
    ListEventTypesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventTypesResult.struct_class = Types::ListEventTypesResult

    ListNotificationRulesFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListNotificationRulesFilterName, required: true, location_name: "Name"))
    ListNotificationRulesFilter.add_member(:value, Shapes::ShapeRef.new(shape: ListNotificationRulesFilterValue, required: true, location_name: "Value"))
    ListNotificationRulesFilter.struct_class = Types::ListNotificationRulesFilter

    ListNotificationRulesFilters.member = Shapes::ShapeRef.new(shape: ListNotificationRulesFilter)

    ListNotificationRulesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNotificationRulesFilters, location_name: "Filters"))
    ListNotificationRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotificationRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListNotificationRulesRequest.struct_class = Types::ListNotificationRulesRequest

    ListNotificationRulesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotificationRulesResult.add_member(:notification_rules, Shapes::ShapeRef.new(shape: NotificationRuleBatch, location_name: "NotificationRules"))
    ListNotificationRulesResult.struct_class = Types::ListNotificationRulesResult

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    ListTargetsFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListTargetsFilterName, required: true, location_name: "Name"))
    ListTargetsFilter.add_member(:value, Shapes::ShapeRef.new(shape: ListTargetsFilterValue, required: true, location_name: "Value"))
    ListTargetsFilter.struct_class = Types::ListTargetsFilter

    ListTargetsFilters.member = Shapes::ShapeRef.new(shape: ListTargetsFilter)

    ListTargetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListTargetsFilters, location_name: "Filters"))
    ListTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListTargetsRequest.struct_class = Types::ListTargetsRequest

    ListTargetsResult.add_member(:targets, Shapes::ShapeRef.new(shape: TargetsBatch, location_name: "Targets"))
    ListTargetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTargetsResult.struct_class = Types::ListTargetsResult

    NotificationRuleBatch.member = Shapes::ShapeRef.new(shape: NotificationRuleSummary)

    NotificationRuleSummary.add_member(:id, Shapes::ShapeRef.new(shape: NotificationRuleId, location_name: "Id"))
    NotificationRuleSummary.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: "Arn"))
    NotificationRuleSummary.struct_class = Types::NotificationRuleSummary

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SubscribeRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    SubscribeRequest.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "Target"))
    SubscribeRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    SubscribeRequest.struct_class = Types::SubscribeRequest

    SubscribeResult.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: "Arn"))
    SubscribeResult.struct_class = Types::SubscribeResult

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    TagResourceResult.struct_class = Types::TagResourceResult

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    Target.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    Target.add_member(:target_address, Shapes::ShapeRef.new(shape: TargetAddress, location_name: "TargetAddress"))
    Target.struct_class = Types::Target

    TargetSummary.add_member(:target_address, Shapes::ShapeRef.new(shape: TargetAddress, location_name: "TargetAddress"))
    TargetSummary.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    TargetSummary.add_member(:target_status, Shapes::ShapeRef.new(shape: TargetStatus, location_name: "TargetStatus"))
    TargetSummary.struct_class = Types::TargetSummary

    Targets.member = Shapes::ShapeRef.new(shape: Target)

    TargetsBatch.member = Shapes::ShapeRef.new(shape: TargetSummary)

    UnsubscribeRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    UnsubscribeRequest.add_member(:target_address, Shapes::ShapeRef.new(shape: TargetAddress, required: true, location_name: "TargetAddress"))
    UnsubscribeRequest.struct_class = Types::UnsubscribeRequest

    UnsubscribeResult.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    UnsubscribeResult.struct_class = Types::UnsubscribeResult

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.struct_class = Types::UntagResourceResult

    UpdateNotificationRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationRuleArn, required: true, location_name: "Arn"))
    UpdateNotificationRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: NotificationRuleName, location_name: "Name"))
    UpdateNotificationRuleRequest.add_member(:status, Shapes::ShapeRef.new(shape: NotificationRuleStatus, location_name: "Status"))
    UpdateNotificationRuleRequest.add_member(:event_type_ids, Shapes::ShapeRef.new(shape: EventTypeIds, location_name: "EventTypeIds"))
    UpdateNotificationRuleRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateNotificationRuleRequest.add_member(:detail_type, Shapes::ShapeRef.new(shape: DetailType, location_name: "DetailType"))
    UpdateNotificationRuleRequest.struct_class = Types::UpdateNotificationRuleRequest

    UpdateNotificationRuleResult.struct_class = Types::UpdateNotificationRuleResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-10-15"

      api.metadata = {
        "apiVersion" => "2019-10-15",
        "endpointPrefix" => "codestar-notifications",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS CodeStar Notifications",
        "serviceId" => "codestar notifications",
        "signatureVersion" => "v4",
        "signingName" => "codestar-notifications",
        "uid" => "codestar-notifications-2019-10-15",
      }

      api.add_operation(:create_notification_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotificationRule"
        o.http_method = "POST"
        o.http_request_uri = "/createNotificationRule"
        o.input = Shapes::ShapeRef.new(shape: CreateNotificationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNotificationRuleResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_notification_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationRule"
        o.http_method = "POST"
        o.http_request_uri = "/deleteNotificationRule"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNotificationRuleResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTarget"
        o.http_method = "POST"
        o.http_request_uri = "/deleteTarget"
        o.input = Shapes::ShapeRef.new(shape: DeleteTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTargetResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_notification_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotificationRule"
        o.http_method = "POST"
        o.http_request_uri = "/describeNotificationRule"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotificationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotificationRuleResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_event_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventTypes"
        o.http_method = "POST"
        o.http_request_uri = "/listEventTypes"
        o.input = Shapes::ShapeRef.new(shape: ListEventTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventTypesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notification_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationRules"
        o.http_method = "POST"
        o.http_request_uri = "/listNotificationRules"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationRulesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/listTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargets"
        o.http_method = "POST"
        o.http_request_uri = "/listTargets"
        o.input = Shapes::ShapeRef.new(shape: ListTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:subscribe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Subscribe"
        o.http_method = "POST"
        o.http_request_uri = "/subscribe"
        o.input = Shapes::ShapeRef.new(shape: SubscribeRequest)
        o.output = Shapes::ShapeRef.new(shape: SubscribeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:unsubscribe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Unsubscribe"
        o.http_method = "POST"
        o.http_request_uri = "/unsubscribe"
        o.input = Shapes::ShapeRef.new(shape: UnsubscribeRequest)
        o.output = Shapes::ShapeRef.new(shape: UnsubscribeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_notification_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotificationRule"
        o.http_method = "POST"
        o.http_request_uri = "/updateNotificationRule"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotificationRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotificationRuleResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
