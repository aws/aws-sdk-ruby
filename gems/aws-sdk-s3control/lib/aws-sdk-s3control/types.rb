# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control
  module Types

    # The container for abort incomplete multipart upload
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

    # A container for information about access control for replicas.
    #
    # <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #  </note>
    #
    # @!attribute [rw] owner
    #   Specifies the replica ownership.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AccessControlTranslation AWS API Documentation
    #
    class AccessControlTranslation < Struct.new(
      :owner)
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
    #
    #   <note markdown="1"> This element is empty if this access point is an Amazon S3 on
    #   Outposts access point that is used by other Amazon Web Services.
    #
    #    </note>
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
    # @!attribute [rw] alias
    #   The name or alias of the access point.
    #   @return [String]
    #
    # @!attribute [rw] bucket_account_id
    #   The Amazon Web Services account ID associated with the S3 bucket
    #   associated with this access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AccessPoint AWS API Documentation
    #
    class AccessPoint < Struct.new(
      :name,
      :network_origin,
      :vpc_configuration,
      :bucket,
      :access_point_arn,
      :alias,
      :bucket_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the account-level Amazon S3 Storage Lens
    # configuration.
    #
    # For more information about S3 Storage Lens, see [Assessing your
    # storage activity and usage with S3 Storage Lens][1] in the *Amazon S3
    # User Guide*. For a complete list of S3 Storage Lens metrics, see [S3
    # Storage Lens metrics glossary][2] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
    #
    # @!attribute [rw] activity_metrics
    #   A container for S3 Storage Lens activity metrics.
    #   @return [Types::ActivityMetrics]
    #
    # @!attribute [rw] bucket_level
    #   A container for the S3 Storage Lens bucket-level configuration.
    #   @return [Types::BucketLevel]
    #
    # @!attribute [rw] advanced_cost_optimization_metrics
    #   A container for S3 Storage Lens advanced cost-optimization metrics.
    #   @return [Types::AdvancedCostOptimizationMetrics]
    #
    # @!attribute [rw] advanced_data_protection_metrics
    #   A container for S3 Storage Lens advanced data-protection metrics.
    #   @return [Types::AdvancedDataProtectionMetrics]
    #
    # @!attribute [rw] detailed_status_codes_metrics
    #   A container for detailed status code metrics.
    #   @return [Types::DetailedStatusCodesMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AccountLevel AWS API Documentation
    #
    class AccountLevel < Struct.new(
      :activity_metrics,
      :bucket_level,
      :advanced_cost_optimization_metrics,
      :advanced_data_protection_metrics,
      :detailed_status_codes_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container element for Amazon S3 Storage Lens activity metrics.
    # Activity metrics show details about how your storage is requested,
    # such as requests (for example, All requests, Get requests, Put
    # requests), bytes uploaded or downloaded, and errors.
    #
    # For more information about S3 Storage Lens, see [Assessing your
    # storage activity and usage with S3 Storage Lens][1] in the *Amazon S3
    # User Guide*. For a complete list of S3 Storage Lens metrics, see [S3
    # Storage Lens metrics glossary][2] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
    #
    # @!attribute [rw] is_enabled
    #   A container that indicates whether activity metrics are enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ActivityMetrics AWS API Documentation
    #
    class ActivityMetrics < Struct.new(
      :is_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container element for Amazon S3 Storage Lens advanced
    # cost-optimization metrics. Advanced cost-optimization metrics provide
    # insights that you can use to manage and optimize your storage costs,
    # for example, lifecycle rule counts for transitions, expirations, and
    # incomplete multipart uploads.
    #
    # For more information about S3 Storage Lens, see [Assessing your
    # storage activity and usage with S3 Storage Lens][1] in the *Amazon S3
    # User Guide*. For a complete list of S3 Storage Lens metrics, see [S3
    # Storage Lens metrics glossary][2] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
    #
    # @!attribute [rw] is_enabled
    #   A container that indicates whether advanced cost-optimization
    #   metrics are enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AdvancedCostOptimizationMetrics AWS API Documentation
    #
    class AdvancedCostOptimizationMetrics < Struct.new(
      :is_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container element for Amazon S3 Storage Lens advanced
    # data-protection metrics. Advanced data-protection metrics provide
    # insights that you can use to perform audits and protect your data, for
    # example replication rule counts within and across Regions.
    #
    # For more information about S3 Storage Lens, see [Assessing your
    # storage activity and usage with S3 Storage Lens][1] in the *Amazon S3
    # User Guide*. For a complete list of S3 Storage Lens metrics, see [S3
    # Storage Lens metrics glossary][2] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
    #
    # @!attribute [rw] is_enabled
    #   A container that indicates whether advanced data-protection metrics
    #   are enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AdvancedDataProtectionMetrics AWS API Documentation
    #
    class AdvancedDataProtectionMetrics < Struct.new(
      :is_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error details for the failed asynchronous operation.
    #
    # @!attribute [rw] code
    #   A string that uniquely identifies the error condition.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A generic description of the error condition in English.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The identifier of the resource associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The ID of the request associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AsyncErrorDetails AWS API Documentation
    #
    class AsyncErrorDetails < Struct.new(
      :code,
      :message,
      :resource,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the information about an asynchronous operation.
    #
    # @!attribute [rw] creation_time
    #   The time that the request was sent to the service.
    #   @return [Time]
    #
    # @!attribute [rw] operation
    #   The specific operation for the asynchronous request.
    #   @return [String]
    #
    # @!attribute [rw] request_token_arn
    #   The request token associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   The parameters associated with the request.
    #   @return [Types::AsyncRequestParameters]
    #
    # @!attribute [rw] request_status
    #   The current status of the request.
    #   @return [String]
    #
    # @!attribute [rw] response_details
    #   The details of the response.
    #   @return [Types::AsyncResponseDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AsyncOperation AWS API Documentation
    #
    class AsyncOperation < Struct.new(
      :creation_time,
      :operation,
      :request_token_arn,
      :request_parameters,
      :request_status,
      :response_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the request parameters associated with an asynchronous
    # request.
    #
    # @!attribute [rw] create_multi_region_access_point_request
    #   A container of the parameters for a
    #   [CreateMultiRegionAccessPoint][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
    #   @return [Types::CreateMultiRegionAccessPointInput]
    #
    # @!attribute [rw] delete_multi_region_access_point_request
    #   A container of the parameters for a
    #   [DeleteMultiRegionAccessPoint][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
    #   @return [Types::DeleteMultiRegionAccessPointInput]
    #
    # @!attribute [rw] put_multi_region_access_point_policy_request
    #   A container of the parameters for a [PutMultiRegionAccessPoint][1]
    #   request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPoint.html
    #   @return [Types::PutMultiRegionAccessPointPolicyInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AsyncRequestParameters AWS API Documentation
    #
    class AsyncRequestParameters < Struct.new(
      :create_multi_region_access_point_request,
      :delete_multi_region_access_point_request,
      :put_multi_region_access_point_policy_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the response details that are returned when querying
    # about an asynchronous request.
    #
    # @!attribute [rw] multi_region_access_point_details
    #   The details for the Multi-Region Access Point.
    #   @return [Types::MultiRegionAccessPointsAsyncResponse]
    #
    # @!attribute [rw] error_details
    #   Error details for an asynchronous request.
    #   @return [Types::AsyncErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AsyncResponseDetails AWS API Documentation
    #
    class AsyncResponseDetails < Struct.new(
      :multi_region_access_point_details,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lambda function used to transform objects through an Object Lambda
    # Access Point.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] function_payload
    #   Additional JSON that provides supplemental data to the Lambda
    #   function used to transform objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/AwsLambdaTransformation AWS API Documentation
    #
    class AwsLambdaTransformation < Struct.new(
      :function_arn,
      :function_payload)
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
    # namespace is shared by all users of the Outposts in this Region.
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

    # A container for the bucket-level configuration for Amazon S3 Storage
    # Lens.
    #
    # For more information about S3 Storage Lens, see [Assessing your
    # storage activity and usage with S3 Storage Lens][1] in the *Amazon S3
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html
    #
    # @!attribute [rw] activity_metrics
    #   A container for the bucket-level activity metrics for S3 Storage
    #   Lens.
    #   @return [Types::ActivityMetrics]
    #
    # @!attribute [rw] prefix_level
    #   A container for the prefix-level metrics for S3 Storage Lens.
    #   @return [Types::PrefixLevel]
    #
    # @!attribute [rw] advanced_cost_optimization_metrics
    #   A container for bucket-level advanced cost-optimization metrics for
    #   S3 Storage Lens.
    #   @return [Types::AdvancedCostOptimizationMetrics]
    #
    # @!attribute [rw] advanced_data_protection_metrics
    #   A container for bucket-level advanced data-protection metrics for S3
    #   Storage Lens.
    #   @return [Types::AdvancedDataProtectionMetrics]
    #
    # @!attribute [rw] detailed_status_codes_metrics
    #   A container for bucket-level detailed status code metrics for S3
    #   Storage Lens.
    #   @return [Types::DetailedStatusCodesMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/BucketLevel AWS API Documentation
    #
    class BucketLevel < Struct.new(
      :activity_metrics,
      :prefix_level,
      :advanced_cost_optimization_metrics,
      :advanced_data_protection_metrics,
      :detailed_status_codes_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for enabling Amazon CloudWatch publishing for S3 Storage
    # Lens metrics.
    #
    # For more information about publishing S3 Storage Lens metrics to
    # CloudWatch, see [Monitor S3 Storage Lens metrics in CloudWatch][1] in
    # the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_view_metrics_cloudwatch.html
    #
    # @!attribute [rw] is_enabled
    #   A container that indicates whether CloudWatch publishing for S3
    #   Storage Lens metrics is enabled. A value of `true` indicates that
    #   CloudWatch publishing for S3 Storage Lens metrics is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CloudWatchMetrics AWS API Documentation
    #
    class CloudWatchMetrics < Struct.new(
      :is_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for owner of the specified Object
    #   Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name you want to assign to this Object Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Object Lambda Access Point configuration as a JSON document.
    #   @return [Types::ObjectLambdaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateAccessPointForObjectLambdaRequest AWS API Documentation
    #
    class CreateAccessPointForObjectLambdaRequest < Struct.new(
      :account_id,
      :name,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_lambda_access_point_arn
    #   Specifies the ARN for the Object Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias of the Object Lambda Access Point.
    #   @return [Types::ObjectLambdaAccessPointAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateAccessPointForObjectLambdaResult AWS API Documentation
    #
    class CreateAccessPointForObjectLambdaResult < Struct.new(
      :object_lambda_access_point_arn,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the account that owns the
    #   specified access point.
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
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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
    #   The `PublicAccessBlock` configuration that you want to apply to the
    #   access point.
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] bucket_account_id
    #   The Amazon Web Services account ID associated with the S3 bucket
    #   associated with this access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateAccessPointRequest AWS API Documentation
    #
    class CreateAccessPointRequest < Struct.new(
      :account_id,
      :name,
      :bucket,
      :vpc_configuration,
      :public_access_block_configuration,
      :bucket_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point_arn
    #   The ARN of the access point.
    #
    #   <note markdown="1"> This is only supported by Amazon S3 on Outposts.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The name or alias of the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateAccessPointResult AWS API Documentation
    #
    class CreateAccessPointResult < Struct.new(
      :access_point_arn,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the bucket configuration.
    #
    # <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #  </note>
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
    #   <note markdown="1"> This ID is required by Amazon S3 on Outposts buckets.
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
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID that creates the job.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_required
    #   Indicates whether confirmation is required before Amazon S3 runs the
    #   job. Confirmation is only required for jobs created through the
    #   Amazon S3 console.
    #   @return [Boolean]
    #
    # @!attribute [rw] operation
    #   The action that you want this job to perform on every object listed
    #   in the manifest. For more information about the available actions,
    #   see [Operations][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-actions.html
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
    #   Management (IAM) role that Batch Operations will use to run this
    #   job's action on every object in the manifest.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags to associate with the S3 Batch Operations job. This is
    #   an optional parameter.
    #   @return [Array<Types::S3Tag>]
    #
    # @!attribute [rw] manifest_generator
    #   The attribute container for the ManifestGenerator details. Jobs must
    #   be created with either a manifest file or a ManifestGenerator, but
    #   not both.
    #   @return [Types::JobManifestGenerator]
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
      :tags,
      :manifest_generator)
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

    # A container for the information associated with a
    # [CreateMultiRegionAccessPoint][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
    #
    # @!attribute [rw] name
    #   The name of the Multi-Region Access Point associated with this
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] public_access_block
    #   The `PublicAccessBlock` configuration that you want to apply to this
    #   Amazon S3 account. You can enable the configuration options in any
    #   combination. For more information about when Amazon S3 considers a
    #   bucket or object public, see [The Meaning of "Public"][1] in the
    #   *Amazon S3 User Guide*.
    #
    #   This data type is not supported for Amazon S3 on Outposts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] regions
    #   The buckets in different Regions that are associated with the
    #   Multi-Region Access Point.
    #   @return [Array<Types::Region>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateMultiRegionAccessPointInput AWS API Documentation
    #
    class CreateMultiRegionAccessPointInput < Struct.new(
      :name,
      :public_access_block,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point. The owner of the Multi-Region Access Point also must
    #   own the underlying buckets.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token used to identify the request and guarantee that
    #   requests are unique.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   A container element containing details about the Multi-Region Access
    #   Point.
    #   @return [Types::CreateMultiRegionAccessPointInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateMultiRegionAccessPointRequest AWS API Documentation
    #
    class CreateMultiRegionAccessPointRequest < Struct.new(
      :account_id,
      :client_token,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_token_arn
    #   The request token associated with the request. You can use this
    #   token with [DescribeMultiRegionAccessPointOperation][1] to determine
    #   the status of asynchronous requests.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateMultiRegionAccessPointResult AWS API Documentation
    #
    class CreateMultiRegionAccessPointResult < Struct.new(
      :request_token_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteAccessPointForObjectLambdaRequest AWS API Documentation
    #
    class DeleteAccessPointForObjectLambdaRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point you want to delete the
    #   policy for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteAccessPointPolicyForObjectLambdaRequest AWS API Documentation
    #
    class DeleteAccessPointPolicyForObjectLambdaRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point whose policy you want to delete.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the account that owns the
    #   specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point you want to delete.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
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

    # @!attribute [rw] account_id
    #   The account ID of the lifecycle configuration to delete.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket to delete
    #   the replication configuration for.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the S3 on Outposts bucket to delete the replication
    #   configuration for.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketReplicationRequest AWS API Documentation
    #
    class DeleteBucketReplicationRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID that owns the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket being deleted.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket tag set to
    #   be removed.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The bucket ARN that has the tag set to be removed.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
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

    # Specifies whether S3 on Outposts replicates delete markers. If you
    # specify a `Filter` element in your replication configuration, you must
    # also include a `DeleteMarkerReplication` element. If your `Filter`
    # includes a `Tag` element, the `DeleteMarkerReplication` element's
    # `Status` child element must be set to `Disabled`, because S3 on
    # Outposts does not support replicating delete markers for tag-based
    # rules.
    #
    # For more information about delete marker replication, see [How delete
    # operations affect replication][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html#outposts-replication-what-is-replicated
    #
    # @!attribute [rw] status
    #   Indicates whether to replicate delete markers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteMarkerReplication AWS API Documentation
    #
    class DeleteMarkerReplication < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the information associated with a
    # [DeleteMultiRegionAccessPoint][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
    #
    # @!attribute [rw] name
    #   The name of the Multi-Region Access Point associated with this
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteMultiRegionAccessPointInput AWS API Documentation
    #
    class DeleteMultiRegionAccessPointInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token used to identify the request and guarantee that
    #   requests are unique.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   A container element containing details about the Multi-Region Access
    #   Point.
    #   @return [Types::DeleteMultiRegionAccessPointInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteMultiRegionAccessPointRequest AWS API Documentation
    #
    class DeleteMultiRegionAccessPointRequest < Struct.new(
      :account_id,
      :client_token,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_token_arn
    #   The request token associated with the request. You can use this
    #   token with [DescribeMultiRegionAccessPointOperation][1] to determine
    #   the status of asynchronous requests.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteMultiRegionAccessPointResult AWS API Documentation
    #
    class DeleteMultiRegionAccessPointResult < Struct.new(
      :request_token_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the Amazon Web Services account whose
    #   `PublicAccessBlock` configuration you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeletePublicAccessBlockRequest AWS API Documentation
    #
    class DeletePublicAccessBlockRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   The ID of the S3 Storage Lens configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the requester.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteStorageLensConfigurationRequest AWS API Documentation
    #
    class DeleteStorageLensConfigurationRequest < Struct.new(
      :config_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   The ID of the S3 Storage Lens configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the requester.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteStorageLensConfigurationTaggingRequest AWS API Documentation
    #
    class DeleteStorageLensConfigurationTaggingRequest < Struct.new(
      :config_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteStorageLensConfigurationTaggingResult AWS API Documentation
    #
    class DeleteStorageLensConfigurationTaggingResult < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] request_token_arn
    #   The request token associated with the request you want to know
    #   about. This request token is returned as part of the response when
    #   you make an asynchronous request. You provide this token to query
    #   about the status of the asynchronous action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DescribeMultiRegionAccessPointOperationRequest AWS API Documentation
    #
    class DescribeMultiRegionAccessPointOperationRequest < Struct.new(
      :account_id,
      :request_token_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] async_operation
    #   A container element containing the details of the asynchronous
    #   operation.
    #   @return [Types::AsyncOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DescribeMultiRegionAccessPointOperationResult AWS API Documentation
    #
    class DescribeMultiRegionAccessPointOperationResult < Struct.new(
      :async_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies information about the replication destination bucket and its
    # settings for an S3 on Outposts replication configuration.
    #
    # @!attribute [rw] account
    #   The destination bucket owner's account ID.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the access point for the
    #   destination bucket where you want S3 on Outposts to store the
    #   replication results.
    #   @return [String]
    #
    # @!attribute [rw] replication_time
    #   A container that specifies S3 Replication Time Control (S3 RTC)
    #   settings, including whether S3 RTC is enabled and the time when all
    #   objects and operations on objects must be replicated. Must be
    #   specified together with a `Metrics` block.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Types::ReplicationTime]
    #
    # @!attribute [rw] access_control_translation
    #   Specify this property only in a cross-account scenario (where the
    #   source and destination bucket owners are not the same), and you want
    #   to change replica ownership to the Amazon Web Services account that
    #   owns the destination bucket. If this property is not specified in
    #   the replication configuration, the replicas are owned by same Amazon
    #   Web Services account that owns the source object.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Types::AccessControlTranslation]
    #
    # @!attribute [rw] encryption_configuration
    #   A container that provides information about encryption. If
    #   `SourceSelectionCriteria` is specified, you must specify this
    #   element.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] metrics
    #   A container that specifies replication metrics-related settings.
    #   @return [Types::Metrics]
    #
    # @!attribute [rw] storage_class
    #   The storage class to use when replicating objects. All objects
    #   stored on S3 on Outposts are stored in the `OUTPOSTS` storage class.
    #   S3 on Outposts uses the `OUTPOSTS` storage class to create the
    #   object replicas.
    #
    #   <note markdown="1"> Values other than `OUTPOSTS` are not supported by Amazon S3 on
    #   Outposts.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :account,
      :bucket,
      :replication_time,
      :access_control_translation,
      :encryption_configuration,
      :metrics,
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container element for Amazon S3 Storage Lens detailed status code
    # metrics. Detailed status code metrics generate metrics for HTTP status
    # codes, such as `200 OK`, `403 Forbidden`, `503 Service Unavailable`
    # and others.
    #
    # For more information about S3 Storage Lens, see [Assessing your
    # storage activity and usage with S3 Storage Lens][1] in the *Amazon S3
    # User Guide*. For a complete list of S3 Storage Lens metrics, see [S3
    # Storage Lens metrics glossary][2] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
    #
    # @!attribute [rw] is_enabled
    #   A container that indicates whether detailed status code metrics are
    #   enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DetailedStatusCodesMetrics AWS API Documentation
    #
    class DetailedStatusCodesMetrics < Struct.new(
      :is_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies encryption-related information for an Amazon S3 bucket that
    # is a destination for replicated objects.
    #
    # <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #  </note>
    #
    # @!attribute [rw] replica_kms_key_id
    #   Specifies the ID of the customer managed KMS key that's stored in
    #   Key Management Service (KMS) for the destination bucket. This ID is
    #   either the Amazon Resource Name (ARN) for the KMS key or the alias
    #   ARN for the KMS key. Amazon S3 uses this KMS key to encrypt replica
    #   objects. Amazon S3 supports only symmetric encryption KMS keys. For
    #   more information, see [Symmetric encryption KMS keys][1] in the
    #   *Amazon Web Services Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :replica_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The last established access control policy for a Multi-Region Access
    # Point.
    #
    # When you update the policy, the update is first listed as the proposed
    # policy. After the update is finished and all Regions have been
    # updated, the proposed policy is listed as the established policy. If
    # both policies have the same version number, the proposed policy is the
    # established policy.
    #
    # @!attribute [rw] policy
    #   The details of the last established policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/EstablishedMultiRegionAccessPointPolicy AWS API Documentation
    #
    class EstablishedMultiRegionAccessPointPolicy < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for what Amazon S3 Storage Lens will exclude.
    #
    # @!attribute [rw] buckets
    #   A container for the S3 Storage Lens bucket excludes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   A container for the S3 Storage Lens Region excludes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/Exclude AWS API Documentation
    #
    class Exclude < Struct.new(
      :buckets,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional configuration to replicate existing source bucket objects.
    #
    # <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #  </note>
    #
    # @!attribute [rw] status
    #   Specifies whether Amazon S3 replicates existing source bucket
    #   objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ExistingObjectReplication AWS API Documentation
    #
    class ExistingObjectReplication < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption configuration to use when storing the generated
    # manifest.
    #
    # @!attribute [rw] sses3
    #   Specifies the use of SSE-S3 to encrypt generated manifest objects.
    #   @return [Types::SSES3Encryption]
    #
    # @!attribute [rw] ssekms
    #   Configuration details on how SSE-KMS is used to encrypt generated
    #   manifest objects.
    #   @return [Types::SSEKMSEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GeneratedManifestEncryption AWS API Documentation
    #
    class GeneratedManifestEncryption < Struct.new(
      :sses3,
      :ssekms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point you want to return the
    #   configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointConfigurationForObjectLambdaRequest AWS API Documentation
    #
    class GetAccessPointConfigurationForObjectLambdaRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   Object Lambda Access Point configuration document.
    #   @return [Types::ObjectLambdaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointConfigurationForObjectLambdaResult AWS API Documentation
    #
    class GetAccessPointConfigurationForObjectLambdaResult < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointForObjectLambdaRequest AWS API Documentation
    #
    class GetAccessPointForObjectLambdaRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] public_access_block_configuration
    #   Configuration to block all public access. This setting is turned on
    #   and can not be edited.
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] creation_date
    #   The date and time when the specified Object Lambda Access Point was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] alias
    #   The alias of the Object Lambda Access Point.
    #   @return [Types::ObjectLambdaAccessPointAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointForObjectLambdaResult AWS API Documentation
    #
    class GetAccessPointForObjectLambdaResult < Struct.new(
      :name,
      :public_access_block_configuration,
      :creation_date,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyForObjectLambdaRequest AWS API Documentation
    #
    class GetAccessPointPolicyForObjectLambdaRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   Object Lambda Access Point resource policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyForObjectLambdaResult AWS API Documentation
    #
    class GetAccessPointPolicyForObjectLambdaResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point whose policy you want to retrieve.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
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

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyStatusForObjectLambdaRequest AWS API Documentation
    #
    class GetAccessPointPolicyStatusForObjectLambdaRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_status
    #   Indicates whether this access point policy is public. For more
    #   information about how Amazon S3 evaluates policies to determine
    #   whether they are public, see [The Meaning of "Public"][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #   @return [Types::PolicyStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyStatusForObjectLambdaResult AWS API Documentation
    #
    class GetAccessPointPolicyStatusForObjectLambdaResult < Struct.new(
      :policy_status)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the account that owns the
    #   specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point whose configuration information you
    #   want to retrieve.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
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
    #
    #   <note markdown="1"> This element is empty if this access point is an Amazon S3 on
    #   Outposts access point that is used by other Amazon Web Services.
    #
    #    </note>
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] public_access_block_configuration
    #   The `PublicAccessBlock` configuration that you want to apply to this
    #   Amazon S3 account. You can enable the configuration options in any
    #   combination. For more information about when Amazon S3 considers a
    #   bucket or object public, see [The Meaning of "Public"][1] in the
    #   *Amazon S3 User Guide*.
    #
    #   This data type is not supported for Amazon S3 on Outposts.
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
    # @!attribute [rw] alias
    #   The name or alias of the access point.
    #   @return [String]
    #
    # @!attribute [rw] access_point_arn
    #   The ARN of the access point.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The VPC endpoint for the access point.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] bucket_account_id
    #   The Amazon Web Services account ID associated with the S3 bucket
    #   associated with this access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointResult AWS API Documentation
    #
    class GetAccessPointResult < Struct.new(
      :name,
      :bucket,
      :network_origin,
      :vpc_configuration,
      :public_access_block_configuration,
      :creation_date,
      :alias,
      :access_point_arn,
      :endpoints,
      :bucket_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket to get the replication information for.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketReplicationRequest AWS API Documentation
    #
    class GetBucketReplicationRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_configuration
    #   A container for one or more replication rules. A replication
    #   configuration must have at least one rule and you can add up to 100
    #   rules. The maximum size of a replication configuration is 128 KB.
    #   @return [Types::ReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketReplicationResult AWS API Documentation
    #
    class GetBucketReplicationResult < Struct.new(
      :replication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the S3 on Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The S3 on Outposts bucket to return the versioning state for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketVersioningRequest AWS API Documentation
    #
    class GetBucketVersioningRequest < Struct.new(
      :account_id,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The versioning state of the S3 on Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] mfa_delete
    #   Specifies whether MFA delete is enabled in the bucket versioning
    #   configuration. This element is returned only if the bucket has been
    #   configured with MFA delete. If MFA delete has never been configured
    #   for the bucket, this element is not returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketVersioningResult AWS API Documentation
    #
    class GetBucketVersioningResult < Struct.new(
      :status,
      :mfa_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the Multi-Region Access Point. The name of the
    #   Multi-Region Access Point is different from the alias. For more
    #   information about the distinction between the name and the alias of
    #   an Multi-Region Access Point, see [Managing Multi-Region Access
    #   Points][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointPolicyRequest AWS API Documentation
    #
    class GetMultiRegionAccessPointPolicyRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy associated with the specified Multi-Region Access Point.
    #   @return [Types::MultiRegionAccessPointPolicyDocument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointPolicyResult AWS API Documentation
    #
    class GetMultiRegionAccessPointPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the Multi-Region Access Point. The name of the
    #   Multi-Region Access Point is different from the alias. For more
    #   information about the distinction between the name and the alias of
    #   an Multi-Region Access Point, see [Managing Multi-Region Access
    #   Points][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointPolicyStatusRequest AWS API Documentation
    #
    class GetMultiRegionAccessPointPolicyStatusRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] established
    #   Indicates whether this access point policy is public. For more
    #   information about how Amazon S3 evaluates policies to determine
    #   whether they are public, see [The Meaning of "Public"][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #   @return [Types::PolicyStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointPolicyStatusResult AWS API Documentation
    #
    class GetMultiRegionAccessPointPolicyStatusResult < Struct.new(
      :established)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Multi-Region Access Point whose configuration
    #   information you want to receive. The name of the Multi-Region Access
    #   Point is different from the alias. For more information about the
    #   distinction between the name and the alias of an Multi-Region Access
    #   Point, see [Managing Multi-Region Access Points][1] in the *Amazon
    #   S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointRequest AWS API Documentation
    #
    class GetMultiRegionAccessPointRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point
    #   A container element containing the details of the requested
    #   Multi-Region Access Point.
    #   @return [Types::MultiRegionAccessPointReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointResult AWS API Documentation
    #
    class GetMultiRegionAccessPointResult < Struct.new(
      :access_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] mrap
    #   The Multi-Region Access Point ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointRoutesRequest AWS API Documentation
    #
    class GetMultiRegionAccessPointRoutesRequest < Struct.new(
      :account_id,
      :mrap)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mrap
    #   The Multi-Region Access Point ARN.
    #   @return [String]
    #
    # @!attribute [rw] routes
    #   The different routes that make up the route configuration. Active
    #   routes return a value of `100`, and passive routes return a value of
    #   `0`.
    #   @return [Array<Types::MultiRegionAccessPointRoute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointRoutesResult AWS API Documentation
    #
    class GetMultiRegionAccessPointRoutesResult < Struct.new(
      :mrap,
      :routes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_access_block_configuration
    #   The `PublicAccessBlock` configuration currently in effect for this
    #   Amazon Web Services account.
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlockOutput AWS API Documentation
    #
    class GetPublicAccessBlockOutput < Struct.new(
      :public_access_block_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the Amazon Web Services account whose
    #   `PublicAccessBlock` configuration you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlockRequest AWS API Documentation
    #
    class GetPublicAccessBlockRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   The ID of the Amazon S3 Storage Lens configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the requester.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetStorageLensConfigurationRequest AWS API Documentation
    #
    class GetStorageLensConfigurationRequest < Struct.new(
      :config_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_lens_configuration
    #   The S3 Storage Lens configuration requested.
    #   @return [Types::StorageLensConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetStorageLensConfigurationResult AWS API Documentation
    #
    class GetStorageLensConfigurationResult < Struct.new(
      :storage_lens_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   The ID of the Amazon S3 Storage Lens configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the requester.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetStorageLensConfigurationTaggingRequest AWS API Documentation
    #
    class GetStorageLensConfigurationTaggingRequest < Struct.new(
      :config_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags of S3 Storage Lens configuration requested.
    #   @return [Array<Types::StorageLensTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetStorageLensConfigurationTaggingResult AWS API Documentation
    #
    class GetStorageLensConfigurationTaggingResult < Struct.new(
      :tags)
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

    # A container for what Amazon S3 Storage Lens configuration includes.
    #
    # @!attribute [rw] buckets
    #   A container for the S3 Storage Lens bucket includes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   A container for the S3 Storage Lens Region includes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/Include AWS API Documentation
    #
    class Include < Struct.new(
      :buckets,
      :regions)
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
    #   The Amazon Resource Name (ARN) for the Identity and Access
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
    # @!attribute [rw] manifest_generator
    #   The manifest generator that was used to generate a job manifest for
    #   this job.
    #   @return [Types::JobManifestGenerator]
    #
    # @!attribute [rw] generated_manifest_descriptor
    #   The attribute of the JobDescriptor containing details about the
    #   job's generated manifest.
    #   @return [Types::S3GeneratedManifestDescriptor]
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
      :suspended_cause,
      :manifest_generator,
      :generated_manifest_descriptor)
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
    #   The operation that the specified job is configured to run on every
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

    # Configures the type of the job's ManifestGenerator.
    #
    # @note JobManifestGenerator is a union - when making an API calls you must set exactly one of the members.
    #
    # @note JobManifestGenerator is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of JobManifestGenerator corresponding to the set member.
    #
    # @!attribute [rw] s3_job_manifest_generator
    #   The S3 job ManifestGenerator's configuration details.
    #   @return [Types::S3JobManifestGenerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobManifestGenerator AWS API Documentation
    #
    class JobManifestGenerator < Struct.new(
      :s3_job_manifest_generator,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3JobManifestGenerator < JobManifestGenerator; end
      class Unknown < JobManifestGenerator; end
    end

    # The filter used to describe a set of objects for the job's manifest.
    #
    # @!attribute [rw] eligible_for_replication
    #   Include objects in the generated manifest only if they are eligible
    #   for replication according to the Replication configuration on the
    #   source bucket.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_after
    #   If provided, the generated manifest should include only source
    #   bucket objects that were created after this time.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   If provided, the generated manifest should include only source
    #   bucket objects that were created before this time.
    #   @return [Time]
    #
    # @!attribute [rw] object_replication_statuses
    #   If provided, the generated manifest should include only source
    #   bucket objects that have one of the specified Replication statuses.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobManifestGeneratorFilter AWS API Documentation
    #
    class JobManifestGeneratorFilter < Struct.new(
      :eligible_for_replication,
      :created_after,
      :created_before,
      :object_replication_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information required to locate a manifest object.
    #
    # @!attribute [rw] object_arn
    #   The Amazon Resource Name (ARN) for a manifest object.
    #
    #   When you're using XML requests, you must replace special characters
    #   (such as carriage returns) in object keys with their equivalent XML
    #   entity codes. For more information, see [ XML-related object key
    #   constraints][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints
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

    # The operation that you want this job to perform on every object listed
    # in the manifest. For more information about the available operations,
    # see [Operations][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html
    #
    # @!attribute [rw] lambda_invoke
    #   Directs the specified job to invoke an Lambda function on every
    #   object in the manifest.
    #   @return [Types::LambdaInvokeOperation]
    #
    # @!attribute [rw] s3_put_object_copy
    #   Directs the specified job to run a PUT Copy object call on every
    #   object in the manifest.
    #   @return [Types::S3CopyObjectOperation]
    #
    # @!attribute [rw] s3_put_object_acl
    #   Directs the specified job to run a `PutObjectAcl` call on every
    #   object in the manifest.
    #   @return [Types::S3SetObjectAclOperation]
    #
    # @!attribute [rw] s3_put_object_tagging
    #   Directs the specified job to run a PUT Object tagging call on every
    #   object in the manifest.
    #   @return [Types::S3SetObjectTaggingOperation]
    #
    # @!attribute [rw] s3_delete_object_tagging
    #   Directs the specified job to execute a DELETE Object tagging call on
    #   every object in the manifest.
    #   @return [Types::S3DeleteObjectTaggingOperation]
    #
    # @!attribute [rw] s3_initiate_restore_object
    #   Directs the specified job to initiate restore requests for every
    #   archived object in the manifest.
    #   @return [Types::S3InitiateRestoreObjectOperation]
    #
    # @!attribute [rw] s3_put_object_legal_hold
    #   Contains the configuration for an S3 Object Lock legal hold
    #   operation that an S3 Batch Operations job passes to every object to
    #   the underlying `PutObjectLegalHold` API operation. For more
    #   information, see [Using S3 Object Lock legal hold with S3 Batch
    #   Operations][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html
    #   @return [Types::S3SetObjectLegalHoldOperation]
    #
    # @!attribute [rw] s3_put_object_retention
    #   Contains the configuration parameters for the Object Lock retention
    #   action for an S3 Batch Operations job. Batch Operations passes every
    #   object to the underlying `PutObjectRetention` API operation. For
    #   more information, see [Using S3 Object Lock retention with S3 Batch
    #   Operations][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html
    #   @return [Types::S3SetObjectRetentionOperation]
    #
    # @!attribute [rw] s3_replicate_object
    #   Directs the specified job to invoke `ReplicateObject` on every
    #   object in the job's manifest.
    #   @return [Types::S3ReplicateObjectOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobOperation AWS API Documentation
    #
    class JobOperation < Struct.new(
      :lambda_invoke,
      :s3_put_object_copy,
      :s3_put_object_acl,
      :s3_put_object_tagging,
      :s3_delete_object_tagging,
      :s3_initiate_restore_object,
      :s3_put_object_legal_hold,
      :s3_put_object_retention,
      :s3_replicate_object)
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
    # @!attribute [rw] timers
    #   The JobTimers attribute of a job's progress summary.
    #   @return [Types::JobTimers]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobProgressSummary AWS API Documentation
    #
    class JobProgressSummary < Struct.new(
      :total_number_of_tasks,
      :number_of_tasks_succeeded,
      :number_of_tasks_failed,
      :timers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for a job-completion report.
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

    # Provides timing details for the job.
    #
    # @!attribute [rw] elapsed_time_in_active_seconds
    #   Indicates the elapsed time in seconds the job has been in the Active
    #   job state.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/JobTimers AWS API Documentation
    #
    class JobTimers < Struct.new(
      :elapsed_time_in_active_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for a `Lambda Invoke` operation.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) for the Lambda function that the
    #   specified job will invoke on every object in the manifest.
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
    #   @return [Types::NoncurrentVersionExpiration]
    #
    # @!attribute [rw] abort_incomplete_multipart_upload
    #   Specifies the days since the initiation of an incomplete multipart
    #   upload that Amazon S3 waits before permanently removing all parts of
    #   the upload. For more information, see [ Aborting Incomplete
    #   Multipart Uploads Using a Bucket Lifecycle Configuration][1] in the
    #   *Amazon S3 User Guide*.
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
    # @!attribute [rw] prefix
    #   Prefix identifying one or more objects to which the rule applies.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   All of these tags must exist in the object's tag set in order for
    #   the rule to apply.
    #   @return [Array<Types::S3Tag>]
    #
    # @!attribute [rw] object_size_greater_than
    #   Minimum object size to which the rule applies.
    #   @return [Integer]
    #
    # @!attribute [rw] object_size_less_than
    #   Maximum object size to which the rule applies.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/LifecycleRuleAndOperator AWS API Documentation
    #
    class LifecycleRuleAndOperator < Struct.new(
      :prefix,
      :tags,
      :object_size_greater_than,
      :object_size_less_than)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the filter of the lifecycle rule.
    #
    # @!attribute [rw] prefix
    #   Prefix identifying one or more objects to which the rule applies.
    #
    #   When you're using XML requests, you must replace special characters
    #   (such as carriage returns) in object keys with their equivalent XML
    #   entity codes. For more information, see [ XML-related object key
    #   constraints][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints
    #   @return [String]
    #
    # @!attribute [rw] tag
    #   A container for a key-value name pair.
    #   @return [Types::S3Tag]
    #
    # @!attribute [rw] and
    #   The container for the `AND` condition for the lifecycle rule.
    #   @return [Types::LifecycleRuleAndOperator]
    #
    # @!attribute [rw] object_size_greater_than
    #   Minimum object size to which the rule applies.
    #   @return [Integer]
    #
    # @!attribute [rw] object_size_less_than
    #   Maximum object size to which the rule applies.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/LifecycleRuleFilter AWS API Documentation
    #
    class LifecycleRuleFilter < Struct.new(
      :prefix,
      :tag,
      :and,
      :object_size_greater_than,
      :object_size_less_than)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the list has more access points than can be returned in one call
    #   to this API, this field contains a continuation token that you can
    #   provide in subsequent calls to this API to retrieve additional
    #   access points.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of access points that you want to include in the
    #   list. The response may contain fewer access points but will never
    #   contain more. If there are more than this number of access points,
    #   then the response will include a continuation token in the
    #   `NextToken` field that you can use to retrieve the next page of
    #   access points.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListAccessPointsForObjectLambdaRequest AWS API Documentation
    #
    class ListAccessPointsForObjectLambdaRequest < Struct.new(
      :account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_lambda_access_point_list
    #   Returns list of Object Lambda Access Points.
    #   @return [Array<Types::ObjectLambdaAccessPoint>]
    #
    # @!attribute [rw] next_token
    #   If the list has more access points than can be returned in one call
    #   to this API, this field contains a continuation token that you can
    #   provide in subsequent calls to this API to retrieve additional
    #   access points.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListAccessPointsForObjectLambdaResult AWS API Documentation
    #
    class ListAccessPointsForObjectLambdaResult < Struct.new(
      :object_lambda_access_point_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the account that owns the
    #   specified access points.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The name of the bucket whose associated access points you want to
    #   list.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Not currently used. Do not use this parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Not currently used. Do not use this parameter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListMultiRegionAccessPointsRequest AWS API Documentation
    #
    class ListMultiRegionAccessPointsRequest < Struct.new(
      :account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_points
    #   The list of Multi-Region Access Points associated with the user.
    #   @return [Array<Types::MultiRegionAccessPointReport>]
    #
    # @!attribute [rw] next_token
    #   If the specified bucket has more Multi-Region Access Points than can
    #   be returned in one call to this action, this field contains a
    #   continuation token. You can use this token tin subsequent calls to
    #   this action to retrieve additional Multi-Region Access Points.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListMultiRegionAccessPointsResult AWS API Documentation
    #
    class ListMultiRegionAccessPointsResult < Struct.new(
      :access_points,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] outpost_id
    #   The ID of the Outposts resource.
    #
    #   <note markdown="1"> This ID is required by Amazon S3 on Outposts buckets.
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

    # Part of `ListStorageLensConfigurationResult`. Each entry includes the
    # description of the S3 Storage Lens configuration, its home Region,
    # whether it is enabled, its Amazon Resource Name (ARN), and config ID.
    #
    # @!attribute [rw] id
    #   A container for the S3 Storage Lens configuration ID.
    #   @return [String]
    #
    # @!attribute [rw] storage_lens_arn
    #   The ARN of the S3 Storage Lens configuration. This property is
    #   read-only.
    #   @return [String]
    #
    # @!attribute [rw] home_region
    #   A container for the S3 Storage Lens home Region. Your metrics data
    #   is stored and retained in your designated S3 Storage Lens home
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] is_enabled
    #   A container for whether the S3 Storage Lens configuration is
    #   enabled. This property is required.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListStorageLensConfigurationEntry AWS API Documentation
    #
    class ListStorageLensConfigurationEntry < Struct.new(
      :id,
      :storage_lens_arn,
      :home_region,
      :is_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID of the requester.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListStorageLensConfigurationsRequest AWS API Documentation
    #
    class ListStorageLensConfigurationsRequest < Struct.new(
      :account_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the request produced more than the maximum number of S3 Storage
    #   Lens configuration results, you can pass this value into a
    #   subsequent request to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] storage_lens_configuration_list
    #   A list of S3 Storage Lens configurations.
    #   @return [Array<Types::ListStorageLensConfigurationEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListStorageLensConfigurationsResult AWS API Documentation
    #
    class ListStorageLensConfigurationsResult < Struct.new(
      :next_token,
      :storage_lens_configuration_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container that specifies replication metrics-related settings.
    #
    # @!attribute [rw] status
    #   Specifies whether replication metrics are enabled.
    #   @return [String]
    #
    # @!attribute [rw] event_threshold
    #   A container that specifies the time threshold for emitting the
    #   `s3:Replication:OperationMissedThreshold` event.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Types::ReplicationTimeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/Metrics AWS API Documentation
    #
    class Metrics < Struct.new(
      :status,
      :event_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Multi-Region Access Point access control policy.
    #
    # When you update the policy, the update is first listed as the proposed
    # policy. After the update is finished and all Regions have been
    # updated, the proposed policy is listed as the established policy. If
    # both policies have the same version number, the proposed policy is the
    # established policy.
    #
    # @!attribute [rw] established
    #   The last established policy for the Multi-Region Access Point.
    #   @return [Types::EstablishedMultiRegionAccessPointPolicy]
    #
    # @!attribute [rw] proposed
    #   The proposed policy for the Multi-Region Access Point.
    #   @return [Types::ProposedMultiRegionAccessPointPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/MultiRegionAccessPointPolicyDocument AWS API Documentation
    #
    class MultiRegionAccessPointPolicyDocument < Struct.new(
      :established,
      :proposed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status information for a single Multi-Region Access Point Region.
    #
    # @!attribute [rw] name
    #   The name of the Region in the Multi-Region Access Point.
    #   @return [String]
    #
    # @!attribute [rw] request_status
    #   The current status of the Multi-Region Access Point in this Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/MultiRegionAccessPointRegionalResponse AWS API Documentation
    #
    class MultiRegionAccessPointRegionalResponse < Struct.new(
      :name,
      :request_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of statuses for a Multi-Region Access Point in the
    # various Regions it supports.
    #
    # @!attribute [rw] name
    #   The name of the Multi-Region Access Point.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias for the Multi-Region Access Point. For more information
    #   about the distinction between the name and the alias of an
    #   Multi-Region Access Point, see [Managing Multi-Region Access
    #   Points][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the Multi-Region Access Point create request was received.
    #   @return [Time]
    #
    # @!attribute [rw] public_access_block
    #   The `PublicAccessBlock` configuration that you want to apply to this
    #   Amazon S3 account. You can enable the configuration options in any
    #   combination. For more information about when Amazon S3 considers a
    #   bucket or object public, see [The Meaning of "Public"][1] in the
    #   *Amazon S3 User Guide*.
    #
    #   This data type is not supported for Amazon S3 on Outposts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the Multi-Region Access Point.
    #
    #   `CREATING` and `DELETING` are temporary states that exist while the
    #   request is propagating and being completed. If a Multi-Region Access
    #   Point has a status of `PARTIALLY_CREATED`, you can retry creation or
    #   send a request to delete the Multi-Region Access Point. If a
    #   Multi-Region Access Point has a status of `PARTIALLY_DELETED`, you
    #   can retry a delete request to finish the deletion of the
    #   Multi-Region Access Point.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   A collection of the Regions and buckets associated with the
    #   Multi-Region Access Point.
    #   @return [Array<Types::RegionReport>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/MultiRegionAccessPointReport AWS API Documentation
    #
    class MultiRegionAccessPointReport < Struct.new(
      :name,
      :alias,
      :created_at,
      :public_access_block,
      :status,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for a Multi-Region Access Point that indicates where
    # Amazon S3 traffic can be routed. Routes can be either active or
    # passive. Active routes can process Amazon S3 requests through the
    # Multi-Region Access Point, but passive routes are not eligible to
    # process Amazon S3 requests.
    #
    # Each route contains the Amazon S3 bucket name and the Amazon Web
    # Services Region that the bucket is located in. The route also includes
    # the `TrafficDialPercentage` value, which shows whether the bucket and
    # Region are active (indicated by a value of `100`) or passive
    # (indicated by a value of `0`).
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket for which you'll submit a routing
    #   configuration change. Either the `Bucket` or the `Region` value must
    #   be provided. If both are provided, the bucket must be in the
    #   specified Region.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region to which you'll be submitting a
    #   routing configuration change. Either the `Bucket` or the `Region`
    #   value must be provided. If both are provided, the bucket must be in
    #   the specified Region.
    #   @return [String]
    #
    # @!attribute [rw] traffic_dial_percentage
    #   The traffic state for the specified bucket or Amazon Web Services
    #   Region.
    #
    #   A value of `0` indicates a passive state, which means that no new
    #   traffic will be routed to the Region.
    #
    #   A value of `100` indicates an active state, which means that traffic
    #   will be routed to the specified Region.
    #
    #   When the routing configuration for a Region is changed from active
    #   to passive, any in-progress operations (uploads, copies, deletes,
    #   and so on) to the formerly active Region will continue to run to
    #   until a final success or failure status is reached.
    #
    #   If all Regions in the routing configuration are designated as
    #   passive, you'll receive an `InvalidRequest` error.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/MultiRegionAccessPointRoute AWS API Documentation
    #
    class MultiRegionAccessPointRoute < Struct.new(
      :bucket,
      :region,
      :traffic_dial_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Multi-Region Access Point details that are returned when querying
    # about an asynchronous request.
    #
    # @!attribute [rw] regions
    #   A collection of status information for the different Regions that a
    #   Multi-Region Access Point supports.
    #   @return [Array<Types::MultiRegionAccessPointRegionalResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/MultiRegionAccessPointsAsyncResponse AWS API Documentation
    #
    class MultiRegionAccessPointsAsyncResponse < Struct.new(
      :regions)
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
    # @!attribute [rw] noncurrent_days
    #   Specifies the number of days an object is noncurrent before Amazon
    #   S3 can perform the associated action. For information about the
    #   noncurrent days calculations, see [How Amazon S3 Calculates When an
    #   Object Became Noncurrent][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations
    #   @return [Integer]
    #
    # @!attribute [rw] newer_noncurrent_versions
    #   Specifies how many noncurrent versions S3 on Outposts will retain.
    #   If there are this many more recent noncurrent versions, S3 on
    #   Outposts will take the associated action. For more information about
    #   noncurrent versions, see [Lifecycle configuration elements][1] in
    #   the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/NoncurrentVersionExpiration AWS API Documentation
    #
    class NoncurrentVersionExpiration < Struct.new(
      :noncurrent_days,
      :newer_noncurrent_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for the noncurrent version transition.
    #
    # @!attribute [rw] noncurrent_days
    #   Specifies the number of days an object is noncurrent before Amazon
    #   S3 can perform the associated action. For information about the
    #   noncurrent days calculations, see [ How Amazon S3 Calculates How
    #   Long an Object Has Been Noncurrent][1] in the *Amazon S3 User
    #   Guide*.
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

    # An access point with an attached Lambda function used to access
    # transformed data from an Amazon S3 bucket.
    #
    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] object_lambda_access_point_arn
    #   Specifies the ARN for the Object Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias of the Object Lambda Access Point.
    #   @return [Types::ObjectLambdaAccessPointAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ObjectLambdaAccessPoint AWS API Documentation
    #
    class ObjectLambdaAccessPoint < Struct.new(
      :name,
      :object_lambda_access_point_arn,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # The alias of an Object Lambda Access Point. For more information, see
    # [How to use a bucket-style alias for your S3 bucket Object Lambda
    # Access Point][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-use.html#ol-access-points-alias
    #
    # @!attribute [rw] value
    #   The alias value of the Object Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Object Lambda Access Point alias. If the status is
    #   `PROVISIONING`, the Object Lambda Access Point is provisioning the
    #   alias and the alias is not ready for use yet. If the status is
    #   `READY`, the Object Lambda Access Point alias is successfully
    #   provisioned and ready for use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ObjectLambdaAccessPointAlias AWS API Documentation
    #
    class ObjectLambdaAccessPointAlias < Struct.new(
      :value,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration used when creating an Object Lambda Access Point.
    #
    # @!attribute [rw] supporting_access_point
    #   Standard access point associated with the Object Lambda Access
    #   Point.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_metrics_enabled
    #   A container for whether the CloudWatch metrics configuration is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] allowed_features
    #   A container for allowed features. Valid inputs are
    #   `GetObject-Range`, `GetObject-PartNumber`, `HeadObject-Range`, and
    #   `HeadObject-PartNumber`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] transformation_configurations
    #   A container for transformation configurations for an Object Lambda
    #   Access Point.
    #   @return [Array<Types::ObjectLambdaTransformationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ObjectLambdaConfiguration AWS API Documentation
    #
    class ObjectLambdaConfiguration < Struct.new(
      :supporting_access_point,
      :cloud_watch_metrics_enabled,
      :allowed_features,
      :transformation_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for AwsLambdaTransformation.
    #
    # @note ObjectLambdaContentTransformation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ObjectLambdaContentTransformation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ObjectLambdaContentTransformation corresponding to the set member.
    #
    # @!attribute [rw] aws_lambda
    #   A container for an Lambda function.
    #   @return [Types::AwsLambdaTransformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ObjectLambdaContentTransformation AWS API Documentation
    #
    class ObjectLambdaContentTransformation < Struct.new(
      :aws_lambda,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsLambda < ObjectLambdaContentTransformation; end
      class Unknown < ObjectLambdaContentTransformation; end
    end

    # A configuration used when creating an Object Lambda Access Point
    # transformation.
    #
    # @!attribute [rw] actions
    #   A container for the action of an Object Lambda Access Point
    #   configuration. Valid inputs are `GetObject`, `ListObjects`,
    #   `HeadObject`, and `ListObjectsV2`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content_transformation
    #   A container for the content transformation of an Object Lambda
    #   Access Point configuration.
    #   @return [Types::ObjectLambdaContentTransformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ObjectLambdaTransformationConfiguration AWS API Documentation
    #
    class ObjectLambdaTransformationConfiguration < Struct.new(
      :actions,
      :content_transformation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether this access point policy is public. For more
    # information about how Amazon S3 evaluates policies to determine
    # whether they are public, see [The Meaning of "Public"][1] in the
    # *Amazon S3 User Guide*.
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

    # A container for the prefix-level configuration.
    #
    # @!attribute [rw] storage_metrics
    #   A container for the prefix-level storage metrics for S3 Storage
    #   Lens.
    #   @return [Types::PrefixLevelStorageMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PrefixLevel AWS API Documentation
    #
    class PrefixLevel < Struct.new(
      :storage_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the prefix-level storage metrics for S3 Storage Lens.
    #
    # @!attribute [rw] is_enabled
    #   A container for whether prefix-level storage metrics are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] selection_criteria
    #   @return [Types::SelectionCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PrefixLevelStorageMetrics AWS API Documentation
    #
    class PrefixLevelStorageMetrics < Struct.new(
      :is_enabled,
      :selection_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # The proposed access control policy for the Multi-Region Access Point.
    #
    # When you update the policy, the update is first listed as the proposed
    # policy. After the update is finished and all Regions have been
    # updated, the proposed policy is listed as the established policy. If
    # both policies have the same version number, the proposed policy is the
    # established policy.
    #
    # @!attribute [rw] policy
    #   The details of the proposed policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ProposedMultiRegionAccessPointPolicy AWS API Documentation
    #
    class ProposedMultiRegionAccessPointPolicy < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `PublicAccessBlock` configuration that you want to apply to this
    # Amazon S3 account. You can enable the configuration options in any
    # combination. For more information about when Amazon S3 considers a
    # bucket or object public, see [The Meaning of "Public"][1] in the
    # *Amazon S3 User Guide*.
    #
    # This data type is not supported for Amazon S3 on Outposts.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status
    #
    # @!attribute [rw] block_public_acls
    #   Specifies whether Amazon S3 should block public access control lists
    #   (ACLs) for buckets in this account. Setting this element to `TRUE`
    #   causes the following behavior:
    #
    #   * `PutBucketAcl` and `PutObjectAcl` calls fail if the specified ACL
    #     is public.
    #
    #   * PUT Object calls fail if the request includes a public ACL.
    #
    #   * PUT Bucket calls fail if the request includes a public ACL.
    #
    #   Enabling this setting doesn't affect existing policies or ACLs.
    #
    #   This property is not supported for Amazon S3 on Outposts.
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
    #   This property is not supported for Amazon S3 on Outposts.
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
    #   This property is not supported for Amazon S3 on Outposts.
    #   @return [Boolean]
    #
    # @!attribute [rw] restrict_public_buckets
    #   Specifies whether Amazon S3 should restrict public bucket policies
    #   for buckets in this account. Setting this element to `TRUE`
    #   restricts access to buckets with public policies to only Amazon Web
    #   Service principals and authorized users within this account.
    #
    #   Enabling this setting doesn't affect previously stored bucket
    #   policies, except that public and cross-account access within any
    #   public bucket policy, including non-public delegation to specific
    #   accounts, is blocked.
    #
    #   This property is not supported for Amazon S3 on Outposts.
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

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Object Lambda Access Point configuration document.
    #   @return [Types::ObjectLambdaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutAccessPointConfigurationForObjectLambdaRequest AWS API Documentation
    #
    class PutAccessPointConfigurationForObjectLambdaRequest < Struct.new(
      :account_id,
      :name,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Object Lambda Access Point.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Object Lambda Access Point resource policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutAccessPointPolicyForObjectLambdaRequest AWS API Documentation
    #
    class PutAccessPointPolicyForObjectLambdaRequest < Struct.new(
      :account_id,
      :name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for owner of the bucket
    #   associated with the specified access point.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point that you want to associate with the
    #   specified policy.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy that you want to apply to the specified access point. For
    #   more information about access point policies, see [Managing data
    #   access with Amazon S3 access points][1] in the *Amazon S3 User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   Specifies the S3 on Outposts bucket to set the configuration for.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #   @return [String]
    #
    # @!attribute [rw] replication_configuration
    #   @return [Types::ReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketReplicationRequest AWS API Documentation
    #
    class PutBucketReplicationRequest < Struct.new(
      :account_id,
      :bucket,
      :replication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST
    #   API, you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the S3 on Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The S3 on Outposts bucket to set the versioning state for.
    #   @return [String]
    #
    # @!attribute [rw] mfa
    #   The concatenation of the authentication device's serial number, a
    #   space, and the value that is displayed on your authentication
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] versioning_configuration
    #   The root-level tag for the `VersioningConfiguration` parameters.
    #   @return [Types::VersioningConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketVersioningRequest AWS API Documentation
    #
    class PutBucketVersioningRequest < Struct.new(
      :account_id,
      :bucket,
      :mfa,
      :versioning_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
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

    # A container for the information associated with a
    # [PutMultiRegionAccessPoint][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPoint.html
    #
    # @!attribute [rw] name
    #   The name of the Multi-Region Access Point associated with the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy details for the `PutMultiRegionAccessPoint` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutMultiRegionAccessPointPolicyInput AWS API Documentation
    #
    class PutMultiRegionAccessPointPolicyInput < Struct.new(
      :name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An idempotency token used to identify the request and guarantee that
    #   requests are unique.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   A container element containing the details of the policy for the
    #   Multi-Region Access Point.
    #   @return [Types::PutMultiRegionAccessPointPolicyInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutMultiRegionAccessPointPolicyRequest AWS API Documentation
    #
    class PutMultiRegionAccessPointPolicyRequest < Struct.new(
      :account_id,
      :client_token,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_token_arn
    #   The request token associated with the request. You can use this
    #   token with [DescribeMultiRegionAccessPointOperation][1] to determine
    #   the status of asynchronous requests.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutMultiRegionAccessPointPolicyResult AWS API Documentation
    #
    class PutMultiRegionAccessPointPolicyResult < Struct.new(
      :request_token_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_access_block_configuration
    #   The `PublicAccessBlock` configuration that you want to apply to the
    #   specified Amazon Web Services account.
    #   @return [Types::PublicAccessBlockConfiguration]
    #
    # @!attribute [rw] account_id
    #   The account ID for the Amazon Web Services account whose
    #   `PublicAccessBlock` configuration you want to set.
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

    # @!attribute [rw] config_id
    #   The ID of the S3 Storage Lens configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the requester.
    #   @return [String]
    #
    # @!attribute [rw] storage_lens_configuration
    #   The S3 Storage Lens configuration.
    #   @return [Types::StorageLensConfiguration]
    #
    # @!attribute [rw] tags
    #   The tag set of the S3 Storage Lens configuration.
    #
    #   <note markdown="1"> You can set up to a maximum of 50 tags.
    #
    #    </note>
    #   @return [Array<Types::StorageLensTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutStorageLensConfigurationRequest AWS API Documentation
    #
    class PutStorageLensConfigurationRequest < Struct.new(
      :config_id,
      :account_id,
      :storage_lens_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   The ID of the S3 Storage Lens configuration.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the requester.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag set of the S3 Storage Lens configuration.
    #
    #   <note markdown="1"> You can set up to a maximum of 50 tags.
    #
    #    </note>
    #   @return [Array<Types::StorageLensTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutStorageLensConfigurationTaggingRequest AWS API Documentation
    #
    class PutStorageLensConfigurationTaggingRequest < Struct.new(
      :config_id,
      :account_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutStorageLensConfigurationTaggingResult AWS API Documentation
    #
    class PutStorageLensConfigurationTaggingResult < Aws::EmptyStructure; end

    # A Region that supports a Multi-Region Access Point as well as the
    # associated bucket for the Region.
    #
    # @!attribute [rw] bucket
    #   The name of the associated bucket for the Region.
    #   @return [String]
    #
    # @!attribute [rw] bucket_account_id
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   that's associated with this Multi-Region Access Point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/Region AWS API Documentation
    #
    class Region < Struct.new(
      :bucket,
      :bucket_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A combination of a bucket and Region that's part of a Multi-Region
    # Access Point.
    #
    # @!attribute [rw] bucket
    #   The name of the bucket.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the Region.
    #   @return [String]
    #
    # @!attribute [rw] bucket_account_id
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   that's associated with this Multi-Region Access Point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/RegionReport AWS API Documentation
    #
    class RegionReport < Struct.new(
      :bucket,
      :region,
      :bucket_account_id)
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
    #   The Outposts ID of the regional bucket.
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

    # A filter that you can use to specify whether replica modification sync
    # is enabled. S3 on Outposts replica modification sync can help you keep
    # object metadata synchronized between replicas and source objects. By
    # default, S3 on Outposts replicates metadata from the source objects to
    # the replicas only. When replica modification sync is enabled, S3 on
    # Outposts replicates metadata changes made to the replica copies back
    # to the source object, making the replication bidirectional.
    #
    # To replicate object metadata modifications on replicas, you can
    # specify this element and set the `Status` of this element to
    # `Enabled`.
    #
    # <note markdown="1"> You must enable replica modification sync on the source and
    # destination buckets to replicate replica metadata changes between the
    # source and the replicas.
    #
    #  </note>
    #
    # @!attribute [rw] status
    #   Specifies whether S3 on Outposts replicates modifications to object
    #   metadata on replicas.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ReplicaModifications AWS API Documentation
    #
    class ReplicaModifications < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for one or more replication rules. A replication
    # configuration must have at least one rule and you can add up to 100
    # rules. The maximum size of a replication configuration is 128 KB.
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that S3 on Outposts assumes when replicating objects. For
    #   information about S3 replication on Outposts configuration, see
    #   [Setting up replication][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-how-setup.html
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   A container for one or more replication rules. A replication
    #   configuration must have at least one rule and can contain an array
    #   of 100 rules at the most.
    #   @return [Array<Types::ReplicationRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ReplicationConfiguration AWS API Documentation
    #
    class ReplicationConfiguration < Struct.new(
      :role,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which S3 on Outposts objects to replicate and where to store
    # the replicas.
    #
    # @!attribute [rw] id
    #   A unique identifier for the rule. The maximum value is 255
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority indicates which rule has precedence whenever two or
    #   more replication rules conflict. S3 on Outposts attempts to
    #   replicate objects according to all replication rules. However, if
    #   there are two or more rules with the same destination Outposts
    #   bucket, then objects will be replicated according to the rule with
    #   the highest priority. The higher the number, the higher the
    #   priority.
    #
    #   For more information, see [Creating replication rules on
    #   Outposts][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication-between-outposts.html
    #   @return [Integer]
    #
    # @!attribute [rw] prefix
    #   An object key name prefix that identifies the object or objects to
    #   which the rule applies. The maximum prefix length is 1,024
    #   characters. To include all objects in an Outposts bucket, specify an
    #   empty string.
    #
    #   When you're using XML requests, you must replace special characters
    #   (such as carriage returns) in object keys with their equivalent XML
    #   entity codes. For more information, see [ XML-related object key
    #   constraints][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter that identifies the subset of objects to which the
    #   replication rule applies. A `Filter` element must specify exactly
    #   one `Prefix`, `Tag`, or `And` child element.
    #   @return [Types::ReplicationRuleFilter]
    #
    # @!attribute [rw] status
    #   Specifies whether the rule is enabled.
    #   @return [String]
    #
    # @!attribute [rw] source_selection_criteria
    #   A container that describes additional filters for identifying the
    #   source Outposts objects that you want to replicate. You can choose
    #   to enable or disable the replication of these objects.
    #   @return [Types::SourceSelectionCriteria]
    #
    # @!attribute [rw] existing_object_replication
    #   An optional configuration to replicate existing source bucket
    #   objects.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Types::ExistingObjectReplication]
    #
    # @!attribute [rw] destination
    #   A container for information about the replication destination and
    #   its configurations.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] delete_marker_replication
    #   Specifies whether S3 on Outposts replicates delete markers. If you
    #   specify a `Filter` element in your replication configuration, you
    #   must also include a `DeleteMarkerReplication` element. If your
    #   `Filter` includes a `Tag` element, the `DeleteMarkerReplication`
    #   element's `Status` child element must be set to `Disabled`, because
    #   S3 on Outposts doesn't support replicating delete markers for
    #   tag-based rules.
    #
    #   For more information about delete marker replication, see [How
    #   delete operations affect replication][1] in the *Amazon S3 User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html#outposts-replication-what-is-replicated
    #   @return [Types::DeleteMarkerReplication]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the access point for the source
    #   Outposts bucket that you want S3 on Outposts to replicate the
    #   objects from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ReplicationRule AWS API Documentation
    #
    class ReplicationRule < Struct.new(
      :id,
      :priority,
      :prefix,
      :filter,
      :status,
      :source_selection_criteria,
      :existing_object_replication,
      :destination,
      :delete_marker_replication,
      :bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for specifying rule filters. The filters determine the
    # subset of objects to which the rule applies. This element is required
    # only if you specify more than one filter.
    #
    # For example:
    #
    # * If you specify both a `Prefix` and a `Tag` filter, wrap these
    #   filters in an `And` element.
    #
    # * If you specify a filter based on multiple tags, wrap the `Tag`
    #   elements in an `And` element.
    #
    # @!attribute [rw] prefix
    #   An object key name prefix that identifies the subset of objects that
    #   the rule applies to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags that contain key and value pairs.
    #   @return [Array<Types::S3Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ReplicationRuleAndOperator AWS API Documentation
    #
    class ReplicationRuleAndOperator < Struct.new(
      :prefix,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that identifies the subset of objects to which the
    # replication rule applies. A `Filter` element must specify exactly one
    # `Prefix`, `Tag`, or `And` child element.
    #
    # @!attribute [rw] prefix
    #   An object key name prefix that identifies the subset of objects that
    #   the rule applies to.
    #
    #   When you're using XML requests, you must replace special characters
    #   (such as carriage returns) in object keys with their equivalent XML
    #   entity codes. For more information, see [ XML-related object key
    #   constraints][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints
    #   @return [String]
    #
    # @!attribute [rw] tag
    #   A container for a key-value name pair.
    #   @return [Types::S3Tag]
    #
    # @!attribute [rw] and
    #   A container for specifying rule filters. The filters determine the
    #   subset of objects that the rule applies to. This element is required
    #   only if you specify more than one filter. For example:
    #
    #   * If you specify both a `Prefix` and a `Tag` filter, wrap these
    #     filters in an `And` element.
    #
    #   * If you specify a filter based on multiple tags, wrap the `Tag`
    #     elements in an `And` element.
    #   @return [Types::ReplicationRuleAndOperator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ReplicationRuleFilter AWS API Documentation
    #
    class ReplicationRuleFilter < Struct.new(
      :prefix,
      :tag,
      :and)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container that specifies S3 Replication Time Control (S3 RTC)
    # related information, including whether S3 RTC is enabled and the time
    # when all objects and operations on objects must be replicated.
    #
    # <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #  </note>
    #
    # @!attribute [rw] status
    #   Specifies whether S3 Replication Time Control (S3 RTC) is enabled.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   A container that specifies the time by which replication should be
    #   complete for all objects and operations on objects.
    #   @return [Types::ReplicationTimeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ReplicationTime AWS API Documentation
    #
    class ReplicationTime < Struct.new(
      :status,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container that specifies the time value for S3 Replication Time
    # Control (S3 RTC). This value is also used for the replication metrics
    # `EventThreshold` element.
    #
    # <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #  </note>
    #
    # @!attribute [rw] minutes
    #   Contains an integer that specifies the time period in minutes.
    #
    #   Valid value: 15
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ReplicationTimeValue AWS API Documentation
    #
    class ReplicationTimeValue < Struct.new(
      :minutes)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # A container for the bucket where the Amazon S3 Storage Lens metrics
    # export files are located.
    #
    # @!attribute [rw] format
    #   @return [String]
    #
    # @!attribute [rw] output_schema_version
    #   The schema version of the export file.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the owner of the S3 Storage Lens metrics export
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the bucket. This property is
    #   read-only and follows the following format: `
    #   arn:aws:s3:us-east-1:example-account-id:bucket/your-destination-bucket-name
    #   `
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the destination bucket where the metrics export will
    #   be delivered.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The container for the type encryption of the metrics exports in this
    #   bucket.
    #   @return [Types::StorageLensDataExportEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3BucketDestination AWS API Documentation
    #
    class S3BucketDestination < Struct.new(
      :format,
      :output_schema_version,
      :account_id,
      :arn,
      :prefix,
      :encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration parameters for a PUT Copy object operation.
    # S3 Batch Operations passes every object to the underlying `CopyObject`
    # API operation. For more information about the parameters for this
    # operation, see [CopyObject][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectCOPY.html
    #
    # @!attribute [rw] target_resource
    #   Specifies the destination bucket Amazon Resource Name (ARN) for the
    #   batch copy operation. For example, to copy objects to a bucket named
    #   `destinationBucket`, set the `TargetResource` property to
    #   `arn:aws:s3:::destinationBucket`.
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
    #   If you don't provide this parameter, Amazon S3 copies all the
    #   metadata from the original objects. If you specify an empty set, the
    #   new objects will have no tags. Otherwise, Amazon S3 assigns the
    #   supplied tags to the new objects.
    #   @return [Types::S3ObjectMetadata]
    #
    # @!attribute [rw] new_object_tagging
    #   @return [Array<Types::S3Tag>]
    #
    # @!attribute [rw] redirect_location
    #   Specifies an optional metadata property for website redirects,
    #   `x-amz-website-redirect-location`. Allows webpage redirects if the
    #   object is accessed through a website endpoint.
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
    #   Specifies the folder prefix that you want the objects to be copied
    #   into. For example, to copy objects into a folder named `Folder1` in
    #   the destination bucket, set the `TargetKeyPrefix` property to
    #   `Folder1`.
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
    # @!attribute [rw] bucket_key_enabled
    #   Specifies whether Amazon S3 should use an S3 Bucket Key for object
    #   encryption with server-side encryption using Amazon Web Services KMS
    #   (SSE-KMS). Setting this header to `true` causes Amazon S3 to use an
    #   S3 Bucket Key for object encryption with SSE-KMS.
    #
    #   Specifying this header with an *object* action doesn’t affect
    #   *bucket-level* settings for S3 Bucket Key.
    #   @return [Boolean]
    #
    # @!attribute [rw] checksum_algorithm
    #   Indicates the algorithm that you want Amazon S3 to use to create the
    #   checksum. For more information, see [ Checking object integrity][1]
    #   in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CheckingObjectIntegrity.xml
    #   @return [String]
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
      :object_lock_retain_until_date,
      :bucket_key_enabled,
      :checksum_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains no configuration parameters because the DELETE Object tagging
    # (`DeleteObjectTagging`) API operation accepts only the bucket name and
    # key name as parameters, which are defined in the job's manifest.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3DeleteObjectTaggingOperation AWS API Documentation
    #
    class S3DeleteObjectTaggingOperation < Aws::EmptyStructure; end

    # Describes the specified job's generated manifest. Batch Operations
    # jobs created with a ManifestGenerator populate details of this
    # descriptor after execution of the ManifestGenerator.
    #
    # @!attribute [rw] format
    #   The format of the generated manifest.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Contains the information required to locate a manifest object.
    #   @return [Types::JobManifestLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3GeneratedManifestDescriptor AWS API Documentation
    #
    class S3GeneratedManifestDescriptor < Struct.new(
      :format,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Contains the configuration parameters for a POST Object restore job.
    # S3 Batch Operations passes every object to the underlying
    # `RestoreObject` API operation. For more information about the
    # parameters for this operation, see [RestoreObject][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPOSTrestore.html#RESTObjectPOSTrestore-restore-request
    #
    # @!attribute [rw] expiration_in_days
    #   This argument specifies how long the S3 Glacier or S3 Glacier Deep
    #   Archive object remains available in Amazon S3. S3 Initiate Restore
    #   Object jobs that target S3 Glacier and S3 Glacier Deep Archive
    #   objects require `ExpirationInDays` set to 1 or greater.
    #
    #   Conversely, do *not* set `ExpirationInDays` when creating S3
    #   Initiate Restore Object jobs that target S3 Intelligent-Tiering
    #   Archive Access and Deep Archive Access tier objects. Objects in S3
    #   Intelligent-Tiering archive access tiers are not subject to restore
    #   expiry, so specifying `ExpirationInDays` results in restore request
    #   failure.
    #
    #   S3 Batch Operations jobs can operate either on S3 Glacier and S3
    #   Glacier Deep Archive storage class objects or on S3
    #   Intelligent-Tiering Archive Access and Deep Archive Access storage
    #   tier objects, but not both types in the same job. If you need to
    #   restore objects of both types you *must* create separate Batch
    #   Operations jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] glacier_job_tier
    #   S3 Batch Operations supports `STANDARD` and `BULK` retrieval tiers,
    #   but not the `EXPEDITED` retrieval tier.
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

    # The container for the service that will create the S3 manifest.
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that owns the bucket the
    #   generated manifest is written to. If provided the generated manifest
    #   bucket's owner Amazon Web Services account ID must match this
    #   value, else the job fails.
    #   @return [String]
    #
    # @!attribute [rw] source_bucket
    #   The source bucket used by the ManifestGenerator.
    #   @return [String]
    #
    # @!attribute [rw] manifest_output_location
    #   Specifies the location the generated manifest will be written to.
    #   @return [Types::S3ManifestOutputLocation]
    #
    # @!attribute [rw] filter
    #   Specifies rules the S3JobManifestGenerator should use to use to
    #   decide whether an object in the source bucket should or should not
    #   be included in the generated job manifest.
    #   @return [Types::JobManifestGeneratorFilter]
    #
    # @!attribute [rw] enable_manifest_output
    #   Determines whether or not to write the job's generated manifest to
    #   a bucket.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3JobManifestGenerator AWS API Documentation
    #
    class S3JobManifestGenerator < Struct.new(
      :expected_bucket_owner,
      :source_bucket,
      :manifest_output_location,
      :filter,
      :enable_manifest_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Location details for where the generated manifest should be written.
    #
    # @!attribute [rw] expected_manifest_bucket_owner
    #   The Account ID that owns the bucket the generated manifest is
    #   written to.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The bucket ARN the generated manifest should be written to.
    #   @return [String]
    #
    # @!attribute [rw] manifest_prefix
    #   Prefix identifying one or more objects to which the manifest
    #   applies.
    #   @return [String]
    #
    # @!attribute [rw] manifest_encryption
    #   Specifies what encryption should be used when the generated manifest
    #   objects are written.
    #   @return [Types::GeneratedManifestEncryption]
    #
    # @!attribute [rw] manifest_format
    #   The format of the generated manifest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3ManifestOutputLocation AWS API Documentation
    #
    class S3ManifestOutputLocation < Struct.new(
      :expected_manifest_bucket_owner,
      :bucket,
      :manifest_prefix,
      :manifest_encryption,
      :manifest_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Whether S3 Object Lock legal hold will be applied to objects in an S3
    # Batch Operations job.
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

    # Directs the specified job to invoke `ReplicateObject` on every object
    # in the job's manifest.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/S3ReplicateObjectOperation AWS API Documentation
    #
    class S3ReplicateObjectOperation < Aws::EmptyStructure; end

    # Contains the S3 Object Lock retention mode to be applied to all
    # objects in the S3 Batch Operations job. If you don't provide `Mode`
    # and `RetainUntilDate` data types in your operation, you will remove
    # the retention from your objects. For more information, see [Using S3
    # Object Lock retention with S3 Batch Operations][1] in the *Amazon S3
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html
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

    # Contains the configuration parameters for a PUT Object ACL operation.
    # S3 Batch Operations passes every object to the underlying
    # `PutObjectAcl` API operation. For more information about the
    # parameters for this operation, see [PutObjectAcl][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTacl.html
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
    # that an S3 Batch Operations job passes to every object to the
    # underlying `PutObjectLegalHold` API operation. For more information,
    # see [Using S3 Object Lock legal hold with S3 Batch Operations][1] in
    # the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html
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
    # action for an S3 Batch Operations job. Batch Operations passes every
    # object to the underlying `PutObjectRetention` API operation. For more
    # information, see [Using S3 Object Lock retention with S3 Batch
    # Operations][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html
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
    #   Object Lock retention with S3 Batch Operations][1] in the *Amazon S3
    #   User Guide*.
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

    # Contains the configuration parameters for a PUT Object Tagging
    # operation. S3 Batch Operations passes every object to the underlying
    # `PutObjectTagging` API operation. For more information about the
    # parameters for this operation, see [PutObjectTagging][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTtagging.html
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

    # A container for a key-value name pair.
    #
    # @!attribute [rw] key
    #   Key of the tag
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of the tag
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

    # @!attribute [rw] key_id
    #   A container for the ARN of the SSE-KMS encryption. This property is
    #   read-only and follows the following format: `
    #   arn:aws:kms:us-east-1:example-account-id:key/example-9a73-4afc-8d29-8f5900cef44e
    #   `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SSEKMS AWS API Documentation
    #
    class SSEKMS < Struct.new(
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the use of SSE-KMS to encrypt generated manifest
    # objects.
    #
    # @!attribute [rw] key_id
    #   Specifies the ID of the Amazon Web Services Key Management Service
    #   (Amazon Web Services KMS) symmetric encryption customer managed key
    #   to use for encrypting generated manifest objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SSEKMSEncryption AWS API Documentation
    #
    class SSEKMSEncryption < Struct.new(
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SSES3 AWS API Documentation
    #
    class SSES3 < Aws::EmptyStructure; end

    # Configuration for the use of SSE-S3 to encrypt generated manifest
    # objects.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SSES3Encryption AWS API Documentation
    #
    class SSES3Encryption < Aws::EmptyStructure; end

    # @!attribute [rw] delimiter
    #   A container for the delimiter of the selection criteria being used.
    #   @return [String]
    #
    # @!attribute [rw] max_depth
    #   The max depth of the selection criteria
    #   @return [Integer]
    #
    # @!attribute [rw] min_storage_bytes_percentage
    #   The minimum number of storage bytes percentage whose metrics will be
    #   selected.
    #
    #   <note markdown="1"> You must choose a value greater than or equal to `1.0`.
    #
    #    </note>
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SelectionCriteria AWS API Documentation
    #
    class SelectionCriteria < Struct.new(
      :delimiter,
      :max_depth,
      :min_storage_bytes_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container that describes additional filters for identifying the
    # source objects that you want to replicate. You can choose to enable or
    # disable the replication of these objects.
    #
    # @!attribute [rw] sse_kms_encrypted_objects
    #   A filter that you can use to select Amazon S3 objects that are
    #   encrypted with server-side encryption by using Key Management
    #   Service (KMS) keys. If you include `SourceSelectionCriteria` in the
    #   replication configuration, this element is required.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #   @return [Types::SseKmsEncryptedObjects]
    #
    # @!attribute [rw] replica_modifications
    #   A filter that you can use to specify whether replica modification
    #   sync is enabled. S3 on Outposts replica modification sync can help
    #   you keep object metadata synchronized between replicas and source
    #   objects. By default, S3 on Outposts replicates metadata from the
    #   source objects to the replicas only. When replica modification sync
    #   is enabled, S3 on Outposts replicates metadata changes made to the
    #   replica copies back to the source object, making the replication
    #   bidirectional.
    #
    #   To replicate object metadata modifications on replicas, you can
    #   specify this element and set the `Status` of this element to
    #   `Enabled`.
    #
    #   <note markdown="1"> You must enable replica modification sync on the source and
    #   destination buckets to replicate replica metadata changes between
    #   the source and the replicas.
    #
    #    </note>
    #   @return [Types::ReplicaModifications]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SourceSelectionCriteria AWS API Documentation
    #
    class SourceSelectionCriteria < Struct.new(
      :sse_kms_encrypted_objects,
      :replica_modifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for filter information that you can use to select S3
    # objects that are encrypted with Key Management Service (KMS).
    #
    # <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #  </note>
    #
    # @!attribute [rw] status
    #   Specifies whether Amazon S3 replicates objects that are created with
    #   server-side encryption by using an KMS key stored in Key Management
    #   Service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SseKmsEncryptedObjects AWS API Documentation
    #
    class SseKmsEncryptedObjects < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services organization for your S3 Storage Lens.
    #
    # @!attribute [rw] arn
    #   A container for the Amazon Resource Name (ARN) of the Amazon Web
    #   Services organization. This property is read-only and follows the
    #   following format: `
    #   arn:aws:organizations:us-east-1:example-account-id:organization/o-ex2l495dck
    #   `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/StorageLensAwsOrg AWS API Documentation
    #
    class StorageLensAwsOrg < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the Amazon S3 Storage Lens configuration.
    #
    # @!attribute [rw] id
    #   A container for the Amazon S3 Storage Lens configuration ID.
    #   @return [String]
    #
    # @!attribute [rw] account_level
    #   A container for all the account-level configurations of your S3
    #   Storage Lens configuration.
    #   @return [Types::AccountLevel]
    #
    # @!attribute [rw] include
    #   A container for what is included in this configuration. This
    #   container can only be valid if there is no `Exclude` container
    #   submitted, and it's not empty.
    #   @return [Types::Include]
    #
    # @!attribute [rw] exclude
    #   A container for what is excluded in this configuration. This
    #   container can only be valid if there is no `Include` container
    #   submitted, and it's not empty.
    #   @return [Types::Exclude]
    #
    # @!attribute [rw] data_export
    #   A container to specify the properties of your S3 Storage Lens
    #   metrics export including, the destination, schema and format.
    #   @return [Types::StorageLensDataExport]
    #
    # @!attribute [rw] is_enabled
    #   A container for whether the S3 Storage Lens configuration is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_org
    #   A container for the Amazon Web Services organization for this S3
    #   Storage Lens configuration.
    #   @return [Types::StorageLensAwsOrg]
    #
    # @!attribute [rw] storage_lens_arn
    #   The Amazon Resource Name (ARN) of the S3 Storage Lens configuration.
    #   This property is read-only and follows the following format: `
    #   arn:aws:s3:us-east-1:example-account-id:storage-lens/your-dashboard-name
    #   `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/StorageLensConfiguration AWS API Documentation
    #
    class StorageLensConfiguration < Struct.new(
      :id,
      :account_level,
      :include,
      :exclude,
      :data_export,
      :is_enabled,
      :aws_org,
      :storage_lens_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container to specify the properties of your S3 Storage Lens metrics
    # export, including the destination, schema, and format.
    #
    # @!attribute [rw] s3_bucket_destination
    #   A container for the bucket where the S3 Storage Lens metrics export
    #   will be located.
    #
    #   <note markdown="1"> This bucket must be located in the same Region as the storage lens
    #   configuration.
    #
    #    </note>
    #   @return [Types::S3BucketDestination]
    #
    # @!attribute [rw] cloud_watch_metrics
    #   A container for enabling Amazon CloudWatch publishing for S3 Storage
    #   Lens metrics.
    #   @return [Types::CloudWatchMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/StorageLensDataExport AWS API Documentation
    #
    class StorageLensDataExport < Struct.new(
      :s3_bucket_destination,
      :cloud_watch_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container for the encryption of the S3 Storage Lens metrics exports.
    #
    # @!attribute [rw] sses3
    #   @return [Types::SSES3]
    #
    # @!attribute [rw] ssekms
    #   @return [Types::SSEKMS]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/StorageLensDataExportEncryption AWS API Documentation
    #
    class StorageLensDataExportEncryption < Struct.new(
      :sses3,
      :ssekms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/StorageLensTag AWS API Documentation
    #
    class StorageLensTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #   @return [String]
    #
    # @!attribute [rw] mrap
    #   The Multi-Region Access Point ARN.
    #   @return [String]
    #
    # @!attribute [rw] route_updates
    #   The different routes that make up the new route configuration.
    #   Active routes return a value of `100`, and passive routes return a
    #   value of `0`.
    #   @return [Array<Types::MultiRegionAccessPointRoute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SubmitMultiRegionAccessPointRoutesRequest AWS API Documentation
    #
    class SubmitMultiRegionAccessPointRoutesRequest < Struct.new(
      :account_id,
      :mrap,
      :route_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SubmitMultiRegionAccessPointRoutesResult AWS API Documentation
    #
    class SubmitMultiRegionAccessPointRoutesResult < Aws::EmptyStructure; end

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
    # Transitioning objects using Amazon S3 Lifecycle][1] in the *Amazon S3
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
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

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
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

    # Describes the versioning state of an Amazon S3 on Outposts bucket. For
    # more information, see [PutBucketVersioning][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html
    #
    # @!attribute [rw] mfa_delete
    #   Specifies whether MFA delete is enabled or disabled in the bucket
    #   versioning configuration for the S3 on Outposts bucket.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Sets the versioning state of the S3 on Outposts bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/VersioningConfiguration AWS API Documentation
    #
    class VersioningConfiguration < Struct.new(
      :mfa_delete,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The virtual private cloud (VPC) configuration for an access point.
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
