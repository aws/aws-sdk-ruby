# frozen_string_literal: true

# This is generated code!

module Aws::Codestarnotifications
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w:/-]+$"})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ConfigurationException', name: 'ConfigurationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateNotificationRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#CreateNotificationRuleRequest', name: 'CreateNotificationRuleRequest')
    CreateNotificationRuleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#CreateNotificationRuleResult', name: 'CreateNotificationRuleResult')
    CreatedTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codestarnotifications#CreatedTimestamp', name: 'CreatedTimestamp')
    DeleteNotificationRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#DeleteNotificationRuleRequest', name: 'DeleteNotificationRuleRequest')
    DeleteNotificationRuleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#DeleteNotificationRuleResult', name: 'DeleteNotificationRuleResult')
    DeleteTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#DeleteTargetRequest', name: 'DeleteTargetRequest')
    DeleteTargetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#DeleteTargetResult', name: 'DeleteTargetResult')
    DescribeNotificationRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#DescribeNotificationRuleRequest', name: 'DescribeNotificationRuleRequest')
    DescribeNotificationRuleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#DescribeNotificationRuleResult', name: 'DescribeNotificationRuleResult')
    DetailType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarnotifications#DetailType', name: 'DetailType')
    EventTypeBatch = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#EventTypeBatch', name: 'EventTypeBatch')
    EventTypeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#EventTypeId', name: 'EventTypeId', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    EventTypeIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#EventTypeIds', name: 'EventTypeIds')
    EventTypeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#EventTypeName', name: 'EventTypeName')
    EventTypeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#EventTypeSummary', name: 'EventTypeSummary')
    ForceUnsubscribeAll = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codestarnotifications#ForceUnsubscribeAll', name: 'ForceUnsubscribeAll', traits: {"smithy.api#default" => false})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastModifiedTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codestarnotifications#LastModifiedTimestamp', name: 'LastModifiedTimestamp')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListEventTypesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListEventTypesFilter', name: 'ListEventTypesFilter')
    ListEventTypesFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarnotifications#ListEventTypesFilterName', name: 'ListEventTypesFilterName')
    ListEventTypesFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#ListEventTypesFilterValue', name: 'ListEventTypesFilterValue')
    ListEventTypesFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#ListEventTypesFilters', name: 'ListEventTypesFilters')
    ListEventTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListEventTypesRequest', name: 'ListEventTypesRequest')
    ListEventTypesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListEventTypesResult', name: 'ListEventTypesResult')
    ListNotificationRulesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListNotificationRulesFilter', name: 'ListNotificationRulesFilter')
    ListNotificationRulesFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarnotifications#ListNotificationRulesFilterName', name: 'ListNotificationRulesFilterName')
    ListNotificationRulesFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#ListNotificationRulesFilterValue', name: 'ListNotificationRulesFilterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListNotificationRulesFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#ListNotificationRulesFilters', name: 'ListNotificationRulesFilters')
    ListNotificationRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListNotificationRulesRequest', name: 'ListNotificationRulesRequest')
    ListNotificationRulesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListNotificationRulesResult', name: 'ListNotificationRulesResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListTagsForResourceResult', name: 'ListTagsForResourceResult')
    ListTargetsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListTargetsFilter', name: 'ListTargetsFilter')
    ListTargetsFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarnotifications#ListTargetsFilterName', name: 'ListTargetsFilterName')
    ListTargetsFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#ListTargetsFilterValue', name: 'ListTargetsFilterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListTargetsFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#ListTargetsFilters', name: 'ListTargetsFilters')
    ListTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListTargetsRequest', name: 'ListTargetsRequest')
    ListTargetsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ListTargetsResult', name: 'ListTargetsResult')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codestarnotifications#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 1}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^[\\w/+=]+$"})
    NotificationRuleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#NotificationRuleArn', name: 'NotificationRuleArn', traits: {"smithy.api#pattern" => "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$"})
    NotificationRuleBatch = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#NotificationRuleBatch', name: 'NotificationRuleBatch')
    NotificationRuleCreatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#NotificationRuleCreatedBy', name: 'NotificationRuleCreatedBy', traits: {"smithy.api#length" => {"min" => 1}})
    NotificationRuleId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#NotificationRuleId', name: 'NotificationRuleId', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    NotificationRuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#NotificationRuleName', name: 'NotificationRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9\\-_ ]+$", "smithy.api#sensitive" => {}})
    NotificationRuleResource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#NotificationRuleResource', name: 'NotificationRuleResource', traits: {"smithy.api#pattern" => "^arn:aws[^:\\s]*:[^:\\s]*:[^:\\s]*:[0-9]{12}:[^\\s]+$"})
    NotificationRuleStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarnotifications#NotificationRuleStatus', name: 'NotificationRuleStatus')
    NotificationRuleSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#NotificationRuleSummary', name: 'NotificationRuleSummary')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#ResourceType', name: 'ResourceType', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^([a-zA-Z0-9-])+$"})
    ServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#ServiceName', name: 'ServiceName')
    SubscribeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#SubscribeRequest', name: 'SubscribeRequest')
    SubscribeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#SubscribeResult', name: 'SubscribeResult')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#TagKeys', name: 'TagKeys')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#TagResourceResult', name: 'TagResourceResult')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codestarnotifications#Tags', name: 'Tags')
    Target = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#Target', name: 'Target')
    TargetAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#TargetAddress', name: 'TargetAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#sensitive" => {}})
    TargetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarnotifications#TargetStatus', name: 'TargetStatus')
    TargetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#TargetSummary', name: 'TargetSummary')
    TargetType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarnotifications#TargetType', name: 'TargetType', traits: {"smithy.api#pattern" => "^[A-Za-z]+$"})
    Targets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#Targets', name: 'Targets', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TargetsBatch = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarnotifications#TargetsBatch', name: 'TargetsBatch')
    UnsubscribeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#UnsubscribeRequest', name: 'UnsubscribeRequest')
    UnsubscribeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#UnsubscribeResult', name: 'UnsubscribeResult')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#UntagResourceResult', name: 'UntagResourceResult')
    UpdateNotificationRuleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#UpdateNotificationRuleRequest', name: 'UpdateNotificationRuleRequest')
    UpdateNotificationRuleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#UpdateNotificationRuleResult', name: 'UpdateNotificationRuleResult')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarnotifications#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ConfigurationException.type = Types::ConfigurationException
    CreateNotificationRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the notification rule. Notification rule names must be unique in your Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:event_type_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeIds, location_name: 'EventTypeIds', traits: {"smithy.api#documentation" => "<p>A list of event types associated with this notification rule. For a list of allowed\n            events, see <a>EventTypeSummary</a>.</p>", "smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleResource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to associate with the notification rule. Supported resources include pipelines in CodePipeline,\n      repositories in CodeCommit, and build projects in CodeBuild.</p>", "smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: Targets, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>A list of Amazon Resource Names (ARNs) of Amazon Simple Notification Service topics and Chatbot clients to associate with the\n      notification rule.</p>", "smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:detail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailType, location_name: 'DetailType', traits: {"smithy.api#documentation" => "<p>The level of detail to include in the notifications for this resource. <code>BASIC</code> will include only the \n        contents of the event as it would appear in Amazon CloudWatch. <code>FULL</code> will include any supplemental information\n        provided by CodeStar Notifications and/or the service for the resource for which the notification is created.</p>", "smithy.api#required" => {}}))
    CreateNotificationRuleRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, client-generated idempotency token that, when provided in a request, ensures\n            the request cannot be repeated with a changed parameter. If a request with the same\n            parameters is received and a token is included, the request returns information about\n            the initial request that used that token.</p>\n         <note>\n            <p>The Amazon Web Services SDKs prepopulate client request tokens. If you are using an Amazon Web Services SDK, an\n                idempotency token is created for you.</p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    CreateNotificationRuleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to apply to this notification rule. Key names cannot start with \"<code>aws</code>\". </p>"}))
    CreateNotificationRuleRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the notification rule. The default value is <code>ENABLED</code>. If the status is\n            set to <code>DISABLED</code>, notifications aren't sent for the notification rule.</p>"}))
    CreateNotificationRuleRequest.type = Types::CreateNotificationRuleRequest
    CreateNotificationRuleResult.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule.</p>"}))
    CreateNotificationRuleResult.type = Types::CreateNotificationRuleResult
    DeleteNotificationRuleRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteNotificationRuleRequest.type = Types::DeleteNotificationRuleRequest
    DeleteNotificationRuleResult.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the deleted notification rule.</p>"}))
    DeleteNotificationRuleResult.type = Types::DeleteNotificationRuleResult
    DeleteTargetRequest.add_member(:target_address, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAddress, location_name: 'TargetAddress', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Chatbot topic or Chatbot client to delete.</p>", "smithy.api#required" => {}}))
    DeleteTargetRequest.add_member(:force_unsubscribe_all, Smithy::Schema::Shapes::ShapeRef.new(shape: ForceUnsubscribeAll, location_name: 'ForceUnsubscribeAll', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean value that can be used to delete all associations with this Chatbot topic. The\n            default value is FALSE. If set to TRUE, all associations between that target and every\n            notification rule in your Amazon Web Services account are deleted.</p>"}))
    DeleteTargetRequest.type = Types::DeleteTargetRequest
    DeleteTargetResult.type = Types::DeleteTargetResult
    DescribeNotificationRuleRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule.</p>", "smithy.api#required" => {}}))
    DescribeNotificationRuleRequest.type = Types::DescribeNotificationRuleRequest
    DescribeNotificationRuleResult.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule.</p>", "smithy.api#required" => {}}))
    DescribeNotificationRuleResult.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the notification rule.</p>"}))
    DescribeNotificationRuleResult.add_member(:event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeBatch, location_name: 'EventTypes', traits: {"smithy.api#documentation" => "<p>A list of the event types associated with the notification rule.</p>"}))
    DescribeNotificationRuleResult.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleResource, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource associated with the notification\n      rule.</p>"}))
    DescribeNotificationRuleResult.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetsBatch, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>A list of the Chatbot topics and Chatbot clients associated with the notification rule.</p>"}))
    DescribeNotificationRuleResult.add_member(:detail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailType, location_name: 'DetailType', traits: {"smithy.api#documentation" => "<p>The level of detail included in the notifications for this resource. BASIC will include only the \n            contents of the event as it would appear in Amazon CloudWatch. FULL will include any supplemental information\n            provided by CodeStar Notifications and/or the service for the resource for which the notification is created.</p>"}))
    DescribeNotificationRuleResult.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleCreatedBy, location_name: 'CreatedBy', traits: {"smithy.api#documentation" => "<p>The name or email alias of the person who created the notification rule.</p>"}))
    DescribeNotificationRuleResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the notification rule. Valid statuses are on (sending notifications) or off\n      (not sending notifications).</p>"}))
    DescribeNotificationRuleResult.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time the notification rule was created, in timestamp format.</p>"}))
    DescribeNotificationRuleResult.add_member(:last_modified_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: 'LastModifiedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time the notification rule was most recently updated, in timestamp\n            format.</p>"}))
    DescribeNotificationRuleResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the notification rule.</p>"}))
    DescribeNotificationRuleResult.type = Types::DescribeNotificationRuleResult
    DetailType.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASIC', traits: {"smithy.api#enumValue" => "BASIC"}))
    DetailType.add_member(:full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "FULL"}))
    EventTypeBatch.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeSummary)
    EventTypeIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeId)
    EventTypeSummary.add_member(:event_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeId, location_name: 'EventTypeId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the event. For a complete list of event types and IDs, see \n          <a href=\"https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api\">Notification concepts</a>\n          in the <i>Developer Tools Console User Guide</i>.</p>"}))
    EventTypeSummary.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The name of the service for which the event applies.</p>"}))
    EventTypeSummary.add_member(:event_type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeName, location_name: 'EventTypeName', traits: {"smithy.api#documentation" => "<p>The name of the event.</p>"}))
    EventTypeSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the event.</p>"}))
    EventTypeSummary.type = Types::EventTypeSummary
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListEventTypesFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventTypesFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The system-generated name of the filter type you want to filter by.</p>", "smithy.api#required" => {}}))
    ListEventTypesFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventTypesFilterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The name of the resource type (for example, pipeline) or service name (for example,\n      CodePipeline) that you want to filter by.</p>", "smithy.api#required" => {}}))
    ListEventTypesFilter.type = Types::ListEventTypesFilter
    ListEventTypesFilterName.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_TYPE', traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    ListEventTypesFilterName.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_NAME', traits: {"smithy.api#enumValue" => "SERVICE_NAME"}))
    ListEventTypesFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventTypesFilter)
    ListEventTypesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventTypesFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filters to use to return information by service or resource type.</p>"}))
    ListEventTypesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    ListEventTypesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>A non-negative integer used to limit the number of returned results. The default number is 50. The maximum number of\n      results that can be returned is 100.</p>"}))
    ListEventTypesRequest.type = Types::ListEventTypesRequest
    ListEventTypesResult.add_member(:event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeBatch, location_name: 'EventTypes', traits: {"smithy.api#documentation" => "<p>Information about each event, including service name, resource type, event ID, and event\n      name.</p>"}))
    ListEventTypesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    ListEventTypesResult.type = Types::ListEventTypesResult
    ListNotificationRulesFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationRulesFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute you want to use to filter the returned notification rules.</p>", "smithy.api#required" => {}}))
    ListNotificationRulesFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationRulesFilterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the attribute you want to use to filter the returned notification rules. For example, if you specify filtering by <i>RESOURCE</i> \n          in Name, you might specify the ARN of a pipeline in CodePipeline for the value.</p>", "smithy.api#required" => {}}))
    ListNotificationRulesFilter.type = Types::ListNotificationRulesFilter
    ListNotificationRulesFilterName.add_member(:event_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_TYPE_ID', traits: {"smithy.api#enumValue" => "EVENT_TYPE_ID"}))
    ListNotificationRulesFilterName.add_member(:created_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED_BY', traits: {"smithy.api#enumValue" => "CREATED_BY"}))
    ListNotificationRulesFilterName.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    ListNotificationRulesFilterName.add_member(:target_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_ADDRESS', traits: {"smithy.api#enumValue" => "TARGET_ADDRESS"}))
    ListNotificationRulesFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationRulesFilter)
    ListNotificationRulesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationRulesFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filters to use to return information by service or resource type. For valid values,\n            see <a>ListNotificationRulesFilter</a>.</p>\n         <note>\n            <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>\n         </note>"}))
    ListNotificationRulesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    ListNotificationRulesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>A non-negative integer used to limit the number of returned results. The maximum number of\n      results that can be returned is 100.</p>"}))
    ListNotificationRulesRequest.type = Types::ListNotificationRulesRequest
    ListNotificationRulesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    ListNotificationRulesResult.add_member(:notification_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleBatch, location_name: 'NotificationRules', traits: {"smithy.api#documentation" => "<p>The list of notification rules for the Amazon Web Services account, by Amazon Resource Name (ARN) and ID. </p>"}))
    ListNotificationRulesResult.type = Types::ListNotificationRulesResult
    ListTagsForResourceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the notification rule.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the notification rule.</p>"}))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    ListTargetsFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the attribute you want to use to filter the returned targets.</p>", "smithy.api#required" => {}}))
    ListTargetsFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsFilterValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the attribute you want to use to filter the returned targets. For example,\n            if you specify <code>SNS</code> for the Target type, you could specify an Amazon\n            Resource Name (ARN) for a topic as the value.</p>", "smithy.api#required" => {}}))
    ListTargetsFilter.type = Types::ListTargetsFilter
    ListTargetsFilterName.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_TYPE', traits: {"smithy.api#enumValue" => "TARGET_TYPE"}))
    ListTargetsFilterName.add_member(:target_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_ADDRESS', traits: {"smithy.api#enumValue" => "TARGET_ADDRESS"}))
    ListTargetsFilterName.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_STATUS', traits: {"smithy.api#enumValue" => "TARGET_STATUS"}))
    ListTargetsFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsFilter)
    ListTargetsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filters to use to return information by service or resource type. Valid filters\n            include target type, target address, and target status.</p>\n         <note>\n            <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>\n         </note>"}))
    ListTargetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    ListTargetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>A non-negative integer used to limit the number of returned results. The maximum number of\n      results that can be returned is 100.</p>"}))
    ListTargetsRequest.type = Types::ListTargetsRequest
    ListTargetsResult.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetsBatch, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>The list of notification rule targets. </p>"}))
    ListTargetsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of\n            results.</p>"}))
    ListTargetsResult.type = Types::ListTargetsResult
    NotificationRuleBatch.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleSummary)
    NotificationRuleStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    NotificationRuleStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    NotificationRuleSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID of the notification rule.</p>"}))
    NotificationRuleSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule.</p>"}))
    NotificationRuleSummary.type = Types::NotificationRuleSummary
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SubscribeRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule for which you want to create the association.</p>", "smithy.api#required" => {}}))
    SubscribeRequest.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'Target', traits: {"smithy.api#required" => {}}))
    SubscribeRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    SubscribeRequest.type = Types::SubscribeRequest
    SubscribeResult.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule for which you have created assocations.</p>"}))
    SubscribeResult.type = Types::SubscribeResult
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule to tag.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags to associate with the resource. Tag key names cannot start with \"<code>aws</code>\".</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the resource.</p>"}))
    TagResourceResult.type = Types::TagResourceResult
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    Target.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p>The target type. Can be an Chatbot topic or Chatbot client.</p>\n         <ul>\n            <li>\n               <p>Chatbot topics are specified as <code>SNS</code>.</p>\n            </li>\n            <li>\n               <p>Chatbot clients are specified as <code>AWSChatbotSlack</code>.</p>\n            </li>\n         </ul>"}))
    Target.add_member(:target_address, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAddress, location_name: 'TargetAddress', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Chatbot topic or Chatbot client.</p>"}))
    Target.type = Types::Target
    TargetStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    TargetStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TargetStatus.add_member(:unreachable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNREACHABLE', traits: {"smithy.api#enumValue" => "UNREACHABLE"}))
    TargetStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TargetStatus.add_member(:deactivated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATED', traits: {"smithy.api#enumValue" => "DEACTIVATED"}))
    TargetSummary.add_member(:target_address, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAddress, location_name: 'TargetAddress', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Chatbot topic or Chatbot client.</p>"}))
    TargetSummary.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p>The type of the target (for example, <code>SNS</code>).</p>\n         <ul>\n            <li>\n               <p>Chatbot topics are specified as <code>SNS</code>.</p>\n            </li>\n            <li>\n               <p>Chatbot clients are specified as <code>AWSChatbotSlack</code>.</p>\n            </li>\n         </ul>"}))
    TargetSummary.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'TargetStatus', traits: {"smithy.api#documentation" => "<p>The status of the target.</p>"}))
    TargetSummary.type = Types::TargetSummary
    Targets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Target)
    TargetsBatch.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetSummary)
    UnsubscribeRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule.</p>", "smithy.api#required" => {}}))
    UnsubscribeRequest.add_member(:target_address, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetAddress, location_name: 'TargetAddress', traits: {"smithy.api#documentation" => "<p>The ARN of the Chatbot topic to unsubscribe from the notification rule.</p>", "smithy.api#required" => {}}))
    UnsubscribeRequest.type = Types::UnsubscribeRequest
    UnsubscribeResult.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the the notification rule from which you have removed a subscription.</p>", "smithy.api#required" => {}}))
    UnsubscribeResult.type = Types::UnsubscribeResult
    UntagResourceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule from which to remove the\n      tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The key names of the tags to remove.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateNotificationRuleRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the notification rule.</p>", "smithy.api#required" => {}}))
    UpdateNotificationRuleRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the notification rule.</p>"}))
    UpdateNotificationRuleRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationRuleStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the notification rule. Valid statuses include enabled (sending notifications) or\n      disabled (not sending notifications).</p>"}))
    UpdateNotificationRuleRequest.add_member(:event_type_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeIds, location_name: 'EventTypeIds', traits: {"smithy.api#documentation" => "<p>A list of event types associated with this notification rule. For a complete list of event types and IDs, see \n          <a href=\"https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api\">Notification concepts</a>\n       in the <i>Developer Tools Console User Guide</i>.</p>"}))
    UpdateNotificationRuleRequest.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: Targets, location_name: 'Targets', traits: {"smithy.api#documentation" => "<p>The address and type of the targets to receive notifications from this notification\n      rule.</p>"}))
    UpdateNotificationRuleRequest.add_member(:detail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailType, location_name: 'DetailType', traits: {"smithy.api#documentation" => "<p>The level of detail to include in the notifications for this resource. BASIC will include only the \n            contents of the event as it would appear in Amazon CloudWatch. FULL will include any supplemental information\n            provided by CodeStar Notifications and/or the service for the resource for which the notification is created.</p>"}))
    UpdateNotificationRuleRequest.type = Types::UpdateNotificationRuleRequest
    UpdateNotificationRuleResult.type = Types::UpdateNotificationRuleResult
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    CodeStarNotifications20191015 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codestarnotifications#CodeStarNotifications_20191015"
      service.name = "CodeStarNotifications20191015"
      service.version = "2019-10-15"
      service.traits = {"aws.api#service" => {"sdkId" => "codestar notifications", "arnNamespace" => "codestar-notifications", "cloudFormationName" => "CodeStarNotifications", "cloudTrailEventSource" => "codestarnotifications.amazonaws.com", "endpointPrefix" => "codestar-notifications"}, "aws.auth#sigv4" => {"name" => "codestar-notifications"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS CodeStar Notifications"}
      service.add_operation(:create_notification_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#CreateNotificationRule"
        operation.name = "CreateNotificationRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotificationRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNotificationRuleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createNotificationRule", "code" => 200}}
      end)
      service.add_operation(:delete_notification_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#DeleteNotificationRule"
        operation.name = "DeleteNotificationRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotificationRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotificationRuleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteNotificationRule", "code" => 200}}
      end)
      service.add_operation(:delete_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#DeleteTarget"
        operation.name = "DeleteTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTargetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deleteTarget", "code" => 200}}
      end)
      service.add_operation(:describe_notification_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#DescribeNotificationRule"
        operation.name = "DescribeNotificationRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotificationRuleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describeNotificationRule", "code" => 200}}
      end)
      service.add_operation(:list_event_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#ListEventTypes"
        operation.name = "ListEventTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventTypesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listEventTypes", "code" => 200}}
        operation[:paginator] = Paginators::ListEventTypes.new
      end)
      service.add_operation(:list_notification_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#ListNotificationRules"
        operation.name = "ListNotificationRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotificationRulesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listNotificationRules", "code" => 200}}
        operation[:paginator] = Paginators::ListNotificationRules.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listTagsForResource", "code" => 200}}
      end)
      service.add_operation(:list_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#ListTargets"
        operation.name = "ListTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTargetsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listTargets", "code" => 200}}
        operation[:paginator] = Paginators::ListTargets.new
      end)
      service.add_operation(:subscribe, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#Subscribe"
        operation.name = "Subscribe"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/subscribe", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tagResource", "code" => 200}}
      end)
      service.add_operation(:unsubscribe, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#Unsubscribe"
        operation.name = "Unsubscribe"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/unsubscribe", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untagResource/{Arn}", "code" => 200}}
      end)
      service.add_operation(:update_notification_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarnotifications#UpdateNotificationRule"
        operation.name = "UpdateNotificationRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationRuleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationRuleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateNotificationRule", "code" => 200}}
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
