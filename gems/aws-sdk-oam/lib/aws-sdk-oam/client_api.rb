# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OAM
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateLinkInput = Shapes::StructureShape.new(name: 'CreateLinkInput')
    CreateLinkOutput = Shapes::StructureShape.new(name: 'CreateLinkOutput')
    CreateSinkInput = Shapes::StructureShape.new(name: 'CreateSinkInput')
    CreateSinkOutput = Shapes::StructureShape.new(name: 'CreateSinkOutput')
    DeleteLinkInput = Shapes::StructureShape.new(name: 'DeleteLinkInput')
    DeleteLinkOutput = Shapes::StructureShape.new(name: 'DeleteLinkOutput')
    DeleteSinkInput = Shapes::StructureShape.new(name: 'DeleteSinkInput')
    DeleteSinkOutput = Shapes::StructureShape.new(name: 'DeleteSinkOutput')
    GetLinkInput = Shapes::StructureShape.new(name: 'GetLinkInput')
    GetLinkOutput = Shapes::StructureShape.new(name: 'GetLinkOutput')
    GetSinkInput = Shapes::StructureShape.new(name: 'GetSinkInput')
    GetSinkOutput = Shapes::StructureShape.new(name: 'GetSinkOutput')
    GetSinkPolicyInput = Shapes::StructureShape.new(name: 'GetSinkPolicyInput')
    GetSinkPolicyOutput = Shapes::StructureShape.new(name: 'GetSinkPolicyOutput')
    InternalServiceFault = Shapes::StructureShape.new(name: 'InternalServiceFault')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    LabelTemplate = Shapes::StringShape.new(name: 'LabelTemplate')
    ListAttachedLinksInput = Shapes::StructureShape.new(name: 'ListAttachedLinksInput')
    ListAttachedLinksItem = Shapes::StructureShape.new(name: 'ListAttachedLinksItem')
    ListAttachedLinksItems = Shapes::ListShape.new(name: 'ListAttachedLinksItems')
    ListAttachedLinksMaxResults = Shapes::IntegerShape.new(name: 'ListAttachedLinksMaxResults')
    ListAttachedLinksOutput = Shapes::StructureShape.new(name: 'ListAttachedLinksOutput')
    ListLinksInput = Shapes::StructureShape.new(name: 'ListLinksInput')
    ListLinksItem = Shapes::StructureShape.new(name: 'ListLinksItem')
    ListLinksItems = Shapes::ListShape.new(name: 'ListLinksItems')
    ListLinksMaxResults = Shapes::IntegerShape.new(name: 'ListLinksMaxResults')
    ListLinksOutput = Shapes::StructureShape.new(name: 'ListLinksOutput')
    ListSinksInput = Shapes::StructureShape.new(name: 'ListSinksInput')
    ListSinksItem = Shapes::StructureShape.new(name: 'ListSinksItem')
    ListSinksItems = Shapes::ListShape.new(name: 'ListSinksItems')
    ListSinksMaxResults = Shapes::IntegerShape.new(name: 'ListSinksMaxResults')
    ListSinksOutput = Shapes::StructureShape.new(name: 'ListSinksOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MissingRequiredParameterException = Shapes::StructureShape.new(name: 'MissingRequiredParameterException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PutSinkPolicyInput = Shapes::StructureShape.new(name: 'PutSinkPolicyInput')
    PutSinkPolicyOutput = Shapes::StructureShape.new(name: 'PutSinkPolicyOutput')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypesInput = Shapes::ListShape.new(name: 'ResourceTypesInput')
    ResourceTypesOutput = Shapes::ListShape.new(name: 'ResourceTypesOutput')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SinkName = Shapes::StringShape.new(name: 'SinkName')
    SinkPolicy = Shapes::StringShape.new(name: 'SinkPolicy')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMapInput = Shapes::MapShape.new(name: 'TagMapInput')
    TagMapOutput = Shapes::MapShape.new(name: 'TagMapOutput')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateLinkInput = Shapes::StructureShape.new(name: 'UpdateLinkInput')
    UpdateLinkOutput = Shapes::StructureShape.new(name: 'UpdateLinkOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ConflictException.struct_class = Types::ConflictException

    CreateLinkInput.add_member(:label_template, Shapes::ShapeRef.new(shape: LabelTemplate, required: true, location_name: "LabelTemplate"))
    CreateLinkInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypesInput, required: true, location_name: "ResourceTypes"))
    CreateLinkInput.add_member(:sink_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "SinkIdentifier"))
    CreateLinkInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateLinkInput.struct_class = Types::CreateLinkInput

    CreateLinkOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    CreateLinkOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    CreateLinkOutput.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    CreateLinkOutput.add_member(:label_template, Shapes::ShapeRef.new(shape: String, location_name: "LabelTemplate"))
    CreateLinkOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: "ResourceTypes"))
    CreateLinkOutput.add_member(:sink_arn, Shapes::ShapeRef.new(shape: String, location_name: "SinkArn"))
    CreateLinkOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    CreateLinkOutput.struct_class = Types::CreateLinkOutput

    CreateSinkInput.add_member(:name, Shapes::ShapeRef.new(shape: SinkName, required: true, location_name: "Name"))
    CreateSinkInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "Tags"))
    CreateSinkInput.struct_class = Types::CreateSinkInput

    CreateSinkOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    CreateSinkOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    CreateSinkOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CreateSinkOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    CreateSinkOutput.struct_class = Types::CreateSinkOutput

    DeleteLinkInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "Identifier"))
    DeleteLinkInput.struct_class = Types::DeleteLinkInput

    DeleteLinkOutput.struct_class = Types::DeleteLinkOutput

    DeleteSinkInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "Identifier"))
    DeleteSinkInput.struct_class = Types::DeleteSinkInput

    DeleteSinkOutput.struct_class = Types::DeleteSinkOutput

    GetLinkInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "Identifier"))
    GetLinkInput.struct_class = Types::GetLinkInput

    GetLinkOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    GetLinkOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    GetLinkOutput.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    GetLinkOutput.add_member(:label_template, Shapes::ShapeRef.new(shape: String, location_name: "LabelTemplate"))
    GetLinkOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: "ResourceTypes"))
    GetLinkOutput.add_member(:sink_arn, Shapes::ShapeRef.new(shape: String, location_name: "SinkArn"))
    GetLinkOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    GetLinkOutput.struct_class = Types::GetLinkOutput

    GetSinkInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "Identifier"))
    GetSinkInput.struct_class = Types::GetSinkInput

    GetSinkOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    GetSinkOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    GetSinkOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GetSinkOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    GetSinkOutput.struct_class = Types::GetSinkOutput

    GetSinkPolicyInput.add_member(:sink_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "SinkIdentifier"))
    GetSinkPolicyInput.struct_class = Types::GetSinkPolicyInput

    GetSinkPolicyOutput.add_member(:sink_arn, Shapes::ShapeRef.new(shape: String, location_name: "SinkArn"))
    GetSinkPolicyOutput.add_member(:sink_id, Shapes::ShapeRef.new(shape: String, location_name: "SinkId"))
    GetSinkPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    GetSinkPolicyOutput.struct_class = Types::GetSinkPolicyOutput

    InternalServiceFault.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServiceFault.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    InternalServiceFault.struct_class = Types::InternalServiceFault

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    ListAttachedLinksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAttachedLinksMaxResults, location_name: "MaxResults"))
    ListAttachedLinksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAttachedLinksInput.add_member(:sink_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "SinkIdentifier"))
    ListAttachedLinksInput.struct_class = Types::ListAttachedLinksInput

    ListAttachedLinksItem.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    ListAttachedLinksItem.add_member(:link_arn, Shapes::ShapeRef.new(shape: String, location_name: "LinkArn"))
    ListAttachedLinksItem.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: "ResourceTypes"))
    ListAttachedLinksItem.struct_class = Types::ListAttachedLinksItem

    ListAttachedLinksItems.member = Shapes::ShapeRef.new(shape: ListAttachedLinksItem)

    ListAttachedLinksOutput.add_member(:items, Shapes::ShapeRef.new(shape: ListAttachedLinksItems, required: true, location_name: "Items"))
    ListAttachedLinksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAttachedLinksOutput.struct_class = Types::ListAttachedLinksOutput

    ListLinksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLinksMaxResults, location_name: "MaxResults"))
    ListLinksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLinksInput.struct_class = Types::ListLinksInput

    ListLinksItem.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    ListLinksItem.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    ListLinksItem.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    ListLinksItem.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: "ResourceTypes"))
    ListLinksItem.add_member(:sink_arn, Shapes::ShapeRef.new(shape: String, location_name: "SinkArn"))
    ListLinksItem.struct_class = Types::ListLinksItem

    ListLinksItems.member = Shapes::ShapeRef.new(shape: ListLinksItem)

    ListLinksOutput.add_member(:items, Shapes::ShapeRef.new(shape: ListLinksItems, required: true, location_name: "Items"))
    ListLinksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListLinksOutput.struct_class = Types::ListLinksOutput

    ListSinksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSinksMaxResults, location_name: "MaxResults"))
    ListSinksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSinksInput.struct_class = Types::ListSinksInput

    ListSinksItem.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    ListSinksItem.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    ListSinksItem.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ListSinksItem.struct_class = Types::ListSinksItem

    ListSinksItems.member = Shapes::ShapeRef.new(shape: ListSinksItem)

    ListSinksOutput.add_member(:items, Shapes::ShapeRef.new(shape: ListSinksItems, required: true, location_name: "Items"))
    ListSinksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSinksOutput.struct_class = Types::ListSinksOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MissingRequiredParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    MissingRequiredParameterException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    MissingRequiredParameterException.struct_class = Types::MissingRequiredParameterException

    PutSinkPolicyInput.add_member(:sink_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "SinkIdentifier"))
    PutSinkPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: SinkPolicy, required: true, location_name: "Policy"))
    PutSinkPolicyInput.struct_class = Types::PutSinkPolicyInput

    PutSinkPolicyOutput.add_member(:sink_arn, Shapes::ShapeRef.new(shape: String, location_name: "SinkArn"))
    PutSinkPolicyOutput.add_member(:sink_id, Shapes::ShapeRef.new(shape: String, location_name: "SinkId"))
    PutSinkPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    PutSinkPolicyOutput.struct_class = Types::PutSinkPolicyOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypesInput.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResourceTypesOutput.member = Shapes::ShapeRef.new(shape: String)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMapInput.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.value = Shapes::ShapeRef.new(shape: TagValue)

    TagMapOutput.key = Shapes::ShapeRef.new(shape: String)
    TagMapOutput.value = Shapes::ShapeRef.new(shape: String)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapInput, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateLinkInput.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "Identifier"))
    UpdateLinkInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypesInput, required: true, location_name: "ResourceTypes"))
    UpdateLinkInput.struct_class = Types::UpdateLinkInput

    UpdateLinkOutput.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    UpdateLinkOutput.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    UpdateLinkOutput.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    UpdateLinkOutput.add_member(:label_template, Shapes::ShapeRef.new(shape: LabelTemplate, location_name: "LabelTemplate"))
    UpdateLinkOutput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: "ResourceTypes"))
    UpdateLinkOutput.add_member(:sink_arn, Shapes::ShapeRef.new(shape: String, location_name: "SinkArn"))
    UpdateLinkOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "Tags"))
    UpdateLinkOutput.struct_class = Types::UpdateLinkOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-06-10"

      api.metadata = {
        "apiVersion" => "2022-06-10",
        "endpointPrefix" => "oam",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "CloudWatch Observability Access Manager",
        "serviceId" => "OAM",
        "signatureVersion" => "v4",
        "signingName" => "oam",
        "uid" => "oam-2022-06-10",
      }

      api.add_operation(:create_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLink"
        o.http_method = "POST"
        o.http_request_uri = "/CreateLink"
        o.input = Shapes::ShapeRef.new(shape: CreateLinkInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:create_sink, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSink"
        o.http_method = "POST"
        o.http_request_uri = "/CreateSink"
        o.input = Shapes::ShapeRef.new(shape: CreateSinkInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:delete_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLink"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteLink"
        o.input = Shapes::ShapeRef.new(shape: DeleteLinkInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteLinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_sink, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSink"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteSink"
        o.input = Shapes::ShapeRef.new(shape: DeleteSinkInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLink"
        o.http_method = "POST"
        o.http_request_uri = "/GetLink"
        o.input = Shapes::ShapeRef.new(shape: GetLinkInput)
        o.output = Shapes::ShapeRef.new(shape: GetLinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_sink, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSink"
        o.http_method = "POST"
        o.http_request_uri = "/GetSink"
        o.input = Shapes::ShapeRef.new(shape: GetSinkInput)
        o.output = Shapes::ShapeRef.new(shape: GetSinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_sink_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSinkPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/GetSinkPolicy"
        o.input = Shapes::ShapeRef.new(shape: GetSinkPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetSinkPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_attached_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachedLinks"
        o.http_method = "POST"
        o.http_request_uri = "/ListAttachedLinks"
        o.input = Shapes::ShapeRef.new(shape: ListAttachedLinksInput)
        o.output = Shapes::ShapeRef.new(shape: ListAttachedLinksOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLinks"
        o.http_method = "POST"
        o.http_request_uri = "/ListLinks"
        o.input = Shapes::ShapeRef.new(shape: ListLinksInput)
        o.output = Shapes::ShapeRef.new(shape: ListLinksOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sinks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSinks"
        o.http_method = "POST"
        o.http_request_uri = "/ListSinks"
        o.input = Shapes::ShapeRef.new(shape: ListSinksInput)
        o.output = Shapes::ShapeRef.new(shape: ListSinksOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_sink_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSinkPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/PutSinkPolicy"
        o.input = Shapes::ShapeRef.new(shape: PutSinkPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutSinkPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLink"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateLink"
        o.input = Shapes::ShapeRef.new(shape: UpdateLinkInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateLinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
