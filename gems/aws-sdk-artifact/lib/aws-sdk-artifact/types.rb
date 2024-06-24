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
