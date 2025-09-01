# frozen_string_literal: true

# This is generated code!

module Aws::ServiceQuotas
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSServiceAccessNotEnabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#AWSServiceAccessNotEnabledException', name: 'AWSServiceAccessNotEnabledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:*:.+:[0-9]{12}:.+$"})
    AppliedLevelEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicequotas#AppliedLevelEnum', name: 'AppliedLevelEnum')
    AssociateServiceQuotaTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#AssociateServiceQuotaTemplateRequest', name: 'AssociateServiceQuotaTemplateRequest')
    AssociateServiceQuotaTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#AssociateServiceQuotaTemplateResponse', name: 'AssociateServiceQuotaTemplateResponse')
    AwsRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#AwsRegion', name: 'AwsRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]{1,128}$"})
    CreateSupportCaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#CreateSupportCaseRequest', name: 'CreateSupportCaseRequest')
    CreateSupportCaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#CreateSupportCaseResponse', name: 'CreateSupportCaseResponse')
    CustomerServiceEngagementId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#CustomerServiceEngagementId', name: 'CustomerServiceEngagementId')
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.servicequotas#DateTime', name: 'DateTime')
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#DeleteServiceQuotaIncreaseRequestFromTemplateRequest', name: 'DeleteServiceQuotaIncreaseRequestFromTemplateRequest')
    DeleteServiceQuotaIncreaseRequestFromTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#DeleteServiceQuotaIncreaseRequestFromTemplateResponse', name: 'DeleteServiceQuotaIncreaseRequestFromTemplateResponse')
    DependencyAccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#DependencyAccessDeniedException', name: 'DependencyAccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DisassociateServiceQuotaTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#DisassociateServiceQuotaTemplateRequest', name: 'DisassociateServiceQuotaTemplateRequest')
    DisassociateServiceQuotaTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#DisassociateServiceQuotaTemplateResponse', name: 'DisassociateServiceQuotaTemplateResponse')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicequotas#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#ErrorMessage', name: 'ErrorMessage')
    ErrorReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ErrorReason', name: 'ErrorReason')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#ExceptionMessage', name: 'ExceptionMessage')
    GetAWSDefaultServiceQuotaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetAWSDefaultServiceQuotaRequest', name: 'GetAWSDefaultServiceQuotaRequest')
    GetAWSDefaultServiceQuotaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetAWSDefaultServiceQuotaResponse', name: 'GetAWSDefaultServiceQuotaResponse')
    GetAssociationForServiceQuotaTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetAssociationForServiceQuotaTemplateRequest', name: 'GetAssociationForServiceQuotaTemplateRequest')
    GetAssociationForServiceQuotaTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetAssociationForServiceQuotaTemplateResponse', name: 'GetAssociationForServiceQuotaTemplateResponse')
    GetRequestedServiceQuotaChangeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetRequestedServiceQuotaChangeRequest', name: 'GetRequestedServiceQuotaChangeRequest')
    GetRequestedServiceQuotaChangeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetRequestedServiceQuotaChangeResponse', name: 'GetRequestedServiceQuotaChangeResponse')
    GetServiceQuotaIncreaseRequestFromTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetServiceQuotaIncreaseRequestFromTemplateRequest', name: 'GetServiceQuotaIncreaseRequestFromTemplateRequest')
    GetServiceQuotaIncreaseRequestFromTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetServiceQuotaIncreaseRequestFromTemplateResponse', name: 'GetServiceQuotaIncreaseRequestFromTemplateResponse')
    GetServiceQuotaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetServiceQuotaRequest', name: 'GetServiceQuotaRequest')
    GetServiceQuotaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#GetServiceQuotaResponse', name: 'GetServiceQuotaResponse')
    GlobalQuota = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicequotas#GlobalQuota', name: 'GlobalQuota', traits: {"smithy.api#default" => false})
    IllegalArgumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#IllegalArgumentException', name: 'IllegalArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InputTagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicequotas#InputTagKeys', name: 'InputTagKeys')
    InputTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicequotas#InputTags', name: 'InputTags', traits: {"smithy.api#length" => {"min" => 1}})
    InvalidPaginationTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#InvalidPaginationTokenException', name: 'InvalidPaginationTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#InvalidResourceStateException', name: 'InvalidResourceStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    ListAWSDefaultServiceQuotasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListAWSDefaultServiceQuotasRequest', name: 'ListAWSDefaultServiceQuotasRequest')
    ListAWSDefaultServiceQuotasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListAWSDefaultServiceQuotasResponse', name: 'ListAWSDefaultServiceQuotasResponse')
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryByQuotaRequest', name: 'ListRequestedServiceQuotaChangeHistoryByQuotaRequest')
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryByQuotaResponse', name: 'ListRequestedServiceQuotaChangeHistoryByQuotaResponse')
    ListRequestedServiceQuotaChangeHistoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryRequest', name: 'ListRequestedServiceQuotaChangeHistoryRequest')
    ListRequestedServiceQuotaChangeHistoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryResponse', name: 'ListRequestedServiceQuotaChangeHistoryResponse')
    ListServiceQuotaIncreaseRequestsInTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListServiceQuotaIncreaseRequestsInTemplateRequest', name: 'ListServiceQuotaIncreaseRequestsInTemplateRequest')
    ListServiceQuotaIncreaseRequestsInTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListServiceQuotaIncreaseRequestsInTemplateResponse', name: 'ListServiceQuotaIncreaseRequestsInTemplateResponse')
    ListServiceQuotasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListServiceQuotasRequest', name: 'ListServiceQuotasRequest')
    ListServiceQuotasResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListServiceQuotasResponse', name: 'ListServiceQuotasResponse')
    ListServicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListServicesRequest', name: 'ListServicesRequest')
    ListServicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListServicesResponse', name: 'ListServicesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicequotas#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDimensionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#MetricDimensionName', name: 'MetricDimensionName')
    MetricDimensionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#MetricDimensionValue', name: 'MetricDimensionValue')
    MetricDimensionsMapDefinition = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.servicequotas#MetricDimensionsMapDefinition', name: 'MetricDimensionsMapDefinition', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    MetricInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#MetricInfo', name: 'MetricInfo')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9/+]*={0,2}$"})
    NoAvailableOrganizationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#NoAvailableOrganizationException', name: 'NoAvailableOrganizationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    NoSuchResourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#NoSuchResourceException', name: 'NoSuchResourceException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OrganizationNotInAllFeaturesModeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#OrganizationNotInAllFeaturesModeException', name: 'OrganizationNotInAllFeaturesModeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OutputTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicequotas#OutputTags', name: 'OutputTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    PeriodUnit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicequotas#PeriodUnit', name: 'PeriodUnit')
    PeriodValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.servicequotas#PeriodValue', name: 'PeriodValue')
    PutServiceQuotaIncreaseRequestIntoTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#PutServiceQuotaIncreaseRequestIntoTemplateRequest', name: 'PutServiceQuotaIncreaseRequestIntoTemplateRequest')
    PutServiceQuotaIncreaseRequestIntoTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#PutServiceQuotaIncreaseRequestIntoTemplateResponse', name: 'PutServiceQuotaIncreaseRequestIntoTemplateResponse')
    QuotaAdjustable = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicequotas#QuotaAdjustable', name: 'QuotaAdjustable', traits: {"smithy.api#default" => false})
    QuotaArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaArn', name: 'QuotaArn')
    QuotaCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaCode', name: 'QuotaCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]{1,128}$"})
    QuotaContextId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaContextId', name: 'QuotaContextId')
    QuotaContextInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#QuotaContextInfo', name: 'QuotaContextInfo')
    QuotaContextScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicequotas#QuotaContextScope', name: 'QuotaContextScope')
    QuotaContextScopeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaContextScopeType', name: 'QuotaContextScopeType')
    QuotaDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaDescription', name: 'QuotaDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^.{0,350}$"})
    QuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#QuotaExceededException', name: 'QuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    QuotaMetricName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaMetricName', name: 'QuotaMetricName')
    QuotaMetricNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaMetricNamespace', name: 'QuotaMetricNamespace')
    QuotaName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaName', name: 'QuotaName')
    QuotaPeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#QuotaPeriod', name: 'QuotaPeriod')
    QuotaUnit = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#QuotaUnit', name: 'QuotaUnit')
    QuotaValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.servicequotas#QuotaValue', name: 'QuotaValue', traits: {"smithy.api#range" => {"min" => 0, "max" => 10000000000}})
    RequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#RequestId', name: 'RequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z][a-zA-Z0-9-]{1,128}$"})
    RequestServiceQuotaIncreaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#RequestServiceQuotaIncreaseRequest', name: 'RequestServiceQuotaIncreaseRequest')
    RequestServiceQuotaIncreaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#RequestServiceQuotaIncreaseResponse', name: 'RequestServiceQuotaIncreaseResponse')
    RequestStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicequotas#RequestStatus', name: 'RequestStatus')
    RequestedServiceQuotaChange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#RequestedServiceQuotaChange', name: 'RequestedServiceQuotaChange')
    RequestedServiceQuotaChangeHistoryListDefinition = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicequotas#RequestedServiceQuotaChangeHistoryListDefinition', name: 'RequestedServiceQuotaChangeHistoryListDefinition')
    Requester = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#Requester', name: 'Requester')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#ServiceCode', name: 'ServiceCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]{1,63}$"})
    ServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ServiceException', name: 'ServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ServiceInfo', name: 'ServiceInfo')
    ServiceInfoListDefinition = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicequotas#ServiceInfoListDefinition', name: 'ServiceInfoListDefinition')
    ServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#ServiceName', name: 'ServiceName')
    ServiceQuota = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ServiceQuota', name: 'ServiceQuota')
    ServiceQuotaIncreaseRequestInTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ServiceQuotaIncreaseRequestInTemplate', name: 'ServiceQuotaIncreaseRequestInTemplate')
    ServiceQuotaIncreaseRequestInTemplateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicequotas#ServiceQuotaIncreaseRequestInTemplateList', name: 'ServiceQuotaIncreaseRequestInTemplateList')
    ServiceQuotaListDefinition = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.servicequotas#ServiceQuotaListDefinition', name: 'ServiceQuotaListDefinition')
    ServiceQuotaTemplateAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.servicequotas#ServiceQuotaTemplateAssociationStatus', name: 'ServiceQuotaTemplateAssociationStatus')
    ServiceQuotaTemplateNotInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#ServiceQuotaTemplateNotInUseException', name: 'ServiceQuotaTemplateNotInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Statistic = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#Statistic', name: 'Statistic', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(Sum|Maximum)$"})
    SupportCaseAllowed = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.servicequotas#SupportCaseAllowed', name: 'SupportCaseAllowed')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagPolicyViolationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#TagPolicyViolationException', name: 'TagPolicyViolationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.servicequotas#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TemplatesNotAvailableInRegionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#TemplatesNotAvailableInRegionException', name: 'TemplatesNotAvailableInRegionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.servicequotas#UntagResourceResponse', name: 'UntagResourceResponse')

    AWSServiceAccessNotEnabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AWSServiceAccessNotEnabledException.type = Types::AWSServiceAccessNotEnabledException
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AppliedLevelEnum.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    AppliedLevelEnum.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    AppliedLevelEnum.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    AssociateServiceQuotaTemplateRequest.type = Types::AssociateServiceQuotaTemplateRequest
    AssociateServiceQuotaTemplateResponse.type = Types::AssociateServiceQuotaTemplateResponse
    CreateSupportCaseRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the pending quota increase request for which you want to open a Support case. </p>", "smithy.api#required" => {}}))
    CreateSupportCaseRequest.type = Types::CreateSupportCaseRequest
    CreateSupportCaseResponse.type = Types::CreateSupportCaseResponse
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>", "smithy.api#required" => {}}))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Web Services Region for which the request was made.</p>", "smithy.api#required" => {}}))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.type = Types::DeleteServiceQuotaIncreaseRequestFromTemplateRequest
    DeleteServiceQuotaIncreaseRequestFromTemplateResponse.type = Types::DeleteServiceQuotaIncreaseRequestFromTemplateResponse
    DependencyAccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DependencyAccessDeniedException.type = Types::DependencyAccessDeniedException
    DisassociateServiceQuotaTemplateRequest.type = Types::DisassociateServiceQuotaTemplateRequest
    DisassociateServiceQuotaTemplateResponse.type = Types::DisassociateServiceQuotaTemplateResponse
    ErrorCode.add_member(:dependency_access_denied_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_ACCESS_DENIED_ERROR', traits: {"smithy.api#enumValue" => "DEPENDENCY_ACCESS_DENIED_ERROR"}))
    ErrorCode.add_member(:dependency_throttling_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_THROTTLING_ERROR', traits: {"smithy.api#enumValue" => "DEPENDENCY_THROTTLING_ERROR"}))
    ErrorCode.add_member(:dependency_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPENDENCY_SERVICE_ERROR', traits: {"smithy.api#enumValue" => "DEPENDENCY_SERVICE_ERROR"}))
    ErrorCode.add_member(:service_quota_not_available_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_QUOTA_NOT_AVAILABLE_ERROR', traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"}))
    ErrorReason.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Service Quotas returns the following error values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DEPENDENCY_ACCESS_DENIED_ERROR</code> - The caller does not have the\n                    required permissions to complete the action. To resolve the error, you must have\n                    permission to access the Amazon Web Services service or quota.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DEPENDENCY_THROTTLING_ERROR</code> - The Amazon Web Services service is throttling\n                    Service Quotas. </p>\n            </li>\n            <li>\n               <p>\n                  <code>DEPENDENCY_SERVICE_ERROR</code> - The Amazon Web Services service is not\n                    available.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SERVICE_QUOTA_NOT_AVAILABLE_ERROR</code> - There was an error in\n                    Service Quotas.</p>\n            </li>\n         </ul>"}))
    ErrorReason.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    ErrorReason.type = Types::ErrorReason
    GetAWSDefaultServiceQuotaRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    GetAWSDefaultServiceQuotaRequest.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>", "smithy.api#required" => {}}))
    GetAWSDefaultServiceQuotaRequest.type = Types::GetAWSDefaultServiceQuotaRequest
    GetAWSDefaultServiceQuotaResponse.add_member(:quota, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuota, location_name: 'Quota', traits: {"smithy.api#documentation" => "<p>Information about the quota.</p>"}))
    GetAWSDefaultServiceQuotaResponse.type = Types::GetAWSDefaultServiceQuotaResponse
    GetAssociationForServiceQuotaTemplateRequest.type = Types::GetAssociationForServiceQuotaTemplateRequest
    GetAssociationForServiceQuotaTemplateResponse.add_member(:service_quota_template_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaTemplateAssociationStatus, location_name: 'ServiceQuotaTemplateAssociationStatus', traits: {"smithy.api#documentation" => "<p>The association status. If the status is <code>ASSOCIATED</code>, the quota increase\n            requests in the template are automatically applied to new Amazon Web Services accounts in your\n            organization.</p>"}))
    GetAssociationForServiceQuotaTemplateResponse.type = Types::GetAssociationForServiceQuotaTemplateResponse
    GetRequestedServiceQuotaChangeRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>Specifies the ID of the quota increase request.</p>", "smithy.api#required" => {}}))
    GetRequestedServiceQuotaChangeRequest.type = Types::GetRequestedServiceQuotaChangeRequest
    GetRequestedServiceQuotaChangeResponse.add_member(:requested_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange, location_name: 'RequestedQuota', traits: {"smithy.api#documentation" => "<p>Information about the quota increase request.</p>"}))
    GetRequestedServiceQuotaChangeResponse.type = Types::GetRequestedServiceQuotaChangeResponse
    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>", "smithy.api#required" => {}}))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Web Services Region for which you made the request.</p>", "smithy.api#required" => {}}))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.type = Types::GetServiceQuotaIncreaseRequestFromTemplateRequest
    GetServiceQuotaIncreaseRequestFromTemplateResponse.add_member(:service_quota_increase_request_in_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate, location_name: 'ServiceQuotaIncreaseRequestInTemplate', traits: {"smithy.api#documentation" => "<p>Information about the quota increase request.</p>"}))
    GetServiceQuotaIncreaseRequestFromTemplateResponse.type = Types::GetServiceQuotaIncreaseRequestFromTemplateResponse
    GetServiceQuotaRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    GetServiceQuotaRequest.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>", "smithy.api#required" => {}}))
    GetServiceQuotaRequest.add_member(:context_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextId, location_name: 'ContextId', traits: {"smithy.api#documentation" => "<p>Specifies the resource with an Amazon Resource Name (ARN).</p>"}))
    GetServiceQuotaRequest.type = Types::GetServiceQuotaRequest
    GetServiceQuotaResponse.add_member(:quota, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuota, location_name: 'Quota', traits: {"smithy.api#documentation" => "<p>Information about the quota.</p>"}))
    GetServiceQuotaResponse.type = Types::GetServiceQuotaResponse
    IllegalArgumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    IllegalArgumentException.type = Types::IllegalArgumentException
    InputTagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    InputTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    InvalidPaginationTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidResourceStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    ListAWSDefaultServiceQuotasRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    ListAWSDefaultServiceQuotasRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies a value for receiving additional results after you \n    receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> \n    response indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListAWSDefaultServiceQuotasRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results that you want included on each \n    page of the response. If you do not include this parameter, it defaults to a value appropriate \n    to the operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>"}))
    ListAWSDefaultServiceQuotasRequest.type = Types::ListAWSDefaultServiceQuotasRequest
    ListAWSDefaultServiceQuotasResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListAWSDefaultServiceQuotasResponse.add_member(:quotas, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaListDefinition, location_name: 'Quotas', traits: {"smithy.api#documentation" => "<p>Information about the quotas.</p>"}))
    ListAWSDefaultServiceQuotasResponse.type = Types::ListAWSDefaultServiceQuotasResponse
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>", "smithy.api#required" => {}}))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies that you want to filter the results to only the requests with the matching\n            status.</p>"}))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies a value for receiving additional results after you \n    receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> \n    response indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results that you want included on each \n    page of the response. If you do not include this parameter, it defaults to a value appropriate \n    to the operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>"}))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:quota_requested_at_level, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: 'QuotaRequestedAtLevel', traits: {"smithy.api#documentation" => "<p>Filters the response to return quota requests for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>"}))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.type = Types::ListRequestedServiceQuotaChangeHistoryByQuotaRequest
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.add_member(:requested_quotas, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChangeHistoryListDefinition, location_name: 'RequestedQuotas', traits: {"smithy.api#documentation" => "<p>Information about the quota increase requests.</p>"}))
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.type = Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>"}))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies that you want to filter the results to only the requests with the matching\n            status.</p>"}))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies a value for receiving additional results after you \n    receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> \n    response indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results that you want included on each \n    page of the response. If you do not include this parameter, it defaults to a value appropriate \n    to the operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>"}))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:quota_requested_at_level, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: 'QuotaRequestedAtLevel', traits: {"smithy.api#documentation" => "<p>Filters the response to return quota requests for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>"}))
    ListRequestedServiceQuotaChangeHistoryRequest.type = Types::ListRequestedServiceQuotaChangeHistoryRequest
    ListRequestedServiceQuotaChangeHistoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListRequestedServiceQuotaChangeHistoryResponse.add_member(:requested_quotas, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChangeHistoryListDefinition, location_name: 'RequestedQuotas', traits: {"smithy.api#documentation" => "<p>Information about the quota increase requests.</p>"}))
    ListRequestedServiceQuotaChangeHistoryResponse.type = Types::ListRequestedServiceQuotaChangeHistoryResponse
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>"}))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Web Services Region for which you made the request.</p>"}))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies a value for receiving additional results after you \n    receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> \n    response indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results that you want included on each \n    page of the response. If you do not include this parameter, it defaults to a value appropriate \n    to the operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>"}))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.type = Types::ListServiceQuotaIncreaseRequestsInTemplateRequest
    ListServiceQuotaIncreaseRequestsInTemplateResponse.add_member(:service_quota_increase_request_in_template_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplateList, location_name: 'ServiceQuotaIncreaseRequestInTemplateList', traits: {"smithy.api#documentation" => "<p>Information about the quota increase requests.</p>"}))
    ListServiceQuotaIncreaseRequestsInTemplateResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListServiceQuotaIncreaseRequestsInTemplateResponse.type = Types::ListServiceQuotaIncreaseRequestsInTemplateResponse
    ListServiceQuotasRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    ListServiceQuotasRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies a value for receiving additional results after you \n    receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> \n    response indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListServiceQuotasRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results that you want included on each \n    page of the response. If you do not include this parameter, it defaults to a value appropriate \n    to the operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>"}))
    ListServiceQuotasRequest.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>"}))
    ListServiceQuotasRequest.add_member(:quota_applied_at_level, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: 'QuotaAppliedAtLevel', traits: {"smithy.api#documentation" => "<p>Filters the response to return applied quota values for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>"}))
    ListServiceQuotasRequest.type = Types::ListServiceQuotasRequest
    ListServiceQuotasResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListServiceQuotasResponse.add_member(:quotas, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaListDefinition, location_name: 'Quotas', traits: {"smithy.api#documentation" => "<p>Information about the quotas.</p>"}))
    ListServiceQuotasResponse.type = Types::ListServiceQuotasResponse
    ListServicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Specifies a value for receiving additional results after you \n    receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> \n    response indicates that more output is available. Set this parameter to the value of the previous \n    call's <code>NextToken</code> response to indicate where the output should continue \n    from.</p>"}))
    ListServicesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results that you want included on each \n    page of the response. If you do not include this parameter, it defaults to a value appropriate \n    to the operation. If additional items exist beyond those included in the current response, the \n    <code>NextToken</code> response element is present and has a value (is not null). Include that \n    value as the <code>NextToken</code> request parameter in the next call to the operation to get \n    the next part of the results.</p>\n         <note>\n            <p>An API operation can return fewer results than the maximum even when there are \n    more results available. You should check <code>NextToken</code> after every operation to ensure \n    that you receive all of the results.</p>\n         </note>"}))
    ListServicesRequest.type = Types::ListServicesRequest
    ListServicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \n    included in the current response. Use this value in the <code>NextToken</code> request parameter \n    in a subsequent call to the operation to get the next part of the output. You should repeat this \n    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListServicesResponse.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInfoListDefinition, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>The list of the Amazon Web Services service names and service codes.</p>"}))
    ListServicesResponse.type = Types::ListServicesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the applied quota for which you want to list tags.\n            You can get this information by using the Service Quotas console, or by listing the quotas\n            using the <a href=\"https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html\">list-service-quotas</a> CLI command or the <a href=\"https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html\">ListServiceQuotas</a> Amazon Web Services API operation.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A complex data type that contains zero or more tag elements.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MetricDimensionsMapDefinition.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionName)
    MetricDimensionsMapDefinition.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionValue)
    MetricInfo.add_member(:metric_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaMetricNamespace, location_name: 'MetricNamespace', traits: {"smithy.api#documentation" => "<p>The namespace of the metric.</p>"}))
    MetricInfo.add_member(:metric_name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaMetricName, location_name: 'MetricName', traits: {"smithy.api#documentation" => "<p>The name of the metric.</p>"}))
    MetricInfo.add_member(:metric_dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionsMapDefinition, location_name: 'MetricDimensions', traits: {"smithy.api#documentation" => "<p>The metric dimension. This is a name/value pair that is part of the identity of a\n            metric.</p>"}))
    MetricInfo.add_member(:metric_statistic_recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic, location_name: 'MetricStatisticRecommendation', traits: {"smithy.api#documentation" => "<p>The metric statistic that we recommend you use when determining quota usage.</p>"}))
    MetricInfo.type = Types::MetricInfo
    NoAvailableOrganizationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    NoAvailableOrganizationException.type = Types::NoAvailableOrganizationException
    NoSuchResourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    NoSuchResourceException.type = Types::NoSuchResourceException
    OrganizationNotInAllFeaturesModeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    OrganizationNotInAllFeaturesModeException.type = Types::OrganizationNotInAllFeaturesModeException
    OutputTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    PeriodUnit.add_member(:microsecond, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSECOND', traits: {"smithy.api#enumValue" => "MICROSECOND"}))
    PeriodUnit.add_member(:millisecond, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MILLISECOND', traits: {"smithy.api#enumValue" => "MILLISECOND"}))
    PeriodUnit.add_member(:second, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECOND', traits: {"smithy.api#enumValue" => "SECOND"}))
    PeriodUnit.add_member(:minute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINUTE', traits: {"smithy.api#enumValue" => "MINUTE"}))
    PeriodUnit.add_member(:hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOUR', traits: {"smithy.api#enumValue" => "HOUR"}))
    PeriodUnit.add_member(:day, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAY', traits: {"smithy.api#enumValue" => "DAY"}))
    PeriodUnit.add_member(:week, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEK', traits: {"smithy.api#enumValue" => "WEEK"}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>", "smithy.api#required" => {}}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Web Services Region to which the template applies.</p>", "smithy.api#required" => {}}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:desired_value, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: 'DesiredValue', traits: {"smithy.api#documentation" => "<p>Specifies the new, increased value for the quota.</p>", "smithy.api#required" => {}}))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.type = Types::PutServiceQuotaIncreaseRequestIntoTemplateRequest
    PutServiceQuotaIncreaseRequestIntoTemplateResponse.add_member(:service_quota_increase_request_in_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate, location_name: 'ServiceQuotaIncreaseRequestInTemplate', traits: {"smithy.api#documentation" => "<p>Information about the quota increase request.</p>"}))
    PutServiceQuotaIncreaseRequestIntoTemplateResponse.type = Types::PutServiceQuotaIncreaseRequestIntoTemplateResponse
    QuotaContextInfo.add_member(:context_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextScope, location_name: 'ContextScope', traits: {"smithy.api#documentation" => "<p>Specifies the scope to which the quota value is applied. If the scope is <code>RESOURCE</code>, the quota value is applied to each resource in the Amazon Web Services account. If the scope is <code>ACCOUNT</code>, the quota value is applied to the Amazon Web Services account.</p>"}))
    QuotaContextInfo.add_member(:context_scope_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextScopeType, location_name: 'ContextScopeType', traits: {"smithy.api#documentation" => "<p>Specifies the resource type to which the quota can be applied.</p>"}))
    QuotaContextInfo.add_member(:context_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextId, location_name: 'ContextId', traits: {"smithy.api#documentation" => "<p>Specifies the resource, or resources, to which the quota applies. The value for this field is either an Amazon Resource Name (ARN) or *. If the value is an ARN, the quota value applies to that resource. If the value is *, then the quota value applies to all resources listed in the <code>ContextScopeType</code> field. The quota value applies to all resources for which you haven’t previously applied a quota value, and any new resources you create in your Amazon Web Services account.</p>"}))
    QuotaContextInfo.type = Types::QuotaContextInfo
    QuotaContextScope.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    QuotaContextScope.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    QuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    QuotaExceededException.type = Types::QuotaExceededException
    QuotaPeriod.add_member(:period_value, Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodValue, location_name: 'PeriodValue', traits: {"smithy.api#documentation" => "<p>The value associated with the reported <code>PeriodUnit</code>.</p>"}))
    QuotaPeriod.add_member(:period_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: PeriodUnit, location_name: 'PeriodUnit', traits: {"smithy.api#documentation" => "<p>The time unit.</p>"}))
    QuotaPeriod.type = Types::QuotaPeriod
    RequestServiceQuotaIncreaseRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>", "smithy.api#required" => {}}))
    RequestServiceQuotaIncreaseRequest.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>", "smithy.api#required" => {}}))
    RequestServiceQuotaIncreaseRequest.add_member(:desired_value, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: 'DesiredValue', traits: {"smithy.api#documentation" => "<p>Specifies the new, increased value for the quota.</p>", "smithy.api#required" => {}}))
    RequestServiceQuotaIncreaseRequest.add_member(:context_id, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextId, location_name: 'ContextId', traits: {"smithy.api#documentation" => "<p>Specifies the resource with an Amazon Resource Name (ARN).</p>"}))
    RequestServiceQuotaIncreaseRequest.add_member(:support_case_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportCaseAllowed, location_name: 'SupportCaseAllowed', traits: {"smithy.api#documentation" => "<p>Specifies if an Amazon Web Services Support case can be opened for the quota increase request. This parameter is optional. </p>\n         <p>By default, this flag is set to <code>True</code> and Amazon Web Services may create a support case for some quota increase requests. \n            You can set this flag to <code>False</code> \n           if you do not want a support case created when you request a quota increase. If you set the flag to <code>False</code>, \n            Amazon Web Services does not open a support case and updates the request status to <code>Not approved</code>. </p>"}))
    RequestServiceQuotaIncreaseRequest.type = Types::RequestServiceQuotaIncreaseRequest
    RequestServiceQuotaIncreaseResponse.add_member(:requested_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange, location_name: 'RequestedQuota', traits: {"smithy.api#documentation" => "<p>Information about the quota increase request.</p>"}))
    RequestServiceQuotaIncreaseResponse.type = Types::RequestServiceQuotaIncreaseResponse
    RequestStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    RequestStatus.add_member(:case_opened, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CASE_OPENED', traits: {"smithy.api#enumValue" => "CASE_OPENED"}))
    RequestStatus.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    RequestStatus.add_member(:denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENIED', traits: {"smithy.api#enumValue" => "DENIED"}))
    RequestStatus.add_member(:case_closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CASE_CLOSED', traits: {"smithy.api#enumValue" => "CASE_CLOSED"}))
    RequestStatus.add_member(:not_approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPROVED', traits: {"smithy.api#enumValue" => "NOT_APPROVED"}))
    RequestStatus.add_member(:invalid_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_REQUEST', traits: {"smithy.api#enumValue" => "INVALID_REQUEST"}))
    RequestedServiceQuotaChange.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier.</p>"}))
    RequestedServiceQuotaChange.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerServiceEngagementId, location_name: 'CaseId', traits: {"smithy.api#documentation" => "<p>The case ID.</p>"}))
    RequestedServiceQuotaChange.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>"}))
    RequestedServiceQuotaChange.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>Specifies the service name.</p>"}))
    RequestedServiceQuotaChange.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>"}))
    RequestedServiceQuotaChange.add_member(:quota_name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaName, location_name: 'QuotaName', traits: {"smithy.api#documentation" => "<p>Specifies the quota name.</p>"}))
    RequestedServiceQuotaChange.add_member(:desired_value, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: 'DesiredValue', traits: {"smithy.api#documentation" => "<p>The new, increased value for the quota.</p>"}))
    RequestedServiceQuotaChange.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The state of the quota increase request.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code>: The quota increase request is under review by Amazon Web Services. </p>\n            </li>\n            <li>\n               <p>\n                  <code>CASE_OPENED</code>: Service Quotas opened a support case to process the quota increase\n                request. Follow-up on the support case for more information.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APPROVED</code>: The quota increase request is approved. </p>\n            </li>\n            <li>\n               <p>\n                  <code>DENIED</code>: The quota increase request can't be approved by Service Quotas. Contact\n               Amazon Web Services Support for more details.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT APPROVED</code>: The quota increase request can't be approved by Service Quotas. Contact\n                Amazon Web Services Support for more details.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CASE_CLOSED</code>: The support case associated with this quota increase request was closed.\n            Check the support case correspondence for the outcome of your quota request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_REQUEST</code>: Service Quotas couldn't process your resource-level quota increase request because the\n            Amazon Resource Name (ARN) specified as part of the <code>ContextId</code> is invalid.</p>\n            </li>\n         </ul>"}))
    RequestedServiceQuotaChange.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The date and time when the quota increase request was received and the case ID was\n            created.</p>"}))
    RequestedServiceQuotaChange.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>The date and time of the most recent change.</p>"}))
    RequestedServiceQuotaChange.add_member(:requester, Smithy::Schema::Shapes::ShapeRef.new(shape: Requester, location_name: 'Requester', traits: {"smithy.api#documentation" => "<p>The IAM identity of the requester.</p>"}))
    RequestedServiceQuotaChange.add_member(:quota_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaArn, location_name: 'QuotaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the quota.</p>"}))
    RequestedServiceQuotaChange.add_member(:global_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalQuota, location_name: 'GlobalQuota', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the quota is global.</p>"}))
    RequestedServiceQuotaChange.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>The unit of measurement.</p>"}))
    RequestedServiceQuotaChange.add_member(:quota_requested_at_level, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: 'QuotaRequestedAtLevel', traits: {"smithy.api#documentation" => "<p>Filters the response to return quota requests for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>"}))
    RequestedServiceQuotaChange.add_member(:quota_context, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextInfo, location_name: 'QuotaContext', traits: {"smithy.api#documentation" => "<p>The context for this service quota.</p>"}))
    RequestedServiceQuotaChange.type = Types::RequestedServiceQuotaChange
    RequestedServiceQuotaChangeHistoryListDefinition.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange)
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ServiceException.type = Types::ServiceException
    ServiceInfo.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>"}))
    ServiceInfo.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>Specifies the service name.</p>"}))
    ServiceInfo.type = Types::ServiceInfo
    ServiceInfoListDefinition.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceInfo)
    ServiceQuota.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>"}))
    ServiceQuota.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>Specifies the service name.</p>"}))
    ServiceQuota.add_member(:quota_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaArn, location_name: 'QuotaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the quota.</p>"}))
    ServiceQuota.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>"}))
    ServiceQuota.add_member(:quota_name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaName, location_name: 'QuotaName', traits: {"smithy.api#documentation" => "<p>Specifies the quota name.</p>"}))
    ServiceQuota.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The quota value.</p>"}))
    ServiceQuota.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>The unit of measurement.</p>"}))
    ServiceQuota.add_member(:adjustable, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaAdjustable, location_name: 'Adjustable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the quota value can be increased.</p>"}))
    ServiceQuota.add_member(:global_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalQuota, location_name: 'GlobalQuota', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the quota is global.</p>"}))
    ServiceQuota.add_member(:usage_metric, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricInfo, location_name: 'UsageMetric', traits: {"smithy.api#documentation" => "<p>Information about the measurement.</p>"}))
    ServiceQuota.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaPeriod, location_name: 'Period', traits: {"smithy.api#documentation" => "<p>The period of time.</p>"}))
    ServiceQuota.add_member(:error_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReason, location_name: 'ErrorReason', traits: {"smithy.api#documentation" => "<p>The error code and error reason.</p>"}))
    ServiceQuota.add_member(:quota_applied_at_level, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedLevelEnum, location_name: 'QuotaAppliedAtLevel', traits: {"smithy.api#documentation" => "<p>Filters the response to return applied quota values for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>"}))
    ServiceQuota.add_member(:quota_context, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaContextInfo, location_name: 'QuotaContext', traits: {"smithy.api#documentation" => "<p>The context for this service quota.</p>"}))
    ServiceQuota.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The quota description. </p>"}))
    ServiceQuota.type = Types::ServiceQuota
    ServiceQuotaIncreaseRequestInTemplate.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Specifies the service identifier. To find the service code value \n             for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>"}))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>Specifies the service name.</p>"}))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>Specifies the quota identifier. To find the quota code for a specific \n             quota, use the <a>ListServiceQuotas</a> operation, and look for the\n             <code>QuotaCode</code> response in the output for the quota you want.</p>"}))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:quota_name, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaName, location_name: 'QuotaName', traits: {"smithy.api#documentation" => "<p>Specifies the quota name.</p>"}))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:desired_value, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaValue, location_name: 'DesiredValue', traits: {"smithy.api#documentation" => "<p>The new, increased value of the quota.</p>"}))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'AwsRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>"}))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaUnit, location_name: 'Unit', traits: {"smithy.api#documentation" => "<p>The unit of measurement.</p>"}))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:global_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalQuota, location_name: 'GlobalQuota', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the quota is global.</p>"}))
    ServiceQuotaIncreaseRequestInTemplate.type = Types::ServiceQuotaIncreaseRequestInTemplate
    ServiceQuotaIncreaseRequestInTemplateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate)
    ServiceQuotaListDefinition.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuota)
    ServiceQuotaTemplateAssociationStatus.add_member(:associated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED', traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    ServiceQuotaTemplateAssociationStatus.add_member(:disassociated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISASSOCIATED', traits: {"smithy.api#enumValue" => "DISASSOCIATED"}))
    ServiceQuotaTemplateNotInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ServiceQuotaTemplateNotInUseException.type = Types::ServiceQuotaTemplateNotInUseException
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>A string that contains a tag key. The string length should be between 1 and 128\n            characters. Valid characters include a-z, A-Z, 0-9, space, and the special characters _\n            - . : / = + @.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A string that contains an optional tag value. The string length should be between 0\n            and 256 characters. Valid characters include a-z, A-Z, 0-9, space, and the special\n            characters _ - . : / = + @.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagPolicyViolationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TagPolicyViolationException.type = Types::TagPolicyViolationException
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the applied quota. You can get this information by\n            using the Service Quotas console, or by listing the quotas using the <a href=\"https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html\">list-service-quotas</a> CLI command or the <a href=\"https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html\">ListServiceQuotas</a> Amazon Web Services API operation.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that you want to add to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TemplatesNotAvailableInRegionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TemplatesNotAvailableInRegionException.type = Types::TemplatesNotAvailableInRegionException
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the applied quota that you want to untag. You can\n            get this information by using the Service Quotas console, or by listing the quotas using the\n            <a href=\"https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html\">list-service-quotas</a> CLI command or the <a href=\"https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html\">ListServiceQuotas</a> Amazon Web Services API operation.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags that you want to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse

    ServiceQuotasV20190624 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.servicequotas#ServiceQuotasV20190624"
      service.name = "ServiceQuotasV20190624"
      service.version = "2019-06-24"
      service.traits = {"aws.api#service" => {"sdkId" => "Service Quotas", "arnNamespace" => "servicequotas", "cloudFormationName" => "ServiceQuotas", "cloudTrailEventSource" => "servicequotas.amazonaws.com", "endpointPrefix" => "servicequotas"}, "aws.auth#sigv4" => {"name" => "servicequotas"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Service Quotas"}
      service.add_operation(:associate_service_quota_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#AssociateServiceQuotaTemplate"
        operation.name = "AssociateServiceQuotaTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceQuotaTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateServiceQuotaTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:create_support_case, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#CreateSupportCase"
        operation.name = "CreateSupportCase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSupportCaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSupportCaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_service_quota_increase_request_from_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#DeleteServiceQuotaIncreaseRequestFromTemplate"
        operation.name = "DeleteServiceQuotaIncreaseRequestFromTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceQuotaIncreaseRequestFromTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServiceQuotaIncreaseRequestFromTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_service_quota_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#DisassociateServiceQuotaTemplate"
        operation.name = "DisassociateServiceQuotaTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceQuotaTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateServiceQuotaTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaTemplateNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_aws_default_service_quota, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetAWSDefaultServiceQuota"
        operation.name = "GetAWSDefaultServiceQuota"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAWSDefaultServiceQuotaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAWSDefaultServiceQuotaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_association_for_service_quota_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetAssociationForServiceQuotaTemplate"
        operation.name = "GetAssociationForServiceQuotaTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociationForServiceQuotaTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociationForServiceQuotaTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaTemplateNotInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_requested_service_quota_change, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetRequestedServiceQuotaChange"
        operation.name = "GetRequestedServiceQuotaChange"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRequestedServiceQuotaChangeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRequestedServiceQuotaChangeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_service_quota, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetServiceQuota"
        operation.name = "GetServiceQuota"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceQuotaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceQuotaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:get_service_quota_increase_request_from_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#GetServiceQuotaIncreaseRequestFromTemplate"
        operation.name = "GetServiceQuotaIncreaseRequestFromTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceQuotaIncreaseRequestFromTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServiceQuotaIncreaseRequestFromTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_aws_default_service_quotas, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListAWSDefaultServiceQuotas"
        operation.name = "ListAWSDefaultServiceQuotas"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAWSDefaultServiceQuotasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAWSDefaultServiceQuotasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAWSDefaultServiceQuotas.new
      end)
      service.add_operation(:list_requested_service_quota_change_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistory"
        operation.name = "ListRequestedServiceQuotaChangeHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRequestedServiceQuotaChangeHistory.new
      end)
      service.add_operation(:list_requested_service_quota_change_history_by_quota, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListRequestedServiceQuotaChangeHistoryByQuota"
        operation.name = "ListRequestedServiceQuotaChangeHistoryByQuota"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryByQuotaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryByQuotaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRequestedServiceQuotaChangeHistoryByQuota.new
      end)
      service.add_operation(:list_service_quota_increase_requests_in_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListServiceQuotaIncreaseRequestsInTemplate"
        operation.name = "ListServiceQuotaIncreaseRequestsInTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceQuotaIncreaseRequestsInTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceQuotaIncreaseRequestsInTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServiceQuotaIncreaseRequestsInTemplate.new
      end)
      service.add_operation(:list_service_quotas, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListServiceQuotas"
        operation.name = "ListServiceQuotas"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceQuotasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServiceQuotasResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServiceQuotas.new
      end)
      service.add_operation(:list_services, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListServices"
        operation.name = "ListServices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:put_service_quota_increase_request_into_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#PutServiceQuotaIncreaseRequestIntoTemplate"
        operation.name = "PutServiceQuotaIncreaseRequestIntoTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutServiceQuotaIncreaseRequestIntoTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutServiceQuotaIncreaseRequestIntoTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:request_service_quota_increase, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#RequestServiceQuotaIncrease"
        operation.name = "RequestServiceQuotaIncrease"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestServiceQuotaIncreaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RequestServiceQuotaIncreaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicequotas#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
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
