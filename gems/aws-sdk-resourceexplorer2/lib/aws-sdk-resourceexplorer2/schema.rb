# frozen_string_literal: true

# This is generated code!

module Aws::ResourceExplorer2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSServiceAccessStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#AWSServiceAccessStatus', name: 'AWSServiceAccessStatus', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#AccountIdList', name: 'AccountIdList')
    AssociateDefaultViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#AssociateDefaultViewOperationInput', name: 'AssociateDefaultViewOperationInput')
    AssociateDefaultViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#AssociateDefaultViewOperationOutput', name: 'AssociateDefaultViewOperationOutput')
    BatchGetViewError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#BatchGetViewError', name: 'BatchGetViewError')
    BatchGetViewErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#BatchGetViewErrors', name: 'BatchGetViewErrors')
    BatchGetViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#BatchGetViewOperationInput', name: 'BatchGetViewOperationInput')
    BatchGetViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#BatchGetViewOperationOutput', name: 'BatchGetViewOperationOutput')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateIndexOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#CreateIndexOperationInput', name: 'CreateIndexOperationInput')
    CreateIndexOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#CreateIndexOperationOutput', name: 'CreateIndexOperationOutput')
    CreateViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#CreateViewOperationInput', name: 'CreateViewOperationInput')
    CreateViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#CreateViewOperationOutput', name: 'CreateViewOperationOutput')
    DeleteIndexOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#DeleteIndexOperationInput', name: 'DeleteIndexOperationInput')
    DeleteIndexOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#DeleteIndexOperationOutput', name: 'DeleteIndexOperationOutput')
    DeleteViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#DeleteViewOperationInput', name: 'DeleteViewOperationInput')
    DeleteViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#DeleteViewOperationOutput', name: 'DeleteViewOperationOutput')
    GetAccountLevelServiceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetAccountLevelServiceConfigurationOutput', name: 'GetAccountLevelServiceConfigurationOutput')
    GetDefaultViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetDefaultViewOperationOutput', name: 'GetDefaultViewOperationOutput')
    GetIndexOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetIndexOperationOutput', name: 'GetIndexOperationOutput')
    GetManagedViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetManagedViewInput', name: 'GetManagedViewInput')
    GetManagedViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetManagedViewOutput', name: 'GetManagedViewOutput')
    GetViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetViewOperationInput', name: 'GetViewOperationInput')
    GetViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#GetViewOperationOutput', name: 'GetViewOperationOutput')
    IncludedProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#IncludedProperty', name: 'IncludedProperty')
    IncludedPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#IncludedPropertyList', name: 'IncludedPropertyList')
    Index = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#Index', name: 'Index')
    IndexList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#IndexList', name: 'IndexList')
    IndexState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#IndexState', name: 'IndexState', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Resource Explorer is creating the index."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Index is active."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Resource Explorer is deleting the index."}, {"name" => "DELETED", "value" => "DELETED", "documentation" => "Resource Explorer successfully deleted the index."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Resource Explorer is switching the index type between local and aggregator."}]})
    IndexType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#IndexType', name: 'IndexType', traits: {"smithy.api#enum" => [{"name" => "LOCAL", "value" => "LOCAL", "documentation" => "local index"}, {"name" => "AGGREGATOR", "value" => "AGGREGATOR", "documentation" => "aggregator index"}]})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListIndexesForMembersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListIndexesForMembersInput', name: 'ListIndexesForMembersInput')
    ListIndexesForMembersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListIndexesForMembersOutput', name: 'ListIndexesForMembersOutput')
    ListIndexesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListIndexesOperationInput', name: 'ListIndexesOperationInput')
    ListIndexesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListIndexesOperationOutput', name: 'ListIndexesOperationOutput')
    ListManagedViewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListManagedViewsInput', name: 'ListManagedViewsInput')
    ListManagedViewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListManagedViewsOutput', name: 'ListManagedViewsOutput')
    ListResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListResourcesInput', name: 'ListResourcesInput')
    ListResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListResourcesOutput', name: 'ListResourcesOutput')
    ListSupportedResourceTypesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListSupportedResourceTypesOperationInput', name: 'ListSupportedResourceTypesOperationInput')
    ListSupportedResourceTypesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListSupportedResourceTypesOperationOutput', name: 'ListSupportedResourceTypesOperationOutput')
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    ListViewsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListViewsOperationInput', name: 'ListViewsOperationInput')
    ListViewsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ListViewsOperationOutput', name: 'ListViewsOperationOutput')
    ManagedView = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ManagedView', name: 'ManagedView')
    ManagedViewArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ManagedViewArnList', name: 'ManagedViewArnList')
    MemberIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#MemberIndex', name: 'MemberIndex')
    MemberIndexList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#MemberIndexList', name: 'MemberIndexList')
    OrgConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#OrgConfiguration', name: 'OrgConfiguration')
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#QueryString', name: 'QueryString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1280}, "smithy.api#sensitive" => {}})
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#RegionList', name: 'RegionList')
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#Resource', name: 'Resource')
    ResourceCount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceCount', name: 'ResourceCount')
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceList', name: 'ResourceList')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceProperty', name: 'ResourceProperty')
    ResourcePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ResourcePropertyList', name: 'ResourcePropertyList')
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ResourceTypeList', name: 'ResourceTypeList')
    SearchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#SearchFilter', name: 'SearchFilter', traits: {"smithy.api#sensitive" => {}})
    SearchOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#SearchOperationInput', name: 'SearchOperationInput')
    SearchOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#SearchOperationOutput', name: 'SearchOperationOutput')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#StringList', name: 'StringList', traits: {"smithy.api#sensitive" => {}})
    SupportedResourceType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#SupportedResourceType', name: 'SupportedResourceType')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.resourceexplorer2#TagMap', name: 'TagMap', traits: {"smithy.api#sensitive" => {}})
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#TagResourceOperationInput', name: 'TagResourceOperationInput')
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UntagResourceOperationInput', name: 'UntagResourceOperationInput')
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    UpdateIndexTypeOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UpdateIndexTypeOperationInput', name: 'UpdateIndexTypeOperationInput')
    UpdateIndexTypeOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UpdateIndexTypeOperationOutput', name: 'UpdateIndexTypeOperationOutput')
    UpdateViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UpdateViewOperationInput', name: 'UpdateViewOperationInput')
    UpdateViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#UpdateViewOperationOutput', name: 'UpdateViewOperationOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    View = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourceexplorer2#View', name: 'View')
    ViewArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ViewArnList', name: 'ViewArnList')
    ViewList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourceexplorer2#ViewList', name: 'ViewList')
    ViewName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourceexplorer2#ViewName', name: 'ViewName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-]{1,64}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    AssociateDefaultViewOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    AssociateDefaultViewOperationInput.type = Types::AssociateDefaultViewOperationInput
    AssociateDefaultViewOperationOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn'))
    AssociateDefaultViewOperationOutput.type = Types::AssociateDefaultViewOperationOutput
    BatchGetViewError.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#required" => {}}))
    BatchGetViewError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ErrorMessage', traits: {"smithy.api#required" => {}}))
    BatchGetViewError.type = Types::BatchGetViewError
    BatchGetViewErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetViewError)
    BatchGetViewOperationInput.add_member(:view_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewArnList, location_name: 'ViewArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}}))
    BatchGetViewOperationInput.type = Types::BatchGetViewOperationInput
    BatchGetViewOperationOutput.add_member(:views, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewList, location_name: 'Views'))
    BatchGetViewOperationOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetViewErrors, location_name: 'Errors'))
    BatchGetViewOperationOutput.type = Types::BatchGetViewOperationOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateIndexOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateIndexOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write"}))
    CreateIndexOperationInput.type = Types::CreateIndexOperationInput
    CreateIndexOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    CreateIndexOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexState, location_name: 'State'))
    CreateIndexOperationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateIndexOperationOutput.type = Types::CreateIndexOperationOutput
    CreateViewOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ClientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    CreateViewOperationInput.add_member(:view_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewName, location_name: 'ViewName', traits: {"smithy.api#required" => {}}))
    CreateViewOperationInput.add_member(:included_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: 'IncludedProperties'))
    CreateViewOperationInput.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Scope', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    CreateViewOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters'))
    CreateViewOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write"}))
    CreateViewOperationInput.type = Types::CreateViewOperationInput
    CreateViewOperationOutput.add_member(:view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: View, location_name: 'View'))
    CreateViewOperationOutput.type = Types::CreateViewOperationOutput
    DeleteIndexOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    DeleteIndexOperationInput.type = Types::DeleteIndexOperationInput
    DeleteIndexOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    DeleteIndexOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexState, location_name: 'State'))
    DeleteIndexOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    DeleteIndexOperationOutput.type = Types::DeleteIndexOperationOutput
    DeleteViewOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    DeleteViewOperationInput.type = Types::DeleteViewOperationInput
    DeleteViewOperationOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn'))
    DeleteViewOperationOutput.type = Types::DeleteViewOperationOutput
    GetAccountLevelServiceConfigurationOutput.add_member(:org_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrgConfiguration, location_name: 'OrgConfiguration'))
    GetAccountLevelServiceConfigurationOutput.type = Types::GetAccountLevelServiceConfigurationOutput
    GetDefaultViewOperationOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn'))
    GetDefaultViewOperationOutput.type = Types::GetDefaultViewOperationOutput
    GetIndexOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    GetIndexOperationOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type'))
    GetIndexOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexState, location_name: 'State'))
    GetIndexOperationOutput.add_member(:replicating_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'ReplicatingFrom'))
    GetIndexOperationOutput.add_member(:replicating_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'ReplicatingTo'))
    GetIndexOperationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetIndexOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetIndexOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    GetIndexOperationOutput.type = Types::GetIndexOperationOutput
    GetManagedViewInput.add_member(:managed_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ManagedViewArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    GetManagedViewInput.type = Types::GetManagedViewInput
    GetManagedViewOutput.add_member(:managed_view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedView, location_name: 'ManagedView'))
    GetManagedViewOutput.type = Types::GetManagedViewOutput
    GetViewOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    GetViewOperationInput.type = Types::GetViewOperationInput
    GetViewOperationOutput.add_member(:view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: View, location_name: 'View', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetViewOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    GetViewOperationOutput.type = Types::GetViewOperationOutput
    IncludedProperty.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    IncludedProperty.type = Types::IncludedProperty
    IncludedPropertyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedProperty)
    Index.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Region'))
    Index.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    Index.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type'))
    Index.type = Types::Index
    IndexList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Index)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListIndexesForMembersInput.add_member(:account_id_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    ListIndexesForMembersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListIndexesForMembersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListIndexesForMembersInput.type = Types::ListIndexesForMembersInput
    ListIndexesForMembersOutput.add_member(:indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberIndexList, location_name: 'Indexes'))
    ListIndexesForMembersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListIndexesForMembersOutput.type = Types::ListIndexesForMembersOutput
    ListIndexesOperationInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type'))
    ListIndexesOperationInput.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'Regions', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}}))
    ListIndexesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListIndexesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListIndexesOperationInput.type = Types::ListIndexesOperationInput
    ListIndexesOperationOutput.add_member(:indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexList, location_name: 'Indexes'))
    ListIndexesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListIndexesOperationOutput.type = Types::ListIndexesOperationOutput
    ListManagedViewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListManagedViewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListManagedViewsInput.add_member(:service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ServicePrincipal', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    ListManagedViewsInput.type = Types::ListManagedViewsInput
    ListManagedViewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListManagedViewsOutput.add_member(:managed_views, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedViewArnList, location_name: 'ManagedViews'))
    ListManagedViewsOutput.type = Types::ListManagedViewsOutput
    ListResourcesInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters'))
    ListResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListResourcesInput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}}))
    ListResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListResourcesInput.type = Types::ListResourcesInput
    ListResourcesOutput.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'Resources'))
    ListResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListResourcesOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}}))
    ListResourcesOutput.type = Types::ListResourcesOutput
    ListSupportedResourceTypesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListSupportedResourceTypesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSupportedResourceTypesOperationInput.type = Types::ListSupportedResourceTypesOperationInput
    ListSupportedResourceTypesOperationOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: 'ResourceTypes'))
    ListSupportedResourceTypesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListSupportedResourceTypesOperationOutput.type = Types::ListSupportedResourceTypesOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListViewsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListViewsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListViewsOperationInput.type = Types::ListViewsOperationInput
    ListViewsOperationOutput.add_member(:views, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewArnList, location_name: 'Views'))
    ListViewsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken'))
    ListViewsOperationOutput.type = Types::ListViewsOperationOutput
    ManagedView.add_member(:managed_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ManagedViewArn'))
    ManagedView.add_member(:managed_view_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ManagedViewName'))
    ManagedView.add_member(:trusted_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'TrustedService'))
    ManagedView.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    ManagedView.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Owner'))
    ManagedView.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Scope'))
    ManagedView.add_member(:included_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: 'IncludedProperties'))
    ManagedView.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters'))
    ManagedView.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourcePolicy'))
    ManagedView.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Version'))
    ManagedView.type = Types::ManagedView
    ManagedViewArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    MemberIndex.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'AccountId'))
    MemberIndex.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Region'))
    MemberIndex.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    MemberIndex.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type'))
    MemberIndex.type = Types::MemberIndex
    MemberIndexList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberIndex)
    OrgConfiguration.add_member(:aws_service_access_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessStatus, location_name: 'AWSServiceAccessStatus', traits: {"smithy.api#required" => {}}))
    OrgConfiguration.add_member(:service_linked_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ServiceLinkedRole'))
    OrgConfiguration.type = Types::OrgConfiguration
    RegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Resource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    Resource.add_member(:owning_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'OwningAccountId'))
    Resource.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Region'))
    Resource.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType'))
    Resource.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Service'))
    Resource.add_member(:last_reported_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastReportedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    Resource.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePropertyList, location_name: 'Properties'))
    Resource.type = Types::Resource
    ResourceCount.add_member(:total_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'TotalResources'))
    ResourceCount.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Complete'))
    ResourceCount.type = Types::ResourceCount
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProperty.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name'))
    ResourceProperty.add_member(:last_reported_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastReportedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    ResourceProperty.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: 'Data'))
    ResourceProperty.type = Types::ResourceProperty
    ResourcePropertyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProperty)
    ResourceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedResourceType)
    SearchFilter.add_member(:filter_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'FilterString', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#required" => {}}))
    SearchFilter.type = Types::SearchFilter
    SearchOperationInput.add_member(:query_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryString, location_name: 'QueryString', traits: {"smithy.api#required" => {}}))
    SearchOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    SearchOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}}))
    SearchOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    SearchOperationInput.type = Types::SearchOperationInput
    SearchOperationOutput.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'Resources'))
    SearchOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    SearchOperationOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}}))
    SearchOperationOutput.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCount, location_name: 'Count'))
    SearchOperationOutput.type = Types::SearchOperationOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    SupportedResourceType.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Service'))
    SupportedResourceType.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType'))
    SupportedResourceType.type = Types::SupportedResourceType
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateIndexTypeOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    UpdateIndexTypeOperationInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    UpdateIndexTypeOperationInput.type = Types::UpdateIndexTypeOperationInput
    UpdateIndexTypeOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Arn'))
    UpdateIndexTypeOperationOutput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'Type'))
    UpdateIndexTypeOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexState, location_name: 'State'))
    UpdateIndexTypeOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateIndexTypeOperationOutput.type = Types::UpdateIndexTypeOperationOutput
    UpdateViewOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    UpdateViewOperationInput.add_member(:included_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: 'IncludedProperties'))
    UpdateViewOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters'))
    UpdateViewOperationInput.type = Types::UpdateViewOperationInput
    UpdateViewOperationOutput.add_member(:view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: View, location_name: 'View'))
    UpdateViewOperationOutput.type = Types::UpdateViewOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'FieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:validation_issue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ValidationIssue', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    View.add_member(:view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ViewArn'))
    View.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Owner'))
    View.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    View.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Scope'))
    View.add_member(:included_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludedPropertyList, location_name: 'IncludedProperties'))
    View.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter, location_name: 'Filters'))
    View.type = Types::View
    ViewArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ViewList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: View)

    ResourceExplorer = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resourceexplorer2#ResourceExplorer"
      service.name = "ResourceExplorer"
      service.version = "2022-07-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Resource Explorer 2", "endpointPrefix" => "resource-explorer-2", "arnNamespace" => "resource-explorer-2"}, "aws.auth#sigv4" => {"name" => "resource-explorer-2"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["authorization", "content-type", "x-amz-content-sha256", "x-amz-date", "x-amz-user-agent", "x-amz-source-arn", "x-amz-source-account"]}, "smithy.api#title" => "AWS Resource Explorer"}
      service.add_operation(:associate_default_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#AssociateDefaultView"
        operation.name = "AssociateDefaultView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDefaultViewOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDefaultViewOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/AssociateDefaultView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_get_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#BatchGetView"
        operation.name = "BatchGetView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetViewOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetViewOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateIndex"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#CreateView"
        operation.name = "CreateView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateViewOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateViewOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateView"}}
      end)
      service.add_operation(:delete_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteIndex"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DeleteView"
        operation.name = "DeleteView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteViewOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteViewOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_default_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DisassociateDefaultView"
        operation.name = "DisassociateDefaultView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DisassociateDefaultView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_account_level_service_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetAccountLevelServiceConfiguration"
        operation.name = "GetAccountLevelServiceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountLevelServiceConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetAccountLevelServiceConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_default_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetDefaultView"
        operation.name = "GetDefaultView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultViewOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDefaultView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetIndex"
        operation.name = "GetIndex"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetIndex"}}
      end)
      service.add_operation(:get_managed_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetManagedView"
        operation.name = "GetManagedView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedViewInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedViewOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetManagedView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetView"
        operation.name = "GetView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetViewOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetViewOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_indexes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListIndexes"
        operation.name = "ListIndexes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListIndexes"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndexes.new
      end)
      service.add_operation(:list_indexes_for_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListIndexesForMembers"
        operation.name = "ListIndexesForMembers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesForMembersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndexesForMembersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListIndexesForMembers"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndexesForMembers.new
      end)
      service.add_operation(:list_managed_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListManagedViews"
        operation.name = "ListManagedViews"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedViewsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedViewsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListManagedViews"}}
        operation[:paginator] = Paginators::ListManagedViews.new
      end)
      service.add_operation(:list_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListResources"
        operation.name = "ListResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:list_supported_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListSupportedResourceTypes"
        operation.name = "ListSupportedResourceTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedResourceTypesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedResourceTypesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListSupportedResourceTypes"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSupportedResourceTypes.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListViews"
        operation.name = "ListViews"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListViewsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListViewsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListViews"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListViews.new
      end)
      service.add_operation(:search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#Search"
        operation.name = "Search"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Search"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::Search.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:update_index_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UpdateIndexType"
        operation.name = "UpdateIndexType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexTypeOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexTypeOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIndexType"}}
      end)
      service.add_operation(:update_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UpdateView"
        operation.name = "UpdateView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateViewOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateViewOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateView"}}
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
