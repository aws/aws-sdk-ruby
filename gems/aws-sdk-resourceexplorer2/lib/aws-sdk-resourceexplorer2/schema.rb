# frozen_string_literal: true

# This is generated code!

module Aws::ResourceExplorer2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSServiceAccessStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#AWSServiceAccessStatus', name: 'AWSServiceAccessStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#AccountIdList', name: 'AccountIdList')
    AssociateDefaultViewOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#AssociateDefaultViewOperationInput', name: 'AssociateDefaultViewOperationInput')
    AssociateDefaultViewOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#AssociateDefaultViewOperationOutput', name: 'AssociateDefaultViewOperationOutput')
    BatchGetViewError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#BatchGetViewError', name: 'BatchGetViewError')
    BatchGetViewErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#BatchGetViewErrors', name: 'BatchGetViewErrors')
    BatchGetViewOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#BatchGetViewOperationInput', name: 'BatchGetViewOperationInput')
    BatchGetViewOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#BatchGetViewOperationOutput', name: 'BatchGetViewOperationOutput')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateIndexOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#CreateIndexOperationInput', name: 'CreateIndexOperationInput')
    CreateIndexOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#CreateIndexOperationOutput', name: 'CreateIndexOperationOutput')
    CreateViewOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#CreateViewOperationInput', name: 'CreateViewOperationInput')
    CreateViewOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#CreateViewOperationOutput', name: 'CreateViewOperationOutput')
    DeleteIndexOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#DeleteIndexOperationInput', name: 'DeleteIndexOperationInput')
    DeleteIndexOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#DeleteIndexOperationOutput', name: 'DeleteIndexOperationOutput')
    DeleteViewOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#DeleteViewOperationInput', name: 'DeleteViewOperationInput')
    DeleteViewOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#DeleteViewOperationOutput', name: 'DeleteViewOperationOutput')
    GetAccountLevelServiceConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetAccountLevelServiceConfigurationOutput', name: 'GetAccountLevelServiceConfigurationOutput')
    GetDefaultViewOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetDefaultViewOperationOutput', name: 'GetDefaultViewOperationOutput')
    GetIndexOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetIndexOperationOutput', name: 'GetIndexOperationOutput')
    GetManagedViewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetManagedViewInput', name: 'GetManagedViewInput')
    GetManagedViewOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetManagedViewOutput', name: 'GetManagedViewOutput')
    GetViewOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetViewOperationInput', name: 'GetViewOperationInput')
    GetViewOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetViewOperationOutput', name: 'GetViewOperationOutput')
    IncludedProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#IncludedProperty', name: 'IncludedProperty')
    IncludedPropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#IncludedPropertyList', name: 'IncludedPropertyList')
    Index = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#Index', name: 'Index')
    IndexList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#IndexList', name: 'IndexList')
    IndexState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#IndexState', name: 'IndexState', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Resource Explorer is creating the index."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Index is active."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Resource Explorer is deleting the index."}, {"name" => "DELETED", "value" => "DELETED", "documentation" => "Resource Explorer successfully deleted the index."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Resource Explorer is switching the index type between local and aggregator."}]})
    IndexType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#IndexType', name: 'IndexType', traits: {"smithy.api#enum" => [{"name" => "LOCAL", "value" => "LOCAL", "documentation" => "local index"}, {"name" => "AGGREGATOR", "value" => "AGGREGATOR", "documentation" => "aggregator index"}]})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListIndexesForMembersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListIndexesForMembersInput', name: 'ListIndexesForMembersInput')
    ListIndexesForMembersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListIndexesForMembersOutput', name: 'ListIndexesForMembersOutput')
    ListIndexesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListIndexesOperationInput', name: 'ListIndexesOperationInput')
    ListIndexesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListIndexesOperationOutput', name: 'ListIndexesOperationOutput')
    ListManagedViewsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListManagedViewsInput', name: 'ListManagedViewsInput')
    ListManagedViewsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListManagedViewsOutput', name: 'ListManagedViewsOutput')
    ListResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListResourcesInput', name: 'ListResourcesInput')
    ListResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListResourcesOutput', name: 'ListResourcesOutput')
    ListSupportedResourceTypesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListSupportedResourceTypesOperationInput', name: 'ListSupportedResourceTypesOperationInput')
    ListSupportedResourceTypesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListSupportedResourceTypesOperationOutput', name: 'ListSupportedResourceTypesOperationOutput')
    ListTagsForResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    ListViewsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListViewsOperationInput', name: 'ListViewsOperationInput')
    ListViewsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListViewsOperationOutput', name: 'ListViewsOperationOutput')
    ManagedView = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ManagedView', name: 'ManagedView')
    ManagedViewArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ManagedViewArnList', name: 'ManagedViewArnList')
    MemberIndex = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#MemberIndex', name: 'MemberIndex')
    MemberIndexList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#MemberIndexList', name: 'MemberIndexList')
    OrgConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#OrgConfiguration', name: 'OrgConfiguration')
    QueryString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1280}, "smithy.api#sensitive" => {}})
    RegionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#RegionList', name: 'RegionList')
    Resource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#Resource', name: 'Resource')
    ResourceCount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceCount', name: 'ResourceCount')
    ResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceList', name: 'ResourceList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceProperty', name: 'ResourceProperty')
    ResourcePropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ResourcePropertyList', name: 'ResourcePropertyList')
    ResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceTypeList', name: 'ResourceTypeList')
    SearchFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#SearchFilter', name: 'SearchFilter', traits: {"smithy.api#sensitive" => {}})
    SearchOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#SearchOperationInput', name: 'SearchOperationInput')
    SearchOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#SearchOperationOutput', name: 'SearchOperationOutput')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#StringList', name: 'StringList', traits: {"smithy.api#sensitive" => {}})
    SupportedResourceType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#SupportedResourceType', name: 'SupportedResourceType')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.resourceexplorer2#TagMap', name: 'TagMap', traits: {"smithy.api#sensitive" => {}})
    TagResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#TagResourceOperationInput', name: 'TagResourceOperationInput')
    TagResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UntagResourceOperationInput', name: 'UntagResourceOperationInput')
    UntagResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    UpdateIndexTypeOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UpdateIndexTypeOperationInput', name: 'UpdateIndexTypeOperationInput')
    UpdateIndexTypeOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UpdateIndexTypeOperationOutput', name: 'UpdateIndexTypeOperationOutput')
    UpdateViewOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UpdateViewOperationInput', name: 'UpdateViewOperationInput')
    UpdateViewOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UpdateViewOperationOutput', name: 'UpdateViewOperationOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    View = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#View', name: 'View')
    ViewArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ViewArnList', name: 'ViewArnList')
    ViewList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ViewList', name: 'ViewList')
    ViewName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#ViewName', name: 'ViewName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-]{1,64}$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AssociateDefaultViewOperationInput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view to set as the default for the Amazon Web Services Region and\n            Amazon Web Services account in which you call this operation. The specified view must already exist in\n            the called Region.</p>", "smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    AssociateDefaultViewOperationInput.type = Types::AssociateDefaultViewOperationInput
    AssociateDefaultViewOperationOutput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view that the operation set as the default for queries made\n            in the Amazon Web Services Region and Amazon Web Services account in which you called this operation.</p>"}))
    AssociateDefaultViewOperationOutput.type = Types::AssociateDefaultViewOperationOutput
    BatchGetViewError.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view for which Resource Explorer failed to retrieve details.</p>", "smithy.api#required" => {}}))
    BatchGetViewError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The description of the error for the specified view.</p>", "smithy.api#required" => {}}))
    BatchGetViewError.type = Types::BatchGetViewError
    BatchGetViewErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetViewError)
    BatchGetViewOperationInput.add_member(:view_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewArnList, location_name: 'ViewArns', traits: {"smithy.api#documentation" => "<p>A list of <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource names (ARNs)</a> that identify the views you want details for.</p>", "smithy.api#length" => {"min" => 1, "max" => 20}}))
    BatchGetViewOperationInput.type = Types::BatchGetViewOperationInput
    BatchGetViewOperationOutput.add_member(:views, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewList, location_name: 'Views', traits: {"smithy.api#documentation" => "<p>A structure with a list of objects with details for each of the specified\n            views.</p>"}))
    BatchGetViewOperationOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetViewErrors, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>If any of the specified ARNs result in an error, then this structure describes the\n            error.</p>"}))
    BatchGetViewOperationOutput.type = Types::BatchGetViewOperationOutput
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateIndexOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>This value helps ensure idempotency. Resource Explorer uses this value to prevent the\n        accidental creation of duplicate versions. We recommend that you generate a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type\n        value</a> to ensure the uniqueness of your index.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateIndexOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write", "smithy.api#documentation" => "<p>The specified tags are attached only to the index created in this Amazon Web Services Region. The\n            tags aren't attached to any of the resources listed in the index.</p>"}))
    CreateIndexOperationInput.type = Types::CreateIndexOperationInput
    CreateIndexOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the new local index for the Region. You can reference this ARN in IAM\n            permission policies to authorize the following operations: <a>DeleteIndex</a>\n            | <a>GetIndex</a> | <a>UpdateIndexType</a> | <a>CreateView</a>\n         </p>"}))
    CreateIndexOperationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Indicates the current state of the index. You can check for changes to the state for\n            asynchronous operations by calling the <a>GetIndex</a> operation.</p>\n         <note>\n            <p>The state can remain in the <code>CREATING</code> or <code>UPDATING</code> state\n                for several hours as Resource Explorer discovers the information about your resources and\n                populates the index.</p>\n         </note>"}))
    CreateIndexOperationOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and timestamp when the index was created.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CreateIndexOperationOutput.type = Types::CreateIndexOperationOutput
    CreateViewOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>This value helps ensure idempotency. Resource Explorer uses this value to prevent the\n        accidental creation of duplicate versions. We recommend that you generate a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type\n        value</a> to ensure the uniqueness of your views.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    CreateViewOperationInput.add_member(:view_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewName, location_name: 'ViewName', traits: {"smithy.api#documentation" => "<p>The name of the new view. This name appears in the list of views in Resource Explorer.</p>\n         <p>The name must be no more than 64 characters long, and can include letters, digits, and\n            the dash (-) character. The name must be unique within its Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreateViewOperationInput.add_member(:included_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: 'IncludedProperties', traits: {"smithy.api#documentation" => "<p>Specifies optional fields that you want included in search results from this\n        view. It is a list of objects that each describe a field to include.</p>\n         <p>The default is an empty list, with no optional fields included in the results.</p>"}))
    CreateViewOperationInput.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>The root ARN of the account, an organizational unit (OU), or an organization ARN. If\n            left empty, the default is account.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    CreateViewOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of strings that specify which resources are included in the results of \n            queries made using this view. When you use this view in a <a>Search</a> \n            operation, the filter string is combined with the search's <code>QueryString</code> \n            parameter using a logical <code>AND</code> operator.</p>\n         <p>For information about the supported syntax, see <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html\">Search query reference for\n                Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>\n         <important>\n            <p>This query string in the context of this operation supports only <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters\">filter\n                    prefixes</a> with optional <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators\">operators</a>. It doesn't support free-form text. For example, the \n                    string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 \n                    resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is\n                    <i>not</i> tagged with a key <code>Stage</code> that has the value\n                    <code>prod</code>.</p>\n         </important>"}))
    CreateViewOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write", "smithy.api#documentation" => "<p>Tag key and value pairs that are attached to the view.</p>"}))
    CreateViewOperationInput.type = Types::CreateViewOperationInput
    CreateViewOperationOutput.add_member(:view, Smithy::Schema::Shapes::ShapeRef.new(shape: View, location_name: 'View', traits: {"smithy.api#documentation" => "<p>A structure that contains the details about the new view.</p>"}))
    CreateViewOperationOutput.type = Types::CreateViewOperationOutput
    DeleteIndexOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the index that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteIndexOperationInput.type = Types::DeleteIndexOperationInput
    DeleteIndexOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the index that you successfully started the deletion\n            process.</p>\n         <note>\n            <p>This operation is asynchronous. To check its status, call the <a>GetIndex</a> operation.</p>\n         </note>"}))
    DeleteIndexOperationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Indicates the current state of the index. </p>"}))
    DeleteIndexOperationOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when you last updated this index.</p>", "smithy.api#timestampFormat" => "date-time"}))
    DeleteIndexOperationOutput.type = Types::DeleteIndexOperationOutput
    DeleteViewOperationInput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view that you want to delete.</p>", "smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    DeleteViewOperationInput.type = Types::DeleteViewOperationInput
    DeleteViewOperationOutput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view that you successfully deleted.</p>"}))
    DeleteViewOperationOutput.type = Types::DeleteViewOperationOutput
    GetAccountLevelServiceConfigurationOutput.add_member(:org_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OrgConfiguration, location_name: 'OrgConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the organization, and whether configuration is <code>ENABLED</code> or\n                <code>DISABLED</code>.</p>"}))
    GetAccountLevelServiceConfigurationOutput.type = Types::GetAccountLevelServiceConfigurationOutput
    GetDefaultViewOperationOutput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view that is the current default for the Amazon Web Services Region in\n            which you called this operation.</p>"}))
    GetDefaultViewOperationOutput.type = Types::GetDefaultViewOperationOutput
    GetIndexOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the index.</p>"}))
    GetIndexOperationOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the index in this Region. For information about the aggregator index and\n            how it differs from a local index, see <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html\">Turning on cross-Region search\n                by creating an aggregator index</a>.</p>"}))
    GetIndexOperationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the index in this Amazon Web Services Region.</p>"}))
    GetIndexOperationOutput.add_member(:replicating_from, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'ReplicatingFrom', traits: {"smithy.api#documentation" => "<p>This response value is present only if this index is\n            <code>Type=AGGREGATOR</code>.</p>\n         <p>A list of the Amazon Web Services Regions that replicate their content to the index in this\n            Region.</p>"}))
    GetIndexOperationOutput.add_member(:replicating_to, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'ReplicatingTo', traits: {"smithy.api#documentation" => "<p>This response value is present only if this index is <code>Type=LOCAL</code>.</p>\n         <p>The Amazon Web Services Region that contains the aggregator index, if one exists. If an aggregator index\n            does exist then the Region in which you called this operation replicates its index\n            information to the Region specified in this response value. </p>"}))
    GetIndexOperationOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the index was originally created.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetIndexOperationOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the index was last updated.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetIndexOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tag key and value pairs that are attached to the index.</p>"}))
    GetIndexOperationOutput.type = Types::GetIndexOperationOutput
    GetManagedViewInput.add_member(:managed_view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ManagedViewArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the managed view.</p>", "smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    GetManagedViewInput.type = Types::GetManagedViewInput
    GetManagedViewOutput.add_member(:managed_view, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedView, location_name: 'ManagedView', traits: {"smithy.api#documentation" => "<p>Details about the specified managed view. </p>"}))
    GetManagedViewOutput.type = Types::GetManagedViewOutput
    GetViewOperationInput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view that you want information about.</p>", "smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    GetViewOperationInput.type = Types::GetViewOperationInput
    GetViewOperationOutput.add_member(:view, Smithy::Schema::Shapes::ShapeRef.new(shape: View, location_name: 'View', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>A structure that contains the details for the requested view.</p>"}))
    GetViewOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tag key and value pairs that are attached to the view.</p>"}))
    GetViewOperationOutput.type = Types::GetViewOperationOutput
    IncludedProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the property that is included in this view.</p>\n         <p>You can specify the following property names for this field:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>tags</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    IncludedProperty.type = Types::IncludedProperty
    IncludedPropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedProperty)
    Index.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the index exists.</p>"}))
    Index.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the index.</p>"}))
    Index.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of index. It can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LOCAL</code> – The index contains information about resources\n                    from only the same Amazon Web Services Region.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AGGREGATOR</code> – Resource Explorer replicates copies of the indexed\n                    information about resources in all other Amazon Web Services Regions to the aggregator index. This\n                    lets search results in the Region with the aggregator index to include resources\n                    from all Regions in the account where Resource Explorer is turned on.</p>\n            </li>\n         </ul>"}))
    Index.type = Types::Index
    IndexList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Index)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListIndexesForMembersInput.add_member(:account_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIdList', traits: {"smithy.api#documentation" => "<p>The account IDs will limit the output to only indexes from these\n            accounts.</p>", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    ListIndexesForMembersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value appropriate to the \n    operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListIndexesForMembersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from. The pagination tokens expire after 24 hours.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListIndexesForMembersInput.type = Types::ListIndexesForMembersInput
    ListIndexesForMembersOutput.add_member(:indexes, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberIndexList, location_name: 'Indexes', traits: {"smithy.api#documentation" => "<p>A structure that contains the details and status of each\n            index.</p>"}))
    ListIndexesForMembersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.\n    The pagination tokens expire after 24 hours.</p>"}))
    ListIndexesForMembersOutput.type = Types::ListIndexesForMembersOutput
    ListIndexesOperationInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>If specified, limits the output to only indexes of the specified Type, either\n                <code>LOCAL</code> or <code>AGGREGATOR</code>.</p>\n         <p>Use this option to discover the aggregator index for your account.</p>"}))
    ListIndexesOperationInput.add_member(:regions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'Regions', traits: {"smithy.api#documentation" => "<p>If specified, limits the response to only information about the index in the specified\n            list of Amazon Web Services Regions.</p>", "smithy.api#length" => {"min" => 0, "max" => 20}}))
    ListIndexesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value appropriate to the \n    operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListIndexesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from. The pagination tokens expire after 24 hours.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListIndexesOperationInput.type = Types::ListIndexesOperationInput
    ListIndexesOperationOutput.add_member(:indexes, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexList, location_name: 'Indexes', traits: {"smithy.api#documentation" => "<p>A structure that contains the details and status of each index.</p>"}))
    ListIndexesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.\n    The pagination tokens expire after 24 hours.</p>"}))
    ListIndexesOperationOutput.type = Types::ListIndexesOperationOutput
    ListManagedViewsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value appropriate to the \n    operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListManagedViewsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from. The pagination tokens expire after 24 hours.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListManagedViewsInput.add_member(:service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ServicePrincipal', traits: {"smithy.api#documentation" => "<p>Specifies a service principal name. If specified, then the \n            operation only returns the managed views that are managed by the input service. </p>", "smithy.api#length" => {"min" => 1, "max" => 1024}}))
    ListManagedViewsInput.type = Types::ListManagedViewsInput
    ListManagedViewsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.\n    The pagination tokens expire after 24 hours.</p>"}))
    ListManagedViewsOutput.add_member(:managed_views, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedViewArnList, location_name: 'ManagedViews', traits: {"smithy.api#documentation" => "<p>The list of managed views available in the Amazon Web Services Region in which you called this operation. </p>"}))
    ListManagedViewsOutput.type = Types::ListManagedViewsOutput
    ListResourcesInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of strings that specify which resources are included in the results of \n            queries made using this view. When you use this view in a <a>Search</a> \n            operation, the filter string is combined with the search's <code>QueryString</code> \n            parameter using a logical <code>AND</code> operator.</p>\n         <p>For information about the supported syntax, see <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html\">Search query reference for\n                Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>\n         <important>\n            <p>This query string in the context of this operation supports only <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters\">filter\n                    prefixes</a> with optional <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators\">operators</a>. It doesn't support free-form text. For example, the \n                    string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 \n                    resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is\n                    <i>not</i> tagged with a key <code>Stage</code> that has the value\n                    <code>prod</code>.</p>\n         </important>"}))
    ListResourcesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value appropriate to the \n    operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListResourcesInput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon resource name (ARN) of the view to use for the query. If you don't \n            specify a value for this parameter, then the operation automatically uses the default view \n            for the Amazon Web Services Region in which you called this operation. If the Region either doesn't have \n            a default view or if you don't have permission to use the default view, then the operation \n            fails with a 401 Unauthorized exception.</p>", "smithy.api#length" => {"min" => 0, "max" => 1000}}))
    ListResourcesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from. The pagination tokens expire after 24 hours.</p>\n         <note>\n            <p>The <code>ListResources</code> operation \n            does not generate a <code>NextToken</code> if you set <code>MaxResults</code> to 1000. </p>\n         </note>", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListResourcesInput.type = Types::ListResourcesInput
    ListResourcesOutput.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>The list of structures that describe the resources that match the query. </p>"}))
    ListResourcesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.\n    The pagination tokens expire after 24 hours.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListResourcesOutput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the view that this operation used to perform the search. </p>", "smithy.api#length" => {"min" => 1, "max" => 1011}}))
    ListResourcesOutput.type = Types::ListResourcesOutput
    ListSupportedResourceTypesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from. The pagination tokens expire after 24 hours.</p>"}))
    ListSupportedResourceTypesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value appropriate to the \n    operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSupportedResourceTypesOperationInput.type = Types::ListSupportedResourceTypesOperationInput
    ListSupportedResourceTypesOperationOutput.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: 'ResourceTypes', traits: {"smithy.api#documentation" => "<p>The list of resource types supported by Resource Explorer.</p>"}))
    ListSupportedResourceTypesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.\n    The pagination tokens expire after 24 hours.</p>"}))
    ListSupportedResourceTypesOperationOutput.type = Types::ListSupportedResourceTypesOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view or index that you want to attach tags to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tag key and value pairs that you want to attach to the specified view or\n            index.</p>"}))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListViewsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from. The pagination tokens expire after 24 hours.</p>"}))
    ListViewsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value appropriate to the \n    operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListViewsOperationInput.type = Types::ListViewsOperationInput
    ListViewsOperationOutput.add_member(:views, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewArnList, location_name: 'Views', traits: {"smithy.api#documentation" => "<p>The list of views available in the Amazon Web Services Region in which you called this\n            operation.</p>"}))
    ListViewsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.\n    The pagination tokens expire after 24 hours.</p>"}))
    ListViewsOperationOutput.type = Types::ListViewsOperationOutput
    ManagedView.add_member(:managed_view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ManagedViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the managed view.</p>"}))
    ManagedView.add_member(:managed_view_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ManagedViewName', traits: {"smithy.api#documentation" => "<p>The name of the managed view. </p>"}))
    ManagedView.add_member(:trusted_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'TrustedService', traits: {"smithy.api#documentation" => "<p>The service principal of the Amazon Web Services service that created and manages the managed view. </p>"}))
    ManagedView.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when this managed view was last modified.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ManagedView.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that owns this managed view.</p>"}))
    ManagedView.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>An <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of an Amazon Web Services account or organization that specifies whether this managed view \n    includes resources from only the specified Amazon Web Services account or all accounts in the specified organization. </p>"}))
    ManagedView.add_member(:included_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: 'IncludedProperties', traits: {"smithy.api#documentation" => "<p>A structure that contains additional information about the managed view.</p>"}))
    ManagedView.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters'))
    ManagedView.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>The resource policy that defines access to the managed view. To learn more about this policy, review \n            <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html\">Managed views</a>.</p>"}))
    ManagedView.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the managed view. </p>"}))
    ManagedView.type = Types::ManagedView
    ManagedViewArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    MemberIndex.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The account ID for the index.</p>"}))
    MemberIndex.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the index\n            exists.</p>"}))
    MemberIndex.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the index.</p>"}))
    MemberIndex.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of index. It can be one of the following values: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>LOCAL</code> – The index contains information about resources\n                    from only the same Amazon Web Services Region.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AGGREGATOR</code> – Resource Explorer replicates copies of the indexed\n                    information about resources in all other Amazon Web Services Regions to the aggregator index. This\n                    lets search results in the Region with the aggregator index to include resources\n                    from all Regions in the account where Resource Explorer is turned on.</p>\n            </li>\n         </ul>"}))
    MemberIndex.type = Types::MemberIndex
    MemberIndexList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberIndex)
    OrgConfiguration.add_member(:aws_service_access_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessStatus, location_name: 'AWSServiceAccessStatus', traits: {"smithy.api#documentation" => "<p>This value displays whether your Amazon Web Services service access is <code>ENABLED</code> or <code>DISABLED</code>.</p>", "smithy.api#required" => {}}))
    OrgConfiguration.add_member(:service_linked_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ServiceLinkedRole', traits: {"smithy.api#documentation" => "<p>This value shows whether or not you have a valid a service-linked role required to start the multi-account search feature.</p>"}))
    OrgConfiguration.type = Types::OrgConfiguration
    RegionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Resource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the resource.</p>"}))
    Resource.add_member(:owning_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'OwningAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that owns the resource.</p>"}))
    Resource.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the resource was created and exists.</p>"}))
    Resource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>"}))
    Resource.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service that owns the resource and is responsible for creating and updating\n            it.</p>"}))
    Resource.add_member(:last_reported_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastReportedAt', traits: {"smithy.api#documentation" => "<p>The date and time that Resource Explorer last queried this resource and updated the index with\n            the latest information about the resource.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Resource.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePropertyList, location_name: 'Properties', traits: {"smithy.api#documentation" => "<p>A structure with additional type-specific details about the resource. These properties\n            can be added by turning on integration between Resource Explorer and other Amazon Web Services services.</p>"}))
    Resource.type = Types::Resource
    ResourceCount.add_member(:total_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalResources', traits: {"smithy.api#documentation" => "<p>The number of resources that match the search query. This value can't exceed\n            1,000. If there are more than 1,000 resources that match\n            the query, then only 1,000 are counted and the <code>Complete</code>\n            field is set to false. We recommend that you refine your query to return a smaller\n            number of results.</p>"}))
    ResourceCount.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Complete', traits: {"smithy.api#documentation" => "<p>Indicates whether the <code>TotalResources</code> value represents an exhaustive count\n            of search results.</p>\n         <ul>\n            <li>\n               <p>If <code>True</code>, it indicates that the search was exhaustive. Every\n                    resource that matches the query was counted.</p>\n            </li>\n            <li>\n               <p>If <code>False</code>, then the search reached the limit of\n                    1,000 matching results, and stopped counting.</p>\n            </li>\n         </ul>"}))
    ResourceCount.type = Types::ResourceCount
    ResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of this property of the resource.</p>"}))
    ResourceProperty.add_member(:last_reported_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastReportedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the information about this resource property was last\n            updated.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ResourceProperty.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Document, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>Details about this property. The content of this field is a JSON object that varies\n            based on the resource type.</p>"}))
    ResourceProperty.type = Types::ResourceProperty
    ResourcePropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProperty)
    ResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedResourceType)
    SearchFilter.add_member(:filter_string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'FilterString', traits: {"smithy.api#documentation" => "<p>The string that contains the search keywords, prefixes, and operators to control the\n            results that can be returned by a <a>Search</a> operation. For more details,\n            see <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html\">Search\n                query syntax</a>.</p>", "smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#required" => {}}))
    SearchFilter.type = Types::SearchFilter
    SearchOperationInput.add_member(:query_string, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#documentation" => "<p>A string that includes keywords and filters that specify the resources that you want\n            to include in the results.</p>\n         <p>For the complete syntax supported by the <code>QueryString</code> parameter, see\n                <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html\">Search query syntax reference for Resource Explorer</a>.</p>\n         <p>The search is completely case insensitive. You can specify an empty string to return\n            all results up to the limit of 1,000 total results.</p>\n         <note>\n            <p>The operation can return only the first 1,000 results. If the\n                resource you want is not included, then use a different value for\n                    <code>QueryString</code> to refine the results.</p>\n         </note>", "smithy.api#required" => {}}))
    SearchOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want included on each page of the \n    response. If you do not include this parameter, it defaults to a value appropriate to the \n    operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    SearchOperationInput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view to use for the query. If you don't specify a\n            value for this parameter, then the operation automatically uses the default view for the\n            Amazon Web Services Region in which you called this operation. If the Region either doesn't have a\n            default view or if you don't have permission to use the default view, then the operation\n            fails with a <code>401 Unauthorized</code> exception.</p>", "smithy.api#length" => {"min" => 0, "max" => 1000}}))
    SearchOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response \n    indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from. The pagination tokens expire after 24 hours.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    SearchOperationInput.type = Types::SearchOperationInput
    SearchOperationOutput.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>The list of structures that describe the resources that match the query.</p>"}))
    SearchOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.\n    The pagination tokens expire after 24 hours.</p>", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    SearchOperationOutput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view that this operation used to perform the search.</p>", "smithy.api#length" => {"min" => 1, "max" => 1011}}))
    SearchOperationOutput.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCount, location_name: 'Count', traits: {"smithy.api#documentation" => "<p>The number of resources that match the query.</p>"}))
    SearchOperationOutput.type = Types::SearchOperationOutput
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the service quota that was exceeded by the request.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The current value for the quota that the request tried to exceed.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SupportedResourceType.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service that is associated with the resource type. This is the primary\n            service that lets you create and interact with resources of this type.</p>"}))
    SupportedResourceType.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource type.</p>"}))
    SupportedResourceType.type = Types::SupportedResourceType
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the view or index that you want to attach tags\n            to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag key and value pairs that you want to attach to the specified view or\n            index.</p>"}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the view or index that you want to remove tags\n            from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of the keys for the tags that you want to remove from the specified view or\n            index.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateIndexTypeOperationInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the index that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateIndexTypeOperationInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The type of the index. To understand the difference between <code>LOCAL</code> and\n                <code>AGGREGATOR</code>, see <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html\">Turning on cross-Region\n                search</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>", "smithy.api#required" => {}}))
    UpdateIndexTypeOperationInput.type = Types::UpdateIndexTypeOperationInput
    UpdateIndexTypeOperationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the index that you updated.</p>"}))
    UpdateIndexTypeOperationOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Specifies the type of the specified index after the operation completes.</p>"}))
    UpdateIndexTypeOperationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Indicates the state of the request to update the index. This operation is\n            asynchronous. Call the <a>GetIndex</a> operation to check for changes.</p>"}))
    UpdateIndexTypeOperationOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and timestamp when the index was last updated.</p>", "smithy.api#timestampFormat" => "date-time"}))
    UpdateIndexTypeOperationOutput.type = Types::UpdateIndexTypeOperationOutput
    UpdateViewOperationInput.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view that you want to modify.</p>", "smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    UpdateViewOperationInput.add_member(:included_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: 'IncludedProperties', traits: {"smithy.api#documentation" => "<p>Specifies optional fields that you want included in search results from this\n        view. It is a list of objects that each describe a field to include.</p>\n         <p>The default is an empty list, with no optional fields included in the results.</p>"}))
    UpdateViewOperationInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of strings that specify which resources are included in the results of \n            queries made using this view. When you use this view in a <a>Search</a> \n            operation, the filter string is combined with the search's <code>QueryString</code> \n            parameter using a logical <code>AND</code> operator.</p>\n         <p>For information about the supported syntax, see <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html\">Search query reference for\n                Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>\n         <important>\n            <p>This query string in the context of this operation supports only <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters\">filter\n                    prefixes</a> with optional <a href=\"https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators\">operators</a>. It doesn't support free-form text. For example, the \n                    string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 \n                    resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is\n                    <i>not</i> tagged with a key <code>Stage</code> that has the value\n                    <code>prod</code>.</p>\n         </important>"}))
    UpdateViewOperationInput.type = Types::UpdateViewOperationInput
    UpdateViewOperationOutput.add_member(:view, Smithy::Schema::Shapes::ShapeRef.new(shape: View, location_name: 'View', traits: {"smithy.api#documentation" => "<p>Details about the view that you changed with this operation.</p>"}))
    UpdateViewOperationOutput.type = Types::UpdateViewOperationOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'FieldList', traits: {"smithy.api#documentation" => "<p>An array of the request fields that had validation errors.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the request field that had a validation error.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:validation_issue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ValidationIssue', traits: {"smithy.api#documentation" => "<p>The validation error caused by the request field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    View.add_member(:view_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of the view.</p>"}))
    View.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that owns this view.</p>"}))
    View.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when this view was last modified.</p>", "smithy.api#timestampFormat" => "date-time"}))
    View.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>An <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon resource name (ARN)</a> of an Amazon Web Services account, an organization, or an\n        organizational unit (OU) that specifies whether this view includes resources from only \n        the specified Amazon Web Services account, all accounts in the specified organization, or all accounts in \n        the specified OU.</p>\n         <p>If not specified, the value defaults to the Amazon Web Services account used to call this \n        operation.</p>"}))
    View.add_member(:included_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: 'IncludedProperties', traits: {"smithy.api#documentation" => "<p>A structure that contains additional information about the view.</p>"}))
    View.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of <a>SearchFilter</a> objects that specify which resources can be\n            included in the results of queries made using this view.</p>"}))
    View.type = Types::View
    ViewArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ViewList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: View)

    ResourceExplorer = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resourceexplorer2#ResourceExplorer"
      service.name = "ResourceExplorer"
      service.version = "2022-07-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Resource Explorer 2", "endpointPrefix" => "resource-explorer-2", "arnNamespace" => "resource-explorer-2"}, "aws.auth#sigv4" => {"name" => "resource-explorer-2"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["authorization", "content-type", "x-amz-content-sha256", "x-amz-date", "x-amz-user-agent", "x-amz-source-arn", "x-amz-source-account"]}, "smithy.api#title" => "AWS Resource Explorer"}
      service.add_operation(:associate_default_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#AssociateDefaultView"
        operation.name = "AssociateDefaultView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDefaultViewOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDefaultViewOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/AssociateDefaultView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_get_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#BatchGetView"
        operation.name = "BatchGetView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetViewOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetViewOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateIndex"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#CreateView"
        operation.name = "CreateView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateViewOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateViewOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateView"}}
      end)
      service.add_operation(:delete_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteIndex"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DeleteView"
        operation.name = "DeleteView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteViewOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteViewOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_default_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DisassociateDefaultView"
        operation.name = "DisassociateDefaultView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DisassociateDefaultView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_account_level_service_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetAccountLevelServiceConfiguration"
        operation.name = "GetAccountLevelServiceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountLevelServiceConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetAccountLevelServiceConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_default_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetDefaultView"
        operation.name = "GetDefaultView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultViewOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDefaultView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetIndex"
        operation.name = "GetIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetIndex"}}
      end)
      service.add_operation(:get_managed_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetManagedView"
        operation.name = "GetManagedView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedViewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedViewOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetManagedView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetView"
        operation.name = "GetView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetViewOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetViewOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_indexes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListIndexes"
        operation.name = "ListIndexes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListIndexes"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndexes.new
      end)
      service.add_operation(:list_indexes_for_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListIndexesForMembers"
        operation.name = "ListIndexesForMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesForMembersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesForMembersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListIndexesForMembers"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndexesForMembers.new
      end)
      service.add_operation(:list_managed_views, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListManagedViews"
        operation.name = "ListManagedViews"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedViewsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedViewsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListManagedViews"}}
        operation[:paginator] = Paginators::ListManagedViews.new
      end)
      service.add_operation(:list_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListResources"
        operation.name = "ListResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:list_supported_resource_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListSupportedResourceTypes"
        operation.name = "ListSupportedResourceTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedResourceTypesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedResourceTypesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListSupportedResourceTypes"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSupportedResourceTypes.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_views, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListViews"
        operation.name = "ListViews"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListViewsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListViewsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListViews"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListViews.new
      end)
      service.add_operation(:search, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#Search"
        operation.name = "Search"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Search"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::Search.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:update_index_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UpdateIndexType"
        operation.name = "UpdateIndexType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexTypeOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexTypeOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIndexType"}}
      end)
      service.add_operation(:update_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UpdateView"
        operation.name = "UpdateView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateViewOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateViewOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateView"}}
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
