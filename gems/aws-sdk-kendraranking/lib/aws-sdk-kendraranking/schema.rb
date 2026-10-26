# frozen_string_literal: true

# This is generated code!

module Aws::KendraRanking
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    BodyTokensList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendraranking#BodyTokensList", name: "BodyTokensList", traits: {"smithy.api#length" => {"min" => 1}})
    CapacityUnitsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#CapacityUnitsConfiguration", name: "CapacityUnitsConfiguration")
    ClientTokenName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#ClientTokenName", name: "ClientTokenName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^$|[\\x00-\\x7F]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateRescoreExecutionPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#CreateRescoreExecutionPlanRequest", name: "CreateRescoreExecutionPlanRequest")
    CreateRescoreExecutionPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#CreateRescoreExecutionPlanResponse", name: "CreateRescoreExecutionPlanResponse")
    DeleteRescoreExecutionPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#DeleteRescoreExecutionPlanRequest", name: "DeleteRescoreExecutionPlanRequest")
    DescribeRescoreExecutionPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#DescribeRescoreExecutionPlanRequest", name: "DescribeRescoreExecutionPlanRequest")
    DescribeRescoreExecutionPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#DescribeRescoreExecutionPlanResponse", name: "DescribeRescoreExecutionPlanResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    Document = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#Document", name: "Document")
    DocumentBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#DocumentBody", name: "DocumentBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    DocumentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#DocumentId", name: "DocumentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendraranking#DocumentList", name: "DocumentList", traits: {"smithy.api#length" => {"min" => 1}})
    DocumentTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#DocumentTitle", name: "DocumentTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.kendraranking#Float", name: "Float", traits: {"smithy.api#range" => {"min" => -100000, "max" => 100000}})
    GroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#GroupId", name: "GroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRescoreExecutionPlansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ListRescoreExecutionPlansRequest", name: "ListRescoreExecutionPlansRequest")
    ListRescoreExecutionPlansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ListRescoreExecutionPlansResponse", name: "ListRescoreExecutionPlansResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResultsIntegerForListRescoreExecutionPlansRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendraranking#MaxResultsIntegerForListRescoreExecutionPlansRequest", name: "MaxResultsIntegerForListRescoreExecutionPlansRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 800}, "smithy.api#pattern" => "^\\P{C}*$"})
    RescoreCapacityUnit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendraranking#RescoreCapacityUnit", name: "RescoreCapacityUnit", traits: {"smithy.api#range" => {"min" => 0}})
    RescoreExecutionPlanArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#RescoreExecutionPlanArn", name: "RescoreExecutionPlanArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    RescoreExecutionPlanId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#RescoreExecutionPlanId", name: "RescoreExecutionPlanId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$"})
    RescoreExecutionPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#RescoreExecutionPlanName", name: "RescoreExecutionPlanName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    RescoreExecutionPlanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendraranking#RescoreExecutionPlanStatus", name: "RescoreExecutionPlanStatus")
    RescoreExecutionPlanSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#RescoreExecutionPlanSummary", name: "RescoreExecutionPlanSummary")
    RescoreExecutionPlanSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendraranking#RescoreExecutionPlanSummaryList", name: "RescoreExecutionPlanSummaryList")
    RescoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#RescoreId", name: "RescoreId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]$"})
    RescoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#RescoreRequest", name: "RescoreRequest")
    RescoreResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#RescoreResult", name: "RescoreResult")
    RescoreResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#RescoreResultItem", name: "RescoreResultItem")
    RescoreResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendraranking#RescoreResultItemList", name: "RescoreResultItemList", traits: {"smithy.api#length" => {"min" => 1}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ResourceUnavailableException", name: "ResourceUnavailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SearchQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#SearchQuery", name: "SearchQuery", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendraranking#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendraranking#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.kendraranking#Timestamp", name: "Timestamp")
    TitleTokensList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendraranking#TitleTokensList", name: "TitleTokensList", traits: {"smithy.api#length" => {"min" => 1}})
    Tokens = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendraranking#Tokens", name: "Tokens", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateRescoreExecutionPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#UpdateRescoreExecutionPlanRequest", name: "UpdateRescoreExecutionPlanRequest")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendraranking#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BodyTokensList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tokens, name: "member"))
    CapacityUnitsConfiguration.add_member(:rescore_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreCapacityUnit, name: "RescoreCapacityUnits", traits: {"smithy.api#required" => {}}))
    CapacityUnitsConfiguration.type = Types::CapacityUnitsConfiguration
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateRescoreExecutionPlanRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateRescoreExecutionPlanRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateRescoreExecutionPlanRequest.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnitsConfiguration, name: "CapacityUnits"))
    CreateRescoreExecutionPlanRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRescoreExecutionPlanRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRescoreExecutionPlanRequest.type = Types::CreateRescoreExecutionPlanRequest
    CreateRescoreExecutionPlanResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanId, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateRescoreExecutionPlanResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateRescoreExecutionPlanResponse.type = Types::CreateRescoreExecutionPlanResponse
    DeleteRescoreExecutionPlanRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRescoreExecutionPlanRequest.type = Types::DeleteRescoreExecutionPlanRequest
    DescribeRescoreExecutionPlanRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRescoreExecutionPlanRequest.type = Types::DescribeRescoreExecutionPlanRequest
    DescribeRescoreExecutionPlanResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanId, name: "Id"))
    DescribeRescoreExecutionPlanResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanArn, name: "Arn"))
    DescribeRescoreExecutionPlanResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanName, name: "Name"))
    DescribeRescoreExecutionPlanResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeRescoreExecutionPlanResponse.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnitsConfiguration, name: "CapacityUnits"))
    DescribeRescoreExecutionPlanResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DescribeRescoreExecutionPlanResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    DescribeRescoreExecutionPlanResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanStatus, name: "Status"))
    DescribeRescoreExecutionPlanResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DescribeRescoreExecutionPlanResponse.type = Types::DescribeRescoreExecutionPlanResponse
    Document.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "Id", traits: {"smithy.api#required" => {}}))
    Document.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "GroupId"))
    Document.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentTitle, name: "Title"))
    Document.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentBody, name: "Body"))
    Document.add_member(:tokenized_title, ::Smithy::Schema::Shapes::MemberShape.new(target: TitleTokensList, name: "TokenizedTitle"))
    Document.add_member(:tokenized_body, ::Smithy::Schema::Shapes::MemberShape.new(target: BodyTokensList, name: "TokenizedBody"))
    Document.add_member(:original_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "OriginalScore", traits: {"smithy.api#required" => {}}))
    Document.type = Types::Document
    DocumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListRescoreExecutionPlansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRescoreExecutionPlansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListRescoreExecutionPlansRequest, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRescoreExecutionPlansRequest.type = Types::ListRescoreExecutionPlansRequest
    ListRescoreExecutionPlansResponse.add_member(:summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanSummaryList, name: "SummaryItems"))
    ListRescoreExecutionPlansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRescoreExecutionPlansResponse.type = Types::ListRescoreExecutionPlansResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    RescoreExecutionPlanStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RescoreExecutionPlanStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RescoreExecutionPlanStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RescoreExecutionPlanStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RescoreExecutionPlanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RescoreExecutionPlanSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanName, name: "Name"))
    RescoreExecutionPlanSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanId, name: "Id"))
    RescoreExecutionPlanSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    RescoreExecutionPlanSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    RescoreExecutionPlanSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanStatus, name: "Status"))
    RescoreExecutionPlanSummary.type = Types::RescoreExecutionPlanSummary
    RescoreExecutionPlanSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanSummary, name: "member"))
    RescoreRequest.add_member(:rescore_execution_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanId, name: "RescoreExecutionPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RescoreRequest.add_member(:search_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQuery, name: "SearchQuery", traits: {"smithy.api#required" => {}}))
    RescoreRequest.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "Documents", traits: {"smithy.api#required" => {}}))
    RescoreRequest.type = Types::RescoreRequest
    RescoreResult.add_member(:rescore_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreId, name: "RescoreId"))
    RescoreResult.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreResultItemList, name: "ResultItems"))
    RescoreResult.type = Types::RescoreResult
    RescoreResultItem.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "DocumentId"))
    RescoreResultItem.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Score"))
    RescoreResultItem.type = Types::RescoreResultItem
    RescoreResultItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreResultItem, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TitleTokensList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tokens, name: "member"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateRescoreExecutionPlanRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanId, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRescoreExecutionPlanRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RescoreExecutionPlanName, name: "Name"))
    UpdateRescoreExecutionPlanRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateRescoreExecutionPlanRequest.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnitsConfiguration, name: "CapacityUnits"))
    UpdateRescoreExecutionPlanRequest.type = Types::UpdateRescoreExecutionPlanRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.type = Types::ValidationException

    AWSKendraRerankingFrontendService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kendraranking#AWSKendraRerankingFrontendService"
      service.name = "AWSKendraRerankingFrontendService"
      service.version = "2022-10-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Kendra Ranking", "arnNamespace" => "kendra-ranking", "cloudFormationName" => "KendraRanking", "cloudTrailEventSource" => "kendraranking.amazonaws.com", "endpointPrefix" => "kendra-ranking"}, "aws.auth#sigv4" => {"name" => "kendra-ranking"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Kendra Intelligent Ranking", "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kendra-ranking-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kendra-ranking.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kendra-ranking-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kendra-ranking.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 9, "nodes" => "/////wAAAAH/////AAAAAAAAAAkAAAADAAAAAQAAAAQF9eEIAAAAAgAAAAUF9eEIAAAAAwAAAAcAAAAGAAAABQX14QUF9eEHAAAABAAAAAgF9eEEAAAABQX14QMF9eEGAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_rescore_execution_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#CreateRescoreExecutionPlan"
        operation.name = "CreateRescoreExecutionPlan"
        operation.input = CreateRescoreExecutionPlanRequest
        operation.output = CreateRescoreExecutionPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rescore-execution-plans", "code" => 200}}
      end)
      service.add_operation(:delete_rescore_execution_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#DeleteRescoreExecutionPlan"
        operation.name = "DeleteRescoreExecutionPlan"
        operation.input = DeleteRescoreExecutionPlanRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/rescore-execution-plans/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_rescore_execution_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#DescribeRescoreExecutionPlan"
        operation.name = "DescribeRescoreExecutionPlan"
        operation.input = DescribeRescoreExecutionPlanRequest
        operation.output = DescribeRescoreExecutionPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rescore-execution-plans/{Id}", "code" => 200}}
      end)
      service.add_operation(:list_rescore_execution_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#ListRescoreExecutionPlans"
        operation.name = "ListRescoreExecutionPlans"
        operation.input = ListRescoreExecutionPlansRequest
        operation.output = ListRescoreExecutionPlansResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rescore-execution-plans", "code" => 200}}
        operation[:paginator] = Paginators::ListRescoreExecutionPlans.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:rescore, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#Rescore"
        operation.name = "Rescore"
        operation.input = RescoreRequest
        operation.output = RescoreResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rescore-execution-plans/{RescoreExecutionPlanId}/rescore", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_rescore_execution_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#UpdateRescoreExecutionPlan"
        operation.name = "UpdateRescoreExecutionPlan"
        operation.input = UpdateRescoreExecutionPlanRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/rescore-execution-plans/{Id}", "code" => 200}}
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
