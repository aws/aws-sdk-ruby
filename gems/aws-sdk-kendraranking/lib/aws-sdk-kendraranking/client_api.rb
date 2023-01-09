# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KendraRanking
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    BodyTokensList = Shapes::ListShape.new(name: 'BodyTokensList')
    CapacityUnitsConfiguration = Shapes::StructureShape.new(name: 'CapacityUnitsConfiguration')
    ClientTokenName = Shapes::StringShape.new(name: 'ClientTokenName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateRescoreExecutionPlanRequest = Shapes::StructureShape.new(name: 'CreateRescoreExecutionPlanRequest')
    CreateRescoreExecutionPlanResponse = Shapes::StructureShape.new(name: 'CreateRescoreExecutionPlanResponse')
    DeleteRescoreExecutionPlanRequest = Shapes::StructureShape.new(name: 'DeleteRescoreExecutionPlanRequest')
    DescribeRescoreExecutionPlanRequest = Shapes::StructureShape.new(name: 'DescribeRescoreExecutionPlanRequest')
    DescribeRescoreExecutionPlanResponse = Shapes::StructureShape.new(name: 'DescribeRescoreExecutionPlanResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentBody = Shapes::StringShape.new(name: 'DocumentBody')
    DocumentId = Shapes::StringShape.new(name: 'DocumentId')
    DocumentList = Shapes::ListShape.new(name: 'DocumentList')
    DocumentTitle = Shapes::StringShape.new(name: 'DocumentTitle')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Float = Shapes::FloatShape.new(name: 'Float')
    GroupId = Shapes::StringShape.new(name: 'GroupId')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRescoreExecutionPlansRequest = Shapes::StructureShape.new(name: 'ListRescoreExecutionPlansRequest')
    ListRescoreExecutionPlansResponse = Shapes::StructureShape.new(name: 'ListRescoreExecutionPlansResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResultsIntegerForListRescoreExecutionPlansRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListRescoreExecutionPlansRequest')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    RescoreCapacityUnit = Shapes::IntegerShape.new(name: 'RescoreCapacityUnit')
    RescoreExecutionPlanArn = Shapes::StringShape.new(name: 'RescoreExecutionPlanArn')
    RescoreExecutionPlanId = Shapes::StringShape.new(name: 'RescoreExecutionPlanId')
    RescoreExecutionPlanName = Shapes::StringShape.new(name: 'RescoreExecutionPlanName')
    RescoreExecutionPlanStatus = Shapes::StringShape.new(name: 'RescoreExecutionPlanStatus')
    RescoreExecutionPlanSummary = Shapes::StructureShape.new(name: 'RescoreExecutionPlanSummary')
    RescoreExecutionPlanSummaryList = Shapes::ListShape.new(name: 'RescoreExecutionPlanSummaryList')
    RescoreId = Shapes::StringShape.new(name: 'RescoreId')
    RescoreRequest = Shapes::StructureShape.new(name: 'RescoreRequest')
    RescoreResult = Shapes::StructureShape.new(name: 'RescoreResult')
    RescoreResultItem = Shapes::StructureShape.new(name: 'RescoreResultItem')
    RescoreResultItemList = Shapes::ListShape.new(name: 'RescoreResultItemList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    SearchQuery = Shapes::StringShape.new(name: 'SearchQuery')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TitleTokensList = Shapes::ListShape.new(name: 'TitleTokensList')
    Tokens = Shapes::StringShape.new(name: 'Tokens')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateRescoreExecutionPlanRequest = Shapes::StructureShape.new(name: 'UpdateRescoreExecutionPlanRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BodyTokensList.member = Shapes::ShapeRef.new(shape: Tokens)

    CapacityUnitsConfiguration.add_member(:rescore_capacity_units, Shapes::ShapeRef.new(shape: RescoreCapacityUnit, required: true, location_name: "RescoreCapacityUnits"))
    CapacityUnitsConfiguration.struct_class = Types::CapacityUnitsConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateRescoreExecutionPlanRequest.add_member(:name, Shapes::ShapeRef.new(shape: RescoreExecutionPlanName, required: true, location_name: "Name"))
    CreateRescoreExecutionPlanRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateRescoreExecutionPlanRequest.add_member(:capacity_units, Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: "CapacityUnits"))
    CreateRescoreExecutionPlanRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRescoreExecutionPlanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateRescoreExecutionPlanRequest.struct_class = Types::CreateRescoreExecutionPlanRequest

    CreateRescoreExecutionPlanResponse.add_member(:id, Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, required: true, location_name: "Id"))
    CreateRescoreExecutionPlanResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RescoreExecutionPlanArn, required: true, location_name: "Arn"))
    CreateRescoreExecutionPlanResponse.struct_class = Types::CreateRescoreExecutionPlanResponse

    DeleteRescoreExecutionPlanRequest.add_member(:id, Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, required: true, location_name: "Id"))
    DeleteRescoreExecutionPlanRequest.struct_class = Types::DeleteRescoreExecutionPlanRequest

    DescribeRescoreExecutionPlanRequest.add_member(:id, Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, required: true, location_name: "Id"))
    DescribeRescoreExecutionPlanRequest.struct_class = Types::DescribeRescoreExecutionPlanRequest

    DescribeRescoreExecutionPlanResponse.add_member(:id, Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: "Id"))
    DescribeRescoreExecutionPlanResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RescoreExecutionPlanArn, location_name: "Arn"))
    DescribeRescoreExecutionPlanResponse.add_member(:name, Shapes::ShapeRef.new(shape: RescoreExecutionPlanName, location_name: "Name"))
    DescribeRescoreExecutionPlanResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeRescoreExecutionPlanResponse.add_member(:capacity_units, Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: "CapacityUnits"))
    DescribeRescoreExecutionPlanResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeRescoreExecutionPlanResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeRescoreExecutionPlanResponse.add_member(:status, Shapes::ShapeRef.new(shape: RescoreExecutionPlanStatus, location_name: "Status"))
    DescribeRescoreExecutionPlanResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeRescoreExecutionPlanResponse.struct_class = Types::DescribeRescoreExecutionPlanResponse

    Document.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "Id"))
    Document.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "GroupId"))
    Document.add_member(:title, Shapes::ShapeRef.new(shape: DocumentTitle, location_name: "Title"))
    Document.add_member(:body, Shapes::ShapeRef.new(shape: DocumentBody, location_name: "Body"))
    Document.add_member(:tokenized_title, Shapes::ShapeRef.new(shape: TitleTokensList, location_name: "TokenizedTitle"))
    Document.add_member(:tokenized_body, Shapes::ShapeRef.new(shape: BodyTokensList, location_name: "TokenizedBody"))
    Document.add_member(:original_score, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "OriginalScore"))
    Document.struct_class = Types::Document

    DocumentList.member = Shapes::ShapeRef.new(shape: Document)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRescoreExecutionPlansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRescoreExecutionPlansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListRescoreExecutionPlansRequest, location_name: "MaxResults"))
    ListRescoreExecutionPlansRequest.struct_class = Types::ListRescoreExecutionPlansRequest

    ListRescoreExecutionPlansResponse.add_member(:summary_items, Shapes::ShapeRef.new(shape: RescoreExecutionPlanSummaryList, location_name: "SummaryItems"))
    ListRescoreExecutionPlansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRescoreExecutionPlansResponse.struct_class = Types::ListRescoreExecutionPlansResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    RescoreExecutionPlanSummary.add_member(:name, Shapes::ShapeRef.new(shape: RescoreExecutionPlanName, location_name: "Name"))
    RescoreExecutionPlanSummary.add_member(:id, Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, location_name: "Id"))
    RescoreExecutionPlanSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    RescoreExecutionPlanSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    RescoreExecutionPlanSummary.add_member(:status, Shapes::ShapeRef.new(shape: RescoreExecutionPlanStatus, location_name: "Status"))
    RescoreExecutionPlanSummary.struct_class = Types::RescoreExecutionPlanSummary

    RescoreExecutionPlanSummaryList.member = Shapes::ShapeRef.new(shape: RescoreExecutionPlanSummary)

    RescoreRequest.add_member(:rescore_execution_plan_id, Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, required: true, location_name: "RescoreExecutionPlanId"))
    RescoreRequest.add_member(:search_query, Shapes::ShapeRef.new(shape: SearchQuery, required: true, location_name: "SearchQuery"))
    RescoreRequest.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, required: true, location_name: "Documents"))
    RescoreRequest.struct_class = Types::RescoreRequest

    RescoreResult.add_member(:rescore_id, Shapes::ShapeRef.new(shape: RescoreId, location_name: "RescoreId"))
    RescoreResult.add_member(:result_items, Shapes::ShapeRef.new(shape: RescoreResultItemList, location_name: "ResultItems"))
    RescoreResult.struct_class = Types::RescoreResult

    RescoreResultItem.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "DocumentId"))
    RescoreResultItem.add_member(:score, Shapes::ShapeRef.new(shape: Float, location_name: "Score"))
    RescoreResultItem.struct_class = Types::RescoreResultItem

    RescoreResultItemList.member = Shapes::ShapeRef.new(shape: RescoreResultItem)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TitleTokensList.member = Shapes::ShapeRef.new(shape: Tokens)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateRescoreExecutionPlanRequest.add_member(:id, Shapes::ShapeRef.new(shape: RescoreExecutionPlanId, required: true, location_name: "Id"))
    UpdateRescoreExecutionPlanRequest.add_member(:name, Shapes::ShapeRef.new(shape: RescoreExecutionPlanName, location_name: "Name"))
    UpdateRescoreExecutionPlanRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateRescoreExecutionPlanRequest.add_member(:capacity_units, Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: "CapacityUnits"))
    UpdateRescoreExecutionPlanRequest.struct_class = Types::UpdateRescoreExecutionPlanRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-10-19"

      api.metadata = {
        "apiVersion" => "2022-10-19",
        "endpointPrefix" => "kendra-ranking",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "Kendra Ranking",
        "serviceFullName" => "Amazon Kendra Intelligent Ranking",
        "serviceId" => "Kendra Ranking",
        "signatureVersion" => "v4",
        "signingName" => "kendra-ranking",
        "targetPrefix" => "AWSKendraRerankingFrontendService",
        "uid" => "kendra-ranking-2022-10-19",
      }

      api.add_operation(:create_rescore_execution_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRescoreExecutionPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRescoreExecutionPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRescoreExecutionPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_rescore_execution_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRescoreExecutionPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRescoreExecutionPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_rescore_execution_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRescoreExecutionPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRescoreExecutionPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRescoreExecutionPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_rescore_execution_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRescoreExecutionPlans"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRescoreExecutionPlansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRescoreExecutionPlansResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:rescore, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Rescore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RescoreRequest)
        o.output = Shapes::ShapeRef.new(shape: RescoreResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_rescore_execution_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRescoreExecutionPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRescoreExecutionPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
