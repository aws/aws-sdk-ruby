# frozen_string_literal: true

# This is generated code!

module Aws::ResourceExplorer2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSServiceAccessStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#AWSServiceAccessStatus", name: "AWSServiceAccessStatus", traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#AccountIdList", name: "AccountIdList")
    AssociateDefaultViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#AssociateDefaultViewOperationInput", name: "AssociateDefaultViewOperationInput")
    AssociateDefaultViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#AssociateDefaultViewOperationOutput", name: "AssociateDefaultViewOperationOutput")
    BatchGetViewError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#BatchGetViewError", name: "BatchGetViewError")
    BatchGetViewErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#BatchGetViewErrors", name: "BatchGetViewErrors")
    BatchGetViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#BatchGetViewOperationInput", name: "BatchGetViewOperationInput")
    BatchGetViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#BatchGetViewOperationOutput", name: "BatchGetViewOperationOutput")
    CFNResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#CFNResourceTypeList", name: "CFNResourceTypeList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateIndexOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#CreateIndexOperationInput", name: "CreateIndexOperationInput")
    CreateIndexOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#CreateIndexOperationOutput", name: "CreateIndexOperationOutput")
    CreateResourceExplorerSetupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#CreateResourceExplorerSetupInput", name: "CreateResourceExplorerSetupInput")
    CreateResourceExplorerSetupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#CreateResourceExplorerSetupOutput", name: "CreateResourceExplorerSetupOutput")
    CreateViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#CreateViewOperationInput", name: "CreateViewOperationInput")
    CreateViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#CreateViewOperationOutput", name: "CreateViewOperationOutput")
    DeleteIndexOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#DeleteIndexOperationInput", name: "DeleteIndexOperationInput")
    DeleteIndexOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#DeleteIndexOperationOutput", name: "DeleteIndexOperationOutput")
    DeleteResourceExplorerSetupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#DeleteResourceExplorerSetupInput", name: "DeleteResourceExplorerSetupInput")
    DeleteResourceExplorerSetupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#DeleteResourceExplorerSetupOutput", name: "DeleteResourceExplorerSetupOutput")
    DeleteViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#DeleteViewOperationInput", name: "DeleteViewOperationInput")
    DeleteViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#DeleteViewOperationOutput", name: "DeleteViewOperationOutput")
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ErrorDetails", name: "ErrorDetails")
    GetAccountLevelServiceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetAccountLevelServiceConfigurationOutput", name: "GetAccountLevelServiceConfigurationOutput")
    GetDefaultViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetDefaultViewOperationOutput", name: "GetDefaultViewOperationOutput")
    GetIndexOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetIndexOperationOutput", name: "GetIndexOperationOutput")
    GetManagedViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetManagedViewInput", name: "GetManagedViewInput")
    GetManagedViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetManagedViewOutput", name: "GetManagedViewOutput")
    GetResourceExplorerSetupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetResourceExplorerSetupInput", name: "GetResourceExplorerSetupInput")
    GetResourceExplorerSetupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetResourceExplorerSetupOutput", name: "GetResourceExplorerSetupOutput")
    GetServiceIndexOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetServiceIndexOutput", name: "GetServiceIndexOutput")
    GetServiceViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetServiceViewInput", name: "GetServiceViewInput")
    GetServiceViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetServiceViewOutput", name: "GetServiceViewOutput")
    GetViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetViewOperationInput", name: "GetViewOperationInput")
    GetViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#GetViewOperationOutput", name: "GetViewOperationOutput")
    IncludedProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#IncludedProperty", name: "IncludedProperty")
    IncludedPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#IncludedPropertyList", name: "IncludedPropertyList")
    Index = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#Index", name: "Index")
    IndexList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#IndexList", name: "IndexList")
    IndexState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#IndexState", name: "IndexState", traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING", "documentation" => "Resource Explorer is creating the index."}, {"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Index is active."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Resource Explorer is deleting the index."}, {"name" => "DELETED", "value" => "DELETED", "documentation" => "Resource Explorer successfully deleted the index."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Resource Explorer is switching the index type between local and aggregator."}]})
    IndexStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#IndexStatus", name: "IndexStatus")
    IndexType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#IndexType", name: "IndexType", traits: {"smithy.api#enum" => [{"name" => "LOCAL", "value" => "LOCAL", "documentation" => "local index"}, {"name" => "AGGREGATOR", "value" => "AGGREGATOR", "documentation" => "aggregator index"}]})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListIndexesForMembersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListIndexesForMembersInput", name: "ListIndexesForMembersInput")
    ListIndexesForMembersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListIndexesForMembersOutput", name: "ListIndexesForMembersOutput")
    ListIndexesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListIndexesOperationInput", name: "ListIndexesOperationInput")
    ListIndexesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListIndexesOperationOutput", name: "ListIndexesOperationOutput")
    ListManagedViewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListManagedViewsInput", name: "ListManagedViewsInput")
    ListManagedViewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListManagedViewsOutput", name: "ListManagedViewsOutput")
    ListResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListResourcesInput", name: "ListResourcesInput")
    ListResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListResourcesOutput", name: "ListResourcesOutput")
    ListServiceIndexesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListServiceIndexesInput", name: "ListServiceIndexesInput")
    ListServiceIndexesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListServiceIndexesOutput", name: "ListServiceIndexesOutput")
    ListServiceViewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListServiceViewsInput", name: "ListServiceViewsInput")
    ListServiceViewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListServiceViewsOutput", name: "ListServiceViewsOutput")
    ListStreamingAccessForServicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListStreamingAccessForServicesInput", name: "ListStreamingAccessForServicesInput")
    ListStreamingAccessForServicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListStreamingAccessForServicesOutput", name: "ListStreamingAccessForServicesOutput")
    ListSupportedResourceTypesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListSupportedResourceTypesOperationInput", name: "ListSupportedResourceTypesOperationInput")
    ListSupportedResourceTypesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListSupportedResourceTypesOperationOutput", name: "ListSupportedResourceTypesOperationOutput")
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListTagsForResourceOperationInput", name: "ListTagsForResourceOperationInput")
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListTagsForResourceOperationOutput", name: "ListTagsForResourceOperationOutput")
    ListViewsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListViewsOperationInput", name: "ListViewsOperationInput")
    ListViewsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ListViewsOperationOutput", name: "ListViewsOperationOutput")
    ManagedView = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ManagedView", name: "ManagedView")
    ManagedViewArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#ManagedViewArnList", name: "ManagedViewArnList")
    MemberIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#MemberIndex", name: "MemberIndex")
    MemberIndexList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#MemberIndexList", name: "MemberIndexList")
    OperationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#OperationStatus", name: "OperationStatus", traits: {"smithy.api#enum" => [{"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SKIPPED", "value" => "SKIPPED"}]})
    OrgConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#OrgConfiguration", name: "OrgConfiguration")
    QueryString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#QueryString", name: "QueryString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1280}, "smithy.api#sensitive" => {}})
    RecorderType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#RecorderType", name: "RecorderType", traits: {"smithy.api#enum" => [{"name" => "AWS", "value" => "AWS"}, {"name" => "THIRD_PARTY", "value" => "THIRD_PARTY"}]})
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#RegionList", name: "RegionList")
    RegionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#RegionStatus", name: "RegionStatus")
    RegionStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#RegionStatusList", name: "RegionStatusList")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#Resource", name: "Resource")
    ResourceCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ResourceCount", name: "ResourceCount")
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#ResourceList", name: "ResourceList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ResourceProperty", name: "ResourceProperty")
    ResourcePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#ResourcePropertyList", name: "ResourcePropertyList")
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#ResourceTypeList", name: "ResourceTypeList")
    SearchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#SearchFilter", name: "SearchFilter", traits: {"smithy.api#sensitive" => {}})
    SearchOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#SearchOperationInput", name: "SearchOperationInput")
    SearchOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#SearchOperationOutput", name: "SearchOperationOutput")
    ServiceLinkedRecorderInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ServiceLinkedRecorderInfo", name: "ServiceLinkedRecorderInfo")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceView = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ServiceView", name: "ServiceView")
    ServiceViewArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#ServiceViewArnList", name: "ServiceViewArnList")
    ServiceViewName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#ServiceViewName", name: "ServiceViewName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-]{1,64}$"})
    StreamingAccessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#StreamingAccessDetails", name: "StreamingAccessDetails")
    StreamingAccessDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#StreamingAccessDetailsList", name: "StreamingAccessDetailsList")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#StringList", name: "StringList", traits: {"smithy.api#sensitive" => {}})
    SupportedResourceType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#SupportedResourceType", name: "SupportedResourceType")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resourceexplorer2#TagMap", name: "TagMap", traits: {"smithy.api#sensitive" => {}})
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#TagResourceOperationInput", name: "TagResourceOperationInput")
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#TagResourceOperationOutput", name: "TagResourceOperationOutput")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#UntagResourceOperationInput", name: "UntagResourceOperationInput")
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#UntagResourceOperationOutput", name: "UntagResourceOperationOutput")
    UpdateIndexTypeOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#UpdateIndexTypeOperationInput", name: "UpdateIndexTypeOperationInput")
    UpdateIndexTypeOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#UpdateIndexTypeOperationOutput", name: "UpdateIndexTypeOperationOutput")
    UpdateViewOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#UpdateViewOperationInput", name: "UpdateViewOperationInput")
    UpdateViewOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#UpdateViewOperationOutput", name: "UpdateViewOperationOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    View = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#View", name: "View")
    ViewArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#ViewArnList", name: "ViewArnList")
    ViewList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourceexplorer2#ViewList", name: "ViewList")
    ViewName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourceexplorer2#ViewName", name: "ViewName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\-]{1,64}$"})
    ViewStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourceexplorer2#ViewStatus", name: "ViewStatus")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AssociateDefaultViewOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    AssociateDefaultViewOperationInput.type = Types::AssociateDefaultViewOperationInput
    AssociateDefaultViewOperationOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn"))
    AssociateDefaultViewOperationOutput.type = Types::AssociateDefaultViewOperationOutput
    BatchGetViewError.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#required" => {}}))
    BatchGetViewError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ErrorMessage", traits: {"smithy.api#required" => {}}))
    BatchGetViewError.type = Types::BatchGetViewError
    BatchGetViewErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetViewError, name: "member"))
    BatchGetViewOperationInput.add_member(:view_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewArnList, name: "ViewArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}}))
    BatchGetViewOperationInput.type = Types::BatchGetViewOperationInput
    BatchGetViewOperationOutput.add_member(:views, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewList, name: "Views"))
    BatchGetViewOperationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetViewErrors, name: "Errors"))
    BatchGetViewOperationOutput.type = Types::BatchGetViewOperationOutput
    CFNResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateIndexOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateIndexOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "write"}))
    CreateIndexOperationInput.type = Types::CreateIndexOperationInput
    CreateIndexOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    CreateIndexOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexState, name: "State"))
    CreateIndexOperationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateIndexOperationOutput.type = Types::CreateIndexOperationOutput
    CreateResourceExplorerSetupInput.add_member(:region_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "RegionList", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    CreateResourceExplorerSetupInput.add_member(:aggregator_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "AggregatorRegions", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}}))
    CreateResourceExplorerSetupInput.add_member(:view_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]{1,64}$", "smithy.api#required" => {}}))
    CreateResourceExplorerSetupInput.type = Types::CreateResourceExplorerSetupInput
    CreateResourceExplorerSetupOutput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TaskId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", "smithy.api#required" => {}}))
    CreateResourceExplorerSetupOutput.type = Types::CreateResourceExplorerSetupOutput
    CreateViewOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    CreateViewOperationInput.add_member(:view_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewName, name: "ViewName", traits: {"smithy.api#required" => {}}))
    CreateViewOperationInput.add_member(:included_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedPropertyList, name: "IncludedProperties"))
    CreateViewOperationInput.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Scope", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    CreateViewOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "Filters"))
    CreateViewOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "write"}))
    CreateViewOperationInput.type = Types::CreateViewOperationInput
    CreateViewOperationOutput.add_member(:view, ::Smithy::Schema::Shapes::MemberShape.new(target: View, name: "View"))
    CreateViewOperationOutput.type = Types::CreateViewOperationOutput
    DeleteIndexOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteIndexOperationInput.type = Types::DeleteIndexOperationInput
    DeleteIndexOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    DeleteIndexOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexState, name: "State"))
    DeleteIndexOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DeleteIndexOperationOutput.type = Types::DeleteIndexOperationOutput
    DeleteResourceExplorerSetupInput.add_member(:region_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "RegionList"))
    DeleteResourceExplorerSetupInput.add_member(:delete_in_all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "DeleteInAllRegions"))
    DeleteResourceExplorerSetupInput.type = Types::DeleteResourceExplorerSetupInput
    DeleteResourceExplorerSetupOutput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TaskId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", "smithy.api#required" => {}}))
    DeleteResourceExplorerSetupOutput.type = Types::DeleteResourceExplorerSetupOutput
    DeleteViewOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    DeleteViewOperationInput.type = Types::DeleteViewOperationInput
    DeleteViewOperationOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn"))
    DeleteViewOperationOutput.type = Types::DeleteViewOperationOutput
    ErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Code"))
    ErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ErrorDetails.type = Types::ErrorDetails
    GetAccountLevelServiceConfigurationOutput.add_member(:org_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgConfiguration, name: "OrgConfiguration"))
    GetAccountLevelServiceConfigurationOutput.type = Types::GetAccountLevelServiceConfigurationOutput
    GetDefaultViewOperationOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn"))
    GetDefaultViewOperationOutput.type = Types::GetDefaultViewOperationOutput
    GetIndexOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    GetIndexOperationOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, name: "Type"))
    GetIndexOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexState, name: "State"))
    GetIndexOperationOutput.add_member(:replicating_from, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "ReplicatingFrom"))
    GetIndexOperationOutput.add_member(:replicating_to, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "ReplicatingTo"))
    GetIndexOperationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetIndexOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetIndexOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetIndexOperationOutput.type = Types::GetIndexOperationOutput
    GetManagedViewInput.add_member(:managed_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagedViewArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    GetManagedViewInput.type = Types::GetManagedViewInput
    GetManagedViewOutput.add_member(:managed_view, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedView, name: "ManagedView"))
    GetManagedViewOutput.type = Types::GetManagedViewOutput
    GetResourceExplorerSetupInput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TaskId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", "smithy.api#required" => {}}))
    GetResourceExplorerSetupInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    GetResourceExplorerSetupInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    GetResourceExplorerSetupInput.type = Types::GetResourceExplorerSetupInput
    GetResourceExplorerSetupOutput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatusList, name: "Regions"))
    GetResourceExplorerSetupOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    GetResourceExplorerSetupOutput.type = Types::GetResourceExplorerSetupOutput
    GetServiceIndexOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    GetServiceIndexOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, name: "Type"))
    GetServiceIndexOutput.type = Types::GetServiceIndexOutput
    GetServiceViewInput.add_member(:service_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceViewArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    GetServiceViewInput.type = Types::GetServiceViewInput
    GetServiceViewOutput.add_member(:view, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceView, name: "View", traits: {"smithy.api#required" => {}}))
    GetServiceViewOutput.type = Types::GetServiceViewOutput
    GetViewOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    GetViewOperationInput.type = Types::GetViewOperationInput
    GetViewOperationOutput.add_member(:view, ::Smithy::Schema::Shapes::MemberShape.new(target: View, name: "View", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetViewOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetViewOperationOutput.type = Types::GetViewOperationOutput
    IncludedProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    IncludedProperty.type = Types::IncludedProperty
    IncludedPropertyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedProperty, name: "member"))
    Index.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region"))
    Index.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    Index.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, name: "Type"))
    Index.type = Types::Index
    IndexList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Index, name: "member"))
    IndexStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "Status"))
    IndexStatus.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: Index, name: "Index"))
    IndexStatus.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "ErrorDetails"))
    IndexStatus.type = Types::IndexStatus
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListIndexesForMembersInput.add_member(:account_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    ListIndexesForMembersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}}))
    ListIndexesForMembersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListIndexesForMembersInput.type = Types::ListIndexesForMembersInput
    ListIndexesForMembersOutput.add_member(:indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberIndexList, name: "Indexes"))
    ListIndexesForMembersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListIndexesForMembersOutput.type = Types::ListIndexesForMembersOutput
    ListIndexesOperationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, name: "Type"))
    ListIndexesOperationInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}}))
    ListIndexesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListIndexesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListIndexesOperationInput.type = Types::ListIndexesOperationInput
    ListIndexesOperationOutput.add_member(:indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexList, name: "Indexes"))
    ListIndexesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListIndexesOperationOutput.type = Types::ListIndexesOperationOutput
    ListManagedViewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListManagedViewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListManagedViewsInput.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServicePrincipal", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    ListManagedViewsInput.type = Types::ListManagedViewsInput
    ListManagedViewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListManagedViewsOutput.add_member(:managed_views, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedViewArnList, name: "ManagedViews"))
    ListManagedViewsOutput.type = Types::ListManagedViewsOutput
    ListResourcesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "Filters"))
    ListResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListResourcesInput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}}))
    ListResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListResourcesInput.type = Types::ListResourcesInput
    ListResourcesOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "Resources"))
    ListResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListResourcesOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}}))
    ListResourcesOutput.type = Types::ListResourcesOutput
    ListServiceIndexesInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "Regions", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}}))
    ListServiceIndexesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListServiceIndexesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListServiceIndexesInput.type = Types::ListServiceIndexesInput
    ListServiceIndexesOutput.add_member(:indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexList, name: "Indexes"))
    ListServiceIndexesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListServiceIndexesOutput.type = Types::ListServiceIndexesOutput
    ListServiceViewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListServiceViewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListServiceViewsInput.type = Types::ListServiceViewsInput
    ListServiceViewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListServiceViewsOutput.add_member(:service_views, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceViewArnList, name: "ServiceViews"))
    ListServiceViewsOutput.type = Types::ListServiceViewsOutput
    ListStreamingAccessForServicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListStreamingAccessForServicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListStreamingAccessForServicesInput.type = Types::ListStreamingAccessForServicesInput
    ListStreamingAccessForServicesOutput.add_member(:streaming_access_for_services, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingAccessDetailsList, name: "StreamingAccessForServices", traits: {"smithy.api#required" => {}}))
    ListStreamingAccessForServicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListStreamingAccessForServicesOutput.type = Types::ListStreamingAccessForServicesOutput
    ListSupportedResourceTypesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListSupportedResourceTypesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListSupportedResourceTypesOperationInput.type = Types::ListSupportedResourceTypesOperationInput
    ListSupportedResourceTypesOperationOutput.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "ResourceTypes"))
    ListSupportedResourceTypesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListSupportedResourceTypesOperationOutput.type = Types::ListSupportedResourceTypesOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListViewsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListViewsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListViewsOperationInput.type = Types::ListViewsOperationInput
    ListViewsOperationOutput.add_member(:views, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewArnList, name: "Views"))
    ListViewsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListViewsOperationOutput.type = Types::ListViewsOperationOutput
    ManagedView.add_member(:managed_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagedViewArn"))
    ManagedView.add_member(:managed_view_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagedViewName"))
    ManagedView.add_member(:trusted_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TrustedService"))
    ManagedView.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ManagedView.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Owner"))
    ManagedView.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Scope"))
    ManagedView.add_member(:included_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedPropertyList, name: "IncludedProperties"))
    ManagedView.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "Filters"))
    ManagedView.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourcePolicy"))
    ManagedView.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Version"))
    ManagedView.type = Types::ManagedView
    ManagedViewArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    MemberIndex.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AccountId"))
    MemberIndex.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region"))
    MemberIndex.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    MemberIndex.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, name: "Type"))
    MemberIndex.type = Types::MemberIndex
    MemberIndexList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberIndex, name: "member"))
    OrgConfiguration.add_member(:aws_service_access_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSServiceAccessStatus, name: "AWSServiceAccessStatus", traits: {"smithy.api#required" => {}}))
    OrgConfiguration.add_member(:service_linked_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceLinkedRole"))
    OrgConfiguration.type = Types::OrgConfiguration
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#pattern" => "^[a-z-]+-[a-z]+-[0-9]$"}))
    RegionStatus.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region", traits: {"smithy.api#pattern" => "^[a-z-]+-[a-z]+-[0-9]$"}))
    RegionStatus.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "Index"))
    RegionStatus.add_member(:view, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewStatus, name: "View"))
    RegionStatus.type = Types::RegionStatus
    RegionStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatus, name: "member"))
    Resource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    Resource.add_member(:owning_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OwningAccountId"))
    Resource.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region"))
    Resource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType"))
    Resource.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service"))
    Resource.add_member(:cfn_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CfnResourceType"))
    Resource.add_member(:last_reported_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastReportedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Resource.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePropertyList, name: "Properties"))
    Resource.type = Types::Resource
    ResourceCount.add_member(:total_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "TotalResources"))
    ResourceCount.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Complete"))
    ResourceCount.type = Types::ResourceCount
    ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    ResourceProperty.add_member(:last_reported_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastReportedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ResourceProperty.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "Data"))
    ResourceProperty.type = Types::ResourceProperty
    ResourcePropertyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceProperty, name: "member"))
    ResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedResourceType, name: "member"))
    SearchFilter.add_member(:filter_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FilterString", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#required" => {}}))
    SearchFilter.type = Types::SearchFilter
    SearchOperationInput.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryString, name: "QueryString", traits: {"smithy.api#required" => {}}))
    SearchOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    SearchOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}}))
    SearchOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    SearchOperationInput.type = Types::SearchOperationInput
    SearchOperationOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "Resources"))
    SearchOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    SearchOperationOutput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}}))
    SearchOperationOutput.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "Count"))
    SearchOperationOutput.type = Types::SearchOperationOutput
    ServiceLinkedRecorderInfo.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServicePrincipal"))
    ServiceLinkedRecorderInfo.add_member(:recorder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RecorderName"))
    ServiceLinkedRecorderInfo.add_member(:recorder_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderType, name: "RecorderType"))
    ServiceLinkedRecorderInfo.type = Types::ServiceLinkedRecorderInfo
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceView.add_member(:service_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceViewArn", traits: {"smithy.api#required" => {}}))
    ServiceView.add_member(:service_view_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceViewName, name: "ServiceViewName"))
    ServiceView.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "Filters"))
    ServiceView.add_member(:included_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedPropertyList, name: "IncludedProperties"))
    ServiceView.add_member(:streaming_access_for_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StreamingAccessForService"))
    ServiceView.add_member(:scope_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ScopeType"))
    ServiceView.add_member(:service_linked_recorder, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceLinkedRecorderInfo, name: "ServiceLinkedRecorder"))
    ServiceView.type = Types::ServiceView
    ServiceViewArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    StreamingAccessDetails.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServicePrincipal", traits: {"smithy.api#required" => {}}))
    StreamingAccessDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StreamingAccessDetails.type = Types::StreamingAccessDetails
    StreamingAccessDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingAccessDetails, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SupportedResourceType.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Service"))
    SupportedResourceType.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceType"))
    SupportedResourceType.add_member(:cfn_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: CFNResourceTypeList, name: "CFNResourceTypes"))
    SupportedResourceType.type = Types::SupportedResourceType
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateIndexTypeOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateIndexTypeOperationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, name: "Type", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    UpdateIndexTypeOperationInput.type = Types::UpdateIndexTypeOperationInput
    UpdateIndexTypeOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    UpdateIndexTypeOperationOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexType, name: "Type"))
    UpdateIndexTypeOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexState, name: "State"))
    UpdateIndexTypeOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateIndexTypeOperationOutput.type = Types::UpdateIndexTypeOperationOutput
    UpdateViewOperationInput.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#required" => {}}))
    UpdateViewOperationInput.add_member(:included_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedPropertyList, name: "IncludedProperties"))
    UpdateViewOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "Filters"))
    UpdateViewOperationInput.type = Types::UpdateViewOperationInput
    UpdateViewOperationOutput.add_member(:view, ::Smithy::Schema::Shapes::MemberShape.new(target: View, name: "View"))
    UpdateViewOperationOutput.type = Types::UpdateViewOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "FieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:validation_issue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ValidationIssue", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    View.add_member(:view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ViewArn"))
    View.add_member(:view_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewName, name: "ViewName"))
    View.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Owner"))
    View.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    View.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Scope"))
    View.add_member(:included_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedPropertyList, name: "IncludedProperties"))
    View.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilter, name: "Filters"))
    View.type = Types::View
    ViewArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ViewList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: View, name: "member"))
    ViewStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "Status"))
    ViewStatus.add_member(:view, ::Smithy::Schema::Shapes::MemberShape.new(target: View, name: "View"))
    ViewStatus.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "ErrorDetails"))
    ViewStatus.type = Types::ViewStatus

    ResourceExplorer = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resourceexplorer2#ResourceExplorer"
      service.name = "ResourceExplorer"
      service.version = "2022-07-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Resource Explorer 2", "endpointPrefix" => "resource-explorer-2", "arnNamespace" => "resource-explorer-2"}, "aws.auth#sigv4" => {"name" => "resource-explorer-2"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["authorization", "content-type", "x-amz-content-sha256", "x-amz-date", "x-amz-user-agent", "x-amz-source-arn", "x-amz-source-account"]}, "smithy.api#title" => "AWS Resource Explorer", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://resource-explorer-2-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://resource-explorer-2-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://resource-explorer-2.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://resource-explorer-2.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_default_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#AssociateDefaultView"
        operation.name = "AssociateDefaultView"
        operation.input = AssociateDefaultViewOperationInput
        operation.output = AssociateDefaultViewOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/AssociateDefaultView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_get_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#BatchGetView"
        operation.name = "BatchGetView"
        operation.input = BatchGetViewOperationInput
        operation.output = BatchGetViewOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = CreateIndexOperationInput
        operation.output = CreateIndexOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateIndex"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource_explorer_setup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#CreateResourceExplorerSetup"
        operation.name = "CreateResourceExplorerSetup"
        operation.input = CreateResourceExplorerSetupInput
        operation.output = CreateResourceExplorerSetupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateResourceExplorerSetup"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#CreateView"
        operation.name = "CreateView"
        operation.input = CreateViewOperationInput
        operation.output = CreateViewOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateView"}}
      end)
      service.add_operation(:delete_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = DeleteIndexOperationInput
        operation.output = DeleteIndexOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteIndex"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_explorer_setup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DeleteResourceExplorerSetup"
        operation.name = "DeleteResourceExplorerSetup"
        operation.input = DeleteResourceExplorerSetupInput
        operation.output = DeleteResourceExplorerSetupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteResourceExplorerSetup"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DeleteView"
        operation.name = "DeleteView"
        operation.input = DeleteViewOperationInput
        operation.output = DeleteViewOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_default_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#DisassociateDefaultView"
        operation.name = "DisassociateDefaultView"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DisassociateDefaultView"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_account_level_service_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetAccountLevelServiceConfiguration"
        operation.name = "GetAccountLevelServiceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetAccountLevelServiceConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetAccountLevelServiceConfiguration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_default_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetDefaultView"
        operation.name = "GetDefaultView"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetDefaultViewOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetDefaultView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetIndex"
        operation.name = "GetIndex"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetIndexOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetIndex"}}
      end)
      service.add_operation(:get_managed_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetManagedView"
        operation.name = "GetManagedView"
        operation.input = GetManagedViewInput
        operation.output = GetManagedViewOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetManagedView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_explorer_setup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetResourceExplorerSetup"
        operation.name = "GetResourceExplorerSetup"
        operation.input = GetResourceExplorerSetupInput
        operation.output = GetResourceExplorerSetupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetResourceExplorerSetup"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetResourceExplorerSetup.new
      end)
      service.add_operation(:get_service_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetServiceIndex"
        operation.name = "GetServiceIndex"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetServiceIndexOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetServiceIndex"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetServiceView"
        operation.name = "GetServiceView"
        operation.input = GetServiceViewInput
        operation.output = GetServiceViewOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetServiceView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#GetView"
        operation.name = "GetView"
        operation.input = GetViewOperationInput
        operation.output = GetViewOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetView"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_indexes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListIndexes"
        operation.name = "ListIndexes"
        operation.input = ListIndexesOperationInput
        operation.output = ListIndexesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListIndexes"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndexes.new
      end)
      service.add_operation(:list_indexes_for_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListIndexesForMembers"
        operation.name = "ListIndexesForMembers"
        operation.input = ListIndexesForMembersInput
        operation.output = ListIndexesForMembersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListIndexesForMembers"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndexesForMembers.new
      end)
      service.add_operation(:list_managed_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListManagedViews"
        operation.name = "ListManagedViews"
        operation.input = ListManagedViewsInput
        operation.output = ListManagedViewsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListManagedViews"}}
        operation[:paginator] = Paginators::ListManagedViews.new
      end)
      service.add_operation(:list_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListResources"
        operation.name = "ListResources"
        operation.input = ListResourcesInput
        operation.output = ListResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListResources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:list_service_indexes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListServiceIndexes"
        operation.name = "ListServiceIndexes"
        operation.input = ListServiceIndexesInput
        operation.output = ListServiceIndexesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListServiceIndexes"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceIndexes.new
      end)
      service.add_operation(:list_service_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListServiceViews"
        operation.name = "ListServiceViews"
        operation.input = ListServiceViewsInput
        operation.output = ListServiceViewsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListServiceViews"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceViews.new
      end)
      service.add_operation(:list_streaming_access_for_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListStreamingAccessForServices"
        operation.name = "ListStreamingAccessForServices"
        operation.input = ListStreamingAccessForServicesInput
        operation.output = ListStreamingAccessForServicesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListStreamingAccessForServices"}}
        operation[:paginator] = Paginators::ListStreamingAccessForServices.new
      end)
      service.add_operation(:list_supported_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListSupportedResourceTypes"
        operation.name = "ListSupportedResourceTypes"
        operation.input = ListSupportedResourceTypesOperationInput
        operation.output = ListSupportedResourceTypesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListSupportedResourceTypes"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSupportedResourceTypes.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceOperationInput
        operation.output = ListTagsForResourceOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#ListViews"
        operation.name = "ListViews"
        operation.input = ListViewsOperationInput
        operation.output = ListViewsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListViews"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListViews.new
      end)
      service.add_operation(:search, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#Search"
        operation.name = "Search"
        operation.input = SearchOperationInput
        operation.output = SearchOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/Search"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::Search.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceOperationInput
        operation.output = TagResourceOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceOperationInput
        operation.output = UntagResourceOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:update_index_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UpdateIndexType"
        operation.name = "UpdateIndexType"
        operation.input = UpdateIndexTypeOperationInput
        operation.output = UpdateIndexTypeOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIndexType"}}
      end)
      service.add_operation(:update_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourceexplorer2#UpdateView"
        operation.name = "UpdateView"
        operation.input = UpdateViewOperationInput
        operation.output = UpdateViewOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
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
