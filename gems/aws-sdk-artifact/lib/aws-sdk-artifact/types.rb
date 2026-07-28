# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Artifact
  module Types

    # User does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Account settings for the customer.
    #
    # @!attribute [rw] notification_subscription_status
    #   Notification subscription status of the customer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/AccountSettings AWS API Documentation
    #
    class AccountSettings < Struct.new(
      :notification_subscription_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Citation information for AI-generated responses.
    #
    # @!attribute [rw] source_label
    #   Label identifying the compliance source.
    #   @return [String]
    #
    # @!attribute [rw] source_content
    #   Content text from the compliance source.
    #   @return [String]
    #
    # @!attribute [rw] source_link
    #   Link to the compliance source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/Citation AWS API Documentation
    #
    class Citation < Struct.new(
      :source_label,
      :source_content,
      :source_link)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to create/modify content would result in a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the affected resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the affected resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Title of the inquiry.
    #   @return [String]
    #
    # @!attribute [rw] inquiry_content
    #   Content for creating a compliance inquiry - either a single query or
    #   file content.
    #   @return [Types::InquiryContent]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] support_mode
    #   Support mode for inquiry processing. Only supported for file upload
    #   mode. Defaults to AI\_ONLY if not specified.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the compliance inquiry resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/CreateComplianceInquiryRequest AWS API Documentation
    #
    class CreateComplianceInquiryRequest < Struct.new(
      :name,
      :inquiry_content,
      :client_token,
      :support_mode,
      :tags)
      SENSITIVE = [:name, :inquiry_content]
      include Aws::Structure
    end

    # @!attribute [rw] compliance_inquiry_summary
    #   Summary information about the created compliance inquiry.
    #   @return [Types::InquirySummary]
    #
    # @!attribute [rw] tags
    #   Tags associated with the compliance inquiry resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/CreateComplianceInquiryResponse AWS API Documentation
    #
    class CreateComplianceInquiryResponse < Struct.new(
      :compliance_inquiry_summary,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary for customer-agreement resource.
    #
    # @!attribute [rw] name
    #   Name of the customer-agreement resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   ARN of the customer-agreement resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier of the customer-agreement resource.
    #   @return [String]
    #
    # @!attribute [rw] agreement_arn
    #   ARN of the agreement resource the customer-agreement resource
    #   represents.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   AWS account Id that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] organization_arn
    #   ARN of the organization that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] effective_start
    #   Timestamp indicating when the agreement became effective.
    #   @return [Time]
    #
    # @!attribute [rw] effective_end
    #   Timestamp indicating when the agreement was terminated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   State of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] acceptance_terms
    #   Terms required to accept the agreement resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] terminate_terms
    #   Terms required to terminate the customer-agreement resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   Type of the customer-agreement resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/CustomerAgreementSummary AWS API Documentation
    #
    class CustomerAgreementSummary < Struct.new(
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
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_inquiry_id
    #   Unique resource ID for the compliance inquiry.
    #   @return [String]
    #
    # @!attribute [rw] query_identifiers
    #   List of query identifiers to include in the export.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] include_citations
    #   When true, include citations in the exported document.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ExportComplianceInquiryRequest AWS API Documentation
    #
    class ExportComplianceInquiryRequest < Struct.new(
      :compliance_inquiry_id,
      :query_identifiers,
      :include_citations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_presigned_url
    #   Presigned S3 URL to access the exported compliance inquiry report.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the compliance inquiry resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ExportComplianceInquiryResponse AWS API Documentation
    #
    class ExportComplianceInquiryResponse < Struct.new(
      :document_presigned_url,
      :tags)
      SENSITIVE = [:document_presigned_url]
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetAccountSettingsRequest AWS API Documentation
    #
    class GetAccountSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] account_settings
    #   Account settings for the customer.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetAccountSettingsResponse AWS API Documentation
    #
    class GetAccountSettingsResponse < Struct.new(
      :account_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_inquiry_id
    #   Unique resource ID for the compliance inquiry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetComplianceInquiryMetadataRequest AWS API Documentation
    #
    class GetComplianceInquiryMetadataRequest < Struct.new(
      :compliance_inquiry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_inquiry_detail
    #   Detailed information about the compliance inquiry.
    #   @return [Types::InquiryDetail]
    #
    # @!attribute [rw] tags
    #   Tags associated with the compliance inquiry resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetComplianceInquiryMetadataResponse AWS API Documentation
    #
    class GetComplianceInquiryMetadataResponse < Struct.new(
      :compliance_inquiry_detail,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   Unique resource ID for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] report_version
    #   Version for the report resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetReportMetadataRequest AWS API Documentation
    #
    class GetReportMetadataRequest < Struct.new(
      :report_id,
      :report_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_details
    #   Report resource detail.
    #   @return [Types::ReportDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetReportMetadataResponse AWS API Documentation
    #
    class GetReportMetadataResponse < Struct.new(
      :report_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   Unique resource ID for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] report_version
    #   Version for the report resource.
    #   @return [Integer]
    #
    # @!attribute [rw] term_token
    #   Unique download token provided by GetTermForReport API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetReportRequest AWS API Documentation
    #
    class GetReportRequest < Struct.new(
      :report_id,
      :report_version,
      :term_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_presigned_url
    #   Presigned S3 url to access the report content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetReportResponse AWS API Documentation
    #
    class GetReportResponse < Struct.new(
      :document_presigned_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   Unique resource ID for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] report_version
    #   Version for the report resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetTermForReportRequest AWS API Documentation
    #
    class GetTermForReportRequest < Struct.new(
      :report_id,
      :report_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_presigned_url
    #   Presigned S3 url to access the term content.
    #   @return [String]
    #
    # @!attribute [rw] term_token
    #   Unique token representing this request event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/GetTermForReportResponse AWS API Documentation
    #
    class GetTermForReportResponse < Struct.new(
      :document_presigned_url,
      :term_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content for creating a compliance inquiry - either a single query or
    # file content.
    #
    # @note InquiryContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] query
    #   Single text query for AI-generated answer.
    #   @return [String]
    #
    # @!attribute [rw] file_content
    #   File content with multiple questions.
    #   @return [Types::InquiryFileContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/InquiryContent AWS API Documentation
    #
    class InquiryContent < Struct.new(
      :query,
      :file_content,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Query < InquiryContent; end
      class FileContent < InquiryContent; end
      class Unknown < InquiryContent; end
    end

    # Detailed information about a compliance inquiry.
    #
    # @!attribute [rw] arn
    #   ARN of the compliance inquiry resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Title of the inquiry.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Unique resource ID for the compliance inquiry.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current processing status of the inquiry.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Status message providing additional context.
    #   @return [String]
    #
    # @!attribute [rw] input_source
    #   Type of inquiry content (text or file).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp indicating when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp indicating when the resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] support_mode
    #   Support mode for this inquiry. AI\_ONLY provides AI-generated
    #   responses. FULL\_SUPPORT includes human expert review.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/InquiryDetail AWS API Documentation
    #
    class InquiryDetail < Struct.new(
      :arn,
      :name,
      :id,
      :status,
      :status_message,
      :input_source,
      :created_at,
      :updated_at,
      :support_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # File content structure for compliance inquiry uploads.
    #
    # @!attribute [rw] file_sections
    #   List of file sections/sheets to process.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content
    #   Binary content of the uploaded file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/InquiryFileContent AWS API Documentation
    #
    class InquiryFileContent < Struct.new(
      :file_sections,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a compliance inquiry.
    #
    # @!attribute [rw] arn
    #   ARN of the compliance inquiry resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Title of the inquiry.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Unique resource ID for the compliance inquiry.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current processing status of the inquiry.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Status message providing additional context.
    #   @return [String]
    #
    # @!attribute [rw] input_source
    #   Type of inquiry content (text or file).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp indicating when the resource was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/InquirySummary AWS API Documentation
    #
    class InquirySummary < Struct.new(
      :arn,
      :name,
      :id,
      :status,
      :status_message,
      :input_source,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unknown server exception has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Number of seconds in which the caller can retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of resources to return in the paginated response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListComplianceInquiriesRequest AWS API Documentation
    #
    class ListComplianceInquiriesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_inquiries
    #   List of compliance inquiry resources.
    #   @return [Array<Types::InquirySummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListComplianceInquiriesResponse AWS API Documentation
    #
    class ListComplianceInquiriesResponse < Struct.new(
      :compliance_inquiries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_inquiry_id
    #   Unique resource ID for the compliance inquiry.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of resources to return in the paginated response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListComplianceInquiryQueriesRequest AWS API Documentation
    #
    class ListComplianceInquiryQueriesRequest < Struct.new(
      :compliance_inquiry_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queries
    #   List of compliance query summaries.
    #   @return [Array<Types::QuerySummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListComplianceInquiryQueriesResponse AWS API Documentation
    #
    class ListComplianceInquiryQueriesResponse < Struct.new(
      :queries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of resources to return in the paginated response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListCustomerAgreementsRequest AWS API Documentation
    #
    class ListCustomerAgreementsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_agreements
    #   List of customer-agreement resources.
    #   @return [Array<Types::CustomerAgreementSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListCustomerAgreementsResponse AWS API Documentation
    #
    class ListCustomerAgreementsResponse < Struct.new(
      :customer_agreements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_id
    #   Unique resource ID for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of resources to return in the paginated response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListReportVersionsRequest AWS API Documentation
    #
    class ListReportVersionsRequest < Struct.new(
      :report_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reports
    #   List of report resources.
    #   @return [Array<Types::ReportSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListReportVersionsResponse AWS API Documentation
    #
    class ListReportVersionsResponse < Struct.new(
      :reports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of resources to return in the paginated response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListReportsRequest AWS API Documentation
    #
    class ListReportsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reports
    #   List of report resources.
    #   @return [Array<Types::ReportSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page of resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListReportsResponse AWS API Documentation
    #
    class ListReportsResponse < Struct.new(
      :reports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_subscription_status
    #   Desired notification subscription status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/PutAccountSettingsRequest AWS API Documentation
    #
    class PutAccountSettingsRequest < Struct.new(
      :notification_subscription_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_settings
    #   Account settings for the customer.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/PutAccountSettingsResponse AWS API Documentation
    #
    class PutAccountSettingsResponse < Struct.new(
      :account_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compliance_inquiry_id
    #   The unique identifier for the compliance inquiry.
    #   @return [String]
    #
    # @!attribute [rw] query_identifier
    #   The sequential identifier of the query to provide feedback on.
    #   @return [Integer]
    #
    # @!attribute [rw] rating
    #   The rating for the feedback. Valid values are THUMBS\_UP and
    #   THUMBS\_DOWN.
    #   @return [String]
    #
    # @!attribute [rw] response_revision_id
    #   The response revision ID. Use this value to prevent submitting
    #   feedback on a stale response.
    #   @return [Integer]
    #
    # @!attribute [rw] reason_codes
    #   The reason codes that describe why you rated the response. Valid
    #   values are OTHER, PARTIAL\_RESPONSE, and IRRELEVANT\_RESPONSE.
    #   @return [Array<String>]
    #
    # @!attribute [rw] comment
    #   An optional comment for the feedback.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/PutComplianceInquiryFeedbackRequest AWS API Documentation
    #
    class PutComplianceInquiryFeedbackRequest < Struct.new(
      :compliance_inquiry_id,
      :query_identifier,
      :rating,
      :response_revision_id,
      :reason_codes,
      :comment,
      :client_token)
      SENSITIVE = [:comment]
      include Aws::Structure
    end

    # @!attribute [rw] submitted_at
    #   The timestamp when the feedback was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/PutComplianceInquiryFeedbackResponse AWS API Documentation
    #
    class PutComplianceInquiryFeedbackResponse < Struct.new(
      :submitted_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a single query within a compliance inquiry.
    #
    # @!attribute [rw] query_identifier
    #   Sequential identifier of the query within the inquiry.
    #   @return [Integer]
    #
    # @!attribute [rw] query
    #   The actual query text.
    #   @return [String]
    #
    # @!attribute [rw] response
    #   Generated response to the query.
    #   @return [String]
    #
    # @!attribute [rw] review_type
    #   Type of review for the response.
    #   @return [String]
    #
    # @!attribute [rw] citations
    #   Supporting citations for the response.
    #   @return [Array<Types::Citation>]
    #
    # @!attribute [rw] status
    #   Current processing status of the query.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Descriptive status message.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the query was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_response_versions
    #   Ordered list of response version history entries, oldest first.
    #   @return [Array<Types::ResponseVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/QuerySummary AWS API Documentation
    #
    class QuerySummary < Struct.new(
      :query_identifier,
      :query,
      :response,
      :review_type,
      :citations,
      :status,
      :status_message,
      :created_at,
      :updated_response_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Full detail for report resource metadata.
    #
    # @!attribute [rw] id
    #   Unique resource ID for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] period_start
    #   Timestamp indicating the report resource effective start.
    #   @return [Time]
    #
    # @!attribute [rw] period_end
    #   Timestamp indicating the report resource effective end.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   Timestamp indicating when the report resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_at
    #   Timestamp indicating when the report resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_at
    #   Timestamp indicating when the report resource was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Current state of the report resource
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   ARN for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] series
    #   Series for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Category for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   Associated company name for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   Associated product name for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] term_arn
    #   Unique resource ARN for term resource.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version for the report resource.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_type
    #   Acceptance type for report.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   Sequence number to enforce optimistic locking.
    #   @return [Integer]
    #
    # @!attribute [rw] upload_state
    #   The current state of the document upload.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The message associated with the current upload state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ReportDetail AWS API Documentation
    #
    class ReportDetail < Struct.new(
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
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary for report resource.
    #
    # @!attribute [rw] id
    #   Unique resource ID for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Current state of the report resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   ARN for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version for the report resource.
    #   @return [Integer]
    #
    # @!attribute [rw] upload_state
    #   The current state of the document upload.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] period_start
    #   Timestamp indicating the report resource effective start.
    #   @return [Time]
    #
    # @!attribute [rw] period_end
    #   Timestamp indicating the report resource effective end.
    #   @return [Time]
    #
    # @!attribute [rw] series
    #   Series for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Category for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   Associated company name for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   Associated product name for the report resource.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The message associated with the current upload state.
    #   @return [String]
    #
    # @!attribute [rw] acceptance_type
    #   Acceptance type for report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ReportSummary AWS API Documentation
    #
    class ReportSummary < Struct.new(
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
      :acceptance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the affected resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the affected resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A versioned snapshot of a response edit.
    #
    # @!attribute [rw] response_text
    #   The response text for this version.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   ISO 8601 timestamp of when this edit was made.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ResponseVersion AWS API Documentation
    #
    class ResponseVersion < Struct.new(
      :response_text,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the affected resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the affected resource.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Code for the affected service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Code for the affected quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Code for the affected service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Code for the affected quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Number of seconds in which the caller can retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Request fails to satisfy the constraints specified by an AWS service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The field that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation exception message and name.
    #
    # @!attribute [rw] name
    #   Name of validation exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message describing why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/artifact-2018-05-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

