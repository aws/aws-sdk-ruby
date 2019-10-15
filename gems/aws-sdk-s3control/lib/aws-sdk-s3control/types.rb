# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control
  module Types

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateJobRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         confirmation_required: false,
    #         operation: { # required
    #           lambda_invoke: {
    #             function_arn: "NonEmptyMaxLength1024String",
    #           },
    #           s3_put_object_copy: {
    #             target_resource: "S3BucketArnString",
    #             canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #             access_control_grants: [
    #               {
    #                 grantee: {
    #                   type_identifier: "id", # accepts id, emailAddress, uri
    #                   identifier: "NonEmptyMaxLength1024String",
    #                   display_name: "NonEmptyMaxLength1024String",
    #                 },
    #                 permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #               },
    #             ],
    #             metadata_directive: "COPY", # accepts COPY, REPLACE
    #             modified_since_constraint: Time.now,
    #             new_object_metadata: {
    #               cache_control: "NonEmptyMaxLength1024String",
    #               content_disposition: "NonEmptyMaxLength1024String",
    #               content_encoding: "NonEmptyMaxLength1024String",
    #               content_language: "NonEmptyMaxLength1024String",
    #               user_metadata: {
    #                 "NonEmptyMaxLength1024String" => "MaxLength1024String",
    #               },
    #               content_length: 1,
    #               content_md5: "NonEmptyMaxLength1024String",
    #               content_type: "NonEmptyMaxLength1024String",
    #               http_expires_date: Time.now,
    #               requester_charged: false,
    #               sse_algorithm: "AES256", # accepts AES256, KMS
    #             },
    #             new_object_tagging: [
    #               {
    #                 key: "NonEmptyMaxLength1024String", # required
    #                 value: "MaxLength1024String", # required
    #               },
    #             ],
    #             redirect_location: "NonEmptyMaxLength2048String",
    #             requester_pays: false,
    #             storage_class: "STANDARD", # accepts STANDARD, STANDARD_IA, ONEZONE_IA, GLACIER, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #             un_modified_since_constraint: Time.now,
    #             sse_aws_kms_key_id: "KmsKeyArnString",
    #             target_key_prefix: "NonEmptyMaxLength1024String",
    #             object_lock_legal_hold_status: "OFF", # accepts OFF, ON
    #             object_lock_mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #             object_lock_retain_until_date: Time.now,
    #           },
    #           s3_put_object_acl: {
    #             access_control_policy: {
    #               access_control_list: {
    #                 owner: { # required
    #                   id: "NonEmptyMaxLength1024String",
    #                   display_name: "NonEmptyMaxLength1024String",
    #                 },
    #                 grants: [
    #                   {
    #                     grantee: {
    #                       type_identifier: "id", # accepts id, emailAddress, uri
    #                       identifier: "NonEmptyMaxLength1024String",
    #                       display_name: "NonEmptyMaxLength1024String",
    #                     },
    #                     permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #                   },
    #                 ],
    #               },
    #               canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #             },
    #           },
    #           s3_put_object_tagging: {
    #             tag_set: [
    #               {
    #                 key: "NonEmptyMaxLength1024String", # required
    #                 value: "MaxLength1024String", # required
    #               },
    #             ],
    #           },
    #           s3_initiate_restore_object: {
    #             expiration_in_days: 1,
    #             glacier_job_tier: "BULK", # accepts BULK, STANDARD
    #           },
    #         },
    #         report: { # required
    #           bucket: "S3BucketArnString",
    #           format: "Report_CSV_20180820", # accepts Report_CSV_20180820
    #           enabled: false, # required
    #           prefix: "ReportPrefixString",
    #           report_scope: "AllTasks", # accepts AllTasks, FailedTasksOnly
    #         },
    #         client_request_token: "NonEmptyMaxLength64String", # required
    #         manifest: { # required
    #           spec: { # required
    #             format: "S3BatchOperations_CSV_20180820", # required, accepts S3BatchOperations_CSV_20180820, S3InventoryReport_CSV_20161130
    #             fields: ["Ignore"], # accepts Ignore, Bucket, Key, VersionId
    #           },
    #           location: { # required
    #             object_arn: "S3KeyArnString", # required
    #             object_version_id: "S3ObjectVersionId",
    #             etag: "NonEmptyMaxLength1024String", # required
    #           },
    #         },
    #         description: "NonEmptyMaxLength256String",
    #         priority: 1, # required
    #         role_arn: "IAMRoleArn", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] confirmation_required
    #   Indicates whether confirmation is required before Amazon S3 runs the
    #   job. Confirmation is only required for jobs created through the
    #   Amazon S3 console.
    #   @return [Boolean]
    #
    # @!attribute [rw] operation
    #   The operation that you want this job to perform on each object
    #   listed in the manifest. For more information about the available
    #   operations, see [Available Operations][1] in the *Amazon Simple
    #   Storage Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html
    #   @return [Types::JobOperation]
    #
    # @!attribute [rw] report
    #   Configuration parameters for the optional job-completion report.
    #   @return [Types::JobReport]
    #
    # @!attribute [rw] client_request_token
    #   An idempotency token to ensure that you don't accidentally submit
    #   the same request twice. You can use any string up to the maximum
    #   length.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] manifest
    #   Configuration parameters for the manifest.
    #   @return [Types::JobManifest]
    #
    # @!attribute [rw] description
    #   A description for this job. You can use any string within the
    #   permitted length. Descriptions don't need to be unique and can be
    #   used for multiple jobs.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The numerical priority for this job. Higher numbers indicate higher
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) for the Identity and Access
    #   Management (IAM) Role that batch operations will use to execute this
    #   job's operation on each object in the manifest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :account_id,
      :confirmation_required,
      :operation,
      :report,
      :client_request_token,
      :manifest,
      :description,
      :priority,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID for this job. Amazon S3 generates this ID automatically and
    #   returns it after a successful `Create Job` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateJobResult AWS API Documentation
    #
    class CreateJobResult < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePublicAccessBlockRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID for the AWS account whose block public access
    #   configuration you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeletePublicAccessBlockRequest AWS API Documentation
    #
    class DeletePublicAccessBlockRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job whose information you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DescribeJobRequest AWS API Documentation
    #
    class DescribeJobRequest < Struct.new(
      :account_id,
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Contains the configuration parameters and status for the job
    #   specified in the `Describe Job` request.
    #   @return [Types::JobDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DescribeJobResult AWS API Documentation
    #
    class DescribeJobResult < Struct.new(
      :job)
      include Aws::Structure
    end

    # @!attribute [rw] public_access_block_configuration
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlockOutput AWS API Documentation
    #
    class GetPublicAccessBlockOutput < Struct.new(
      :public_access_block_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPublicAccessBlockRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlockRequest AWS API Documentation
    #
    class GetPublicAccessBlockRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/IdempotencyException AWS API Documentation
    #
    class IdempotencyException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A container element for the job configuration and status information
    # returned by a `Describe Job` request.
    #
    # @!attribute [rw] job_id
    #   The ID for the specified job.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_required
    #   Indicates whether confirmation is required before Amazon S3 begins
    #   running the specified job. Confirmation is required only for jobs
    #   created through the Amazon S3 console.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description for this job, if one was provided in this job's
    #   `Create Job` request.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) for this job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the specified job.
    #   @return [String]
    #
    # @!attribute [rw] manifest
    #   The configuration information for the specified job's manifest
    #   object.
    #   @return [Types::JobManifest]
    #
    # @!attribute [rw] operation
    #   The operation that the specified job is configured to execute on the
    #   objects listed in the manifest.
    #   @return [Types::JobOperation]
    #
    # @!attribute [rw] priority
    #   The priority of the specified job.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_summary
    #   Describes the total number of tasks that the specified job has
    #   executed, the number of tasks that succeeded, and the number of
    #   tasks that failed.
    #   @return [Types::JobProgressSummary]
    #
    # @!attribute [rw] status_update_reason
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   If the specified job failed, this field contains information
    #   describing the failure.
    #   @return [Array<Types::JobFailure>]
    #
    # @!attribute [rw] report
    #   Contains the configuration information for the job-completion report
    #   if you requested one in the `Create Job` request.
    #   @return [Types::JobReport]
    #
    # @!attribute [rw] creation_time
    #   A timestamp indicating when this job was created.
    #   @return [Time]
    #
    # @!attribute [rw] termination_date
    #   A timestamp indicating when this job terminated. A job's
    #   termination date is the date and time when it succeeded, failed, or
    #   was canceled.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) for the Identity and Access
    #   Management (IAM) Role assigned to execute the tasks for this job.
    #   @return [String]
    #
    # @!attribute [rw] suspended_date
    #   The timestamp when this job was suspended, if it has been suspended.
    #   @return [Time]
    #
    # @!attribute [rw] suspended_cause
    #   The reason why the specified job was suspended. A job is only
    #   suspended if you create it through the Amazon S3 console. When you
    #   create the job, it enters the `Suspended` state to await
    #   confirmation before running. After you confirm the job, it
    #   automatically exits the `Suspended` state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobDescriptor AWS API Documentation
    #
    class JobDescriptor < Struct.new(
      :job_id,
      :confirmation_required,
      :description,
      :job_arn,
      :status,
      :manifest,
      :operation,
      :priority,
      :progress_summary,
      :status_update_reason,
      :failure_reasons,
      :report,
      :creation_time,
      :termination_date,
      :role_arn,
      :suspended_date,
      :suspended_cause)
      include Aws::Structure
    end

    # If this job failed, this element indicates why the job failed.
    #
    # @!attribute [rw] failure_code
    #   The failure code, if any, for the specified job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason, if any, for the specified job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobFailure AWS API Documentation
    #
    class JobFailure < Struct.new(
      :failure_code,
      :failure_reason)
      include Aws::Structure
    end

    # Contains the configuration and status information for a single job
    # retrieved as part of a job list.
    #
    # @!attribute [rw] job_id
    #   The ID for the specified job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The user-specified description that was included in the specified
    #   job's `Create Job` request.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The operation that the specified job is configured to run on each
    #   object listed in the manifest.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The current priority for the specified job.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The specified job's current status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp indicating when the specified job was created.
    #   @return [Time]
    #
    # @!attribute [rw] termination_date
    #   A timestamp indicating when the specified job terminated. A job's
    #   termination date is the date and time when it succeeded, failed, or
    #   was canceled.
    #   @return [Time]
    #
    # @!attribute [rw] progress_summary
    #   Describes the total number of tasks that the specified job has
    #   executed, the number of tasks that succeeded, and the number of
    #   tasks that failed.
    #   @return [Types::JobProgressSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobListDescriptor AWS API Documentation
    #
    class JobListDescriptor < Struct.new(
      :job_id,
      :description,
      :operation,
      :priority,
      :status,
      :creation_time,
      :termination_date,
      :progress_summary)
      include Aws::Structure
    end

    # Contains the configuration information for a job's manifest.
    #
    # @note When making an API call, you may pass JobManifest
    #   data as a hash:
    #
    #       {
    #         spec: { # required
    #           format: "S3BatchOperations_CSV_20180820", # required, accepts S3BatchOperations_CSV_20180820, S3InventoryReport_CSV_20161130
    #           fields: ["Ignore"], # accepts Ignore, Bucket, Key, VersionId
    #         },
    #         location: { # required
    #           object_arn: "S3KeyArnString", # required
    #           object_version_id: "S3ObjectVersionId",
    #           etag: "NonEmptyMaxLength1024String", # required
    #         },
    #       }
    #
    # @!attribute [rw] spec
    #   Describes the format of the specified job's manifest. If the
    #   manifest is in CSV format, also describes the columns contained
    #   within the manifest.
    #   @return [Types::JobManifestSpec]
    #
    # @!attribute [rw] location
    #   Contains the information required to locate the specified job's
    #   manifest.
    #   @return [Types::JobManifestLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobManifest AWS API Documentation
    #
    class JobManifest < Struct.new(
      :spec,
      :location)
      include Aws::Structure
    end

    # Contains the information required to locate a manifest object.
    #
    # @note When making an API call, you may pass JobManifestLocation
    #   data as a hash:
    #
    #       {
    #         object_arn: "S3KeyArnString", # required
    #         object_version_id: "S3ObjectVersionId",
    #         etag: "NonEmptyMaxLength1024String", # required
    #       }
    #
    # @!attribute [rw] object_arn
    #   The Amazon Resource Name (ARN) for a manifest object.
    #   @return [String]
    #
    # @!attribute [rw] object_version_id
    #   The optional version ID to identify a specific version of the
    #   manifest object.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The ETag for the specified manifest object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobManifestLocation AWS API Documentation
    #
    class JobManifestLocation < Struct.new(
      :object_arn,
      :object_version_id,
      :etag)
      include Aws::Structure
    end

    # Describes the format of a manifest. If the manifest is in CSV format,
    # also describes the columns contained within the manifest.
    #
    # @note When making an API call, you may pass JobManifestSpec
    #   data as a hash:
    #
    #       {
    #         format: "S3BatchOperations_CSV_20180820", # required, accepts S3BatchOperations_CSV_20180820, S3InventoryReport_CSV_20161130
    #         fields: ["Ignore"], # accepts Ignore, Bucket, Key, VersionId
    #       }
    #
    # @!attribute [rw] format
    #   Indicates which of the available formats the specified manifest
    #   uses.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   If the specified manifest object is in the
    #   `S3BatchOperations_CSV_20180820` format, this element describes
    #   which columns contain the required data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobManifestSpec AWS API Documentation
    #
    class JobManifestSpec < Struct.new(
      :format,
      :fields)
      include Aws::Structure
    end

    # The operation that you want this job to perform on each object listed
    # in the manifest. For more information about the available operations,
    # see [Available Operations][1] in the *Amazon Simple Storage Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html
    #
    # @note When making an API call, you may pass JobOperation
    #   data as a hash:
    #
    #       {
    #         lambda_invoke: {
    #           function_arn: "NonEmptyMaxLength1024String",
    #         },
    #         s3_put_object_copy: {
    #           target_resource: "S3BucketArnString",
    #           canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #           access_control_grants: [
    #             {
    #               grantee: {
    #                 type_identifier: "id", # accepts id, emailAddress, uri
    #                 identifier: "NonEmptyMaxLength1024String",
    #                 display_name: "NonEmptyMaxLength1024String",
    #               },
    #               permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #             },
    #           ],
    #           metadata_directive: "COPY", # accepts COPY, REPLACE
    #           modified_since_constraint: Time.now,
    #           new_object_metadata: {
    #             cache_control: "NonEmptyMaxLength1024String",
    #             content_disposition: "NonEmptyMaxLength1024String",
    #             content_encoding: "NonEmptyMaxLength1024String",
    #             content_language: "NonEmptyMaxLength1024String",
    #             user_metadata: {
    #               "NonEmptyMaxLength1024String" => "MaxLength1024String",
    #             },
    #             content_length: 1,
    #             content_md5: "NonEmptyMaxLength1024String",
    #             content_type: "NonEmptyMaxLength1024String",
    #             http_expires_date: Time.now,
    #             requester_charged: false,
    #             sse_algorithm: "AES256", # accepts AES256, KMS
    #           },
    #           new_object_tagging: [
    #             {
    #               key: "NonEmptyMaxLength1024String", # required
    #               value: "MaxLength1024String", # required
    #             },
    #           ],
    #           redirect_location: "NonEmptyMaxLength2048String",
    #           requester_pays: false,
    #           storage_class: "STANDARD", # accepts STANDARD, STANDARD_IA, ONEZONE_IA, GLACIER, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #           un_modified_since_constraint: Time.now,
    #           sse_aws_kms_key_id: "KmsKeyArnString",
    #           target_key_prefix: "NonEmptyMaxLength1024String",
    #           object_lock_legal_hold_status: "OFF", # accepts OFF, ON
    #           object_lock_mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #           object_lock_retain_until_date: Time.now,
    #         },
    #         s3_put_object_acl: {
    #           access_control_policy: {
    #             access_control_list: {
    #               owner: { # required
    #                 id: "NonEmptyMaxLength1024String",
    #                 display_name: "NonEmptyMaxLength1024String",
    #               },
    #               grants: [
    #                 {
    #                   grantee: {
    #                     type_identifier: "id", # accepts id, emailAddress, uri
    #                     identifier: "NonEmptyMaxLength1024String",
    #                     display_name: "NonEmptyMaxLength1024String",
    #                   },
    #                   permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #                 },
    #               ],
    #             },
    #             canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #           },
    #         },
    #         s3_put_object_tagging: {
    #           tag_set: [
    #             {
    #               key: "NonEmptyMaxLength1024String", # required
    #               value: "MaxLength1024String", # required
    #             },
    #           ],
    #         },
    #         s3_initiate_restore_object: {
    #           expiration_in_days: 1,
    #           glacier_job_tier: "BULK", # accepts BULK, STANDARD
    #         },
    #       }
    #
    # @!attribute [rw] lambda_invoke
    #   Directs the specified job to invoke an AWS Lambda function on each
    #   object in the manifest.
    #   @return [Types::LambdaInvokeOperation]
    #
    # @!attribute [rw] s3_put_object_copy
    #   Directs the specified job to execute a PUT Copy object call on each
    #   object in the manifest.
    #   @return [Types::S3CopyObjectOperation]
    #
    # @!attribute [rw] s3_put_object_acl
    #   Directs the specified job to execute a PUT Object acl call on each
    #   object in the manifest.
    #   @return [Types::S3SetObjectAclOperation]
    #
    # @!attribute [rw] s3_put_object_tagging
    #   Directs the specified job to execute a PUT Object tagging call on
    #   each object in the manifest.
    #   @return [Types::S3SetObjectTaggingOperation]
    #
    # @!attribute [rw] s3_initiate_restore_object
    #   Directs the specified job to execute an Initiate Glacier Restore
    #   call on each object in the manifest.
    #   @return [Types::S3InitiateRestoreObjectOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobOperation AWS API Documentation
    #
    class JobOperation < Struct.new(
      :lambda_invoke,
      :s3_put_object_copy,
      :s3_put_object_acl,
      :s3_put_object_tagging,
      :s3_initiate_restore_object)
      include Aws::Structure
    end

    # Describes the total number of tasks that the specified job has
    # executed, the number of tasks that succeeded, and the number of tasks
    # that failed.
    #
    # @!attribute [rw] total_number_of_tasks
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_tasks_succeeded
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_tasks_failed
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobProgressSummary AWS API Documentation
    #
    class JobProgressSummary < Struct.new(
      :total_number_of_tasks,
      :number_of_tasks_succeeded,
      :number_of_tasks_failed)
      include Aws::Structure
    end

    # Contains the configuration parameters for a job-completion report.
    #
    # @note When making an API call, you may pass JobReport
    #   data as a hash:
    #
    #       {
    #         bucket: "S3BucketArnString",
    #         format: "Report_CSV_20180820", # accepts Report_CSV_20180820
    #         enabled: false, # required
    #         prefix: "ReportPrefixString",
    #         report_scope: "AllTasks", # accepts AllTasks, FailedTasksOnly
    #       }
    #
    # @!attribute [rw] bucket
    #   The bucket where specified job-completion report will be stored.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the specified job-completion report.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the specified job will generate a job-completion
    #   report.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   An optional prefix to describe where in the specified bucket the
    #   job-completion report will be stored. Amazon S3 will store the
    #   job-completion report at
    #   &lt;prefix&gt;/job-&lt;job-id&gt;/report.json.
    #   @return [String]
    #
    # @!attribute [rw] report_scope
    #   Indicates whether the job-completion report will include details of
    #   all tasks or only failed tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobReport AWS API Documentation
    #
    class JobReport < Struct.new(
      :bucket,
      :format,
      :enabled,
      :prefix,
      :report_scope)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobStatusException AWS API Documentation
    #
    class JobStatusException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Contains the configuration parameters for a `Lambda Invoke` operation.
    #
    # @note When making an API call, you may pass LambdaInvokeOperation
    #   data as a hash:
    #
    #       {
    #         function_arn: "NonEmptyMaxLength1024String",
    #       }
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) for the AWS Lambda function that the
    #   specified job will invoke for each object in the manifest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/LambdaInvokeOperation AWS API Documentation
    #
    class LambdaInvokeOperation < Struct.new(
      :function_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         job_statuses: ["Active"], # accepts Active, Cancelled, Cancelling, Complete, Completing, Failed, Failing, New, Paused, Pausing, Preparing, Ready, Suspended
    #         next_token: "NonEmptyMaxLength1024String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] job_statuses
    #   The `List Jobs` request returns jobs that match the statuses listed
    #   in this element.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to request the next page of results. Use the
    #   token that Amazon S3 returned in the `NextToken` element of the
    #   `ListJobsResult` from the previous `List Jobs` request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs that Amazon S3 will include in the `List
    #   Jobs` response. If there are more jobs than this number, the
    #   response will include a pagination token in the `NextToken` field to
    #   enable you to retrieve the next page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :account_id,
      :job_statuses,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the `List Jobs` request produced more than the maximum number of
    #   results, you can pass this value into a subsequent `List Jobs`
    #   request in order to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] jobs
    #   The list of current jobs and jobs that have ended within the last 30
    #   days.
    #   @return [Array<Types::JobListDescriptor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListJobsResult AWS API Documentation
    #
    class ListJobsResult < Struct.new(
      :next_token,
      :jobs)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/NoSuchPublicAccessBlockConfiguration AWS API Documentation
    #
    class NoSuchPublicAccessBlockConfiguration < Struct.new(
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PublicAccessBlockConfiguration
    #   data as a hash:
    #
    #       {
    #         block_public_acls: false,
    #         ignore_public_acls: false,
    #         block_public_policy: false,
    #         restrict_public_buckets: false,
    #       }
    #
    # @!attribute [rw] block_public_acls
    #   @return [Boolean]
    #
    # @!attribute [rw] ignore_public_acls
    #   @return [Boolean]
    #
    # @!attribute [rw] block_public_policy
    #   @return [Boolean]
    #
    # @!attribute [rw] restrict_public_buckets
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PublicAccessBlockConfiguration AWS API Documentation
    #
    class PublicAccessBlockConfiguration < Struct.new(
      :block_public_acls,
      :ignore_public_acls,
      :block_public_policy,
      :restrict_public_buckets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPublicAccessBlockRequest
    #   data as a hash:
    #
    #       {
    #         public_access_block_configuration: { # required
    #           block_public_acls: false,
    #           ignore_public_acls: false,
    #           block_public_policy: false,
    #           restrict_public_buckets: false,
    #         },
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] public_access_block_configuration
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutPublicAccessBlockRequest AWS API Documentation
    #
    class PutPublicAccessBlockRequest < Struct.new(
      :public_access_block_configuration,
      :account_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3AccessControlList
    #   data as a hash:
    #
    #       {
    #         owner: { # required
    #           id: "NonEmptyMaxLength1024String",
    #           display_name: "NonEmptyMaxLength1024String",
    #         },
    #         grants: [
    #           {
    #             grantee: {
    #               type_identifier: "id", # accepts id, emailAddress, uri
    #               identifier: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String",
    #             },
    #             permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] owner
    #   @return [Types::S3ObjectOwner]
    #
    # @!attribute [rw] grants
    #   @return [Array<Types::S3Grant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3AccessControlList AWS API Documentation
    #
    class S3AccessControlList < Struct.new(
      :owner,
      :grants)
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3AccessControlPolicy
    #   data as a hash:
    #
    #       {
    #         access_control_list: {
    #           owner: { # required
    #             id: "NonEmptyMaxLength1024String",
    #             display_name: "NonEmptyMaxLength1024String",
    #           },
    #           grants: [
    #             {
    #               grantee: {
    #                 type_identifier: "id", # accepts id, emailAddress, uri
    #                 identifier: "NonEmptyMaxLength1024String",
    #                 display_name: "NonEmptyMaxLength1024String",
    #               },
    #               permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #             },
    #           ],
    #         },
    #         canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #       }
    #
    # @!attribute [rw] access_control_list
    #   @return [Types::S3AccessControlList]
    #
    # @!attribute [rw] canned_access_control_list
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3AccessControlPolicy AWS API Documentation
    #
    class S3AccessControlPolicy < Struct.new(
      :access_control_list,
      :canned_access_control_list)
      include Aws::Structure
    end

    # Contains the configuration parameters for a PUT Copy object operation.
    # Amazon S3 batch operations passes each value through to the underlying
    # PUT Copy object API. For more information about the parameters for
    # this operation, see [PUT Object - Copy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectCOPY.html
    #
    # @note When making an API call, you may pass S3CopyObjectOperation
    #   data as a hash:
    #
    #       {
    #         target_resource: "S3BucketArnString",
    #         canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #         access_control_grants: [
    #           {
    #             grantee: {
    #               type_identifier: "id", # accepts id, emailAddress, uri
    #               identifier: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String",
    #             },
    #             permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #           },
    #         ],
    #         metadata_directive: "COPY", # accepts COPY, REPLACE
    #         modified_since_constraint: Time.now,
    #         new_object_metadata: {
    #           cache_control: "NonEmptyMaxLength1024String",
    #           content_disposition: "NonEmptyMaxLength1024String",
    #           content_encoding: "NonEmptyMaxLength1024String",
    #           content_language: "NonEmptyMaxLength1024String",
    #           user_metadata: {
    #             "NonEmptyMaxLength1024String" => "MaxLength1024String",
    #           },
    #           content_length: 1,
    #           content_md5: "NonEmptyMaxLength1024String",
    #           content_type: "NonEmptyMaxLength1024String",
    #           http_expires_date: Time.now,
    #           requester_charged: false,
    #           sse_algorithm: "AES256", # accepts AES256, KMS
    #         },
    #         new_object_tagging: [
    #           {
    #             key: "NonEmptyMaxLength1024String", # required
    #             value: "MaxLength1024String", # required
    #           },
    #         ],
    #         redirect_location: "NonEmptyMaxLength2048String",
    #         requester_pays: false,
    #         storage_class: "STANDARD", # accepts STANDARD, STANDARD_IA, ONEZONE_IA, GLACIER, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #         un_modified_since_constraint: Time.now,
    #         sse_aws_kms_key_id: "KmsKeyArnString",
    #         target_key_prefix: "NonEmptyMaxLength1024String",
    #         object_lock_legal_hold_status: "OFF", # accepts OFF, ON
    #         object_lock_mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #         object_lock_retain_until_date: Time.now,
    #       }
    #
    # @!attribute [rw] target_resource
    #   @return [String]
    #
    # @!attribute [rw] canned_access_control_list
    #   @return [String]
    #
    # @!attribute [rw] access_control_grants
    #   @return [Array<Types::S3Grant>]
    #
    # @!attribute [rw] metadata_directive
    #   @return [String]
    #
    # @!attribute [rw] modified_since_constraint
    #   @return [Time]
    #
    # @!attribute [rw] new_object_metadata
    #   @return [Types::S3ObjectMetadata]
    #
    # @!attribute [rw] new_object_tagging
    #   @return [Array<Types::S3Tag>]
    #
    # @!attribute [rw] redirect_location
    #   @return [String]
    #
    # @!attribute [rw] requester_pays
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_class
    #   @return [String]
    #
    # @!attribute [rw] un_modified_since_constraint
    #   @return [Time]
    #
    # @!attribute [rw] sse_aws_kms_key_id
    #   @return [String]
    #
    # @!attribute [rw] target_key_prefix
    #   @return [String]
    #
    # @!attribute [rw] object_lock_legal_hold_status
    #   @return [String]
    #
    # @!attribute [rw] object_lock_mode
    #   @return [String]
    #
    # @!attribute [rw] object_lock_retain_until_date
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3CopyObjectOperation AWS API Documentation
    #
    class S3CopyObjectOperation < Struct.new(
      :target_resource,
      :canned_access_control_list,
      :access_control_grants,
      :metadata_directive,
      :modified_since_constraint,
      :new_object_metadata,
      :new_object_tagging,
      :redirect_location,
      :requester_pays,
      :storage_class,
      :un_modified_since_constraint,
      :sse_aws_kms_key_id,
      :target_key_prefix,
      :object_lock_legal_hold_status,
      :object_lock_mode,
      :object_lock_retain_until_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3Grant
    #   data as a hash:
    #
    #       {
    #         grantee: {
    #           type_identifier: "id", # accepts id, emailAddress, uri
    #           identifier: "NonEmptyMaxLength1024String",
    #           display_name: "NonEmptyMaxLength1024String",
    #         },
    #         permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #       }
    #
    # @!attribute [rw] grantee
    #   @return [Types::S3Grantee]
    #
    # @!attribute [rw] permission
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3Grant AWS API Documentation
    #
    class S3Grant < Struct.new(
      :grantee,
      :permission)
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3Grantee
    #   data as a hash:
    #
    #       {
    #         type_identifier: "id", # accepts id, emailAddress, uri
    #         identifier: "NonEmptyMaxLength1024String",
    #         display_name: "NonEmptyMaxLength1024String",
    #       }
    #
    # @!attribute [rw] type_identifier
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3Grantee AWS API Documentation
    #
    class S3Grantee < Struct.new(
      :type_identifier,
      :identifier,
      :display_name)
      include Aws::Structure
    end

    # Contains the configuration parameters for an Initiate Glacier Restore
    # job. Amazon S3 batch operations passes each value through to the
    # underlying POST Object restore API. For more information about the
    # parameters for this operation, see [Restoring Archives][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPOSTrestore.html#RESTObjectPOSTrestore-restore-request
    #
    # @note When making an API call, you may pass S3InitiateRestoreObjectOperation
    #   data as a hash:
    #
    #       {
    #         expiration_in_days: 1,
    #         glacier_job_tier: "BULK", # accepts BULK, STANDARD
    #       }
    #
    # @!attribute [rw] expiration_in_days
    #   @return [Integer]
    #
    # @!attribute [rw] glacier_job_tier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3InitiateRestoreObjectOperation AWS API Documentation
    #
    class S3InitiateRestoreObjectOperation < Struct.new(
      :expiration_in_days,
      :glacier_job_tier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3ObjectMetadata
    #   data as a hash:
    #
    #       {
    #         cache_control: "NonEmptyMaxLength1024String",
    #         content_disposition: "NonEmptyMaxLength1024String",
    #         content_encoding: "NonEmptyMaxLength1024String",
    #         content_language: "NonEmptyMaxLength1024String",
    #         user_metadata: {
    #           "NonEmptyMaxLength1024String" => "MaxLength1024String",
    #         },
    #         content_length: 1,
    #         content_md5: "NonEmptyMaxLength1024String",
    #         content_type: "NonEmptyMaxLength1024String",
    #         http_expires_date: Time.now,
    #         requester_charged: false,
    #         sse_algorithm: "AES256", # accepts AES256, KMS
    #       }
    #
    # @!attribute [rw] cache_control
    #   @return [String]
    #
    # @!attribute [rw] content_disposition
    #   @return [String]
    #
    # @!attribute [rw] content_encoding
    #   @return [String]
    #
    # @!attribute [rw] content_language
    #   @return [String]
    #
    # @!attribute [rw] user_metadata
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] content_length
    #   @return [Integer]
    #
    # @!attribute [rw] content_md5
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   @return [String]
    #
    # @!attribute [rw] http_expires_date
    #   @return [Time]
    #
    # @!attribute [rw] requester_charged
    #   @return [Boolean]
    #
    # @!attribute [rw] sse_algorithm
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3ObjectMetadata AWS API Documentation
    #
    class S3ObjectMetadata < Struct.new(
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :user_metadata,
      :content_length,
      :content_md5,
      :content_type,
      :http_expires_date,
      :requester_charged,
      :sse_algorithm)
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3ObjectOwner
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyMaxLength1024String",
    #         display_name: "NonEmptyMaxLength1024String",
    #       }
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3ObjectOwner AWS API Documentation
    #
    class S3ObjectOwner < Struct.new(
      :id,
      :display_name)
      include Aws::Structure
    end

    # Contains the configuration parameters for a Set Object ACL operation.
    # Amazon S3 batch operations passes each value through to the underlying
    # PUT Object acl API. For more information about the parameters for this
    # operation, see [PUT Object acl][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTacl.html
    #
    # @note When making an API call, you may pass S3SetObjectAclOperation
    #   data as a hash:
    #
    #       {
    #         access_control_policy: {
    #           access_control_list: {
    #             owner: { # required
    #               id: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String",
    #             },
    #             grants: [
    #               {
    #                 grantee: {
    #                   type_identifier: "id", # accepts id, emailAddress, uri
    #                   identifier: "NonEmptyMaxLength1024String",
    #                   display_name: "NonEmptyMaxLength1024String",
    #                 },
    #                 permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #               },
    #             ],
    #           },
    #           canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #         },
    #       }
    #
    # @!attribute [rw] access_control_policy
    #   @return [Types::S3AccessControlPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3SetObjectAclOperation AWS API Documentation
    #
    class S3SetObjectAclOperation < Struct.new(
      :access_control_policy)
      include Aws::Structure
    end

    # Contains the configuration parameters for a Set Object Tagging
    # operation. Amazon S3 batch operations passes each value through to the
    # underlying PUT Object tagging API. For more information about the
    # parameters for this operation, see [PUT Object tagging][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTtagging.html
    #
    # @note When making an API call, you may pass S3SetObjectTaggingOperation
    #   data as a hash:
    #
    #       {
    #         tag_set: [
    #           {
    #             key: "NonEmptyMaxLength1024String", # required
    #             value: "MaxLength1024String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tag_set
    #   @return [Array<Types::S3Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3SetObjectTaggingOperation AWS API Documentation
    #
    class S3SetObjectTaggingOperation < Struct.new(
      :tag_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3Tag
    #   data as a hash:
    #
    #       {
    #         key: "NonEmptyMaxLength1024String", # required
    #         value: "MaxLength1024String", # required
    #       }
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3Tag AWS API Documentation
    #
    class S3Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateJobPriorityRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         job_id: "JobId", # required
    #         priority: 1, # required
    #       }
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job whose priority you want to update.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority you want to assign to this job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/UpdateJobPriorityRequest AWS API Documentation
    #
    class UpdateJobPriorityRequest < Struct.new(
      :account_id,
      :job_id,
      :priority)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID for the job whose priority Amazon S3 updated.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The new priority assigned to the specified job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/UpdateJobPriorityResult AWS API Documentation
    #
    class UpdateJobPriorityResult < Struct.new(
      :job_id,
      :priority)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateJobStatusRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         job_id: "JobId", # required
    #         requested_job_status: "Cancelled", # required, accepts Cancelled, Ready
    #         status_update_reason: "JobStatusUpdateReason",
    #       }
    #
    # @!attribute [rw] account_id
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the job whose status you want to update.
    #   @return [String]
    #
    # @!attribute [rw] requested_job_status
    #   The status that you want to move the specified job to.
    #   @return [String]
    #
    # @!attribute [rw] status_update_reason
    #   A description of the reason why you want to change the specified
    #   job's status. This field can be any string up to the maximum
    #   length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/UpdateJobStatusRequest AWS API Documentation
    #
    class UpdateJobStatusRequest < Struct.new(
      :account_id,
      :job_id,
      :requested_job_status,
      :status_update_reason)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID for the job whose status was updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status for the specified job.
    #   @return [String]
    #
    # @!attribute [rw] status_update_reason
    #   The reason that the specified job's status was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/UpdateJobStatusResult AWS API Documentation
    #
    class UpdateJobStatusResult < Struct.new(
      :job_id,
      :status,
      :status_update_reason)
      include Aws::Structure
    end

  end
end
