# frozen_string_literal: true

# This is generated code!

module Aws::Billing
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "BillingAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#AccountId', name: 'AccountId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    ActiveTimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ActiveTimeRange', name: 'ActiveTimeRange')
    BillingViewArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#BillingViewArn', name: 'BillingViewArn', traits: {"smithy.api#pattern" => "^arn:aws[a-z-]*:(billing)::[0-9]{12}:billingview/[a-zA-Z0-9/:_\\+=\\.\\-@]{0,59}[a-zA-Z0-9]$"})
    BillingViewArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billing#BillingViewArnList', name: 'BillingViewArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BillingViewDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#BillingViewDescription', name: 'BillingViewDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([ a-zA-Z0-9_\\+=\\.\\-@]+)?$", "smithy.api#sensitive" => {}})
    BillingViewElement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#BillingViewElement', name: 'BillingViewElement')
    BillingViewList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billing#BillingViewList', name: 'BillingViewList')
    BillingViewListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#BillingViewListElement', name: 'BillingViewListElement')
    BillingViewName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#BillingViewName', name: 'BillingViewName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[ a-zA-Z0-9_\\+=\\.\\-@]+$", "smithy.api#sensitive" => {}})
    BillingViewSourceViewsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billing#BillingViewSourceViewsList', name: 'BillingViewSourceViewsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    BillingViewType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.billing#BillingViewType', name: 'BillingViewType')
    BillingViewTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billing#BillingViewTypeList', name: 'BillingViewTypeList')
    BillingViewsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.billing#BillingViewsMaxResults', name: 'BillingViewsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#ClientToken', name: 'ClientToken', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ConflictException', name: 'ConflictException', traits: {"aws.protocols#awsQueryError" => {"code" => "BillingConflict", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#CreateBillingViewRequest', name: 'CreateBillingViewRequest')
    CreateBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#CreateBillingViewResponse', name: 'CreateBillingViewResponse')
    DeleteBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#DeleteBillingViewRequest', name: 'DeleteBillingViewRequest')
    DeleteBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#DeleteBillingViewResponse', name: 'DeleteBillingViewResponse')
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.billing#Dimension', name: 'Dimension')
    DimensionValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#DimensionValues', name: 'DimensionValues')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"max" => 1024}})
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#Expression', name: 'Expression')
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#FieldName', name: 'FieldName', traits: {"smithy.api#length" => {"max" => 100}})
    GetBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#GetBillingViewRequest', name: 'GetBillingViewRequest')
    GetBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#GetBillingViewResponse', name: 'GetBillingViewResponse')
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#InternalServerException', name: 'InternalServerException', traits: {"aws.protocols#awsQueryError" => {"code" => "BillingInternalServer", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListBillingViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ListBillingViewsRequest', name: 'ListBillingViewsRequest')
    ListBillingViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ListBillingViewsResponse', name: 'ListBillingViewsResponse')
    ListSourceViewsForBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ListSourceViewsForBillingViewRequest', name: 'ListSourceViewsForBillingViewRequest')
    ListSourceViewsForBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ListSourceViewsForBillingViewResponse', name: 'ListSourceViewsForBillingViewResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#PageToken', name: 'PageToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2047}})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#PolicyDocument', name: 'PolicyDocument')
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#QuotaCode', name: 'QuotaCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#pattern" => "^arn:aws[a-z-]*:(billing)::[0-9]{12}:[a-zA-Z0-9/:_\\+=\\.\\@-]{0,70}[a-zA-Z0-9]$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "BillingResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ResourceTag', name: 'ResourceTag')
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#ResourceTagKey', name: 'ResourceTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billing#ResourceTagKeyList', name: 'ResourceTagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billing#ResourceTagList', name: 'ResourceTagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#ResourceTagValue', name: 'ResourceTagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#ResourceType', name: 'ResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#ServiceCode', name: 'ServiceCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "BillingServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#TagResourceResponse', name: 'TagResourceResponse')
    TagValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#TagValues', name: 'TagValues')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "BillingThrottling", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateBillingViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#UpdateBillingViewRequest', name: 'UpdateBillingViewRequest')
    UpdateBillingViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#UpdateBillingViewResponse', name: 'UpdateBillingViewResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "BillingValidation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.billing#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billing#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.billing#ValidationExceptionReason', name: 'ValidationExceptionReason')
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.billing#Value', name: 'Value', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.billing#Values', name: 'Values', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActiveTimeRange.add_member(:active_after_inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'activeAfterInclusive', traits: {"smithy.api#required" => {}}))
    ActiveTimeRange.add_member(:active_before_inclusive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'activeBeforeInclusive', traits: {"smithy.api#required" => {}}))
    ActiveTimeRange.type = Types::ActiveTimeRange
    BillingViewArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn)
    BillingViewElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn'))
    BillingViewElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewName, location_name: 'name'))
    BillingViewElement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: 'description'))
    BillingViewElement.add_member(:billing_view_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewType, location_name: 'billingViewType'))
    BillingViewElement.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ownerAccountId'))
    BillingViewElement.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'dataFilterExpression'))
    BillingViewElement.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt'))
    BillingViewElement.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt'))
    BillingViewElement.type = Types::BillingViewElement
    BillingViewList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewListElement)
    BillingViewListElement.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn'))
    BillingViewListElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewName, location_name: 'name'))
    BillingViewListElement.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: 'description'))
    BillingViewListElement.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ownerAccountId'))
    BillingViewListElement.add_member(:billing_view_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewType, location_name: 'billingViewType'))
    BillingViewListElement.type = Types::BillingViewListElement
    BillingViewSourceViewsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn)
    BillingViewType.add_member(:primary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARY', traits: {"smithy.api#enumValue" => "PRIMARY"}))
    BillingViewType.add_member(:billing_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BILLING_GROUP', traits: {"smithy.api#enumValue" => "BILLING_GROUP"}))
    BillingViewType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    BillingViewTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewType)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateBillingViewRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateBillingViewRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: 'description'))
    CreateBillingViewRequest.add_member(:source_views, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, location_name: 'sourceViews', traits: {"smithy.api#required" => {}}))
    CreateBillingViewRequest.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'dataFilterExpression'))
    CreateBillingViewRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#httpHeader" => "X-Amzn-Client-Token", "smithy.api#idempotencyToken" => {}}))
    CreateBillingViewRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'resourceTags'))
    CreateBillingViewRequest.type = Types::CreateBillingViewRequest
    CreateBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateBillingViewResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt'))
    CreateBillingViewResponse.type = Types::CreateBillingViewResponse
    DeleteBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteBillingViewRequest.type = Types::DeleteBillingViewRequest
    DeleteBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeleteBillingViewResponse.type = Types::DeleteBillingViewResponse
    Dimension.add_member(:linked_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKED_ACCOUNT', traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT"}))
    DimensionValues.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'key', traits: {"smithy.api#required" => {}}))
    DimensionValues.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'values', traits: {"smithy.api#required" => {}}))
    DimensionValues.type = Types::DimensionValues
    Expression.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValues, location_name: 'dimensions'))
    Expression.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValues, location_name: 'tags'))
    Expression.type = Types::Expression
    GetBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetBillingViewRequest.type = Types::GetBillingViewRequest
    GetBillingViewResponse.add_member(:billing_view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewElement, location_name: 'billingView', traits: {"smithy.api#required" => {}}))
    GetBillingViewResponse.type = Types::GetBillingViewResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policy'))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListBillingViewsRequest.add_member(:active_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveTimeRange, location_name: 'activeTimeRange'))
    ListBillingViewsRequest.add_member(:arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArnList, location_name: 'arns'))
    ListBillingViewsRequest.add_member(:billing_view_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewTypeList, location_name: 'billingViewTypes'))
    ListBillingViewsRequest.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'ownerAccountId'))
    ListBillingViewsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewsMaxResults, location_name: 'maxResults'))
    ListBillingViewsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken'))
    ListBillingViewsRequest.type = Types::ListBillingViewsRequest
    ListBillingViewsResponse.add_member(:billing_views, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewList, location_name: 'billingViews', traits: {"smithy.api#required" => {}}))
    ListBillingViewsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken'))
    ListBillingViewsResponse.type = Types::ListBillingViewsResponse
    ListSourceViewsForBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListSourceViewsForBillingViewRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewsMaxResults, location_name: 'maxResults'))
    ListSourceViewsForBillingViewRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken'))
    ListSourceViewsForBillingViewRequest.type = Types::ListSourceViewsForBillingViewRequest
    ListSourceViewsForBillingViewResponse.add_member(:source_views, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, location_name: 'sourceViews', traits: {"smithy.api#required" => {}}))
    ListSourceViewsForBillingViewResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'nextToken'))
    ListSourceViewsForBillingViewResponse.type = Types::ListSourceViewsForBillingViewResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'resourceTags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: 'value'))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey)
    ResourceTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'resourceTags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagValues.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    TagValues.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'values', traits: {"smithy.api#required" => {}}))
    TagValues.type = Types::TagValues
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKeyList, location_name: 'resourceTagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBillingViewRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateBillingViewRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewName, location_name: 'name'))
    UpdateBillingViewRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: 'description'))
    UpdateBillingViewRequest.add_member(:data_filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'dataFilterExpression'))
    UpdateBillingViewRequest.type = Types::UpdateBillingViewRequest
    UpdateBillingViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdateBillingViewResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt'))
    UpdateBillingViewResponse.type = Types::UpdateBillingViewResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))
    Values.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value)

    AWSBilling = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.billing#AWSBilling"
      service.name = "AWSBilling"
      service.version = "2023-09-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Billing", "endpointPrefix" => "billing", "arnNamespace" => "billing", "cloudTrailEventSource" => "billing.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "billing"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix", "partitionEndpointSpecialCases" => {"aws" => [{"endpoint" => "https://billing.us-east-1.api.aws", "region" => "us-east-1", "dualStack" => true}, {"endpoint" => "https://billing.us-east-1.api.aws", "region" => "us-east-1", "dualStack" => false}]}}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Billing"}
      service.add_operation(:create_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#CreateBillingView"
        operation.name = "CreateBillingView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillingViewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBillingViewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#DeleteBillingView"
        operation.name = "DeleteBillingView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillingViewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBillingViewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetBillingView"
        operation.name = "GetBillingView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillingViewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBillingViewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_billing_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListBillingViews"
        operation.name = "ListBillingViews"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingViewsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBillingViewsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListBillingViewsSuccess", "params" => {"activeTimeRange" => {"activeAfterInclusive" => 1719792000, "activeBeforeInclusive" => 1722470399.999}}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListBillingViews.new
      end)
      service.add_operation(:list_source_views_for_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListSourceViewsForBillingView"
        operation.name = "ListSourceViewsForBillingView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceViewsForBillingViewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceViewsForBillingViewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceViewsForBillingView.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_billing_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.billing#UpdateBillingView"
        operation.name = "UpdateBillingView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingViewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBillingViewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
