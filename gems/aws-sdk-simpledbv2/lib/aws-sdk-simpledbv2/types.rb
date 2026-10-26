# frozen_string_literal: true

# This is generated code!

module Aws::SimpleDBv2
  # This module contains the types returned by client operations.
  module Types

    # Indicates a conflict with one or more parameters of the request.
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary information about an export, including its unique identifier, current status,
    #      creation time, and the domain being exported.
    # @!attribute export_arn
    #   Unique ARN identifier of the export.
    #   @return [String]
    # @!attribute export_status
    #   The current state of the export. Current possible values include : PENDING - export request received,
    #            IN_PROGRESS - export is being processed, SUCCEEDED - export completed successfully, and FAILED - export encountered an error.
    #   @return [String]
    # @!attribute requested_at
    #   Timestamp when the export request was received by the service
    #   @return [Time]
    # @!attribute domain_name
    #   The name of the domain for which the export was created.
    #   @return [String]
    class ExportSummary < Struct.new(
      nil,
      :export_arn,
      :export_status,
      :requested_at,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   Unique ARN identifier of the export.
    #   @return [String]
    class GetExportRequest < Struct.new(
      nil,
      :export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   Unique ARN identifier of the export.
    #   @return [String]
    # @!attribute client_token
    #   The client token provided for this export.
    #   @return [String]
    # @!attribute export_status
    #   The current state of the export. Current possible values include : PENDING - export request received,
    #            IN_PROGRESS - export is being processed, SUCCEEDED - export completed successfully, and FAILED - export encountered an error.
    #   @return [String]
    # @!attribute domain_name
    #   The name of the domain that was exported.
    #   @return [String]
    # @!attribute requested_at
    #   Timestamp when the export request was received by the service.
    #   @return [Time]
    # @!attribute s3_bucket
    #   The name of the S3 bucket for this export.
    #   @return [String]
    # @!attribute s3_key_prefix
    #   The S3 key prefix provided in the corresponding StartDomainExport request.
    #   @return [String]
    # @!attribute s3_sse_algorithm
    #   The S3 SSE encryption algorithm for this export.
    #   @return [String]
    # @!attribute s3_sse_kms_key_id
    #   The KMS key ID for this export.
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   The S3 bucket owner account ID for this export.
    #   @return [String]
    # @!attribute failure_code
    #   Failure code for the result of the failed export.
    #   @return [String]
    # @!attribute failure_message
    #   Export failure reason description.
    #   @return [String]
    # @!attribute export_manifest
    #   The name of the manifest summary file for the export.
    #   @return [String]
    # @!attribute items_count
    #   Total number of exported items.
    #   @return [Integer]
    # @!attribute export_data_cutoff_time
    #   The timestamp indicating the cutoff point for data inclusion in the export.
    #       All data inserted or modified before this time will be present in the exported data.
    #       Data insertions or modifications after this timestamp may or may not be present in the export.
    #   @return [Time]
    class GetExportResponse < Struct.new(
      nil,
      :export_arn,
      :client_token,
      :export_status,
      :domain_name,
      :requested_at,
      :s3_bucket,
      :s3_key_prefix,
      :s3_sse_algorithm,
      :s3_sse_kms_key_id,
      :s3_bucket_owner,
      :failure_code,
      :failure_message,
      :export_manifest,
      :items_count,
      :export_data_cutoff_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The specified next token is not valid.
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Parameters that must not be used together were used together in the request.
    # @!attribute message
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The specified parameter value is not valid.
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   The name of the domain to filter exports. If not provided, exports for all the domains will be listed.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of exports to return in a single response.
    #   @return [Integer]
    # @!attribute next_token
    #   A pagination token used to retrieve the next page of results. This token is obtained from
    #           the nextToken field in the previous ListExportsResponse. Leave empty for the first request.
    #   @return [String]
    class ListExportsRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_summaries
    #   List of export summaries containing export ARN, status, request timestamp, and associated domain name.
    #   @return [Array<Types::ExportSummary>]
    # @!attribute next_token
    #   A pagination token indicating that more results are available. To retrieve the next page
    #           of results, provide this token in a subsequent ListExports request. If null or empty, there are no
    #           more results to retrieve.
    #   @return [String]
    class ListExportsResponse < Struct.new(
      nil,
      :export_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The specified domain does not exist.
    # @!attribute message
    #   @return [String]
    class NoSuchDomainException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Export with specified ARN does not exist.
    # @!attribute message
    #   @return [String]
    class NoSuchExportException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Cannot start export as export quota limit was exceeded
    # @!attribute message
    #   @return [String]
    class NumberExportsLimitExceeded < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   Providing a ClientToken makes the call to StartDomainExport API idempotent,
    #       meaning that multiple identical calls have the same effect as one single call. A client token is valid for
    #       8 hours after the first request that uses it is completed. After 8 hours, any request with the same client token
    #       is treated as a new request. Do not resubmit the same request with the same client token for more than 8 hours,
    #       or the result might not be idempotent. If you submit a request with the same client token but a change
    #       in other parameters within the 8-hour idempotency window, a ConflictException will be returned.
    #   @return [String]
    # @!attribute domain_name
    #   The name of the domain to export.
    #   @return [String]
    # @!attribute s3_bucket
    #   The name of the S3 bucket where the domain data will be exported.
    #   @return [String]
    # @!attribute s3_key_prefix
    #   The prefix string to be used to generate the S3 object keys for export artifacts.
    #   @return [String]
    # @!attribute s3_sse_algorithm
    #   The server-side encryption algorithm to use for the exported data in S3.
    #        Valid values are: AES256 (SSE-S3) and KMS (SSE-KMS). If not specified, bucket's default encryption will apply.
    #   @return [String]
    # @!attribute s3_sse_kms_key_id
    #   The KMS key ID to use for server-side encryption with AWS KMS-managed keys (SSE-KMS).
    #        This parameter is only expected with KMS as the S3 SSE algorithm.
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   The ID of the AWS account that owns the bucket the export will be stored in.
    #   @return [String]
    class StartDomainExportRequest < Struct.new(
      nil,
      :client_token,
      :domain_name,
      :s3_bucket,
      :s3_key_prefix,
      :s3_sse_algorithm,
      :s3_sse_kms_key_id,
      :s3_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   The client token that was provided in the request.
    #   @return [String]
    # @!attribute export_arn
    #   Unique ARN identifier of the export.
    #   @return [String]
    # @!attribute requested_at
    #   Timestamp when the export request was received by the service.
    #   @return [Time]
    class StartDomainExportResponse < Struct.new(
      nil,
      :client_token,
      :export_arn,
      :requested_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
