# frozen_string_literal: true

# This is generated code!

module Aws::OAM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:(\\w|-)+:oam:.+:.+:.+"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#CreateLinkInput", name: "CreateLinkInput")
    CreateLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#CreateLinkOutput", name: "CreateLinkOutput")
    CreateSinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#CreateSinkInput", name: "CreateSinkInput")
    CreateSinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#CreateSinkOutput", name: "CreateSinkOutput")
    DeleteLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#DeleteLinkInput", name: "DeleteLinkInput")
    DeleteLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#DeleteLinkOutput", name: "DeleteLinkOutput")
    DeleteSinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#DeleteSinkInput", name: "DeleteSinkInput")
    DeleteSinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#DeleteSinkOutput", name: "DeleteSinkOutput")
    GetLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#GetLinkInput", name: "GetLinkInput")
    GetLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#GetLinkOutput", name: "GetLinkOutput")
    GetSinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#GetSinkInput", name: "GetSinkInput")
    GetSinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#GetSinkOutput", name: "GetSinkOutput")
    GetSinkPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#GetSinkPolicyInput", name: "GetSinkPolicyInput")
    GetSinkPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#GetSinkPolicyOutput", name: "GetSinkPolicyOutput")
    IncludeTags = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.oam#IncludeTags", name: "IncludeTags")
    InternalServiceFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#InternalServiceFault", name: "InternalServiceFault", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LabelTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#LabelTemplate", name: "LabelTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    LinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#LinkConfiguration", name: "LinkConfiguration")
    ListAttachedLinksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListAttachedLinksInput", name: "ListAttachedLinksInput")
    ListAttachedLinksItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListAttachedLinksItem", name: "ListAttachedLinksItem")
    ListAttachedLinksItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.oam#ListAttachedLinksItems", name: "ListAttachedLinksItems")
    ListAttachedLinksMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.oam#ListAttachedLinksMaxResults", name: "ListAttachedLinksMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListAttachedLinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListAttachedLinksOutput", name: "ListAttachedLinksOutput")
    ListLinksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListLinksInput", name: "ListLinksInput")
    ListLinksItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListLinksItem", name: "ListLinksItem")
    ListLinksItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.oam#ListLinksItems", name: "ListLinksItems")
    ListLinksMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.oam#ListLinksMaxResults", name: "ListLinksMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    ListLinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListLinksOutput", name: "ListLinksOutput")
    ListSinksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListSinksInput", name: "ListSinksInput")
    ListSinksItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListSinksItem", name: "ListSinksItem")
    ListSinksItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.oam#ListSinksItems", name: "ListSinksItems")
    ListSinksMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.oam#ListSinksMaxResults", name: "ListSinksMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListSinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListSinksOutput", name: "ListSinksOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    LogGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#LogGroupConfiguration", name: "LogGroupConfiguration")
    LogsFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#LogsFilter", name: "LogsFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MetricConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#MetricConfiguration", name: "MetricConfiguration")
    MetricsFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#MetricsFilter", name: "MetricsFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MissingRequiredParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#MissingRequiredParameterException", name: "MissingRequiredParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#NextToken", name: "NextToken")
    PutSinkPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#PutSinkPolicyInput", name: "PutSinkPolicyInput")
    PutSinkPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#PutSinkPolicyOutput", name: "PutSinkPolicyOutput")
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_:\\.\\-\\/]{0,2047}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.oam#ResourceType", name: "ResourceType")
    ResourceTypesInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.oam#ResourceTypesInput", name: "ResourceTypesInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#uniqueItems" => {}})
    ResourceTypesOutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.oam#ResourceTypesOutput", name: "ResourceTypesOutput")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    SinkName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#SinkName", name: "SinkName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]{1,255}$"})
    SinkPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#SinkPolicy", name: "SinkPolicy")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#TagKey", name: "TagKey", traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.oam#TagKeys", name: "TagKeys")
    TagMapInput = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.oam#TagMapInput", name: "TagMapInput", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMapOutput = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.oam#TagMapOutput", name: "TagMapOutput")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.oam#TagValue", name: "TagValue", traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 256}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#UpdateLinkInput", name: "UpdateLinkInput")
    UpdateLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#UpdateLinkOutput", name: "UpdateLinkOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.oam#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ConflictException.type = Types::ConflictException
    CreateLinkInput.add_member(:label_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelTemplate, name: "LabelTemplate", traits: {"smithy.api#required" => {}}))
    CreateLinkInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesInput, name: "ResourceTypes", traits: {"smithy.api#required" => {}}))
    CreateLinkInput.add_member(:sink_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "SinkIdentifier", traits: {"smithy.api#required" => {}}))
    CreateLinkInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags"))
    CreateLinkInput.add_member(:link_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkConfiguration, name: "LinkConfiguration"))
    CreateLinkInput.type = Types::CreateLinkInput
    CreateLinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    CreateLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    CreateLinkOutput.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Label"))
    CreateLinkOutput.add_member(:label_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LabelTemplate"))
    CreateLinkOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesOutput, name: "ResourceTypes"))
    CreateLinkOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SinkArn"))
    CreateLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags"))
    CreateLinkOutput.add_member(:link_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkConfiguration, name: "LinkConfiguration"))
    CreateLinkOutput.type = Types::CreateLinkOutput
    CreateSinkInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SinkName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateSinkInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags"))
    CreateSinkInput.type = Types::CreateSinkInput
    CreateSinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    CreateSinkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    CreateSinkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    CreateSinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags"))
    CreateSinkOutput.type = Types::CreateSinkOutput
    DeleteLinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    DeleteLinkInput.type = Types::DeleteLinkInput
    DeleteLinkOutput.type = Types::DeleteLinkOutput
    DeleteSinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    DeleteSinkInput.type = Types::DeleteSinkInput
    DeleteSinkOutput.type = Types::DeleteSinkOutput
    GetLinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetLinkInput.add_member(:include_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeTags, name: "IncludeTags"))
    GetLinkInput.type = Types::GetLinkInput
    GetLinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    GetLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    GetLinkOutput.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Label"))
    GetLinkOutput.add_member(:label_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LabelTemplate"))
    GetLinkOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesOutput, name: "ResourceTypes"))
    GetLinkOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SinkArn"))
    GetLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags"))
    GetLinkOutput.add_member(:link_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkConfiguration, name: "LinkConfiguration"))
    GetLinkOutput.type = Types::GetLinkOutput
    GetSinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetSinkInput.add_member(:include_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeTags, name: "IncludeTags"))
    GetSinkInput.type = Types::GetSinkInput
    GetSinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    GetSinkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    GetSinkOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    GetSinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags"))
    GetSinkOutput.type = Types::GetSinkOutput
    GetSinkPolicyInput.add_member(:sink_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "SinkIdentifier", traits: {"smithy.api#required" => {}}))
    GetSinkPolicyInput.type = Types::GetSinkPolicyInput
    GetSinkPolicyOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SinkArn"))
    GetSinkPolicyOutput.add_member(:sink_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SinkId"))
    GetSinkPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Policy"))
    GetSinkPolicyOutput.type = Types::GetSinkPolicyOutput
    InternalServiceFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServiceFault.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServiceFault.type = Types::InternalServiceFault
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InvalidParameterException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InvalidParameterException.type = Types::InvalidParameterException
    LinkConfiguration.add_member(:log_group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupConfiguration, name: "LogGroupConfiguration"))
    LinkConfiguration.add_member(:metric_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricConfiguration, name: "MetricConfiguration"))
    LinkConfiguration.type = Types::LinkConfiguration
    ListAttachedLinksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttachedLinksMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListAttachedLinksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAttachedLinksInput.add_member(:sink_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "SinkIdentifier", traits: {"smithy.api#required" => {}}))
    ListAttachedLinksInput.type = Types::ListAttachedLinksInput
    ListAttachedLinksItem.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Label"))
    ListAttachedLinksItem.add_member(:link_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LinkArn"))
    ListAttachedLinksItem.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesOutput, name: "ResourceTypes"))
    ListAttachedLinksItem.type = Types::ListAttachedLinksItem
    ListAttachedLinksItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttachedLinksItem, name: "member"))
    ListAttachedLinksOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttachedLinksItems, name: "Items", traits: {"smithy.api#required" => {}}))
    ListAttachedLinksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAttachedLinksOutput.type = Types::ListAttachedLinksOutput
    ListLinksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLinksMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListLinksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLinksInput.type = Types::ListLinksInput
    ListLinksItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    ListLinksItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    ListLinksItem.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Label"))
    ListLinksItem.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesOutput, name: "ResourceTypes"))
    ListLinksItem.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SinkArn"))
    ListLinksItem.type = Types::ListLinksItem
    ListLinksItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLinksItem, name: "member"))
    ListLinksOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLinksItems, name: "Items", traits: {"smithy.api#required" => {}}))
    ListLinksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListLinksOutput.type = Types::ListLinksOutput
    ListSinksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSinksMaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListSinksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSinksInput.type = Types::ListSinksInput
    ListSinksItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    ListSinksItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    ListSinksItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    ListSinksItem.type = Types::ListSinksItem
    ListSinksItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSinksItem, name: "member"))
    ListSinksOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSinksItems, name: "Items", traits: {"smithy.api#required" => {}}))
    ListSinksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListSinksOutput.type = Types::ListSinksOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogGroupConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsFilter, name: "Filter", traits: {"smithy.api#required" => {}}))
    LogGroupConfiguration.type = Types::LogGroupConfiguration
    MetricConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsFilter, name: "Filter", traits: {"smithy.api#required" => {}}))
    MetricConfiguration.type = Types::MetricConfiguration
    MissingRequiredParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    MissingRequiredParameterException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    MissingRequiredParameterException.type = Types::MissingRequiredParameterException
    PutSinkPolicyInput.add_member(:sink_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "SinkIdentifier", traits: {"smithy.api#required" => {}}))
    PutSinkPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SinkPolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutSinkPolicyInput.type = Types::PutSinkPolicyInput
    PutSinkPolicyOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SinkArn"))
    PutSinkPolicyOutput.add_member(:sink_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SinkId"))
    PutSinkPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Policy"))
    PutSinkPolicyOutput.type = Types::PutSinkPolicyOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:aws_cloudwatch_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUDWATCH_METRIC", traits: {"smithy.api#enumValue" => "AWS::CloudWatch::Metric"}))
    ResourceType.add_member(:aws_logs_loggroup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_LOGS_LOGGROUP", traits: {"smithy.api#enumValue" => "AWS::Logs::LogGroup"}))
    ResourceType.add_member(:aws_xray_trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_XRAY_TRACE", traits: {"smithy.api#enumValue" => "AWS::XRay::Trace"}))
    ResourceType.add_member(:aws_applicationinsights_application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_APPLICATIONINSIGHTS_APPLICATION", traits: {"smithy.api#enumValue" => "AWS::ApplicationInsights::Application"}))
    ResourceType.add_member(:aws_internetmonitor_monitor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_INTERNETMONITOR_MONITOR", traits: {"smithy.api#enumValue" => "AWS::InternetMonitor::Monitor"}))
    ResourceType.add_member(:aws_application_signals_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_APPLICATION_SIGNALS_SERVICE", traits: {"smithy.api#enumValue" => "AWS::ApplicationSignals::Service"}))
    ResourceType.add_member(:aws_application_signals_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_APPLICATION_SIGNALS_SLO", traits: {"smithy.api#enumValue" => "AWS::ApplicationSignals::ServiceLevelObjective"}))
    ResourceTypesInput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member"))
    ResourceTypesOutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ServiceQuotaExceededException.add_member(:amzn_error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amznErrorType", traits: {"smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMapInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMapInput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagMapOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TagMapOutput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapInput, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateLinkInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    UpdateLinkInput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesInput, name: "ResourceTypes", traits: {"smithy.api#required" => {}}))
    UpdateLinkInput.add_member(:link_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkConfiguration, name: "LinkConfiguration"))
    UpdateLinkInput.add_member(:include_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeTags, name: "IncludeTags"))
    UpdateLinkInput.type = Types::UpdateLinkInput
    UpdateLinkOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    UpdateLinkOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    UpdateLinkOutput.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Label"))
    UpdateLinkOutput.add_member(:label_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelTemplate, name: "LabelTemplate"))
    UpdateLinkOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesOutput, name: "ResourceTypes"))
    UpdateLinkOutput.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SinkArn"))
    UpdateLinkOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapOutput, name: "Tags"))
    UpdateLinkOutput.add_member(:link_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkConfiguration, name: "LinkConfiguration"))
    UpdateLinkOutput.type = Types::UpdateLinkOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationException.type = Types::ValidationException

    Oamservice = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.oam#oamservice"
      service.name = "Oamservice"
      service.version = "2022-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "OAM", "arnNamespace" => "oam", "cloudTrailEventSource" => "{{CLOUD_TRAIL_EVENT_SOURCE}}"}, "aws.auth#sigv4" => {"name" => "oam"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "oam:ResourceTypes" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of resource types in the request", "externalDocumentation" => "${DocHomeURL}oam/latest/apireference/api_createlink.html#api_createlink_requestsyntax"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Requested-Operation"]}, "smithy.api#title" => "CloudWatch Observability Access Manager"}
      service.add_operation(:create_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#CreateLink"
        operation.name = "CreateLink"
        operation.input = CreateLinkInput
        operation.output = CreateLinkOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}", "oam:ResourceTypes"], "smithy.api#http" => {"method" => "POST", "uri" => "/CreateLink"}}
      end)
      service.add_operation(:create_sink, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#CreateSink"
        operation.name = "CreateSink"
        operation.input = CreateSinkInput
        operation.output = CreateSinkOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/CreateSink"}}
      end)
      service.add_operation(:delete_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#DeleteLink"
        operation.name = "DeleteLink"
        operation.input = DeleteLinkInput
        operation.output = DeleteLinkOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLink"}}
      end)
      service.add_operation(:delete_sink, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#DeleteSink"
        operation.name = "DeleteSink"
        operation.input = DeleteSinkInput
        operation.output = DeleteSinkOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/DeleteSink"}}
      end)
      service.add_operation(:get_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetLink"
        operation.name = "GetLink"
        operation.input = GetLinkInput
        operation.output = GetLinkOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetLink"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sink, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetSink"
        operation.name = "GetSink"
        operation.input = GetSinkInput
        operation.output = GetSinkOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetSink"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sink_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetSinkPolicy"
        operation.name = "GetSinkPolicy"
        operation.input = GetSinkPolicyInput
        operation.output = GetSinkPolicyOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetSinkPolicy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_attached_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListAttachedLinks"
        operation.name = "ListAttachedLinks"
        operation.input = ListAttachedLinksInput
        operation.output = ListAttachedLinksOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/ListAttachedLinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAttachedLinks.new
      end)
      service.add_operation(:list_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListLinks"
        operation.name = "ListLinks"
        operation.input = ListLinksInput
        operation.output = ListLinksOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLinks.new
      end)
      service.add_operation(:list_sinks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListSinks"
        operation.name = "ListSinks"
        operation.input = ListSinksInput
        operation.output = ListSinksOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListSinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSinks.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list the tags for a resource", "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_sink_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#PutSinkPolicy"
        operation.name = "PutSinkPolicy"
        operation.input = PutSinkPolicyInput
        operation.output = PutSinkPolicyOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/PutSinkPolicy"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to tag a resource", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to untag a resource", "aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#UpdateLink"
        operation.name = "UpdateLink"
        operation.input = UpdateLinkInput
        operation.output = UpdateLinkOutput
        operation.errors << InternalServiceFault
        operation.errors << InvalidParameterException
        operation.errors << MissingRequiredParameterException
        operation.errors << ResourceNotFoundException
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
