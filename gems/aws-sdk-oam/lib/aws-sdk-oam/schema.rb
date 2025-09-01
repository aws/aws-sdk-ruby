# frozen_string_literal: true

# This is generated code!

module Aws::OAM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:(\\w|-)+:oam:.+:.+:.+"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateLinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#CreateLinkInput', name: 'CreateLinkInput')
    CreateLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#CreateLinkOutput', name: 'CreateLinkOutput')
    CreateSinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#CreateSinkInput', name: 'CreateSinkInput')
    CreateSinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#CreateSinkOutput', name: 'CreateSinkOutput')
    DeleteLinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#DeleteLinkInput', name: 'DeleteLinkInput')
    DeleteLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#DeleteLinkOutput', name: 'DeleteLinkOutput')
    DeleteSinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#DeleteSinkInput', name: 'DeleteSinkInput')
    DeleteSinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#DeleteSinkOutput', name: 'DeleteSinkOutput')
    GetLinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetLinkInput', name: 'GetLinkInput')
    GetLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetLinkOutput', name: 'GetLinkOutput')
    GetSinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetSinkInput', name: 'GetSinkInput')
    GetSinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetSinkOutput', name: 'GetSinkOutput')
    GetSinkPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetSinkPolicyInput', name: 'GetSinkPolicyInput')
    GetSinkPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#GetSinkPolicyOutput', name: 'GetSinkPolicyOutput')
    IncludeTags = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.oam#IncludeTags', name: 'IncludeTags')
    InternalServiceFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#InternalServiceFault', name: 'InternalServiceFault', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LabelTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#LabelTemplate', name: 'LabelTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    LinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#LinkConfiguration', name: 'LinkConfiguration')
    ListAttachedLinksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListAttachedLinksInput', name: 'ListAttachedLinksInput')
    ListAttachedLinksItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListAttachedLinksItem', name: 'ListAttachedLinksItem')
    ListAttachedLinksItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ListAttachedLinksItems', name: 'ListAttachedLinksItems')
    ListAttachedLinksMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.oam#ListAttachedLinksMaxResults', name: 'ListAttachedLinksMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListAttachedLinksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListAttachedLinksOutput', name: 'ListAttachedLinksOutput')
    ListLinksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListLinksInput', name: 'ListLinksInput')
    ListLinksItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListLinksItem', name: 'ListLinksItem')
    ListLinksItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ListLinksItems', name: 'ListLinksItems')
    ListLinksMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.oam#ListLinksMaxResults', name: 'ListLinksMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    ListLinksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListLinksOutput', name: 'ListLinksOutput')
    ListSinksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListSinksInput', name: 'ListSinksInput')
    ListSinksItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListSinksItem', name: 'ListSinksItem')
    ListSinksItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ListSinksItems', name: 'ListSinksItems')
    ListSinksMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.oam#ListSinksMaxResults', name: 'ListSinksMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListSinksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListSinksOutput', name: 'ListSinksOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LogGroupConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#LogGroupConfiguration', name: 'LogGroupConfiguration')
    LogsFilter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#LogsFilter', name: 'LogsFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MetricConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#MetricConfiguration', name: 'MetricConfiguration')
    MetricsFilter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#MetricsFilter', name: 'MetricsFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    MissingRequiredParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#MissingRequiredParameterException', name: 'MissingRequiredParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#NextToken', name: 'NextToken')
    PutSinkPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#PutSinkPolicyInput', name: 'PutSinkPolicyInput')
    PutSinkPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#PutSinkPolicyOutput', name: 'PutSinkPolicyOutput')
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_:\\.\\-\\/]{0,2047}$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.oam#ResourceType', name: 'ResourceType')
    ResourceTypesInput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ResourceTypesInput', name: 'ResourceTypesInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#uniqueItems" => {}})
    ResourceTypesOutput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#ResourceTypesOutput', name: 'ResourceTypesOutput')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    SinkName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#SinkName', name: 'SinkName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\.\\-]{1,255}$"})
    SinkPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#SinkPolicy', name: 'SinkPolicy')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#TagKey', name: 'TagKey', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.oam#TagKeys', name: 'TagKeys')
    TagMapInput = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.oam#TagMapInput', name: 'TagMapInput', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMapOutput = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.oam#TagMapOutput', name: 'TagMapOutput')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.oam#TagValue', name: 'TagValue', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 256}})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateLinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#UpdateLinkInput', name: 'UpdateLinkInput')
    UpdateLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#UpdateLinkOutput', name: 'UpdateLinkOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.oam#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ConflictException.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ConflictException.type = Types::ConflictException
    CreateLinkInput.add_member(:label_template, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelTemplate, location_name: 'LabelTemplate', traits: {"smithy.api#documentation" => "<p>Specify a friendly human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.</p> <p>You can use a custom label or use the following variables:</p> <ul> <li> <p> <code>$AccountName</code> is the name of the account</p> </li> <li> <p> <code>$AccountEmail</code> is the globally unique email address of the account</p> </li> <li> <p> <code>$AccountEmailNoDomain</code> is the email address of the account without the domain name</p> </li> </ul> <note> <p>In the Amazon Web Services GovCloud (US-East) and Amazon Web Services GovCloud (US-West) Regions, the only supported option is to use custom labels, and the <code>$AccountName</code>, <code>$AccountEmail</code>, and <code>$AccountEmailNoDomain</code> variables all resolve as <i>account-id</i> instead of the specified variable.</p> </note>", "smithy.api#required" => {}}))
    CreateLinkInput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesInput, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>An array of strings that define which types of data that the source account shares with the monitoring account.</p>", "smithy.api#required" => {}}))
    CreateLinkInput.add_member(:sink_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'SinkIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the sink to use to create this link. You can use <a href=\"https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html\">ListSinks</a> to find the ARNs of sinks.</p> <p>For more information about sinks, see <a href=\"https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html\">CreateSink</a>.</p>", "smithy.api#required" => {}}))
    CreateLinkInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags (key-value pairs) to the link. </p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>For more information about using tags to control access, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\">Controlling access to Amazon Web Services resources using tags</a>.</p>"}))
    CreateLinkInput.add_member(:link_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure to optionally create filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account.</p>"}))
    CreateLinkInput.type = Types::CreateLinkInput
    CreateLinkOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the link that is newly created.</p>"}))
    CreateLinkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the link ARN.</p>"}))
    CreateLinkOutput.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label that you assigned to this link. If the <code>labelTemplate</code> includes variables, this field displays the variables resolved to their actual values.</p>"}))
    CreateLinkOutput.add_member(:label_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LabelTemplate', traits: {"smithy.api#documentation" => "<p>The exact label template that you specified, with the variables not resolved.</p>"}))
    CreateLinkOutput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types supported by this link.</p>"}))
    CreateLinkOutput.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink that is used for this link.</p>"}))
    CreateLinkOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the link.</p>"}))
    CreateLinkOutput.add_member(:link_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration', traits: {"smithy.api#documentation" => "<p>This structure includes filters that specify which metric namespaces and which log groups are shared from the source account to the monitoring account.</p>"}))
    CreateLinkOutput.type = Types::CreateLinkOutput
    CreateSinkInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SinkName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the sink.</p>", "smithy.api#required" => {}}))
    CreateSinkInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags (key-value pairs) to the link. </p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>For more information about using tags to control access, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\">Controlling access to Amazon Web Services resources using tags</a>.</p>"}))
    CreateSinkInput.type = Types::CreateSinkInput
    CreateSinkOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink that is newly created.</p>"}))
    CreateSinkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>"}))
    CreateSinkOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the sink.</p>"}))
    CreateSinkOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the sink.</p>"}))
    CreateSinkOutput.type = Types::CreateSinkOutput
    DeleteLinkInput.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The ARN of the link to delete.</p>", "smithy.api#required" => {}}))
    DeleteLinkInput.type = Types::DeleteLinkInput
    DeleteLinkOutput.type = Types::DeleteLinkOutput
    DeleteSinkInput.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The ARN of the sink to delete.</p>", "smithy.api#required" => {}}))
    DeleteSinkInput.type = Types::DeleteSinkInput
    DeleteSinkOutput.type = Types::DeleteSinkOutput
    GetLinkInput.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The ARN of the link to retrieve information for.</p>", "smithy.api#required" => {}}))
    GetLinkInput.add_member(:include_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeTags, location_name: 'IncludeTags', traits: {"smithy.api#documentation" => "<p>Specifies whether to include the tags associated with the link in the response. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception.</p> <p>The default value is <code>false</code>.</p>"}))
    GetLinkInput.type = Types::GetLinkInput
    GetLinkOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the link.</p>"}))
    GetLinkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the link ARN.</p>"}))
    GetLinkOutput.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label that you assigned to this link, with the variables resolved to their actual values.</p>"}))
    GetLinkOutput.add_member(:label_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LabelTemplate', traits: {"smithy.api#documentation" => "<p>The exact label template that was specified when the link was created, with the template variables not resolved.</p>"}))
    GetLinkOutput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types supported by this link.</p>"}))
    GetLinkOutput.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink that is used for this link.</p>"}))
    GetLinkOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the link.</p>"}))
    GetLinkOutput.add_member(:link_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration', traits: {"smithy.api#documentation" => "<p>This structure includes filters that specify which metric namespaces and which log groups are shared from the source account to the monitoring account.</p>"}))
    GetLinkOutput.type = Types::GetLinkOutput
    GetSinkInput.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The ARN of the sink to retrieve information for.</p>", "smithy.api#required" => {}}))
    GetSinkInput.add_member(:include_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeTags, location_name: 'IncludeTags', traits: {"smithy.api#documentation" => "<p>Specifies whether to include the tags associated with the sink in the response. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception.</p> <p>The default value is <code>false</code>.</p>"}))
    GetSinkInput.type = Types::GetSinkInput
    GetSinkOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink.</p>"}))
    GetSinkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>"}))
    GetSinkOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the sink.</p>"}))
    GetSinkOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the sink.</p>"}))
    GetSinkOutput.type = Types::GetSinkOutput
    GetSinkPolicyInput.add_member(:sink_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'SinkIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the sink to retrieve the policy of.</p>", "smithy.api#required" => {}}))
    GetSinkPolicyInput.type = Types::GetSinkPolicyInput
    GetSinkPolicyOutput.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink.</p>"}))
    GetSinkPolicyOutput.add_member(:sink_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkId', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>"}))
    GetSinkPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The policy that you specified, in JSON format.</p>"}))
    GetSinkPolicyOutput.type = Types::GetSinkPolicyOutput
    InternalServiceFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServiceFault.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InternalServiceFault.type = Types::InternalServiceFault
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InvalidParameterException.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    InvalidParameterException.type = Types::InvalidParameterException
    LinkConfiguration.add_member(:log_group_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupConfiguration, location_name: 'LogGroupConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure to filter which log groups are to send log events from the source account to the monitoring account.</p>"}))
    LinkConfiguration.add_member(:metric_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricConfiguration, location_name: 'MetricConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure to filter which metric namespaces are to be shared from the source account to the monitoring account.</p>"}))
    LinkConfiguration.type = Types::LinkConfiguration
    ListAttachedLinksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Limits the number of returned links to the specified number.</p>"}))
    ListAttachedLinksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. You received this token from a previous call.</p>"}))
    ListAttachedLinksInput.add_member(:sink_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'SinkIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the sink that you want to retrieve links for.</p>", "smithy.api#required" => {}}))
    ListAttachedLinksInput.type = Types::ListAttachedLinksInput
    ListAttachedLinksItem.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label that was assigned to this link at creation, with the variables resolved to their actual values.</p>"}))
    ListAttachedLinksItem.add_member(:link_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'LinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the link.</p>"}))
    ListAttachedLinksItem.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types supported by this link.</p>"}))
    ListAttachedLinksItem.type = Types::ListAttachedLinksItem
    ListAttachedLinksItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksItem)
    ListAttachedLinksOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksItems, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the information about the attached links.</p>", "smithy.api#required" => {}}))
    ListAttachedLinksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of links.</p>"}))
    ListAttachedLinksOutput.type = Types::ListAttachedLinksOutput
    ListLinksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Limits the number of returned links to the specified number.</p>"}))
    ListLinksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. You received this token from a previous call.</p>"}))
    ListLinksInput.type = Types::ListLinksInput
    ListLinksItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the link.</p>"}))
    ListLinksItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the link ARN.</p>"}))
    ListLinksItem.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label that was assigned to this link at creation, with the variables resolved to their actual values.</p>"}))
    ListLinksItem.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types supported by this link.</p>"}))
    ListLinksItem.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink that this link is attached to.</p>"}))
    ListLinksItem.type = Types::ListLinksItem
    ListLinksItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksItem)
    ListLinksOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksItems, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the information about the returned links.</p>", "smithy.api#required" => {}}))
    ListLinksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of links.</p>"}))
    ListLinksOutput.type = Types::ListLinksOutput
    ListSinksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksMaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Limits the number of returned links to the specified number.</p>"}))
    ListSinksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. You received this token from a previous call.</p>"}))
    ListSinksInput.type = Types::ListSinksInput
    ListSinksItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink.</p>"}))
    ListSinksItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>"}))
    ListSinksItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the sink.</p>"}))
    ListSinksItem.type = Types::ListSinksItem
    ListSinksItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksItem)
    ListSinksOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksItems, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the information about the returned sinks.</p>", "smithy.api#required" => {}}))
    ListSinksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of sinks.</p>"}))
    ListSinksOutput.type = Types::ListSinksOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you want to view tags for.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html\">CloudWatch Logs resources and operations</a>.</p> <important> <p>Unlike tagging permissions in other Amazon Web Services services, to retrieve the list of tags for links or sinks you must have the <code>oam:RequestTag</code> permission. The <code>aws:ReguestTag</code> permission does not allow you to tag and untag links and sinks.</p> </important>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the requested resource.&gt;</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogGroupConfiguration.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: LogsFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Use this field to specify which log groups are to share their log events with the monitoring account. Use the term <code>LogGroupName</code> and one or more of the following operands. Use single quotation marks (') around log group names. The matching of log group names is case sensitive. Each filter has a limit of five conditional operands. Conditional operands are <code>AND</code> and <code>OR</code>.</p> <ul> <li> <p> <code>=</code> and <code>!=</code> </p> </li> <li> <p> <code>AND</code> </p> </li> <li> <p> <code>OR</code> </p> </li> <li> <p> <code>LIKE</code> and <code>NOT LIKE</code>. These can be used only as prefix searches. Include a <code>%</code> at the end of the string that you want to search for and include.</p> </li> <li> <p> <code>IN</code> and <code>NOT IN</code>, using parentheses <code>( )</code> </p> </li> </ul> <p>Examples:</p> <ul> <li> <p> <code>LogGroupName IN ('This-Log-Group', 'Other-Log-Group')</code> includes only the log groups with names <code>This-Log-Group</code> and <code>Other-Log-Group</code>.</p> </li> <li> <p> <code>LogGroupName NOT IN ('Private-Log-Group', 'Private-Log-Group-2')</code> includes all log groups except the log groups with names <code>Private-Log-Group</code> and <code>Private-Log-Group-2</code>.</p> </li> <li> <p> <code>LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'</code> includes all log groups that have names that start with <code>aws/lambda/</code> or <code>AWSLogs</code>.</p> </li> </ul> <note> <p>If you are updating a link that uses filters, you can specify <code>*</code> as the only value for the <code>filter</code> parameter to delete the filter and share all log groups with the monitoring account.</p> </note>", "smithy.api#required" => {}}))
    LogGroupConfiguration.type = Types::LogGroupConfiguration
    MetricConfiguration.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Use this field to specify which metrics are to be shared with the monitoring account. Use the term <code>Namespace</code> and one or more of the following operands. Use single quotation marks (') around namespace names. The matching of namespace names is case sensitive. Each filter has a limit of five conditional operands. Conditional operands are <code>AND</code> and <code>OR</code>.</p> <ul> <li> <p> <code>=</code> and <code>!=</code> </p> </li> <li> <p> <code>AND</code> </p> </li> <li> <p> <code>OR</code> </p> </li> <li> <p> <code>LIKE</code> and <code>NOT LIKE</code>. These can be used only as prefix searches. Include a <code>%</code> at the end of the string that you want to search for and include.</p> </li> <li> <p> <code>IN</code> and <code>NOT IN</code>, using parentheses <code>( )</code> </p> </li> </ul> <p>Examples:</p> <ul> <li> <p> <code>Namespace NOT LIKE 'AWS/%'</code> includes only namespaces that don't start with <code>AWS/</code>, such as custom namespaces.</p> </li> <li> <p> <code>Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')</code> includes only the metrics in the EC2, Elastic Load Balancing, and Amazon S3 namespaces. </p> </li> <li> <p> <code>Namespace = 'AWS/EC2' OR Namespace NOT LIKE 'AWS/%'</code> includes only the EC2 namespace and your custom namespaces.</p> </li> </ul> <note> <p>If you are updating a link that uses filters, you can specify <code>*</code> as the only value for the <code>filter</code> parameter to delete the filter and share all metric namespaces with the monitoring account.</p> </note>", "smithy.api#required" => {}}))
    MetricConfiguration.type = Types::MetricConfiguration
    MissingRequiredParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    MissingRequiredParameterException.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    MissingRequiredParameterException.type = Types::MissingRequiredParameterException
    PutSinkPolicyInput.add_member(:sink_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'SinkIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the sink to attach this policy to.</p>", "smithy.api#required" => {}}))
    PutSinkPolicyInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SinkPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.</p> <p>The policy must be in JSON string format with quotation marks escaped and no newlines.</p> <p>For examples of different types of policies, see the <b>Examples</b> section on this page.</p>", "smithy.api#required" => {}}))
    PutSinkPolicyInput.type = Types::PutSinkPolicyInput
    PutSinkPolicyOutput.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink.</p>"}))
    PutSinkPolicyOutput.add_member(:sink_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkId', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>"}))
    PutSinkPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The policy that you specified.</p>"}))
    PutSinkPolicyOutput.type = Types::PutSinkPolicyOutput
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:aws_cloudwatch_metric, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_CLOUDWATCH_METRIC', traits: {"smithy.api#enumValue" => "AWS::CloudWatch::Metric"}))
    ResourceType.add_member(:aws_logs_loggroup, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_LOGS_LOGGROUP', traits: {"smithy.api#enumValue" => "AWS::Logs::LogGroup"}))
    ResourceType.add_member(:aws_xray_trace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_XRAY_TRACE', traits: {"smithy.api#enumValue" => "AWS::XRay::Trace"}))
    ResourceType.add_member(:aws_applicationinsights_application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_APPLICATIONINSIGHTS_APPLICATION', traits: {"smithy.api#enumValue" => "AWS::ApplicationInsights::Application"}))
    ResourceType.add_member(:aws_internetmonitor_monitor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_INTERNETMONITOR_MONITOR', traits: {"smithy.api#enumValue" => "AWS::InternetMonitor::Monitor"}))
    ResourceType.add_member(:aws_application_signals_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_APPLICATION_SIGNALS_SERVICE', traits: {"smithy.api#enumValue" => "AWS::ApplicationSignals::Service"}))
    ResourceType.add_member(:aws_application_signals_slo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_APPLICATION_SIGNALS_SLO', traits: {"smithy.api#enumValue" => "AWS::ApplicationSignals::ServiceLevelObjective"}))
    ResourceTypesInput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypesOutput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:amzn_error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'amznErrorType', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#httpHeader" => "x-amzn-ErrorType"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagMapOutput.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagMapOutput.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you're adding tags to.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html\">CloudWatch Logs resources and operations</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapInput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs to associate with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you're removing tags from.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html\">CloudWatch Logs resources and operations</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateLinkInput.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The ARN of the link that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateLinkInput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesInput, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>An array of strings that define which types of data that the source account will send to the monitoring account.</p> <p>Your input here replaces the current set of data types that are shared.</p>", "smithy.api#required" => {}}))
    UpdateLinkInput.add_member(:link_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration', traits: {"smithy.api#documentation" => "<p>Use this structure to filter which metric namespaces and which log groups are to be shared from the source account to the monitoring account.</p>"}))
    UpdateLinkInput.add_member(:include_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeTags, location_name: 'IncludeTags', traits: {"smithy.api#documentation" => "<p>Specifies whether to include the tags associated with the link in the response after the update operation. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception. </p> <p>The default value is <code>false</code>.</p>"}))
    UpdateLinkInput.type = Types::UpdateLinkInput
    UpdateLinkOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the link that you have updated.</p>"}))
    UpdateLinkOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>"}))
    UpdateLinkOutput.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Label', traits: {"smithy.api#documentation" => "<p>The label assigned to this link, with the variables resolved to their actual values.</p>"}))
    UpdateLinkOutput.add_member(:label_template, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelTemplate, location_name: 'LabelTemplate', traits: {"smithy.api#documentation" => "<p>The exact label template that was specified when the link was created, with the template variables not resolved.</p>"}))
    UpdateLinkOutput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypesOutput, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types now supported by this link.</p>"}))
    UpdateLinkOutput.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink that is used for this link.</p>"}))
    UpdateLinkOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMapOutput, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the link.</p>"}))
    UpdateLinkOutput.add_member(:link_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkConfiguration, location_name: 'LinkConfiguration', traits: {"smithy.api#documentation" => "<p>This structure includes filters that specify which metric namespaces and which log groups are shared from the source account to the monitoring account.</p>"}))
    UpdateLinkOutput.type = Types::UpdateLinkOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    Oamservice = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.oam#oamservice"
      service.name = "Oamservice"
      service.version = "2022-06-10"
      service.traits = {"aws.api#service" => {"sdkId" => "OAM", "arnNamespace" => "oam", "cloudTrailEventSource" => "{{CLOUD_TRAIL_EVENT_SOURCE}}"}, "aws.auth#sigv4" => {"name" => "oam"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "oam:ResourceTypes" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of resource types in the request", "externalDocumentation" => "${DocHomeURL}oam/latest/apireference/api_createlink.html#api_createlink_requestsyntax"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Requested-Operation"]}, "smithy.api#title" => "CloudWatch Observability Access Manager"}
      service.add_operation(:create_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#CreateLink"
        operation.name = "CreateLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}", "oam:ResourceTypes"], "smithy.api#http" => {"method" => "POST", "uri" => "/CreateLink"}}
      end)
      service.add_operation(:create_sink, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#CreateSink"
        operation.name = "CreateSink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/CreateSink"}}
      end)
      service.add_operation(:delete_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#DeleteLink"
        operation.name = "DeleteLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/DeleteLink"}}
      end)
      service.add_operation(:delete_sink, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#DeleteSink"
        operation.name = "DeleteSink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/DeleteSink"}}
      end)
      service.add_operation(:get_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetLink"
        operation.name = "GetLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetLink"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sink, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetSink"
        operation.name = "GetSink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetSink"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sink_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#GetSinkPolicy"
        operation.name = "GetSinkPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSinkPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSinkPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/GetSinkPolicy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_attached_links, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListAttachedLinks"
        operation.name = "ListAttachedLinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachedLinksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/ListAttachedLinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAttachedLinks.new
      end)
      service.add_operation(:list_links, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListLinks"
        operation.name = "ListLinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLinksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLinks.new
      end)
      service.add_operation(:list_sinks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListSinks"
        operation.name = "ListSinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSinksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListSinks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSinks.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list the tags for a resource", "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_sink_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#PutSinkPolicy"
        operation.name = "PutSinkPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSinkPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSinkPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/PutSinkPolicy"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to tag a resource", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "PUT", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to untag a resource", "aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.oam#UpdateLink"
        operation.name = "UpdateLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "oam:ResourceTypes"], "smithy.api#http" => {"method" => "POST", "uri" => "/UpdateLink"}}
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
