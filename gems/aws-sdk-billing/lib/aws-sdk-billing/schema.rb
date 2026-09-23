# frozen_string_literal: true

# This is generated code!

module Aws::Billing
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    ActiveTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ActiveTimeRange", name: "ActiveTimeRange")
    AssociateSourceViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#AssociateSourceViewsRequest", name: "AssociateSourceViewsRequest")
    AssociateSourceViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#AssociateSourceViewsResponse", name: "AssociateSourceViewsResponse")
    BillingViewArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BillingViewArn", name: "BillingViewArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z-]*:(billing)::[0-9]{12}:billingview/[a-zA-Z0-9/:_\\+=\\.\\-@]{0,75}[a-zA-Z0-9]$"})
    BillingViewArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewArnList", name: "BillingViewArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BillingViewDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BillingViewDescription", name: "BillingViewDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([ a-zA-Z0-9_\\+=\\.\\-@]+)?$", "smithy.api#sensitive" => {}})
    BillingViewElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewElement", name: "BillingViewElement")
    BillingViewHealthStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewHealthStatus", name: "BillingViewHealthStatus")
    BillingViewHealthStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewHealthStatusException", name: "BillingViewHealthStatusException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BillingViewList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewList", name: "BillingViewList")
    BillingViewListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#BillingViewListElement", name: "BillingViewListElement")
    BillingViewName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#BillingViewName", name: "BillingViewName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    BillingViewSourceViewsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewSourceViewsList", name: "BillingViewSourceViewsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BillingViewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingViewStatus", name: "BillingViewStatus")
    BillingViewStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingViewStatusReason", name: "BillingViewStatusReason")
    BillingViewStatusReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewStatusReasons", name: "BillingViewStatusReasons")
    BillingViewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#BillingViewType", name: "BillingViewType")
    BillingViewTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#BillingViewTypeList", name: "BillingViewTypeList")
    BillingViewsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.billing#BillingViewsMaxResults", name: "BillingViewsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ClientToken", name: "ClientToken", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingConflict", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#CreateBillingViewRequest", name: "CreateBillingViewRequest")
    CreateBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#CreateBillingViewResponse", name: "CreateBillingViewResponse")
    DeleteBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DeleteBillingViewRequest", name: "DeleteBillingViewRequest")
    DeleteBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DeleteBillingViewResponse", name: "DeleteBillingViewResponse")
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#Dimension", name: "Dimension")
    DimensionValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DimensionValues", name: "DimensionValues")
    DisassociateSourceViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DisassociateSourceViewsRequest", name: "DisassociateSourceViewsRequest")
    DisassociateSourceViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#DisassociateSourceViewsResponse", name: "DisassociateSourceViewsResponse")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"max" => 1024}})
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#Expression", name: "Expression")
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#FieldName", name: "FieldName", traits: {"smithy.api#length" => {"max" => 100}})
    GetBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetBillingViewRequest", name: "GetBillingViewRequest")
    GetBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetBillingViewResponse", name: "GetBillingViewResponse")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#InternalServerException", name: "InternalServerException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingInternalServer", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListBillingViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBillingViewsRequest", name: "ListBillingViewsRequest")
    ListBillingViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListBillingViewsResponse", name: "ListBillingViewsResponse")
    ListSourceViewsForBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListSourceViewsForBillingViewRequest", name: "ListSourceViewsForBillingViewRequest")
    ListSourceViewsForBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListSourceViewsForBillingViewResponse", name: "ListSourceViewsForBillingViewResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#PageToken", name: "PageToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2047}})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#PolicyDocument", name: "PolicyDocument")
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#QuotaCode", name: "QuotaCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z-]*:(billing)::[0-9]{12}:[a-zA-Z0-9/:_\\+=\\.\\@-]{0,70}[a-zA-Z0-9]$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ResourceTagKeyList", name: "ResourceTagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ResourceTagList", name: "ResourceTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#ServiceCode", name: "ServiceCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#TagResourceResponse", name: "TagResourceResponse")
    TagValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#TagValues", name: "TagValues")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingThrottling", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#TimeRange", name: "TimeRange")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UpdateBillingViewRequest", name: "UpdateBillingViewRequest")
    UpdateBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#UpdateBillingViewResponse", name: "UpdateBillingViewResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "BillingValidation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.billing#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.billing#ValidationExceptionReason", name: "ValidationExceptionReason")
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.billing#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.billing#Values", name: "Values", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActiveTimeRange.add_member(:active_after_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "activeAfterInclusive", traits: {"smithy.api#required" => {}}))
    ActiveTimeRange.add_member(:active_before_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "activeBeforeInclusive", traits: {"smithy.api#required" => {}}))
    ActiveTimeRange.type = Types::ActiveTimeRange
    AssociateSourceViewsRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AssociateSourceViewsRequest.add_member(:source_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSourceViewsList, name: "sourceViews", traits: {"smithy.api#required" => {}}))
    AssociateSourceViewsRequest.type = Types::AssociateSourceViewsRequest
    AssociateSourceViewsResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AssociateSourceViewsResponse.type = Types::AssociateSourceViewsResponse
    BillingViewArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "member"))
    BillingViewElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn"))
    BillingViewElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewName, name: "name"))
    BillingViewElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewDescription, name: "description"))
    BillingViewElement.add_member(:billing_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewType, name: "billingViewType"))
    BillingViewElement.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId"))
    BillingViewElement.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "sourceAccountId"))
    BillingViewElement.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "dataFilterExpression"))
    BillingViewElement.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    BillingViewElement.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    BillingViewElement.add_member(:derived_view_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "derivedViewCount"))
    BillingViewElement.add_member(:source_view_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sourceViewCount"))
    BillingViewElement.add_member(:view_definition_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "viewDefinitionLastUpdatedAt"))
    BillingViewElement.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewHealthStatus, name: "healthStatus"))
    BillingViewElement.type = Types::BillingViewElement
    BillingViewHealthStatus.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewStatus, name: "statusCode"))
    BillingViewHealthStatus.add_member(:status_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewStatusReasons, name: "statusReasons"))
    BillingViewHealthStatus.type = Types::BillingViewHealthStatus
    BillingViewHealthStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    BillingViewHealthStatusException.type = Types::BillingViewHealthStatusException
    BillingViewList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewListElement, name: "member"))
    BillingViewListElement.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn"))
    BillingViewListElement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewName, name: "name"))
    BillingViewListElement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewDescription, name: "description"))
    BillingViewListElement.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId"))
    BillingViewListElement.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "sourceAccountId"))
    BillingViewListElement.add_member(:billing_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewType, name: "billingViewType"))
    BillingViewListElement.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewHealthStatus, name: "healthStatus"))
    BillingViewListElement.type = Types::BillingViewListElement
    BillingViewSourceViewsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "member"))
    BillingViewStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    BillingViewStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    BillingViewStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    BillingViewStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    BillingViewStatusReason.add_member(:source_view_unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_UNHEALTHY", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_UNHEALTHY"}))
    BillingViewStatusReason.add_member(:source_view_updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_UPDATING", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_UPDATING"}))
    BillingViewStatusReason.add_member(:source_view_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_ACCESS_DENIED"}))
    BillingViewStatusReason.add_member(:source_view_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_NOT_FOUND", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_NOT_FOUND"}))
    BillingViewStatusReason.add_member(:cyclic_dependency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CYCLIC_DEPENDENCY", traits: {"smithy.api#enumValue" => "CYCLIC_DEPENDENCY"}))
    BillingViewStatusReason.add_member(:source_view_depth_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_VIEW_DEPTH_EXCEEDED", traits: {"smithy.api#enumValue" => "SOURCE_VIEW_DEPTH_EXCEEDED"}))
    BillingViewStatusReason.add_member(:aggregate_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGGREGATE_SOURCE", traits: {"smithy.api#enumValue" => "AGGREGATE_SOURCE"}))
    BillingViewStatusReason.add_member(:view_owner_not_management_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIEW_OWNER_NOT_MANAGEMENT_ACCOUNT", traits: {"smithy.api#enumValue" => "VIEW_OWNER_NOT_MANAGEMENT_ACCOUNT"}))
    BillingViewStatusReasons.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewStatusReason, name: "member"))
    BillingViewType.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    BillingViewType.add_member(:billing_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BILLING_GROUP", traits: {"smithy.api#enumValue" => "BILLING_GROUP"}))
    BillingViewType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    BillingViewTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewType, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateBillingViewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateBillingViewRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewDescription, name: "description"))
    CreateBillingViewRequest.add_member(:source_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSourceViewsList, name: "sourceViews", traits: {"smithy.api#required" => {}}))
    CreateBillingViewRequest.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "dataFilterExpression"))
    CreateBillingViewRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateBillingViewRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    CreateBillingViewRequest.type = Types::CreateBillingViewRequest
    CreateBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateBillingViewResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    CreateBillingViewResponse.type = Types::CreateBillingViewResponse
    DeleteBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteBillingViewRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "force", traits: {"smithy.api#default" => false}))
    DeleteBillingViewRequest.type = Types::DeleteBillingViewRequest
    DeleteBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteBillingViewResponse.type = Types::DeleteBillingViewResponse
    Dimension.add_member(:linked_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINKED_ACCOUNT", traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT"}))
    DimensionValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "key", traits: {"smithy.api#required" => {}}))
    DimensionValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "values", traits: {"smithy.api#required" => {}}))
    DimensionValues.type = Types::DimensionValues
    DisassociateSourceViewsRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DisassociateSourceViewsRequest.add_member(:source_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSourceViewsList, name: "sourceViews", traits: {"smithy.api#required" => {}}))
    DisassociateSourceViewsRequest.type = Types::DisassociateSourceViewsRequest
    DisassociateSourceViewsResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DisassociateSourceViewsResponse.type = Types::DisassociateSourceViewsResponse
    Expression.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValues, name: "dimensions"))
    Expression.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValues, name: "tags"))
    Expression.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "timeRange"))
    Expression.type = Types::Expression
    GetBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetBillingViewRequest.type = Types::GetBillingViewRequest
    GetBillingViewResponse.add_member(:billing_view, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewElement, name: "billingView", traits: {"smithy.api#required" => {}}))
    GetBillingViewResponse.type = Types::GetBillingViewResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListBillingViewsRequest.add_member(:active_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveTimeRange, name: "activeTimeRange"))
    ListBillingViewsRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArnList, name: "arns"))
    ListBillingViewsRequest.add_member(:billing_view_types, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewTypeList, name: "billingViewTypes"))
    ListBillingViewsRequest.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId"))
    ListBillingViewsRequest.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "sourceAccountId"))
    ListBillingViewsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewsMaxResults, name: "maxResults"))
    ListBillingViewsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBillingViewsRequest.type = Types::ListBillingViewsRequest
    ListBillingViewsResponse.add_member(:billing_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewList, name: "billingViews", traits: {"smithy.api#required" => {}}))
    ListBillingViewsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListBillingViewsResponse.type = Types::ListBillingViewsResponse
    ListSourceViewsForBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ListSourceViewsForBillingViewRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewsMaxResults, name: "maxResults"))
    ListSourceViewsForBillingViewRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListSourceViewsForBillingViewRequest.type = Types::ListSourceViewsForBillingViewRequest
    ListSourceViewsForBillingViewResponse.add_member(:source_views, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewSourceViewsList, name: "sourceViews", traits: {"smithy.api#required" => {}}))
    ListSourceViewsForBillingViewResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "nextToken"))
    ListSourceViewsForBillingViewResponse.type = Types::ListSourceViewsForBillingViewResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagValue, name: "value"))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "member"))
    ResourceTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QuotaCode, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    TagValues.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "values", traits: {"smithy.api#required" => {}}))
    TagValues.type = Types::TagValues
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:begin_date_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "beginDateInclusive"))
    TimeRange.add_member(:end_date_inclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endDateInclusive"))
    TimeRange.type = Types::TimeRange
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKeyList, name: "resourceTagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateBillingViewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewName, name: "name"))
    UpdateBillingViewRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewDescription, name: "description"))
    UpdateBillingViewRequest.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "dataFilterExpression"))
    UpdateBillingViewRequest.type = Types::UpdateBillingViewRequest
    UpdateBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateBillingViewResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    UpdateBillingViewResponse.type = Types::UpdateBillingViewResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    Values.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "member"))

    AWSBilling = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.billing#AWSBilling"
      service.name = "AWSBilling"
      service.version = "2023-09-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Billing", "endpointPrefix" => "billing", "arnNamespace" => "billing", "cloudTrailEventSource" => "billing.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "billing"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix", "partitionEndpointSpecialCases" => {"aws" => [{"endpoint" => "https://billing.us-east-1.api.aws", "region" => "us-east-1", "dualStack" => true}, {"endpoint" => "https://billing.us-east-1.api.aws", "region" => "us-east-1", "dualStack" => false}]}}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Billing"}
      service.add_operation(:associate_source_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#AssociateSourceViews"
        operation.name = "AssociateSourceViews"
        operation.input = AssociateSourceViewsRequest
        operation.output = AssociateSourceViewsResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#CreateBillingView"
        operation.name = "CreateBillingView"
        operation.input = CreateBillingViewRequest
        operation.output = CreateBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#DeleteBillingView"
        operation.name = "DeleteBillingView"
        operation.input = DeleteBillingViewRequest
        operation.output = DeleteBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_source_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#DisassociateSourceViews"
        operation.name = "DisassociateSourceViews"
        operation.input = DisassociateSourceViewsRequest
        operation.output = DisassociateSourceViewsResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetBillingView"
        operation.name = "GetBillingView"
        operation.input = GetBillingViewRequest
        operation.output = GetBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_billing_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListBillingViews"
        operation.name = "ListBillingViews"
        operation.input = ListBillingViewsRequest
        operation.output = ListBillingViewsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListBillingViewsSuccess", "params" => {"activeTimeRange" => {"activeAfterInclusive" => 1719792000, "activeBeforeInclusive" => 1722470399.999}}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListBillingViews.new
      end)
      service.add_operation(:list_source_views_for_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListSourceViewsForBillingView"
        operation.name = "ListSourceViewsForBillingView"
        operation.input = ListSourceViewsForBillingViewRequest
        operation.output = ListSourceViewsForBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceViewsForBillingView.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#UpdateBillingView"
        operation.name = "UpdateBillingView"
        operation.input = UpdateBillingViewRequest
        operation.output = UpdateBillingViewResponse
        operation.errors << AccessDeniedException
        operation.errors << BillingViewHealthStatusException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
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
