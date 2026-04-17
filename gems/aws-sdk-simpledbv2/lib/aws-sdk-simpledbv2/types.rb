# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SimpleDBv2
  module Types

    # Indicates a conflict with one or more parameters of the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an export, including its unique identifier,
    # current status, creation time, and the domain being exported.
    #
    # @!attribute [rw] export_arn
    #   Unique ARN identifier of the export.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The current state of the export. Current possible values include :
    #   PENDING - export request received, IN\_PROGRESS - export is being
    #   processed, SUCCEEDED - export completed successfully, and FAILED -
    #   export encountered an error.
    #   @return [String]
    #
    # @!attribute [rw] requested_at
    #   Timestamp when the export request was received by the service
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which the export was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/ExportSummary AWS API Documentation
    #
    class ExportSummary < Struct.new(
      :export_arn,
      :export_status,
      :requested_at,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_arn
    #   Unique ARN identifier of the export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/GetExportRequest AWS API Documentation
    #
    class GetExportRequest < Struct.new(
      :export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_arn
    #   Unique ARN identifier of the export.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token provided for this export.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The current state of the export. Current possible values include :
    #   PENDING - export request received, IN\_PROGRESS - export is being
    #   processed, SUCCEEDED - export completed successfully, and FAILED -
    #   export encountered an error.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that was exported.
    #   @return [String]
    #
    # @!attribute [rw] requested_at
    #   Timestamp when the export request was received by the service.
    #   @return [Time]
    #
    # @!attribute [rw] s3_bucket
    #   The name of the S3 bucket for this export.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The S3 key prefix provided in the corresponding StartDomainExport
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] s3_sse_algorithm
    #   The S3 SSE encryption algorithm for this export.
    #   @return [String]
    #
    # @!attribute [rw] s3_sse_kms_key_id
    #   The KMS key ID for this export.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_owner
    #   The S3 bucket owner account ID for this export.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   Failure code for the result of the failed export.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Export failure reason description.
    #   @return [String]
    #
    # @!attribute [rw] export_manifest
    #   The name of the manifest summary file for the export.
    #   @return [String]
    #
    # @!attribute [rw] items_count
    #   Total number of exported items.
    #   @return [Integer]
    #
    # @!attribute [rw] export_data_cutoff_time
    #   The timestamp indicating the cutoff point for data inclusion in the
    #   export. All data inserted or modified before this time will be
    #   present in the exported data. Data insertions or modifications after
    #   this timestamp may or may not be present in the export.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/GetExportResponse AWS API Documentation
    #
    class GetExportResponse < Struct.new(
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
      :export_data_cutoff_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified next token is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that must not be used together were used together in the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter value is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain to filter exports. If not provided, exports
    #   for all the domains will be listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of exports to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to retrieve the next page of results. This
    #   token is obtained from the nextToken field in the previous
    #   ListExportsResponse. Leave empty for the first request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/ListExportsRequest AWS API Documentation
    #
    class ListExportsRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_summaries
    #   List of export summaries containing export ARN, status, request
    #   timestamp, and associated domain name.
    #   @return [Array<Types::ExportSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating that more results are available. To
    #   retrieve the next page of results, provide this token in a
    #   subsequent ListExports request. If null or empty, there are no more
    #   results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/ListExportsResponse AWS API Documentation
    #
    class ListExportsResponse < Struct.new(
      :export_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified domain does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/NoSuchDomainException AWS API Documentation
    #
    class NoSuchDomainException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Export with specified ARN does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/NoSuchExportException AWS API Documentation
    #
    class NoSuchExportException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot start export as export quota limit was exceeded
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/NumberExportsLimitExceeded AWS API Documentation
    #
    class NumberExportsLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Providing a ClientToken makes the call to StartDomainExport API
    #   idempotent, meaning that multiple identical calls have the same
    #   effect as one single call. A client token is valid for 8 hours after
    #   the first request that uses it is completed. After 8 hours, any
    #   request with the same client token is treated as a new request. Do
    #   not resubmit the same request with the same client token for more
    #   than 8 hours, or the result might not be idempotent. If you submit a
    #   request with the same client token but a change in other parameters
    #   within the 8-hour idempotency window, a ConflictException will be
    #   returned.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain to export.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The name of the S3 bucket where the domain data will be exported.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The prefix string to be used to generate the S3 object keys for
    #   export artifacts.
    #   @return [String]
    #
    # @!attribute [rw] s3_sse_algorithm
    #   The server-side encryption algorithm to use for the exported data in
    #   S3. Valid values are: AES256 (SSE-S3) and KMS (SSE-KMS). If not
    #   specified, bucket's default encryption will apply.
    #   @return [String]
    #
    # @!attribute [rw] s3_sse_kms_key_id
    #   The KMS key ID to use for server-side encryption with AWS
    #   KMS-managed keys (SSE-KMS). This parameter is only expected with KMS
    #   as the S3 SSE algorithm.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_owner
    #   The ID of the AWS account that owns the bucket the export will be
    #   stored in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/StartDomainExportRequest AWS API Documentation
    #
    class StartDomainExportRequest < Struct.new(
      :client_token,
      :domain_name,
      :s3_bucket,
      :s3_key_prefix,
      :s3_sse_algorithm,
      :s3_sse_kms_key_id,
      :s3_bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The client token that was provided in the request.
    #   @return [String]
    #
    # @!attribute [rw] export_arn
    #   Unique ARN identifier of the export.
    #   @return [String]
    #
    # @!attribute [rw] requested_at
    #   Timestamp when the export request was received by the service.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simpledbv2-2025-09-26/StartDomainExportResponse AWS API Documentation
    #
    class StartDomainExportResponse < Struct.new(
      :client_token,
      :export_arn,
      :requested_at)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

