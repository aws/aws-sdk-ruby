# frozen_string_literal: true

# This is generated code!

module Aws::ServiceQuotas
  # This module contains the types returned by client operations.
  module Types

    # <p>The action you attempted is not allowed unless Service Access with Service Quotas is enabled in
    #             your organization.</p>
    # @!attribute message
    #   @return [String]
    class AWSServiceAccessNotEnabledException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateServiceQuotaTemplateRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateServiceQuotaTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The ID of the pending quota increase request for which you want to open a Support case. </p>
    #   @return [String]
    class CreateSupportCaseRequest < Struct.new(
      nil,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateSupportCaseResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Specifies the Amazon Web Services Region for which the request was made.</p>
    #   @return [String]
    class DeleteServiceQuotaIncreaseRequestFromTemplateRequest < Struct.new(
      nil,
      :service_code,
      :quota_code,
      :aws_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceQuotaIncreaseRequestFromTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can't perform this action because a dependency does not have access.</p>
    # @!attribute message
    #   @return [String]
    class DependencyAccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateServiceQuotaTemplateRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateServiceQuotaTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that explains why an action did not succeed.</p>
    # @!attribute error_code
    #   <p>Service Quotas returns the following error values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEPENDENCY_ACCESS_DENIED_ERROR</code> - The caller does not have the
    #                       required permissions to complete the action. To resolve the error, you must have
    #                       permission to access the Amazon Web Services service or quota.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPENDENCY_THROTTLING_ERROR</code> - The Amazon Web Services service is throttling
    #                       Service Quotas. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPENDENCY_SERVICE_ERROR</code> - The Amazon Web Services service is not
    #                       available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_QUOTA_NOT_AVAILABLE_ERROR</code> - There was an error in
    #                       Service Quotas.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class ErrorReason < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    class GetAWSDefaultServiceQuotaRequest < Struct.new(
      nil,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quota
    #   <p>Information about the quota.</p>
    #   @return [Types::ServiceQuota]
    class GetAWSDefaultServiceQuotaResponse < Struct.new(
      nil,
      :quota,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAssociationForServiceQuotaTemplateRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_quota_template_association_status
    #   <p>The association status. If the status is <code>ASSOCIATED</code>, the quota increase
    #               requests in the template are automatically applied to new Amazon Web Services accounts in your
    #               organization.</p>
    #   @return [String]
    class GetAssociationForServiceQuotaTemplateResponse < Struct.new(
      nil,
      :service_quota_template_association_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAutoManagementConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_in_level
    #   <p>Information on the opt-in level for Automatic Management. Only Amazon Web Services account level is supported.</p>
    #   @return [String]
    # @!attribute opt_in_type
    #   <p>Information on the opt-in type for Automatic Management. There are two modes: Notify only and Notify and Auto-Adjust. Currently, only
    #                                   NotifyOnly is available.</p>
    #   @return [String]
    # @!attribute notification_arn
    #   <p>The <a href="https://docs.aws.amazon.com/notifications/latest/userguide/resource-level-permissions.html#rlp-table">User Notifications</a> Amazon Resource Name (ARN) for Automatic Management notifications.</p>
    #   @return [String]
    # @!attribute opt_in_status
    #   <p>Status on whether Automatic Management is started or stopped.</p>
    #   @return [String]
    # @!attribute exclusion_list
    #   <p>List of Amazon Web Services services excluded from Automatic Management.
    #               You won't be notified of Service Quotas utilization for Amazon Web Services services added to the
    #                   Automatic Management exclusion list.
    #            </p>
    #   @return [Hash<String, Array<Types::QuotaInfo>>]
    class GetAutoManagementConfigurationResponse < Struct.new(
      nil,
      :opt_in_level,
      :opt_in_type,
      :notification_arn,
      :opt_in_status,
      :exclusion_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The unique identifier for the quota utilization report. This identifier is returned by
    #               the <code>StartQuotaUtilizationReport</code> operation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the next page of results to retrieve. This token is returned in
    #               the response when there are more results available. Omit this parameter for the first request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default value is 1,000 and the
    #               maximum allowed value is 1,000.</p>
    #   @return [Integer]
    class GetQuotaUtilizationReportRequest < Struct.new(
      nil,
      :report_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>The unique identifier for the quota utilization report.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the report generation. Possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The report generation is in progress. Retry this operation
    #                       after a few seconds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - The report is being processed. Continue polling until
    #                       the status changes to <code>COMPLETED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The report is ready and quota utilization data is available
    #                       in the response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The report generation failed. Check the <code>ErrorCode</code>
    #                       and <code>ErrorMessage</code> fields for details.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute generated_at
    #   <p>The timestamp when the report was generated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute total_count
    #   <p>The total number of quotas included in the report across all pages.</p>
    #   @return [Integer]
    # @!attribute quotas
    #   <p>A list of quota utilization records, sorted by utilization percentage in descending order.
    #               Each record includes the quota code, service code, service name, quota name, namespace,
    #               utilization percentage, default value, applied value, and whether the quota is adjustable.
    #               Up to 1,000 records are returned per page.</p>
    #   @return [Array<Types::QuotaUtilizationInfo>]
    # @!attribute next_token
    #   <p>A token that indicates more results are available. Include this token in the next request
    #               to retrieve the next page of results. If this field is not present, you have retrieved all
    #               available results.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code indicating the reason for failure when the report status is <code>FAILED</code>.
    #               This field is only present when the status is <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A detailed error message describing the failure when the report status is <code>FAILED</code>.
    #               This field is only present when the status is <code>FAILED</code>.</p>
    #   @return [String]
    class GetQuotaUtilizationReportResponse < Struct.new(
      nil,
      :report_id,
      :status,
      :generated_at,
      :total_count,
      :quotas,
      :next_token,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>Specifies the ID of the quota increase request.</p>
    #   @return [String]
    class GetRequestedServiceQuotaChangeRequest < Struct.new(
      nil,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute requested_quota
    #   <p>Information about the quota increase request.</p>
    #   @return [Types::RequestedServiceQuotaChange]
    class GetRequestedServiceQuotaChangeResponse < Struct.new(
      nil,
      :requested_quota,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Specifies the Amazon Web Services Region for which you made the request.</p>
    #   @return [String]
    class GetServiceQuotaIncreaseRequestFromTemplateRequest < Struct.new(
      nil,
      :service_code,
      :quota_code,
      :aws_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_quota_increase_request_in_template
    #   <p>Information about the quota increase request.</p>
    #   @return [Types::ServiceQuotaIncreaseRequestInTemplate]
    class GetServiceQuotaIncreaseRequestFromTemplateResponse < Struct.new(
      nil,
      :service_quota_increase_request_in_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute context_id
    #   <p>Specifies the resource with an Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetServiceQuotaRequest < Struct.new(
      nil,
      :service_code,
      :quota_code,
      :context_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quota
    #   <p>Information about the quota.</p>
    #   @return [Types::ServiceQuota]
    class GetServiceQuotaResponse < Struct.new(
      nil,
      :quota,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Invalid input was provided.</p>
    # @!attribute message
    #   @return [String]
    class IllegalArgumentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Invalid input was provided.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPaginationTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is in an invalid state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidResourceStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies a value for receiving additional results after you
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code>
    #       response indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results that you want included on each
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate
    #       to the operation. If additional items exist beyond those included in the current response, the
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #            </note>
    #   @return [Integer]
    class ListAWSDefaultServiceQuotasRequest < Struct.new(
      nil,
      :service_code,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    # @!attribute quotas
    #   <p>Information about the quotas.</p>
    #   @return [Array<Types::ServiceQuota>]
    class ListAWSDefaultServiceQuotasResponse < Struct.new(
      nil,
      :next_token,
      :quotas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies that you want to filter the results to only the requests with the matching
    #               status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies a value for receiving additional results after you
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code>
    #       response indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results that you want included on each
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate
    #       to the operation. If additional items exist beyond those included in the current response, the
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute quota_requested_at_level
    #   <p>Filters the response to return quota requests for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>
    #   @return [String]
    class ListRequestedServiceQuotaChangeHistoryByQuotaRequest < Struct.new(
      nil,
      :service_code,
      :quota_code,
      :status,
      :next_token,
      :max_results,
      :quota_requested_at_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    # @!attribute requested_quotas
    #   <p>Information about the quota increase requests.</p>
    #   @return [Array<Types::RequestedServiceQuotaChange>]
    class ListRequestedServiceQuotaChangeHistoryByQuotaResponse < Struct.new(
      nil,
      :next_token,
      :requested_quotas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies that you want to filter the results to only the requests with the matching
    #               status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies a value for receiving additional results after you
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code>
    #       response indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results that you want included on each
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate
    #       to the operation. If additional items exist beyond those included in the current response, the
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute quota_requested_at_level
    #   <p>Filters the response to return quota requests for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>
    #   @return [String]
    class ListRequestedServiceQuotaChangeHistoryRequest < Struct.new(
      nil,
      :service_code,
      :status,
      :next_token,
      :max_results,
      :quota_requested_at_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    # @!attribute requested_quotas
    #   <p>Information about the quota increase requests.</p>
    #   @return [Array<Types::RequestedServiceQuotaChange>]
    class ListRequestedServiceQuotaChangeHistoryResponse < Struct.new(
      nil,
      :next_token,
      :requested_quotas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Specifies the Amazon Web Services Region for which you made the request.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies a value for receiving additional results after you
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code>
    #       response indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results that you want included on each
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate
    #       to the operation. If additional items exist beyond those included in the current response, the
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #            </note>
    #   @return [Integer]
    class ListServiceQuotaIncreaseRequestsInTemplateRequest < Struct.new(
      nil,
      :service_code,
      :aws_region,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_quota_increase_request_in_template_list
    #   <p>Information about the quota increase requests.</p>
    #   @return [Array<Types::ServiceQuotaIncreaseRequestInTemplate>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListServiceQuotaIncreaseRequestsInTemplateResponse < Struct.new(
      nil,
      :service_quota_increase_request_in_template_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specifies a value for receiving additional results after you
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code>
    #       response indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results that you want included on each
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate
    #       to the operation. If additional items exist beyond those included in the current response, the
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute quota_applied_at_level
    #   <p>Filters the response to return applied quota values for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>
    #   @return [String]
    class ListServiceQuotasRequest < Struct.new(
      nil,
      :service_code,
      :next_token,
      :max_results,
      :quota_code,
      :quota_applied_at_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    # @!attribute quotas
    #   <p>Information about the quotas.</p>
    #   @return [Array<Types::ServiceQuota>]
    class ListServiceQuotasResponse < Struct.new(
      nil,
      :next_token,
      :quotas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Specifies a value for receiving additional results after you
    #       receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code>
    #       response indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results that you want included on each
    #       page of the response. If you do not include this parameter, it defaults to a value appropriate
    #       to the operation. If additional items exist beyond those included in the current response, the
    #       <code>NextToken</code> response element is present and has a value (is not null). Include that
    #       value as the <code>NextToken</code> request parameter in the next call to the operation to get
    #       the next part of the results.</p>
    #            <note>
    #               <p>An API operation can return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #            </note>
    #   @return [Integer]
    class ListServicesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    # @!attribute services
    #   <p>The list of the Amazon Web Services service names and service codes.</p>
    #   @return [Array<Types::ServiceInfo>]
    class ListServicesResponse < Struct.new(
      nil,
      :next_token,
      :services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota for which you want to list tags.
    #               You can get this information by using the Service Quotas console, or by listing the quotas
    #               using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> Amazon Web Services API operation.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A complex data type that contains zero or more tag elements.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the CloudWatch metric that reflects quota usage.</p>
    # @!attribute metric_namespace
    #   <p>The namespace of the metric.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute metric_dimensions
    #   <p>The metric dimension. This is a name/value pair that is part of the identity of a
    #               metric.</p>
    #   @return [Hash<String, String>]
    # @!attribute metric_statistic_recommendation
    #   <p>The metric statistic that we recommend you use when determining quota usage.</p>
    #   @return [String]
    class MetricInfo < Struct.new(
      nil,
      :metric_namespace,
      :metric_name,
      :metric_dimensions,
      :metric_statistic_recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services account making this call is not a member of an organization.</p>
    # @!attribute message
    #   @return [String]
    class NoAvailableOrganizationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchResourceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The organization that your Amazon Web Services account belongs to is not in All Features
    #             mode.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationNotInAllFeaturesModeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Specifies the Amazon Web Services Region to which the template applies.</p>
    #   @return [String]
    # @!attribute desired_value
    #   <p>Specifies the new, increased value for the quota.</p>
    #   @return [Float]
    class PutServiceQuotaIncreaseRequestIntoTemplateRequest < Struct.new(
      nil,
      :quota_code,
      :service_code,
      :aws_region,
      :desired_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_quota_increase_request_in_template
    #   <p>Information about the quota increase request.</p>
    #   @return [Types::ServiceQuotaIncreaseRequestInTemplate]
    class PutServiceQuotaIncreaseRequestIntoTemplateResponse < Struct.new(
      nil,
      :service_quota_increase_request_in_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes the context for a resource-level quota. For resource-level quotas, such as <code>Instances per OpenSearch Service Domain</code>, you can apply the quota value at the resource-level for each OpenSearch Service Domain in your Amazon Web Services account. Together the attributes of this structure help you understand how the quota is implemented by Amazon Web Services and how you can manage it. For quotas such as <code>Amazon OpenSearch Service Domains</code> which can be managed at the account-level for each Amazon Web Services Region, the <code>QuotaContext</code> field is absent. See the attribute descriptions below to further understand how to use them.</p>
    # @!attribute context_scope
    #   <p>Specifies the scope to which the quota value is applied. If the scope is <code>RESOURCE</code>, the quota value is applied to each resource in the Amazon Web Services account. If the scope is <code>ACCOUNT</code>, the quota value is applied to the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute context_scope_type
    #   <p>Specifies the resource type to which the quota can be applied.</p>
    #   @return [String]
    # @!attribute context_id
    #   <p>Specifies the resource, or resources, to which the quota applies. The value for this field is either an Amazon Resource Name (ARN) or *. If the value is an ARN, the quota value applies to that resource. If the value is *, then the quota value applies to all resources listed in the <code>ContextScopeType</code> field. The quota value applies to all resources for which you haven’t previously applied a quota value, and any new resources you create in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute adjustable_at_level
    #   <p>Specifies the level at which you can request an increase for this quota:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT</code> – You can request an increase only at the account level.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PER_RESOURCE</code> – You can request an increase only for an individual resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – You can request an increase at either the account level or for an individual resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class QuotaContextInfo < Struct.new(
      nil,
      :context_scope,
      :context_scope_type,
      :context_id,
      :adjustable_at_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded your service quota. To perform the requested action, remove some of
    #             the relevant resources, or use Service Quotas to request a service quota increase.</p>
    # @!attribute message
    #   @return [String]
    class QuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information on your Service Quotas for <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/automatic-management.html">Service Quotas Automatic Management</a>. Automatic Management monitors your Service Quotas utilization and notifies you before you
    #             run out of your allocated quotas.</p>
    # @!attribute quota_code
    #   <p>The Service Quotas code for the Amazon Web Services service monitored with Automatic Management.</p>
    #   @return [String]
    # @!attribute quota_name
    #   <p>The Service Quotas name for the Amazon Web Services service monitored with Automatic Management.</p>
    #   @return [String]
    class QuotaInfo < Struct.new(
      nil,
      :quota_code,
      :quota_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the quota period.</p>
    # @!attribute period_value
    #   <p>The value associated with the reported <code>PeriodUnit</code>.</p>
    #   @return [Integer]
    # @!attribute period_unit
    #   <p>The time unit.</p>
    #   @return [String]
    class QuotaPeriod < Struct.new(
      nil,
      :period_value,
      :period_unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a quota's utilization, including the quota code, service information,
    #             current usage, and applied limits.</p>
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service identifier.</p>
    #   @return [String]
    # @!attribute quota_name
    #   <p>The quota name.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the metric used to track quota usage.</p>
    #   @return [String]
    # @!attribute utilization
    #   <p>The utilization percentage of the quota, calculated as (current usage / applied value) × 100.
    #               Values range from 0.0 to 100.0 or higher if usage exceeds the quota limit.</p>
    #   @return [Float]
    # @!attribute default_value
    #   <p>The default value of the quota.</p>
    #   @return [Float]
    # @!attribute applied_value
    #   <p>The applied value of the quota, which may be higher than the default value if a quota
    #               increase has been requested and approved.</p>
    #   @return [Float]
    # @!attribute service_name
    #   <p>The service name.</p>
    #   @return [String]
    # @!attribute adjustable
    #   <p>Indicates whether the quota value can be increased.</p>
    #   @return [Boolean]
    class QuotaUtilizationInfo < Struct.new(
      nil,
      :quota_code,
      :service_code,
      :quota_name,
      :namespace,
      :utilization,
      :default_value,
      :applied_value,
      :service_name,
      :adjustable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:adjustable] = false unless options.key?(:adjustable)
        super
      end
    end

    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute desired_value
    #   <p>Specifies the new, increased value for the quota.</p>
    #   @return [Float]
    # @!attribute context_id
    #   <p>Specifies the resource with an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute support_case_allowed
    #   <p>Specifies if an Amazon Web Services Support case can be opened for the quota increase request. This parameter is optional. </p>
    #            <p>By default, this flag is set to <code>True</code> and Amazon Web Services may create a support case for some quota increase requests.
    #               You can set this flag to <code>False</code>
    #              if you do not want a support case created when you request a quota increase. If you set the flag to <code>False</code>,
    #               Amazon Web Services does not open a support case and updates the request status to <code>Not approved</code>. </p>
    #   @return [Boolean]
    class RequestServiceQuotaIncreaseRequest < Struct.new(
      nil,
      :service_code,
      :quota_code,
      :desired_value,
      :context_id,
      :support_case_allowed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute requested_quota
    #   <p>Information about the quota increase request.</p>
    #   @return [Types::RequestedServiceQuotaChange]
    class RequestServiceQuotaIncreaseResponse < Struct.new(
      nil,
      :requested_quota,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a quota increase request.</p>
    # @!attribute id
    #   <p>The unique identifier.</p>
    #   @return [String]
    # @!attribute request_type
    #   <p>The type of quota increase request. Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AutomaticManagement</code> - The request was automatically created by
    #                       Service Quotas Automatic Management when quota utilization approached the limit.</p>
    #               </li>
    #            </ul>
    #            <p>If this field is not present, the request was manually created by a user.</p>
    #   @return [String]
    # @!attribute case_id
    #   <p>The case ID.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>Specifies the service name.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute quota_name
    #   <p>Specifies the quota name.</p>
    #   @return [String]
    # @!attribute desired_value
    #   <p>The new, increased value for the quota.</p>
    #   @return [Float]
    # @!attribute status
    #   <p>The state of the quota increase request.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The quota increase request is under review by Amazon Web Services. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CASE_OPENED</code>: Service Quotas opened a support case to process the quota increase
    #                   request. Follow-up on the support case for more information.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPROVED</code>: The quota increase request is approved. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DENIED</code>: The quota increase request can't be approved by Service Quotas. Contact
    #                  Amazon Web Services Support for more details.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT APPROVED</code>: The quota increase request can't be approved by Service Quotas. Contact
    #                   Amazon Web Services Support for more details.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CASE_CLOSED</code>: The support case associated with this quota increase request was closed.
    #               Check the support case correspondence for the outcome of your quota request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_REQUEST</code>: Service Quotas couldn't process your resource-level quota increase request because the
    #               Amazon Resource Name (ARN) specified as part of the <code>ContextId</code> is invalid.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time when the quota increase request was received and the case ID was
    #               created.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>The date and time of the most recent change.</p>
    #   @return [Time]
    # @!attribute requester
    #   <p>The IAM identity of the requester.</p>
    #   @return [String]
    # @!attribute quota_arn
    #   <p>The Amazon Resource Name (ARN) of the quota.</p>
    #   @return [String]
    # @!attribute global_quota
    #   <p>Indicates whether the quota is global.</p>
    #   @return [Boolean]
    # @!attribute unit
    #   <p>The unit of measurement.</p>
    #   @return [String]
    # @!attribute quota_requested_at_level
    #   <p>Filters the response to return quota requests for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>
    #   @return [String]
    # @!attribute quota_context
    #   <p>The context for this service quota.</p>
    #   @return [Types::QuotaContextInfo]
    class RequestedServiceQuotaChange < Struct.new(
      nil,
      :id,
      :request_type,
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
      :quota_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:global_quota] = false unless options.key?(:global_quota)
        super
      end
    end

    # <p>The specified resource already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Something went wrong.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Amazon Web Services service.</p>
    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>Specifies the service name.</p>
    #   @return [String]
    class ServiceInfo < Struct.new(
      nil,
      :service_code,
      :service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a quota.</p>
    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>Specifies the service name.</p>
    #   @return [String]
    # @!attribute quota_arn
    #   <p>The Amazon Resource Name (ARN) of the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute quota_name
    #   <p>Specifies the quota name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The quota value.</p>
    #   @return [Float]
    # @!attribute unit
    #   <p>The unit of measurement.</p>
    #   @return [String]
    # @!attribute adjustable
    #   <p>Indicates whether the quota value can be increased.</p>
    #   @return [Boolean]
    # @!attribute global_quota
    #   <p>Indicates whether the quota is global.</p>
    #   @return [Boolean]
    # @!attribute usage_metric
    #   <p>Information about the measurement.</p>
    #   @return [Types::MetricInfo]
    # @!attribute period
    #   <p>The period of time.</p>
    #   @return [Types::QuotaPeriod]
    # @!attribute error_reason
    #   <p>The error code and error reason.</p>
    #   @return [Types::ErrorReason]
    # @!attribute quota_applied_at_level
    #   <p>Filters the response to return applied quota values for the <code>ACCOUNT</code>, <code>RESOURCE</code>, or <code>ALL</code> levels. <code>ACCOUNT</code> is the default.</p>
    #   @return [String]
    # @!attribute quota_context
    #   <p>The context for this service quota.</p>
    #   @return [Types::QuotaContextInfo]
    # @!attribute description
    #   <p>The quota description. </p>
    #   @return [String]
    class ServiceQuota < Struct.new(
      nil,
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
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:adjustable] = false unless options.key?(:adjustable)
        options[:global_quota] = false unless options.key?(:global_quota)
        super
      end
    end

    # <p>Information about a quota increase request.</p>
    # @!attribute service_code
    #   <p>Specifies the service identifier. To find the service code value
    #                for an Amazon Web Services service, use the <a>ListServices</a> operation.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>Specifies the service name.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specifies the quota identifier. To find the quota code for a specific
    #                quota, use the <a>ListServiceQuotas</a> operation, and look for the
    #                <code>QuotaCode</code> response in the output for the quota you want.</p>
    #   @return [String]
    # @!attribute quota_name
    #   <p>Specifies the quota name.</p>
    #   @return [String]
    # @!attribute desired_value
    #   <p>The new, increased value of the quota.</p>
    #   @return [Float]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of measurement.</p>
    #   @return [String]
    # @!attribute global_quota
    #   <p>Indicates whether the quota is global.</p>
    #   @return [Boolean]
    class ServiceQuotaIncreaseRequestInTemplate < Struct.new(
      nil,
      :service_code,
      :service_name,
      :quota_code,
      :quota_name,
      :desired_value,
      :aws_region,
      :unit,
      :global_quota,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:global_quota] = false unless options.key?(:global_quota)
        super
      end
    end

    # <p>The quota request template is not associated with your organization.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaTemplateNotInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_in_level
    #   <p>Sets the opt-in level for Automatic Management. Only Amazon Web Services account level is supported.</p>
    #   @return [String]
    # @!attribute opt_in_type
    #   <p>Sets the opt-in type for Automatic Management. There are two modes: Notify only and Notify and Auto-Adjust. Currently, only
    #                                   NotifyOnly is available.</p>
    #   @return [String]
    # @!attribute notification_arn
    #   <p>The <a href="https://docs.aws.amazon.com/notifications/latest/userguide/resource-level-permissions.html#rlp-table">User Notifications</a> Amazon Resource Name (ARN) for Automatic Management notifications.</p>
    #   @return [String]
    # @!attribute exclusion_list
    #   <p>List of Amazon Web Services services excluded from Automatic Management.
    #               You won't be notified of Service Quotas utilization for Amazon Web Services services added to the
    #                   Automatic Management exclusion list.
    #            </p>
    #   @return [Hash<String, Array<String>>]
    class StartAutoManagementRequest < Struct.new(
      nil,
      :opt_in_level,
      :opt_in_type,
      :notification_arn,
      :exclusion_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartAutoManagementResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartQuotaUtilizationReportRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>A unique identifier for the quota utilization report. Use this identifier with the
    #               <code>GetQuotaUtilizationReport</code> operation to retrieve the report results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the report generation. The status will be <code>PENDING</code>
    #               when the report is first initiated.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An optional message providing additional information about the report generation status.
    #               This field may contain details about the report initiation or indicate if an existing recent
    #               report is being reused.</p>
    #   @return [String]
    class StartQuotaUtilizationReportResponse < Struct.new(
      nil,
      :report_id,
      :status,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopAutoManagementRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopAutoManagementResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type that contains a tag key and tag value.</p>
    # @!attribute key
    #   <p>A string that contains a tag key. The string length should be between 1 and 128
    #               characters. Valid characters include a-z, A-Z, 0-9, space, and the special characters _
    #               - . : / = + @.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A string that contains an optional tag value. The string length should be between 0
    #               and 256 characters. Valid characters include a-z, A-Z, 0-9, space, and the special
    #               characters _ - . : / = + @.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified tag is a reserved word and cannot be used.</p>
    # @!attribute message
    #   @return [String]
    class TagPolicyViolationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota. You can get this information by
    #               using the Service Quotas console, or by listing the quotas using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> Amazon Web Services API operation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that you want to add to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Service Quotas template is not available in this Amazon Web Services Region.</p>
    # @!attribute message
    #   @return [String]
    class TemplatesNotAvailableInRegionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Due to throttling, the request was denied. Slow down the rate of request calls, or
    #             request an increase for this quota.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've exceeded the number of tags allowed for a resource. For more information, see
    #                 <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/sq-tagging.html#sq-tagging-restrictions">Tag
    #                 restrictions</a> in the <i>Service Quotas User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota that you want to untag. You can
    #               get this information by using the Service Quotas console, or by listing the quotas using the
    #                   <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> Amazon Web Services API operation.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags that you want to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_in_type
    #   <p>Information on the opt-in type for your Automatic Management configuration.
    #               There are two modes: Notify only and Notify and Auto-Adjust. Currently, only
    #                                   NotifyOnly is available.</p>
    #   @return [String]
    # @!attribute notification_arn
    #   <p>The <a href="https://docs.aws.amazon.com/notifications/latest/userguide/resource-level-permissions.html#rlp-table">User Notifications</a> Amazon Resource Name (ARN) for Automatic Management notifications you want
    #               to update.</p>
    #   @return [String]
    # @!attribute exclusion_list
    #   <p>List of Amazon Web Services services you want to exclude from Automatic Management.
    #               You won't be notified of Service Quotas utilization for Amazon Web Services services added to the
    #                   Automatic Management exclusion list.
    #            </p>
    #   @return [Hash<String, Array<String>>]
    class UpdateAutoManagementRequest < Struct.new(
      nil,
      :opt_in_type,
      :notification_arn,
      :exclusion_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateAutoManagementResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
