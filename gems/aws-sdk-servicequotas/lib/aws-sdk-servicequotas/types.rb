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
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateServiceQuotaTemplateRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateServiceQuotaTemplateResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The ID of the pending quota increase request for which you want to open a Support case. </p>
    #   @return [String]
    class CreateSupportCaseRequest < Struct.new(
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateSupportCaseResponse < Struct.new(
      keyword_init: true)
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
      :service_code,
      :quota_code,
      :aws_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceQuotaIncreaseRequestFromTemplateResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You can't perform this action because a dependency does not have access.</p>
    # @!attribute message
    #   @return [String]
    class DependencyAccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateServiceQuotaTemplateRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateServiceQuotaTemplateResponse < Struct.new(
      keyword_init: true)
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
      :error_code,
      :error_message,
      keyword_init: true)
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
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute quota
    #   <p>Information about the quota.</p>
    #   @return [Types::ServiceQuota]
    class GetAWSDefaultServiceQuotaResponse < Struct.new(
      :quota,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetAssociationForServiceQuotaTemplateRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_quota_template_association_status
    #   <p>The association status. If the status is <code>ASSOCIATED</code>, the quota increase
    #               requests in the template are automatically applied to new Amazon Web Services accounts in your
    #               organization.</p>
    #   @return [String]
    class GetAssociationForServiceQuotaTemplateResponse < Struct.new(
      :service_quota_template_association_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>Specifies the ID of the quota increase request.</p>
    #   @return [String]
    class GetRequestedServiceQuotaChangeRequest < Struct.new(
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute requested_quota
    #   <p>Information about the quota increase request.</p>
    #   @return [Types::RequestedServiceQuotaChange]
    class GetRequestedServiceQuotaChangeResponse < Struct.new(
      :requested_quota,
      keyword_init: true)
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
      :service_code,
      :quota_code,
      :aws_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_quota_increase_request_in_template
    #   <p>Information about the quota increase request.</p>
    #   @return [Types::ServiceQuotaIncreaseRequestInTemplate]
    class GetServiceQuotaIncreaseRequestFromTemplateResponse < Struct.new(
      :service_quota_increase_request_in_template,
      keyword_init: true)
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
      :service_code,
      :quota_code,
      :context_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute quota
    #   <p>Information about the quota.</p>
    #   @return [Types::ServiceQuota]
    class GetServiceQuotaResponse < Struct.new(
      :quota,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Invalid input was provided.</p>
    # @!attribute message
    #   @return [String]
    class IllegalArgumentException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Invalid input was provided.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPaginationTokenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is in an invalid state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidResourceStateException < Struct.new(
      :message,
      keyword_init: true)
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
      :service_code,
      :next_token,
      :max_results,
      keyword_init: true)
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
      :next_token,
      :quotas,
      keyword_init: true)
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
      :service_code,
      :quota_code,
      :status,
      :next_token,
      :max_results,
      :quota_requested_at_level,
      keyword_init: true)
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
      :next_token,
      :requested_quotas,
      keyword_init: true)
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
      :service_code,
      :status,
      :next_token,
      :max_results,
      :quota_requested_at_level,
      keyword_init: true)
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
      :next_token,
      :requested_quotas,
      keyword_init: true)
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
      :service_code,
      :aws_region,
      :next_token,
      :max_results,
      keyword_init: true)
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
      :service_quota_increase_request_in_template_list,
      :next_token,
      keyword_init: true)
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
      :service_code,
      :next_token,
      :max_results,
      :quota_code,
      :quota_applied_at_level,
      keyword_init: true)
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
      :next_token,
      :quotas,
      keyword_init: true)
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
      :next_token,
      :max_results,
      keyword_init: true)
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
      :next_token,
      :services,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota for which you want to list tags.
    #               You can get this information by using the Service Quotas console, or by listing the quotas
    #               using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> Amazon Web Services API operation.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A complex data type that contains zero or more tag elements.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
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
      :metric_namespace,
      :metric_name,
      :metric_dimensions,
      :metric_statistic_recommendation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services account making this call is not a member of an organization.</p>
    # @!attribute message
    #   @return [String]
    class NoAvailableOrganizationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchResourceException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The organization that your Amazon Web Services account belongs to is not in All Features
    #             mode.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationNotInAllFeaturesModeException < Struct.new(
      :message,
      keyword_init: true)
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
      :quota_code,
      :service_code,
      :aws_region,
      :desired_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_quota_increase_request_in_template
    #   <p>Information about the quota increase request.</p>
    #   @return [Types::ServiceQuotaIncreaseRequestInTemplate]
    class PutServiceQuotaIncreaseRequestIntoTemplateResponse < Struct.new(
      :service_quota_increase_request_in_template,
      keyword_init: true)
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
    class QuotaContextInfo < Struct.new(
      :context_scope,
      :context_scope_type,
      :context_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded your service quota. To perform the requested action, remove some of
    #             the relevant resources, or use Service Quotas to request a service quota increase.</p>
    # @!attribute message
    #   @return [String]
    class QuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
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
      :period_value,
      :period_unit,
      keyword_init: true)
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
      :service_code,
      :quota_code,
      :desired_value,
      :context_id,
      :support_case_allowed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute requested_quota
    #   <p>Information about the quota increase request.</p>
    #   @return [Types::RequestedServiceQuotaChange]
    class RequestServiceQuotaIncreaseResponse < Struct.new(
      :requested_quota,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a quota increase request.</p>
    # @!attribute id
    #   <p>The unique identifier.</p>
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
      :quota_context,
      keyword_init: true)
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
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Something went wrong.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      :message,
      keyword_init: true)
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
      :service_code,
      :service_name,
      keyword_init: true)
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
      keyword_init: true)
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
      :service_code,
      :service_name,
      :quota_code,
      :quota_name,
      :desired_value,
      :aws_region,
      :unit,
      :global_quota,
      keyword_init: true)
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
      :message,
      keyword_init: true)
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
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified tag is a reserved word and cannot be used.</p>
    # @!attribute message
    #   @return [String]
    class TagPolicyViolationException < Struct.new(
      :message,
      keyword_init: true)
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
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Service Quotas template is not available in this Amazon Web Services Region.</p>
    # @!attribute message
    #   @return [String]
    class TemplatesNotAvailableInRegionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Due to throttling, the request was denied. Slow down the rate of request calls, or
    #             request an increase for this quota.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've exceeded the number of tags allowed for a resource. For more information, see
    #                 <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/sq-tagging.html#sq-tagging-restrictions">Tag
    #                 restrictions</a> in the <i>Service Quotas User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota that you want to untag. You can
    #               get this information by using the Service Quotas console, or by listing the quotas using the
    #               <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> Amazon Web Services API operation.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags that you want to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
