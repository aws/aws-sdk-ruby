# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control
  module Types

    # The container for abort incomplete multipart upload
    #
    # @note When making an API call, you may pass AbortIncompleteMultipartUpload
    #   data as a hash:
    #
    #       {
    #         days_after_initiation: 1,
    #       }
    #
    # @!attribute [rw] days_after_initiation
    #   Specifies the number of days after which Amazon S3 aborts an
    #   incomplete multipart upload to the Outposts bucket.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AbortIncompleteMultipartUpload AWS API Documentation
    #
    class AbortIncompleteMultipartUpload < Struct.new(
      :days_after_initiation)
      SENSITIVE = []
      include Aws::Structure
    end

    # An access point used to access a bucket.
    #
    # @!attribute [rw] name
    #   The name of this access point.
    #   @return [String]
    #
    # @!attribute [rw] network_origin
    #   Indicates whether this access point allows access from the public
    #   internet. If `VpcConfiguration` is specified for this access point,
    #   then `NetworkOrigin` is `VPC`, and the access point doesn't allow
    #   access from the public internet. Otherwise, `NetworkOrigin` is
    #   `Internet`, and the access point allows access from the public
    #   internet, subject to the access point and bucket access policies.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The virtual private cloud (VPC) configuration for this access point,
    #   if one exists.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] bucket
    #   The name of the bucket associated with this access point.
    #   @return [String]
    #
    # @!attribute [rw] access_point_arn
    #   The ARN for the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AccessPoint AWS API Documentation
    #
    class AccessPoint < Struct.new(
      :name,
      :network_origin,
      :vpc_configuration,
      :bucket,
      :access_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested Outposts bucket name is not available. The bucket
    # namespace is shared by all users of the AWS Outposts in this Region.
    # Select a different name and try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/BucketAlreadyExists AWS API Documentation
    #
    class BucketAlreadyExists < Aws::EmptyStructure; end

    # The Outposts bucket you tried to create already exists, and you own
    # it.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/BucketAlreadyOwnedByYou AWS API Documentation
    #
    class BucketAlreadyOwnedByYou < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateAccessPointRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         name: "AccessPointName", # required
    #         bucket: "BucketName", # required
    #         vpc_configuration: {
    #           vpc_id: "VpcId", # required
    #         },
    #         public_access_block_configuration: {
    #           block_public_acls: false,
    #           ignore_public_acls: false,
    #           block_public_policy: false,
    #           restrict_public_buckets: false,
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for the owner of the bucket for which you want to
    #   create an access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name you want to assign to this access point.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The name of the bucket that you want to associate this access point
    #   with.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   If you include this field, Amazon S3 restricts access to this access
    #   point to requests from the specified virtual private cloud (VPC).
    #
    #   <note markdown="1"> This is required for creating an access point for Amazon S3 on
    #   Outposts buckets.
    #
    #    </note>
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] public_access_block_configuration
    #   The `PublicAccessBlock` configuration that you want to apply to this
    #   Amazon S3 bucket. You can enable the configuration options in any
    #   combination. For more information about when Amazon S3 considers a
    #   bucket or object public, see [The Meaning of "Public"][1] in the
    #   *Amazon Simple Storage Service Developer Guide*.
    #
    #   This is not supported for Amazon S3 on Outposts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateAccessPointRequest AWS API Documentation
    #
    class CreateAccessPointRequest < Struct.new(
      :account_id,
      :name,
      :bucket,
      :vpc_configuration,
      :public_access_block_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point_arn
    #   The ARN of the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateAccessPointResult AWS API Documentation
    #
    class CreateAccessPointResult < Struct.new(
      :access_point_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the bucket configuration.
    #
    # <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #  </note>
    #
    # @note When making an API call, you may pass CreateBucketConfiguration
    #   data as a hash:
    #
    #       {
    #         location_constraint: "EU", # accepts EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1
    #       }
    #
    # @!attribute [rw] location_constraint
    #   Specifies the Region where the bucket will be created. If you are
    #   creating a bucket on the US East (N. Virginia) Region (us-east-1),
    #   you do not need to specify the location.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateBucketConfiguration AWS API Documentation
    #
    class CreateBucketConfiguration < Struct.new(
      :location_constraint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBucketRequest
    #   data as a hash:
    #
    #       {
    #         acl: "private", # accepts private, public-read, public-read-write, authenticated-read
    #         bucket: "BucketName", # required
    #         create_bucket_configuration: {
    #           location_constraint: "EU", # accepts EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1
    #         },
    #         grant_full_control: "GrantFullControl",
    #         grant_read: "GrantRead",
    #         grant_read_acp: "GrantReadACP",
    #         grant_write: "GrantWrite",
    #         grant_write_acp: "GrantWriteACP",
    #         object_lock_enabled_for_bucket: false,
    #         outpost_id: "NonEmptyMaxLength64String",
    #       }
    #
    # @!attribute [rw] acl
    #   The canned ACL to apply to the bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The name of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] create_bucket_configuration
    #   The configuration information for the bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Types::CreateBucketConfiguration]
    #
    # @!attribute [rw] grant_full_control
    #   Allows grantee the read, write, read ACP, and write ACP permissions
    #   on the bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] grant_read
    #   Allows grantee to list the objects in the bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] grant_read_acp
    #   Allows grantee to read the bucket ACL.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] grant_write
    #   Allows grantee to create, overwrite, and delete any object in the
    #   bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] grant_write_acp
    #   Allows grantee to write the ACL for the applicable bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] object_lock_enabled_for_bucket
    #   Specifies whether you want S3 Object Lock to be enabled for the new
    #   bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outposts where the bucket is being created.
    #
    #   <note markdown="1"> This is required by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateBucketRequest AWS API Documentation
    #
    class CreateBucketRequest < Struct.new(
      :acl,
      :bucket,
      :create_bucket_configuration,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write,
      :grant_write_acp,
      :object_lock_enabled_for_bucket,
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location
    #   The location of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateBucketResult AWS API Documentation
    #
    class CreateBucketResult < Struct.new(
      :location,
      :bucket_arn)
      SENSITIVE = []
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
    #             function_arn: "FunctionArnString",
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
    #                 key: "TagKeyString", # required
    #                 value: "TagValueString", # required
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
    #                 key: "TagKeyString", # required
    #                 value: "TagValueString", # required
    #               },
    #             ],
    #           },
    #           s3_initiate_restore_object: {
    #             expiration_in_days: 1,
    #             glacier_job_tier: "BULK", # accepts BULK, STANDARD
    #           },
    #           s3_put_object_legal_hold: {
    #             legal_hold: { # required
    #               status: "OFF", # required, accepts OFF, ON
    #             },
    #           },
    #           s3_put_object_retention: {
    #             bypass_governance_retention: false,
    #             retention: { # required
    #               retain_until_date: Time.now,
    #               mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #             },
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
    #         tags: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID that creates the job.
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
    #   operations, see [Operations][1] in the *Amazon Simple Storage
    #   Service Developer Guide*.
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
    #   The Amazon Resource Name (ARN) for the AWS Identity and Access
    #   Management (IAM) role that Batch Operations will use to run this
    #   job's operation on each object in the manifest.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags to associate with the S3 Batch Operations job. This is
    #   an optional parameter.
    #   @return [Array<Types::S3Tag>]
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
      :role_arn,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccessPointPolicyRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         name: "AccessPointName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point whose policy you want to delete.
    #
    #   For Amazon S3 on Outposts specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteAccessPointPolicyRequest AWS API Documentation
    #
    class DeleteAccessPointPolicyRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccessPointRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         name: "AccessPointName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point you want to delete.
    #
    #   For Amazon S3 on Outposts specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteAccessPointRequest AWS API Documentation
    #
    class DeleteAccessPointRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBucketLifecycleConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID of the lifecycle configuration to delete.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The bucket ARN of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketLifecycleConfigurationRequest AWS API Documentation
    #
    class DeleteBucketLifecycleConfigurationRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBucketPolicyRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The ARN of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketPolicyRequest AWS API Documentation
    #
    class DeleteBucketPolicyRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBucketRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID that owns the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket being deleted.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketRequest AWS API Documentation
    #
    class DeleteBucketRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBucketTaggingRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket tag set to be removed.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The bucket ARN that has the tag set to be removed.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketTaggingRequest AWS API Documentation
    #
    class DeleteBucketTaggingRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteJobTaggingRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID associated with the S3 Batch Operations job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the S3 Batch Operations job whose tags you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteJobTaggingRequest AWS API Documentation
    #
    class DeleteJobTaggingRequest < Struct.new(
      :account_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteJobTaggingResult AWS API Documentation
    #
    class DeleteJobTaggingResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePublicAccessBlockRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID for the AWS account whose `PublicAccessBlock`
    #   configuration you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeletePublicAccessBlockRequest AWS API Documentation
    #
    class DeletePublicAccessBlockRequest < Struct.new(
      :account_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccessPointPolicyRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         name: "AccessPointName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point whose policy you want to retrieve.
    #
    #   For Amazon S3 on Outposts specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyRequest AWS API Documentation
    #
    class GetAccessPointPolicyRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The access point policy associated with the specified access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyResult AWS API Documentation
    #
    class GetAccessPointPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccessPointPolicyStatusRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         name: "AccessPointName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point whose policy status you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyStatusRequest AWS API Documentation
    #
    class GetAccessPointPolicyStatusRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_status
    #   Indicates the current policy status of the specified access point.
    #   @return [Types::PolicyStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyStatusResult AWS API Documentation
    #
    class GetAccessPointPolicyStatusResult < Struct.new(
      :policy_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccessPointRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         name: "AccessPointName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point whose configuration information you
    #   want to retrieve.
    #
    #   For Amazon S3 on Outposts specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointRequest AWS API Documentation
    #
    class GetAccessPointRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The name of the bucket associated with the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] network_origin
    #   Indicates whether this access point allows access from the public
    #   internet. If `VpcConfiguration` is specified for this access point,
    #   then `NetworkOrigin` is `VPC`, and the access point doesn't allow
    #   access from the public internet. Otherwise, `NetworkOrigin` is
    #   `Internet`, and the access point allows access from the public
    #   internet, subject to the access point and bucket access policies.
    #
    #   This will always be true for an Amazon S3 on Outposts access point
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   Contains the virtual private cloud (VPC) configuration for the
    #   specified access point.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] public_access_block_configuration
    #   The `PublicAccessBlock` configuration that you want to apply to this
    #   Amazon S3 bucket. You can enable the configuration options in any
    #   combination. For more information about when Amazon S3 considers a
    #   bucket or object public, see [The Meaning of "Public"][1] in the
    #   *Amazon Simple Storage Service Developer Guide*.
    #
    #   This is not supported for Amazon S3 on Outposts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the specified access point was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointResult AWS API Documentation
    #
    class GetAccessPointResult < Struct.new(
      :name,
      :bucket,
      :network_origin,
      :vpc_configuration,
      :public_access_block_configuration,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBucketLifecycleConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketLifecycleConfigurationRequest AWS API Documentation
    #
    class GetBucketLifecycleConfigurationRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   Container for the lifecycle rule of the Outposts bucket.
    #   @return [Array<Types::LifecycleRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketLifecycleConfigurationResult AWS API Documentation
    #
    class GetBucketLifecycleConfigurationResult < Struct.new(
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBucketPolicyRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The ARN of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketPolicyRequest AWS API Documentation
    #
    class GetBucketPolicyRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy of the Outposts bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketPolicyResult AWS API Documentation
    #
    class GetBucketPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBucketRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The ARN of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketRequest AWS API Documentation
    #
    class GetBucketRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket
    #   The Outposts bucket requested.
    #   @return [String]
    #
    # @!attribute [rw] public_access_block_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_date
    #   The creation date of the Outposts bucket.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketResult AWS API Documentation
    #
    class GetBucketResult < Struct.new(
      :bucket,
      :public_access_block_enabled,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBucketTaggingRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The ARN of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketTaggingRequest AWS API Documentation
    #
    class GetBucketTaggingRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_set
    #   The tags set of the Outposts bucket.
    #   @return [Array<Types::S3Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketTaggingResult AWS API Documentation
    #
    class GetBucketTaggingResult < Struct.new(
      :tag_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobTaggingRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID associated with the S3 Batch Operations job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the S3 Batch Operations job whose tags you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetJobTaggingRequest AWS API Documentation
    #
    class GetJobTaggingRequest < Struct.new(
      :account_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The set of tags associated with the S3 Batch Operations job.
    #   @return [Array<Types::S3Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetJobTaggingResult AWS API Documentation
    #
    class GetJobTaggingResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_access_block_configuration
    #   The `PublicAccessBlock` configuration currently in effect for this
    #   AWS account.
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlockOutput AWS API Documentation
    #
    class GetPublicAccessBlockOutput < Struct.new(
      :public_access_block_configuration)
      SENSITIVE = []
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
    #   The account ID for the AWS account whose `PublicAccessBlock`
    #   configuration you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlockRequest AWS API Documentation
    #
    class GetPublicAccessBlockRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/IdempotencyException AWS API Documentation
    #
    class IdempotencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   The operation that the specified job is configured to run on the
    #   objects listed in the manifest.
    #   @return [Types::JobOperation]
    #
    # @!attribute [rw] priority
    #   The priority of the specified job.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_summary
    #   Describes the total number of tasks that the specified job has run,
    #   the number of tasks that succeeded, and the number of tasks that
    #   failed.
    #   @return [Types::JobProgressSummary]
    #
    # @!attribute [rw] status_update_reason
    #   The reason for updating the job.
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
    #   The Amazon Resource Name (ARN) for the AWS Identity and Access
    #   Management (IAM) role assigned to run the tasks for this job.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Describes the total number of tasks that the specified job has run,
    #   the number of tasks that succeeded, and the number of tasks that
    #   failed.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation that you want this job to perform on each object listed
    # in the manifest. For more information about the available operations,
    # see [Operations][1] in the *Amazon Simple Storage Service Developer
    # Guide*.
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
    #           function_arn: "FunctionArnString",
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
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
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
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             },
    #           ],
    #         },
    #         s3_initiate_restore_object: {
    #           expiration_in_days: 1,
    #           glacier_job_tier: "BULK", # accepts BULK, STANDARD
    #         },
    #         s3_put_object_legal_hold: {
    #           legal_hold: { # required
    #             status: "OFF", # required, accepts OFF, ON
    #           },
    #         },
    #         s3_put_object_retention: {
    #           bypass_governance_retention: false,
    #           retention: { # required
    #             retain_until_date: Time.now,
    #             mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] lambda_invoke
    #   Directs the specified job to invoke an AWS Lambda function on each
    #   object in the manifest.
    #   @return [Types::LambdaInvokeOperation]
    #
    # @!attribute [rw] s3_put_object_copy
    #   Directs the specified job to run a PUT Copy object call on each
    #   object in the manifest.
    #   @return [Types::S3CopyObjectOperation]
    #
    # @!attribute [rw] s3_put_object_acl
    #   Directs the specified job to run a PUT Object acl call on each
    #   object in the manifest.
    #   @return [Types::S3SetObjectAclOperation]
    #
    # @!attribute [rw] s3_put_object_tagging
    #   Directs the specified job to run a PUT Object tagging call on each
    #   object in the manifest.
    #   @return [Types::S3SetObjectTaggingOperation]
    #
    # @!attribute [rw] s3_initiate_restore_object
    #   Directs the specified job to run an Initiate Glacier Restore call on
    #   each object in the manifest.
    #   @return [Types::S3InitiateRestoreObjectOperation]
    #
    # @!attribute [rw] s3_put_object_legal_hold
    #   Contains the configuration for an S3 Object Lock legal hold
    #   operation that an S3 Batch Operations job passes each object through
    #   to the underlying `PutObjectLegalHold` API. For more information,
    #   see [Using S3 Object Lock legal hold with S3 Batch Operations][1] in
    #   the *Amazon Simple Storage Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html
    #   @return [Types::S3SetObjectLegalHoldOperation]
    #
    # @!attribute [rw] s3_put_object_retention
    #   Contains the configuration parameters for the Object Lock retention
    #   action for an S3 Batch Operations job. Batch Operations passes each
    #   value through to the underlying `PutObjectRetention` API. For more
    #   information, see [Using S3 Object Lock retention with S3 Batch
    #   Operations][1] in the *Amazon Simple Storage Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html
    #   @return [Types::S3SetObjectRetentionOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobOperation AWS API Documentation
    #
    class JobOperation < Struct.new(
      :lambda_invoke,
      :s3_put_object_copy,
      :s3_put_object_acl,
      :s3_put_object_tagging,
      :s3_initiate_restore_object,
      :s3_put_object_legal_hold,
      :s3_put_object_retention)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the total number of tasks that the specified job has
    # started, the number of tasks that succeeded, and the number of tasks
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
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) for the bucket where specified
    #   job-completion report will be stored.
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
    #   job-completion report will be stored. Amazon S3 stores the
    #   job-completion report at `<prefix>/job-<job-id>/report.json`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobStatusException AWS API Documentation
    #
    class JobStatusException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for a `Lambda Invoke` operation.
    #
    # @note When making an API call, you may pass LambdaInvokeOperation
    #   data as a hash:
    #
    #       {
    #         function_arn: "FunctionArnString",
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the Outposts bucket lifecycle configuration.
    #
    # @note When making an API call, you may pass LifecycleConfiguration
    #   data as a hash:
    #
    #       {
    #         rules: [
    #           {
    #             expiration: {
    #               date: Time.now,
    #               days: 1,
    #               expired_object_delete_marker: false,
    #             },
    #             id: "ID",
    #             filter: {
    #               prefix: "Prefix",
    #               tag: {
    #                 key: "TagKeyString", # required
    #                 value: "TagValueString", # required
    #               },
    #               and: {
    #                 prefix: "Prefix",
    #                 tags: [
    #                   {
    #                     key: "TagKeyString", # required
    #                     value: "TagValueString", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             status: "Enabled", # required, accepts Enabled, Disabled
    #             transitions: [
    #               {
    #                 date: Time.now,
    #                 days: 1,
    #                 storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #               },
    #             ],
    #             noncurrent_version_transitions: [
    #               {
    #                 noncurrent_days: 1,
    #                 storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #               },
    #             ],
    #             noncurrent_version_expiration: {
    #               noncurrent_days: 1,
    #             },
    #             abort_incomplete_multipart_upload: {
    #               days_after_initiation: 1,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rules
    #   A lifecycle rule for individual objects in an Outposts bucket.
    #   @return [Array<Types::LifecycleRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/LifecycleConfiguration AWS API Documentation
    #
    class LifecycleConfiguration < Struct.new(
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container of the Outposts bucket lifecycle expiration.
    #
    # @note When making an API call, you may pass LifecycleExpiration
    #   data as a hash:
    #
    #       {
    #         date: Time.now,
    #         days: 1,
    #         expired_object_delete_marker: false,
    #       }
    #
    # @!attribute [rw] date
    #   Indicates at what date the object is to be deleted. Should be in GMT
    #   ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] days
    #   Indicates the lifetime, in days, of the objects that are subject to
    #   the rule. The value must be a non-zero positive integer.
    #   @return [Integer]
    #
    # @!attribute [rw] expired_object_delete_marker
    #   Indicates whether Amazon S3 will remove a delete marker with no
    #   noncurrent versions. If set to true, the delete marker will be
    #   expired. If set to false, the policy takes no action. This cannot be
    #   specified with Days or Date in a Lifecycle Expiration Policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/LifecycleExpiration AWS API Documentation
    #
    class LifecycleExpiration < Struct.new(
      :date,
      :days,
      :expired_object_delete_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the Outposts bucket lifecycle rule.
    #
    # @note When making an API call, you may pass LifecycleRule
    #   data as a hash:
    #
    #       {
    #         expiration: {
    #           date: Time.now,
    #           days: 1,
    #           expired_object_delete_marker: false,
    #         },
    #         id: "ID",
    #         filter: {
    #           prefix: "Prefix",
    #           tag: {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #           and: {
    #             prefix: "Prefix",
    #             tags: [
    #               {
    #                 key: "TagKeyString", # required
    #                 value: "TagValueString", # required
    #               },
    #             ],
    #           },
    #         },
    #         status: "Enabled", # required, accepts Enabled, Disabled
    #         transitions: [
    #           {
    #             date: Time.now,
    #             days: 1,
    #             storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #           },
    #         ],
    #         noncurrent_version_transitions: [
    #           {
    #             noncurrent_days: 1,
    #             storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #           },
    #         ],
    #         noncurrent_version_expiration: {
    #           noncurrent_days: 1,
    #         },
    #         abort_incomplete_multipart_upload: {
    #           days_after_initiation: 1,
    #         },
    #       }
    #
    # @!attribute [rw] expiration
    #   Specifies the expiration for the lifecycle of the object in the form
    #   of date, days and, whether the object has a delete marker.
    #   @return [Types::LifecycleExpiration]
    #
    # @!attribute [rw] id
    #   Unique identifier for the rule. The value cannot be longer than 255
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The container for the filter of lifecycle rule.
    #   @return [Types::LifecycleRuleFilter]
    #
    # @!attribute [rw] status
    #   If 'Enabled', the rule is currently being applied. If
    #   'Disabled', the rule is not currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] transitions
    #   Specifies when an Amazon S3 object transitions to a specified
    #   storage class.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Array<Types::Transition>]
    #
    # @!attribute [rw] noncurrent_version_transitions
    #   Specifies the transition rule for the lifecycle rule that describes
    #   when noncurrent objects transition to a specific storage class. If
    #   your bucket is versioning-enabled (or versioning is suspended), you
    #   can set this action to request that Amazon S3 transition noncurrent
    #   object versions to a specific storage class at a set period in the
    #   object's lifetime.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Array<Types::NoncurrentVersionTransition>]
    #
    # @!attribute [rw] noncurrent_version_expiration
    #   The noncurrent version expiration of the lifecycle rule.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Types::NoncurrentVersionExpiration]
    #
    # @!attribute [rw] abort_incomplete_multipart_upload
    #   Specifies the days since the initiation of an incomplete multipart
    #   upload that Amazon S3 waits before permanently removing all parts of
    #   the upload. For more information, see [ Aborting Incomplete
    #   Multipart Uploads Using a Bucket Lifecycle Policy][1] in the *Amazon
    #   Simple Storage Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config
    #   @return [Types::AbortIncompleteMultipartUpload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/LifecycleRule AWS API Documentation
    #
    class LifecycleRule < Struct.new(
      :expiration,
      :id,
      :filter,
      :status,
      :transitions,
      :noncurrent_version_transitions,
      :noncurrent_version_expiration,
      :abort_incomplete_multipart_upload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the Outposts bucket lifecycle rule and operator.
    #
    # @note When making an API call, you may pass LifecycleRuleAndOperator
    #   data as a hash:
    #
    #       {
    #         prefix: "Prefix",
    #         tags: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] prefix
    #   Prefix identifying one or more objects to which the rule applies.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   All of these tags must exist in the object's tag set in order for
    #   the rule to apply.
    #   @return [Array<Types::S3Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/LifecycleRuleAndOperator AWS API Documentation
    #
    class LifecycleRuleAndOperator < Struct.new(
      :prefix,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the filter of the lifecycle rule.
    #
    # @note When making an API call, you may pass LifecycleRuleFilter
    #   data as a hash:
    #
    #       {
    #         prefix: "Prefix",
    #         tag: {
    #           key: "TagKeyString", # required
    #           value: "TagValueString", # required
    #         },
    #         and: {
    #           prefix: "Prefix",
    #           tags: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] prefix
    #   Prefix identifying one or more objects to which the rule applies.
    #   @return [String]
    #
    # @!attribute [rw] tag
    #   @return [Types::S3Tag]
    #
    # @!attribute [rw] and
    #   The container for the `AND` condition for the lifecycle rule.
    #   @return [Types::LifecycleRuleAndOperator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/LifecycleRuleFilter AWS API Documentation
    #
    class LifecycleRuleFilter < Struct.new(
      :prefix,
      :tag,
      :and)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccessPointsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName",
    #         next_token: "NonEmptyMaxLength1024String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for owner of the bucket whose access points you
    #   want to list.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The name of the bucket whose associated access points you want to
    #   list.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token. If a previous call to `ListAccessPoints`
    #   returned a continuation token in the `NextToken` field, then
    #   providing that value here causes Amazon S3 to retrieve the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of access points that you want to include in the
    #   list. If the specified bucket has more than this number of access
    #   points, then the response will include a continuation token in the
    #   `NextToken` field that you can use to retrieve the next page of
    #   access points.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListAccessPointsRequest AWS API Documentation
    #
    class ListAccessPointsRequest < Struct.new(
      :account_id,
      :bucket,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point_list
    #   Contains identification and configuration information for one or
    #   more access points associated with the specified bucket.
    #   @return [Array<Types::AccessPoint>]
    #
    # @!attribute [rw] next_token
    #   If the specified bucket has more access points than can be returned
    #   in one call to this API, this field contains a continuation token
    #   that you can provide in subsequent calls to this API to retrieve
    #   additional access points.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListAccessPointsResult AWS API Documentation
    #
    class ListAccessPointsResult < Struct.new(
      :access_point_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         job_statuses: ["Active"], # accepts Active, Cancelled, Cancelling, Complete, Completing, Failed, Failing, New, Paused, Pausing, Preparing, Ready, Suspended
    #         next_token: "StringForNextToken",
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRegionalBucketsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         next_token: "NonEmptyMaxLength1024String",
    #         max_results: 1,
    #         outpost_id: "NonEmptyMaxLength64String",
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the AWS Outposts.
    #
    #   <note markdown="1"> This is required by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListRegionalBucketsRequest AWS API Documentation
    #
    class ListRegionalBucketsRequest < Struct.new(
      :account_id,
      :next_token,
      :max_results,
      :outpost_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] regional_bucket_list
    #   @return [Array<Types::RegionalBucket>]
    #
    # @!attribute [rw] next_token
    #   `NextToken` is sent when `isTruncated` is true, which means there
    #   are more buckets that can be listed. The next list requests to
    #   Amazon S3 can be continued with this `NextToken`. `NextToken` is
    #   obfuscated and is not a real key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListRegionalBucketsResult AWS API Documentation
    #
    class ListRegionalBucketsResult < Struct.new(
      :regional_bucket_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 throws this exception if you make a `GetPublicAccessBlock`
    # request against an account that doesn't have a
    # `PublicAccessBlockConfiguration` set.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/NoSuchPublicAccessBlockConfiguration AWS API Documentation
    #
    class NoSuchPublicAccessBlockConfiguration < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container of the noncurrent version expiration.
    #
    # @note When making an API call, you may pass NoncurrentVersionExpiration
    #   data as a hash:
    #
    #       {
    #         noncurrent_days: 1,
    #       }
    #
    # @!attribute [rw] noncurrent_days
    #   Specifies the number of days an object is noncurrent before Amazon
    #   S3 can perform the associated action. For information about the
    #   noncurrent days calculations, see [How Amazon S3 Calculates When an
    #   Object Became Noncurrent][1] in the *Amazon Simple Storage Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/NoncurrentVersionExpiration AWS API Documentation
    #
    class NoncurrentVersionExpiration < Struct.new(
      :noncurrent_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the noncurrent version transition.
    #
    # @note When making an API call, you may pass NoncurrentVersionTransition
    #   data as a hash:
    #
    #       {
    #         noncurrent_days: 1,
    #         storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #       }
    #
    # @!attribute [rw] noncurrent_days
    #   Specifies the number of days an object is noncurrent before Amazon
    #   S3 can perform the associated action. For information about the
    #   noncurrent days calculations, see [ How Amazon S3 Calculates How
    #   Long an Object Has Been Noncurrent][1] in the *Amazon Simple Storage
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations
    #   @return [Integer]
    #
    # @!attribute [rw] storage_class
    #   The class of storage used to store the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/NoncurrentVersionTransition AWS API Documentation
    #
    class NoncurrentVersionTransition < Struct.new(
      :noncurrent_days,
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether this access point policy is public. For more
    # information about how Amazon S3 evaluates policies to determine
    # whether they are public, see [The Meaning of "Public"][1] in the
    # *Amazon Simple Storage Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #
    # @!attribute [rw] is_public
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PolicyStatus AWS API Documentation
    #
    class PolicyStatus < Struct.new(
      :is_public)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `PublicAccessBlock` configuration that you want to apply to this
    # Amazon S3 bucket. You can enable the configuration options in any
    # combination. For more information about when Amazon S3 considers a
    # bucket or object public, see [The Meaning of "Public"][1] in the
    # *Amazon Simple Storage Service Developer Guide*.
    #
    # This is not supported for Amazon S3 on Outposts.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #
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
    #   Specifies whether Amazon S3 should block public access control lists
    #   (ACLs) for buckets in this account. Setting this element to `TRUE`
    #   causes the following behavior:
    #
    #   * PUT Bucket acl and PUT Object acl calls fail if the specified ACL
    #     is public.
    #
    #   * PUT Object calls fail if the request includes a public ACL.
    #
    #   * PUT Bucket calls fail if the request includes a public ACL.
    #
    #   Enabling this setting doesn't affect existing policies or ACLs.
    #
    #   This is not supported for Amazon S3 on Outposts.
    #   @return [Boolean]
    #
    # @!attribute [rw] ignore_public_acls
    #   Specifies whether Amazon S3 should ignore public ACLs for buckets in
    #   this account. Setting this element to `TRUE` causes Amazon S3 to
    #   ignore all public ACLs on buckets in this account and any objects
    #   that they contain.
    #
    #   Enabling this setting doesn't affect the persistence of any
    #   existing ACLs and doesn't prevent new public ACLs from being set.
    #
    #   This is not supported for Amazon S3 on Outposts.
    #   @return [Boolean]
    #
    # @!attribute [rw] block_public_policy
    #   Specifies whether Amazon S3 should block public bucket policies for
    #   buckets in this account. Setting this element to `TRUE` causes
    #   Amazon S3 to reject calls to PUT Bucket policy if the specified
    #   bucket policy allows public access.
    #
    #   Enabling this setting doesn't affect existing bucket policies.
    #
    #   This is not supported for Amazon S3 on Outposts.
    #   @return [Boolean]
    #
    # @!attribute [rw] restrict_public_buckets
    #   Specifies whether Amazon S3 should restrict public bucket policies
    #   for buckets in this account. Setting this element to `TRUE`
    #   restricts access to buckets with public policies to only AWS
    #   services and authorized users within this account.
    #
    #   Enabling this setting doesn't affect previously stored bucket
    #   policies, except that public and cross-account access within any
    #   public bucket policy, including non-public delegation to specific
    #   accounts, is blocked.
    #
    #   This is not supported for Amazon S3 on Outposts.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PublicAccessBlockConfiguration AWS API Documentation
    #
    class PublicAccessBlockConfiguration < Struct.new(
      :block_public_acls,
      :ignore_public_acls,
      :block_public_policy,
      :restrict_public_buckets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAccessPointPolicyRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         name: "AccessPointName", # required
    #         policy: "Policy", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID for owner of the bucket associated with the
    #   specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point that you want to associate with the
    #   specified policy.
    #
    #   For Amazon S3 on Outposts specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy that you want to apply to the specified access point. For
    #   more information about access point policies, see [Managing Data
    #   Access with Amazon S3 Access Points][1] in the *Amazon Simple
    #   Storage Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutAccessPointPolicyRequest AWS API Documentation
    #
    class PutAccessPointPolicyRequest < Struct.new(
      :account_id,
      :name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutBucketLifecycleConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #         lifecycle_configuration: {
    #           rules: [
    #             {
    #               expiration: {
    #                 date: Time.now,
    #                 days: 1,
    #                 expired_object_delete_marker: false,
    #               },
    #               id: "ID",
    #               filter: {
    #                 prefix: "Prefix",
    #                 tag: {
    #                   key: "TagKeyString", # required
    #                   value: "TagValueString", # required
    #                 },
    #                 and: {
    #                   prefix: "Prefix",
    #                   tags: [
    #                     {
    #                       key: "TagKeyString", # required
    #                       value: "TagValueString", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               status: "Enabled", # required, accepts Enabled, Disabled
    #               transitions: [
    #                 {
    #                   date: Time.now,
    #                   days: 1,
    #                   storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #                 },
    #               ],
    #               noncurrent_version_transitions: [
    #                 {
    #                   noncurrent_days: 1,
    #                   storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #                 },
    #               ],
    #               noncurrent_version_expiration: {
    #                 noncurrent_days: 1,
    #               },
    #               abort_incomplete_multipart_upload: {
    #                 days_after_initiation: 1,
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The name of the bucket for which to set the configuration.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_configuration
    #   Container for lifecycle rules. You can add as many as 1,000 rules.
    #   @return [Types::LifecycleConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketLifecycleConfigurationRequest AWS API Documentation
    #
    class PutBucketLifecycleConfigurationRequest < Struct.new(
      :account_id,
      :bucket,
      :lifecycle_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutBucketPolicyRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #         confirm_remove_self_bucket_access: false,
    #         policy: "Policy", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The ARN of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @!attribute [rw] confirm_remove_self_bucket_access
    #   Set this parameter to true to confirm that you want to remove your
    #   permissions to change this bucket policy in the future.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] policy
    #   The bucket policy as a JSON document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketPolicyRequest AWS API Documentation
    #
    class PutBucketPolicyRequest < Struct.new(
      :account_id,
      :bucket,
      :confirm_remove_self_bucket_access,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutBucketTaggingRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         bucket: "BucketName", # required
    #         tagging: { # required
    #           tag_set: [ # required
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the bucket.
    #
    #   For Amazon S3 on Outposts specify the ARN of the bucket accessed in
    #   the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @!attribute [rw] tagging
    #   @return [Types::Tagging]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketTaggingRequest AWS API Documentation
    #
    class PutBucketTaggingRequest < Struct.new(
      :account_id,
      :bucket,
      :tagging)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutJobTaggingRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         job_id: "JobId", # required
    #         tags: [ # required
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   The AWS account ID associated with the S3 Batch Operations job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the S3 Batch Operations job whose tags you want to
    #   replace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The set of tags to associate with the S3 Batch Operations job.
    #   @return [Array<Types::S3Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutJobTaggingRequest AWS API Documentation
    #
    class PutJobTaggingRequest < Struct.new(
      :account_id,
      :job_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutJobTaggingResult AWS API Documentation
    #
    class PutJobTaggingResult < Aws::EmptyStructure; end

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
    #   The `PublicAccessBlock` configuration that you want to apply to the
    #   specified AWS account.
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] account_id
    #   The account ID for the AWS account whose `PublicAccessBlock`
    #   configuration you want to set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutPublicAccessBlockRequest AWS API Documentation
    #
    class PutPublicAccessBlockRequest < Struct.new(
      :public_access_block_configuration,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the regional bucket.
    #
    # @!attribute [rw] bucket
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) for the regional bucket.
    #   @return [String]
    #
    # @!attribute [rw] public_access_block_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_date
    #   The creation date of the regional bucket
    #   @return [Time]
    #
    # @!attribute [rw] outpost_id
    #   The AWS Outposts ID of the regional bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/RegionalBucket AWS API Documentation
    #
    class RegionalBucket < Struct.new(
      :bucket,
      :bucket_arn,
      :public_access_block_enabled,
      :creation_date,
      :outpost_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for a PUT Copy object operation.
    # S3 Batch Operations passes each value through to the underlying PUT
    # Copy object API. For more information about the parameters for this
    # operation, see [PUT Object - Copy][1].
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
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
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
    #   The legal hold status to be applied to all objects in the Batch
    #   Operations job.
    #   @return [String]
    #
    # @!attribute [rw] object_lock_mode
    #   The retention mode to be applied to all objects in the Batch
    #   Operations job.
    #   @return [String]
    #
    # @!attribute [rw] object_lock_retain_until_date
    #   The date when the applied object retention configuration expires on
    #   all objects in the Batch Operations job.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for an Initiate Glacier Restore
    # job. S3 Batch Operations passes each value through to the underlying
    # POST Object restore API. For more information about the parameters for
    # this operation, see [RestoreObject][1].
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Whether S3 Object Lock legal hold will be applied to objects in an S3
    # Batch Operations job.
    #
    # @note When making an API call, you may pass S3ObjectLockLegalHold
    #   data as a hash:
    #
    #       {
    #         status: "OFF", # required, accepts OFF, ON
    #       }
    #
    # @!attribute [rw] status
    #   The Object Lock legal hold status to be applied to all objects in
    #   the Batch Operations job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3ObjectLockLegalHold AWS API Documentation
    #
    class S3ObjectLockLegalHold < Struct.new(
      :status)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the S3 Object Lock retention mode to be applied to all
    # objects in the S3 Batch Operations job. If you don't provide `Mode`
    # and `RetainUntilDate` data types in your operation, you will remove
    # the retention from your objects. For more information, see [Using S3
    # Object Lock retention with S3 Batch Operations][1] in the *Amazon
    # Simple Storage Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html
    #
    # @note When making an API call, you may pass S3Retention
    #   data as a hash:
    #
    #       {
    #         retain_until_date: Time.now,
    #         mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #       }
    #
    # @!attribute [rw] retain_until_date
    #   The date when the applied Object Lock retention will expire on all
    #   objects set by the Batch Operations job.
    #   @return [Time]
    #
    # @!attribute [rw] mode
    #   The Object Lock retention mode to be applied to all objects in the
    #   Batch Operations job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3Retention AWS API Documentation
    #
    class S3Retention < Struct.new(
      :retain_until_date,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for a Set Object ACL operation.
    # S3 Batch Operations passes each value through to the underlying PUT
    # Object acl API. For more information about the parameters for this
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration for an S3 Object Lock legal hold operation
    # that an S3 Batch Operations job passes each object through to the
    # underlying `PutObjectLegalHold` API. For more information, see [Using
    # S3 Object Lock legal hold with S3 Batch Operations][1] in the *Amazon
    # Simple Storage Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html
    #
    # @note When making an API call, you may pass S3SetObjectLegalHoldOperation
    #   data as a hash:
    #
    #       {
    #         legal_hold: { # required
    #           status: "OFF", # required, accepts OFF, ON
    #         },
    #       }
    #
    # @!attribute [rw] legal_hold
    #   Contains the Object Lock legal hold status to be applied to all
    #   objects in the Batch Operations job.
    #   @return [Types::S3ObjectLockLegalHold]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3SetObjectLegalHoldOperation AWS API Documentation
    #
    class S3SetObjectLegalHoldOperation < Struct.new(
      :legal_hold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for the Object Lock retention
    # action for an S3 Batch Operations job. Batch Operations passes each
    # value through to the underlying `PutObjectRetention` API. For more
    # information, see [Using S3 Object Lock retention with S3 Batch
    # Operations][1] in the *Amazon Simple Storage Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html
    #
    # @note When making an API call, you may pass S3SetObjectRetentionOperation
    #   data as a hash:
    #
    #       {
    #         bypass_governance_retention: false,
    #         retention: { # required
    #           retain_until_date: Time.now,
    #           mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #         },
    #       }
    #
    # @!attribute [rw] bypass_governance_retention
    #   Indicates if the action should be applied to objects in the Batch
    #   Operations job even if they have Object Lock ` GOVERNANCE` type in
    #   place.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention
    #   Contains the Object Lock retention mode to be applied to all objects
    #   in the Batch Operations job. For more information, see [Using S3
    #   Object Lock retention with S3 Batch Operations][1] in the *Amazon
    #   Simple Storage Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html
    #   @return [Types::S3Retention]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3SetObjectRetentionOperation AWS API Documentation
    #
    class S3SetObjectRetentionOperation < Struct.new(
      :bypass_governance_retention,
      :retention)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for a Set Object Tagging
    # operation. S3 Batch Operations passes each value through to the
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
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass Tagging
    #   data as a hash:
    #
    #       {
    #         tag_set: [ # required
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tag_set
    #   A collection for a set of tags.
    #   @return [Array<Types::S3Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/Tagging AWS API Documentation
    #
    class Tagging < Struct.new(
      :tag_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 throws this exception if you have too many tags in your tag
    # set.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies when an object transitions to a specified storage class. For
    # more information about Amazon S3 Lifecycle configuration rules, see [
    # Transitioning Objects Using Amazon S3 Lifecycle][1] in the *Amazon
    # Simple Storage Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html
    #
    # @note When making an API call, you may pass Transition
    #   data as a hash:
    #
    #       {
    #         date: Time.now,
    #         days: 1,
    #         storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #       }
    #
    # @!attribute [rw] date
    #   Indicates when objects are transitioned to the specified storage
    #   class. The date value must be in ISO 8601 format. The time is always
    #   midnight UTC.
    #   @return [Time]
    #
    # @!attribute [rw] days
    #   Indicates the number of days after creation when objects are
    #   transitioned to the specified storage class. The value must be a
    #   positive integer.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_class
    #   The storage class to which you want the object to transition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/Transition AWS API Documentation
    #
    class Transition < Struct.new(
      :date,
      :days,
      :storage_class)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The virtual private cloud (VPC) configuration for an access point.
    #
    # @note When making an API call, you may pass VpcConfiguration
    #   data as a hash:
    #
    #       {
    #         vpc_id: "VpcId", # required
    #       }
    #
    # @!attribute [rw] vpc_id
    #   If this field is specified, this access point will only allow
    #   connections from the specified VPC ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
