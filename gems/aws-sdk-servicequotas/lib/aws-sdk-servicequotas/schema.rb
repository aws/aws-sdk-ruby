# frozen_string_literal: true

# This is generated code!

module Aws::ServiceQuotas
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSServiceAccessNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#AWSServiceAccessNotEnabledException", name: "AWSServiceAccessNotEnabledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:*:.+:[0-9]{12}:.+$"})
    AppliedLevelEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicequotas#AppliedLevelEnum", name: "AppliedLevelEnum")
    AssociateServiceQuotaTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#AssociateServiceQuotaTemplateRequest", name: "AssociateServiceQuotaTemplateRequest")
    AssociateServiceQuotaTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#AssociateServiceQuotaTemplateResponse", name: "AssociateServiceQuotaTemplateResponse")
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#AwsRegion", name: "AwsRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]{1,128}$"})
    CreateSupportCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#CreateSupportCaseRequest", name: "CreateSupportCaseRequest")
    CreateSupportCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#CreateSupportCaseResponse", name: "CreateSupportCaseResponse")
    CustomerServiceEngagementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#CustomerServiceEngagementId", name: "CustomerServiceEngagementId")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicequotas#DateTime", name: "DateTime")
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#DeleteServiceQuotaIncreaseRequestFromTemplateRequest", name: "DeleteServiceQuotaIncreaseRequestFromTemplateRequest")
    DeleteServiceQuotaIncreaseRequestFromTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#DeleteServiceQuotaIncreaseRequestFromTemplateResponse", name: "DeleteServiceQuotaIncreaseRequestFromTemplateResponse")
    DependencyAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#DependencyAccessDeniedException", name: "DependencyAccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DisassociateServiceQuotaTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#DisassociateServiceQuotaTemplateRequest", name: "DisassociateServiceQuotaTemplateRequest")
    DisassociateServiceQuotaTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#DisassociateServiceQuotaTemplateResponse", name: "DisassociateServiceQuotaTemplateResponse")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicequotas#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#ErrorMessage", name: "ErrorMessage")
    ErrorReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ErrorReason", name: "ErrorReason")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#ExceptionMessage", name: "ExceptionMessage")
    GetAWSDefaultServiceQuotaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetAWSDefaultServiceQuotaRequest", name: "GetAWSDefaultServiceQuotaRequest")
    GetAWSDefaultServiceQuotaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetAWSDefaultServiceQuotaResponse", name: "GetAWSDefaultServiceQuotaResponse")
    GetAssociationForServiceQuotaTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetAssociationForServiceQuotaTemplateRequest", name: "GetAssociationForServiceQuotaTemplateRequest")
    GetAssociationForServiceQuotaTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetAssociationForServiceQuotaTemplateResponse", name: "GetAssociationForServiceQuotaTemplateResponse")
    GetRequestedServiceQuotaChangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetRequestedServiceQuotaChangeRequest", name: "GetRequestedServiceQuotaChangeRequest")
    GetRequestedServiceQuotaChangeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetRequestedServiceQuotaChangeResponse", name: "GetRequestedServiceQuotaChangeResponse")
    GetServiceQuotaIncreaseRequestFromTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetServiceQuotaIncreaseRequestFromTemplateRequest", name: "GetServiceQuotaIncreaseRequestFromTemplateRequest")
    GetServiceQuotaIncreaseRequestFromTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetServiceQuotaIncreaseRequestFromTemplateResponse", name: "GetServiceQuotaIncreaseRequestFromTemplateResponse")
    GetServiceQuotaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetServiceQuotaRequest", name: "GetServiceQuotaRequest")
    GetServiceQuotaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#GetServiceQuotaResponse", name: "GetServiceQuotaResponse")
    GlobalQuota = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicequotas#GlobalQuota", name: "GlobalQuota", traits: {"smithy.api#default" => false})
    IllegalArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#IllegalArgumentException", name: "IllegalArgumentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InputTagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicequotas#InputTagKeys", name: "InputTagKeys")
    InputTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicequotas#InputTags", name: "InputTags", traits: {"smithy.api#length" => {"min" => 1}})
    InvalidPaginationTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#InvalidPaginationTokenException", name: "InvalidPaginationTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#InvalidResourceStateException", name: "InvalidResourceStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    ListAWSDefaultServiceQuotasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListAWSDefaultServiceQuotasRequest", name: "ListAWSDefaultServiceQuotasRequest")
    ListAWSDefaultServiceQuotasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListAWSDefaultServiceQuotasResponse", name: "ListAWSDefaultServiceQuotasResponse")
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryByQuotaRequest", name: "ListRequestedServiceQuotaChangeHistoryByQuotaRequest")
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryByQuotaResponse", name: "ListRequestedServiceQuotaChangeHistoryByQuotaResponse")
    ListRequestedServiceQuotaChangeHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryRequest", name: "ListRequestedServiceQuotaChangeHistoryRequest")
    ListRequestedServiceQuotaChangeHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryResponse", name: "ListRequestedServiceQuotaChangeHistoryResponse")
    ListServiceQuotaIncreaseRequestsInTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListServiceQuotaIncreaseRequestsInTemplateRequest", name: "ListServiceQuotaIncreaseRequestsInTemplateRequest")
    ListServiceQuotaIncreaseRequestsInTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListServiceQuotaIncreaseRequestsInTemplateResponse", name: "ListServiceQuotaIncreaseRequestsInTemplateResponse")
    ListServiceQuotasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListServiceQuotasRequest", name: "ListServiceQuotasRequest")
    ListServiceQuotasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListServiceQuotasResponse", name: "ListServiceQuotasResponse")
    ListServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListServicesRequest", name: "ListServicesRequest")
    ListServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListServicesResponse", name: "ListServicesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicequotas#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#MetricDimensionName", name: "MetricDimensionName")
    MetricDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#MetricDimensionValue", name: "MetricDimensionValue")
    MetricDimensionsMapDefinition = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicequotas#MetricDimensionsMapDefinition", name: "MetricDimensionsMapDefinition", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MetricInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#MetricInfo", name: "MetricInfo")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9/+]*={0,2}$"})
    NoAvailableOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#NoAvailableOrganizationException", name: "NoAvailableOrganizationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NoSuchResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#NoSuchResourceException", name: "NoSuchResourceException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OrganizationNotInAllFeaturesModeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#OrganizationNotInAllFeaturesModeException", name: "OrganizationNotInAllFeaturesModeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OutputTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicequotas#OutputTags", name: "OutputTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    PeriodUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicequotas#PeriodUnit", name: "PeriodUnit")
    PeriodValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicequotas#PeriodValue", name: "PeriodValue")
    PutServiceQuotaIncreaseRequestIntoTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#PutServiceQuotaIncreaseRequestIntoTemplateRequest", name: "PutServiceQuotaIncreaseRequestIntoTemplateRequest")
    PutServiceQuotaIncreaseRequestIntoTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#PutServiceQuotaIncreaseRequestIntoTemplateResponse", name: "PutServiceQuotaIncreaseRequestIntoTemplateResponse")
    QuotaAdjustable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicequotas#QuotaAdjustable", name: "QuotaAdjustable", traits: {"smithy.api#default" => false})
    QuotaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaArn", name: "QuotaArn")
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaCode", name: "QuotaCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]{1,128}$"})
    QuotaContextId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaContextId", name: "QuotaContextId")
    QuotaContextInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#QuotaContextInfo", name: "QuotaContextInfo")
    QuotaContextScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicequotas#QuotaContextScope", name: "QuotaContextScope")
    QuotaContextScopeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaContextScopeType", name: "QuotaContextScopeType")
    QuotaDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaDescription", name: "QuotaDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^.{0,350}$"})
    QuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#QuotaExceededException", name: "QuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    QuotaMetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaMetricName", name: "QuotaMetricName")
    QuotaMetricNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaMetricNamespace", name: "QuotaMetricNamespace")
    QuotaName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaName", name: "QuotaName")
    QuotaPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#QuotaPeriod", name: "QuotaPeriod")
    QuotaUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#QuotaUnit", name: "QuotaUnit")
    QuotaValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.servicequotas#QuotaValue", name: "QuotaValue", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000000000}})
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z][a-zA-Z0-9-]{1,128}$"})
    RequestServiceQuotaIncreaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#RequestServiceQuotaIncreaseRequest", name: "RequestServiceQuotaIncreaseRequest")
    RequestServiceQuotaIncreaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#RequestServiceQuotaIncreaseResponse", name: "RequestServiceQuotaIncreaseResponse")
    RequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicequotas#RequestStatus", name: "RequestStatus")
    RequestedServiceQuotaChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#RequestedServiceQuotaChange", name: "RequestedServiceQuotaChange")
    RequestedServiceQuotaChangeHistoryListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicequotas#RequestedServiceQuotaChangeHistoryListDefinition", name: "RequestedServiceQuotaChangeHistoryListDefinition")
    Requester = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#Requester", name: "Requester")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#ServiceCode", name: "ServiceCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]{1,63}$"})
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ServiceInfo", name: "ServiceInfo")
    ServiceInfoListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicequotas#ServiceInfoListDefinition", name: "ServiceInfoListDefinition")
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#ServiceName", name: "ServiceName")
    ServiceQuota = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ServiceQuota", name: "ServiceQuota")
    ServiceQuotaIncreaseRequestInTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ServiceQuotaIncreaseRequestInTemplate", name: "ServiceQuotaIncreaseRequestInTemplate")
    ServiceQuotaIncreaseRequestInTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicequotas#ServiceQuotaIncreaseRequestInTemplateList", name: "ServiceQuotaIncreaseRequestInTemplateList")
    ServiceQuotaListDefinition = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicequotas#ServiceQuotaListDefinition", name: "ServiceQuotaListDefinition")
    ServiceQuotaTemplateAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicequotas#ServiceQuotaTemplateAssociationStatus", name: "ServiceQuotaTemplateAssociationStatus")
    ServiceQuotaTemplateNotInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#ServiceQuotaTemplateNotInUseException", name: "ServiceQuotaTemplateNotInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Statistic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#Statistic", name: "Statistic", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(Sum|Maximum)$"})
    SupportCaseAllowed = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicequotas#SupportCaseAllowed", name: "SupportCaseAllowed")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagPolicyViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#TagPolicyViolationException", name: "TagPolicyViolationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicequotas#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TemplatesNotAvailableInRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#TemplatesNotAvailableInRegionException", name: "TemplatesNotAvailableInRegionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicequotas#UntagResourceResponse", name: "UntagResourceResponse")

    AWSServiceAccessNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AWSServiceAccessNotEnabledException.type = Types::AWSServiceAccessNotEnabledException
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AppliedLevelEnum.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    AppliedLevelEnum.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    AppliedLevelEnum.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    AssociateServiceQuotaTemplateRequest.type = Types::AssociateServiceQuotaTemplateRequest
    AssociateServiceQuotaTemplateResponse.type = Types::AssociateServiceQuotaTemplateResponse
    CreateSupportCaseRequest.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId", traits: {"smithy.api#required" => {}}))
    CreateSupportCaseRequest.type = Types::CreateSupportCaseRequest
    CreateSupportCaseResponse.type = Types::CreateSupportCaseResponse
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion", traits: {"smithy.api#required" => {}}))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.type = Types::DeleteServiceQuotaIncreaseRequestFromTemplateRequest
    DeleteServiceQuotaIncreaseRequestFromTemplateResponse.type = Types::DeleteServiceQuotaIncreaseRequestFromTemplateResponse
    DependencyAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DependencyAccessDeniedException.type = Types::DependencyAccessDeniedException
    DisassociateServiceQuotaTemplateRequest.type = Types::DisassociateServiceQuotaTemplateRequest
    DisassociateServiceQuotaTemplateResponse.type = Types::DisassociateServiceQuotaTemplateResponse
    ErrorCode.add_member(:dependency_access_denied_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPENDENCY_ACCESS_DENIED_ERROR", traits: {"smithy.api#enumValue" => "DEPENDENCY_ACCESS_DENIED_ERROR"}))
    ErrorCode.add_member(:dependency_throttling_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPENDENCY_THROTTLING_ERROR", traits: {"smithy.api#enumValue" => "DEPENDENCY_THROTTLING_ERROR"}))
    ErrorCode.add_member(:dependency_service_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPENDENCY_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "DEPENDENCY_SERVICE_ERROR"}))
    ErrorCode.add_member(:service_quota_not_available_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_QUOTA_NOT_AVAILABLE_ERROR", traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"}))
    ErrorReason.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    ErrorReason.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    ErrorReason.type = Types::ErrorReason
    GetAWSDefaultServiceQuotaRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    GetAWSDefaultServiceQuotaRequest.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    GetAWSDefaultServiceQuotaRequest.type = Types::GetAWSDefaultServiceQuotaRequest
    GetAWSDefaultServiceQuotaResponse.add_member(:quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuota, location_name: "Quota"))
    GetAWSDefaultServiceQuotaResponse.type = Types::GetAWSDefaultServiceQuotaResponse
    GetAssociationForServiceQuotaTemplateRequest.type = Types::GetAssociationForServiceQuotaTemplateRequest
    GetAssociationForServiceQuotaTemplateResponse.add_member(:service_quota_template_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaTemplateAssociationStatus, location_name: "ServiceQuotaTemplateAssociationStatus"))
    GetAssociationForServiceQuotaTemplateResponse.type = Types::GetAssociationForServiceQuotaTemplateResponse
    GetRequestedServiceQuotaChangeRequest.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId", traits: {"smithy.api#required" => {}}))
    GetRequestedServiceQuotaChangeRequest.type = Types::GetRequestedServiceQuotaChangeRequest
    GetRequestedServiceQuotaChangeResponse.add_member(:requested_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange, location_name: "RequestedQuota"))
    GetRequestedServiceQuotaChangeResponse.type = Types::GetRequestedServiceQuotaChangeResponse
    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion", traits: {"smithy.api#required" => {}}))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.type = Types::GetServiceQuotaIncreaseRequestFromTemplateRequest
    GetServiceQuotaIncreaseRequestFromTemplateResponse.add_member(:service_quota_increase_request_in_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate, location_name: "ServiceQuotaIncreaseRequestInTemplate"))
    GetServiceQuotaIncreaseRequestFromTemplateResponse.type = Types::GetServiceQuotaIncreaseRequestFromTemplateResponse
    GetServiceQuotaRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    GetServiceQuotaRequest.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    GetServiceQuotaRequest.add_member(:context_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextId, location_name: "ContextId"))
    GetServiceQuotaRequest.type = Types::GetServiceQuotaRequest
    GetServiceQuotaResponse.add_member(:quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuota, location_name: "Quota"))
    GetServiceQuotaResponse.type = Types::GetServiceQuotaResponse
    IllegalArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    IllegalArgumentException.type = Types::IllegalArgumentException
    InputTagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    InputTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    InvalidPaginationTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidResourceStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    ListAWSDefaultServiceQuotasRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ListAWSDefaultServiceQuotasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAWSDefaultServiceQuotasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAWSDefaultServiceQuotasRequest.type = Types::ListAWSDefaultServiceQuotasRequest
    ListAWSDefaultServiceQuotasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAWSDefaultServiceQuotasResponse.add_member(:quotas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaListDefinition, location_name: "Quotas"))
    ListAWSDefaultServiceQuotasResponse.type = Types::ListAWSDefaultServiceQuotasResponse
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestStatus, location_name: "Status"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:quota_requested_at_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: "QuotaRequestedAtLevel"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.type = Types::ListRequestedServiceQuotaChangeHistoryByQuotaRequest
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.add_member(:requested_quotas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChangeHistoryListDefinition, location_name: "RequestedQuotas"))
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.type = Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestStatus, location_name: "Status"))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:quota_requested_at_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: "QuotaRequestedAtLevel"))
    ListRequestedServiceQuotaChangeHistoryRequest.type = Types::ListRequestedServiceQuotaChangeHistoryRequest
    ListRequestedServiceQuotaChangeHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRequestedServiceQuotaChangeHistoryResponse.add_member(:requested_quotas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChangeHistoryListDefinition, location_name: "RequestedQuotas"))
    ListRequestedServiceQuotaChangeHistoryResponse.type = Types::ListRequestedServiceQuotaChangeHistoryResponse
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.type = Types::ListServiceQuotaIncreaseRequestsInTemplateRequest
    ListServiceQuotaIncreaseRequestsInTemplateResponse.add_member(:service_quota_increase_request_in_template_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplateList, location_name: "ServiceQuotaIncreaseRequestInTemplateList"))
    ListServiceQuotaIncreaseRequestsInTemplateResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceQuotaIncreaseRequestsInTemplateResponse.type = Types::ListServiceQuotaIncreaseRequestsInTemplateResponse
    ListServiceQuotasRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ListServiceQuotasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceQuotasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListServiceQuotasRequest.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    ListServiceQuotasRequest.add_member(:quota_applied_at_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: "QuotaAppliedAtLevel"))
    ListServiceQuotasRequest.type = Types::ListServiceQuotasRequest
    ListServiceQuotasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceQuotasResponse.add_member(:quotas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaListDefinition, location_name: "Quotas"))
    ListServiceQuotasResponse.type = Types::ListServiceQuotasResponse
    ListServicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListServicesRequest.type = Types::ListServicesRequest
    ListServicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicesResponse.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInfoListDefinition, location_name: "Services"))
    ListServicesResponse.type = Types::ListServicesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTags, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetricDimensionsMapDefinition.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionName)
    MetricDimensionsMapDefinition.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionValue)
    MetricInfo.add_member(:metric_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaMetricNamespace, location_name: "MetricNamespace"))
    MetricInfo.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaMetricName, location_name: "MetricName"))
    MetricInfo.add_member(:metric_dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionsMapDefinition, location_name: "MetricDimensions"))
    MetricInfo.add_member(:metric_statistic_recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic, location_name: "MetricStatisticRecommendation"))
    MetricInfo.type = Types::MetricInfo
    NoAvailableOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    NoAvailableOrganizationException.type = Types::NoAvailableOrganizationException
    NoSuchResourceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    NoSuchResourceException.type = Types::NoSuchResourceException
    OrganizationNotInAllFeaturesModeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    OrganizationNotInAllFeaturesModeException.type = Types::OrganizationNotInAllFeaturesModeException
    OutputTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    PeriodUnit.add_member(:microsecond, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MICROSECOND", traits: {"smithy.api#enumValue" => "MICROSECOND"}))
    PeriodUnit.add_member(:millisecond, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MILLISECOND", traits: {"smithy.api#enumValue" => "MILLISECOND"}))
    PeriodUnit.add_member(:second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECOND", traits: {"smithy.api#enumValue" => "SECOND"}))
    PeriodUnit.add_member(:minute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MINUTE", traits: {"smithy.api#enumValue" => "MINUTE"}))
    PeriodUnit.add_member(:hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOUR", traits: {"smithy.api#enumValue" => "HOUR"}))
    PeriodUnit.add_member(:day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DAY", traits: {"smithy.api#enumValue" => "DAY"}))
    PeriodUnit.add_member(:week, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEEK", traits: {"smithy.api#enumValue" => "WEEK"}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion", traits: {"smithy.api#required" => {}}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:desired_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: "DesiredValue", traits: {"smithy.api#required" => {}}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.type = Types::PutServiceQuotaIncreaseRequestIntoTemplateRequest
    PutServiceQuotaIncreaseRequestIntoTemplateResponse.add_member(:service_quota_increase_request_in_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate, location_name: "ServiceQuotaIncreaseRequestInTemplate"))
    PutServiceQuotaIncreaseRequestIntoTemplateResponse.type = Types::PutServiceQuotaIncreaseRequestIntoTemplateResponse
    QuotaContextInfo.add_member(:context_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextScope, location_name: "ContextScope"))
    QuotaContextInfo.add_member(:context_scope_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextScopeType, location_name: "ContextScopeType"))
    QuotaContextInfo.add_member(:context_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextId, location_name: "ContextId"))
    QuotaContextInfo.type = Types::QuotaContextInfo
    QuotaContextScope.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    QuotaContextScope.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    QuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    QuotaExceededException.type = Types::QuotaExceededException
    QuotaPeriod.add_member(:period_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodValue, location_name: "PeriodValue"))
    QuotaPeriod.add_member(:period_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodUnit, location_name: "PeriodUnit"))
    QuotaPeriod.type = Types::QuotaPeriod
    RequestServiceQuotaIncreaseRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    RequestServiceQuotaIncreaseRequest.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    RequestServiceQuotaIncreaseRequest.add_member(:desired_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: "DesiredValue", traits: {"smithy.api#required" => {}}))
    RequestServiceQuotaIncreaseRequest.add_member(:context_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextId, location_name: "ContextId"))
    RequestServiceQuotaIncreaseRequest.add_member(:support_case_allowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportCaseAllowed, location_name: "SupportCaseAllowed"))
    RequestServiceQuotaIncreaseRequest.type = Types::RequestServiceQuotaIncreaseRequest
    RequestServiceQuotaIncreaseResponse.add_member(:requested_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange, location_name: "RequestedQuota"))
    RequestServiceQuotaIncreaseResponse.type = Types::RequestServiceQuotaIncreaseResponse
    RequestStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RequestStatus.add_member(:case_opened, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CASE_OPENED", traits: {"smithy.api#enumValue" => "CASE_OPENED"}))
    RequestStatus.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    RequestStatus.add_member(:denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENIED", traits: {"smithy.api#enumValue" => "DENIED"}))
    RequestStatus.add_member(:case_closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CASE_CLOSED", traits: {"smithy.api#enumValue" => "CASE_CLOSED"}))
    RequestStatus.add_member(:not_approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_APPROVED", traits: {"smithy.api#enumValue" => "NOT_APPROVED"}))
    RequestStatus.add_member(:invalid_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_REQUEST", traits: {"smithy.api#enumValue" => "INVALID_REQUEST"}))
    RequestedServiceQuotaChange.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "Id"))
    RequestedServiceQuotaChange.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerServiceEngagementId, location_name: "CaseId"))
    RequestedServiceQuotaChange.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    RequestedServiceQuotaChange.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    RequestedServiceQuotaChange.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    RequestedServiceQuotaChange.add_member(:quota_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaName, location_name: "QuotaName"))
    RequestedServiceQuotaChange.add_member(:desired_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: "DesiredValue"))
    RequestedServiceQuotaChange.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestStatus, location_name: "Status"))
    RequestedServiceQuotaChange.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    RequestedServiceQuotaChange.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    RequestedServiceQuotaChange.add_member(:requester, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Requester, location_name: "Requester"))
    RequestedServiceQuotaChange.add_member(:quota_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaArn, location_name: "QuotaArn"))
    RequestedServiceQuotaChange.add_member(:global_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalQuota, location_name: "GlobalQuota", traits: {"smithy.api#default" => false}))
    RequestedServiceQuotaChange.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaUnit, location_name: "Unit"))
    RequestedServiceQuotaChange.add_member(:quota_requested_at_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: "QuotaRequestedAtLevel"))
    RequestedServiceQuotaChange.add_member(:quota_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextInfo, location_name: "QuotaContext"))
    RequestedServiceQuotaChange.type = Types::RequestedServiceQuotaChange
    RequestedServiceQuotaChangeHistoryListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange)
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceException.type = Types::ServiceException
    ServiceInfo.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ServiceInfo.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    ServiceInfo.type = Types::ServiceInfo
    ServiceInfoListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInfo)
    ServiceQuota.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ServiceQuota.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    ServiceQuota.add_member(:quota_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaArn, location_name: "QuotaArn"))
    ServiceQuota.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    ServiceQuota.add_member(:quota_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaName, location_name: "QuotaName"))
    ServiceQuota.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: "Value"))
    ServiceQuota.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaUnit, location_name: "Unit"))
    ServiceQuota.add_member(:adjustable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaAdjustable, location_name: "Adjustable", traits: {"smithy.api#default" => false}))
    ServiceQuota.add_member(:global_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalQuota, location_name: "GlobalQuota", traits: {"smithy.api#default" => false}))
    ServiceQuota.add_member(:usage_metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricInfo, location_name: "UsageMetric"))
    ServiceQuota.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaPeriod, location_name: "Period"))
    ServiceQuota.add_member(:error_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReason, location_name: "ErrorReason"))
    ServiceQuota.add_member(:quota_applied_at_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: "QuotaAppliedAtLevel"))
    ServiceQuota.add_member(:quota_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextInfo, location_name: "QuotaContext"))
    ServiceQuota.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaDescription, location_name: "Description"))
    ServiceQuota.type = Types::ServiceQuota
    ServiceQuotaIncreaseRequestInTemplate.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:quota_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaName, location_name: "QuotaName"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:desired_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: "DesiredValue"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:aws_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaUnit, location_name: "Unit"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:global_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalQuota, location_name: "GlobalQuota", traits: {"smithy.api#default" => false}))
    ServiceQuotaIncreaseRequestInTemplate.type = Types::ServiceQuotaIncreaseRequestInTemplate
    ServiceQuotaIncreaseRequestInTemplateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate)
    ServiceQuotaListDefinition.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuota)
    ServiceQuotaTemplateAssociationStatus.add_member(:associated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATED", traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    ServiceQuotaTemplateAssociationStatus.add_member(:disassociated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISASSOCIATED", traits: {"smithy.api#enumValue" => "DISASSOCIATED"}))
    ServiceQuotaTemplateNotInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceQuotaTemplateNotInUseException.type = Types::ServiceQuotaTemplateNotInUseException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagPolicyViolationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TagPolicyViolationException.type = Types::TagPolicyViolationException
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTags, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TemplatesNotAvailableInRegionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TemplatesNotAvailableInRegionException.type = Types::TemplatesNotAvailableInRegionException
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagKeys, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse

    ServiceQuotasV20190624 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.servicequotas#ServiceQuotasV20190624"
      service.name = "ServiceQuotasV20190624"
      service.version = "2019-06-24"
      service.traits = {"aws.api#service" => {"sdkId" => "Service Quotas", "arnNamespace" => "servicequotas", "cloudFormationName" => "ServiceQuotas", "cloudTrailEventSource" => "servicequotas.amazonaws.com", "endpointPrefix" => "servicequotas"}, "aws.auth#sigv4" => {"name" => "servicequotas"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Service Quotas"}
      service.add_operation(:associate_service_quota_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#AssociateServiceQuotaTemplate"
        operation.name = "AssociateServiceQuotaTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceQuotaTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceQuotaTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_support_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#CreateSupportCase"
        operation.name = "CreateSupportCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSupportCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSupportCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_service_quota_increase_request_from_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#DeleteServiceQuotaIncreaseRequestFromTemplate"
        operation.name = "DeleteServiceQuotaIncreaseRequestFromTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceQuotaIncreaseRequestFromTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceQuotaIncreaseRequestFromTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_service_quota_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#DisassociateServiceQuotaTemplate"
        operation.name = "DisassociateServiceQuotaTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceQuotaTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceQuotaTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaTemplateNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_aws_default_service_quota, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetAWSDefaultServiceQuota"
        operation.name = "GetAWSDefaultServiceQuota"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAWSDefaultServiceQuotaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAWSDefaultServiceQuotaResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_association_for_service_quota_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetAssociationForServiceQuotaTemplate"
        operation.name = "GetAssociationForServiceQuotaTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociationForServiceQuotaTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociationForServiceQuotaTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaTemplateNotInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_requested_service_quota_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetRequestedServiceQuotaChange"
        operation.name = "GetRequestedServiceQuotaChange"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRequestedServiceQuotaChangeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRequestedServiceQuotaChangeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_service_quota, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetServiceQuota"
        operation.name = "GetServiceQuota"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceQuotaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceQuotaResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_service_quota_increase_request_from_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetServiceQuotaIncreaseRequestFromTemplate"
        operation.name = "GetServiceQuotaIncreaseRequestFromTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceQuotaIncreaseRequestFromTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceQuotaIncreaseRequestFromTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_aws_default_service_quotas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListAWSDefaultServiceQuotas"
        operation.name = "ListAWSDefaultServiceQuotas"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAWSDefaultServiceQuotasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAWSDefaultServiceQuotasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAWSDefaultServiceQuotas.new
      end)
      service.add_operation(:list_requested_service_quota_change_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistory"
        operation.name = "ListRequestedServiceQuotaChangeHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRequestedServiceQuotaChangeHistory.new
      end)
      service.add_operation(:list_requested_service_quota_change_history_by_quota, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryByQuota"
        operation.name = "ListRequestedServiceQuotaChangeHistoryByQuota"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryByQuotaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryByQuotaResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRequestedServiceQuotaChangeHistoryByQuota.new
      end)
      service.add_operation(:list_service_quota_increase_requests_in_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListServiceQuotaIncreaseRequestsInTemplate"
        operation.name = "ListServiceQuotaIncreaseRequestsInTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceQuotaIncreaseRequestsInTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceQuotaIncreaseRequestsInTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServiceQuotaIncreaseRequestsInTemplate.new
      end)
      service.add_operation(:list_service_quotas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListServiceQuotas"
        operation.name = "ListServiceQuotas"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceQuotasRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceQuotasResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServiceQuotas.new
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListServices"
        operation.name = "ListServices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:put_service_quota_increase_request_into_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#PutServiceQuotaIncreaseRequestIntoTemplate"
        operation.name = "PutServiceQuotaIncreaseRequestIntoTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutServiceQuotaIncreaseRequestIntoTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutServiceQuotaIncreaseRequestIntoTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:request_service_quota_increase, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#RequestServiceQuotaIncrease"
        operation.name = "RequestServiceQuotaIncrease"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestServiceQuotaIncreaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestServiceQuotaIncreaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
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
