# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServiceQuotas
  module Types

    # The action you attempted is not allowed unless Service Access with
    # Service Quotas is enabled in your organization. To enable, call
    # AssociateServiceQuotaTemplate.
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

    # You do not have sufficient access to perform this action.
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

    # @note When making an API call, you may pass DeleteServiceQuotaIncreaseRequestFromTemplateRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode", # required
    #         quota_code: "QuotaCode", # required
    #         aws_region: "AwsRegion", # required
    #       }
    #
    # @!attribute [rw] service_code
    #   Specifies the code for the service that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the code for the quota that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Specifies the AWS Region for the quota that you want to delete.
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

    # Returns an error that explains why the action did not succeed.
    #
    # @!attribute [rw] error_code
    #   Service Quotas returns the following error values.
    #
    #   `DEPENDENCY_ACCESS_DENIED_ERROR` is returned when the caller does
    #   not have permission to call the service or service quota. To resolve
    #   the error, you need permission to access the service or service
    #   quota.
    #
    #   `DEPENDENCY_THROTTLING_ERROR` is returned when the service being
    #   called is throttling Service Quotas.
    #
    #   `DEPENDENCY_SERVICE_ERROR` is returned when the service being called
    #   has availability issues.
    #
    #   `SERVICE_QUOTA_NOT_AVAILABLE_ERROR` is returned when there was an
    #   error in Service Quotas.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that provides more detail.
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

    # @note When making an API call, you may pass GetAWSDefaultServiceQuotaRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode", # required
    #         quota_code: "QuotaCode", # required
    #       }
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Identifies the service quota you want to select.
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
    #   Returns the ServiceQuota object which contains all values for a
    #   quota.
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
    #   Specifies whether the template is `ASSOCIATED` or `DISASSOCIATED`.
    #   If the template is `ASSOCIATED`, then it requests service quota
    #   increases for all new accounts created in your organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAssociationForServiceQuotaTemplateResponse AWS API Documentation
    #
    class GetAssociationForServiceQuotaTemplateResponse < Struct.new(
      :service_quota_template_association_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRequestedServiceQuotaChangeRequest
    #   data as a hash:
    #
    #       {
    #         request_id: "RequestId", # required
    #       }
    #
    # @!attribute [rw] request_id
    #   Identifies the quota increase request.
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
    #   Returns the `RequestedServiceQuotaChange` object for the specific
    #   increase request.
    #   @return [Types::RequestedServiceQuotaChange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetRequestedServiceQuotaChangeResponse AWS API Documentation
    #
    class GetRequestedServiceQuotaChangeResponse < Struct.new(
      :requested_quota)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceQuotaIncreaseRequestFromTemplateRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode", # required
    #         quota_code: "QuotaCode", # required
    #         aws_region: "AwsRegion", # required
    #       }
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Specifies the AWS Region for the quota that you want to use.
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
    #   This object contains the details about the quota increase request.
    #   @return [Types::ServiceQuotaIncreaseRequestInTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuotaIncreaseRequestFromTemplateResponse AWS API Documentation
    #
    class GetServiceQuotaIncreaseRequestFromTemplateResponse < Struct.new(
      :service_quota_increase_request_in_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceQuotaRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode", # required
    #         quota_code: "QuotaCode", # required
    #       }
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Identifies the service quota you want to select.
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
    #   Returns the ServiceQuota object which contains all values for a
    #   quota.
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

    # Invalid input was provided for the .
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

    # @note When making an API call, you may pass ListAWSDefaultServiceQuotasRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from. If additional items exist beyond
    #   the specified maximum, the `NextToken` element is present and has a
    #   value (isn't null). Include that value as the `NextToken` request
    #   parameter in the call to the operation to get the next part of the
    #   results. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get
    #   the next part of the results. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
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
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] quotas
    #   A list of the quotas in the account with the AWS default values.
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

    # @note When making an API call, you may pass ListRequestedServiceQuotaChangeHistoryByQuotaRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode", # required
    #         quota_code: "QuotaCode", # required
    #         status: "PENDING", # accepts PENDING, CASE_OPENED, APPROVED, DENIED, CASE_CLOSED
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the service quota that you want to use
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status value of the quota increase request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get
    #   the next part of the results. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
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
    #   If present in the response, this value indicates there's more
    #   output available that what's included in the current response. This
    #   can occur even when the response includes no values at all, such as
    #   when you ask for a filtered view of a very long list. Use this value
    #   in the `NextToken` request parameter in a subsequent call to the
    #   operation to continue processing and get the next part of the
    #   output. You should repeat this until the `NextToken` response
    #   element comes back empty (as `null`).
    #   @return [String]
    #
    # @!attribute [rw] requested_quotas
    #   Returns a list of service quota requests.
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

    # @note When making an API call, you may pass ListRequestedServiceQuotaChangeHistoryRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode",
    #         status: "PENDING", # accepts PENDING, CASE_OPENED, APPROVED, DENIED, CASE_CLOSED
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status value of the quota increase request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get
    #   the next part of the results. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
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
    #   If present in the response, this value indicates there's more
    #   output available that what's included in the current response. This
    #   can occur even when the response includes no values at all, such as
    #   when you ask for a filtered view of a very long list. Use this value
    #   in the `NextToken` request parameter in a subsequent call to the
    #   operation to continue processing and get the next part of the
    #   output. You should repeat this until the `NextToken` response
    #   element comes back empty (as `null`).
    #   @return [String]
    #
    # @!attribute [rw] requested_quotas
    #   Returns a list of service quota requests.
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

    # @note When making an API call, you may pass ListServiceQuotaIncreaseRequestsInTemplateRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode",
    #         aws_region: "AwsRegion",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] service_code
    #   The identifier for a service. When performing an operation, use the
    #   `ServiceCode` to specify a particular service.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Specifies the AWS Region for the quota that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get
    #   the next part of the results. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
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
    #   Returns the list of values of the quota increase request in the
    #   template.
    #   @return [Array<Types::ServiceQuotaIncreaseRequestInTemplate>]
    #
    # @!attribute [rw] next_token
    #   If present in the response, this value indicates there's more
    #   output available that what's included in the current response. This
    #   can occur even when the response includes no values at all, such as
    #   when you ask for a filtered view of a very long list. Use this value
    #   in the `NextToken` request parameter in a subsequent call to the
    #   operation to continue processing and get the next part of the
    #   output. You should repeat this until the `NextToken` response
    #   element comes back empty (as `null`).
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

    # @note When making an API call, you may pass ListServiceQuotasRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] service_code
    #   The identifier for a service. When performing an operation, use the
    #   `ServiceCode` to specify a particular service.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get
    #   the next part of the results. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
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
    #   If present in the response, this value indicates there's more
    #   output available that what's included in the current response. This
    #   can occur even when the response includes no values at all, such as
    #   when you ask for a filtered view of a very long list. Use this value
    #   in the `NextToken` request parameter in a subsequent call to the
    #   operation to continue processing and get the next part of the
    #   output. You should repeat this until the `NextToken` response
    #   element comes back empty (as `null`).
    #   @return [String]
    #
    # @!attribute [rw] quotas
    #   The response information for a quota lists all attribute information
    #   for the quota.
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

    # @note When making an API call, you may pass ListServicesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, the response
    #   defaults to a value that's specific to the operation. If additional
    #   items exist beyond the specified maximum, the `NextToken` element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the call to the operation to get
    #   the next part of the results. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
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
    #   If present in the response, this value indicates there's more
    #   output available that what's included in the current response. This
    #   can occur even when the response includes no values at all, such as
    #   when you ask for a filtered view of a very long list. Use this value
    #   in the `NextToken` request parameter in a subsequent call to the
    #   operation to continue processing and get the next part of the
    #   output. You should repeat this until the `NextToken` response
    #   element comes back empty (as `null`).
    #   @return [String]
    #
    # @!attribute [rw] services
    #   Returns a list of services.
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

    # A structure that uses CloudWatch metrics to gather data about the
    # service quota.
    #
    # @!attribute [rw] metric_namespace
    #   The namespace of the metric. The namespace is a container for
    #   CloudWatch metrics. You can specify a name for the namespace when
    #   you create a metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the CloudWatch metric that measures usage of a service
    #   quota. This is a required field.
    #   @return [String]
    #
    # @!attribute [rw] metric_dimensions
    #   A dimension is a name/value pair that is part of the identity of a
    #   metric. Every metric has specific characteristics that describe it,
    #   and you can think of dimensions as categories for those
    #   characteristics. These dimensions are part of the CloudWatch Metric
    #   Identity that measures usage against a particular service quota.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] metric_statistic_recommendation
    #   Statistics are metric data aggregations over specified periods of
    #   time. This is the recommended statistic to use when comparing usage
    #   in the CloudWatch Metric against your Service Quota.
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

    # The organization that your account belongs to, is not in All Features
    # mode. To enable all features mode, see [EnableAllFeatures][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAllFeatures.html
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

    # @note When making an API call, you may pass PutServiceQuotaIncreaseRequestIntoTemplateRequest
    #   data as a hash:
    #
    #       {
    #         quota_code: "QuotaCode", # required
    #         service_code: "ServiceCode", # required
    #         aws_region: "AwsRegion", # required
    #         desired_value: 1.0, # required
    #       }
    #
    # @!attribute [rw] quota_code
    #   Specifies the service quota that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Specifies the AWS Region for the quota.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   Specifies the new, increased value for the quota.
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
    #   A structure that contains information about one service quota
    #   increase request.
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

    # A structure that contains information about the quota period.
    #
    # @!attribute [rw] period_value
    #   The value of a period.
    #   @return [Integer]
    #
    # @!attribute [rw] period_unit
    #   The time unit of a period.
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

    # @note When making an API call, you may pass RequestServiceQuotaIncreaseRequest
    #   data as a hash:
    #
    #       {
    #         service_code: "ServiceCode", # required
    #         quota_code: "QuotaCode", # required
    #         desired_value: 1.0, # required
    #       }
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the service quota that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   Specifies the value submitted in the service quota increase request.
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
    #   Returns a list of service quota requests.
    #   @return [Types::RequestedServiceQuotaChange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/RequestServiceQuotaIncreaseResponse AWS API Documentation
    #
    class RequestServiceQuotaIncreaseResponse < Struct.new(
      :requested_quota)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a requested change for a
    # quota.
    #
    # @!attribute [rw] id
    #   The unique identifier of a requested service quota change.
    #   @return [String]
    #
    # @!attribute [rw] case_id
    #   The case Id for the service quota increase request.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service specified in the increase request.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the service quota that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   Name of the service quota.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   New increased value for the service quota.
    #   @return [Float]
    #
    # @!attribute [rw] status
    #   State of the service quota increase request.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date and time when the service quota increase request was
    #   received and the case Id was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The date and time of the most recent change in the service quota
    #   increase request.
    #   @return [Time]
    #
    # @!attribute [rw] requester
    #   The IAM identity who submitted the service quota increase request.
    #   @return [String]
    #
    # @!attribute [rw] quota_arn
    #   The Amazon Resource Name (ARN) of the service quota.
    #   @return [String]
    #
    # @!attribute [rw] global_quota
    #   Identifies if the quota is global.
    #   @return [Boolean]
    #
    # @!attribute [rw] unit
    #   Specifies the unit used for the quota.
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

    # A structure that contains the `ServiceName` and `ServiceCode`. It does
    # not include all details of the service quota. To get those values, use
    # the ListServiceQuotas operation.
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service specified in the increase request.
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

    # A structure that contains the full set of details that define the
    # service quota.
    #
    # @!attribute [rw] service_code
    #   Specifies the service that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service specified in the increase request.
    #   @return [String]
    #
    # @!attribute [rw] quota_arn
    #   The Amazon Resource Name (ARN) of the service quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code identifier for the service quota specified.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The name identifier of the service quota.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of service quota.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the value of the service quota.
    #   @return [String]
    #
    # @!attribute [rw] adjustable
    #   Specifies if the quota value can be increased.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_quota
    #   Specifies if the quota is global.
    #   @return [Boolean]
    #
    # @!attribute [rw] usage_metric
    #   Specifies the details about the measurement.
    #   @return [Types::MetricInfo]
    #
    # @!attribute [rw] period
    #   Identifies the unit and value of how time is measured.
    #   @return [Types::QuotaPeriod]
    #
    # @!attribute [rw] error_reason
    #   Specifies the `ErrorCode` and `ErrorMessage` when success isn't
    #   achieved.
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

    # A structure that contains information about one service quota increase
    # request.
    #
    # @!attribute [rw] service_code
    #   The code identifier for the AWS service specified in the increase
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service specified in the increase request.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code identifier for the service quota specified in the increase
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The name of the service quota in the increase request.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   Identifies the new, increased value of the service quota in the
    #   increase request.
    #   @return [Float]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region where the increase request occurs.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of measure for the increase request.
    #   @return [String]
    #
    # @!attribute [rw] global_quota
    #   Specifies if the quota is a global quota.
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
    # To use the template, call AssociateServiceQuotaTemplate.
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

    # The Service Quotas template is not available in the Region where you
    # are making the request. Please make the request in us-east-1.
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

  end
end
