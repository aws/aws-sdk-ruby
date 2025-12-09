# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Billing
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActiveTimeRange = Shapes::StructureShape.new(name: 'ActiveTimeRange')
    AssociateSourceViewsRequest = Shapes::StructureShape.new(name: 'AssociateSourceViewsRequest')
    AssociateSourceViewsResponse = Shapes::StructureShape.new(name: 'AssociateSourceViewsResponse')
    BillingViewArn = Shapes::StringShape.new(name: 'BillingViewArn')
    BillingViewArnList = Shapes::ListShape.new(name: 'BillingViewArnList')
    BillingViewDescription = Shapes::StringShape.new(name: 'BillingViewDescription')
    BillingViewElement = Shapes::StructureShape.new(name: 'BillingViewElement')
    BillingViewHealthStatus = Shapes::StructureShape.new(name: 'BillingViewHealthStatus')
    BillingViewHealthStatusException = Shapes::StructureShape.new(name: 'BillingViewHealthStatusException')
    BillingViewList = Shapes::ListShape.new(name: 'BillingViewList')
    BillingViewListElement = Shapes::StructureShape.new(name: 'BillingViewListElement')
    BillingViewName = Shapes::StringShape.new(name: 'BillingViewName')
    BillingViewSourceViewsList = Shapes::ListShape.new(name: 'BillingViewSourceViewsList')
    BillingViewStatus = Shapes::StringShape.new(name: 'BillingViewStatus')
    BillingViewStatusReason = Shapes::StringShape.new(name: 'BillingViewStatusReason')
    BillingViewStatusReasons = Shapes::ListShape.new(name: 'BillingViewStatusReasons')
    BillingViewType = Shapes::StringShape.new(name: 'BillingViewType')
    BillingViewTypeList = Shapes::ListShape.new(name: 'BillingViewTypeList')
    BillingViewsMaxResults = Shapes::IntegerShape.new(name: 'BillingViewsMaxResults')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateBillingViewRequest = Shapes::StructureShape.new(name: 'CreateBillingViewRequest')
    CreateBillingViewResponse = Shapes::StructureShape.new(name: 'CreateBillingViewResponse')
    DeleteBillingViewRequest = Shapes::StructureShape.new(name: 'DeleteBillingViewRequest')
    DeleteBillingViewResponse = Shapes::StructureShape.new(name: 'DeleteBillingViewResponse')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionValues = Shapes::StructureShape.new(name: 'DimensionValues')
    DisassociateSourceViewsRequest = Shapes::StructureShape.new(name: 'DisassociateSourceViewsRequest')
    DisassociateSourceViewsResponse = Shapes::StructureShape.new(name: 'DisassociateSourceViewsResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    GetBillingViewRequest = Shapes::StructureShape.new(name: 'GetBillingViewRequest')
    GetBillingViewResponse = Shapes::StructureShape.new(name: 'GetBillingViewResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListBillingViewsRequest = Shapes::StructureShape.new(name: 'ListBillingViewsRequest')
    ListBillingViewsResponse = Shapes::StructureShape.new(name: 'ListBillingViewsResponse')
    ListSourceViewsForBillingViewRequest = Shapes::StructureShape.new(name: 'ListSourceViewsForBillingViewRequest')
    ListSourceViewsForBillingViewResponse = Shapes::StructureShape.new(name: 'ListSourceViewsForBillingViewResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeyList = Shapes::ListShape.new(name: 'ResourceTagKeyList')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SearchOption = Shapes::StringShape.new(name: 'SearchOption')
    SearchValue = Shapes::StringShape.new(name: 'SearchValue')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StringSearch = Shapes::StructureShape.new(name: 'StringSearch')
    StringSearches = Shapes::ListShape.new(name: 'StringSearches')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValues = Shapes::StructureShape.new(name: 'TagValues')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBillingViewRequest = Shapes::StructureShape.new(name: 'UpdateBillingViewRequest')
    UpdateBillingViewResponse = Shapes::StructureShape.new(name: 'UpdateBillingViewResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActiveTimeRange.add_member(:active_after_inclusive, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "activeAfterInclusive"))
    ActiveTimeRange.add_member(:active_before_inclusive, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "activeBeforeInclusive"))
    ActiveTimeRange.struct_class = Types::ActiveTimeRange

    AssociateSourceViewsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    AssociateSourceViewsRequest.add_member(:source_views, Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, required: true, location_name: "sourceViews"))
    AssociateSourceViewsRequest.struct_class = Types::AssociateSourceViewsRequest

    AssociateSourceViewsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    AssociateSourceViewsResponse.struct_class = Types::AssociateSourceViewsResponse

    BillingViewArnList.member = Shapes::ShapeRef.new(shape: BillingViewArn)

    BillingViewElement.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "arn"))
    BillingViewElement.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, location_name: "name"))
    BillingViewElement.add_member(:description, Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: "description"))
    BillingViewElement.add_member(:billing_view_type, Shapes::ShapeRef.new(shape: BillingViewType, location_name: "billingViewType"))
    BillingViewElement.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    BillingViewElement.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountId"))
    BillingViewElement.add_member(:data_filter_expression, Shapes::ShapeRef.new(shape: Expression, location_name: "dataFilterExpression"))
    BillingViewElement.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    BillingViewElement.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    BillingViewElement.add_member(:derived_view_count, Shapes::ShapeRef.new(shape: Integer, location_name: "derivedViewCount"))
    BillingViewElement.add_member(:source_view_count, Shapes::ShapeRef.new(shape: Integer, location_name: "sourceViewCount"))
    BillingViewElement.add_member(:view_definition_last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "viewDefinitionLastUpdatedAt"))
    BillingViewElement.add_member(:health_status, Shapes::ShapeRef.new(shape: BillingViewHealthStatus, location_name: "healthStatus"))
    BillingViewElement.struct_class = Types::BillingViewElement

    BillingViewHealthStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: BillingViewStatus, location_name: "statusCode"))
    BillingViewHealthStatus.add_member(:status_reasons, Shapes::ShapeRef.new(shape: BillingViewStatusReasons, location_name: "statusReasons"))
    BillingViewHealthStatus.struct_class = Types::BillingViewHealthStatus

    BillingViewHealthStatusException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    BillingViewHealthStatusException.struct_class = Types::BillingViewHealthStatusException

    BillingViewList.member = Shapes::ShapeRef.new(shape: BillingViewListElement)

    BillingViewListElement.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "arn"))
    BillingViewListElement.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, location_name: "name"))
    BillingViewListElement.add_member(:description, Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: "description"))
    BillingViewListElement.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    BillingViewListElement.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountId"))
    BillingViewListElement.add_member(:billing_view_type, Shapes::ShapeRef.new(shape: BillingViewType, location_name: "billingViewType"))
    BillingViewListElement.add_member(:health_status, Shapes::ShapeRef.new(shape: BillingViewHealthStatus, location_name: "healthStatus"))
    BillingViewListElement.struct_class = Types::BillingViewListElement

    BillingViewSourceViewsList.member = Shapes::ShapeRef.new(shape: BillingViewArn)

    BillingViewStatusReasons.member = Shapes::ShapeRef.new(shape: BillingViewStatusReason)

    BillingViewTypeList.member = Shapes::ShapeRef.new(shape: BillingViewType)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateBillingViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, required: true, location_name: "name"))
    CreateBillingViewRequest.add_member(:description, Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: "description"))
    CreateBillingViewRequest.add_member(:source_views, Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, required: true, location_name: "sourceViews"))
    CreateBillingViewRequest.add_member(:data_filter_expression, Shapes::ShapeRef.new(shape: Expression, location_name: "dataFilterExpression"))
    CreateBillingViewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBillingViewRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    CreateBillingViewRequest.struct_class = Types::CreateBillingViewRequest

    CreateBillingViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    CreateBillingViewResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CreateBillingViewResponse.struct_class = Types::CreateBillingViewResponse

    DeleteBillingViewRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    DeleteBillingViewRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "force"))
    DeleteBillingViewRequest.struct_class = Types::DeleteBillingViewRequest

    DeleteBillingViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    DeleteBillingViewResponse.struct_class = Types::DeleteBillingViewResponse

    DimensionValues.add_member(:key, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "key"))
    DimensionValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "values"))
    DimensionValues.struct_class = Types::DimensionValues

    DisassociateSourceViewsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    DisassociateSourceViewsRequest.add_member(:source_views, Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, required: true, location_name: "sourceViews"))
    DisassociateSourceViewsRequest.struct_class = Types::DisassociateSourceViewsRequest

    DisassociateSourceViewsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    DisassociateSourceViewsResponse.struct_class = Types::DisassociateSourceViewsResponse

    Expression.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionValues, location_name: "dimensions"))
    Expression.add_member(:tags, Shapes::ShapeRef.new(shape: TagValues, location_name: "tags"))
    Expression.add_member(:time_range, Shapes::ShapeRef.new(shape: TimeRange, location_name: "timeRange"))
    Expression.struct_class = Types::Expression

    GetBillingViewRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    GetBillingViewRequest.struct_class = Types::GetBillingViewRequest

    GetBillingViewResponse.add_member(:billing_view, Shapes::ShapeRef.new(shape: BillingViewElement, required: true, location_name: "billingView"))
    GetBillingViewResponse.struct_class = Types::GetBillingViewResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListBillingViewsRequest.add_member(:active_time_range, Shapes::ShapeRef.new(shape: ActiveTimeRange, location_name: "activeTimeRange"))
    ListBillingViewsRequest.add_member(:arns, Shapes::ShapeRef.new(shape: BillingViewArnList, location_name: "arns"))
    ListBillingViewsRequest.add_member(:billing_view_types, Shapes::ShapeRef.new(shape: BillingViewTypeList, location_name: "billingViewTypes"))
    ListBillingViewsRequest.add_member(:names, Shapes::ShapeRef.new(shape: StringSearches, location_name: "names"))
    ListBillingViewsRequest.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    ListBillingViewsRequest.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountId"))
    ListBillingViewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BillingViewsMaxResults, location_name: "maxResults"))
    ListBillingViewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListBillingViewsRequest.struct_class = Types::ListBillingViewsRequest

    ListBillingViewsResponse.add_member(:billing_views, Shapes::ShapeRef.new(shape: BillingViewList, required: true, location_name: "billingViews"))
    ListBillingViewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListBillingViewsResponse.struct_class = Types::ListBillingViewsResponse

    ListSourceViewsForBillingViewRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    ListSourceViewsForBillingViewRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BillingViewsMaxResults, location_name: "maxResults"))
    ListSourceViewsForBillingViewRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListSourceViewsForBillingViewRequest.struct_class = Types::ListSourceViewsForBillingViewRequest

    ListSourceViewsForBillingViewResponse.add_member(:source_views, Shapes::ShapeRef.new(shape: BillingViewSourceViewsList, required: true, location_name: "sourceViews"))
    ListSourceViewsForBillingViewResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "nextToken"))
    ListSourceViewsForBillingViewResponse.struct_class = Types::ListSourceViewsForBillingViewResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: "value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagKeyList.member = Shapes::ShapeRef.new(shape: ResourceTagKey)

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StringSearch.add_member(:search_option, Shapes::ShapeRef.new(shape: SearchOption, required: true, location_name: "searchOption"))
    StringSearch.add_member(:search_value, Shapes::ShapeRef.new(shape: SearchValue, required: true, location_name: "searchValue"))
    StringSearch.struct_class = Types::StringSearch

    StringSearches.member = Shapes::ShapeRef.new(shape: StringSearch)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, required: true, location_name: "resourceTags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagValues.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    TagValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "values"))
    TagValues.struct_class = Types::TagValues

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeRange.add_member(:begin_date_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "beginDateInclusive"))
    TimeRange.add_member(:end_date_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endDateInclusive"))
    TimeRange.struct_class = Types::TimeRange

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:resource_tag_keys, Shapes::ShapeRef.new(shape: ResourceTagKeyList, required: true, location_name: "resourceTagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBillingViewRequest.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    UpdateBillingViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: BillingViewName, location_name: "name"))
    UpdateBillingViewRequest.add_member(:description, Shapes::ShapeRef.new(shape: BillingViewDescription, location_name: "description"))
    UpdateBillingViewRequest.add_member(:data_filter_expression, Shapes::ShapeRef.new(shape: Expression, location_name: "dataFilterExpression"))
    UpdateBillingViewRequest.struct_class = Types::UpdateBillingViewRequest

    UpdateBillingViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BillingViewArn, required: true, location_name: "arn"))
    UpdateBillingViewResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    UpdateBillingViewResponse.struct_class = Types::UpdateBillingViewResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    Values.member = Shapes::ShapeRef.new(shape: Value)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-07"

      api.metadata = {
        "apiVersion" => "2023-09-07",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "billing",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Billing",
        "serviceId" => "Billing",
        "signatureVersion" => "v4",
        "signingName" => "billing",
        "targetPrefix" => "AWSBilling",
        "uid" => "billing-2023-09-07",
      }

      api.add_operation(:associate_source_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSourceViews"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateSourceViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSourceViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BillingViewHealthStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: BillingViewHealthStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_source_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSourceViews"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSourceViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSourceViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BillingViewHealthStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_billing_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBillingViews"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBillingViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBillingViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_source_views_for_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSourceViewsForBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSourceViewsForBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSourceViewsForBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_billing_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBillingView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBillingViewRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBillingViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: BillingViewHealthStatusException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
