# frozen_string_literal: true

# This is generated code!

module Aws::KendraRanking
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    BodyTokensList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kendraranking#BodyTokensList', name: 'BodyTokensList', traits: {"smithy.api#length" => {"min" => 1}})
    CapacityUnitsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#CapacityUnitsConfiguration', name: 'CapacityUnitsConfiguration')
    ClientTokenName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#ClientTokenName', name: 'ClientTokenName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^$|[\\x00-\\x7F]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateRescoreExecutionPlanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#CreateRescoreExecutionPlanRequest', name: 'CreateRescoreExecutionPlanRequest')
    CreateRescoreExecutionPlanResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#CreateRescoreExecutionPlanResponse', name: 'CreateRescoreExecutionPlanResponse')
    DeleteRescoreExecutionPlanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#DeleteRescoreExecutionPlanRequest', name: 'DeleteRescoreExecutionPlanRequest')
    DescribeRescoreExecutionPlanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#DescribeRescoreExecutionPlanRequest', name: 'DescribeRescoreExecutionPlanRequest')
    DescribeRescoreExecutionPlanResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#DescribeRescoreExecutionPlanResponse', name: 'DescribeRescoreExecutionPlanResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    Document = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#Document', name: 'Document')
    DocumentBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#DocumentBody', name: 'DocumentBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    DocumentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#DocumentId', name: 'DocumentId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DocumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kendraranking#DocumentList', name: 'DocumentList', traits: {"smithy.api#length" => {"min" => 1}})
    DocumentTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#DocumentTitle', name: 'DocumentTitle', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.kendraranking#Float', name: 'Float', traits: {"smithy.api#range" => {"min" => -100000, "max" => 100000}})
    GroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#GroupId', name: 'GroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListRescoreExecutionPlansRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ListRescoreExecutionPlansRequest', name: 'ListRescoreExecutionPlansRequest')
    ListRescoreExecutionPlansResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ListRescoreExecutionPlansResponse', name: 'ListRescoreExecutionPlansResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResultsIntegerForListRescoreExecutionPlansRequest = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kendraranking#MaxResultsIntegerForListRescoreExecutionPlansRequest', name: 'MaxResultsIntegerForListRescoreExecutionPlansRequest', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 800}, "smithy.api#pattern" => "^\\P{C}*$"})
    RescoreCapacityUnit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kendraranking#RescoreCapacityUnit', name: 'RescoreCapacityUnit', traits: {"smithy.api#range" => {"min" => 0}})
    RescoreExecutionPlanArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#RescoreExecutionPlanArn', name: 'RescoreExecutionPlanArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    RescoreExecutionPlanId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#RescoreExecutionPlanId', name: 'RescoreExecutionPlanId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$"})
    RescoreExecutionPlanName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#RescoreExecutionPlanName', name: 'RescoreExecutionPlanName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    RescoreExecutionPlanStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kendraranking#RescoreExecutionPlanStatus', name: 'RescoreExecutionPlanStatus')
    RescoreExecutionPlanSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#RescoreExecutionPlanSummary', name: 'RescoreExecutionPlanSummary')
    RescoreExecutionPlanSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kendraranking#RescoreExecutionPlanSummaryList', name: 'RescoreExecutionPlanSummaryList')
    RescoreId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#RescoreId', name: 'RescoreId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]$"})
    RescoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#RescoreRequest', name: 'RescoreRequest')
    RescoreResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#RescoreResult', name: 'RescoreResult')
    RescoreResultItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#RescoreResultItem', name: 'RescoreResultItem')
    RescoreResultItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kendraranking#RescoreResultItemList', name: 'RescoreResultItemList', traits: {"smithy.api#length" => {"min" => 1}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ResourceUnavailableException', name: 'ResourceUnavailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SearchQuery = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#SearchQuery', name: 'SearchQuery', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kendraranking#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kendraranking#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kendraranking#Timestamp', name: 'Timestamp')
    TitleTokensList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kendraranking#TitleTokensList', name: 'TitleTokensList', traits: {"smithy.api#length" => {"min" => 1}})
    Tokens = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kendraranking#Tokens', name: 'Tokens', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateRescoreExecutionPlanRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#UpdateRescoreExecutionPlanRequest', name: 'UpdateRescoreExecutionPlanRequest')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kendraranking#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    BodyTokensList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tokens)
    CapacityUnitsConfiguration.add_member(:rescore_capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreCapacityUnit, location_name: 'RescoreCapacityUnits', traits: {"smithy.api#documentation" => "<p>The amount of extra capacity for your rescore execution \n            plan.</p>\n         <p>A single extra capacity unit for a rescore execution \n            plan provides 0.01 rescore requests per second. You can add \n            up to 1000 extra capacity units.</p>", "smithy.api#required" => {}}))
    CapacityUnitsConfiguration.type = Types::CapacityUnitsConfiguration
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateRescoreExecutionPlanRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the rescore execution plan.</p>", "smithy.api#required" => {}}))
    CreateRescoreExecutionPlanRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the rescore execution plan.</p>"}))
    CreateRescoreExecutionPlanRequest.add_member(:capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: 'CapacityUnits', traits: {"smithy.api#documentation" => "<p>You can set additional capacity units to meet the \n            needs of your rescore execution plan. You are given a single \n            capacity unit by default. If you want to use the default \n            capacity, you don't set additional capacity units. For more \n            information on the default capacity and additional capacity \n            units, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html\">Adjusting \n                capacity</a>.</p>"}))
    CreateRescoreExecutionPlanRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that identify or categorize your \n            rescore execution plan. You can also use tags to help control \n            access to the rescore execution plan. Tag keys and values can \n            consist of Unicode letters, digits, white space, and any of \n            the following symbols: _ . : / = + - @.</p>"}))
    CreateRescoreExecutionPlanRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenName, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the request to create \n            a rescore execution plan. Multiple calls to the \n            <code>CreateRescoreExecutionPlanRequest</code> API with the \n            same client token will create only one rescore execution plan.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRescoreExecutionPlanRequest.type = Types::CreateRescoreExecutionPlanRequest
    CreateRescoreExecutionPlanResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the rescore execution plan.</p>", "smithy.api#required" => {}}))
    CreateRescoreExecutionPlanResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rescore \n            execution plan.</p>", "smithy.api#required" => {}}))
    CreateRescoreExecutionPlanResponse.type = Types::CreateRescoreExecutionPlanResponse
    DeleteRescoreExecutionPlanRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the rescore execution plan that you \n            want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRescoreExecutionPlanRequest.type = Types::DeleteRescoreExecutionPlanRequest
    DescribeRescoreExecutionPlanRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the rescore execution plan that you want \n            to get information on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRescoreExecutionPlanRequest.type = Types::DescribeRescoreExecutionPlanRequest
    DescribeRescoreExecutionPlanResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the rescore execution plan.</p>"}))
    DescribeRescoreExecutionPlanResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rescore execution \n            plan.</p>"}))
    DescribeRescoreExecutionPlanResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the rescore execution plan.</p>"}))
    DescribeRescoreExecutionPlanResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the rescore execution plan.</p>"}))
    DescribeRescoreExecutionPlanResponse.add_member(:capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: 'CapacityUnits', traits: {"smithy.api#documentation" => "<p>The capacity units set for the rescore execution plan. \n            A capacity of zero indicates that the rescore execution \n            plan is using the default capacity. For more information on the \n            default capacity and additional capacity units, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html\">Adjusting \n                capacity</a>.</p>"}))
    DescribeRescoreExecutionPlanResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of when the rescore execution plan was \n            created.</p>"}))
    DescribeRescoreExecutionPlanResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp of when the rescore execution plan was \n            last updated.</p>"}))
    DescribeRescoreExecutionPlanResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the rescore execution plan. When the \n            value is <code>ACTIVE</code>, the rescore execution plan is \n            ready for use. If the <code>Status</code> field value is \n            <code>FAILED</code>, the <code>ErrorMessage</code> field \n            contains a message that explains why.</p>"}))
    DescribeRescoreExecutionPlanResponse.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>When the <code>Status</code> field value is \n            <code>FAILED</code>, the <code>ErrorMessage</code> field \n            contains a message that explains why.</p>"}))
    DescribeRescoreExecutionPlanResponse.type = Types::DescribeRescoreExecutionPlanResponse
    Document.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the document from the search service.</p>", "smithy.api#required" => {}}))
    Document.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupId, location_name: 'GroupId', traits: {"smithy.api#documentation" => "<p>The optional group identifier of the document from the search \n            service. Documents with the same group identifier are grouped \n            together and processed as one document within the service.</p>"}))
    Document.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTitle, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title of the search service's document.</p>"}))
    Document.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentBody, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body text of the search service's document.</p>"}))
    Document.add_member(:tokenized_title, Smithy::Schema::Shapes::ShapeRef.new(shape: TitleTokensList, location_name: 'TokenizedTitle', traits: {"smithy.api#documentation" => "<p>The title of the search service's document represented as \n            a list of tokens or words. You must choose to provide \n            <code>Title</code> or <code>TokenizedTitle</code>. You cannot\n            provide both.</p>"}))
    Document.add_member(:tokenized_body, Smithy::Schema::Shapes::ShapeRef.new(shape: BodyTokensList, location_name: 'TokenizedBody', traits: {"smithy.api#documentation" => "<p>The body text of the search service's document represented \n            as a list of tokens or words. You must choose to provide \n            <code>Body</code> or <code>TokenizedBody</code>. You cannot \n            provide both.</p>"}))
    Document.add_member(:original_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'OriginalScore', traits: {"smithy.api#documentation" => "<p>The original document score or rank from the search service. \n            Amazon Kendra Intelligent Ranking gives the document a new \n            score or rank based on its intelligent search algorithms.</p>", "smithy.api#required" => {}}))
    Document.type = Types::Document
    DocumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Document)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListRescoreExecutionPlansRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Kendra Intelligent \n            Ranking returns a pagination token in the response. You can use \n            this pagination token to retrieve the next set of rescore \n            execution plans.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRescoreExecutionPlansRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListRescoreExecutionPlansRequest, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of rescore execution plans to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRescoreExecutionPlansRequest.type = Types::ListRescoreExecutionPlansRequest
    ListRescoreExecutionPlansResponse.add_member(:summary_items, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanSummaryList, location_name: 'SummaryItems', traits: {"smithy.api#documentation" => "<p>An array of summary information for one or more rescore \n            execution plans.</p>"}))
    ListRescoreExecutionPlansResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Kendra Intelligent \n            Ranking returns a pagination token in the response.</p>"}))
    ListRescoreExecutionPlansResponse.type = Types::ListRescoreExecutionPlansResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rescore execution \n            plan to get a list of tags for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the rescore execution \n            plan.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    RescoreExecutionPlanStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    RescoreExecutionPlanStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    RescoreExecutionPlanStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RescoreExecutionPlanStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    RescoreExecutionPlanStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RescoreExecutionPlanSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the rescore execution plan.</p>"}))
    RescoreExecutionPlanSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the rescore execution plan.</p>"}))
    RescoreExecutionPlanSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the rescore execution plan \n            was created.</p>"}))
    RescoreExecutionPlanSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the rescore execution plan \n            was last updated.</p>"}))
    RescoreExecutionPlanSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the rescore execution plan. When \n            the value is <code>ACTIVE</code>, the rescore execution \n            plan is ready for use.</p>"}))
    RescoreExecutionPlanSummary.type = Types::RescoreExecutionPlanSummary
    RescoreExecutionPlanSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanSummary)
    RescoreRequest.add_member(:rescore_execution_plan_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: 'RescoreExecutionPlanId', traits: {"smithy.api#documentation" => "<p>The identifier of the rescore execution plan. A rescore \n            execution plan is an Amazon Kendra Intelligent Ranking \n            resource used for provisioning the <code>Rescore</code> API.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RescoreRequest.add_member(:search_query, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchQuery, location_name: 'SearchQuery', traits: {"smithy.api#documentation" => "<p>The input query from the search service.</p>", "smithy.api#required" => {}}))
    RescoreRequest.add_member(:documents, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentList, location_name: 'Documents', traits: {"smithy.api#documentation" => "<p>The list of documents for Amazon Kendra Intelligent \n            Ranking to rescore or rank on.</p>", "smithy.api#required" => {}}))
    RescoreRequest.type = Types::RescoreRequest
    RescoreResult.add_member(:rescore_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreId, location_name: 'RescoreId', traits: {"smithy.api#documentation" => "<p>The identifier associated with the scores that \n            Amazon Kendra Intelligent Ranking gives to the \n            results. Amazon Kendra Intelligent Ranking \n            rescores or re-ranks the results for the search service.</p>"}))
    RescoreResult.add_member(:result_items, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreResultItemList, location_name: 'ResultItems', traits: {"smithy.api#documentation" => "<p>A list of result items for documents with new relevancy \n            scores. The results are in descending order.</p>"}))
    RescoreResult.type = Types::RescoreResult
    RescoreResultItem.add_member(:document_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'DocumentId', traits: {"smithy.api#documentation" => "<p>The identifier of the document from the search service.</p>"}))
    RescoreResultItem.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The relevancy score or rank that Amazon Kendra \n            Intelligent Ranking gives to the result.</p>"}))
    RescoreResultItem.type = Types::RescoreResultItem
    RescoreResultItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreResultItem)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the tag. Keys are not case sensitive and must \n            be unique.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value associated with the tag. The value can be an \n            empty string but it can't be null.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rescore execution \n            plan to tag.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag keys to add to a rescore execution plan. \n            If a tag already exists, the existing value is replaced \n            with the new value.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    TitleTokensList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tokens)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the rescore execution \n            plan to remove the tag.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of tag keys to remove from the rescore execution \n            plan. If a tag key does not exist on the resource, it is \n            ignored.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateRescoreExecutionPlanRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the rescore execution plan that you want \n            to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRescoreExecutionPlanRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreExecutionPlanName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A new name for the rescore execution plan.</p>"}))
    UpdateRescoreExecutionPlanRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A new description for the rescore execution plan.</p>"}))
    UpdateRescoreExecutionPlanRequest.add_member(:capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: 'CapacityUnits', traits: {"smithy.api#documentation" => "<p>You can set additional capacity units to meet the needs \n            of your rescore execution plan. You are given a single capacity \n            unit by default. If you want to use the default capacity, you \n            don't set additional capacity units. For more information on the\n            default capacity and additional capacity units, see \n            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html\">Adjusting capacity</a>.</p>"}))
    UpdateRescoreExecutionPlanRequest.type = Types::UpdateRescoreExecutionPlanRequest
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    AWSKendraRerankingFrontendService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kendraranking#AWSKendraRerankingFrontendService"
      service.name = "AWSKendraRerankingFrontendService"
      service.version = "2022-10-19"
      service.traits = {"aws.api#service" => {"sdkId" => "Kendra Ranking", "arnNamespace" => "kendra-ranking", "cloudFormationName" => "KendraRanking", "cloudTrailEventSource" => "kendraranking.amazonaws.com", "endpointPrefix" => "kendra-ranking"}, "aws.auth#sigv4" => {"name" => "kendra-ranking"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Kendra Intelligent Ranking"}
      service.add_operation(:create_rescore_execution_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#CreateRescoreExecutionPlan"
        operation.name = "CreateRescoreExecutionPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRescoreExecutionPlanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRescoreExecutionPlanResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rescore-execution-plans", "code" => 200}}
      end)
      service.add_operation(:delete_rescore_execution_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#DeleteRescoreExecutionPlan"
        operation.name = "DeleteRescoreExecutionPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRescoreExecutionPlanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/rescore-execution-plans/{Id}", "code" => 200}}
      end)
      service.add_operation(:describe_rescore_execution_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#DescribeRescoreExecutionPlan"
        operation.name = "DescribeRescoreExecutionPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRescoreExecutionPlanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRescoreExecutionPlanResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rescore-execution-plans/{Id}", "code" => 200}}
      end)
      service.add_operation(:list_rescore_execution_plans, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#ListRescoreExecutionPlans"
        operation.name = "ListRescoreExecutionPlans"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRescoreExecutionPlansRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRescoreExecutionPlansResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rescore-execution-plans", "code" => 200}}
        operation[:paginator] = Paginators::ListRescoreExecutionPlans.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:rescore, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#Rescore"
        operation.name = "Rescore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RescoreResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rescore-execution-plans/{RescoreExecutionPlanId}/rescore", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_rescore_execution_plan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendraranking#UpdateRescoreExecutionPlan"
        operation.name = "UpdateRescoreExecutionPlan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRescoreExecutionPlanRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/rescore-execution-plans/{Id}", "code" => 200}}
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
