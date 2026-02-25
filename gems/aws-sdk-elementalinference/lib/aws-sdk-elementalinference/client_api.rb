# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElementalInference
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssociateFeedRequest = Shapes::StructureShape.new(name: 'AssociateFeedRequest')
    AssociateFeedResponse = Shapes::StructureShape.new(name: 'AssociateFeedResponse')
    AssociatedResourceName = Shapes::StringShape.new(name: 'AssociatedResourceName')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClippingConfig = Shapes::StructureShape.new(name: 'ClippingConfig')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateFeedRequest = Shapes::StructureShape.new(name: 'CreateFeedRequest')
    CreateFeedResponse = Shapes::StructureShape.new(name: 'CreateFeedResponse')
    CreateOutput = Shapes::StructureShape.new(name: 'CreateOutput')
    CreateOutputList = Shapes::ListShape.new(name: 'CreateOutputList')
    CroppingConfig = Shapes::StructureShape.new(name: 'CroppingConfig')
    DeleteFeedRequest = Shapes::StructureShape.new(name: 'DeleteFeedRequest')
    DeleteFeedResponse = Shapes::StructureShape.new(name: 'DeleteFeedResponse')
    DisassociateFeedRequest = Shapes::StructureShape.new(name: 'DisassociateFeedRequest')
    DisassociateFeedResponse = Shapes::StructureShape.new(name: 'DisassociateFeedResponse')
    FeedArn = Shapes::StringShape.new(name: 'FeedArn')
    FeedAssociation = Shapes::StructureShape.new(name: 'FeedAssociation')
    FeedId = Shapes::StringShape.new(name: 'FeedId')
    FeedStatus = Shapes::StringShape.new(name: 'FeedStatus')
    FeedSummary = Shapes::StructureShape.new(name: 'FeedSummary')
    FeedSummaryList = Shapes::ListShape.new(name: 'FeedSummaryList')
    GetFeedRequest = Shapes::StructureShape.new(name: 'GetFeedRequest')
    GetFeedResponse = Shapes::StructureShape.new(name: 'GetFeedResponse')
    GetOutput = Shapes::StructureShape.new(name: 'GetOutput')
    GetOutputList = Shapes::ListShape.new(name: 'GetOutputList')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListFeedsRequest = Shapes::StructureShape.new(name: 'ListFeedsRequest')
    ListFeedsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFeedsRequestMaxResultsInteger')
    ListFeedsResponse = Shapes::StructureShape.new(name: 'ListFeedsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    OutputConfig = Shapes::UnionShape.new(name: 'OutputConfig')
    OutputStatus = Shapes::StringShape.new(name: 'OutputStatus')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyRequestException = Shapes::StructureShape.new(name: 'TooManyRequestException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateFeedRequest = Shapes::StructureShape.new(name: 'UpdateFeedRequest')
    UpdateFeedResponse = Shapes::StructureShape.new(name: 'UpdateFeedResponse')
    UpdateOutput = Shapes::StructureShape.new(name: 'UpdateOutput')
    UpdateOutputList = Shapes::ListShape.new(name: 'UpdateOutputList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    AssociateFeedRequest.add_member(:associated_resource_name, Shapes::ShapeRef.new(shape: AssociatedResourceName, required: true, location_name: "associatedResourceName", metadata: {"idempotencyToken" => true}))
    AssociateFeedRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: CreateOutputList, required: true, location_name: "outputs"))
    AssociateFeedRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "dryRun"))
    AssociateFeedRequest.struct_class = Types::AssociateFeedRequest

    AssociateFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    AssociateFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    AssociateFeedResponse.struct_class = Types::AssociateFeedResponse

    ClippingConfig.add_member(:callback_metadata, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "callbackMetadata"))
    ClippingConfig.struct_class = Types::ClippingConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateFeedRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFeedRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: CreateOutputList, required: true, location_name: "outputs"))
    CreateFeedRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFeedRequest.struct_class = Types::CreateFeedRequest

    CreateFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    CreateFeedResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    CreateFeedResponse.add_member(:data_endpoints, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "dataEndpoints"))
    CreateFeedResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GetOutputList, required: true, location_name: "outputs"))
    CreateFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    CreateFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    CreateFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFeedResponse.struct_class = Types::CreateFeedResponse

    CreateOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    CreateOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    CreateOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateOutput.struct_class = Types::CreateOutput

    CreateOutputList.member = Shapes::ShapeRef.new(shape: CreateOutput)

    CroppingConfig.struct_class = Types::CroppingConfig

    DeleteFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    DeleteFeedRequest.struct_class = Types::DeleteFeedRequest

    DeleteFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    DeleteFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    DeleteFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    DeleteFeedResponse.struct_class = Types::DeleteFeedResponse

    DisassociateFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    DisassociateFeedRequest.add_member(:associated_resource_name, Shapes::ShapeRef.new(shape: AssociatedResourceName, required: true, location_name: "associatedResourceName", metadata: {"idempotencyToken" => true}))
    DisassociateFeedRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "dryRun"))
    DisassociateFeedRequest.struct_class = Types::DisassociateFeedRequest

    DisassociateFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    DisassociateFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    DisassociateFeedResponse.struct_class = Types::DisassociateFeedResponse

    FeedAssociation.add_member(:associated_resource_name, Shapes::ShapeRef.new(shape: AssociatedResourceName, required: true, location_name: "associatedResourceName"))
    FeedAssociation.struct_class = Types::FeedAssociation

    FeedSummary.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    FeedSummary.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    FeedSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    FeedSummary.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    FeedSummary.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    FeedSummary.struct_class = Types::FeedSummary

    FeedSummaryList.member = Shapes::ShapeRef.new(shape: FeedSummary)

    GetFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    GetFeedRequest.struct_class = Types::GetFeedRequest

    GetFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    GetFeedResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    GetFeedResponse.add_member(:data_endpoints, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "dataEndpoints"))
    GetFeedResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GetOutputList, required: true, location_name: "outputs"))
    GetFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    GetFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    GetFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetFeedResponse.struct_class = Types::GetFeedResponse

    GetOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    GetOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    GetOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetOutput.add_member(:from_association, Shapes::ShapeRef.new(shape: Boolean, location_name: "fromAssociation"))
    GetOutput.struct_class = Types::GetOutput

    GetOutputList.member = Shapes::ShapeRef.new(shape: GetOutput)

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListFeedsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFeedsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListFeedsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFeedsRequest.struct_class = Types::ListFeedsRequest

    ListFeedsResponse.add_member(:feeds, Shapes::ShapeRef.new(shape: FeedSummaryList, required: true, location_name: "feeds"))
    ListFeedsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFeedsResponse.struct_class = Types::ListFeedsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OutputConfig.add_member(:cropping, Shapes::ShapeRef.new(shape: CroppingConfig, location_name: "cropping"))
    OutputConfig.add_member(:clipping, Shapes::ShapeRef.new(shape: ClippingConfig, location_name: "clipping"))
    OutputConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OutputConfig.add_member_subclass(:cropping, Types::OutputConfig::Cropping)
    OutputConfig.add_member_subclass(:clipping, Types::OutputConfig::Clipping)
    OutputConfig.add_member_subclass(:unknown, Types::OutputConfig::Unknown)
    OutputConfig.struct_class = Types::OutputConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TooManyRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TooManyRequestException.struct_class = Types::TooManyRequestException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateFeedRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFeedRequest.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location: "uri", location_name: "id"))
    UpdateFeedRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: UpdateOutputList, required: true, location_name: "outputs"))
    UpdateFeedRequest.struct_class = Types::UpdateFeedRequest

    UpdateFeedResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FeedArn, required: true, location_name: "arn"))
    UpdateFeedResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateFeedResponse.add_member(:id, Shapes::ShapeRef.new(shape: FeedId, required: true, location_name: "id"))
    UpdateFeedResponse.add_member(:data_endpoints, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "dataEndpoints"))
    UpdateFeedResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GetOutputList, required: true, location_name: "outputs"))
    UpdateFeedResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeedStatus, required: true, location_name: "status"))
    UpdateFeedResponse.add_member(:association, Shapes::ShapeRef.new(shape: FeedAssociation, location_name: "association"))
    UpdateFeedResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateFeedResponse.struct_class = Types::UpdateFeedResponse

    UpdateOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    UpdateOutput.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "outputConfig"))
    UpdateOutput.add_member(:status, Shapes::ShapeRef.new(shape: OutputStatus, required: true, location_name: "status"))
    UpdateOutput.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateOutput.add_member(:from_association, Shapes::ShapeRef.new(shape: Boolean, location_name: "fromAssociation"))
    UpdateOutput.struct_class = Types::UpdateOutput

    UpdateOutputList.member = Shapes::ShapeRef.new(shape: UpdateOutput)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-14"

      api.metadata = {
        "apiVersion" => "2018-11-14",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "elemental-inference",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Elemental Inference",
        "serviceId" => "ElementalInference",
        "signatureVersion" => "v4",
        "signingName" => "elemental-inference",
        "uid" => "elementalinference-2018-11-14",
      }

      api.add_operation(:associate_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateFeed"
        o.http_method = "POST"
        o.http_request_uri = "/v1/feed/{id}/associate"
        o.input = Shapes::ShapeRef.new(shape: AssociateFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFeed"
        o.http_method = "POST"
        o.http_request_uri = "/v1/feed"
        o.input = Shapes::ShapeRef.new(shape: CreateFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFeed"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/feed/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFeed"
        o.http_method = "POST"
        o.http_request_uri = "/v1/feed/{id}/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFeed"
        o.http_method = "GET"
        o.http_request_uri = "/v1/feed/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:list_feeds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFeeds"
        o.http_method = "GET"
        o.http_request_uri = "/v1/feeds"
        o.input = Shapes::ShapeRef.new(shape: ListFeedsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFeedsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_feed, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFeed"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/feed/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFeedRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFeedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
