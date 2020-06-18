# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServiceQuotas
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSServiceAccessNotEnabledException = Shapes::StructureShape.new(name: 'AWSServiceAccessNotEnabledException')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssociateServiceQuotaTemplateRequest = Shapes::StructureShape.new(name: 'AssociateServiceQuotaTemplateRequest')
    AssociateServiceQuotaTemplateResponse = Shapes::StructureShape.new(name: 'AssociateServiceQuotaTemplateResponse')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    CustomerServiceEngagementId = Shapes::StringShape.new(name: 'CustomerServiceEngagementId')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest = Shapes::StructureShape.new(name: 'DeleteServiceQuotaIncreaseRequestFromTemplateRequest')
    DeleteServiceQuotaIncreaseRequestFromTemplateResponse = Shapes::StructureShape.new(name: 'DeleteServiceQuotaIncreaseRequestFromTemplateResponse')
    DependencyAccessDeniedException = Shapes::StructureShape.new(name: 'DependencyAccessDeniedException')
    DisassociateServiceQuotaTemplateRequest = Shapes::StructureShape.new(name: 'DisassociateServiceQuotaTemplateRequest')
    DisassociateServiceQuotaTemplateResponse = Shapes::StructureShape.new(name: 'DisassociateServiceQuotaTemplateResponse')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorReason = Shapes::StructureShape.new(name: 'ErrorReason')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    GetAWSDefaultServiceQuotaRequest = Shapes::StructureShape.new(name: 'GetAWSDefaultServiceQuotaRequest')
    GetAWSDefaultServiceQuotaResponse = Shapes::StructureShape.new(name: 'GetAWSDefaultServiceQuotaResponse')
    GetAssociationForServiceQuotaTemplateRequest = Shapes::StructureShape.new(name: 'GetAssociationForServiceQuotaTemplateRequest')
    GetAssociationForServiceQuotaTemplateResponse = Shapes::StructureShape.new(name: 'GetAssociationForServiceQuotaTemplateResponse')
    GetRequestedServiceQuotaChangeRequest = Shapes::StructureShape.new(name: 'GetRequestedServiceQuotaChangeRequest')
    GetRequestedServiceQuotaChangeResponse = Shapes::StructureShape.new(name: 'GetRequestedServiceQuotaChangeResponse')
    GetServiceQuotaIncreaseRequestFromTemplateRequest = Shapes::StructureShape.new(name: 'GetServiceQuotaIncreaseRequestFromTemplateRequest')
    GetServiceQuotaIncreaseRequestFromTemplateResponse = Shapes::StructureShape.new(name: 'GetServiceQuotaIncreaseRequestFromTemplateResponse')
    GetServiceQuotaRequest = Shapes::StructureShape.new(name: 'GetServiceQuotaRequest')
    GetServiceQuotaResponse = Shapes::StructureShape.new(name: 'GetServiceQuotaResponse')
    GlobalQuota = Shapes::BooleanShape.new(name: 'GlobalQuota')
    IllegalArgumentException = Shapes::StructureShape.new(name: 'IllegalArgumentException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidResourceStateException = Shapes::StructureShape.new(name: 'InvalidResourceStateException')
    ListAWSDefaultServiceQuotasRequest = Shapes::StructureShape.new(name: 'ListAWSDefaultServiceQuotasRequest')
    ListAWSDefaultServiceQuotasResponse = Shapes::StructureShape.new(name: 'ListAWSDefaultServiceQuotasResponse')
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest = Shapes::StructureShape.new(name: 'ListRequestedServiceQuotaChangeHistoryByQuotaRequest')
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse = Shapes::StructureShape.new(name: 'ListRequestedServiceQuotaChangeHistoryByQuotaResponse')
    ListRequestedServiceQuotaChangeHistoryRequest = Shapes::StructureShape.new(name: 'ListRequestedServiceQuotaChangeHistoryRequest')
    ListRequestedServiceQuotaChangeHistoryResponse = Shapes::StructureShape.new(name: 'ListRequestedServiceQuotaChangeHistoryResponse')
    ListServiceQuotaIncreaseRequestsInTemplateRequest = Shapes::StructureShape.new(name: 'ListServiceQuotaIncreaseRequestsInTemplateRequest')
    ListServiceQuotaIncreaseRequestsInTemplateResponse = Shapes::StructureShape.new(name: 'ListServiceQuotaIncreaseRequestsInTemplateResponse')
    ListServiceQuotasRequest = Shapes::StructureShape.new(name: 'ListServiceQuotasRequest')
    ListServiceQuotasResponse = Shapes::StructureShape.new(name: 'ListServiceQuotasResponse')
    ListServicesRequest = Shapes::StructureShape.new(name: 'ListServicesRequest')
    ListServicesResponse = Shapes::StructureShape.new(name: 'ListServicesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricDimensionName = Shapes::StringShape.new(name: 'MetricDimensionName')
    MetricDimensionValue = Shapes::StringShape.new(name: 'MetricDimensionValue')
    MetricDimensionsMapDefinition = Shapes::MapShape.new(name: 'MetricDimensionsMapDefinition')
    MetricInfo = Shapes::StructureShape.new(name: 'MetricInfo')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoAvailableOrganizationException = Shapes::StructureShape.new(name: 'NoAvailableOrganizationException')
    NoSuchResourceException = Shapes::StructureShape.new(name: 'NoSuchResourceException')
    OrganizationNotInAllFeaturesModeException = Shapes::StructureShape.new(name: 'OrganizationNotInAllFeaturesModeException')
    PeriodUnit = Shapes::StringShape.new(name: 'PeriodUnit')
    PeriodValue = Shapes::IntegerShape.new(name: 'PeriodValue')
    PutServiceQuotaIncreaseRequestIntoTemplateRequest = Shapes::StructureShape.new(name: 'PutServiceQuotaIncreaseRequestIntoTemplateRequest')
    PutServiceQuotaIncreaseRequestIntoTemplateResponse = Shapes::StructureShape.new(name: 'PutServiceQuotaIncreaseRequestIntoTemplateResponse')
    QuotaAdjustable = Shapes::BooleanShape.new(name: 'QuotaAdjustable')
    QuotaArn = Shapes::StringShape.new(name: 'QuotaArn')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    QuotaExceededException = Shapes::StructureShape.new(name: 'QuotaExceededException')
    QuotaMetricName = Shapes::StringShape.new(name: 'QuotaMetricName')
    QuotaMetricNamespace = Shapes::StringShape.new(name: 'QuotaMetricNamespace')
    QuotaName = Shapes::StringShape.new(name: 'QuotaName')
    QuotaPeriod = Shapes::StructureShape.new(name: 'QuotaPeriod')
    QuotaUnit = Shapes::StringShape.new(name: 'QuotaUnit')
    QuotaValue = Shapes::FloatShape.new(name: 'QuotaValue')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    RequestServiceQuotaIncreaseRequest = Shapes::StructureShape.new(name: 'RequestServiceQuotaIncreaseRequest')
    RequestServiceQuotaIncreaseResponse = Shapes::StructureShape.new(name: 'RequestServiceQuotaIncreaseResponse')
    RequestStatus = Shapes::StringShape.new(name: 'RequestStatus')
    RequestedServiceQuotaChange = Shapes::StructureShape.new(name: 'RequestedServiceQuotaChange')
    RequestedServiceQuotaChangeHistoryListDefinition = Shapes::ListShape.new(name: 'RequestedServiceQuotaChangeHistoryListDefinition')
    Requester = Shapes::StringShape.new(name: 'Requester')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceInfo = Shapes::StructureShape.new(name: 'ServiceInfo')
    ServiceInfoListDefinition = Shapes::ListShape.new(name: 'ServiceInfoListDefinition')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceQuota = Shapes::StructureShape.new(name: 'ServiceQuota')
    ServiceQuotaIncreaseRequestInTemplate = Shapes::StructureShape.new(name: 'ServiceQuotaIncreaseRequestInTemplate')
    ServiceQuotaIncreaseRequestInTemplateList = Shapes::ListShape.new(name: 'ServiceQuotaIncreaseRequestInTemplateList')
    ServiceQuotaListDefinition = Shapes::ListShape.new(name: 'ServiceQuotaListDefinition')
    ServiceQuotaTemplateAssociationStatus = Shapes::StringShape.new(name: 'ServiceQuotaTemplateAssociationStatus')
    ServiceQuotaTemplateNotInUseException = Shapes::StructureShape.new(name: 'ServiceQuotaTemplateNotInUseException')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    TemplatesNotAvailableInRegionException = Shapes::StructureShape.new(name: 'TemplatesNotAvailableInRegionException')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')

    AWSServiceAccessNotEnabledException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AWSServiceAccessNotEnabledException.struct_class = Types::AWSServiceAccessNotEnabledException

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateServiceQuotaTemplateRequest.struct_class = Types::AssociateServiceQuotaTemplateRequest

    AssociateServiceQuotaTemplateResponse.struct_class = Types::AssociateServiceQuotaTemplateResponse

    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "QuotaCode"))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "AwsRegion"))
    DeleteServiceQuotaIncreaseRequestFromTemplateRequest.struct_class = Types::DeleteServiceQuotaIncreaseRequestFromTemplateRequest

    DeleteServiceQuotaIncreaseRequestFromTemplateResponse.struct_class = Types::DeleteServiceQuotaIncreaseRequestFromTemplateResponse

    DependencyAccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DependencyAccessDeniedException.struct_class = Types::DependencyAccessDeniedException

    DisassociateServiceQuotaTemplateRequest.struct_class = Types::DisassociateServiceQuotaTemplateRequest

    DisassociateServiceQuotaTemplateResponse.struct_class = Types::DisassociateServiceQuotaTemplateResponse

    ErrorReason.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    ErrorReason.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    ErrorReason.struct_class = Types::ErrorReason

    GetAWSDefaultServiceQuotaRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    GetAWSDefaultServiceQuotaRequest.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "QuotaCode"))
    GetAWSDefaultServiceQuotaRequest.struct_class = Types::GetAWSDefaultServiceQuotaRequest

    GetAWSDefaultServiceQuotaResponse.add_member(:quota, Shapes::ShapeRef.new(shape: ServiceQuota, location_name: "Quota"))
    GetAWSDefaultServiceQuotaResponse.struct_class = Types::GetAWSDefaultServiceQuotaResponse

    GetAssociationForServiceQuotaTemplateRequest.struct_class = Types::GetAssociationForServiceQuotaTemplateRequest

    GetAssociationForServiceQuotaTemplateResponse.add_member(:service_quota_template_association_status, Shapes::ShapeRef.new(shape: ServiceQuotaTemplateAssociationStatus, location_name: "ServiceQuotaTemplateAssociationStatus"))
    GetAssociationForServiceQuotaTemplateResponse.struct_class = Types::GetAssociationForServiceQuotaTemplateResponse

    GetRequestedServiceQuotaChangeRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, required: true, location_name: "RequestId"))
    GetRequestedServiceQuotaChangeRequest.struct_class = Types::GetRequestedServiceQuotaChangeRequest

    GetRequestedServiceQuotaChangeResponse.add_member(:requested_quota, Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange, location_name: "RequestedQuota"))
    GetRequestedServiceQuotaChangeResponse.struct_class = Types::GetRequestedServiceQuotaChangeResponse

    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "QuotaCode"))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "AwsRegion"))
    GetServiceQuotaIncreaseRequestFromTemplateRequest.struct_class = Types::GetServiceQuotaIncreaseRequestFromTemplateRequest

    GetServiceQuotaIncreaseRequestFromTemplateResponse.add_member(:service_quota_increase_request_in_template, Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate, location_name: "ServiceQuotaIncreaseRequestInTemplate"))
    GetServiceQuotaIncreaseRequestFromTemplateResponse.struct_class = Types::GetServiceQuotaIncreaseRequestFromTemplateResponse

    GetServiceQuotaRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    GetServiceQuotaRequest.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "QuotaCode"))
    GetServiceQuotaRequest.struct_class = Types::GetServiceQuotaRequest

    GetServiceQuotaResponse.add_member(:quota, Shapes::ShapeRef.new(shape: ServiceQuota, location_name: "Quota"))
    GetServiceQuotaResponse.struct_class = Types::GetServiceQuotaResponse

    IllegalArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    IllegalArgumentException.struct_class = Types::IllegalArgumentException

    InvalidPaginationTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    InvalidResourceStateException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidResourceStateException.struct_class = Types::InvalidResourceStateException

    ListAWSDefaultServiceQuotasRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    ListAWSDefaultServiceQuotasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAWSDefaultServiceQuotasRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAWSDefaultServiceQuotasRequest.struct_class = Types::ListAWSDefaultServiceQuotasRequest

    ListAWSDefaultServiceQuotasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAWSDefaultServiceQuotasResponse.add_member(:quotas, Shapes::ShapeRef.new(shape: ServiceQuotaListDefinition, location_name: "Quotas"))
    ListAWSDefaultServiceQuotasResponse.struct_class = Types::ListAWSDefaultServiceQuotasResponse

    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "QuotaCode"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:status, Shapes::ShapeRef.new(shape: RequestStatus, location_name: "Status"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRequestedServiceQuotaChangeHistoryByQuotaRequest.struct_class = Types::ListRequestedServiceQuotaChangeHistoryByQuotaRequest

    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.add_member(:requested_quotas, Shapes::ShapeRef.new(shape: RequestedServiceQuotaChangeHistoryListDefinition, location_name: "RequestedQuotas"))
    ListRequestedServiceQuotaChangeHistoryByQuotaResponse.struct_class = Types::ListRequestedServiceQuotaChangeHistoryByQuotaResponse

    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:status, Shapes::ShapeRef.new(shape: RequestStatus, location_name: "Status"))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRequestedServiceQuotaChangeHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRequestedServiceQuotaChangeHistoryRequest.struct_class = Types::ListRequestedServiceQuotaChangeHistoryRequest

    ListRequestedServiceQuotaChangeHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRequestedServiceQuotaChangeHistoryResponse.add_member(:requested_quotas, Shapes::ShapeRef.new(shape: RequestedServiceQuotaChangeHistoryListDefinition, location_name: "RequestedQuotas"))
    ListRequestedServiceQuotaChangeHistoryResponse.struct_class = Types::ListRequestedServiceQuotaChangeHistoryResponse

    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListServiceQuotaIncreaseRequestsInTemplateRequest.struct_class = Types::ListServiceQuotaIncreaseRequestsInTemplateRequest

    ListServiceQuotaIncreaseRequestsInTemplateResponse.add_member(:service_quota_increase_request_in_template_list, Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplateList, location_name: "ServiceQuotaIncreaseRequestInTemplateList"))
    ListServiceQuotaIncreaseRequestsInTemplateResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceQuotaIncreaseRequestsInTemplateResponse.struct_class = Types::ListServiceQuotaIncreaseRequestsInTemplateResponse

    ListServiceQuotasRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    ListServiceQuotasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceQuotasRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListServiceQuotasRequest.struct_class = Types::ListServiceQuotasRequest

    ListServiceQuotasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServiceQuotasResponse.add_member(:quotas, Shapes::ShapeRef.new(shape: ServiceQuotaListDefinition, location_name: "Quotas"))
    ListServiceQuotasResponse.struct_class = Types::ListServiceQuotasResponse

    ListServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListServicesRequest.struct_class = Types::ListServicesRequest

    ListServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicesResponse.add_member(:services, Shapes::ShapeRef.new(shape: ServiceInfoListDefinition, location_name: "Services"))
    ListServicesResponse.struct_class = Types::ListServicesResponse

    MetricDimensionsMapDefinition.key = Shapes::ShapeRef.new(shape: MetricDimensionName)
    MetricDimensionsMapDefinition.value = Shapes::ShapeRef.new(shape: MetricDimensionValue)

    MetricInfo.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: QuotaMetricNamespace, location_name: "MetricNamespace"))
    MetricInfo.add_member(:metric_name, Shapes::ShapeRef.new(shape: QuotaMetricName, location_name: "MetricName"))
    MetricInfo.add_member(:metric_dimensions, Shapes::ShapeRef.new(shape: MetricDimensionsMapDefinition, location_name: "MetricDimensions"))
    MetricInfo.add_member(:metric_statistic_recommendation, Shapes::ShapeRef.new(shape: Statistic, location_name: "MetricStatisticRecommendation"))
    MetricInfo.struct_class = Types::MetricInfo

    NoAvailableOrganizationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    NoAvailableOrganizationException.struct_class = Types::NoAvailableOrganizationException

    NoSuchResourceException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    NoSuchResourceException.struct_class = Types::NoSuchResourceException

    OrganizationNotInAllFeaturesModeException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    OrganizationNotInAllFeaturesModeException.struct_class = Types::OrganizationNotInAllFeaturesModeException

    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "QuotaCode"))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "AwsRegion"))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.add_member(:desired_value, Shapes::ShapeRef.new(shape: QuotaValue, required: true, location_name: "DesiredValue"))
    PutServiceQuotaIncreaseRequestIntoTemplateRequest.struct_class = Types::PutServiceQuotaIncreaseRequestIntoTemplateRequest

    PutServiceQuotaIncreaseRequestIntoTemplateResponse.add_member(:service_quota_increase_request_in_template, Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate, location_name: "ServiceQuotaIncreaseRequestInTemplate"))
    PutServiceQuotaIncreaseRequestIntoTemplateResponse.struct_class = Types::PutServiceQuotaIncreaseRequestIntoTemplateResponse

    QuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    QuotaExceededException.struct_class = Types::QuotaExceededException

    QuotaPeriod.add_member(:period_value, Shapes::ShapeRef.new(shape: PeriodValue, location_name: "PeriodValue"))
    QuotaPeriod.add_member(:period_unit, Shapes::ShapeRef.new(shape: PeriodUnit, location_name: "PeriodUnit"))
    QuotaPeriod.struct_class = Types::QuotaPeriod

    RequestServiceQuotaIncreaseRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    RequestServiceQuotaIncreaseRequest.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "QuotaCode"))
    RequestServiceQuotaIncreaseRequest.add_member(:desired_value, Shapes::ShapeRef.new(shape: QuotaValue, required: true, location_name: "DesiredValue"))
    RequestServiceQuotaIncreaseRequest.struct_class = Types::RequestServiceQuotaIncreaseRequest

    RequestServiceQuotaIncreaseResponse.add_member(:requested_quota, Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange, location_name: "RequestedQuota"))
    RequestServiceQuotaIncreaseResponse.struct_class = Types::RequestServiceQuotaIncreaseResponse

    RequestedServiceQuotaChange.add_member(:id, Shapes::ShapeRef.new(shape: RequestId, location_name: "Id"))
    RequestedServiceQuotaChange.add_member(:case_id, Shapes::ShapeRef.new(shape: CustomerServiceEngagementId, location_name: "CaseId"))
    RequestedServiceQuotaChange.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    RequestedServiceQuotaChange.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    RequestedServiceQuotaChange.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    RequestedServiceQuotaChange.add_member(:quota_name, Shapes::ShapeRef.new(shape: QuotaName, location_name: "QuotaName"))
    RequestedServiceQuotaChange.add_member(:desired_value, Shapes::ShapeRef.new(shape: QuotaValue, location_name: "DesiredValue"))
    RequestedServiceQuotaChange.add_member(:status, Shapes::ShapeRef.new(shape: RequestStatus, location_name: "Status"))
    RequestedServiceQuotaChange.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    RequestedServiceQuotaChange.add_member(:last_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    RequestedServiceQuotaChange.add_member(:requester, Shapes::ShapeRef.new(shape: Requester, location_name: "Requester"))
    RequestedServiceQuotaChange.add_member(:quota_arn, Shapes::ShapeRef.new(shape: QuotaArn, location_name: "QuotaArn"))
    RequestedServiceQuotaChange.add_member(:global_quota, Shapes::ShapeRef.new(shape: GlobalQuota, location_name: "GlobalQuota"))
    RequestedServiceQuotaChange.add_member(:unit, Shapes::ShapeRef.new(shape: QuotaUnit, location_name: "Unit"))
    RequestedServiceQuotaChange.struct_class = Types::RequestedServiceQuotaChange

    RequestedServiceQuotaChangeHistoryListDefinition.member = Shapes::ShapeRef.new(shape: RequestedServiceQuotaChange)

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceInfo.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ServiceInfo.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    ServiceInfo.struct_class = Types::ServiceInfo

    ServiceInfoListDefinition.member = Shapes::ShapeRef.new(shape: ServiceInfo)

    ServiceQuota.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ServiceQuota.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    ServiceQuota.add_member(:quota_arn, Shapes::ShapeRef.new(shape: QuotaArn, location_name: "QuotaArn"))
    ServiceQuota.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    ServiceQuota.add_member(:quota_name, Shapes::ShapeRef.new(shape: QuotaName, location_name: "QuotaName"))
    ServiceQuota.add_member(:value, Shapes::ShapeRef.new(shape: QuotaValue, location_name: "Value"))
    ServiceQuota.add_member(:unit, Shapes::ShapeRef.new(shape: QuotaUnit, location_name: "Unit"))
    ServiceQuota.add_member(:adjustable, Shapes::ShapeRef.new(shape: QuotaAdjustable, location_name: "Adjustable"))
    ServiceQuota.add_member(:global_quota, Shapes::ShapeRef.new(shape: GlobalQuota, location_name: "GlobalQuota"))
    ServiceQuota.add_member(:usage_metric, Shapes::ShapeRef.new(shape: MetricInfo, location_name: "UsageMetric"))
    ServiceQuota.add_member(:period, Shapes::ShapeRef.new(shape: QuotaPeriod, location_name: "Period"))
    ServiceQuota.add_member(:error_reason, Shapes::ShapeRef.new(shape: ErrorReason, location_name: "ErrorReason"))
    ServiceQuota.struct_class = Types::ServiceQuota

    ServiceQuotaIncreaseRequestInTemplate.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "ServiceName"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:quota_name, Shapes::ShapeRef.new(shape: QuotaName, location_name: "QuotaName"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:desired_value, Shapes::ShapeRef.new(shape: QuotaValue, location_name: "DesiredValue"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:unit, Shapes::ShapeRef.new(shape: QuotaUnit, location_name: "Unit"))
    ServiceQuotaIncreaseRequestInTemplate.add_member(:global_quota, Shapes::ShapeRef.new(shape: GlobalQuota, location_name: "GlobalQuota"))
    ServiceQuotaIncreaseRequestInTemplate.struct_class = Types::ServiceQuotaIncreaseRequestInTemplate

    ServiceQuotaIncreaseRequestInTemplateList.member = Shapes::ShapeRef.new(shape: ServiceQuotaIncreaseRequestInTemplate)

    ServiceQuotaListDefinition.member = Shapes::ShapeRef.new(shape: ServiceQuota)

    ServiceQuotaTemplateNotInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceQuotaTemplateNotInUseException.struct_class = Types::ServiceQuotaTemplateNotInUseException

    TemplatesNotAvailableInRegionException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TemplatesNotAvailableInRegionException.struct_class = Types::TemplatesNotAvailableInRegionException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-06-24"

      api.metadata = {
        "apiVersion" => "2019-06-24",
        "endpointPrefix" => "servicequotas",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Service Quotas",
        "serviceId" => "Service Quotas",
        "signatureVersion" => "v4",
        "targetPrefix" => "ServiceQuotasV20190624",
        "uid" => "service-quotas-2019-06-24",
      }

      api.add_operation(:associate_service_quota_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateServiceQuotaTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateServiceQuotaTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateServiceQuotaTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotInAllFeaturesModeException)
        o.errors << Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
      end)

      api.add_operation(:delete_service_quota_increase_request_from_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceQuotaIncreaseRequestFromTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceQuotaIncreaseRequestFromTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceQuotaIncreaseRequestFromTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
      end)

      api.add_operation(:disassociate_service_quota_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateServiceQuotaTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateServiceQuotaTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateServiceQuotaTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaTemplateNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
      end)

      api.add_operation(:get_aws_default_service_quota, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAWSDefaultServiceQuota"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAWSDefaultServiceQuotaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAWSDefaultServiceQuotaResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_association_for_service_quota_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssociationForServiceQuotaTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAssociationForServiceQuotaTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssociationForServiceQuotaTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaTemplateNotInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
      end)

      api.add_operation(:get_requested_service_quota_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRequestedServiceQuotaChange"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRequestedServiceQuotaChangeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRequestedServiceQuotaChangeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_service_quota, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceQuota"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceQuotaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceQuotaResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_service_quota_increase_request_from_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceQuotaIncreaseRequestFromTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceQuotaIncreaseRequestFromTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceQuotaIncreaseRequestFromTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
      end)

      api.add_operation(:list_aws_default_service_quotas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAWSDefaultServiceQuotas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAWSDefaultServiceQuotasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAWSDefaultServiceQuotasResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_requested_service_quota_change_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRequestedServiceQuotaChangeHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_requested_service_quota_change_history_by_quota, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRequestedServiceQuotaChangeHistoryByQuota"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryByQuotaRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRequestedServiceQuotaChangeHistoryByQuotaResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_quota_increase_requests_in_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceQuotaIncreaseRequestsInTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceQuotaIncreaseRequestsInTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceQuotaIncreaseRequestsInTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_quotas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceQuotas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceQuotasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceQuotasResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_service_quota_increase_request_into_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutServiceQuotaIncreaseRequestIntoTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutServiceQuotaIncreaseRequestIntoTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: PutServiceQuotaIncreaseRequestIntoTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: QuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: AWSServiceAccessNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: TemplatesNotAvailableInRegionException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
      end)

      api.add_operation(:request_service_quota_increase, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestServiceQuotaIncrease"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestServiceQuotaIncreaseRequest)
        o.output = Shapes::ShapeRef.new(shape: RequestServiceQuotaIncreaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: DependencyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: QuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchResourceException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
