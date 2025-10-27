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

    # @!attribute [rw] request_id
    #   The ID of the pending quota increase request for which you want to
    #   open a Support case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/CreateSupportCaseRequest AWS API Documentation
    #
    class CreateSupportCaseRequest < Struct.new(
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/CreateSupportCaseResponse AWS API Documentation
    #
    class CreateSupportCaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Specifies the Amazon Web Services Region for which the request was
    #   made.
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
    #     you must have permission to access the Amazon Web Services service
    #     or quota.
    #
    #   * `DEPENDENCY_THROTTLING_ERROR` - The Amazon Web Services service is
    #     throttling Service Quotas.
    #
    #   * `DEPENDENCY_SERVICE_ERROR` - The Amazon Web Services service is
    #     not available.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
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
    #   Amazon Web Services accounts in your organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAssociationForServiceQuotaTemplateResponse AWS API Documentation
    #
    class GetAssociationForServiceQuotaTemplateResponse < Struct.new(
      :service_quota_template_association_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAutoManagementConfigurationRequest AWS API Documentation
    #
    class GetAutoManagementConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] opt_in_level
    #   Information on the opt-in level for Automatic Management. Only
    #   Amazon Web Services account level is supported.
    #   @return [String]
    #
    # @!attribute [rw] opt_in_type
    #   Information on the opt-in type for Automatic Management. There are
    #   two modes: Notify only and Notify and Auto-Adjust. Currently, only
    #   NotifyOnly is available.
    #   @return [String]
    #
    # @!attribute [rw] notification_arn
    #   The [User Notifications][1] Amazon Resource Name (ARN) for Automatic
    #   Management notifications.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/notifications/latest/userguide/resource-level-permissions.html#rlp-table
    #   @return [String]
    #
    # @!attribute [rw] opt_in_status
    #   Status on whether Automatic Management is started or stopped.
    #   @return [String]
    #
    # @!attribute [rw] exclusion_list
    #   List of Amazon Web Services services excluded from Automatic
    #   Management. You won't be notified of Service Quotas utilization for
    #   Amazon Web Services services added to the Automatic Management
    #   exclusion list.
    #   @return [Hash<String,Array<Types::QuotaInfo>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetAutoManagementConfigurationResponse AWS API Documentation
    #
    class GetAutoManagementConfigurationResponse < Struct.new(
      :opt_in_level,
      :opt_in_type,
      :notification_arn,
      :opt_in_status,
      :exclusion_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   Specifies the ID of the quota increase request.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Specifies the Amazon Web Services Region for which you made the
    #   request.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] context_id
    #   Specifies the resource with an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/GetServiceQuotaRequest AWS API Documentation
    #
    class GetServiceQuotaRequest < Struct.new(
      :service_code,
      :quota_code,
      :context_id)
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies a value for receiving additional results after you receive
    #   a `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results that you want included on
    #   each page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional
    #   items exist beyond those included in the current response, the
    #   `NextToken` response element is present and has a value (is not
    #   null). Include that value as the `NextToken` request parameter in
    #   the next call to the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
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
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies that you want to filter the results to only the requests
    #   with the matching status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies a value for receiving additional results after you receive
    #   a `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results that you want included on
    #   each page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional
    #   items exist beyond those included in the current response, the
    #   `NextToken` response element is present and has a value (is not
    #   null). Include that value as the `NextToken` request parameter in
    #   the next call to the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] quota_requested_at_level
    #   Filters the response to return quota requests for the `ACCOUNT`,
    #   `RESOURCE`, or `ALL` levels. `ACCOUNT` is the default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistoryByQuotaRequest AWS API Documentation
    #
    class ListRequestedServiceQuotaChangeHistoryByQuotaRequest < Struct.new(
      :service_code,
      :quota_code,
      :status,
      :next_token,
      :max_results,
      :quota_requested_at_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies that you want to filter the results to only the requests
    #   with the matching status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies a value for receiving additional results after you receive
    #   a `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results that you want included on
    #   each page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional
    #   items exist beyond those included in the current response, the
    #   `NextToken` response element is present and has a value (is not
    #   null). Include that value as the `NextToken` request parameter in
    #   the next call to the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] quota_requested_at_level
    #   Filters the response to return quota requests for the `ACCOUNT`,
    #   `RESOURCE`, or `ALL` levels. `ACCOUNT` is the default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListRequestedServiceQuotaChangeHistoryRequest AWS API Documentation
    #
    class ListRequestedServiceQuotaChangeHistoryRequest < Struct.new(
      :service_code,
      :status,
      :next_token,
      :max_results,
      :quota_requested_at_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Specifies the Amazon Web Services Region for which you made the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies a value for receiving additional results after you receive
    #   a `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results that you want included on
    #   each page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional
    #   items exist beyond those included in the current response, the
    #   `NextToken` response element is present and has a value (is not
    #   null). Include that value as the `NextToken` request parameter in
    #   the next call to the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
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
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specifies a value for receiving additional results after you receive
    #   a `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results that you want included on
    #   each page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional
    #   items exist beyond those included in the current response, the
    #   `NextToken` response element is present and has a value (is not
    #   null). Include that value as the `NextToken` request parameter in
    #   the next call to the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] quota_applied_at_level
    #   Filters the response to return applied quota values for the
    #   `ACCOUNT`, `RESOURCE`, or `ALL` levels. `ACCOUNT` is the default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/ListServiceQuotasRequest AWS API Documentation
    #
    class ListServiceQuotasRequest < Struct.new(
      :service_code,
      :next_token,
      :max_results,
      :quota_code,
      :quota_applied_at_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
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
    #   Specifies a value for receiving additional results after you receive
    #   a `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results that you want included on
    #   each page of the response. If you do not include this parameter, it
    #   defaults to a value appropriate to the operation. If additional
    #   items exist beyond those included in the current response, the
    #   `NextToken` response element is present and has a value (is not
    #   null). Include that value as the `NextToken` request parameter in
    #   the next call to the operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
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
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @!attribute [rw] services
    #   The list of the Amazon Web Services service names and service codes.
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
    #   [list-service-quotas][1] CLI command or the [ListServiceQuotas][2]
    #   Amazon Web Services API operation.
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

    # The Amazon Web Services account making this call is not a member of an
    # organization.
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

    # The organization that your Amazon Web Services account belongs to is
    # not in All Features mode.
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
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Specifies the Amazon Web Services Region to which the template
    #   applies.
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

    # A structure that describes the context for a resource-level quota. For
    # resource-level quotas, such as `Instances per OpenSearch Service
    # Domain`, you can apply the quota value at the resource-level for each
    # OpenSearch Service Domain in your Amazon Web Services account.
    # Together the attributes of this structure help you understand how the
    # quota is implemented by Amazon Web Services and how you can manage it.
    # For quotas such as `Amazon OpenSearch Service Domains` which can be
    # managed at the account-level for each Amazon Web Services Region, the
    # `QuotaContext` field is absent. See the attribute descriptions below
    # to further understand how to use them.
    #
    # @!attribute [rw] context_scope
    #   Specifies the scope to which the quota value is applied. If the
    #   scope is `RESOURCE`, the quota value is applied to each resource in
    #   the Amazon Web Services account. If the scope is `ACCOUNT`, the
    #   quota value is applied to the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] context_scope_type
    #   Specifies the resource type to which the quota can be applied.
    #   @return [String]
    #
    # @!attribute [rw] context_id
    #   Specifies the resource, or resources, to which the quota applies.
    #   The value for this field is either an Amazon Resource Name (ARN) or
    #   *. If the value is an ARN, the quota value applies to that
    #   resource. If the value is *, then the quota value applies to all
    #   resources listed in the `ContextScopeType` field. The quota value
    #   applies to all resources for which you haven’t previously applied a
    #   quota value, and any new resources you create in your Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/QuotaContextInfo AWS API Documentation
    #
    class QuotaContextInfo < Struct.new(
      :context_scope,
      :context_scope_type,
      :context_id)
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

    # Information on your Service Quotas for [Service Quotas Automatic
    # Management][1]. Automatic Management monitors your Service Quotas
    # utilization and notifies you before you run out of your allocated
    # quotas.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/automatic-management.html
    #
    # @!attribute [rw] quota_code
    #   The Service Quotas code for the Amazon Web Services service
    #   monitored with Automatic Management.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The Service Quotas name for the Amazon Web Services service
    #   monitored with Automatic Management.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/QuotaInfo AWS API Documentation
    #
    class QuotaInfo < Struct.new(
      :quota_code,
      :quota_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the quota period.
    #
    # @!attribute [rw] period_value
    #   The value associated with the reported `PeriodUnit`.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   Specifies the new, increased value for the quota.
    #   @return [Float]
    #
    # @!attribute [rw] context_id
    #   Specifies the resource with an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] support_case_allowed
    #   Specifies if an Amazon Web Services Support case can be opened for
    #   the quota increase request. This parameter is optional.
    #
    #   By default, this flag is set to `True` and Amazon Web Services may
    #   create a support case for some quota increase requests. You can set
    #   this flag to `False` if you do not want a support case created when
    #   you request a quota increase. If you set the flag to `False`, Amazon
    #   Web Services does not open a support case and updates the request
    #   status to `Not approved`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/RequestServiceQuotaIncreaseRequest AWS API Documentation
    #
    class RequestServiceQuotaIncreaseRequest < Struct.new(
      :service_code,
      :quota_code,
      :desired_value,
      :context_id,
      :support_case_allowed)
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Specifies the service name.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   Specifies the quota name.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   The new, increased value for the quota.
    #   @return [Float]
    #
    # @!attribute [rw] status
    #   The state of the quota increase request.
    #
    #   * `PENDING`: The quota increase request is under review by Amazon
    #     Web Services.
    #
    #   * `CASE_OPENED`: Service Quotas opened a support case to process the
    #     quota increase request. Follow-up on the support case for more
    #     information.
    #
    #   * `APPROVED`: The quota increase request is approved.
    #
    #   * `DENIED`: The quota increase request can't be approved by Service
    #     Quotas. Contact Amazon Web Services Support for more details.
    #
    #   * `NOT APPROVED`: The quota increase request can't be approved by
    #     Service Quotas. Contact Amazon Web Services Support for more
    #     details.
    #
    #   * `CASE_CLOSED`: The support case associated with this quota
    #     increase request was closed. Check the support case correspondence
    #     for the outcome of your quota request.
    #
    #   * `INVALID_REQUEST`: Service Quotas couldn't process your
    #     resource-level quota increase request because the Amazon Resource
    #     Name (ARN) specified as part of the `ContextId` is invalid.
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
    # @!attribute [rw] quota_requested_at_level
    #   Filters the response to return quota requests for the `ACCOUNT`,
    #   `RESOURCE`, or `ALL` levels. `ACCOUNT` is the default.
    #   @return [String]
    #
    # @!attribute [rw] quota_context
    #   The context for this service quota.
    #   @return [Types::QuotaContextInfo]
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
      :unit,
      :quota_requested_at_level,
      :quota_context)
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

    # Information about an Amazon Web Services service.
    #
    # @!attribute [rw] service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Specifies the service name.
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
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Specifies the service name.
    #   @return [String]
    #
    # @!attribute [rw] quota_arn
    #   The Amazon Resource Name (ARN) of the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   Specifies the quota name.
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
    # @!attribute [rw] quota_applied_at_level
    #   Filters the response to return applied quota values for the
    #   `ACCOUNT`, `RESOURCE`, or `ALL` levels. `ACCOUNT` is the default.
    #   @return [String]
    #
    # @!attribute [rw] quota_context
    #   The context for this service quota.
    #   @return [Types::QuotaContextInfo]
    #
    # @!attribute [rw] description
    #   The quota description.
    #   @return [String]
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
      :error_reason,
      :quota_applied_at_level,
      :quota_context,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a quota increase request.
    #
    # @!attribute [rw] service_code
    #   Specifies the service identifier. To find the service code value for
    #   an Amazon Web Services service, use the ListServices operation.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Specifies the service name.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specifies the quota identifier. To find the quota code for a
    #   specific quota, use the ListServiceQuotas operation, and look for
    #   the `QuotaCode` response in the output for the quota you want.
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   Specifies the quota name.
    #   @return [String]
    #
    # @!attribute [rw] desired_value
    #   The new, increased value of the quota.
    #   @return [Float]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
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

    # @!attribute [rw] opt_in_level
    #   Sets the opt-in level for Automatic Management. Only Amazon Web
    #   Services account level is supported.
    #   @return [String]
    #
    # @!attribute [rw] opt_in_type
    #   Sets the opt-in type for Automatic Management. There are two modes:
    #   Notify only and Notify and Auto-Adjust. Currently, only NotifyOnly
    #   is available.
    #   @return [String]
    #
    # @!attribute [rw] notification_arn
    #   The [User Notifications][1] Amazon Resource Name (ARN) for Automatic
    #   Management notifications.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/notifications/latest/userguide/resource-level-permissions.html#rlp-table
    #   @return [String]
    #
    # @!attribute [rw] exclusion_list
    #   List of Amazon Web Services services excluded from Automatic
    #   Management. You won't be notified of Service Quotas utilization for
    #   Amazon Web Services services added to the Automatic Management
    #   exclusion list.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/StartAutoManagementRequest AWS API Documentation
    #
    class StartAutoManagementRequest < Struct.new(
      :opt_in_level,
      :opt_in_type,
      :notification_arn,
      :exclusion_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/StartAutoManagementResponse AWS API Documentation
    #
    class StartAutoManagementResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/StopAutoManagementRequest AWS API Documentation
    #
    class StopAutoManagementRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/StopAutoManagementResponse AWS API Documentation
    #
    class StopAutoManagementResponse < Aws::EmptyStructure; end

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
    #   the quotas using the [list-service-quotas][1] CLI command or the
    #   [ListServiceQuotas][2] Amazon Web Services API operation.
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

    # The Service Quotas template is not available in this Amazon Web
    # Services Region.
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
    #   CLI command or the [ListServiceQuotas][2] Amazon Web Services API
    #   operation.
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

    # @!attribute [rw] opt_in_type
    #   Information on the opt-in type for your Automatic Management
    #   configuration. There are two modes: Notify only and Notify and
    #   Auto-Adjust. Currently, only NotifyOnly is available.
    #   @return [String]
    #
    # @!attribute [rw] notification_arn
    #   The [User Notifications][1] Amazon Resource Name (ARN) for Automatic
    #   Management notifications you want to update.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/notifications/latest/userguide/resource-level-permissions.html#rlp-table
    #   @return [String]
    #
    # @!attribute [rw] exclusion_list
    #   List of Amazon Web Services services you want to exclude from
    #   Automatic Management. You won't be notified of Service Quotas
    #   utilization for Amazon Web Services services added to the Automatic
    #   Management exclusion list.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/UpdateAutoManagementRequest AWS API Documentation
    #
    class UpdateAutoManagementRequest < Struct.new(
      :opt_in_type,
      :notification_arn,
      :exclusion_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/service-quotas-2019-06-24/UpdateAutoManagementResponse AWS API Documentation
    #
    class UpdateAutoManagementResponse < Aws::EmptyStructure; end

  end
end

