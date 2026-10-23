# frozen_string_literal: true

# This is generated code!

module Aws::Artifact
  # This module contains the types returned by client operations.
  module Types

    # <p>User does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Account settings for the customer.</p>
    # @!attribute notification_subscription_status
    #   <p>Notification subscription status of the customer.</p>
    #   @return [String]
    class AccountSettings < Struct.new(
      nil,
      :notification_subscription_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request to create/modify content would result in a conflict.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the affected resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the affected resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary for customer-agreement resource.</p>
    # @!attribute name
    #   <p>Name of the customer-agreement resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>ARN of the customer-agreement resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Identifier of the customer-agreement resource.</p>
    #   @return [String]
    # @!attribute agreement_arn
    #   <p>ARN of the agreement resource the customer-agreement resource represents.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>AWS account Id that owns the resource.</p>
    #   @return [String]
    # @!attribute organization_arn
    #   <p>ARN of the organization that owns the resource.</p>
    #   @return [String]
    # @!attribute effective_start
    #   <p>Timestamp indicating when the agreement became effective.</p>
    #   @return [Time]
    # @!attribute effective_end
    #   <p>Timestamp indicating when the agreement was terminated.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>State of the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the resource.</p>
    #   @return [String]
    # @!attribute acceptance_terms
    #   <p>Terms required to accept the agreement resource.</p>
    #   @return [Array<String>]
    # @!attribute terminate_terms
    #   <p>Terms required to terminate the customer-agreement resource.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>Type of the customer-agreement resource.</p>
    #   @return [String]
    class CustomerAgreementSummary < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :agreement_arn,
      :aws_account_id,
      :organization_arn,
      :effective_start,
      :effective_end,
      :state,
      :description,
      :acceptance_terms,
      :terminate_terms,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAccountSettingsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_settings
    #   <p>Account settings for the customer.</p>
    #   @return [Types::AccountSettings]
    class GetAccountSettingsResponse < Struct.new(
      nil,
      :account_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>Unique resource ID for the report resource.</p>
    #   @return [String]
    # @!attribute report_version
    #   <p>Version for the report resource.</p>
    #   @return [Integer]
    class GetReportMetadataRequest < Struct.new(
      nil,
      :report_id,
      :report_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_details
    #   <p>Report resource detail.</p>
    #   @return [Types::ReportDetail]
    class GetReportMetadataResponse < Struct.new(
      nil,
      :report_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>Unique resource ID for the report resource.</p>
    #   @return [String]
    # @!attribute report_version
    #   <p>Version for the report resource.</p>
    #   @return [Integer]
    # @!attribute term_token
    #   <p>Unique download token provided by GetTermForReport API.</p>
    #   @return [String]
    class GetReportRequest < Struct.new(
      nil,
      :report_id,
      :report_version,
      :term_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_presigned_url
    #   <p>Presigned S3 url to access the report content.</p>
    #   @return [String]
    class GetReportResponse < Struct.new(
      nil,
      :document_presigned_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_id
    #   <p>Unique resource ID for the report resource.</p>
    #   @return [String]
    # @!attribute report_version
    #   <p>Version for the report resource.</p>
    #   @return [Integer]
    class GetTermForReportRequest < Struct.new(
      nil,
      :report_id,
      :report_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_presigned_url
    #   <p>Presigned S3 url to access the term content.</p>
    #   @return [String]
    # @!attribute term_token
    #   <p>Unique token representing this request event.</p>
    #   @return [String]
    class GetTermForReportResponse < Struct.new(
      nil,
      :document_presigned_url,
      :term_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unknown server exception has occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Number of seconds in which the caller can retry the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token to request the next page of resources.</p>
    #   @return [String]
    class ListCustomerAgreementsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute customer_agreements
    #   <p>List of customer-agreement resources.</p>
    #   @return [Array<Types::CustomerAgreementSummary>]
    # @!attribute next_token
    #   <p>Pagination token to request the next page of resources.</p>
    #   @return [String]
    class ListCustomerAgreementsResponse < Struct.new(
      nil,
      :customer_agreements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token to request the next page of resources.</p>
    #   @return [String]
    class ListReportsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reports
    #   <p>List of report resources.</p>
    #   @return [Array<Types::ReportSummary>]
    # @!attribute next_token
    #   <p>Pagination token to request the next page of resources.</p>
    #   @return [String]
    class ListReportsResponse < Struct.new(
      nil,
      :reports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_subscription_status
    #   <p>Desired notification subscription status.</p>
    #   @return [String]
    class PutAccountSettingsRequest < Struct.new(
      nil,
      :notification_subscription_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_settings
    #   <p>Account settings for the customer.</p>
    #   @return [Types::AccountSettings]
    class PutAccountSettingsResponse < Struct.new(
      nil,
      :account_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Full detail for report resource metadata.</p>
    # @!attribute id
    #   <p>Unique resource ID for the report resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the report resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description for the report resource.</p>
    #   @return [String]
    # @!attribute period_start
    #   <p>Timestamp indicating the report resource effective start.</p>
    #   @return [Time]
    # @!attribute period_end
    #   <p>Timestamp indicating the report resource effective end.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>Timestamp indicating when the report resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>Timestamp indicating when the report resource was last modified.</p>
    #   @return [Time]
    # @!attribute deleted_at
    #   <p>Timestamp indicating when the report resource was deleted.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>Current state of the report resource</p>
    #   @return [String]
    # @!attribute arn
    #   <p>ARN for the report resource.</p>
    #   @return [String]
    # @!attribute series
    #   <p>Series for the report resource.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Category for the report resource.</p>
    #   @return [String]
    # @!attribute company_name
    #   <p>Associated company name for the report resource.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>Associated product name for the report resource.</p>
    #   @return [String]
    # @!attribute term_arn
    #   <p>Unique resource ARN for term resource.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version for the report resource.</p>
    #   @return [Integer]
    # @!attribute acceptance_type
    #   <p>Acceptance type for report.</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>Sequence number to enforce optimistic locking.</p>
    #   @return [Integer]
    # @!attribute upload_state
    #   <p>The current state of the document upload.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The message associated with the current upload state.</p>
    #   @return [String]
    class ReportDetail < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :period_start,
      :period_end,
      :created_at,
      :last_modified_at,
      :deleted_at,
      :state,
      :arn,
      :series,
      :category,
      :company_name,
      :product_name,
      :term_arn,
      :version,
      :acceptance_type,
      :sequence_number,
      :upload_state,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary for report resource.</p>
    # @!attribute id
    #   <p>Unique resource ID for the report resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name for the report resource.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Current state of the report resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>ARN for the report resource.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version for the report resource.</p>
    #   @return [Integer]
    # @!attribute upload_state
    #   <p>The current state of the document upload.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description for the report resource.</p>
    #   @return [String]
    # @!attribute period_start
    #   <p>Timestamp indicating the report resource effective start.</p>
    #   @return [Time]
    # @!attribute period_end
    #   <p>Timestamp indicating the report resource effective end.</p>
    #   @return [Time]
    # @!attribute series
    #   <p>Series for the report resource.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Category for the report resource.</p>
    #   @return [String]
    # @!attribute company_name
    #   <p>Associated company name for the report resource.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>Associated product name for the report resource.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The message associated with the current upload state.</p>
    #   @return [String]
    # @!attribute acceptance_type
    #   <p>Acceptance type for report.</p>
    #   @return [String]
    class ReportSummary < Struct.new(
      nil,
      :id,
      :name,
      :state,
      :arn,
      :version,
      :upload_state,
      :description,
      :period_start,
      :period_end,
      :series,
      :category,
      :company_name,
      :product_name,
      :status_message,
      :acceptance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request references a resource which does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the affected resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the affected resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the affected resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the affected resource.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Code for the affected service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Code for the affected quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>Code for the affected service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Code for the affected quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Number of seconds in which the caller can retry the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>Reason the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field that caused the error, if applicable.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation exception message and name.</p>
    # @!attribute name
    #   <p>Name of validation exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Message describing why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
