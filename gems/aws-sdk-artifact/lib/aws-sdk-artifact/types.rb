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

    # <p>Citation information for AI-generated responses.</p>
    # @!attribute source_label
    #   <p>Label identifying the compliance source.</p>
    #   @return [String]
    # @!attribute source_content
    #   <p>Content text from the compliance source.</p>
    #   @return [String]
    # @!attribute source_link
    #   <p>Link to the compliance source.</p>
    #   @return [String]
    class Citation < Struct.new(
      nil,
      :source_label,
      :source_content,
      :source_link,
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

    # @!attribute name
    #   <p>Title of the inquiry.</p>
    #   @return [String]
    # @!attribute inquiry_content
    #   <p>Content for creating a compliance inquiry - either a single query or file content.</p>
    #   @return [Types::InquiryContent]
    # @!attribute client_token
    #   <p>Idempotency token for the request.</p>
    #   @return [String]
    # @!attribute support_mode
    #   <p>Support mode for inquiry processing. Only supported for file upload mode. Defaults to AI_ONLY if not specified.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the compliance inquiry resource.</p>
    #   @return [Hash<String, String>]
    class CreateComplianceInquiryRequest < Struct.new(
      nil,
      :name,
      :inquiry_content,
      :client_token,
      :support_mode,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compliance_inquiry_summary
    #   <p>Summary information about the created compliance inquiry.</p>
    #   @return [Types::InquirySummary]
    # @!attribute tags
    #   <p>Tags associated with the compliance inquiry resource.</p>
    #   @return [Hash<String, String>]
    class CreateComplianceInquiryResponse < Struct.new(
      nil,
      :compliance_inquiry_summary,
      :tags,
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

    # @!attribute compliance_inquiry_id
    #   <p>Unique resource ID for the compliance inquiry.</p>
    #   @return [String]
    # @!attribute query_identifiers
    #   <p>List of query identifiers to include in the export.</p>
    #   @return [Array<Integer>]
    # @!attribute include_citations
    #   <p>When true, include citations in the exported document.</p>
    #   @return [Boolean]
    class ExportComplianceInquiryRequest < Struct.new(
      nil,
      :compliance_inquiry_id,
      :query_identifiers,
      :include_citations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_presigned_url
    #   <p>Presigned S3 URL to access the exported compliance inquiry report.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the compliance inquiry resource.</p>
    #   @return [Hash<String, String>]
    class ExportComplianceInquiryResponse < Struct.new(
      nil,
      :document_presigned_url,
      :tags,
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

    # @!attribute compliance_inquiry_id
    #   <p>Unique resource ID for the compliance inquiry.</p>
    #   @return [String]
    class GetComplianceInquiryMetadataRequest < Struct.new(
      nil,
      :compliance_inquiry_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compliance_inquiry_detail
    #   <p>Detailed information about the compliance inquiry.</p>
    #   @return [Types::InquiryDetail]
    # @!attribute tags
    #   <p>Tags associated with the compliance inquiry resource.</p>
    #   @return [Hash<String, String>]
    class GetComplianceInquiryMetadataResponse < Struct.new(
      nil,
      :compliance_inquiry_detail,
      :tags,
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

    # <p>Content for creating a compliance inquiry - either a single query or file content.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute query
    #   <p>Single text query for AI-generated answer.</p>
    #   @return [String]
    # @!attribute file_content
    #   <p>File content with multiple questions.</p>
    #   @return [Types::InquiryFileContent]
    class InquiryContent < Struct.new(
      :query,
      :file_content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Query < InquiryContent; end
      class FileContent < InquiryContent; end
      class Unknown < InquiryContent; end
    end

    # <p>Detailed information about a compliance inquiry.</p>
    # @!attribute arn
    #   <p>ARN of the compliance inquiry resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Title of the inquiry.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Unique resource ID for the compliance inquiry.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current processing status of the inquiry.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Status message providing additional context.</p>
    #   @return [String]
    # @!attribute input_source
    #   <p>Type of inquiry content (text or file).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp indicating when the resource was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp indicating when the resource was last modified.</p>
    #   @return [Time]
    # @!attribute support_mode
    #   <p>Support mode for this inquiry. AI_ONLY provides AI-generated responses. FULL_SUPPORT includes human expert review.</p>
    #   @return [String]
    class InquiryDetail < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :status,
      :status_message,
      :input_source,
      :created_at,
      :updated_at,
      :support_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>File content structure for compliance inquiry uploads.</p>
    # @!attribute file_sections
    #   <p>List of file sections/sheets to process.</p>
    #   @return [Array<String>]
    # @!attribute content
    #   <p>Binary content of the uploaded file.</p>
    #   @return [String]
    class InquiryFileContent < Struct.new(
      nil,
      :file_sections,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a compliance inquiry.</p>
    # @!attribute arn
    #   <p>ARN of the compliance inquiry resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Title of the inquiry.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Unique resource ID for the compliance inquiry.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current processing status of the inquiry.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Status message providing additional context.</p>
    #   @return [String]
    # @!attribute input_source
    #   <p>Type of inquiry content (text or file).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp indicating when the resource was created.</p>
    #   @return [Time]
    class InquirySummary < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :status,
      :status_message,
      :input_source,
      :created_at,
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
    class ListComplianceInquiriesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compliance_inquiries
    #   <p>List of compliance inquiry resources.</p>
    #   @return [Array<Types::InquirySummary>]
    # @!attribute next_token
    #   <p>Pagination token to request the next page of resources.</p>
    #   @return [String]
    class ListComplianceInquiriesResponse < Struct.new(
      nil,
      :compliance_inquiries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compliance_inquiry_id
    #   <p>Unique resource ID for the compliance inquiry.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token to request the next page of resources.</p>
    #   @return [String]
    class ListComplianceInquiryQueriesRequest < Struct.new(
      nil,
      :compliance_inquiry_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute queries
    #   <p>List of compliance query summaries.</p>
    #   @return [Array<Types::QuerySummary>]
    # @!attribute next_token
    #   <p>Pagination token to request the next page of resources.</p>
    #   @return [String]
    class ListComplianceInquiryQueriesResponse < Struct.new(
      nil,
      :queries,
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

    # @!attribute report_id
    #   <p>Unique resource ID for the report resource.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of resources to return in the paginated response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token to request the next page of resources.</p>
    #   @return [String]
    class ListReportVersionsRequest < Struct.new(
      nil,
      :report_id,
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
    class ListReportVersionsResponse < Struct.new(
      nil,
      :reports,
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
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

    # @!attribute compliance_inquiry_id
    #   <p>The unique identifier for the compliance inquiry.</p>
    #   @return [String]
    # @!attribute query_identifier
    #   <p>The sequential identifier of the query to provide feedback on.</p>
    #   @return [Integer]
    # @!attribute rating
    #   <p>The rating for the feedback. Valid values are THUMBS_UP and THUMBS_DOWN.</p>
    #   @return [String]
    # @!attribute response_revision_id
    #   <p>The response revision ID. Use this value to prevent submitting feedback on a stale response.</p>
    #   @return [Integer]
    # @!attribute reason_codes
    #   <p>The reason codes that describe why you rated the response. Valid values are OTHER, PARTIAL_RESPONSE, and IRRELEVANT_RESPONSE.</p>
    #   @return [Array<String>]
    # @!attribute comment
    #   <p>An optional comment for the feedback.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    #   @return [String]
    class PutComplianceInquiryFeedbackRequest < Struct.new(
      nil,
      :compliance_inquiry_id,
      :query_identifier,
      :rating,
      :response_revision_id,
      :reason_codes,
      :comment,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute submitted_at
    #   <p>The timestamp when the feedback was submitted.</p>
    #   @return [Time]
    class PutComplianceInquiryFeedbackResponse < Struct.new(
      nil,
      :submitted_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a single query within a compliance inquiry.</p>
    # @!attribute query_identifier
    #   <p>Sequential identifier of the query within the inquiry.</p>
    #   @return [Integer]
    # @!attribute query
    #   <p>The actual query text.</p>
    #   @return [String]
    # @!attribute response
    #   <p>Generated response to the query.</p>
    #   @return [String]
    # @!attribute review_type
    #   <p>Type of review for the response.</p>
    #   @return [String]
    # @!attribute citations
    #   <p>Supporting citations for the response.</p>
    #   @return [Array<Types::Citation>]
    # @!attribute status
    #   <p>Current processing status of the query.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Descriptive status message.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when the query was created.</p>
    #   @return [Time]
    # @!attribute updated_response_versions
    #   <p>Ordered list of response version history entries, oldest first.</p>
    #   @return [Array<Types::ResponseVersion>]
    class QuerySummary < Struct.new(
      nil,
      :query_identifier,
      :query,
      :response,
      :review_type,
      :citations,
      :status,
      :status_message,
      :created_at,
      :updated_response_versions,
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

    # <p>A versioned snapshot of a response edit.</p>
    # @!attribute response_text
    #   <p>The response text for this version.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>ISO 8601 timestamp of when this edit was made.</p>
    #   @return [Time]
    class ResponseVersion < Struct.new(
      nil,
      :response_text,
      :timestamp,
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to add to the resource.</p>
    #   @return [Hash<String, String>]
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys to remove from the resource.</p>
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
