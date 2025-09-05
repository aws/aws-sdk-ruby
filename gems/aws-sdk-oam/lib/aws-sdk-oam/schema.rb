# frozen_string_literal: true

# This is generated code!

module Aws::OAM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:(\\w|-)+:oam:.+:.+:.+"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#CreateLinkInput', name: 'CreateLinkInput')
    CreateLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#CreateLinkOutput', name: 'CreateLinkOutput')
    CreateSinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#CreateSinkInput', name: 'CreateSinkInput')
    CreateSinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#CreateSinkOutput', name: 'CreateSinkOutput')
    DeleteLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#DeleteLinkInput', name: 'DeleteLinkInput')
    DeleteLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#DeleteLinkOutput', name: 'DeleteLinkOutput')
    DeleteSinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#DeleteSinkInput', name: 'DeleteSinkInput')
    DeleteSinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#DeleteSinkOutput', name: 'DeleteSinkOutput')
    GetLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetLinkInput', name: 'GetLinkInput')
    GetLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetLinkOutput', name: 'GetLinkOutput')
    GetSinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetSinkInput', name: 'GetSinkInput')
    GetSinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetSinkOutput', name: 'GetSinkOutput')
    GetSinkPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetSinkPolicyInput', name: 'GetSinkPolicyInput')
    GetSinkPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetSinkPolicyOutput', name: 'GetSinkPolicyOutput')
    IncludeTags = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.oam#IncludeTags', name: 'IncludeTags')
    InternalServiceFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#InternalServiceFault', name: 'InternalServiceFault', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LabelTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#LabelTemplate', name: 'LabelTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    LinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#LinkConfiguration', name: 'LinkConfiguration')
    ListAttachedLinksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListAttachedLinksInput', name: 'ListAttachedLinksInput')
    ListAttachedLinksItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListAttachedLinksItem', name: 'ListAttachedLinksItem')
    ListAttachedLinksItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ListAttachedLinksItems', name: 'ListAttachedLinksItems')
    ListAttachedLinksMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.oam#ListAttachedLinksMaxResults', name: 'ListAttachedLinksMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListAttachedLinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListAttachedLinksOutput', name: 'ListAttachedLinksOutput')
    ListLinksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListLinksInput', name: 'ListLinksInput')
    ListLinksItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListLinksItem', name: 'ListLinksItem')
    ListLinksItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ListLinksItems', name: 'ListLinksItems')
    ListLinksMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.oam#ListLinksMaxResults', name: 'ListLinksMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    ListLinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListLinksOutput', name: 'ListLinksOutput')
    ListSinksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListSinksInput', name: 'ListSinksInput')
    ListSinksItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListSinksItem', name: 'ListSinksItem')
    ListSinksItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ListSinksItems', name: 'ListSinksItems')
    ListSinksMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.oam#ListSinksMaxResults', name: 'ListSinksMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListSinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListSinksOutput', name: 'ListSinksOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LogGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#LogGroupConfiguration', name: 'LogGroupConfiguration')
    LogsFilter = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#LogsFilter', name: 'LogsFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MetricConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#MetricConfiguration', name: 'MetricConfiguration')
    MetricsFilter = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#MetricsFilter', name: 'MetricsFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MissingRequiredParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#MissingRequiredParameterException', name: 'MissingRequiredParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#NextToken', name: 'NextToken')
    PutSinkPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#PutSinkPolicyInput', name: 'PutSinkPolicyInput')
    PutSinkPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#PutSinkPolicyOutput', name: 'PutSinkPolicyOutput')
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_:\\.\\-\\/]{0,2047}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.oam#ResourceType', name: 'ResourceType')
    ResourceTypesInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ResourceTypesInput', name: 'ResourceTypesInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#uniqueItems" => {}})
    ResourceTypesOutput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ResourceTypesOutput', name: 'ResourceTypesOutput')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    SinkName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#SinkName', name: 'SinkName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]{1,255}$"})
    SinkPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#SinkPolicy', name: 'SinkPolicy')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#TagKey', name: 'TagKey', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#TagKeys', name: 'TagKeys')
    TagMapInput = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.oam#TagMapInput', name: 'TagMapInput', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMapOutput = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.oam#TagMapOutput', name: 'TagMapOutput')
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#TagValue', name: 'TagValue', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 256}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#UpdateLinkInput', name: 'UpdateLinkInput')
    UpdateLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#UpdateLinkOutput', name: 'UpdateLinkOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ConflictException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ConflictException.type = Types::ConflictException
    CreateLinkInput.add_member(:label_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelTemplate, location_name: 'LabelTemplate', traits: {"smithy.api#required" => {}}))
    CreateLinkInput.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesInput, location_name: 'ResourceTypes', traits: {"smithy.api#required" => {}}))
    CreateLinkInput.add_member(:sink_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'SinkIdentifier', traits: {"smithy.api#required" => {}}))
    CreateLinkInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags'))
    CreateLinkInput.add_member(:link_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration'))
    CreateLinkInput.type = Types::CreateLinkInput
    CreateLinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    CreateLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Id'))
    CreateLinkOutput.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Label'))
    CreateLinkOutput.add_member(:label_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'LabelTemplate'))
    CreateLinkOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes'))
    CreateLinkOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn'))
    CreateLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags'))
    CreateLinkOutput.add_member(:link_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration'))
    CreateLinkOutput.type = Types::CreateLinkOutput
    CreateSinkInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SinkName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateSinkInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags'))
    CreateSinkInput.type = Types::CreateSinkInput
    CreateSinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    CreateSinkOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Id'))
    CreateSinkOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name'))
    CreateSinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags'))
    CreateSinkOutput.type = Types::CreateSinkOutput
    DeleteLinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    DeleteLinkInput.type = Types::DeleteLinkInput
    DeleteLinkOutput.type = Types::DeleteLinkOutput
    DeleteSinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    DeleteSinkInput.type = Types::DeleteSinkInput
    DeleteSinkOutput.type = Types::DeleteSinkOutput
    GetLinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    GetLinkInput.add_member(:include_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeTags, location_name: 'IncludeTags'))
    GetLinkInput.type = Types::GetLinkInput
    GetLinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    GetLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Id'))
    GetLinkOutput.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Label'))
    GetLinkOutput.add_member(:label_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'LabelTemplate'))
    GetLinkOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes'))
    GetLinkOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn'))
    GetLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags'))
    GetLinkOutput.add_member(:link_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration'))
    GetLinkOutput.type = Types::GetLinkOutput
    GetSinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    GetSinkInput.add_member(:include_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeTags, location_name: 'IncludeTags'))
    GetSinkInput.type = Types::GetSinkInput
    GetSinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    GetSinkOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Id'))
    GetSinkOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name'))
    GetSinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags'))
    GetSinkOutput.type = Types::GetSinkOutput
    GetSinkPolicyInput.add_member(:sink_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'SinkIdentifier', traits: {"smithy.api#required" => {}}))
    GetSinkPolicyInput.type = Types::GetSinkPolicyInput
    GetSinkPolicyOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn'))
    GetSinkPolicyOutput.add_member(:sink_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkId'))
    GetSinkPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Policy'))
    GetSinkPolicyOutput.type = Types::GetSinkPolicyOutput
    InternalServiceFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServiceFault.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServiceFault.type = Types::InternalServiceFault
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InvalidParameterException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InvalidParameterException.type = Types::InvalidParameterException
    LinkConfiguration.add_member(:log_group_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupConfiguration, location_name: 'LogGroupConfiguration'))
    LinkConfiguration.add_member(:metric_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricConfiguration, location_name: 'MetricConfiguration'))
    LinkConfiguration.type = Types::LinkConfiguration
    ListAttachedLinksInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil}))
    ListAttachedLinksInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAttachedLinksInput.add_member(:sink_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'SinkIdentifier', traits: {"smithy.api#required" => {}}))
    ListAttachedLinksInput.type = Types::ListAttachedLinksInput
    ListAttachedLinksItem.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Label'))
    ListAttachedLinksItem.add_member(:link_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'LinkArn'))
    ListAttachedLinksItem.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes'))
    ListAttachedLinksItem.type = Types::ListAttachedLinksItem
    ListAttachedLinksItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksItem)
    ListAttachedLinksOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksItems, location_name: 'Items', traits: {"smithy.api#required" => {}}))
    ListAttachedLinksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListAttachedLinksOutput.type = Types::ListAttachedLinksOutput
    ListLinksInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil}))
    ListLinksInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListLinksInput.type = Types::ListLinksInput
    ListLinksItem.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    ListLinksItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Id'))
    ListLinksItem.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Label'))
    ListLinksItem.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes'))
    ListLinksItem.add_member(:sink_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn'))
    ListLinksItem.type = Types::ListLinksItem
    ListLinksItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksItem)
    ListLinksOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksItems, location_name: 'Items', traits: {"smithy.api#required" => {}}))
    ListLinksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListLinksOutput.type = Types::ListLinksOutput
    ListSinksInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil}))
    ListSinksInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListSinksInput.type = Types::ListSinksInput
    ListSinksItem.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    ListSinksItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Id'))
    ListSinksItem.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name'))
    ListSinksItem.type = Types::ListSinksItem
    ListSinksItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksItem)
    ListSinksOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksItems, location_name: 'Items', traits: {"smithy.api#required" => {}}))
    ListSinksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListSinksOutput.type = Types::ListSinksOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogGroupConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsFilter, location_name: 'Filter', traits: {"smithy.api#required" => {}}))
    LogGroupConfiguration.type = Types::LogGroupConfiguration
    MetricConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsFilter, location_name: 'Filter', traits: {"smithy.api#required" => {}}))
    MetricConfiguration.type = Types::MetricConfiguration
    MissingRequiredParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    MissingRequiredParameterException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    MissingRequiredParameterException.type = Types::MissingRequiredParameterException
    PutSinkPolicyInput.add_member(:sink_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'SinkIdentifier', traits: {"smithy.api#required" => {}}))
    PutSinkPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SinkPolicy, location_name: 'Policy', traits: {"smithy.api#required" => {}}))
    PutSinkPolicyInput.type = Types::PutSinkPolicyInput
    PutSinkPolicyOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn'))
    PutSinkPolicyOutput.add_member(:sink_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkId'))
    PutSinkPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Policy'))
    PutSinkPolicyOutput.type = Types::PutSinkPolicyOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:aws_cloudwatch_metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUDWATCH_METRIC', traits: {"smithy.api#enumValue" => "AWS::CloudWatch::Metric"}))
    ResourceType.add_member(:aws_logs_loggroup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_LOGS_LOGGROUP', traits: {"smithy.api#enumValue" => "AWS::Logs::LogGroup"}))
    ResourceType.add_member(:aws_xray_trace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_XRAY_TRACE', traits: {"smithy.api#enumValue" => "AWS::XRay::Trace"}))
    ResourceType.add_member(:aws_applicationinsights_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_APPLICATIONINSIGHTS_APPLICATION', traits: {"smithy.api#enumValue" => "AWS::ApplicationInsights::Application"}))
    ResourceType.add_member(:aws_internetmonitor_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_INTERNETMONITOR_MONITOR', traits: {"smithy.api#enumValue" => "AWS::InternetMonitor::Monitor"}))
    ResourceType.add_member(:aws_application_signals_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_APPLICATION_SIGNALS_SERVICE', traits: {"smithy.api#enumValue" => "AWS::ApplicationSignals::Service"}))
    ResourceType.add_member(:aws_application_signals_slo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_APPLICATION_SIGNALS_SLO', traits: {"smithy.api#enumValue" => "AWS::ApplicationSignals::ServiceLevelObjective"}))
    ResourceTypesInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypesOutput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagMapOutput.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagMapOutput.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateLinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    UpdateLinkInput.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesInput, location_name: 'ResourceTypes', traits: {"smithy.api#required" => {}}))
    UpdateLinkInput.add_member(:link_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration'))
    UpdateLinkInput.add_member(:include_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeTags, location_name: 'IncludeTags'))
    UpdateLinkInput.type = Types::UpdateLinkInput
    UpdateLinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    UpdateLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Id'))
    UpdateLinkOutput.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Label'))
    UpdateLinkOutput.add_member(:label_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelTemplate, location_name: 'LabelTemplate'))
    UpdateLinkOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes'))
    UpdateLinkOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn'))
    UpdateLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags'))
    UpdateLinkOutput.add_member(:link_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration'))
    UpdateLinkOutput.type = Types::UpdateLinkOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    Oamservice = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.oam#oamservice"
      service.name = "Oamservice"
      service.version = "2022-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "OAM", "arnNamespace" => "oam", "cloudTrailEventSource" => "{{CLOUD_TRAIL_EVENT_SOURCE}}"}, "aws.auth#sigv4" => {"name" => "oam"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "oam:ResourceTypes" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of resource types in the request", "externalDocumentation" => "${DocHomeURL}oam/latest/apireference/api_createlink.html#api_createlink_requestsyntax"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Requested-Operation"]}, "smithy.api#title" => "CloudWatch Observability Access Manager"}
      service.add_operation(:create_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#CreateLink"
        operation.name = "CreateLink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}", "oam:ResourceTypes"], "smithy.api#http" => {"method" => "POST", "uri" => "/CreateLink"}}
      end)
      service.add_operation(:create_sink, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#CreateSink"
        operation.name = "CreateSink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/CreateSink"}}
      end)
      service.add_operation(:delete_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#DeleteLink"
        operation.name = "DeleteLink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLink"}}
      end)
      service.add_operation(:delete_sink, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#DeleteSink"
        operation.name = "DeleteSink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/DeleteSink"}}
      end)
      service.add_operation(:get_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetLink"
        operation.name = "GetLink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetLink"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sink, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetSink"
        operation.name = "GetSink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetSink"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sink_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetSinkPolicy"
        operation.name = "GetSinkPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSinkPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSinkPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetSinkPolicy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_attached_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListAttachedLinks"
        operation.name = "ListAttachedLinks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/ListAttachedLinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAttachedLinks.new
      end)
      service.add_operation(:list_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListLinks"
        operation.name = "ListLinks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLinks.new
      end)
      service.add_operation(:list_sinks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListSinks"
        operation.name = "ListSinks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListSinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSinks.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list the tags for a resource", "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_sink_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#PutSinkPolicy"
        operation.name = "PutSinkPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSinkPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSinkPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/PutSinkPolicy"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to tag a resource", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to untag a resource", "aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#UpdateLink"
        operation.name = "UpdateLink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "oam:ResourceTypes"], "smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLink"}}
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
