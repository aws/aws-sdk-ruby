# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServiceQuotas
  module Types

    # The action you attempted is not allowed unless Service Access with
    # Service Quotas is enabled in your organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/AWSServiceAccessNotEnabledException AWS API Documentation
    #
    class AWSServiceAccessNotEnabledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/AssociateServiceQuotaTemplateRequest AWS API Documentation
    #
    class AssociateServiceQuotaTemplateRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/AssociateServiceQuotaTemplateResponse AWS API Documentation
    #
    class AssociateServiceQuotaTemplateResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DeleteServiceQuotaIncreaseRequestFromTemplateRequest AWS API Documentation
    #
    class DeleteServiceQuotaIncreaseRequestFromTemplateRequest < Struct.new(
      :service_code,
      :quota_code,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DeleteServiceQuotaIncreaseRequestFromTemplateResponse AWS API Documentation
    #
    class DeleteServiceQuotaIncreaseRequestFromTemplateResponse < Aws::EmptyStructure; end

    # You can't perform this action because a dependency does not have
    # access.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DependencyAccessDeniedException AWS API Documentation
    #
    class DependencyAccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DisassociateServiceQuotaTemplateRequest AWS API Documentation
    #
    class DisassociateServiceQuotaTemplateRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/DisassociateServiceQuotaTemplateResponse AWS API Documentation
    #
    class DisassociateServiceQuotaTemplateResponse < Aws::EmptyStructure; end

    # An error that explains why an action did not succeed.
    #
    # @!attribute [rw] error_code
    #   Service Quotas returns the following error values:
    #
    #   * `DEPENDENCY_ACCESS_DENIED_ERROR` - The caller does not have the
    #     required permissions to complete the action. To resolve the error,
    #     you must have permission to access the service or quota.
    #
    #   * `DEPENDENCY_THROTTLING_ERROR` - The service is throttling Service
    #     Quotas.
    #
    #   * `DEPENDENCY_SERVICE_ERROR` - The service is not available.
    #
    #   * `SERVICE_QUOTA_NOT_AVAILABLE_ERROR` - There was an error in
    #     Service Quotas.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ErrorReason AWS API Documentation
    #
    class ErrorReason < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAWSDefaultServiceQuotaRequest AWS API Documentation
    #
    class GetAWSDefaultServiceQuotaRequest < Struct.new(
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quota
    #   Information about the quota.
    #   @return [Types::ServiceQuota]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAWSDefaultServiceQuotaResponse AWS API Documentation
    #
    class GetAWSDefaultServiceQuotaResponse < Struct.new(
      :quota)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAssociationForServiceQuotaTemplateRequest AWS API Documentation
    #
    class GetAssociationForServiceQuotaTemplateRequest < Aws::EmptyStructure; end

    # @!attribute [rw] service_quota_template_association_status
    #   The association status. If the status is `ASSOCIATED`, the quota
    #   increase requests in the template are automatically applied to new
    #   accounts in your organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAssociationForServiceQuotaTemplateResponse AWS API Documentation
    #
    class GetAssociationForServiceQuotaTemplateResponse < Struct.new(
      :service_quota_template_association_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The ID of the quota increase request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetRequestedServiceQuotaChangeRequest AWS API Documentation
    #
    class GetRequestedServiceQuotaChangeRequest < Struct.new(
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] requested_quota
    #   Information about the quota increase request.
    #   @return [Types::RequestedServiceQuotaChange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetRequestedServiceQuotaChangeResponse AWS API Documentation
    #
    class GetRequestedServiceQuotaChangeResponse < Struct.new(
      :requested_quota)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuotaIncreaseRequestFromTemplateRequest AWS API Documentation
    #
    class GetServiceQuotaIncreaseRequestFromTemplateRequest < Struct.new(
      :service_code,
      :quota_code,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_quota_increase_request_in_template
    #   Information about the quota increase request.
    #   @return [Types::ServiceQuotaIncreaseRequestInTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuotaIncreaseRequestFromTemplateResponse AWS API Documentation
    #
    class GetServiceQuotaIncreaseRequestFromTemplateResponse < Struct.new(
      :service_quota_increase_request_in_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuotaRequest AWS API Documentation
    #
    class GetServiceQuotaRequest < Struct.new(
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quota
    #   Information about the quota.
    #   @return [Types::ServiceQuota]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuotaResponse AWS API Documentation
    #
    class GetServiceQuotaResponse < Struct.new(
      :quota)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invalid input was provided.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/IllegalArgumentException AWS API Documentation
    #
    class IllegalArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invalid input was provided.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/InvalidPaginationTokenException AWS API Documentation
    #
    class InvalidPaginationTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is in an invalid state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/InvalidResourceStateException AWS API Documentation
    #
    class InvalidResourceStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, if any, make another call with the
    #   token returned from this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListAWSDefaultServiceQuotasRequest AWS API Documentation
    #
    class ListAWSDefaultServiceQuotasRequest < Struct.new(
      :service_code,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] quotas
    #   Information about the quotas.
    #   @return [Array<Types::ServiceQuota>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListAWSDefaultServiceQuotasResponse AWS API Documentation
    #
    class ListAWSDefaultServiceQuotasResponse < Struct.new(
      :next_token,
      :quotas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status value of the quota increase request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, if any, make another call with the
    #   token returned from this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistoryByQuotaRequest AWS API Documentation
    #
    class ListRequestedServiceQuotaChangeHistoryByQuotaRequest < Struct.new(
      :service_code,
      :quota_code,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] requested_quotas
    #   Information about the quota increase requests.
    #   @return [Array<Types::RequestedServiceQuotaChange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistoryByQuotaResponse AWS API Documentation
    #
    class ListRequestedServiceQuotaChangeHistoryByQuotaResponse < Struct.new(
      :next_token,
      :requested_quotas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the quota increase request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, if any, make another call with the
    #   token returned from this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistoryRequest AWS API Documentation
    #
    class ListRequestedServiceQuotaChangeHistoryRequest < Struct.new(
      :service_code,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] requested_quotas
    #   Information about the quota increase requests.
    #   @return [Array<Types::RequestedServiceQuotaChange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistoryResponse AWS API Documentation
    #
    class ListRequestedServiceQuotaChangeHistoryResponse < Struct.new(
      :next_token,
      :requested_quotas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, if any, make another call with the
    #   token returned from this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotaIncreaseRequestsInTemplateRequest AWS API Documentation
    #
    class ListServiceQuotaIncreaseRequestsInTemplateRequest < Struct.new(
      :service_code,
      :aws_region,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_quota_increase_request_in_template_list
    #   Information about the quota increase requests.
    #   @return [Array<Types::ServiceQuotaIncreaseRequestInTemplate>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotaIncreaseRequestsInTemplateResponse AWS API Documentation
    #
    class ListServiceQuotaIncreaseRequestsInTemplateResponse < Struct.new(
      :service_quota_increase_request_in_template_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, if any, make another call with the
    #   token returned from this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotasRequest AWS API Documentation
    #
    class ListServiceQuotasRequest < Struct.new(
      :service_code,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] quotas
    #   Information about the quotas.
    #   @return [Array<Types::ServiceQuota>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotasResponse AWS API Documentation
    #
    class ListServiceQuotasResponse < Struct.new(
      :next_token,
      :quotas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, if any, make another call with the
    #   token returned from this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServicesRequest AWS API Documentation
    #
    class ListServicesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] services
    #   Information about the services.
    #   @return [Array<Types::ServiceInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServicesResponse AWS API Documentation
    #
    class ListServicesResponse < Struct.new(
      :next_token,
      :services)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the applied quota for which you
    #   want to list tags. You can get this information by using the Service
    #   Quotas console, or by listing the quotas using the
    #   [list-service-quotas][1] AWS CLI command or the
    #   [ListServiceQuotas][2] AWS API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html
    #   [2]: https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A complex data type that contains zero or more tag elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the CloudWatch metric that reflects quota usage.
    #
    # @!attribute [rw] metric_namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_dimensions
    #   The metric dimension. This is a name/value pair that is part of the
    #   identity of a metric.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] metric_statistic_recommendation
    #   The metric statistic that we recommend you use when determining
    #   quota usage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/MetricInfo AWS API Documentation
    #
    class MetricInfo < Struct.new(
      :metric_namespace,
      :metric_name,
      :metric_dimensions,
      :metric_statistic_recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account making this call is not a member of an organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/NoAvailableOrganizationException AWS API Documentation
    #
    class NoAvailableOrganizationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/NoSuchResourceException AWS API Documentation
    #
    class NoSuchResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The organization that your account belongs to is not in All Features
    # mode.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/OrganizationNotInAllFeaturesModeException AWS API Documentation
    #
    class OrganizationNotInAllFeaturesModeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   The new, increased value for the quota.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/PutServiceQuotaIncreaseRequestIntoTemplateRequest AWS API Documentation
    #
    class PutServiceQuotaIncreaseRequestIntoTemplateRequest < Struct.new(
      :quota_code,
      :service_code,
      :aws_region,
      :desired_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_quota_increase_request_in_template
    #   Information about the quota increase request.
    #   @return [Types::ServiceQuotaIncreaseRequestInTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/PutServiceQuotaIncreaseRequestIntoTemplateResponse AWS API Documentation
    #
    class PutServiceQuotaIncreaseRequestIntoTemplateResponse < Struct.new(
      :service_quota_increase_request_in_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or use Service Quotas to
    # request a service quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/QuotaExceededException AWS API Documentation
    #
    class QuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the quota period.
    #
    # @!attribute [rw] period_value
    #   The value.
    #   @return [Integer]
    #
    # @!attribute [rw] period_unit
    #   The time unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/QuotaPeriod AWS API Documentation
    #
    class QuotaPeriod < Struct.new(
      :period_value,
      :period_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   The new, increased value for the quota.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/RequestServiceQuotaIncreaseRequest AWS API Documentation
    #
    class RequestServiceQuotaIncreaseRequest < Struct.new(
      :service_code,
      :quota_code,
      :desired_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] requested_quota
    #   Information about the quota increase request.
    #   @return [Types::RequestedServiceQuotaChange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/RequestServiceQuotaIncreaseResponse AWS API Documentation
    #
    class RequestServiceQuotaIncreaseResponse < Struct.new(
      :requested_quota)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a quota increase request.
    #
    # @!attribute [rw] id
    #   The unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] case_id
    #   The case ID.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The quota name.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   The new, increased value for the quota.
    #   @return [Float]
    #
    # @!attribute [rw] status
    #   The state of the quota increase request.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date and time when the quota increase request was received and
    #   the case ID was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The date and time of the most recent change.
    #   @return [Time]
    #
    # @!attribute [rw] requester
    #   The IAM identity of the requester.
    #   @return [String]
    #
    # @!attribute [rw] quota_arn
    #   The Amazon Resource Name (ARN) of the quota.
    #   @return [String]
    #
    # @!attribute [rw] global_quota
    #   Indicates whether the quota is global.
    #   @return [Boolean]
    #
    # @!attribute [rw] unit
    #   The unit of measurement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/RequestedServiceQuotaChange AWS API Documentation
    #
    class RequestedServiceQuotaChange < Struct.new(
      :id,
      :case_id,
      :service_code,
      :service_name,
      :quota_code,
      :quota_name,
      :desired_value,
      :status,
      :created,
      :last_updated,
      :requester,
      :quota_arn,
      :global_quota,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Something went wrong.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a service.
    #
    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ServiceInfo AWS API Documentation
    #
    class ServiceInfo < Struct.new(
      :service_code,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a quota.
    #
    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name.
    #   @return [String]
    #
    # @!attribute [rw] quota_arn
    #   The Amazon Resource Name (ARN) of the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The quota name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The quota value.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit of measurement.
    #   @return [String]
    #
    # @!attribute [rw] adjustable
    #   Indicates whether the quota value can be increased.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_quota
    #   Indicates whether the quota is global.
    #   @return [Boolean]
    #
    # @!attribute [rw] usage_metric
    #   Information about the measurement.
    #   @return [Types::MetricInfo]
    #
    # @!attribute [rw] period
    #   The period of time.
    #   @return [Types::QuotaPeriod]
    #
    # @!attribute [rw] error_reason
    #   The error code and error reason.
    #   @return [Types::ErrorReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ServiceQuota AWS API Documentation
    #
    class ServiceQuota < Struct.new(
      :service_code,
      :service_name,
      :quota_arn,
      :quota_code,
      :quota_name,
      :value,
      :unit,
      :adjustable,
      :global_quota,
      :usage_metric,
      :period,
      :error_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a quota increase request.
    #
    # @!attribute [rw] service_code
    #   The service identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The quota name.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   The new, increased value of the quota.
    #   @return [Float]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of measurement.
    #   @return [String]
    #
    # @!attribute [rw] global_quota
    #   Indicates whether the quota is global.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ServiceQuotaIncreaseRequestInTemplate AWS API Documentation
    #
    class ServiceQuotaIncreaseRequestInTemplate < Struct.new(
      :service_code,
      :service_name,
      :quota_code,
      :quota_name,
      :desired_value,
      :aws_region,
      :unit,
      :global_quota)
      SENSITIVE = []
      include Aws::Structure
    end

    # The quota request template is not associated with your organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ServiceQuotaTemplateNotInUseException AWS API Documentation
    #
    class ServiceQuotaTemplateNotInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex data type that contains a tag key and tag value.
    #
    # @!attribute [rw] key
    #   A string that contains a tag key. The string length should be
    #   between 1 and 128 characters. Valid characters include a-z, A-Z,
    #   0-9, space, and the special characters \_ - . : / = + @.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A string that contains an optional tag value. The string length
    #   should be between 0 and 256 characters. Valid characters include
    #   a-z, A-Z, 0-9, space, and the special characters \_ - . : / = + @.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified tag is a reserved word and cannot be used.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/TagPolicyViolationException AWS API Documentation
    #
    class TagPolicyViolationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the applied quota. You can get
    #   this information by using the Service Quotas console, or by listing
    #   the quotas using the [list-service-quotas][1] AWS CLI command or the
    #   [ListServiceQuotas][2] AWS API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html
    #   [2]: https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The Service Quotas template is not available in this AWS Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/TemplatesNotAvailableInRegionException AWS API Documentation
    #
    class TemplatesNotAvailableInRegionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Due to throttling, the request was denied. Slow down the rate of
    # request calls, or request an increase for this quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've exceeded the number of tags allowed for a resource. For more
    # information, see [Tag restrictions][1] in the *Service Quotas User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/sq-tagging.html#sq-tagging-restrictions
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the applied quota that you want
    #   to untag. You can get this information by using the Service Quotas
    #   console, or by listing the quotas using the [list-service-quotas][1]
    #   AWS CLI command or the [ListServiceQuotas][2] AWS API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html
    #   [2]: https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags that you want to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

  end
end
